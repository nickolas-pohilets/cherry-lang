//
//  Expression.swift
//  AST
//
//  Created by Nickolas Pokhylets on 23/12/2022.
//

import Foundation

public class Expression {
    public enum Kind {
        case error(ErrorExpression)
        case literal(Literal)
        case identifier(IdentifierExpression)
        case `operator`(OperatorExpression)
    }
    
    public var expressionKind: Kind { fatalError() }
}

public class ErrorExpression: Expression {
    public override init() {}
    public override var expressionKind: Kind { .error(self) }
}

public class IdentifierExpression: Expression {
    public let identifier: String
    
    public init(identifier: String) {
        self.identifier = identifier
    }
    
    public override var expressionKind: Kind { .identifier(self) }
}
