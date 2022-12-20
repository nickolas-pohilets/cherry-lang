//
//  CherryParserTests.swift
//  CherryParserTests
//
//  Created by Mykola Pokhylets on 20/12/2022.
//

import XCTest
@testable import CherryParser

final class CherryParserTests: XCTestCase {
    func testStringInterpolation() throws {
        let text = #"""
        "Hello, \{ 3 { 4 { 5 } 6 } 7 } ho-ho-ho \{ 1 { "Nested \{ "Inner\{ A { B } C }" } interpolation" } z } in Cherry"
        """#
        let lexer = LexerRig(text: text)
        let tokens = lexer.tokens.map(\.kind)
        XCTAssertEqual(tokens, [
            .stringInterpolationStart,
            .int,
            .lbrace,
            .int,
            .lbrace,
            .int,
            .rbrace,
            .int,
            .rbrace,
            .int,
            .stringInterpolationContinue,
            .int,
            .lbrace,
            .stringInterpolationStart,
            .stringInterpolationStart,
            .id,
            .lbrace,
            .id,
            .rbrace,
            .id,
            .stringInterpolationFinish,
            .stringInterpolationFinish,
            .rbrace,
            .id,
            .stringInterpolationFinish,
            .eof,
        ])
    }
}
