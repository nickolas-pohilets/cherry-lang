lexer grammar CherryLexer;

@lexer::members {
    private var stringInterpolations: [Int] = []
    private var bracketDepth: Int = 0
    
    private func canResumeInterpolation() -> Bool {
        stringInterpolations.last == bracketDepth
    }
    
    private enum ErrorPosition {
        case tokenStart
        case current
    }
    
    private func reportCustomError(_ msg: String, position: ErrorPosition = .current) {
        let charPositionInLine: Int
        let line: Int
        switch position {
        case .tokenStart:
            charPositionInLine = _tokenStartCharPositionInLine
            line = _tokenStartLine
        case .current:
            charPositionInLine = getInterpreter().getCharPositionInLine()
            line = getInterpreter().getLine()
        }
        
        let listener = getErrorListenerDispatch()
        listener.syntaxError(self, nil, line, charPositionInLine, msg, nil)
    }
}

//
// Whitespace and comments
//

NL: '\r'? '\n' | '\r' ;
WS: (' ' | '\u0009' | '\u000B' | '\u000C')+ -> skip ;

COMMENT: '//' ~[\n]* -> skip;
MULTILINE_COMMENT: '/*' .*? '*/' -> skip;

// Keywords
KW_VAR: 'var' ;
KW_FUNC: 'func' ;
KW_CLASS: 'class' ;
KW_PRECEDENCE_GROUP: 'precedencegroup';

// Contextual keywords
CKW_HIGHER_THAN: 'higherThan';
CKW_LOWER_THAN: 'lowerThan';
CKW_ASSIGNMENT: 'assignment';
CWK_ASSOCIATIVITY: 'associativity';
CWK_ASSOCIATIVITY_VALUE: 'left' | 'right' | 'none';

//
// Literals
//
    
INTEGER_LITERAL
    : '-'?
      ( '0b' [01] [01_]*
      | '0o' [0-7] [0-7_]*
      | DECIMAL_LITERAL
      | HEXADECIMAL_LITERAL
      )
    ;
    
fragment DECIMAL_LITERAL: [0-9] [0-9_]* ;
fragment HEXADECIMAL_LITERAL: '0x' HEXADECIMAL_DIGITS ;
fragment HEXADECIMAL_DIGITS: [0-9a-fA-F] [0-9a-fA-F_]* ;
    
FLOATING_POINT_LITERAL
    : '-'?
      // If dot is present, fractional digits are required, to disambiguate from member access
      ( DECIMAL_LITERAL ('.' DECIMAL_LITERAL)? ([eE] [+-]? DECIMAL_LITERAL)?
      // Exponent is required, to disambiguate from member access
      | HEXADECIMAL_LITERAL ('.' HEXADECIMAL_DIGITS)? [pP] [+-]? DECIMAL_LITERAL
      | HEXADECIMAL_LITERAL ('.' [0-9] HEXADECIMAL_DIGITS?)?
        { reportCustomError("hexadecimal floating point literal must end with an exponent") }
      )
    ;

BOOLEAN_LITERAL: 'true' | 'false';
NIL_LITERAL: 'nil' ;

STRING_LITERAL: '"' STRING_CONTENT ('"' | { reportCustomError("unterminated string literal", position: .tokenStart) });
fragment STRING_CONTENT: (ESC | ~["\\\r\n])* ;
fragment ESC: '\\' ([0"\\bfnrt] | UNICODE | ~'{' { reportCustomError("invalid escape sequence in literal") } ) ;
fragment UNICODE : 'u' ( '{' HEX+ '}' | { reportCustomError("expected hexadecimal code in braces after unicode escape") } );
fragment HEX : [0-9a-fA-F]; // Underscores not allowed

MULTILINE_STRING_LITERAL: '"""' WS? NL MULTILINE_STRING_CONTENT NL WS? '"""';
fragment MULTILINE_STRING_CONTENT: (ESC | ~[\\])*?;

STRING_INTERPOLATION_START   : '"' STRING_CONTENT '\\{' { stringInterpolations.append(bracketDepth) } ;
STRING_INTERPOLATION_CONTINUE: '}' { canResumeInterpolation() }? STRING_CONTENT '\\{';
STRING_INTERPOLATION_FINISH  : '}' { canResumeInterpolation() }? STRING_CONTENT '"' { stringInterpolations.removeLast() } ;

MULTILINE_STRING_INTERPOLATION_START   : '"""' MULTILINE_STRING_CONTENT '\\{' { stringInterpolations.append(bracketDepth) } ;
MULTILINE_STRING_INTERPOLATION_CONTINUE: '}' { canResumeInterpolation() }? MULTILINE_STRING_CONTENT '\\{';
MULTILINE_STRING_INTERPOLATION_FINISH  : '}' { canResumeInterpolation() }? MULTILINE_STRING_CONTENT '"""' { stringInterpolations.removeLast() } ;

RAW_STRING_LITERAL: '#' (RAW_STRING_LITERAL | '"' ~[\r\n]*? '"') '#' ;
RAW_MULTILINE_STRING_LITERAL: '#' (RAW_MULTILINE_STRING_LITERAL | '"""' WS? NL  .*? NL WS? '"""') '#' ;

//
// Identifiers
//

// Note that identifiers must come after literals to properly parse true/false/nil

IDENTIFIER
    : IDENTIFIER_HEAD IDENTIFIER_CHARACTER*
    | '`' IDENTIFIER_HEAD IDENTIFIER_CHARACTER* '`'
//    | IMPLICIT_PARAMETER_NAME
//    | PROPERTY_WRAPPER_PROJECTION
    ;

fragment IDENTIFIER_HEAD
    : 'A'..'Z' | 'a'..'z'
    | '_'
    | '\u00A8' | '\u00AA' | '\u00AD' | '\u00AF' | '\u00B2'..'\u00B5' | '\u00B7'..'\u00BA'
    | '\u00BC'..'\u00BE' | '\u00C0'..'\u00D6' | '\u00D8'..'\u00F6' | '\u00F8'..'\u00FF'
    | '\u0100'..'\u02FF' | '\u0370'..'\u167F' | '\u1681'..'\u180D' | '\u180F'..'\u1DBF'
    | '\u1E00'..'\u1FFF'
    | '\u200B'..'\u200D' | '\u202A'..'\u202E' | '\u203F'..'\u2040' | '\u2054' | '\u2060'..'\u206F'
    | '\u2070'..'\u20CF' | '\u2100'..'\u218F' | '\u2460'..'\u24FF' | '\u2776'..'\u2793'
    | '\u2C00'..'\u2DFF' | '\u2E80'..'\u2FFF'
    | '\u3004'..'\u3007' | '\u3021'..'\u302F' | '\u3031'..'\u303F' | '\u3040'..'\uD7FF'
    | '\uF900'..'\uFD3D' | '\uFD40'..'\uFDCF' | '\uFDF0'..'\uFE1F' | '\uFE30'..'\uFE44'
    | '\uFE47'..'\uFFFD'
    | '\u{10000}'..'\u{1FFFD}' | '\u{20000}'..'\u{2FFFD}' | '\u{30000}'..'\u{3FFFD}' | '\u{40000}'..'\u{4FFFD}'
    | '\u{50000}'..'\u{5FFFD}' | '\u{60000}'..'\u{6FFFD}' | '\u{70000}'..'\u{7FFFD}' | '\u{80000}'..'\u{8FFFD}'
    | '\u{90000}'..'\u{9FFFD}' | '\u{A0000}'..'\u{AFFFD}' | '\u{B0000}'..'\u{BFFFD}' | '\u{C0000}'..'\u{CFFFD}'
    | '\u{D0000}'..'\u{DFFFD}' | '\u{E0000}'..'\u{EFFFD}'
    ;
    
fragment IDENTIFIER_CHARACTER
    : '0'..'9'
    | '\u0300'..'\u036F' | '\u1DC0'..'\u1DFF' | '\u20D0'..'\u20FF' | '\uFE20'..'\uFE2F'
    | IDENTIFIER_HEAD
    ;

// Cannot be used for naming new things
IMPLICIT_PARAMETER_NAME: '$' [0-9]+ ; // Note: underscores not allowed
// PROPERTY_WRAPPER_PROJECTION: '$' IDENTIFIER_CHARACTER* ;

//
// Punctuation
//

LPAREN: '(';
RPAREN: ')';
DOT: '.';

COMA: ',';
COLON: ':';
SEMICOLON: ';';

LBRACE: '{' { bracketDepth += 1 };
RBRACE: '}' { bracketDepth -= 1 };

//
// Operators
//

MINUS: '-' ; // Used in literal, overrides OP

OP
    : OP_HEAD OP_CHARACTER*
    | '.' DOT_OP_CHARACTER+
    ;
    
fragment OP_HEAD
    : '/' | '=' | '-' | '+' | '!' | '*' | '%' | '<' | '>' | '&' | '|' | '^' | '~' | '?'
    | '\u00A1'..'\u00A7'
    | '\u00A9' | '\u00AB'
    | '\u00AC' | '\u00AE'
    | '\u00B0'..'\u00B1'
    | '\u00B6' | '\u00BB' | '\u00BF' | '\u00D7' | '\u00F7'
    | '\u2016'..'\u2017'
    | '\u2020'..'\u2027'
    | '\u2030'..'\u203E'
    | '\u2041'..'\u2053'
    | '\u2055'..'\u205E'
    | '\u2190'..'\u23FF'
    | '\u2500'..'\u2775'
    | '\u2794'..'\u2BFF'
    | '\u2E00'..'\u2E7F'
    | '\u3001'..'\u3003'
    | '\u3008'..'\u3020'
    | '\u3030'
    ;
fragment OP_CHARACTER
    : OP_HEAD
    | '\u0300'..'\u036F'
    | '\u1DC0'..'\u1DFF'
    | '\u20D0'..'\u20FF'
    | '\uFE00'..'\uFE0F'
    | '\uFE20'..'\uFE2F'
    | '\u{E0100}'..'\u{E01EF}'
    ;

fragment DOT_OP_CHARACTER
    : '.'
    | OP_CHARACTER
    ;
