//
//  ExpressionVisitor.swift
//  CherryParser
//
//  Created by Nickolas Pokhylets on 23/12/2022.
//

import BigInt
import AST

class ProgVisitor: CherryParserBaseVisitor<Never> {
    var expressions: [Expression] = []
    var errorListener: ErrorListener
    
    init(errorListener: ErrorListener) {
        self.errorListener = errorListener
    }
    
    override func visitDecl(_ ctx: CherryParser.DeclContext) -> Never? {
        if let expr = ctx.expr() {
            let visitor = ExpressionVisitor(errorListener: errorListener)
            if let astExpr = expr.accept(visitor) {
                expressions.append(astExpr)
            }
        }
        return nil
    }
}

class ExpressionVisitor: CherryParserBaseVisitor<Expression> {
    var errorListener: ErrorListener
    
    init(errorListener: ErrorListener) {
        self.errorListener = errorListener
    }
    
    override func visitIdentifierExpr(_ ctx: CherryParser.IdentifierExprContext) -> Expression? {
        var identifier = ctx.getText()
        if identifier.first == "`" {
            identifier.removeFirst()
        }
        if identifier.last == "`" {
            identifier.removeLast()
        }
        return IdentifierExpression(identifier: identifier)
    }
    
    override func visitOperatorExpr(_ ctx: CherryParser.OperatorExprContext) -> Expression? {
        return BinaryOperatorExpression(
            operatorString: ctx.OP()?.getText() ?? "",
            lhs: ctx.lhs.accept(self) ?? ErrorExpression(),
            rhs: ctx.rhs.accept(self) ?? ErrorExpression()
        )
    }
    
    override func visitIntegerLiteral(_ ctx: CherryParser.IntegerLiteralContext) -> Expression? {
        if let tok = ctx.INTEGER_LITERAL() {
            let text = tok.getText().replacingOccurrences(of: "_", with: "")
            var slice = text[...]
            var isNegative = false
            if slice.hasPrefix("-") {
                isNegative = true
                slice.removeFirst()
            }
            var radix = 10
            if slice.hasPrefix("0x") {
                radix = 16
                slice.removeFirst(2)
            } else if slice.hasPrefix("0b") {
                radix = 2
                slice.removeFirst(2)
            } else if slice.hasPrefix("0o") {
                radix = 8
                slice.removeFirst(2)
            }
                
            var value = BigInt(slice, radix: radix) ?? BigInt()
            if isNegative {
                value.negate()
            }
            return IntegerLiteral(value: value)
        } else {
            return IntegerLiteral(value: BigInt())
        }
    }
    
    override func visitFloatingPointLiteral(_ ctx: CherryParser.FloatingPointLiteralContext) -> Expression? {
        let value = Double(ctx.FLOATING_POINT_LITERAL()?.getText() ?? "0.0")!
        return FloatingPointLiteral(value: value)
    }
    
    override func visitStringLiteral(_ ctx: CherryParser.StringLiteralContext) -> Expression? {
        let visitor = StringContentVisitor(errorListener: errorListener)
        _ = ctx.accept(visitor)
        return StringLiteral(value: visitor.finalize())
    }
    
    override func visitBooleanLiteral(_ ctx: CherryParser.BooleanLiteralContext) -> Expression? {
        let value = ctx.BOOLEAN_LITERAL()?.getText() == "true"
        return BoolLiteral(value: value)
    }
    
    override func visitNilLiteral(_ ctx: CherryParser.NilLiteralContext) -> Expression? {
        return NilLiteral()
    }
}

private class StringContentVisitor: CherryParserBaseVisitor<Never> {
    private var currentChunk: String = ""
    private var fragments: [StringLiteral.Fragment] = []
    private let errorListener: ErrorListener
    
    init(errorListener: ErrorListener) {
        self.errorListener = errorListener
    }
    
    func finalize() -> [StringLiteral.Fragment] {
        finishChunk()
        return fragments
    }
    
    override func visitStringContent(_ ctx: CherryParser.StringContentContext) -> Never? {
        if let verbatim = ctx.STRING_CONTENT_VERBATIM() {
            add(verbatim.getText())
        } else if let escape = ctx.STRING_CONTENT_ESCAPE() {
            let t = escape.getText().dropFirst()
            switch t {
            case "0": add("\0")
            case "\"", "\\": add(String(t))
            case "n": add("\n")
            case "r": add("\r")
            case "t": add("\t")
            default:
                fatalError("Unexpected escape sequence")
            }
        } else if let unicode = ctx.STRING_CONTENT_UNICODE() {
            let t = unicode.getText().dropFirst(3).dropLast(1)
            if let value = UInt32(t, radix: 16), let scalar = UnicodeScalar(value) {
                add(String(scalar))
            } else {
                let token = unicode.getSymbol()!
                errorListener.report(token.getLine(), token.getCharPositionInLine() + 3, .error, "invalid unicode scalar")
            }
        } else if let escase = ctx.STRING_CONTENT_BAD_ESCAPE() {
            add(escase.getText())
        } else if let expr = ctx.expr() {
            finishChunk()
            let visitor = ExpressionVisitor(errorListener: errorListener)
            if let astExpr = expr.accept(visitor) {
                fragments.append(.expression(astExpr))
            }
        }
        return nil
    }
    
    private func add(_ text: String) {
        currentChunk += text
    }
    
    private func finishChunk() {
        if !currentChunk.isEmpty {
            fragments.append(.string(currentChunk))
            currentChunk = ""
        }
    }
    
}
