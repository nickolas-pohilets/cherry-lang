//
//  Parser.swift
//  CherryLang
//
//  Created by Mykola Pokhylets on 20/12/2022.
//

import Antlr4

public struct CherryToken: CustomStringConvertible {
    internal var impl: Antlr4.CommonToken
    
    public var description: String {
        return impl.description
    }
    
    public var kind: Kind {
        return Kind(rawValue: impl.getType())!
    }
}

public class LexerRig {
    private let tokenStream: CommonTokenStream
    public let tokens: [CherryToken]
    public let errors: [Error]
    
    public init(text: String) {
        let input = ANTLRInputStream(text)
        let lexer = CherryLexer(input)
        self.tokenStream = CommonTokenStream(lexer)
        
        do {
            try tokenStream.fill()
            self.tokens = tokenStream.getTokens().map { CherryToken(impl: $0 as! CommonToken) }
            // TODO: Collect errors from ANTLR
            self.errors = []
        } catch {
            self.tokens = []
            self.errors = [error]
        }
    }
}
