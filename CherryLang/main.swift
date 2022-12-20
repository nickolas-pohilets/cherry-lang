//
//  main.swift
//  CherryLang
//
//  Created by Mykola Pokhylets on 19/12/2022.
//

import Foundation
import CherryParser

let text = #"""
"Hello, \{ 3 { 4 { 5 } 6 } 7 } ho-ho-ho \{ 1 { "Nested \{ "Inner\{ A { B } C }" } interpolation" } z } in Cherry"
"""#
let lexer = LexerRig(text: text)
print(lexer.tokens)
