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
	static let ID=1, INT=2, NEWLINE=3, WS=4, LPAREN=5, RPAREN=6, LBRACE=7, 
            RBRACE=8, STRING=9, STRING_INTERPOLATION_START=10, STRING_INTERPOLATION_CONTINUE=11, 
            STRING_INTERPOLATION_FINISH=12, OP=13

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
		"ID", "INT", "NEWLINE", "WS", "LPAREN", "RPAREN", "LBRACE", "RBRACE", 
		"STRING", "STRING_INTERPOLATION_START", "STRING_INTERPOLATION_CONTINUE", 
		"STRING_INTERPOLATION_FINISH", "STRING_CONTENT", "ESC", "UNICODE", "HEX", 
		"OP", "OP_HEAD", "OP_CHARACTER", "DOT_OP_CHARACTER"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, nil, nil, nil, nil, "'('", "')'", "'{'", "'}'"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, "ID", "INT", "NEWLINE", "WS", "LPAREN", "RPAREN", "LBRACE", "RBRACE", 
		"STRING", "STRING_INTERPOLATION_START", "STRING_INTERPOLATION_CONTINUE", 
		"STRING_INTERPOLATION_FINISH", "OP"
	]
	internal
	static let VOCABULARY = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)


	    private var stringInterpolations: [Int] = []
	    private var bracketDepth: Int = 0
	    
	    private func canResumeInterpolation() -> Bool {
	        stringInterpolations.last == bracketDepth
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
	func getGrammarFileName() -> String { return "Cherry.g4" }

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
		case 6:
			LBRACE_action((_localctx as RuleContext?), actionIndex)

		case 7:
			RBRACE_action((_localctx as RuleContext?), actionIndex)

		case 9:
			STRING_INTERPOLATION_START_action((_localctx as RuleContext?), actionIndex)

		case 11:
			STRING_INTERPOLATION_FINISH_action((_localctx as RuleContext?), actionIndex)

		default: break
		}
	}
	private func LBRACE_action(_ _localctx: RuleContext?,  _ actionIndex: Int) {
		switch (actionIndex) {
		case 0:
			 bracketDepth += 1 

		 default: break
		}
	}
	private func RBRACE_action(_ _localctx: RuleContext?,  _ actionIndex: Int) {
		switch (actionIndex) {
		case 1:
			 bracketDepth -= 1 

		 default: break
		}
	}
	private func STRING_INTERPOLATION_START_action(_ _localctx: RuleContext?,  _ actionIndex: Int) {
		switch (actionIndex) {
		case 2:
			 stringInterpolations.append(bracketDepth) 

		 default: break
		}
	}
	private func STRING_INTERPOLATION_FINISH_action(_ _localctx: RuleContext?,  _ actionIndex: Int) {
		switch (actionIndex) {
		case 3:
			 stringInterpolations.removeLast() 

		 default: break
		}
	}
	override open
	func sempred(_ _localctx: RuleContext?, _  ruleIndex: Int,_   predIndex: Int) throws -> Bool {
		switch (ruleIndex) {
		case 10:
			return try STRING_INTERPOLATION_CONTINUE_sempred(_localctx?.castdown(RuleContext.self), predIndex)
		case 11:
			return try STRING_INTERPOLATION_FINISH_sempred(_localctx?.castdown(RuleContext.self), predIndex)
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

	static let _serializedATN:[Int] = [
		4,0,13,155,6,-1,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,
		6,2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,14,
		7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,1,0,4,0,43,8,0,
		11,0,12,0,44,1,1,4,1,48,8,1,11,1,12,1,49,1,2,3,2,53,8,2,1,2,1,2,1,3,4,
		3,58,8,3,11,3,12,3,59,1,3,1,3,1,4,1,4,1,5,1,5,1,6,1,6,1,6,1,7,1,7,1,7,
		1,8,1,8,1,8,1,8,1,9,1,9,1,9,1,9,1,9,1,9,1,9,1,10,1,10,1,10,1,10,1,10,1,
		10,1,11,1,11,1,11,1,11,1,11,1,11,1,12,1,12,5,12,99,8,12,10,12,12,12,102,
		9,12,1,13,1,13,1,13,1,13,1,13,1,13,1,13,3,13,111,8,13,1,14,1,14,1,14,1,
		14,1,14,1,14,1,14,1,14,4,14,121,8,14,11,14,12,14,122,1,14,1,14,3,14,127,
		8,14,1,15,1,15,1,16,1,16,5,16,133,8,16,10,16,12,16,136,9,16,1,16,1,16,
		4,16,140,8,16,11,16,12,16,141,3,16,144,8,16,1,17,1,17,1,18,1,18,3,18,150,
		8,18,1,19,1,19,3,19,154,8,19,0,0,20,1,1,3,2,5,3,7,4,9,5,11,6,13,7,15,8,
		17,9,19,10,21,11,23,12,25,0,27,0,29,0,31,0,33,13,35,0,37,0,39,0,1,0,8,
		2,0,65,90,97,122,1,0,48,57,2,0,9,9,32,32,2,0,34,34,92,92,8,0,34,34,47,
		47,92,92,98,98,102,102,110,110,114,114,116,116,3,0,48,57,65,70,97,102,
		31,0,33,33,37,38,42,43,45,45,47,47,60,63,94,94,124,124,126,126,161,167,
		169,169,171,172,174,174,176,177,182,182,187,187,191,191,215,215,247,247,
		8214,8215,8224,8231,8240,8254,8257,8275,8277,8286,8592,9215,9472,10101,
		10132,11263,11776,11903,12289,12291,12296,12320,12336,12336,6,0,768,879,
		7616,7679,8400,8447,65024,65039,65056,65071,917760,917999,162,0,1,1,0,
		0,0,0,3,1,0,0,0,0,5,1,0,0,0,0,7,1,0,0,0,0,9,1,0,0,0,0,11,1,0,0,0,0,13,
		1,0,0,0,0,15,1,0,0,0,0,17,1,0,0,0,0,19,1,0,0,0,0,21,1,0,0,0,0,23,1,0,0,
		0,0,33,1,0,0,0,1,42,1,0,0,0,3,47,1,0,0,0,5,52,1,0,0,0,7,57,1,0,0,0,9,63,
		1,0,0,0,11,65,1,0,0,0,13,67,1,0,0,0,15,70,1,0,0,0,17,73,1,0,0,0,19,77,
		1,0,0,0,21,84,1,0,0,0,23,90,1,0,0,0,25,100,1,0,0,0,27,103,1,0,0,0,29,112,
		1,0,0,0,31,128,1,0,0,0,33,143,1,0,0,0,35,145,1,0,0,0,37,149,1,0,0,0,39,
		153,1,0,0,0,41,43,7,0,0,0,42,41,1,0,0,0,43,44,1,0,0,0,44,42,1,0,0,0,44,
		45,1,0,0,0,45,2,1,0,0,0,46,48,7,1,0,0,47,46,1,0,0,0,48,49,1,0,0,0,49,47,
		1,0,0,0,49,50,1,0,0,0,50,4,1,0,0,0,51,53,5,13,0,0,52,51,1,0,0,0,52,53,
		1,0,0,0,53,54,1,0,0,0,54,55,5,10,0,0,55,6,1,0,0,0,56,58,7,2,0,0,57,56,
		1,0,0,0,58,59,1,0,0,0,59,57,1,0,0,0,59,60,1,0,0,0,60,61,1,0,0,0,61,62,
		6,3,0,0,62,8,1,0,0,0,63,64,5,40,0,0,64,10,1,0,0,0,65,66,5,41,0,0,66,12,
		1,0,0,0,67,68,5,123,0,0,68,69,6,6,1,0,69,14,1,0,0,0,70,71,5,125,0,0,71,
		72,6,7,2,0,72,16,1,0,0,0,73,74,5,34,0,0,74,75,3,25,12,0,75,76,5,34,0,0,
		76,18,1,0,0,0,77,78,5,34,0,0,78,79,3,25,12,0,79,80,5,92,0,0,80,81,5,123,
		0,0,81,82,1,0,0,0,82,83,6,9,3,0,83,20,1,0,0,0,84,85,5,125,0,0,85,86,4,
		10,0,0,86,87,3,25,12,0,87,88,5,92,0,0,88,89,5,123,0,0,89,22,1,0,0,0,90,
		91,5,125,0,0,91,92,4,11,1,0,92,93,3,25,12,0,93,94,5,34,0,0,94,95,6,11,
		4,0,95,24,1,0,0,0,96,99,3,27,13,0,97,99,8,3,0,0,98,96,1,0,0,0,98,97,1,
		0,0,0,99,102,1,0,0,0,100,98,1,0,0,0,100,101,1,0,0,0,101,26,1,0,0,0,102,
		100,1,0,0,0,103,110,5,92,0,0,104,111,7,4,0,0,105,111,3,29,14,0,106,107,
		5,120,0,0,107,108,3,31,15,0,108,109,3,31,15,0,109,111,1,0,0,0,110,104,
		1,0,0,0,110,105,1,0,0,0,110,106,1,0,0,0,111,28,1,0,0,0,112,126,5,117,0,
		0,113,114,3,31,15,0,114,115,3,31,15,0,115,116,3,31,15,0,116,117,3,31,15,
		0,117,127,1,0,0,0,118,120,5,123,0,0,119,121,3,31,15,0,120,119,1,0,0,0,
		121,122,1,0,0,0,122,120,1,0,0,0,122,123,1,0,0,0,123,124,1,0,0,0,124,125,
		5,125,0,0,125,127,1,0,0,0,126,113,1,0,0,0,126,118,1,0,0,0,127,30,1,0,0,
		0,128,129,7,5,0,0,129,32,1,0,0,0,130,134,3,35,17,0,131,133,3,37,18,0,132,
		131,1,0,0,0,133,136,1,0,0,0,134,132,1,0,0,0,134,135,1,0,0,0,135,144,1,
		0,0,0,136,134,1,0,0,0,137,139,5,46,0,0,138,140,3,39,19,0,139,138,1,0,0,
		0,140,141,1,0,0,0,141,139,1,0,0,0,141,142,1,0,0,0,142,144,1,0,0,0,143,
		130,1,0,0,0,143,137,1,0,0,0,144,34,1,0,0,0,145,146,7,6,0,0,146,36,1,0,
		0,0,147,150,3,35,17,0,148,150,7,7,0,0,149,147,1,0,0,0,149,148,1,0,0,0,
		150,38,1,0,0,0,151,154,5,46,0,0,152,154,3,37,18,0,153,151,1,0,0,0,153,
		152,1,0,0,0,154,40,1,0,0,0,15,0,44,49,52,59,98,100,110,122,126,134,141,
		143,149,153,5,6,0,0,1,6,0,1,7,1,1,9,2,1,11,3
	]

	internal
	static let _ATN: ATN = try! ATNDeserializer().deserialize(_serializedATN)
}