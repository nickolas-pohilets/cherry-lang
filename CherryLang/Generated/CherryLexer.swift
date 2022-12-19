// Generated from java-escape by ANTLR 4.11.1
import Antlr4

open class CherryLexer: Lexer {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = CherryLexer._ATN.getNumberOfDecisions()
          for i in 0..<length {
          	    decisionToDFA.append(DFA(CherryLexer._ATN.getDecisionState(i)!, i))
          }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	public
	static let T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, ID=8, 
            INT=9, NEWLINE=10, WS=11, LBRACE=12, RBRACE=13, STRING=14, STRING_INTERPOLATION_START=15, 
            STRING_INTERPOLATION_CONTINUE=16, STRING_INTERPOLATION_FINISH=17

	public
	static let channelNames: [String] = [
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	]

	public
	static let modeNames: [String] = [
		"DEFAULT_MODE"
	]

	public
	static let ruleNames: [String] = [
		"T__0", "T__1", "T__2", "T__3", "T__4", "T__5", "T__6", "ID", "INT", "NEWLINE", 
		"WS", "LBRACE", "RBRACE", "STRING", "STRING_INTERPOLATION_START", "STRING_INTERPOLATION_CONTINUE", 
		"STRING_INTERPOLATION_FINISH", "STRING_CONTENT", "ESC", "UNICODE", "HEX"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, "'='", "'*'", "'/'", "'+'", "'-'", "'('", "')'", nil, nil, nil, nil, 
		"'{'", "'}'"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, nil, nil, nil, nil, nil, nil, nil, "ID", "INT", "NEWLINE", "WS", 
		"LBRACE", "RBRACE", "STRING", "STRING_INTERPOLATION_START", "STRING_INTERPOLATION_CONTINUE", 
		"STRING_INTERPOLATION_FINISH"
	]
	public
	static let VOCABULARY = Vocabulary(_LITERAL_NAMES, _SYMBOLIC_NAMES)


	    private var stringInterpolations: [Int] = []
	    private var bracketDepth: Int = 0
	    
	    private func canResumeInterpolation() -> Bool {
	        stringInterpolations.last == bracketDepth
	    }


	override open
	func getVocabulary() -> Vocabulary {
		return CherryLexer.VOCABULARY
	}

	public
	required init(_ input: CharStream) {
	    RuntimeMetaData.checkVersion("4.11.1", RuntimeMetaData.VERSION)
		super.init(input)
		_interp = LexerATNSimulator(self, CherryLexer._ATN, CherryLexer._decisionToDFA, CherryLexer._sharedContextCache)
	}

	override open
	func getGrammarFileName() -> String { return "Cherry.g4" }

	override open
	func getRuleNames() -> [String] { return CherryLexer.ruleNames }

	override open
	func getSerializedATN() -> [Int] { return CherryLexer._serializedATN }

	override open
	func getChannelNames() -> [String] { return CherryLexer.channelNames }

	override open
	func getModeNames() -> [String] { return CherryLexer.modeNames }

	override open
	func getATN() -> ATN { return CherryLexer._ATN }

	override open
	func action(_ _localctx: RuleContext?,  _ ruleIndex: Int, _ actionIndex: Int) throws {
		switch (ruleIndex) {
		case 11:
			LBRACE_action((_localctx as RuleContext?), actionIndex)

		case 12:
			RBRACE_action((_localctx as RuleContext?), actionIndex)

		case 14:
			STRING_INTERPOLATION_START_action((_localctx as RuleContext?), actionIndex)

		case 16:
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
		case 15:
			return try STRING_INTERPOLATION_CONTINUE_sempred(_localctx?.castdown(RuleContext.self), predIndex)
		case 16:
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
		4,0,17,142,6,-1,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,
		6,2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,14,
		7,14,2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,1,0,1,
		0,1,1,1,1,1,2,1,2,1,3,1,3,1,4,1,4,1,5,1,5,1,6,1,6,1,7,4,7,59,8,7,11,7,
		12,7,60,1,8,4,8,64,8,8,11,8,12,8,65,1,9,3,9,69,8,9,1,9,1,9,1,10,4,10,74,
		8,10,11,10,12,10,75,1,10,1,10,1,11,1,11,1,11,1,12,1,12,1,12,1,13,1,13,
		1,13,1,13,1,14,1,14,1,14,1,14,1,14,1,14,1,14,1,15,1,15,1,15,1,15,1,15,
		1,15,1,16,1,16,1,16,1,16,1,16,1,16,1,17,1,17,5,17,111,8,17,10,17,12,17,
		114,9,17,1,18,1,18,1,18,1,18,1,18,1,18,1,18,3,18,123,8,18,1,19,1,19,1,
		19,1,19,1,19,1,19,1,19,1,19,4,19,133,8,19,11,19,12,19,134,1,19,1,19,3,
		19,139,8,19,1,20,1,20,0,0,21,1,1,3,2,5,3,7,4,9,5,11,6,13,7,15,8,17,9,19,
		10,21,11,23,12,25,13,27,14,29,15,31,16,33,17,35,0,37,0,39,0,41,0,1,0,6,
		2,0,65,90,97,122,1,0,48,57,2,0,9,9,32,32,2,0,34,34,92,92,8,0,34,34,47,
		47,92,92,98,98,102,102,110,110,114,114,116,116,3,0,48,57,65,70,97,102,
		147,0,1,1,0,0,0,0,3,1,0,0,0,0,5,1,0,0,0,0,7,1,0,0,0,0,9,1,0,0,0,0,11,1,
		0,0,0,0,13,1,0,0,0,0,15,1,0,0,0,0,17,1,0,0,0,0,19,1,0,0,0,0,21,1,0,0,0,
		0,23,1,0,0,0,0,25,1,0,0,0,0,27,1,0,0,0,0,29,1,0,0,0,0,31,1,0,0,0,0,33,
		1,0,0,0,1,43,1,0,0,0,3,45,1,0,0,0,5,47,1,0,0,0,7,49,1,0,0,0,9,51,1,0,0,
		0,11,53,1,0,0,0,13,55,1,0,0,0,15,58,1,0,0,0,17,63,1,0,0,0,19,68,1,0,0,
		0,21,73,1,0,0,0,23,79,1,0,0,0,25,82,1,0,0,0,27,85,1,0,0,0,29,89,1,0,0,
		0,31,96,1,0,0,0,33,102,1,0,0,0,35,112,1,0,0,0,37,115,1,0,0,0,39,124,1,
		0,0,0,41,140,1,0,0,0,43,44,5,61,0,0,44,2,1,0,0,0,45,46,5,42,0,0,46,4,1,
		0,0,0,47,48,5,47,0,0,48,6,1,0,0,0,49,50,5,43,0,0,50,8,1,0,0,0,51,52,5,
		45,0,0,52,10,1,0,0,0,53,54,5,40,0,0,54,12,1,0,0,0,55,56,5,41,0,0,56,14,
		1,0,0,0,57,59,7,0,0,0,58,57,1,0,0,0,59,60,1,0,0,0,60,58,1,0,0,0,60,61,
		1,0,0,0,61,16,1,0,0,0,62,64,7,1,0,0,63,62,1,0,0,0,64,65,1,0,0,0,65,63,
		1,0,0,0,65,66,1,0,0,0,66,18,1,0,0,0,67,69,5,13,0,0,68,67,1,0,0,0,68,69,
		1,0,0,0,69,70,1,0,0,0,70,71,5,10,0,0,71,20,1,0,0,0,72,74,7,2,0,0,73,72,
		1,0,0,0,74,75,1,0,0,0,75,73,1,0,0,0,75,76,1,0,0,0,76,77,1,0,0,0,77,78,
		6,10,0,0,78,22,1,0,0,0,79,80,5,123,0,0,80,81,6,11,1,0,81,24,1,0,0,0,82,
		83,5,125,0,0,83,84,6,12,2,0,84,26,1,0,0,0,85,86,5,34,0,0,86,87,3,35,17,
		0,87,88,5,34,0,0,88,28,1,0,0,0,89,90,5,34,0,0,90,91,3,35,17,0,91,92,5,
		92,0,0,92,93,5,123,0,0,93,94,1,0,0,0,94,95,6,14,3,0,95,30,1,0,0,0,96,97,
		5,125,0,0,97,98,4,15,0,0,98,99,3,35,17,0,99,100,5,92,0,0,100,101,5,123,
		0,0,101,32,1,0,0,0,102,103,5,125,0,0,103,104,4,16,1,0,104,105,3,35,17,
		0,105,106,5,34,0,0,106,107,6,16,4,0,107,34,1,0,0,0,108,111,3,37,18,0,109,
		111,8,3,0,0,110,108,1,0,0,0,110,109,1,0,0,0,111,114,1,0,0,0,112,110,1,
		0,0,0,112,113,1,0,0,0,113,36,1,0,0,0,114,112,1,0,0,0,115,122,5,92,0,0,
		116,123,7,4,0,0,117,123,3,39,19,0,118,119,5,120,0,0,119,120,3,41,20,0,
		120,121,3,41,20,0,121,123,1,0,0,0,122,116,1,0,0,0,122,117,1,0,0,0,122,
		118,1,0,0,0,123,38,1,0,0,0,124,138,5,117,0,0,125,126,3,41,20,0,126,127,
		3,41,20,0,127,128,3,41,20,0,128,129,3,41,20,0,129,139,1,0,0,0,130,132,
		5,123,0,0,131,133,3,41,20,0,132,131,1,0,0,0,133,134,1,0,0,0,134,132,1,
		0,0,0,134,135,1,0,0,0,135,136,1,0,0,0,136,137,5,125,0,0,137,139,1,0,0,
		0,138,125,1,0,0,0,138,130,1,0,0,0,139,40,1,0,0,0,140,141,7,5,0,0,141,42,
		1,0,0,0,10,0,60,65,68,75,110,112,122,134,138,5,6,0,0,1,11,0,1,12,1,1,14,
		2,1,16,3
	]

	public
	static let _ATN: ATN = try! ATNDeserializer().deserialize(_serializedATN)
}