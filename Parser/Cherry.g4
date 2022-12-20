grammar Cherry;

@lexer::members {
    private var stringInterpolations: [Int] = []
    private var bracketDepth: Int = 0
    
    private func canResumeInterpolation() -> Bool {
        stringInterpolations.last == bracketDepth
    }
}

/** The start rule; begin parsing here. */
prog:   stat+ EOF;

tokens: .* EOF;

stat: expr? NEWLINE
    ;

expr: expr OP expr
    | INT
    | ID
    | STRING
    | stringInterpolation
    | LPAREN expr RPAREN
    | expr LBRACE expr RBRACE expr
    ;
    
stringInterpolation
    : STRING_INTERPOLATION_START expr ( STRING_INTERPOLATION_CONTINUE expr)* STRING_INTERPOLATION_FINISH
    ;
    

ID  :   [a-zA-Z]+ ;      // match identifiers <label id="code.tour.expr.3"/>
INT :   [0-9]+ ;         // match integers
NEWLINE:'\r'? '\n' ;     // return newlines to parser (is end-statement signal)
WS  :   [ \t]+ -> skip ; // toss out whitespace

LPAREN: '(';
RPAREN: ')';

LBRACE: '{' { bracketDepth += 1 };
RBRACE: '}' { bracketDepth -= 1 };
STRING: '"' STRING_CONTENT '"';
STRING_INTERPOLATION_START   : '"' STRING_CONTENT '\\{' { stringInterpolations.append(bracketDepth) } ;
STRING_INTERPOLATION_CONTINUE: '}' { canResumeInterpolation() }? STRING_CONTENT '\\{';
STRING_INTERPOLATION_FINISH  : '}' { canResumeInterpolation() }? STRING_CONTENT '"' { stringInterpolations.removeLast() } ;

fragment STRING_CONTENT: (ESC | ~["\\])* ;
fragment ESC: '\\' (["\\/bfnrt] | UNICODE | 'x' HEX HEX) ;
fragment UNICODE : 'u' (HEX HEX HEX HEX | '{' HEX+ '}' );
fragment HEX : [0-9a-fA-F];

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

