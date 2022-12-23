parser grammar CherryParser;
options { tokenVocab=CherryLexer; }

//
// Literals
//

literal
    : numericLiteral
    | STRING_LITERAL
//  | regularExpressionLiteral
    | BOOLEAN_LITERAL
    | NIL_LITERAL
    ;

numericLiteral
    : INTEGER_LITERAL
    | FLOATING_POINT_LITERAL
    ;

//
// Identifiers
//

// Note that identifiers must come after literals to properly parse true/false/nil

identifierList: identifier ( ',' identifier )* ;

identifier
    : IDENTIFIER
    | CKW_HIGHER_THAN
    | CKW_LOWER_THAN
    | CKW_ASSIGNMENT
    | CWK_ASSOCIATIVITY
    | CWK_ASSOCIATIVITY_VALUE
    ;

/** The start rule; begin parsing here. */
prog:   decl+ EOF;

decl: varDecl
    | funcDecl
    | classDecl
    | precedenceGroupDeclaration
    ;
    
varDecl
    : 'var' identifier (';' | NL+)
    ;
    
funcDecl
    : 'func' identifier (';' | NL+)
    ;
    
classDecl
    : 'class' identifier (';' | NL+)
    ;
        
precedenceGroupDeclaration
    : 'precedencegroup' precedenceGroupName lbrace (precedenceGroupAttribute semicolon)* rbrace ;
    
precedenceGroupAttribute
    : precedenceGroupRelation
    | precedenceGroupAssignment
    | precedenceGroupAssociativity
    ;
    
precedenceGroupRelation
    : op=('higherThan' | 'lowerThan') ':' precedenceGroupName (',' precedenceGroupName)*
    ;

precedenceGroupAssignment
    : 'assignment' ':' BOOLEAN_LITERAL
    ;
    
precedenceGroupAssociativity
    : 'associativity' ':' CWK_ASSOCIATIVITY_VALUE
    ;
    
precedenceGroupName
    : identifier
    ;
    
stat: expr? semicolon
    ;

expr: expr OP expr
    | literal
    | identifier
    | STRING_LITERAL
    | stringInterpolation
    | LPAREN expr RPAREN
    | expr LBRACE expr RBRACE expr
    ;
    
stringInterpolation
    : STRING_INTERPOLATION_START expr ( STRING_INTERPOLATION_CONTINUE expr)* STRING_INTERPOLATION_FINISH
    ;
    
lbrace: LBRACE NL* ;
rbrace: RBRACE NL* ;
semicolon: (SEMICOLON | NL) NL* ;
coma: (COMA | NL) NL* ;
