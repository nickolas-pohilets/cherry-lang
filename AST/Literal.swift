//
//  Literal.swift
//  AST
//
//  Created by Nickolas Pokhylets on 23/12/2022.
//

import Foundation
import BigInt

public class Literal: Expression {
    public enum Kind {
        case string(StringLiteral)
        case integer(IntegerLiteral)
        case floatingPoint(FloatingPointLiteral)
        case bool(BoolLiteral)
        case `nil`(NilLiteral)
    }
    
    public override var expressionKind: Expression.Kind { .literal(self) }
    public var literalKind: Kind { fatalError() }
}

public class StringLiteral: Literal {
    public enum Fragment {
        case string(String)
        case expression(Expression)
    }
    public let value: [Fragment]
    
    public init(value: [Fragment]) {
        self.value = value
    }
    
    public var isEmpty: Bool { value.isEmpty }
    
    public var stringValue: String? {
        var result = ""
        for fragment in value {
            switch fragment {
            case let .string(s):
                result += s
            case .expression:
                return nil
            }
        }
        return result
    }
    
    public override var literalKind: Kind { .string(self) }
}

public class NumericLiteral: Literal {
    
}

public class IntegerLiteral: NumericLiteral {
    public let value: BigInt
    
    public init(value: BigInt) {
        self.value = value
    }
    
    public override var literalKind: Kind { .integer(self) }
    
}

public class FloatingPointLiteral: NumericLiteral {
    public let value: Double
    
    public init(value: Double) {
        self.value = value
    }
    
    public override var literalKind: Kind { .floatingPoint(self) }
}

public class BoolLiteral: Literal {
    public let value: Bool
    
    public init(value: Bool) {
        self.value = value
    }
    
    public override var literalKind: Kind { .bool(self) }
}

public class NilLiteral: Literal {
    public override init() {}
    public override var literalKind: Kind { .nil(self) }
}
