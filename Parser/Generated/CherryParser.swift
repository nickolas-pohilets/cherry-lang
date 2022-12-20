// Generated from java-escape by ANTLR 4.11.1
import Antlr4

internal class CherryParser: Parser {

	internal static var _decisionToDFA: [DFA] = {
          var decisionToDFA = [DFA]()
          let length = CherryParser._ATN.getNumberOfDecisions()
          for i in 0..<length {
            decisionToDFA.append(DFA(CherryParser._ATN.getDecisionState(i)!, i))
           }
           return decisionToDFA
     }()

	internal static let _sharedContextCache = PredictionContextCache()

	internal
	enum Tokens: Int {
		case EOF = -1, ID = 1, INT = 2, NEWLINE = 3, WS = 4, LPAREN = 5, RPAREN = 6, 
                 LBRACE = 7, RBRACE = 8, STRING = 9, STRING_INTERPOLATION_START = 10, 
                 STRING_INTERPOLATION_CONTINUE = 11, STRING_INTERPOLATION_FINISH = 12, 
                 OP = 13
	}

	internal
	static let RULE_prog = 0, RULE_tokens = 1, RULE_stat = 2, RULE_expr = 3, 
            RULE_stringInterpolation = 4

	internal
	static let ruleNames: [String] = [
		"prog", "tokens", "stat", "expr", "stringInterpolation"
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

	override internal
	func getGrammarFileName() -> String { return "java-escape" }

	override internal
	func getRuleNames() -> [String] { return CherryParser.ruleNames }

	override internal
	func getSerializedATN() -> [Int] { return CherryParser._serializedATN }

	override internal
	func getATN() -> ATN { return CherryParser._ATN }


	override internal
	func getVocabulary() -> Vocabulary {
	    return CherryParser.VOCABULARY
	}

	override internal
	init(_ input:TokenStream) throws {
	    RuntimeMetaData.checkVersion("4.11.1", RuntimeMetaData.VERSION)
		try super.init(input)
		_interp = ParserATNSimulator(self,CherryParser._ATN,CherryParser._decisionToDFA, CherryParser._sharedContextCache)
	}


	internal class ProgContext: ParserRuleContext {
			internal
			func EOF() -> TerminalNode? {
				return getToken(CherryParser.Tokens.EOF.rawValue, 0)
			}
			internal
			func stat() -> [StatContext] {
				return getRuleContexts(StatContext.self)
			}
			internal
			func stat(_ i: Int) -> StatContext? {
				return getRuleContext(StatContext.self, i)
			}
		override internal
		func getRuleIndex() -> Int {
			return CherryParser.RULE_prog
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.enterProg(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.exitProg(self)
			}
		}
	}
	@discardableResult
	 internal func prog() throws -> ProgContext {
		var _localctx: ProgContext
		_localctx = ProgContext(_ctx, getState())
		try enterRule(_localctx, 0, CherryParser.RULE_prog)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(11) 
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	repeat {
		 		setState(10)
		 		try stat()


		 		setState(13); 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	} while ((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 1582) != 0)
		 	setState(15)
		 	try match(CherryParser.Tokens.EOF.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class TokensContext: ParserRuleContext {
			internal
			func EOF() -> TerminalNode? {
				return getToken(CherryParser.Tokens.EOF.rawValue, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return CherryParser.RULE_tokens
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.enterTokens(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.exitTokens(self)
			}
		}
	}
	@discardableResult
	 internal func tokens() throws -> TokensContext {
		var _localctx: TokensContext
		_localctx = TokensContext(_ctx, getState())
		try enterRule(_localctx, 2, CherryParser.RULE_tokens)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(20)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while ((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 16382) != 0) {
		 		setState(17)
		 		try matchWildcard();


		 		setState(22)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(23)
		 	try match(CherryParser.Tokens.EOF.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class StatContext: ParserRuleContext {
			internal
			func NEWLINE() -> TerminalNode? {
				return getToken(CherryParser.Tokens.NEWLINE.rawValue, 0)
			}
			internal
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return CherryParser.RULE_stat
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.enterStat(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.exitStat(self)
			}
		}
	}
	@discardableResult
	 internal func stat() throws -> StatContext {
		var _localctx: StatContext
		_localctx = StatContext(_ctx, getState())
		try enterRule(_localctx, 4, CherryParser.RULE_stat)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(26)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if ((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 1574) != 0) {
		 		setState(25)
		 		try expr(0)

		 	}

		 	setState(28)
		 	try match(CherryParser.Tokens.NEWLINE.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}


	internal class ExprContext: ParserRuleContext {
			internal
			func INT() -> TerminalNode? {
				return getToken(CherryParser.Tokens.INT.rawValue, 0)
			}
			internal
			func ID() -> TerminalNode? {
				return getToken(CherryParser.Tokens.ID.rawValue, 0)
			}
			internal
			func STRING() -> TerminalNode? {
				return getToken(CherryParser.Tokens.STRING.rawValue, 0)
			}
			internal
			func stringInterpolation() -> StringInterpolationContext? {
				return getRuleContext(StringInterpolationContext.self, 0)
			}
			internal
			func LPAREN() -> TerminalNode? {
				return getToken(CherryParser.Tokens.LPAREN.rawValue, 0)
			}
			internal
			func expr() -> [ExprContext] {
				return getRuleContexts(ExprContext.self)
			}
			internal
			func expr(_ i: Int) -> ExprContext? {
				return getRuleContext(ExprContext.self, i)
			}
			internal
			func RPAREN() -> TerminalNode? {
				return getToken(CherryParser.Tokens.RPAREN.rawValue, 0)
			}
			internal
			func OP() -> TerminalNode? {
				return getToken(CherryParser.Tokens.OP.rawValue, 0)
			}
			internal
			func LBRACE() -> TerminalNode? {
				return getToken(CherryParser.Tokens.LBRACE.rawValue, 0)
			}
			internal
			func RBRACE() -> TerminalNode? {
				return getToken(CherryParser.Tokens.RBRACE.rawValue, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return CherryParser.RULE_expr
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.enterExpr(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.exitExpr(self)
			}
		}
	}

	 internal final  func expr( ) throws -> ExprContext   {
		return try expr(0)
	}
	@discardableResult
	private func expr(_ _p: Int) throws -> ExprContext   {
		let _parentctx: ParserRuleContext? = _ctx
		let _parentState: Int = getState()
		var _localctx: ExprContext
		_localctx = ExprContext(_ctx, _parentState)
		var _prevctx: ExprContext = _localctx
		let _startState: Int = 6
		try enterRecursionRule(_localctx, 6, CherryParser.RULE_expr, _p)
		defer {
	    		try! unrollRecursionContexts(_parentctx)
	    }
		do {
			var _alt: Int
			try enterOuterAlt(_localctx, 1)
			setState(39)
			try _errHandler.sync(self)
			switch (CherryParser.Tokens(rawValue: try _input.LA(1))!) {
			case .INT:
				setState(31)
				try match(CherryParser.Tokens.INT.rawValue)

				break

			case .ID:
				setState(32)
				try match(CherryParser.Tokens.ID.rawValue)

				break

			case .STRING:
				setState(33)
				try match(CherryParser.Tokens.STRING.rawValue)

				break

			case .STRING_INTERPOLATION_START:
				setState(34)
				try stringInterpolation()

				break

			case .LPAREN:
				setState(35)
				try match(CherryParser.Tokens.LPAREN.rawValue)
				setState(36)
				try expr(0)
				setState(37)
				try match(CherryParser.Tokens.RPAREN.rawValue)

				break
			default:
				throw ANTLRException.recognition(e: NoViableAltException(self))
			}
			_ctx!.stop = try _input.LT(-1)
			setState(52)
			try _errHandler.sync(self)
			_alt = try getInterpreter().adaptivePredict(_input,5,_ctx)
			while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
				if ( _alt==1 ) {
					if _parseListeners != nil {
					   try triggerExitRuleEvent()
					}
					_prevctx = _localctx
					setState(50)
					try _errHandler.sync(self)
					switch(try getInterpreter().adaptivePredict(_input,4, _ctx)) {
					case 1:
						_localctx = ExprContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, CherryParser.RULE_expr)
						setState(41)
						if (!(precpred(_ctx, 7))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 7)"))
						}
						setState(42)
						try match(CherryParser.Tokens.OP.rawValue)
						setState(43)
						try expr(8)

						break
					case 2:
						_localctx = ExprContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, CherryParser.RULE_expr)
						setState(44)
						if (!(precpred(_ctx, 1))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 1)"))
						}
						setState(45)
						try match(CherryParser.Tokens.LBRACE.rawValue)
						setState(46)
						try expr(0)
						setState(47)
						try match(CherryParser.Tokens.RBRACE.rawValue)
						setState(48)
						try expr(2)

						break
					default: break
					}
			 
				}
				setState(54)
				try _errHandler.sync(self)
				_alt = try getInterpreter().adaptivePredict(_input,5,_ctx)
			}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx;
	}

	internal class StringInterpolationContext: ParserRuleContext {
			internal
			func STRING_INTERPOLATION_START() -> TerminalNode? {
				return getToken(CherryParser.Tokens.STRING_INTERPOLATION_START.rawValue, 0)
			}
			internal
			func expr() -> [ExprContext] {
				return getRuleContexts(ExprContext.self)
			}
			internal
			func expr(_ i: Int) -> ExprContext? {
				return getRuleContext(ExprContext.self, i)
			}
			internal
			func STRING_INTERPOLATION_FINISH() -> TerminalNode? {
				return getToken(CherryParser.Tokens.STRING_INTERPOLATION_FINISH.rawValue, 0)
			}
			internal
			func STRING_INTERPOLATION_CONTINUE() -> [TerminalNode] {
				return getTokens(CherryParser.Tokens.STRING_INTERPOLATION_CONTINUE.rawValue)
			}
			internal
			func STRING_INTERPOLATION_CONTINUE(_ i:Int) -> TerminalNode? {
				return getToken(CherryParser.Tokens.STRING_INTERPOLATION_CONTINUE.rawValue, i)
			}
		override internal
		func getRuleIndex() -> Int {
			return CherryParser.RULE_stringInterpolation
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.enterStringInterpolation(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.exitStringInterpolation(self)
			}
		}
	}
	@discardableResult
	 internal func stringInterpolation() throws -> StringInterpolationContext {
		var _localctx: StringInterpolationContext
		_localctx = StringInterpolationContext(_ctx, getState())
		try enterRule(_localctx, 8, CherryParser.RULE_stringInterpolation)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(55)
		 	try match(CherryParser.Tokens.STRING_INTERPOLATION_START.rawValue)
		 	setState(56)
		 	try expr(0)
		 	setState(61)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == CherryParser.Tokens.STRING_INTERPOLATION_CONTINUE.rawValue) {
		 		setState(57)
		 		try match(CherryParser.Tokens.STRING_INTERPOLATION_CONTINUE.rawValue)
		 		setState(58)
		 		try expr(0)


		 		setState(63)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(64)
		 	try match(CherryParser.Tokens.STRING_INTERPOLATION_FINISH.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	override internal
	func sempred(_ _localctx: RuleContext?, _ ruleIndex: Int,  _ predIndex: Int)throws -> Bool {
		switch (ruleIndex) {
		case  3:
			return try expr_sempred(_localctx?.castdown(ExprContext.self), predIndex)
	    default: return true
		}
	}
	private func expr_sempred(_ _localctx: ExprContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 0:return precpred(_ctx, 7)
		    case 1:return precpred(_ctx, 1)
		    default: return true
		}
	}

	static let _serializedATN:[Int] = [
		4,1,13,67,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,1,0,4,0,12,8,0,11,0,
		12,0,13,1,0,1,0,1,1,5,1,19,8,1,10,1,12,1,22,9,1,1,1,1,1,1,2,3,2,27,8,2,
		1,2,1,2,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,1,3,3,3,40,8,3,1,3,1,3,1,3,1,3,
		1,3,1,3,1,3,1,3,1,3,5,3,51,8,3,10,3,12,3,54,9,3,1,4,1,4,1,4,1,4,5,4,60,
		8,4,10,4,12,4,63,9,4,1,4,1,4,1,4,0,1,6,5,0,2,4,6,8,0,0,71,0,11,1,0,0,0,
		2,20,1,0,0,0,4,26,1,0,0,0,6,39,1,0,0,0,8,55,1,0,0,0,10,12,3,4,2,0,11,10,
		1,0,0,0,12,13,1,0,0,0,13,11,1,0,0,0,13,14,1,0,0,0,14,15,1,0,0,0,15,16,
		5,0,0,1,16,1,1,0,0,0,17,19,9,0,0,0,18,17,1,0,0,0,19,22,1,0,0,0,20,18,1,
		0,0,0,20,21,1,0,0,0,21,23,1,0,0,0,22,20,1,0,0,0,23,24,5,0,0,1,24,3,1,0,
		0,0,25,27,3,6,3,0,26,25,1,0,0,0,26,27,1,0,0,0,27,28,1,0,0,0,28,29,5,3,
		0,0,29,5,1,0,0,0,30,31,6,3,-1,0,31,40,5,2,0,0,32,40,5,1,0,0,33,40,5,9,
		0,0,34,40,3,8,4,0,35,36,5,5,0,0,36,37,3,6,3,0,37,38,5,6,0,0,38,40,1,0,
		0,0,39,30,1,0,0,0,39,32,1,0,0,0,39,33,1,0,0,0,39,34,1,0,0,0,39,35,1,0,
		0,0,40,52,1,0,0,0,41,42,10,7,0,0,42,43,5,13,0,0,43,51,3,6,3,8,44,45,10,
		1,0,0,45,46,5,7,0,0,46,47,3,6,3,0,47,48,5,8,0,0,48,49,3,6,3,2,49,51,1,
		0,0,0,50,41,1,0,0,0,50,44,1,0,0,0,51,54,1,0,0,0,52,50,1,0,0,0,52,53,1,
		0,0,0,53,7,1,0,0,0,54,52,1,0,0,0,55,56,5,10,0,0,56,61,3,6,3,0,57,58,5,
		11,0,0,58,60,3,6,3,0,59,57,1,0,0,0,60,63,1,0,0,0,61,59,1,0,0,0,61,62,1,
		0,0,0,62,64,1,0,0,0,63,61,1,0,0,0,64,65,5,12,0,0,65,9,1,0,0,0,7,13,20,
		26,39,50,52,61
	]

	internal
	static let _ATN = try! ATNDeserializer().deserialize(_serializedATN)
}