//
//  Parser.swift
//  CherryLang
//
//  Created by Mykola Pokhylets on 20/12/2022.
//

import Antlr4

public struct Token: CustomStringConvertible {
    internal var impl: Antlr4.CommonToken
    
    public var description: String {
        return impl.description
    }
}

public class LexerRig {
    private let tokenStream: CommonTokenStream
    public let tokens: [Token]
    public let errors: [Error]
    
    public init(text: String) {
        let input = ANTLRInputStream(text)
        let lexer = CherryLexer(input)
        self.tokenStream = CommonTokenStream(lexer)
        
        do {
            try tokenStream.fill()
            self.tokens = tokenStream.getTokens().map { Token(impl: $0 as! CommonToken) }
            // TODO: Collect errors from ANTLR
            self.errors = []
        } catch {
            self.tokens = []
            self.errors = [error]
        }
    }
}
