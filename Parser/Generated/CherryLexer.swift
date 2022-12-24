// Generated from CherryLexer.g4 by ANTLR 4.11.1
import Antlr4

internal class CherryLexer: Lexer {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = CherryLexer._ATN.getNumberOfDecisions()
          for i in 0..<length {
          	    decisionToDFA.append(DFA(CherryLexer._ATN.getDecisionState(i)!, i))
          }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	internal
	static let NL=1, WS=2, COMMENT=3, MULTILINE_COMMENT=4, KW_VAR=5, KW_FUNC=6, 
            KW_CLASS=7, KW_PRECEDENCE_GROUP=8, CKW_HIGHER_THAN=9, CKW_LOWER_THAN=10, 
            CKW_ASSIGNMENT=11, CWK_ASSOCIATIVITY=12, CWK_ASSOCIATIVITY_VALUE=13, 
            FLOATING_POINT_LITERAL=14, INTEGER_LITERAL=15, BOOLEAN_LITERAL=16, 
            NIL_LITERAL=17, STRING_LITERAL_START=18, MULTILINE_STRING_LITERAL_START=19, 
            STRING_INTERPOLATION_CLOSE=20, RAW_STRING_LITERAL=21, BAD_RAW_STRING_LITERAL=22, 
            RAW_MULTILINE_STRING_LITERAL=23, BAD_RAW_MULTILINE_STRING_LITERAL=24, 
            IDENTIFIER=25, IMPLICIT_PARAMETER_NAME=26, LPAREN=27, RPAREN=28, 
            DOT=29, COMA=30, COLON=31, SEMICOLON=32, LBRACE=33, RBRACE=34, 
            MINUS=35, OP=36, STRING_LITERAL_END=37, MULTILINE_STRING_LITERAL_END=38, 
            STRING_CONTENT_VERBATIM=39, STRING_CONTENT_ESCAPE=40, STRING_CONTENT_UNICODE=41, 
            STRING_CONTENT_BAD_ESCAPE=42, STRING_INTERPOLATION_OPEN=43

	internal
	static let STRING_CONTENT=1
	internal
	static let channelNames: [String] = [
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	]

	internal
	static let modeNames: [String] = [
		"DEFAULT_MODE", "STRING_CONTENT"
	]

	internal
	static let ruleNames: [String] = [
		"NL", "WS", "COMMENT", "MULTILINE_COMMENT", "KW_VAR", "KW_FUNC", "KW_CLASS", 
		"KW_PRECEDENCE_GROUP", "CKW_HIGHER_THAN", "CKW_LOWER_THAN", "CKW_ASSIGNMENT", 
		"CWK_ASSOCIATIVITY", "CWK_ASSOCIATIVITY_VALUE", "FLOATING_POINT_LITERAL", 
		"INTEGER_LITERAL", "DECIMAL_LITERAL", "HEXADECIMAL_LITERAL", "HEXADECIMAL_DIGITS", 
		"BOOLEAN_LITERAL", "NIL_LITERAL", "STRING_LITERAL_START", "MULTILINE_STRING_LITERAL_START", 
		"STRING_INTERPOLATION_CLOSE", "RAW_STRING_LITERAL", "BAD_RAW_STRING_LITERAL", 
		"RAW_MULTILINE_STRING_LITERAL", "BAD_RAW_MULTILINE_STRING_LITERAL", "IDENTIFIER", 
		"IDENTIFIER_HEAD", "IDENTIFIER_CHARACTER", "IMPLICIT_PARAMETER_NAME", 
		"LPAREN", "RPAREN", "DOT", "COMA", "COLON", "SEMICOLON", "LBRACE", "RBRACE", 
		"MINUS", "OP", "OP_HEAD", "OP_CHARACTER", "DOT_OP_CHARACTER", "STRING_LITERAL_END", 
		"MULTILINE_STRING_LITERAL_END", "STRING_CONTENT_NL", "STRING_CONTENT_VERBATIM", 
		"STRING_CONTENT_ESCAPE", "STRING_CONTENT_UNICODE", "STRING_CONTENT_BAD_ESCAPE", 
		"STRING_INTERPOLATION_OPEN"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, nil, nil, nil, nil, "'var'", "'func'", "'class'", "'precedencegroup'", 
		"'higherThan'", "'lowerThan'", "'assignment'", "'associativity'", nil, 
		nil, nil, nil, "'nil'", nil, nil, nil, nil, nil, nil, nil, nil, nil, "'('", 
		"')'", "'.'", "','", "':'", "';'", "'{'", "'}'", "'-'"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, "NL", "WS", "COMMENT", "MULTILINE_COMMENT", "KW_VAR", "KW_FUNC", 
		"KW_CLASS", "KW_PRECEDENCE_GROUP", "CKW_HIGHER_THAN", "CKW_LOWER_THAN", 
		"CKW_ASSIGNMENT", "CWK_ASSOCIATIVITY", "CWK_ASSOCIATIVITY_VALUE", "FLOATING_POINT_LITERAL", 
		"INTEGER_LITERAL", "BOOLEAN_LITERAL", "NIL_LITERAL", "STRING_LITERAL_START", 
		"MULTILINE_STRING_LITERAL_START", "STRING_INTERPOLATION_CLOSE", "RAW_STRING_LITERAL", 
		"BAD_RAW_STRING_LITERAL", "RAW_MULTILINE_STRING_LITERAL", "BAD_RAW_MULTILINE_STRING_LITERAL", 
		"IDENTIFIER", "IMPLICIT_PARAMETER_NAME", "LPAREN", "RPAREN", "DOT", "COMA", 
		"COLON", "SEMICOLON", "LBRACE", "RBRACE", "MINUS", "OP", "STRING_LITERAL_END", 
		"MULTILINE_STRING_LITERAL_END", "STRING_CONTENT_VERBATIM", "STRING_CONTENT_ESCAPE", 
		"STRING_CONTENT_UNICODE", "STRING_CONTENT_BAD_ESCAPE", "STRING_INTERPOLATION_OPEN"
	]
	internal
	static let VOCABULARY = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)


	    private var stringInterpolations: [Int] = []
	    private var bracketDepth: Int = 0
	    
	    private var stringLiteralStartPosition: Position?
	    private var isMultilineStringLiteral: Bool = false
	    
	    private var firstBadDigit: (digit: UnicodeScalar, position: Position)?
	    
	    private func canResumeInterpolation() -> Bool {
	        stringInterpolations.last == bracketDepth
	    }
	    
	    private struct Position {
	        var index: Int /// Index in input stream
	        var line: Int
	        var charPositionInLine: Int
	    }
	    
	    private func tokenStartPosition() -> Position {
	        return Position(
	            index: _tokenStartCharIndex,
	            line: _tokenStartLine,
	            charPositionInLine: _tokenStartCharPositionInLine
	        )
	    }
	    
	    private func currentPosition() -> Position {
	        return Position(
	            index: _input!.index(),
	            line: getInterpreter().getLine(),
	            charPositionInLine: getInterpreter().getCharPositionInLine()
	        )
	    }
	    
	    // Workaround for ANTLR not rewinding line/charPositionInLine when executing actions
	    private func fixedPosition(_ p: Position) -> Position {
	        let current = currentPosition()
	        assert(current.index - current.charPositionInLine <= p.index && p.index <= current.index && p.line == current.line)
	        return Position(index: p.index, line: p.line, charPositionInLine: current.charPositionInLine - (current.index - p.index))
	    }
	    
	    private func reportCustomError(_ msg: String) {
	        reportCustomError(msg, position: currentPosition())
	    }
	    
	    private func reportCustomError(_ msg: String, position: Position) {
	        let listener = getErrorListenerDispatch()
	        listener.syntaxError(self, nil, position.line, position.charPositionInLine, msg, nil)
	    }
	    
	    private func currentCharacter() throws -> UnicodeScalar? {
	        return (try _input?.LA(1)).flatMap { UnicodeScalar($0) }
	    }
	    
	    private func saveBadDigit() throws {
	        firstBadDigit = (digit: try currentCharacter()!, position: currentPosition())
	    }
	    
	    private func emitBadDigitError(_ digitDescription: String) {
	        let (digit, position) = firstBadDigit!
	        let fixedPos = fixedPosition(position)
	        reportCustomError("'\(digit)' is not a valid \(digitDescription) in integer literal", position: fixedPos)
	        firstBadDigit = nil
	    }
	    
	    private func emitBadBinaryDigitError() {
	        emitBadDigitError("binary digit (0 or 1)")
	    }
	    
	    private func emitBadOctalDigitError() {
	        emitBadDigitError("octal digit (0-7)")
	    }
	    
	    private func emitBadDecimalDigitError() {
	        emitBadDigitError("digit")
	    }
	    
	    private func emitBadHexadecimalDigitError() {
	        emitBadDigitError("hexadecimal digit (0-9, A-F)")
	    }


	override internal
	func getVocabulary() -> Vocabulary {
		return CherryLexer.VOCABULARY
	}

	internal
	required init(_ input: CharStream) {
	    RuntimeMetaData.checkVersion("4.11.1", RuntimeMetaData.VERSION)
		super.init(input)
		_interp = LexerATNSimulator(self, CherryLexer._ATN, CherryLexer._decisionToDFA, CherryLexer._sharedContextCache)
	}

	override internal
	func getGrammarFileName() -> String { return "CherryLexer.g4" }

	override internal
	func getRuleNames() -> [String] { return CherryLexer.ruleNames }

	override internal
	func getSerializedATN() -> [Int] { return CherryLexer._serializedATN }

	override internal
	func getChannelNames() -> [String] { return CherryLexer.channelNames }

	override internal
	func getModeNames() -> [String] { return CherryLexer.modeNames }

	override internal
	func getATN() -> ATN { return CherryLexer._ATN }

	override open
	func action(_ _localctx: RuleContext?,  _ ruleIndex: Int, _ actionIndex: Int) throws {
		switch (ruleIndex) {
		case 13:
			try FLOATING_POINT_LITERAL_action((_localctx as RuleContext?), actionIndex)

		case 14:
			try INTEGER_LITERAL_action((_localctx as RuleContext?), actionIndex)

		case 20:
			try STRING_LITERAL_START_action((_localctx as RuleContext?), actionIndex)

		case 21:
			try MULTILINE_STRING_LITERAL_START_action((_localctx as RuleContext?), actionIndex)

		case 22:
			try STRING_INTERPOLATION_CLOSE_action((_localctx as RuleContext?), actionIndex)

		case 24:
			try BAD_RAW_STRING_LITERAL_action((_localctx as RuleContext?), actionIndex)

		case 25:
			try RAW_MULTILINE_STRING_LITERAL_action((_localctx as RuleContext?), actionIndex)

		case 26:
			try BAD_RAW_MULTILINE_STRING_LITERAL_action((_localctx as RuleContext?), actionIndex)

		case 37:
			try LBRACE_action((_localctx as RuleContext?), actionIndex)

		case 38:
			try RBRACE_action((_localctx as RuleContext?), actionIndex)

		case 45:
			try MULTILINE_STRING_LITERAL_END_action((_localctx as RuleContext?), actionIndex)

		case 46:
			try STRING_CONTENT_NL_action((_localctx as RuleContext?), actionIndex)

		case 50:
			try STRING_CONTENT_BAD_ESCAPE_action((_localctx as RuleContext?), actionIndex)

		case 51:
			try STRING_INTERPOLATION_OPEN_action((_localctx as RuleContext?), actionIndex)

		default: break
		}
	}
	private func FLOATING_POINT_LITERAL_action(_ _localctx: RuleContext?,  _ actionIndex: Int) throws {
		switch (actionIndex) {
		case 0:
			 reportCustomError("hexadecimal floating point literal must end with an exponent") 

		 default: break
		}
	}
	private func INTEGER_LITERAL_action(_ _localctx: RuleContext?,  _ actionIndex: Int) throws {
		switch (actionIndex) {
		case 1:
			try saveBadDigit()

		case 2:
			 emitBadBinaryDigitError() 

		case 3:
			try saveBadDigit()

		case 4:
			 emitBadOctalDigitError() 

		case 5:
			try saveBadDigit()

		case 6:
			 emitBadHexadecimalDigitError() 

		case 7:
			try saveBadDigit()

		case 8:
			 emitBadDecimalDigitError() 

		 default: break
		}
	}
	private func STRING_LITERAL_START_action(_ _localctx: RuleContext?,  _ actionIndex: Int) throws {
		switch (actionIndex) {
		case 9:

			        stringLiteralStartPosition = tokenStartPosition()
			        isMultilineStringLiteral = false
			      

		 default: break
		}
	}
	private func MULTILINE_STRING_LITERAL_START_action(_ _localctx: RuleContext?,  _ actionIndex: Int) throws {
		switch (actionIndex) {
		case 10:
			 reportCustomError("multi-line string literal content must begin on a new line") 

		case 11:

			        stringLiteralStartPosition = tokenStartPosition()
			        isMultilineStringLiteral = true
			      

		 default: break
		}
	}
	private func STRING_INTERPOLATION_CLOSE_action(_ _localctx: RuleContext?,  _ actionIndex: Int) throws {
		switch (actionIndex) {
		case 12:
			 stringInterpolations.removeLast() 

		 default: break
		}
	}
	private func BAD_RAW_STRING_LITERAL_action(_ _localctx: RuleContext?,  _ actionIndex: Int) throws {
		switch (actionIndex) {
		case 13:
			 reportCustomError("unterminated string literal", position: tokenStartPosition()) 

		 default: break
		}
	}
	private func RAW_MULTILINE_STRING_LITERAL_action(_ _localctx: RuleContext?,  _ actionIndex: Int) throws {
		switch (actionIndex) {
		case 14:
			 reportCustomError("multi-line string literal content must begin on a new line") 

		case 15:
			 reportCustomError("multi-line string literal closing delimiter must begin on a new line", position: currentPosition()) 

		 default: break
		}
	}
	private func BAD_RAW_MULTILINE_STRING_LITERAL_action(_ _localctx: RuleContext?,  _ actionIndex: Int) throws {
		switch (actionIndex) {
		case 16:
			 reportCustomError("unterminated string literal", position: tokenStartPosition()) 

		 default: break
		}
	}
	private func LBRACE_action(_ _localctx: RuleContext?,  _ actionIndex: Int) throws {
		switch (actionIndex) {
		case 17:
			 bracketDepth += 1 

		 default: break
		}
	}
	private func RBRACE_action(_ _localctx: RuleContext?,  _ actionIndex: Int) throws {
		switch (actionIndex) {
		case 18:
			 bracketDepth -= 1 

		 default: break
		}
	}
	private func MULTILINE_STRING_LITERAL_END_action(_ _localctx: RuleContext?,  _ actionIndex: Int) throws {
		switch (actionIndex) {
		case 19:
			 reportCustomError("multi-line string literal closing delimiter must begin on a new line", position: tokenStartPosition()) 

		 default: break
		}
	}
	private func STRING_CONTENT_NL_action(_ _localctx: RuleContext?,  _ actionIndex: Int) throws {
		switch (actionIndex) {
		case 20:
			 reportCustomError("unterminated string literal", position: stringLiteralStartPosition!) 

		 default: break
		}
	}
	private func STRING_CONTENT_BAD_ESCAPE_action(_ _localctx: RuleContext?,  _ actionIndex: Int) throws {
		switch (actionIndex) {
		case 21:
			 reportCustomError("expected hexadecimal code in braces after unicode escape") 

		case 22:
			 reportCustomError("invalid escape sequence in literal") 

		 default: break
		}
	}
	private func STRING_INTERPOLATION_OPEN_action(_ _localctx: RuleContext?,  _ actionIndex: Int) throws {
		switch (actionIndex) {
		case 23:
			 stringInterpolations.append(bracketDepth) 

		 default: break
		}
	}
	override open
	func sempred(_ _localctx: RuleContext?, _  ruleIndex: Int,_   predIndex: Int) throws -> Bool {
		switch (ruleIndex) {
		case 22:
			return try STRING_INTERPOLATION_CLOSE_sempred(_localctx?.castdown(RuleContext.self), predIndex)
		case 44:
			return try STRING_LITERAL_END_sempred(_localctx?.castdown(RuleContext.self), predIndex)
		case 45:
			return try MULTILINE_STRING_LITERAL_END_sempred(_localctx?.castdown(RuleContext.self), predIndex)
		case 46:
			return try STRING_CONTENT_NL_sempred(_localctx?.castdown(RuleContext.self), predIndex)
		case 47:
			return try STRING_CONTENT_VERBATIM_sempred(_localctx?.castdown(RuleContext.self), predIndex)
		default: return true
		}
	}
	private func STRING_INTERPOLATION_CLOSE_sempred(_ _localctx: RuleContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 0:return  canResumeInterpolation() 
		    default: return true
		}
	}
	private func STRING_LITERAL_END_sempred(_ _localctx: RuleContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 1:return !isMultilineStringLiteral
		    default: return true
		}
	}
	private func MULTILINE_STRING_LITERAL_END_sempred(_ _localctx: RuleContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 2:return isMultilineStringLiteral
		    default: return true
		}
	}
	private func STRING_CONTENT_NL_sempred(_ _localctx: RuleContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 3:return !isMultilineStringLiteral
		    default: return true
		}
	}
	private func STRING_CONTENT_VERBATIM_sempred(_ _localctx: RuleContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 4:return isMultilineStringLiteral
		    default: return true
		}
	}

	static let _serializedATN:[Int] = [
		4,0,43,672,6,-1,6,-1,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,
		6,7,6,2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,
		2,14,7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,
		2,21,7,21,2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,2,26,7,26,2,27,7,27,
		2,28,7,28,2,29,7,29,2,30,7,30,2,31,7,31,2,32,7,32,2,33,7,33,2,34,7,34,
		2,35,7,35,2,36,7,36,2,37,7,37,2,38,7,38,2,39,7,39,2,40,7,40,2,41,7,41,
		2,42,7,42,2,43,7,43,2,44,7,44,2,45,7,45,2,46,7,46,2,47,7,47,2,48,7,48,
		2,49,7,49,2,50,7,50,2,51,7,51,1,0,3,0,108,8,0,1,0,1,0,3,0,112,8,0,1,1,
		4,1,115,8,1,11,1,12,1,116,1,1,1,1,1,2,1,2,1,2,1,2,5,2,125,8,2,10,2,12,
		2,128,9,2,1,2,1,2,1,3,1,3,1,3,1,3,5,3,136,8,3,10,3,12,3,139,9,3,1,3,1,
		3,1,3,1,3,1,3,1,4,1,4,1,4,1,4,1,5,1,5,1,5,1,5,1,5,1,6,1,6,1,6,1,6,1,6,
		1,6,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,
		8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,9,1,9,1,9,1,9,1,9,1,9,1,9,
		1,9,1,9,1,9,1,10,1,10,1,10,1,10,1,10,1,10,1,10,1,10,1,10,1,10,1,10,1,11,
		1,11,1,11,1,11,1,11,1,11,1,11,1,11,1,11,1,11,1,11,1,11,1,11,1,11,1,12,
		1,12,1,12,1,12,1,12,1,12,1,12,1,12,1,12,1,12,1,12,1,12,1,12,3,12,236,8,
		12,1,13,3,13,239,8,13,1,13,1,13,1,13,1,13,1,13,3,13,246,8,13,1,13,3,13,
		249,8,13,1,13,1,13,1,13,3,13,254,8,13,1,13,1,13,1,13,1,13,1,13,1,13,1,
		13,3,13,263,8,13,1,13,1,13,1,13,1,13,1,13,3,13,270,8,13,1,13,1,13,1,13,
		1,13,1,13,3,13,277,8,13,1,13,1,13,3,13,281,8,13,1,14,3,14,284,8,14,1,14,
		1,14,1,14,1,14,1,14,5,14,291,8,14,10,14,12,14,294,9,14,1,14,1,14,1,14,
		1,14,1,14,5,14,301,8,14,10,14,12,14,304,9,14,1,14,1,14,1,14,1,14,1,14,
		1,14,1,14,1,14,1,14,3,14,315,8,14,1,14,5,14,318,8,14,10,14,12,14,321,9,
		14,1,14,1,14,4,14,325,8,14,11,14,12,14,326,1,14,1,14,1,14,1,14,1,14,1,
		14,3,14,335,8,14,1,14,5,14,338,8,14,10,14,12,14,341,9,14,1,14,1,14,4,14,
		345,8,14,11,14,12,14,346,1,14,1,14,1,14,1,14,1,14,1,14,3,14,355,8,14,1,
		14,1,14,4,14,359,8,14,11,14,12,14,360,1,14,1,14,1,14,1,14,1,14,4,14,368,
		8,14,11,14,12,14,369,1,14,1,14,3,14,374,8,14,1,15,1,15,5,15,378,8,15,10,
		15,12,15,381,9,15,1,16,1,16,1,16,1,16,1,16,1,17,1,17,5,17,390,8,17,10,
		17,12,17,393,9,17,1,18,1,18,1,18,1,18,1,18,1,18,1,18,1,18,1,18,3,18,404,
		8,18,1,19,1,19,1,19,1,19,1,20,1,20,1,20,1,20,1,20,1,21,1,21,1,21,1,21,
		1,21,1,21,3,21,421,8,21,1,21,1,21,1,21,1,21,1,21,1,21,3,21,429,8,21,1,
		21,1,21,1,21,1,21,1,22,1,22,1,22,1,22,1,22,1,22,1,23,1,23,1,23,1,23,5,
		23,445,8,23,10,23,12,23,448,9,23,1,23,3,23,451,8,23,1,23,1,23,1,24,4,24,
		456,8,24,11,24,12,24,457,1,24,1,24,5,24,462,8,24,10,24,12,24,465,9,24,
		1,24,3,24,468,8,24,1,24,4,24,471,8,24,11,24,12,24,472,1,24,3,24,476,8,
		24,1,24,1,24,1,25,1,25,1,25,1,25,1,25,1,25,1,25,3,25,487,8,25,1,25,1,25,
		3,25,491,8,25,1,25,5,25,494,8,25,10,25,12,25,497,9,25,1,25,1,25,3,25,501,
		8,25,1,25,3,25,504,8,25,1,25,1,25,1,25,3,25,509,8,25,1,25,1,25,1,26,4,
		26,514,8,26,11,26,12,26,515,1,26,1,26,1,26,1,26,1,26,5,26,523,8,26,10,
		26,12,26,526,9,26,1,26,1,26,1,27,1,27,5,27,532,8,27,10,27,12,27,535,9,
		27,1,27,1,27,1,27,5,27,540,8,27,10,27,12,27,543,9,27,1,27,1,27,3,27,547,
		8,27,1,28,1,28,1,29,1,29,3,29,553,8,29,1,30,1,30,4,30,557,8,30,11,30,12,
		30,558,1,31,1,31,1,32,1,32,1,33,1,33,1,34,1,34,1,35,1,35,1,36,1,36,1,37,
		1,37,1,37,1,38,1,38,1,38,1,39,1,39,1,40,1,40,5,40,583,8,40,10,40,12,40,
		586,9,40,1,40,1,40,4,40,590,8,40,11,40,12,40,591,3,40,594,8,40,1,41,1,
		41,1,42,1,42,3,42,600,8,42,1,43,1,43,3,43,604,8,43,1,44,1,44,1,44,1,44,
		1,44,1,45,1,45,3,45,613,8,45,1,45,3,45,616,8,45,1,45,1,45,1,45,1,45,1,
		45,1,45,1,45,1,45,1,46,3,46,627,8,46,1,46,1,46,3,46,631,8,46,1,46,1,46,
		1,46,1,46,1,46,1,46,1,47,1,47,1,47,4,47,642,8,47,11,47,12,47,643,1,48,
		1,48,1,48,1,49,1,49,1,49,1,49,4,49,653,8,49,11,49,12,49,654,1,49,1,49,
		1,50,1,50,1,50,1,50,1,50,3,50,664,8,50,1,51,1,51,1,51,1,51,1,51,1,51,1,
		51,3,137,446,495,0,52,2,1,4,2,6,3,8,4,10,5,12,6,14,7,16,8,18,9,20,10,22,
		11,24,12,26,13,28,14,30,15,32,0,34,0,36,0,38,16,40,17,42,18,44,19,46,20,
		48,21,50,22,52,23,54,24,56,25,58,0,60,0,62,26,64,27,66,28,68,29,70,30,
		72,31,74,32,76,33,78,34,80,35,82,36,84,0,86,0,88,0,90,37,92,38,94,0,96,
		39,98,40,100,41,102,42,104,43,2,0,1,20,3,0,9,9,11,12,32,32,1,0,10,10,2,
		0,69,69,101,101,2,0,43,43,45,45,2,0,80,80,112,112,1,0,48,49,2,0,48,49,
		95,95,1,0,48,55,2,0,48,55,95,95,1,0,48,57,2,0,48,57,95,95,3,0,48,57,65,
		70,97,102,4,0,48,57,65,70,95,95,97,102,2,0,10,10,13,13,49,0,65,90,95,95,
		97,122,168,168,170,170,173,173,175,175,178,181,183,186,188,190,192,214,
		216,246,248,767,880,5759,5761,6157,6159,7615,7680,8191,8203,8205,8234,
		8238,8255,8256,8276,8276,8288,8399,8448,8591,9312,9471,10102,10131,11264,
		11775,11904,12287,12292,12295,12321,12335,12337,55295,63744,64829,64832,
		64975,65008,65055,65072,65092,65095,65533,65536,131069,131072,196605,196608,
		262141,262144,327677,327680,393213,393216,458749,458752,524285,524288,
		589821,589824,655357,655360,720893,720896,786429,786432,851965,851968,
		917501,917504,983037,5,0,48,57,768,879,7616,7679,8400,8447,65056,65071,
		31,0,33,33,37,38,42,43,45,45,47,47,60,63,94,94,124,124,126,126,161,167,
		169,169,171,172,174,174,176,177,182,182,187,187,191,191,215,215,247,247,
		8214,8215,8224,8231,8240,8254,8257,8275,8277,8286,8592,9215,9472,10101,
		10132,11263,11776,11903,12289,12291,12296,12320,12336,12336,6,0,768,879,
		7616,7679,8400,8447,65024,65039,65056,65071,917760,917999,4,0,10,10,13,
		13,34,34,92,92,6,0,34,34,48,48,92,92,110,110,114,114,116,116,737,0,2,1,
		0,0,0,0,4,1,0,0,0,0,6,1,0,0,0,0,8,1,0,0,0,0,10,1,0,0,0,0,12,1,0,0,0,0,
		14,1,0,0,0,0,16,1,0,0,0,0,18,1,0,0,0,0,20,1,0,0,0,0,22,1,0,0,0,0,24,1,
		0,0,0,0,26,1,0,0,0,0,28,1,0,0,0,0,30,1,0,0,0,0,38,1,0,0,0,0,40,1,0,0,0,
		0,42,1,0,0,0,0,44,1,0,0,0,0,46,1,0,0,0,0,48,1,0,0,0,0,50,1,0,0,0,0,52,
		1,0,0,0,0,54,1,0,0,0,0,56,1,0,0,0,0,62,1,0,0,0,0,64,1,0,0,0,0,66,1,0,0,
		0,0,68,1,0,0,0,0,70,1,0,0,0,0,72,1,0,0,0,0,74,1,0,0,0,0,76,1,0,0,0,0,78,
		1,0,0,0,0,80,1,0,0,0,0,82,1,0,0,0,1,90,1,0,0,0,1,92,1,0,0,0,1,94,1,0,0,
		0,1,96,1,0,0,0,1,98,1,0,0,0,1,100,1,0,0,0,1,102,1,0,0,0,1,104,1,0,0,0,
		2,111,1,0,0,0,4,114,1,0,0,0,6,120,1,0,0,0,8,131,1,0,0,0,10,145,1,0,0,0,
		12,149,1,0,0,0,14,154,1,0,0,0,16,160,1,0,0,0,18,176,1,0,0,0,20,187,1,0,
		0,0,22,197,1,0,0,0,24,208,1,0,0,0,26,235,1,0,0,0,28,238,1,0,0,0,30,283,
		1,0,0,0,32,375,1,0,0,0,34,382,1,0,0,0,36,387,1,0,0,0,38,403,1,0,0,0,40,
		405,1,0,0,0,42,409,1,0,0,0,44,428,1,0,0,0,46,434,1,0,0,0,48,440,1,0,0,
		0,50,475,1,0,0,0,52,479,1,0,0,0,54,513,1,0,0,0,56,546,1,0,0,0,58,548,1,
		0,0,0,60,552,1,0,0,0,62,554,1,0,0,0,64,560,1,0,0,0,66,562,1,0,0,0,68,564,
		1,0,0,0,70,566,1,0,0,0,72,568,1,0,0,0,74,570,1,0,0,0,76,572,1,0,0,0,78,
		575,1,0,0,0,80,578,1,0,0,0,82,593,1,0,0,0,84,595,1,0,0,0,86,599,1,0,0,
		0,88,603,1,0,0,0,90,605,1,0,0,0,92,615,1,0,0,0,94,630,1,0,0,0,96,641,1,
		0,0,0,98,645,1,0,0,0,100,648,1,0,0,0,102,663,1,0,0,0,104,665,1,0,0,0,106,
		108,5,13,0,0,107,106,1,0,0,0,107,108,1,0,0,0,108,109,1,0,0,0,109,112,5,
		10,0,0,110,112,5,13,0,0,111,107,1,0,0,0,111,110,1,0,0,0,112,3,1,0,0,0,
		113,115,7,0,0,0,114,113,1,0,0,0,115,116,1,0,0,0,116,114,1,0,0,0,116,117,
		1,0,0,0,117,118,1,0,0,0,118,119,6,1,0,0,119,5,1,0,0,0,120,121,5,47,0,0,
		121,122,5,47,0,0,122,126,1,0,0,0,123,125,8,1,0,0,124,123,1,0,0,0,125,128,
		1,0,0,0,126,124,1,0,0,0,126,127,1,0,0,0,127,129,1,0,0,0,128,126,1,0,0,
		0,129,130,6,2,0,0,130,7,1,0,0,0,131,132,5,47,0,0,132,133,5,42,0,0,133,
		137,1,0,0,0,134,136,9,0,0,0,135,134,1,0,0,0,136,139,1,0,0,0,137,138,1,
		0,0,0,137,135,1,0,0,0,138,140,1,0,0,0,139,137,1,0,0,0,140,141,5,42,0,0,
		141,142,5,47,0,0,142,143,1,0,0,0,143,144,6,3,0,0,144,9,1,0,0,0,145,146,
		5,118,0,0,146,147,5,97,0,0,147,148,5,114,0,0,148,11,1,0,0,0,149,150,5,
		102,0,0,150,151,5,117,0,0,151,152,5,110,0,0,152,153,5,99,0,0,153,13,1,
		0,0,0,154,155,5,99,0,0,155,156,5,108,0,0,156,157,5,97,0,0,157,158,5,115,
		0,0,158,159,5,115,0,0,159,15,1,0,0,0,160,161,5,112,0,0,161,162,5,114,0,
		0,162,163,5,101,0,0,163,164,5,99,0,0,164,165,5,101,0,0,165,166,5,100,0,
		0,166,167,5,101,0,0,167,168,5,110,0,0,168,169,5,99,0,0,169,170,5,101,0,
		0,170,171,5,103,0,0,171,172,5,114,0,0,172,173,5,111,0,0,173,174,5,117,
		0,0,174,175,5,112,0,0,175,17,1,0,0,0,176,177,5,104,0,0,177,178,5,105,0,
		0,178,179,5,103,0,0,179,180,5,104,0,0,180,181,5,101,0,0,181,182,5,114,
		0,0,182,183,5,84,0,0,183,184,5,104,0,0,184,185,5,97,0,0,185,186,5,110,
		0,0,186,19,1,0,0,0,187,188,5,108,0,0,188,189,5,111,0,0,189,190,5,119,0,
		0,190,191,5,101,0,0,191,192,5,114,0,0,192,193,5,84,0,0,193,194,5,104,0,
		0,194,195,5,97,0,0,195,196,5,110,0,0,196,21,1,0,0,0,197,198,5,97,0,0,198,
		199,5,115,0,0,199,200,5,115,0,0,200,201,5,105,0,0,201,202,5,103,0,0,202,
		203,5,110,0,0,203,204,5,109,0,0,204,205,5,101,0,0,205,206,5,110,0,0,206,
		207,5,116,0,0,207,23,1,0,0,0,208,209,5,97,0,0,209,210,5,115,0,0,210,211,
		5,115,0,0,211,212,5,111,0,0,212,213,5,99,0,0,213,214,5,105,0,0,214,215,
		5,97,0,0,215,216,5,116,0,0,216,217,5,105,0,0,217,218,5,118,0,0,218,219,
		5,105,0,0,219,220,5,116,0,0,220,221,5,121,0,0,221,25,1,0,0,0,222,223,5,
		108,0,0,223,224,5,101,0,0,224,225,5,102,0,0,225,236,5,116,0,0,226,227,
		5,114,0,0,227,228,5,105,0,0,228,229,5,103,0,0,229,230,5,104,0,0,230,236,
		5,116,0,0,231,232,5,110,0,0,232,233,5,111,0,0,233,234,5,110,0,0,234,236,
		5,101,0,0,235,222,1,0,0,0,235,226,1,0,0,0,235,231,1,0,0,0,236,27,1,0,0,
		0,237,239,5,45,0,0,238,237,1,0,0,0,238,239,1,0,0,0,239,280,1,0,0,0,240,
		241,3,32,15,0,241,242,5,46,0,0,242,248,3,32,15,0,243,245,7,2,0,0,244,246,
		7,3,0,0,245,244,1,0,0,0,245,246,1,0,0,0,246,247,1,0,0,0,247,249,3,32,15,
		0,248,243,1,0,0,0,248,249,1,0,0,0,249,281,1,0,0,0,250,251,3,32,15,0,251,
		253,7,2,0,0,252,254,7,3,0,0,253,252,1,0,0,0,253,254,1,0,0,0,254,255,1,
		0,0,0,255,256,3,32,15,0,256,281,1,0,0,0,257,258,3,34,16,0,258,259,5,46,
		0,0,259,260,3,36,17,0,260,262,7,4,0,0,261,263,7,3,0,0,262,261,1,0,0,0,
		262,263,1,0,0,0,263,264,1,0,0,0,264,265,3,32,15,0,265,281,1,0,0,0,266,
		267,3,34,16,0,267,269,7,4,0,0,268,270,7,3,0,0,269,268,1,0,0,0,269,270,
		1,0,0,0,270,271,1,0,0,0,271,272,3,32,15,0,272,281,1,0,0,0,273,274,3,34,
		16,0,274,276,5,46,0,0,275,277,3,36,17,0,276,275,1,0,0,0,276,277,1,0,0,
		0,277,278,1,0,0,0,278,279,6,13,1,0,279,281,1,0,0,0,280,240,1,0,0,0,280,
		250,1,0,0,0,280,257,1,0,0,0,280,266,1,0,0,0,280,273,1,0,0,0,281,29,1,0,
		0,0,282,284,5,45,0,0,283,282,1,0,0,0,283,284,1,0,0,0,284,373,1,0,0,0,285,
		286,5,48,0,0,286,287,5,98,0,0,287,288,1,0,0,0,288,292,7,5,0,0,289,291,
		7,6,0,0,290,289,1,0,0,0,291,294,1,0,0,0,292,290,1,0,0,0,292,293,1,0,0,
		0,293,374,1,0,0,0,294,292,1,0,0,0,295,296,5,48,0,0,296,297,5,111,0,0,297,
		298,1,0,0,0,298,302,7,7,0,0,299,301,7,8,0,0,300,299,1,0,0,0,301,304,1,
		0,0,0,302,300,1,0,0,0,302,303,1,0,0,0,303,374,1,0,0,0,304,302,1,0,0,0,
		305,374,3,32,15,0,306,307,5,48,0,0,307,308,5,120,0,0,308,309,1,0,0,0,309,
		374,3,36,17,0,310,311,5,48,0,0,311,312,5,98,0,0,312,314,1,0,0,0,313,315,
		7,5,0,0,314,313,1,0,0,0,314,315,1,0,0,0,315,319,1,0,0,0,316,318,7,6,0,
		0,317,316,1,0,0,0,318,321,1,0,0,0,319,317,1,0,0,0,319,320,1,0,0,0,320,
		322,1,0,0,0,321,319,1,0,0,0,322,324,6,14,2,0,323,325,3,60,29,0,324,323,
		1,0,0,0,325,326,1,0,0,0,326,324,1,0,0,0,326,327,1,0,0,0,327,328,1,0,0,
		0,328,329,6,14,3,0,329,374,1,0,0,0,330,331,5,48,0,0,331,332,5,111,0,0,
		332,334,1,0,0,0,333,335,7,7,0,0,334,333,1,0,0,0,334,335,1,0,0,0,335,339,
		1,0,0,0,336,338,7,8,0,0,337,336,1,0,0,0,338,341,1,0,0,0,339,337,1,0,0,
		0,339,340,1,0,0,0,340,342,1,0,0,0,341,339,1,0,0,0,342,344,6,14,4,0,343,
		345,3,60,29,0,344,343,1,0,0,0,345,346,1,0,0,0,346,344,1,0,0,0,346,347,
		1,0,0,0,347,348,1,0,0,0,348,349,6,14,5,0,349,374,1,0,0,0,350,351,5,48,
		0,0,351,352,5,120,0,0,352,354,1,0,0,0,353,355,3,36,17,0,354,353,1,0,0,
		0,354,355,1,0,0,0,355,356,1,0,0,0,356,358,6,14,6,0,357,359,3,60,29,0,358,
		357,1,0,0,0,359,360,1,0,0,0,360,358,1,0,0,0,360,361,1,0,0,0,361,362,1,
		0,0,0,362,363,6,14,7,0,363,374,1,0,0,0,364,365,3,32,15,0,365,367,6,14,
		8,0,366,368,3,60,29,0,367,366,1,0,0,0,368,369,1,0,0,0,369,367,1,0,0,0,
		369,370,1,0,0,0,370,371,1,0,0,0,371,372,6,14,9,0,372,374,1,0,0,0,373,285,
		1,0,0,0,373,295,1,0,0,0,373,305,1,0,0,0,373,306,1,0,0,0,373,310,1,0,0,
		0,373,330,1,0,0,0,373,350,1,0,0,0,373,364,1,0,0,0,374,31,1,0,0,0,375,379,
		7,9,0,0,376,378,7,10,0,0,377,376,1,0,0,0,378,381,1,0,0,0,379,377,1,0,0,
		0,379,380,1,0,0,0,380,33,1,0,0,0,381,379,1,0,0,0,382,383,5,48,0,0,383,
		384,5,120,0,0,384,385,1,0,0,0,385,386,3,36,17,0,386,35,1,0,0,0,387,391,
		7,11,0,0,388,390,7,12,0,0,389,388,1,0,0,0,390,393,1,0,0,0,391,389,1,0,
		0,0,391,392,1,0,0,0,392,37,1,0,0,0,393,391,1,0,0,0,394,395,5,116,0,0,395,
		396,5,114,0,0,396,397,5,117,0,0,397,404,5,101,0,0,398,399,5,102,0,0,399,
		400,5,97,0,0,400,401,5,108,0,0,401,402,5,115,0,0,402,404,5,101,0,0,403,
		394,1,0,0,0,403,398,1,0,0,0,404,39,1,0,0,0,405,406,5,110,0,0,406,407,5,
		105,0,0,407,408,5,108,0,0,408,41,1,0,0,0,409,410,5,34,0,0,410,411,6,20,
		10,0,411,412,1,0,0,0,412,413,6,20,11,0,413,43,1,0,0,0,414,415,5,34,0,0,
		415,416,5,34,0,0,416,417,5,34,0,0,417,418,5,34,0,0,418,420,1,0,0,0,419,
		421,3,4,1,0,420,419,1,0,0,0,420,421,1,0,0,0,421,422,1,0,0,0,422,429,3,
		2,0,0,423,424,5,34,0,0,424,425,5,34,0,0,425,426,5,34,0,0,426,427,1,0,0,
		0,427,429,6,21,12,0,428,414,1,0,0,0,428,423,1,0,0,0,429,430,1,0,0,0,430,
		431,6,21,13,0,431,432,1,0,0,0,432,433,6,21,11,0,433,45,1,0,0,0,434,435,
		5,125,0,0,435,436,4,22,0,0,436,437,6,22,14,0,437,438,1,0,0,0,438,439,6,
		22,15,0,439,47,1,0,0,0,440,450,5,35,0,0,441,451,3,48,23,0,442,446,5,34,
		0,0,443,445,8,13,0,0,444,443,1,0,0,0,445,448,1,0,0,0,446,447,1,0,0,0,446,
		444,1,0,0,0,447,449,1,0,0,0,448,446,1,0,0,0,449,451,5,34,0,0,450,441,1,
		0,0,0,450,442,1,0,0,0,451,452,1,0,0,0,452,453,5,35,0,0,453,49,1,0,0,0,
		454,456,5,35,0,0,455,454,1,0,0,0,456,457,1,0,0,0,457,455,1,0,0,0,457,458,
		1,0,0,0,458,459,1,0,0,0,459,463,5,34,0,0,460,462,8,13,0,0,461,460,1,0,
		0,0,462,465,1,0,0,0,463,461,1,0,0,0,463,464,1,0,0,0,464,467,1,0,0,0,465,
		463,1,0,0,0,466,468,5,34,0,0,467,466,1,0,0,0,467,468,1,0,0,0,468,476,1,
		0,0,0,469,471,5,35,0,0,470,469,1,0,0,0,471,472,1,0,0,0,472,470,1,0,0,0,
		472,473,1,0,0,0,473,474,1,0,0,0,474,476,3,48,23,0,475,455,1,0,0,0,475,
		470,1,0,0,0,476,477,1,0,0,0,477,478,6,24,16,0,478,51,1,0,0,0,479,508,5,
		35,0,0,480,509,3,52,25,0,481,482,5,34,0,0,482,483,5,34,0,0,483,484,5,34,
		0,0,484,490,1,0,0,0,485,487,3,4,1,0,486,485,1,0,0,0,486,487,1,0,0,0,487,
		488,1,0,0,0,488,491,3,2,0,0,489,491,6,25,17,0,490,486,1,0,0,0,490,489,
		1,0,0,0,491,495,1,0,0,0,492,494,9,0,0,0,493,492,1,0,0,0,494,497,1,0,0,
		0,495,496,1,0,0,0,495,493,1,0,0,0,496,503,1,0,0,0,497,495,1,0,0,0,498,
		500,3,2,0,0,499,501,3,4,1,0,500,499,1,0,0,0,500,501,1,0,0,0,501,504,1,
		0,0,0,502,504,6,25,18,0,503,498,1,0,0,0,503,502,1,0,0,0,504,505,1,0,0,
		0,505,506,5,34,0,0,506,507,5,34,0,0,507,509,5,34,0,0,508,480,1,0,0,0,508,
		481,1,0,0,0,509,510,1,0,0,0,510,511,5,35,0,0,511,53,1,0,0,0,512,514,5,
		35,0,0,513,512,1,0,0,0,514,515,1,0,0,0,515,513,1,0,0,0,515,516,1,0,0,0,
		516,517,1,0,0,0,517,518,5,34,0,0,518,519,5,34,0,0,519,520,5,34,0,0,520,
		524,1,0,0,0,521,523,9,0,0,0,522,521,1,0,0,0,523,526,1,0,0,0,524,522,1,
		0,0,0,524,525,1,0,0,0,525,527,1,0,0,0,526,524,1,0,0,0,527,528,6,26,19,
		0,528,55,1,0,0,0,529,533,3,58,28,0,530,532,3,60,29,0,531,530,1,0,0,0,532,
		535,1,0,0,0,533,531,1,0,0,0,533,534,1,0,0,0,534,547,1,0,0,0,535,533,1,
		0,0,0,536,537,5,96,0,0,537,541,3,58,28,0,538,540,3,60,29,0,539,538,1,0,
		0,0,540,543,1,0,0,0,541,539,1,0,0,0,541,542,1,0,0,0,542,544,1,0,0,0,543,
		541,1,0,0,0,544,545,5,96,0,0,545,547,1,0,0,0,546,529,1,0,0,0,546,536,1,
		0,0,0,547,57,1,0,0,0,548,549,7,14,0,0,549,59,1,0,0,0,550,553,7,15,0,0,
		551,553,3,58,28,0,552,550,1,0,0,0,552,551,1,0,0,0,553,61,1,0,0,0,554,556,
		5,36,0,0,555,557,7,9,0,0,556,555,1,0,0,0,557,558,1,0,0,0,558,556,1,0,0,
		0,558,559,1,0,0,0,559,63,1,0,0,0,560,561,5,40,0,0,561,65,1,0,0,0,562,563,
		5,41,0,0,563,67,1,0,0,0,564,565,5,46,0,0,565,69,1,0,0,0,566,567,5,44,0,
		0,567,71,1,0,0,0,568,569,5,58,0,0,569,73,1,0,0,0,570,571,5,59,0,0,571,
		75,1,0,0,0,572,573,5,123,0,0,573,574,6,37,20,0,574,77,1,0,0,0,575,576,
		5,125,0,0,576,577,6,38,21,0,577,79,1,0,0,0,578,579,5,45,0,0,579,81,1,0,
		0,0,580,584,3,84,41,0,581,583,3,86,42,0,582,581,1,0,0,0,583,586,1,0,0,
		0,584,582,1,0,0,0,584,585,1,0,0,0,585,594,1,0,0,0,586,584,1,0,0,0,587,
		589,5,46,0,0,588,590,3,88,43,0,589,588,1,0,0,0,590,591,1,0,0,0,591,589,
		1,0,0,0,591,592,1,0,0,0,592,594,1,0,0,0,593,580,1,0,0,0,593,587,1,0,0,
		0,594,83,1,0,0,0,595,596,7,16,0,0,596,85,1,0,0,0,597,600,3,84,41,0,598,
		600,7,17,0,0,599,597,1,0,0,0,599,598,1,0,0,0,600,87,1,0,0,0,601,604,5,
		46,0,0,602,604,3,86,42,0,603,601,1,0,0,0,603,602,1,0,0,0,604,89,1,0,0,
		0,605,606,5,34,0,0,606,607,4,44,1,0,607,608,1,0,0,0,608,609,6,44,15,0,
		609,91,1,0,0,0,610,612,3,2,0,0,611,613,3,4,1,0,612,611,1,0,0,0,612,613,
		1,0,0,0,613,616,1,0,0,0,614,616,6,45,22,0,615,610,1,0,0,0,615,614,1,0,
		0,0,616,617,1,0,0,0,617,618,5,34,0,0,618,619,5,34,0,0,619,620,5,34,0,0,
		620,621,1,0,0,0,621,622,4,45,2,0,622,623,1,0,0,0,623,624,6,45,15,0,624,
		93,1,0,0,0,625,627,5,13,0,0,626,625,1,0,0,0,626,627,1,0,0,0,627,628,1,
		0,0,0,628,631,5,10,0,0,629,631,5,13,0,0,630,626,1,0,0,0,630,629,1,0,0,
		0,631,632,1,0,0,0,632,633,4,46,3,0,633,634,6,46,23,0,634,635,1,0,0,0,635,
		636,6,46,24,0,636,637,6,46,15,0,637,95,1,0,0,0,638,642,8,18,0,0,639,640,
		7,13,0,0,640,642,4,47,4,0,641,638,1,0,0,0,641,639,1,0,0,0,642,643,1,0,
		0,0,643,641,1,0,0,0,643,644,1,0,0,0,644,97,1,0,0,0,645,646,5,92,0,0,646,
		647,7,19,0,0,647,99,1,0,0,0,648,649,5,92,0,0,649,650,5,117,0,0,650,652,
		5,123,0,0,651,653,7,11,0,0,652,651,1,0,0,0,653,654,1,0,0,0,654,652,1,0,
		0,0,654,655,1,0,0,0,655,656,1,0,0,0,656,657,5,125,0,0,657,101,1,0,0,0,
		658,659,5,92,0,0,659,660,5,117,0,0,660,664,6,50,25,0,661,662,5,92,0,0,
		662,664,6,50,26,0,663,658,1,0,0,0,663,661,1,0,0,0,664,103,1,0,0,0,665,
		666,5,92,0,0,666,667,5,123,0,0,667,668,1,0,0,0,668,669,6,51,27,0,669,670,
		1,0,0,0,670,671,6,51,28,0,671,105,1,0,0,0,67,0,1,107,111,116,126,137,235,
		238,245,248,253,262,269,276,280,283,292,302,314,319,326,334,339,346,354,
		360,369,373,379,391,403,420,428,446,450,457,463,467,472,475,486,490,495,
		500,503,508,515,524,533,541,546,552,558,584,591,593,599,603,612,615,626,
		630,641,643,654,663,29,6,0,0,1,13,0,1,14,1,1,14,2,1,14,3,1,14,4,1,14,5,
		1,14,6,1,14,7,1,14,8,1,20,9,5,1,0,1,21,10,1,21,11,1,22,12,4,0,0,1,24,13,
		1,25,14,1,25,15,1,26,16,1,37,17,1,38,18,1,45,19,1,46,20,7,1,0,1,50,21,
		1,50,22,1,51,23,5,0,0
	]

	internal
	static let _ATN: ATN = try! ATNDeserializer().deserialize(_serializedATN)
}