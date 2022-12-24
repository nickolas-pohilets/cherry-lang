//
//  LiteralTests.swift
//  LiteralTests
//
//  Created by Mykola Pokhylets on 20/12/2022.
//

import XCTest
@testable import CherryParser
import AST
import BigInt

private let testFile = "test.cherry"

private func withTokens(_ text: String, _ action: (([CherryToken.Kind], [Diagnostic]) throws -> Void)) rethrows {
    let lexer = LexerRig(text: text, path: testFile)
    var tokens: [CherryToken.Kind] = lexer.tokens.map(\.kind)
    XCTAssertEqual(tokens.removeLast(), .eof)
    try action(tokens, lexer.diagnostics)
}

private func validateTokens(_ text: String, _ expected: [CherryToken.Kind], file: StaticString = #file, line: UInt = #line) {
    withTokens(text) { tokens, _ in
        XCTAssertNoDifference(tokens, expected, file: file, line: line)
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
        XCTAssertNoDifference(tokens, expectedTokens, file: file, line: line)
        XCTAssertNoDifference(diagnostics, expectedDiagnostics, file: file, line: line)
    }
}

final class LiteralTests: XCTestCase {
    func testSmallLiterals() throws {
        let text = "true nil false TRUE NIL FALSE"
        validateTokens(text, [.booleanLiteral, .nilLiteral, .booleanLiteral, .identifier, .identifier, .identifier])
        
        let parseText = text.split(separator: " ").joined(separator: "\n")
        let (exprs, diag) = parseExpressions(text: parseText, path: testFile)
        XCTAssertEqual(exprs.count, 6)
        XCTAssertEqual((exprs[0] as? BoolLiteral)?.value, true)
        XCTAssertTrue(exprs[1] is NilLiteral)
        XCTAssertEqual((exprs[2] as? BoolLiteral)?.value, false)
        XCTAssertEqual((exprs[3] as? IdentifierExpression)?.identifier, "TRUE")
        XCTAssertEqual((exprs[4] as? IdentifierExpression)?.identifier, "NIL")
        XCTAssertEqual((exprs[5] as? IdentifierExpression)?.identifier, "FALSE")
        XCTAssertNoDifference(diag, [])
    }
    
    func testIntLiterals() throws {
        let text = """
        0 -0 1 -1 01234 -01234 1_23_456 -1_23_456 0b0_10_10_00 -0b0_10_10_00 0o5_6_7_3 -0o5_6_7_3 0x123_aef_BCD -0x123_aef_BCD \
        0x80_00_00_00 -0x80_00_00_00 \
        0x1_00_00_00_00 -0x1_00_00_00_00 \
        0x80_00_00_00_00_00_00_00 -0x80_00_00_00_00_00_00_00 \
        0x1_00_00_00_00_00_00_00_00 -0x1_00_00_00_00_00_00_00_00 \
        2147483648 -2147483648 \
        4294967296 -4294967296 \
        9223372036854775808 -9223372036854775808 \
        18446744073709551616 -18446744073709551616 \
        79228162514264337593543950336 -79228162514264337593543950336 \
        0xfffffffffffffffffffffffffff -0xfffffffffffffffffffffffffff \
        0x 0b 0o \
        0xz12eq 0b201013 0o82129 12f9d \
        0x4z12eq 0b10201013 0o1282129
        """
        validateTokens(text, .integerLiteral)
        
        let parseText = text.split(separator: " ").joined(separator: "\n")
        let (exprs, diag) = parseExpressions(text: parseText, path: testFile)
        XCTAssertEqual(exprs.count, 44)
        let values = exprs.compactMap { ($0 as? IntegerLiteral)?.value }
        XCTAssertEqual(values.count, 44)
        XCTAssertNoDifference(values, [
            0, 0,
            1, -1,
            1234, -1234,
            123456, -123456,
            40, -40,
            3003, -3003,
            4893637581, -4893637581,
            2147483648, -2147483648,
            4294967296, -4294967296,
            BigInt("9223372036854775808"), BigInt("-9223372036854775808"),
            BigInt("18446744073709551616"), BigInt("-18446744073709551616"),
            2147483648, -2147483648,
            4294967296, -4294967296,
            BigInt("9223372036854775808"), BigInt("-9223372036854775808"),
            BigInt("18446744073709551616"), BigInt("-18446744073709551616"),
            BigInt("79228162514264337593543950336"), -BigInt("79228162514264337593543950336"),
            BigInt("324518553658426726783156020576255"), -BigInt("324518553658426726783156020576255"),
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        ])
        XCTAssertNoDifference(diag, [
            Diagnostic(file: testFile, line: 35, column: 2, behavior: .error, message: "'x' is not a valid digit in integer literal"),
            Diagnostic(file: testFile, line: 36, column: 2, behavior: .error, message: "'b' is not a valid digit in integer literal"),
            Diagnostic(file: testFile, line: 37, column: 2, behavior: .error, message: "'o' is not a valid digit in integer literal"),
            Diagnostic(file: testFile, line: 38, column: 3, behavior: .error, message: "'z' is not a valid hexadecimal digit (0-9, A-F) in integer literal"),
            Diagnostic(file: testFile, line: 39, column: 3, behavior: .error, message: "'2' is not a valid binary digit (0 or 1) in integer literal"),
            Diagnostic(file: testFile, line: 40, column: 3, behavior: .error, message: "'8' is not a valid octal digit (0-7) in integer literal"),
            Diagnostic(file: testFile, line: 41, column: 3, behavior: .error, message: "'f' is not a valid digit in integer literal"),
            Diagnostic(file: testFile, line: 42, column: 4, behavior: .error, message: "'z' is not a valid hexadecimal digit (0-9, A-F) in integer literal"),
            Diagnostic(file: testFile, line: 43, column: 5, behavior: .error, message: "'2' is not a valid binary digit (0 or 1) in integer literal"),
            Diagnostic(file: testFile, line: 44, column: 5, behavior: .error, message: "'8' is not a valid octal digit (0-7) in integer literal"),
        ])
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
    
    func testStringLiteral() throws {
        let text = #"""
        "" "abc" "a\t\n\r\0\"\\z" "їЄ언🏴‍☠️" "\u{A0}\u{a0}"
        "abc
        "a\z"
        "a\u"
        "a\u{"
        "a\u{a"
        "a\u{a0"
        "a\u{ffffffff}"
        """#
        validateDiagnostics(text, [
            .stringLiteralStart, .stringLiteralEnd,
            
            .stringLiteralStart, .stringContentVerbatim, .stringLiteralEnd,
            
            .stringLiteralStart,
            .stringContentVerbatim,
            .stringContentEscape,
            .stringContentEscape,
            .stringContentEscape,
            .stringContentEscape,
            .stringContentEscape,
            .stringContentEscape,
            .stringContentVerbatim,
            .stringLiteralEnd,
            
            .stringLiteralStart,
            .stringContentVerbatim,
            .stringLiteralEnd,
            
            .stringLiteralStart,
            .stringContentUnicode,
            .stringContentUnicode,
            .stringLiteralEnd,
            
            .nl,
            
            .stringLiteralStart, .stringContentVerbatim, .nl,
            .stringLiteralStart, .stringContentVerbatim, .stringContentBadEscape, .stringContentVerbatim, .stringLiteralEnd, .nl,
            .stringLiteralStart, .stringContentVerbatim, .stringContentBadEscape, .stringLiteralEnd, .nl,
            .stringLiteralStart, .stringContentVerbatim, .stringContentBadEscape, .stringContentVerbatim, .stringLiteralEnd, .nl,
            .stringLiteralStart, .stringContentVerbatim, .stringContentBadEscape, .stringContentVerbatim, .stringLiteralEnd, .nl,
            .stringLiteralStart, .stringContentVerbatim, .stringContentBadEscape, .stringContentVerbatim, .stringLiteralEnd, .nl,
            .stringLiteralStart, .stringContentVerbatim, .stringContentUnicode, .stringLiteralEnd
        ], [
            Diagnostic(file: testFile, line: 2, column: 1, behavior: .error, message: "unterminated string literal"),
            Diagnostic(file: testFile, line: 3, column: 4, behavior: .error, message: "invalid escape sequence in literal"),
            Diagnostic(file: testFile, line: 4, column: 5, behavior: .error, message: "expected hexadecimal code in braces after unicode escape"),
            Diagnostic(file: testFile, line: 5, column: 5, behavior: .error, message: "expected hexadecimal code in braces after unicode escape"),
            Diagnostic(file: testFile, line: 6, column: 5, behavior: .error, message: "expected hexadecimal code in braces after unicode escape"),
            Diagnostic(file: testFile, line: 7, column: 5, behavior: .error, message: "expected hexadecimal code in braces after unicode escape"),
        ])
    }
    
    func testStringInterpolation() throws {
        let text = #"""
        "Hello, \{ 3 { 4 { 5 } 6 } 7 } ho-ho-ho \{ 1 { "Nested \{ "Inner\{ A { B } C }" } interpolation" } z } in Cherry"
        """#
        validateTokens(text, [
            .stringLiteralStart,
            .stringContentVerbatim,
            .stringInterpolationOpen,
            .integerLiteral,
            .lbrace,
            .integerLiteral,
            .lbrace,
            .integerLiteral,
            .rbrace,
            .integerLiteral,
            .rbrace,
            .integerLiteral,
            .stringInterpolationClose,
            .stringContentVerbatim,
            .stringInterpolationOpen,
            .integerLiteral,
            .lbrace,
            .stringLiteralStart,
            .stringContentVerbatim,
            .stringInterpolationOpen,
            .stringLiteralStart,
            .stringContentVerbatim,
            .stringInterpolationOpen,
            .identifier,
            .lbrace,
            .identifier,
            .rbrace,
            .identifier,
            .stringInterpolationClose,
            .stringLiteralEnd,
            .stringInterpolationClose,
            .stringContentVerbatim,
            .stringLiteralEnd,
            .rbrace,
            .identifier,
            .stringInterpolationClose,
            .stringContentVerbatim,
            .stringLiteralEnd,
        ])
    }
}
