parser grammar CherryParser;
options { tokenVocab=CherryLexer; }

//
// Literals
//

literal
    : integerLiteral
    | floatingPointLiteral
    | stringLiteral
//  | regularExpressionLiteral
    | booleanLiteral
    | nilLiteral
    ;
    
integerLiteral: INTEGER_LITERAL ;
floatingPointLiteral: FLOATING_POINT_LITERAL ;

stringLiteral
    : STRING_LITERAL_START
      stringContent*
      STRING_LITERAL_END
    | MULTILINE_STRING_LITERAL_START
      stringContent*
      MULTILINE_STRING_LITERAL_END
    | RAW_STRING_LITERAL
    | BAD_RAW_STRING_LITERAL
    | RAW_MULTILINE_STRING_LITERAL
    | BAD_RAW_MULTILINE_STRING_LITERAL
    ;
        
stringContent
    : STRING_CONTENT_VERBATIM
    | STRING_CONTENT_ESCAPE
    | STRING_CONTENT_UNICODE
    | STRING_CONTENT_BAD_ESCAPE
    | STRING_INTERPOLATION_OPEN expr STRING_INTERPOLATION_CLOSE
    ;
    
booleanLiteral: BOOLEAN_LITERAL ;
nilLiteral: NIL_LITERAL ;

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
    | expr semicolon
    ;
    
varDecl
    : 'var' identifier semicolon
    ;
    
funcDecl
    : 'func' identifier semicolon
    ;
    
classDecl
    : 'class' identifier semicolon
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

expr: lhs=expr op=OP rhs=expr      # OperatorExpr
    | literal                      # LiteralExpr
    | identifier                   # IdentifierExpr
    | IMPLICIT_PARAMETER_NAME      # IdentifierExpr
//  | PROPERTY_WRAPPER_PROJECTION  # IdentifierExpr
    ;
        
lbrace: LBRACE NL* ;
rbrace: RBRACE NL* ;
semicolon: (SEMICOLON | NL | EOF) NL* ;
coma: (COMA | NL | EOF) NL* ;
