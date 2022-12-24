//
//  ParserRig.swift
//  CherryParser
//
//  Created by Nickolas Pokhylets on 23/12/2022.
//

import Antlr4
import AST

public func parseExpressions(text: String, path: String) -> ([AST.Expression], [Diagnostic]) {
    parseExpressions(path) {
        let input = ANTLRInputStream(text)
        input.name = path
        return input
    }
}

public func parseExpressions(path: String) -> ([AST.Expression], [Diagnostic]) {
    parseExpressions(path) { try ANTLRFileStream(path) }
}

private func parseExpressions(_ path: String, _ makeInput: () throws -> ANTLRInputStream) -> ([AST.Expression], [Diagnostic]) {
    let errorListener = ErrorListener(path: path)
    do {
        let input = try makeInput()
        let lexer = CherryLexer(input)
        lexer.removeErrorListeners()
        lexer.addErrorListener(errorListener)
        let tokenStream = CommonTokenStream(lexer)
        let parser = try CherryParser(tokenStream)
        let root = try parser.prog()
        let visitor = ProgVisitor(errorListener: errorListener)
        _ = root.accept(visitor)
        return (visitor.expressions, errorListener.diagnostics)
    } catch {
        let d = Diagnostic(file: path, line: 1, column: 1, behavior: .error, message: error.localizedDescription)
        return ([], [d])
    }
}

