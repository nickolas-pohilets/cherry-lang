//
//  LiteralTests.swift
//  LiteralTests
//
//  Created by Mykola Pokhylets on 20/12/2022.
//

import XCTest
@testable import CherryParser

private let testFile = "test.cherry"

private func withTokens(_ text: String, _ action: (([CherryToken.Kind], [Diagnostic]) throws -> Void)) rethrows {
    let lexer = LexerRig(text: text, path: testFile)
    var tokens: [CherryToken.Kind] = lexer.tokens.map(\.kind)
    XCTAssertEqual(tokens.removeLast(), .eof)
    try action(tokens, lexer.diagnostics)
}

private func validateTokens(_ text: String, _ expected: [CherryToken.Kind], file: StaticString = #file, line: UInt = #line) {
    withTokens(text) { tokens, _ in
        XCTAssertEqual(tokens, expected, file: file, line: line)
    }
}

private func validateTokens(_ text: String, _ expected: CherryToken.Kind, file: StaticString = #file, line: UInt = #line) {
    withTokens(text) { tokens, _ in
        tokens.enumerated().forEach {
            let (index, token) = $0
            XCTAssertEqual(token, expected, "Unexpected token at index \(index)")
        }
    }
}

private func validateDiagnostics(_ text: String, _ expectedTokens: [CherryToken.Kind], _ expectedDiagnostics: [Diagnostic], file: StaticString = #file, line: UInt = #line) {
    withTokens(text) { tokens, diagnostics in
        XCTAssertEqual(tokens, expectedTokens, file: file, line: line)
        XCTAssertEqual(diagnostics, expectedDiagnostics, file: file, line: line)
    }
}

final class LiteralTests: XCTestCase {
    func testSmallLiterals() throws {
        validateTokens("true nil false TRUE NIL FALSE", [.booleanLiteral, .nilLiteral, .booleanLiteral, .identifier, .identifier, .identifier])
    }
    
    func testIntLiterals() throws {
        validateTokens("0 01234 1_23_456 0b0_10_10_00 0o5_6_7_8 0x123_aef_BCD", .integerLiteral)
    }
    
    func testDecFloatLiterals() throws {
        validateTokens("0.0 0. 0.1234 .0 1e2 1e+2 1e-2 1E2 1E+2 1E-2 1.25e2 1.25e+2 1.25e-2 1.25E2 1.25E+2 1.25E-2", [
            .floatingPointLiteral,
            .integerLiteral, .dot,
            .floatingPointLiteral,
            .dot, .integerLiteral,
            .floatingPointLiteral,
            .floatingPointLiteral,
            .floatingPointLiteral,
            .floatingPointLiteral,
            .floatingPointLiteral,
            .floatingPointLiteral,
            .floatingPointLiteral,
            .floatingPointLiteral,
            .floatingPointLiteral,
            .floatingPointLiteral,
            .floatingPointLiteral,
            .floatingPointLiteral,
        ])
    }
    
    func testHexFloatLiterals() throws {
        validateTokens("0x1p0 0x1Cp+2 0x1cp-2 0x1P0 0x1CP+2 0x1cP-2 0x1.ffp0 0x1C.ffp+2 0x1c.FFp-2 0x1.aaP0 0x1c.AAP+2 0x1c.aAP-2", .floatingPointLiteral)
    }
    
    func testHexFloatLiteralRequiresExponent() throws {
        validateDiagnostics("0x1.7", [.floatingPointLiteral], [
            Diagnostic(file: testFile, line: 1, column: 6, behavior: .error, message: "hexadecimal floating point literal must end with an exponent")
        ])
    }
    
    func testStringInterpolation() throws {
        let text = #"""
        "Hello, \{ 3 { 4 { 5 } 6 } 7 } ho-ho-ho \{ 1 { "Nested \{ "Inner\{ A { B } C }" } interpolation" } z } in Cherry"
        """#
        validateTokens(text, [
            .stringInterpolationStart,
            .integerLiteral,
            .lbrace,
            .integerLiteral,
            .lbrace,
            .integerLiteral,
            .rbrace,
            .integerLiteral,
            .rbrace,
            .integerLiteral,
            .stringInterpolationContinue,
            .integerLiteral,
            .lbrace,
            .stringInterpolationStart,
            .stringInterpolationStart,
            .identifier,
            .lbrace,
            .identifier,
            .rbrace,
            .identifier,
            .stringInterpolationFinish,
            .stringInterpolationFinish,
            .rbrace,
            .identifier,
            .stringInterpolationFinish,
        ])
    }
}
