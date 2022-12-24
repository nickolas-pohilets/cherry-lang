//
//  ErrorListener.swift
//  CherryParser
//
//  Created by Nickolas Pokhylets on 22/12/2022.
//

import Antlr4

class ErrorListener: ANTLRErrorListener {
    var path: String
    var diagnostics: [Diagnostic] = []
    
    init(path: String) {
        self.path = path
    }
    
    func report(_ line: Int, _ charPositionInLine: Int, _ behaviour: DiagnosticBehavior, _ msg: String) {
        let d = Diagnostic(
            file: path,
            line: line,
            column: charPositionInLine + 1,
            behavior: .error,
            message: msg
        )
        diagnostics.append(d)
    }
    
    open func syntaxError<T>(_ recognizer: Recognizer<T>,
                             _ offendingSymbol: AnyObject?,
                             _ line: Int,
                             _ charPositionInLine: Int,
                             _ msg: String,
                             _ e: AnyObject?
    ) {
        report(line, charPositionInLine, .error, msg)
    }


    open func reportAmbiguity(_ recognizer: Parser,
                                _ dfa: DFA,
                                _ startIndex: Int,
                                _ stopIndex: Int,
                                _ exact: Bool,
                                _ ambigAlts: BitSet,
                                _ configs: ATNConfigSet) {
        fatalError("Ambiguity")
    }


    open func reportAttemptingFullContext(_ recognizer: Parser,
                                            _ dfa: DFA,
                                            _ startIndex: Int,
                                            _ stopIndex: Int,
                                            _ conflictingAlts: BitSet?,
                                            _ configs: ATNConfigSet) {
        fatalError("full context")
    }


    open func reportContextSensitivity(_ recognizer: Parser,
                                         _ dfa: DFA,
                                         _ startIndex: Int,
                                         _ stopIndex: Int,
                                         _ prediction: Int,
                                         _ configs: ATNConfigSet) {
        fatalError("context sensitivity")
    }
}
