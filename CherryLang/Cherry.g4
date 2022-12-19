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

stat:   expr NEWLINE
    |   ID '=' expr NEWLINE
    |   NEWLINE
    ;

expr:   expr ('*'|'/') expr
    |   expr ('+'|'-') expr
    |   INT
    |   ID
    |   STRING
    |   stringInterpolation
    |   '(' expr ')'
    ;
    
stringInterpolation
    : STRING_INTERPOLATION_START expr ( STRING_INTERPOLATION_CONTINUE expr)* STRING_INTERPOLATION_FINISH
    ;
    

ID  :   [a-zA-Z]+ ;      // match identifiers <label id="code.tour.expr.3"/>
INT :   [0-9]+ ;         // match integers
NEWLINE:'\r'? '\n' ;     // return newlines to parser (is end-statement signal)
WS  :   [ \t]+ -> skip ; // toss out whitespace

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
