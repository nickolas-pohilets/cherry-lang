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
    private let tokenStream: CommonTokenStream?
    private let errorListener: ErrorListener
    public let tokens: [CherryToken]
    public var diagnostics: [Diagnostic] { errorListener.diagnostics }
    
    public convenience init(text: String, path: String) {
        self.init(path) {
            let input = ANTLRInputStream(text)
            input.name = path
            return input
        }
    }
    
    public convenience init(path: String) {
        self.init(path) { try ANTLRFileStream(path) }
    }
    
    private init(_ path: String, _ makeInput: () throws -> ANTLRInputStream) {
        let errorListener = ErrorListener(path: path)
        self.errorListener = errorListener
        do {
            let input = try makeInput()
            let lexer = CherryLexer(input)
            lexer.removeErrorListeners()
            lexer.addErrorListener(errorListener)
            let tokenStream = CommonTokenStream(lexer)
            try tokenStream.fill()
            
            // Keep token stream, so that tokens can lazily fetch text
            self.tokenStream = tokenStream
            
            self.tokens = tokenStream.getTokens().map { CherryToken(impl: $0 as! CommonToken) }
        } catch {
            self.tokenStream = nil
            self.tokens = []
            let d = Diagnostic(file: path, line: 1, column: 1, behavior: .error, message: error.localizedDescription)
            errorListener.diagnostics.append(d)
        }
    }
}
