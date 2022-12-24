//
//  Operator.swift
//  AST
//
//  Created by Nickolas Pokhylets on 23/12/2022.
//

import Foundation

public enum Operator {
    case prefix(String)
    case postfix(String)
    case infix(String)
}

public class OperatorExpression: Expression {
    public enum Kind {
        case unary(UnaryOperatorExpression)
        case binary(BinaryOperatorExpression)
    }
    
    public override var expressionKind: Expression.Kind { .operator(self) }
    public var operatorKind: Kind { fatalError() }
    public var `operator`: Operator { fatalError() }
    public var args: [Expression] { fatalError() }
}

public class UnaryOperatorExpression: OperatorExpression {
    public enum OperatorPosition {
        case prefix
        case postfix
    }
    
    public let operatorPosition: OperatorPosition
    public let operatorString: String
    public let arg: Expression
    
    public init(operatorPosition: OperatorPosition, operatorString: String, arg: Expression) {
        self.operatorPosition = operatorPosition
        self.operatorString = operatorString
        self.arg = arg
    }
    
    public override var operatorKind: Kind { .unary(self) }
    public override var `operator`: Operator {
        switch operatorPosition {
        case .prefix: return .prefix(operatorString)
        case .postfix: return .postfix(operatorString)
        }
    }
    public override var args: [Expression] { [arg] }
}

public class BinaryOperatorExpression: OperatorExpression {
    public let operatorString: String
    public let lhs: Expression
    public let rhs: Expression
    
    public init(operatorString: String, lhs: Expression, rhs: Expression) {
        self.operatorString = operatorString
        self.lhs = lhs
        self.rhs = rhs
    }
    
    public override var operatorKind: Kind { .binary(self) }
    public override var `operator`: Operator { .infix(operatorString) }
    public override var args: [Expression] { [lhs, rhs] }
}
