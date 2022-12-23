//
//  Diagnostic.swift
//  CherryLang
//
//  Created by Mykola Pokhylets on 22/12/2022.
//

import Foundation

public enum DiagnosticBehavior: Hashable, CustomStringConvertible {
    case error
    case warning
    
    public var description: String {
        switch self {
        case .error: return "error"
        case .warning: return "warning"
        }
    }
}

public struct Diagnostic: Hashable, CustomStringConvertible {
    var file: String
    var line: Int
    var column: Int /// Currently in codepoints (UTF-32)
    var behavior: DiagnosticBehavior
    var message: String
    
    public var description: String {
        return "\(file):\(line):\(column): \(behavior): \(message)"
    }
}
