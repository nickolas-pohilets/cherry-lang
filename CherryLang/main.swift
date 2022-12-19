//
//  main.swift
//  CherryLang
//
//  Created by Mykola Pokhylets on 19/12/2022.
//

import Foundation
import Antlr4

func parseFile(path: String) throws {
    let input = try ANTLRFileStream(path)
    let lexer = CherryLexer(input)
    let tokens = CommonTokenStream(lexer)
    try tokens.fill()
    print(tokens.getTokens())
    let parser = try CherryParser(tokens)
    let tree = try parser.tokens()
    print(tree.toStringTree(parser))
}

func main() throws {
    let url = URL(fileURLWithPath: #file).deletingLastPathComponent().appendingPathComponent("dummy.cherry")
    try parseFile(path: url.path)
}

try main()
