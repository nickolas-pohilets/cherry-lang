// Generated from java-escape by ANTLR 4.11.1
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
            INTEGER_LITERAL=14, FLOATING_POINT_LITERAL=15, BOOLEAN_LITERAL=16, 
            NIL_LITERAL=17, STRING_LITERAL=18, MULTILINE_STRING_LITERAL=19, 
            STRING_INTERPOLATION_START=20, STRING_INTERPOLATION_CONTINUE=21, 
            STRING_INTERPOLATION_FINISH=22, MULTILINE_STRING_INTERPOLATION_START=23, 
            MULTILINE_STRING_INTERPOLATION_CONTINUE=24, MULTILINE_STRING_INTERPOLATION_FINISH=25, 
            RAW_STRING_LITERAL=26, RAW_MULTILINE_STRING_LITERAL=27, IDENTIFIER=28, 
            IMPLICIT_PARAMETER_NAME=29, LPAREN=30, RPAREN=31, DOT=32, COMA=33, 
            COLON=34, SEMICOLON=35, LBRACE=36, RBRACE=37, MINUS=38, OP=39

	internal
	static let channelNames: [String] = [
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	]

	internal
	static let modeNames: [String] = [
		"DEFAULT_MODE"
	]

	internal
	static let ruleNames: [String] = [
		"NL", "WS", "COMMENT", "MULTILINE_COMMENT", "KW_VAR", "KW_FUNC", "KW_CLASS", 
		"KW_PRECEDENCE_GROUP", "CKW_HIGHER_THAN", "CKW_LOWER_THAN", "CKW_ASSIGNMENT", 
		"CWK_ASSOCIATIVITY", "CWK_ASSOCIATIVITY_VALUE", "INTEGER_LITERAL", "DECIMAL_LITERAL", 
		"HEXADECIMAL_LITERAL", "HEXADECIMAL_DIGITS", "FLOATING_POINT_LITERAL", 
		"BOOLEAN_LITERAL", "NIL_LITERAL", "STRING_LITERAL", "STRING_CONTENT", 
		"ESC", "UNICODE", "HEX", "MULTILINE_STRING_LITERAL", "MULTILINE_STRING_CONTENT", 
		"STRING_INTERPOLATION_START", "STRING_INTERPOLATION_CONTINUE", "STRING_INTERPOLATION_FINISH", 
		"MULTILINE_STRING_INTERPOLATION_START", "MULTILINE_STRING_INTERPOLATION_CONTINUE", 
		"MULTILINE_STRING_INTERPOLATION_FINISH", "RAW_STRING_LITERAL", "RAW_MULTILINE_STRING_LITERAL", 
		"IDENTIFIER", "IDENTIFIER_HEAD", "IDENTIFIER_CHARACTER", "IMPLICIT_PARAMETER_NAME", 
		"LPAREN", "RPAREN", "DOT", "COMA", "COLON", "SEMICOLON", "LBRACE", "RBRACE", 
		"MINUS", "OP", "OP_HEAD", "OP_CHARACTER", "DOT_OP_CHARACTER"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, nil, nil, nil, nil, "'var'", "'func'", "'class'", "'precedencegroup'", 
		"'higherThan'", "'lowerThan'", "'assignment'", "'associativity'", nil, 
		nil, nil, nil, "'nil'", nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 
		nil, nil, "'('", "')'", "'.'", "','", "':'", "';'", "'{'", "'}'", "'-'"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, "NL", "WS", "COMMENT", "MULTILINE_COMMENT", "KW_VAR", "KW_FUNC", 
		"KW_CLASS", "KW_PRECEDENCE_GROUP", "CKW_HIGHER_THAN", "CKW_LOWER_THAN", 
		"CKW_ASSIGNMENT", "CWK_ASSOCIATIVITY", "CWK_ASSOCIATIVITY_VALUE", "INTEGER_LITERAL", 
		"FLOATING_POINT_LITERAL", "BOOLEAN_LITERAL", "NIL_LITERAL", "STRING_LITERAL", 
		"MULTILINE_STRING_LITERAL", "STRING_INTERPOLATION_START", "STRING_INTERPOLATION_CONTINUE", 
		"STRING_INTERPOLATION_FINISH", "MULTILINE_STRING_INTERPOLATION_START", 
		"MULTILINE_STRING_INTERPOLATION_CONTINUE", "MULTILINE_STRING_INTERPOLATION_FINISH", 
		"RAW_STRING_LITERAL", "RAW_MULTILINE_STRING_LITERAL", "IDENTIFIER", "IMPLICIT_PARAMETER_NAME", 
		"LPAREN", "RPAREN", "DOT", "COMA", "COLON", "SEMICOLON", "LBRACE", "RBRACE", 
		"MINUS", "OP"
	]
	internal
	static let VOCABULARY = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)


	    private var stringInterpolations: [Int] = []
	    private var bracketDepth: Int = 0
	    
	    private func canResumeInterpolation() -> Bool {
	        stringInterpolations.last == bracketDepth
	    }
	    
	    private enum ErrorPosition {
	        case tokenStart
	        case current
	    }
	    
	    private func reportCustomError(_ msg: String, position: ErrorPosition = .current) {
	        let charPositionInLine: Int
	        let line: Int
	        switch position {
	        case .tokenStart:
	            charPositionInLine = _tokenStartCharPositionInLine
	            line = _tokenStartLine
	        case .current:
	            charPositionInLine = getInterpreter().getCharPositionInLine()
	            line = getInterpreter().getLine()
	        }
	        
	        let listener = getErrorListenerDispatch()
	        listener.syntaxError(self, nil, line, charPositionInLine, msg, nil)
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
		case 17:
			FLOATING_POINT_LITERAL_action((_localctx as RuleContext?), actionIndex)

		case 20:
			STRING_LITERAL_action((_localctx as RuleContext?), actionIndex)

		case 22:
			ESC_action((_localctx as RuleContext?), actionIndex)

		case 23:
			UNICODE_action((_localctx as RuleContext?), actionIndex)

		case 27:
			STRING_INTERPOLATION_START_action((_localctx as RuleContext?), actionIndex)

		case 29:
			STRING_INTERPOLATION_FINISH_action((_localctx as RuleContext?), actionIndex)

		case 30:
			MULTILINE_STRING_INTERPOLATION_START_action((_localctx as RuleContext?), actionIndex)

		case 32:
			MULTILINE_STRING_INTERPOLATION_FINISH_action((_localctx as RuleContext?), actionIndex)

		case 45:
			LBRACE_action((_localctx as RuleContext?), actionIndex)

		case 46:
			RBRACE_action((_localctx as RuleContext?), actionIndex)

		default: break
		}
	}
	private func FLOATING_POINT_LITERAL_action(_ _localctx: RuleContext?,  _ actionIndex: Int) {
		switch (actionIndex) {
		case 0:
			 reportCustomError("hexadecimal floating point literal must end with an exponent") 

		 default: break
		}
	}
	private func STRING_LITERAL_action(_ _localctx: RuleContext?,  _ actionIndex: Int) {
		switch (actionIndex) {
		case 1:
			 reportCustomError("unterminated string literal", position: .tokenStart) 

		 default: break
		}
	}
	private func ESC_action(_ _localctx: RuleContext?,  _ actionIndex: Int) {
		switch (actionIndex) {
		case 2:
			 reportCustomError("invalid escape sequence in literal") 

		 default: break
		}
	}
	private func UNICODE_action(_ _localctx: RuleContext?,  _ actionIndex: Int) {
		switch (actionIndex) {
		case 3:
			 reportCustomError("expected hexadecimal code in braces after unicode escape") 

		 default: break
		}
	}
	private func STRING_INTERPOLATION_START_action(_ _localctx: RuleContext?,  _ actionIndex: Int) {
		switch (actionIndex) {
		case 4:
			 stringInterpolations.append(bracketDepth) 

		 default: break
		}
	}
	private func STRING_INTERPOLATION_FINISH_action(_ _localctx: RuleContext?,  _ actionIndex: Int) {
		switch (actionIndex) {
		case 5:
			 stringInterpolations.removeLast() 

		 default: break
		}
	}
	private func MULTILINE_STRING_INTERPOLATION_START_action(_ _localctx: RuleContext?,  _ actionIndex: Int) {
		switch (actionIndex) {
		case 6:
			 stringInterpolations.append(bracketDepth) 

		 default: break
		}
	}
	private func MULTILINE_STRING_INTERPOLATION_FINISH_action(_ _localctx: RuleContext?,  _ actionIndex: Int) {
		switch (actionIndex) {
		case 7:
			 stringInterpolations.removeLast() 

		 default: break
		}
	}
	private func LBRACE_action(_ _localctx: RuleContext?,  _ actionIndex: Int) {
		switch (actionIndex) {
		case 8:
			 bracketDepth += 1 

		 default: break
		}
	}
	private func RBRACE_action(_ _localctx: RuleContext?,  _ actionIndex: Int) {
		switch (actionIndex) {
		case 9:
			 bracketDepth -= 1 

		 default: break
		}
	}
	override open
	func sempred(_ _localctx: RuleContext?, _  ruleIndex: Int,_   predIndex: Int) throws -> Bool {
		switch (ruleIndex) {
		case 28:
			return try STRING_INTERPOLATION_CONTINUE_sempred(_localctx?.castdown(RuleContext.self), predIndex)
		case 29:
			return try STRING_INTERPOLATION_FINISH_sempred(_localctx?.castdown(RuleContext.self), predIndex)
		case 31:
			return try MULTILINE_STRING_INTERPOLATION_CONTINUE_sempred(_localctx?.castdown(RuleContext.self), predIndex)
		case 32:
			return try MULTILINE_STRING_INTERPOLATION_FINISH_sempred(_localctx?.castdown(RuleContext.self), predIndex)
		default: return true
		}
	}
	private func STRING_INTERPOLATION_CONTINUE_sempred(_ _localctx: RuleContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 0:return  canResumeInterpolation() 
		    default: return true
		}
	}
	private func STRING_INTERPOLATION_FINISH_sempred(_ _localctx: RuleContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 1:return  canResumeInterpolation() 
		    default: return true
		}
	}
	private func MULTILINE_STRING_INTERPOLATION_CONTINUE_sempred(_ _localctx: RuleContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 2:return  canResumeInterpolation() 
		    default: return true
		}
	}
	private func MULTILINE_STRING_INTERPOLATION_FINISH_sempred(_ _localctx: RuleContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 3:return  canResumeInterpolation() 
		    default: return true
		}
	}

	static let _serializedATN:[Int] = [
		4,0,39,555,6,-1,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,
		6,2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,14,
		7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,2,21,
		7,21,2,22,7,22,2,23,7,23,2,24,7,24,2,25,7,25,2,26,7,26,2,27,7,27,2,28,
		7,28,2,29,7,29,2,30,7,30,2,31,7,31,2,32,7,32,2,33,7,33,2,34,7,34,2,35,
		7,35,2,36,7,36,2,37,7,37,2,38,7,38,2,39,7,39,2,40,7,40,2,41,7,41,2,42,
		7,42,2,43,7,43,2,44,7,44,2,45,7,45,2,46,7,46,2,47,7,47,2,48,7,48,2,49,
		7,49,2,50,7,50,2,51,7,51,1,0,3,0,107,8,0,1,0,1,0,3,0,111,8,0,1,1,4,1,114,
		8,1,11,1,12,1,115,1,1,1,1,1,2,1,2,1,2,1,2,5,2,124,8,2,10,2,12,2,127,9,
		2,1,2,1,2,1,3,1,3,1,3,1,3,5,3,135,8,3,10,3,12,3,138,9,3,1,3,1,3,1,3,1,
		3,1,3,1,4,1,4,1,4,1,4,1,5,1,5,1,5,1,5,1,5,1,6,1,6,1,6,1,6,1,6,1,6,1,7,
		1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,7,1,8,1,8,1,
		8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,8,1,9,1,9,1,9,1,9,1,9,1,9,1,9,1,9,1,9,
		1,9,1,10,1,10,1,10,1,10,1,10,1,10,1,10,1,10,1,10,1,10,1,10,1,11,1,11,1,
		11,1,11,1,11,1,11,1,11,1,11,1,11,1,11,1,11,1,11,1,11,1,11,1,12,1,12,1,
		12,1,12,1,12,1,12,1,12,1,12,1,12,1,12,1,12,1,12,1,12,3,12,235,8,12,1,13,
		3,13,238,8,13,1,13,1,13,1,13,1,13,1,13,5,13,245,8,13,10,13,12,13,248,9,
		13,1,13,1,13,1,13,1,13,1,13,5,13,255,8,13,10,13,12,13,258,9,13,1,13,1,
		13,3,13,262,8,13,1,14,1,14,5,14,266,8,14,10,14,12,14,269,9,14,1,15,1,15,
		1,15,1,15,1,15,1,16,1,16,5,16,278,8,16,10,16,12,16,281,9,16,1,17,3,17,
		284,8,17,1,17,1,17,1,17,3,17,289,8,17,1,17,1,17,3,17,293,8,17,1,17,3,17,
		296,8,17,1,17,1,17,1,17,3,17,301,8,17,1,17,1,17,3,17,305,8,17,1,17,1,17,
		1,17,1,17,1,17,1,17,3,17,313,8,17,3,17,315,8,17,1,17,1,17,3,17,319,8,17,
		1,18,1,18,1,18,1,18,1,18,1,18,1,18,1,18,1,18,3,18,330,8,18,1,19,1,19,1,
		19,1,19,1,20,1,20,1,20,1,20,3,20,340,8,20,1,21,1,21,5,21,344,8,21,10,21,
		12,21,347,9,21,1,22,1,22,1,22,1,22,1,22,3,22,354,8,22,1,23,1,23,1,23,4,
		23,359,8,23,11,23,12,23,360,1,23,1,23,1,23,3,23,366,8,23,1,24,1,24,1,25,
		1,25,1,25,1,25,1,25,3,25,375,8,25,1,25,1,25,1,25,1,25,3,25,381,8,25,1,
		25,1,25,1,25,1,25,1,26,1,26,5,26,389,8,26,10,26,12,26,392,9,26,1,27,1,
		27,1,27,1,27,1,27,1,27,1,27,1,28,1,28,1,28,1,28,1,28,1,28,1,29,1,29,1,
		29,1,29,1,29,1,29,1,30,1,30,1,30,1,30,1,30,1,30,1,30,1,30,1,30,1,30,1,
		31,1,31,1,31,1,31,1,31,1,31,1,32,1,32,1,32,1,32,1,32,1,32,1,32,1,32,1,
		32,1,33,1,33,1,33,1,33,5,33,442,8,33,10,33,12,33,445,9,33,1,33,3,33,448,
		8,33,1,33,1,33,1,34,1,34,1,34,1,34,1,34,1,34,1,34,3,34,459,8,34,1,34,1,
		34,5,34,463,8,34,10,34,12,34,466,9,34,1,34,1,34,3,34,470,8,34,1,34,1,34,
		1,34,1,34,3,34,476,8,34,1,34,1,34,1,35,1,35,5,35,482,8,35,10,35,12,35,
		485,9,35,1,35,1,35,1,35,5,35,490,8,35,10,35,12,35,493,9,35,1,35,1,35,3,
		35,497,8,35,1,36,1,36,1,37,1,37,3,37,503,8,37,1,38,1,38,4,38,507,8,38,
		11,38,12,38,508,1,39,1,39,1,40,1,40,1,41,1,41,1,42,1,42,1,43,1,43,1,44,
		1,44,1,45,1,45,1,45,1,46,1,46,1,46,1,47,1,47,1,48,1,48,5,48,533,8,48,10,
		48,12,48,536,9,48,1,48,1,48,4,48,540,8,48,11,48,12,48,541,3,48,544,8,48,
		1,49,1,49,1,50,1,50,3,50,550,8,50,1,51,1,51,3,51,554,8,51,4,136,390,443,
		464,0,52,1,1,3,2,5,3,7,4,9,5,11,6,13,7,15,8,17,9,19,10,21,11,23,12,25,
		13,27,14,29,0,31,0,33,0,35,15,37,16,39,17,41,18,43,0,45,0,47,0,49,0,51,
		19,53,0,55,20,57,21,59,22,61,23,63,24,65,25,67,26,69,27,71,28,73,0,75,
		0,77,29,79,30,81,31,83,32,85,33,87,34,89,35,91,36,93,37,95,38,97,39,99,
		0,101,0,103,0,1,0,22,3,0,9,9,11,12,32,32,1,0,10,10,1,0,48,49,2,0,48,49,
		95,95,1,0,48,55,2,0,48,55,95,95,1,0,48,57,2,0,48,57,95,95,3,0,48,57,65,
		70,97,102,4,0,48,57,65,70,95,95,97,102,2,0,69,69,101,101,2,0,43,43,45,
		45,2,0,80,80,112,112,4,0,10,10,13,13,34,34,92,92,8,0,34,34,48,48,92,92,
		98,98,102,102,110,110,114,114,116,116,1,0,123,123,1,0,92,92,2,0,10,10,
		13,13,49,0,65,90,95,95,97,122,168,168,170,170,173,173,175,175,178,181,
		183,186,188,190,192,214,216,246,248,767,880,5759,5761,6157,6159,7615,7680,
		8191,8203,8205,8234,8238,8255,8256,8276,8276,8288,8399,8448,8591,9312,
		9471,10102,10131,11264,11775,11904,12287,12292,12295,12321,12335,12337,
		55295,63744,64829,64832,64975,65008,65055,65072,65092,65095,65533,65536,
		131069,131072,196605,196608,262141,262144,327677,327680,393213,393216,
		458749,458752,524285,524288,589821,589824,655357,655360,720893,720896,
		786429,786432,851965,851968,917501,917504,983037,5,0,48,57,768,879,7616,
		7679,8400,8447,65056,65071,31,0,33,33,37,38,42,43,45,45,47,47,60,63,94,
		94,124,124,126,126,161,167,169,169,171,172,174,174,176,177,182,182,187,
		187,191,191,215,215,247,247,8214,8215,8224,8231,8240,8254,8257,8275,8277,
		8286,8592,9215,9472,10101,10132,11263,11776,11903,12289,12291,12296,12320,
		12336,12336,6,0,768,879,7616,7679,8400,8447,65024,65039,65056,65071,917760,
		917999,594,0,1,1,0,0,0,0,3,1,0,0,0,0,5,1,0,0,0,0,7,1,0,0,0,0,9,1,0,0,0,
		0,11,1,0,0,0,0,13,1,0,0,0,0,15,1,0,0,0,0,17,1,0,0,0,0,19,1,0,0,0,0,21,
		1,0,0,0,0,23,1,0,0,0,0,25,1,0,0,0,0,27,1,0,0,0,0,35,1,0,0,0,0,37,1,0,0,
		0,0,39,1,0,0,0,0,41,1,0,0,0,0,51,1,0,0,0,0,55,1,0,0,0,0,57,1,0,0,0,0,59,
		1,0,0,0,0,61,1,0,0,0,0,63,1,0,0,0,0,65,1,0,0,0,0,67,1,0,0,0,0,69,1,0,0,
		0,0,71,1,0,0,0,0,77,1,0,0,0,0,79,1,0,0,0,0,81,1,0,0,0,0,83,1,0,0,0,0,85,
		1,0,0,0,0,87,1,0,0,0,0,89,1,0,0,0,0,91,1,0,0,0,0,93,1,0,0,0,0,95,1,0,0,
		0,0,97,1,0,0,0,1,110,1,0,0,0,3,113,1,0,0,0,5,119,1,0,0,0,7,130,1,0,0,0,
		9,144,1,0,0,0,11,148,1,0,0,0,13,153,1,0,0,0,15,159,1,0,0,0,17,175,1,0,
		0,0,19,186,1,0,0,0,21,196,1,0,0,0,23,207,1,0,0,0,25,234,1,0,0,0,27,237,
		1,0,0,0,29,263,1,0,0,0,31,270,1,0,0,0,33,275,1,0,0,0,35,283,1,0,0,0,37,
		329,1,0,0,0,39,331,1,0,0,0,41,335,1,0,0,0,43,345,1,0,0,0,45,348,1,0,0,
		0,47,355,1,0,0,0,49,367,1,0,0,0,51,369,1,0,0,0,53,390,1,0,0,0,55,393,1,
		0,0,0,57,400,1,0,0,0,59,406,1,0,0,0,61,412,1,0,0,0,63,422,1,0,0,0,65,428,
		1,0,0,0,67,437,1,0,0,0,69,451,1,0,0,0,71,496,1,0,0,0,73,498,1,0,0,0,75,
		502,1,0,0,0,77,504,1,0,0,0,79,510,1,0,0,0,81,512,1,0,0,0,83,514,1,0,0,
		0,85,516,1,0,0,0,87,518,1,0,0,0,89,520,1,0,0,0,91,522,1,0,0,0,93,525,1,
		0,0,0,95,528,1,0,0,0,97,543,1,0,0,0,99,545,1,0,0,0,101,549,1,0,0,0,103,
		553,1,0,0,0,105,107,5,13,0,0,106,105,1,0,0,0,106,107,1,0,0,0,107,108,1,
		0,0,0,108,111,5,10,0,0,109,111,5,13,0,0,110,106,1,0,0,0,110,109,1,0,0,
		0,111,2,1,0,0,0,112,114,7,0,0,0,113,112,1,0,0,0,114,115,1,0,0,0,115,113,
		1,0,0,0,115,116,1,0,0,0,116,117,1,0,0,0,117,118,6,1,0,0,118,4,1,0,0,0,
		119,120,5,47,0,0,120,121,5,47,0,0,121,125,1,0,0,0,122,124,8,1,0,0,123,
		122,1,0,0,0,124,127,1,0,0,0,125,123,1,0,0,0,125,126,1,0,0,0,126,128,1,
		0,0,0,127,125,1,0,0,0,128,129,6,2,0,0,129,6,1,0,0,0,130,131,5,47,0,0,131,
		132,5,42,0,0,132,136,1,0,0,0,133,135,9,0,0,0,134,133,1,0,0,0,135,138,1,
		0,0,0,136,137,1,0,0,0,136,134,1,0,0,0,137,139,1,0,0,0,138,136,1,0,0,0,
		139,140,5,42,0,0,140,141,5,47,0,0,141,142,1,0,0,0,142,143,6,3,0,0,143,
		8,1,0,0,0,144,145,5,118,0,0,145,146,5,97,0,0,146,147,5,114,0,0,147,10,
		1,0,0,0,148,149,5,102,0,0,149,150,5,117,0,0,150,151,5,110,0,0,151,152,
		5,99,0,0,152,12,1,0,0,0,153,154,5,99,0,0,154,155,5,108,0,0,155,156,5,97,
		0,0,156,157,5,115,0,0,157,158,5,115,0,0,158,14,1,0,0,0,159,160,5,112,0,
		0,160,161,5,114,0,0,161,162,5,101,0,0,162,163,5,99,0,0,163,164,5,101,0,
		0,164,165,5,100,0,0,165,166,5,101,0,0,166,167,5,110,0,0,167,168,5,99,0,
		0,168,169,5,101,0,0,169,170,5,103,0,0,170,171,5,114,0,0,171,172,5,111,
		0,0,172,173,5,117,0,0,173,174,5,112,0,0,174,16,1,0,0,0,175,176,5,104,0,
		0,176,177,5,105,0,0,177,178,5,103,0,0,178,179,5,104,0,0,179,180,5,101,
		0,0,180,181,5,114,0,0,181,182,5,84,0,0,182,183,5,104,0,0,183,184,5,97,
		0,0,184,185,5,110,0,0,185,18,1,0,0,0,186,187,5,108,0,0,187,188,5,111,0,
		0,188,189,5,119,0,0,189,190,5,101,0,0,190,191,5,114,0,0,191,192,5,84,0,
		0,192,193,5,104,0,0,193,194,5,97,0,0,194,195,5,110,0,0,195,20,1,0,0,0,
		196,197,5,97,0,0,197,198,5,115,0,0,198,199,5,115,0,0,199,200,5,105,0,0,
		200,201,5,103,0,0,201,202,5,110,0,0,202,203,5,109,0,0,203,204,5,101,0,
		0,204,205,5,110,0,0,205,206,5,116,0,0,206,22,1,0,0,0,207,208,5,97,0,0,
		208,209,5,115,0,0,209,210,5,115,0,0,210,211,5,111,0,0,211,212,5,99,0,0,
		212,213,5,105,0,0,213,214,5,97,0,0,214,215,5,116,0,0,215,216,5,105,0,0,
		216,217,5,118,0,0,217,218,5,105,0,0,218,219,5,116,0,0,219,220,5,121,0,
		0,220,24,1,0,0,0,221,222,5,108,0,0,222,223,5,101,0,0,223,224,5,102,0,0,
		224,235,5,116,0,0,225,226,5,114,0,0,226,227,5,105,0,0,227,228,5,103,0,
		0,228,229,5,104,0,0,229,235,5,116,0,0,230,231,5,110,0,0,231,232,5,111,
		0,0,232,233,5,110,0,0,233,235,5,101,0,0,234,221,1,0,0,0,234,225,1,0,0,
		0,234,230,1,0,0,0,235,26,1,0,0,0,236,238,5,45,0,0,237,236,1,0,0,0,237,
		238,1,0,0,0,238,261,1,0,0,0,239,240,5,48,0,0,240,241,5,98,0,0,241,242,
		1,0,0,0,242,246,7,2,0,0,243,245,7,3,0,0,244,243,1,0,0,0,245,248,1,0,0,
		0,246,244,1,0,0,0,246,247,1,0,0,0,247,262,1,0,0,0,248,246,1,0,0,0,249,
		250,5,48,0,0,250,251,5,111,0,0,251,252,1,0,0,0,252,256,7,4,0,0,253,255,
		7,5,0,0,254,253,1,0,0,0,255,258,1,0,0,0,256,254,1,0,0,0,256,257,1,0,0,
		0,257,262,1,0,0,0,258,256,1,0,0,0,259,262,3,29,14,0,260,262,3,31,15,0,
		261,239,1,0,0,0,261,249,1,0,0,0,261,259,1,0,0,0,261,260,1,0,0,0,262,28,
		1,0,0,0,263,267,7,6,0,0,264,266,7,7,0,0,265,264,1,0,0,0,266,269,1,0,0,
		0,267,265,1,0,0,0,267,268,1,0,0,0,268,30,1,0,0,0,269,267,1,0,0,0,270,271,
		5,48,0,0,271,272,5,120,0,0,272,273,1,0,0,0,273,274,3,33,16,0,274,32,1,
		0,0,0,275,279,7,8,0,0,276,278,7,9,0,0,277,276,1,0,0,0,278,281,1,0,0,0,
		279,277,1,0,0,0,279,280,1,0,0,0,280,34,1,0,0,0,281,279,1,0,0,0,282,284,
		5,45,0,0,283,282,1,0,0,0,283,284,1,0,0,0,284,318,1,0,0,0,285,288,3,29,
		14,0,286,287,5,46,0,0,287,289,3,29,14,0,288,286,1,0,0,0,288,289,1,0,0,
		0,289,295,1,0,0,0,290,292,7,10,0,0,291,293,7,11,0,0,292,291,1,0,0,0,292,
		293,1,0,0,0,293,294,1,0,0,0,294,296,3,29,14,0,295,290,1,0,0,0,295,296,
		1,0,0,0,296,319,1,0,0,0,297,300,3,31,15,0,298,299,5,46,0,0,299,301,3,33,
		16,0,300,298,1,0,0,0,300,301,1,0,0,0,301,302,1,0,0,0,302,304,7,12,0,0,
		303,305,7,11,0,0,304,303,1,0,0,0,304,305,1,0,0,0,305,306,1,0,0,0,306,307,
		3,29,14,0,307,319,1,0,0,0,308,314,3,31,15,0,309,310,5,46,0,0,310,312,7,
		6,0,0,311,313,3,33,16,0,312,311,1,0,0,0,312,313,1,0,0,0,313,315,1,0,0,
		0,314,309,1,0,0,0,314,315,1,0,0,0,315,316,1,0,0,0,316,317,6,17,1,0,317,
		319,1,0,0,0,318,285,1,0,0,0,318,297,1,0,0,0,318,308,1,0,0,0,319,36,1,0,
		0,0,320,321,5,116,0,0,321,322,5,114,0,0,322,323,5,117,0,0,323,330,5,101,
		0,0,324,325,5,102,0,0,325,326,5,97,0,0,326,327,5,108,0,0,327,328,5,115,
		0,0,328,330,5,101,0,0,329,320,1,0,0,0,329,324,1,0,0,0,330,38,1,0,0,0,331,
		332,5,110,0,0,332,333,5,105,0,0,333,334,5,108,0,0,334,40,1,0,0,0,335,336,
		5,34,0,0,336,339,3,43,21,0,337,340,5,34,0,0,338,340,6,20,2,0,339,337,1,
		0,0,0,339,338,1,0,0,0,340,42,1,0,0,0,341,344,3,45,22,0,342,344,8,13,0,
		0,343,341,1,0,0,0,343,342,1,0,0,0,344,347,1,0,0,0,345,343,1,0,0,0,345,
		346,1,0,0,0,346,44,1,0,0,0,347,345,1,0,0,0,348,353,5,92,0,0,349,354,7,
		14,0,0,350,354,3,47,23,0,351,352,8,15,0,0,352,354,6,22,3,0,353,349,1,0,
		0,0,353,350,1,0,0,0,353,351,1,0,0,0,354,46,1,0,0,0,355,365,5,117,0,0,356,
		358,5,123,0,0,357,359,3,49,24,0,358,357,1,0,0,0,359,360,1,0,0,0,360,358,
		1,0,0,0,360,361,1,0,0,0,361,362,1,0,0,0,362,363,5,125,0,0,363,366,1,0,
		0,0,364,366,6,23,4,0,365,356,1,0,0,0,365,364,1,0,0,0,366,48,1,0,0,0,367,
		368,7,8,0,0,368,50,1,0,0,0,369,370,5,34,0,0,370,371,5,34,0,0,371,372,5,
		34,0,0,372,374,1,0,0,0,373,375,3,3,1,0,374,373,1,0,0,0,374,375,1,0,0,0,
		375,376,1,0,0,0,376,377,3,1,0,0,377,378,3,53,26,0,378,380,3,1,0,0,379,
		381,3,3,1,0,380,379,1,0,0,0,380,381,1,0,0,0,381,382,1,0,0,0,382,383,5,
		34,0,0,383,384,5,34,0,0,384,385,5,34,0,0,385,52,1,0,0,0,386,389,3,45,22,
		0,387,389,8,16,0,0,388,386,1,0,0,0,388,387,1,0,0,0,389,392,1,0,0,0,390,
		391,1,0,0,0,390,388,1,0,0,0,391,54,1,0,0,0,392,390,1,0,0,0,393,394,5,34,
		0,0,394,395,3,43,21,0,395,396,5,92,0,0,396,397,5,123,0,0,397,398,1,0,0,
		0,398,399,6,27,5,0,399,56,1,0,0,0,400,401,5,125,0,0,401,402,4,28,0,0,402,
		403,3,43,21,0,403,404,5,92,0,0,404,405,5,123,0,0,405,58,1,0,0,0,406,407,
		5,125,0,0,407,408,4,29,1,0,408,409,3,43,21,0,409,410,5,34,0,0,410,411,
		6,29,6,0,411,60,1,0,0,0,412,413,5,34,0,0,413,414,5,34,0,0,414,415,5,34,
		0,0,415,416,1,0,0,0,416,417,3,53,26,0,417,418,5,92,0,0,418,419,5,123,0,
		0,419,420,1,0,0,0,420,421,6,30,7,0,421,62,1,0,0,0,422,423,5,125,0,0,423,
		424,4,31,2,0,424,425,3,53,26,0,425,426,5,92,0,0,426,427,5,123,0,0,427,
		64,1,0,0,0,428,429,5,125,0,0,429,430,4,32,3,0,430,431,3,53,26,0,431,432,
		5,34,0,0,432,433,5,34,0,0,433,434,5,34,0,0,434,435,1,0,0,0,435,436,6,32,
		8,0,436,66,1,0,0,0,437,447,5,35,0,0,438,448,3,67,33,0,439,443,5,34,0,0,
		440,442,8,17,0,0,441,440,1,0,0,0,442,445,1,0,0,0,443,444,1,0,0,0,443,441,
		1,0,0,0,444,446,1,0,0,0,445,443,1,0,0,0,446,448,5,34,0,0,447,438,1,0,0,
		0,447,439,1,0,0,0,448,449,1,0,0,0,449,450,5,35,0,0,450,68,1,0,0,0,451,
		475,5,35,0,0,452,476,3,69,34,0,453,454,5,34,0,0,454,455,5,34,0,0,455,456,
		5,34,0,0,456,458,1,0,0,0,457,459,3,3,1,0,458,457,1,0,0,0,458,459,1,0,0,
		0,459,460,1,0,0,0,460,464,3,1,0,0,461,463,9,0,0,0,462,461,1,0,0,0,463,
		466,1,0,0,0,464,465,1,0,0,0,464,462,1,0,0,0,465,467,1,0,0,0,466,464,1,
		0,0,0,467,469,3,1,0,0,468,470,3,3,1,0,469,468,1,0,0,0,469,470,1,0,0,0,
		470,471,1,0,0,0,471,472,5,34,0,0,472,473,5,34,0,0,473,474,5,34,0,0,474,
		476,1,0,0,0,475,452,1,0,0,0,475,453,1,0,0,0,476,477,1,0,0,0,477,478,5,
		35,0,0,478,70,1,0,0,0,479,483,3,73,36,0,480,482,3,75,37,0,481,480,1,0,
		0,0,482,485,1,0,0,0,483,481,1,0,0,0,483,484,1,0,0,0,484,497,1,0,0,0,485,
		483,1,0,0,0,486,487,5,96,0,0,487,491,3,73,36,0,488,490,3,75,37,0,489,488,
		1,0,0,0,490,493,1,0,0,0,491,489,1,0,0,0,491,492,1,0,0,0,492,494,1,0,0,
		0,493,491,1,0,0,0,494,495,5,96,0,0,495,497,1,0,0,0,496,479,1,0,0,0,496,
		486,1,0,0,0,497,72,1,0,0,0,498,499,7,18,0,0,499,74,1,0,0,0,500,503,7,19,
		0,0,501,503,3,73,36,0,502,500,1,0,0,0,502,501,1,0,0,0,503,76,1,0,0,0,504,
		506,5,36,0,0,505,507,7,6,0,0,506,505,1,0,0,0,507,508,1,0,0,0,508,506,1,
		0,0,0,508,509,1,0,0,0,509,78,1,0,0,0,510,511,5,40,0,0,511,80,1,0,0,0,512,
		513,5,41,0,0,513,82,1,0,0,0,514,515,5,46,0,0,515,84,1,0,0,0,516,517,5,
		44,0,0,517,86,1,0,0,0,518,519,5,58,0,0,519,88,1,0,0,0,520,521,5,59,0,0,
		521,90,1,0,0,0,522,523,5,123,0,0,523,524,6,45,9,0,524,92,1,0,0,0,525,526,
		5,125,0,0,526,527,6,46,10,0,527,94,1,0,0,0,528,529,5,45,0,0,529,96,1,0,
		0,0,530,534,3,99,49,0,531,533,3,101,50,0,532,531,1,0,0,0,533,536,1,0,0,
		0,534,532,1,0,0,0,534,535,1,0,0,0,535,544,1,0,0,0,536,534,1,0,0,0,537,
		539,5,46,0,0,538,540,3,103,51,0,539,538,1,0,0,0,540,541,1,0,0,0,541,539,
		1,0,0,0,541,542,1,0,0,0,542,544,1,0,0,0,543,530,1,0,0,0,543,537,1,0,0,
		0,544,98,1,0,0,0,545,546,7,20,0,0,546,100,1,0,0,0,547,550,3,99,49,0,548,
		550,7,21,0,0,549,547,1,0,0,0,549,548,1,0,0,0,550,102,1,0,0,0,551,554,5,
		46,0,0,552,554,3,101,50,0,553,551,1,0,0,0,553,552,1,0,0,0,554,104,1,0,
		0,0,49,0,106,110,115,125,136,234,237,246,256,261,267,279,283,288,292,295,
		300,304,312,314,318,329,339,343,345,353,360,365,374,380,388,390,443,447,
		458,464,469,475,483,491,496,502,508,534,541,543,549,553,11,6,0,0,1,17,
		0,1,20,1,1,22,2,1,23,3,1,27,4,1,29,5,1,30,6,1,32,7,1,45,8,1,46,9
	]

	internal
	static let _ATN: ATN = try! ATNDeserializer().deserialize(_serializedATN)
}