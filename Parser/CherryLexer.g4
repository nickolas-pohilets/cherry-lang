lexer grammar CherryLexer;

@lexer::members {
    private var stringInterpolations: [Int] = []
    private var bracketDepth: Int = 0
    
    private var stringLiteralStartPosition: Position?
    private var isMultilineStringLiteral: Bool = false
    
    private var firstBadDigit: (digit: UnicodeScalar, position: Position)?
    
    private func canResumeInterpolation() -> Bool {
        stringInterpolations.last == bracketDepth
    }
    
    private struct Position {
        var index: Int /// Index in input stream
        var line: Int
        var charPositionInLine: Int
    }
    
    private func tokenStartPosition() -> Position {
        return Position(
            index: _tokenStartCharIndex,
            line: _tokenStartLine,
            charPositionInLine: _tokenStartCharPositionInLine
        )
    }
    
    private func currentPosition() -> Position {
        return Position(
            index: _input!.index(),
            line: getInterpreter().getLine(),
            charPositionInLine: getInterpreter().getCharPositionInLine()
        )
    }
    
    // Workaround for ANTLR not rewinding line/charPositionInLine when executing actions
    private func fixedPosition(_ p: Position) -> Position {
        let current = currentPosition()
        assert(current.index - current.charPositionInLine <= p.index && p.index <= current.index && p.line == current.line)
        return Position(index: p.index, line: p.line, charPositionInLine: current.charPositionInLine - (current.index - p.index))
    }
    
    private func reportCustomError(_ msg: String) {
        reportCustomError(msg, position: currentPosition())
    }
    
    private func reportCustomError(_ msg: String, position: Position) {
        let listener = getErrorListenerDispatch()
        listener.syntaxError(self, nil, position.line, position.charPositionInLine, msg, nil)
    }
    
    private func currentCharacter() throws -> UnicodeScalar? {
        return (try _input?.LA(1)).flatMap { UnicodeScalar($0) }
    }
    
    private func saveBadDigit() throws {
        firstBadDigit = (digit: try currentCharacter()!, position: currentPosition())
    }
    
    private func emitBadDigitError(_ digitDescription: String) {
        let (digit, position) = firstBadDigit!
        let fixedPos = fixedPosition(position)
        reportCustomError("'\(digit)' is not a valid \(digitDescription) in integer literal", position: fixedPos)
        firstBadDigit = nil
    }
    
    private func emitBadBinaryDigitError() {
        emitBadDigitError("binary digit (0 or 1)")
    }
    
    private func emitBadOctalDigitError() {
        emitBadDigitError("octal digit (0-7)")
    }
    
    private func emitBadDecimalDigitError() {
        emitBadDigitError("digit")
    }
    
    private func emitBadHexadecimalDigitError() {
        emitBadDigitError("hexadecimal digit (0-9, A-F)")
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

FLOATING_POINT_LITERAL
    : '-'?
      // If dot is present, fractional digits are required, to disambiguate from member access
      ( DECIMAL_LITERAL '.' DECIMAL_LITERAL ([eE] [+-]? DECIMAL_LITERAL)?
      | DECIMAL_LITERAL [eE] [+-]? DECIMAL_LITERAL
      // Exponent is required, to disambiguate from member access
      | HEXADECIMAL_LITERAL '.' HEXADECIMAL_DIGITS [pP] [+-]? DECIMAL_LITERAL
      | HEXADECIMAL_LITERAL [pP] [+-]? DECIMAL_LITERAL
      | HEXADECIMAL_LITERAL '.' HEXADECIMAL_DIGITS?
        { reportCustomError("hexadecimal floating point literal must end with an exponent") }
      )
    ;
    
INTEGER_LITERAL
    : '-'?
      ( '0b' [01] [01_]*
      | '0o' [0-7] [0-7_]*
      | DECIMAL_LITERAL
      | '0x' HEXADECIMAL_DIGITS
      | '0b' [01]? [01_]* {try saveBadDigit()} IDENTIFIER_CHARACTER+ { emitBadBinaryDigitError() }
      | '0o' [0-7]? [0-7_]* {try saveBadDigit()} IDENTIFIER_CHARACTER+ { emitBadOctalDigitError() }
      | '0x' HEXADECIMAL_DIGITS? {try saveBadDigit()} IDENTIFIER_CHARACTER+ { emitBadHexadecimalDigitError() }
      | DECIMAL_LITERAL {try saveBadDigit()} IDENTIFIER_CHARACTER+ { emitBadDecimalDigitError() }
      )
    ;
    
fragment DECIMAL_LITERAL: [0-9] [0-9_]* ;
fragment HEXADECIMAL_LITERAL: '0x' HEXADECIMAL_DIGITS ;
fragment HEXADECIMAL_DIGITS: [0-9a-fA-F] [0-9a-fA-F_]* ;

BOOLEAN_LITERAL: 'true' | 'false';
NIL_LITERAL: 'nil' ;

STRING_LITERAL_START
    : '"' {
        stringLiteralStartPosition = tokenStartPosition()
        isMultilineStringLiteral = false
      } -> pushMode(STRING_CONTENT)
    ;
    
MULTILINE_STRING_LITERAL_START
    : ( '""""' WS? NL
      | '"""' { reportCustomError("multi-line string literal content must begin on a new line") }
      )
      {
        stringLiteralStartPosition = tokenStartPosition()
        isMultilineStringLiteral = true
      } -> pushMode(STRING_CONTENT)
    ;
    
STRING_INTERPOLATION_CLOSE
    : '}' { canResumeInterpolation() }? { stringInterpolations.removeLast() } -> popMode;

// See also mode STRING_CONTENT

RAW_STRING_LITERAL
    : '#' (RAW_STRING_LITERAL | '"' ~[\r\n]*? '"') '#'
    ;
BAD_RAW_STRING_LITERAL
    : ( '#'+ '"' ~[\r\n]* '"'?
      | '#'+ RAW_STRING_LITERAL
      )
      { reportCustomError("unterminated string literal", position: tokenStartPosition()) }
    ;
RAW_MULTILINE_STRING_LITERAL
    : '#'
      ( RAW_MULTILINE_STRING_LITERAL
      | '"""'
        ( WS? NL
        | { reportCustomError("multi-line string literal content must begin on a new line") }
        )
        .*?
        ( NL WS?
        | { reportCustomError("multi-line string literal closing delimiter must begin on a new line", position: currentPosition()) }
        )
        '"""'
      )
      '#'
    ;
BAD_RAW_MULTILINE_STRING_LITERAL
    : '#'+ '"""' .*
      { reportCustomError("unterminated string literal", position: tokenStartPosition()) }
    ;

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


mode STRING_CONTENT;

STRING_LITERAL_END: '"' {!isMultilineStringLiteral}? -> popMode;

MULTILINE_STRING_LITERAL_END
    : ( NL WS?
      | { reportCustomError("multi-line string literal closing delimiter must begin on a new line", position: tokenStartPosition()) }
      )
      '"""'
      {isMultilineStringLiteral}?
      -> popMode
    ;

STRING_CONTENT_NL
  : ('\r'? '\n' | '\r')
    {!isMultilineStringLiteral}?
    { reportCustomError("unterminated string literal", position: stringLiteralStartPosition!) }
    -> type(NL), popMode
  ;
  
STRING_CONTENT_VERBATIM: (~["\\\r\n] | [\r\n] {isMultilineStringLiteral}?)+;
STRING_CONTENT_ESCAPE: '\\' [0"\\nrt] ;
STRING_CONTENT_UNICODE: '\\' 'u' '{' [0-9A-Fa-f]+ '}';
STRING_CONTENT_BAD_ESCAPE
    : '\\' 'u' { reportCustomError("expected hexadecimal code in braces after unicode escape") }
    | '\\' { reportCustomError("invalid escape sequence in literal") }
    ;

STRING_INTERPOLATION_OPEN: '\\{' { stringInterpolations.append(bracketDepth) } -> pushMode(DEFAULT_MODE);
