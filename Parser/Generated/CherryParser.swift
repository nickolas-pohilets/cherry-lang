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
		case EOF = -1, T__0 = 1, T__1 = 2, T__2 = 3, T__3 = 4, T__4 = 5, T__5 = 6, 
                 T__6 = 7, T__7 = 8, T__8 = 9, T__9 = 10, T__10 = 11, T__11 = 12, 
                 T__12 = 13, T__13 = 14, T__14 = 15, NL = 16, WS = 17, COMMENT = 18, 
                 MULTILINE_COMMENT = 19, INTEGER_LITERAL = 20, FLOATING_POINT_LITERAL = 21, 
                 BOOLEAN_LITERAL = 22, NIL_LITERAL = 23, STRING_LITERAL = 24, 
                 MULTILINE_STRING_LITERAL = 25, STRING_INTERPOLATION_START = 26, 
                 STRING_INTERPOLATION_CONTINUE = 27, STRING_INTERPOLATION_FINISH = 28, 
                 MULTILINE_STRING_INTERPOLATION_START = 29, MULTILINE_STRING_INTERPOLATION_CONTINUE = 30, 
                 MULTILINE_STRING_INTERPOLATION_FINISH = 31, RAW_STRING_LITERAL = 32, 
                 RAW_MULTILINE_STRING_LITERAL = 33, IDENTIFIER = 34, IMPLICIT_PARAMETER_NAME = 35, 
                 LPAREN = 36, RPAREN = 37, DOT = 38, LBRACE = 39, RBRACE = 40, 
                 OP = 41, NEWLINE = 42, STRING = 43
	}

	internal
	static let RULE_literal = 0, RULE_numericLiteral = 1, RULE_identifierList = 2, 
            RULE_identifier = 3, RULE_prog = 4, RULE_decl = 5, RULE_varDecl = 6, 
            RULE_funcDecl = 7, RULE_classDecl = 8, RULE_precedenceGroupDeclaration = 9, 
            RULE_precedenceGroupAttribute = 10, RULE_precedenceGroupRelation = 11, 
            RULE_precedenceGroupAssignment = 12, RULE_precedenceGroupAssociativity = 13, 
            RULE_precedenceGroupName = 14, RULE_stat = 15, RULE_expr = 16, 
            RULE_stringInterpolation = 17

	internal
	static let ruleNames: [String] = [
		"literal", "numericLiteral", "identifierList", "identifier", "prog", "decl", 
		"varDecl", "funcDecl", "classDecl", "precedenceGroupDeclaration", "precedenceGroupAttribute", 
		"precedenceGroupRelation", "precedenceGroupAssignment", "precedenceGroupAssociativity", 
		"precedenceGroupName", "stat", "expr", "stringInterpolation"
	]

	private static let _LITERAL_NAMES: [String?] = [
		nil, "'-'", "','", "'higherThan'", "'lowerThan'", "'assignment'", "'associativity'", 
		"'left'", "'right'", "'none'", "'var'", "';'", "'func'", "'class'", "'precedencegroup'", 
		"':'", nil, nil, nil, nil, nil, nil, nil, "'nil'", nil, nil, nil, nil, 
		nil, nil, nil, nil, nil, nil, nil, nil, "'('", "')'", "'.'", "'{'", "'}'"
	]
	private static let _SYMBOLIC_NAMES: [String?] = [
		nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, nil, 
		nil, nil, "NL", "WS", "COMMENT", "MULTILINE_COMMENT", "INTEGER_LITERAL", 
		"FLOATING_POINT_LITERAL", "BOOLEAN_LITERAL", "NIL_LITERAL", "STRING_LITERAL", 
		"MULTILINE_STRING_LITERAL", "STRING_INTERPOLATION_START", "STRING_INTERPOLATION_CONTINUE", 
		"STRING_INTERPOLATION_FINISH", "MULTILINE_STRING_INTERPOLATION_START", 
		"MULTILINE_STRING_INTERPOLATION_CONTINUE", "MULTILINE_STRING_INTERPOLATION_FINISH", 
		"RAW_STRING_LITERAL", "RAW_MULTILINE_STRING_LITERAL", "IDENTIFIER", "IMPLICIT_PARAMETER_NAME", 
		"LPAREN", "RPAREN", "DOT", "LBRACE", "RBRACE", "OP", "NEWLINE", "STRING"
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


	internal class LiteralContext: ParserRuleContext {
			internal
			func numericLiteral() -> NumericLiteralContext? {
				return getRuleContext(NumericLiteralContext.self, 0)
			}
			internal
			func STRING_LITERAL() -> TerminalNode? {
				return getToken(CherryParser.Tokens.STRING_LITERAL.rawValue, 0)
			}
			internal
			func BOOLEAN_LITERAL() -> TerminalNode? {
				return getToken(CherryParser.Tokens.BOOLEAN_LITERAL.rawValue, 0)
			}
			internal
			func NIL_LITERAL() -> TerminalNode? {
				return getToken(CherryParser.Tokens.NIL_LITERAL.rawValue, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return CherryParser.RULE_literal
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.enterLiteral(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.exitLiteral(self)
			}
		}
	}
	@discardableResult
	 internal func literal() throws -> LiteralContext {
		var _localctx: LiteralContext
		_localctx = LiteralContext(_ctx, getState())
		try enterRule(_localctx, 0, CherryParser.RULE_literal)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(40)
		 	try _errHandler.sync(self)
		 	switch (CherryParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .T__0:fallthrough
		 	case .INTEGER_LITERAL:fallthrough
		 	case .FLOATING_POINT_LITERAL:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(36)
		 		try numericLiteral()

		 		break

		 	case .STRING_LITERAL:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(37)
		 		try match(CherryParser.Tokens.STRING_LITERAL.rawValue)

		 		break

		 	case .BOOLEAN_LITERAL:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(38)
		 		try match(CherryParser.Tokens.BOOLEAN_LITERAL.rawValue)

		 		break

		 	case .NIL_LITERAL:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(39)
		 		try match(CherryParser.Tokens.NIL_LITERAL.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class NumericLiteralContext: ParserRuleContext {
			internal
			func INTEGER_LITERAL() -> TerminalNode? {
				return getToken(CherryParser.Tokens.INTEGER_LITERAL.rawValue, 0)
			}
			internal
			func FLOATING_POINT_LITERAL() -> TerminalNode? {
				return getToken(CherryParser.Tokens.FLOATING_POINT_LITERAL.rawValue, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return CherryParser.RULE_numericLiteral
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.enterNumericLiteral(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.exitNumericLiteral(self)
			}
		}
	}
	@discardableResult
	 internal func numericLiteral() throws -> NumericLiteralContext {
		var _localctx: NumericLiteralContext
		_localctx = NumericLiteralContext(_ctx, getState())
		try enterRule(_localctx, 2, CherryParser.RULE_numericLiteral)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(43)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if (_la == CherryParser.Tokens.T__0.rawValue) {
		 		setState(42)
		 		try match(CherryParser.Tokens.T__0.rawValue)

		 	}

		 	setState(45)
		 	_la = try _input.LA(1)
		 	if (!(_la == CherryParser.Tokens.INTEGER_LITERAL.rawValue || _la == CherryParser.Tokens.FLOATING_POINT_LITERAL.rawValue)) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class IdentifierListContext: ParserRuleContext {
			internal
			func identifier() -> [IdentifierContext] {
				return getRuleContexts(IdentifierContext.self)
			}
			internal
			func identifier(_ i: Int) -> IdentifierContext? {
				return getRuleContext(IdentifierContext.self, i)
			}
		override internal
		func getRuleIndex() -> Int {
			return CherryParser.RULE_identifierList
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.enterIdentifierList(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.exitIdentifierList(self)
			}
		}
	}
	@discardableResult
	 internal func identifierList() throws -> IdentifierListContext {
		var _localctx: IdentifierListContext
		_localctx = IdentifierListContext(_ctx, getState())
		try enterRule(_localctx, 4, CherryParser.RULE_identifierList)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(47)
		 	try identifier()
		 	setState(52)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == CherryParser.Tokens.T__1.rawValue) {
		 		setState(48)
		 		try match(CherryParser.Tokens.T__1.rawValue)
		 		setState(49)
		 		try identifier()


		 		setState(54)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class IdentifierContext: ParserRuleContext {
			internal
			func IDENTIFIER() -> TerminalNode? {
				return getToken(CherryParser.Tokens.IDENTIFIER.rawValue, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return CherryParser.RULE_identifier
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.enterIdentifier(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.exitIdentifier(self)
			}
		}
	}
	@discardableResult
	 internal func identifier() throws -> IdentifierContext {
		var _localctx: IdentifierContext
		_localctx = IdentifierContext(_ctx, getState())
		try enterRule(_localctx, 6, CherryParser.RULE_identifier)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(55)
		 	_la = try _input.LA(1)
		 	if (!((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 17179870200) != 0)) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class ProgContext: ParserRuleContext {
			internal
			func EOF() -> TerminalNode? {
				return getToken(CherryParser.Tokens.EOF.rawValue, 0)
			}
			internal
			func decl() -> [DeclContext] {
				return getRuleContexts(DeclContext.self)
			}
			internal
			func decl(_ i: Int) -> DeclContext? {
				return getRuleContext(DeclContext.self, i)
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
		try enterRule(_localctx, 8, CherryParser.RULE_prog)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(58) 
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	repeat {
		 		setState(57)
		 		try decl()


		 		setState(60); 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	} while ((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 29696) != 0)
		 	setState(62)
		 	try match(CherryParser.Tokens.EOF.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class DeclContext: ParserRuleContext {
			internal
			func varDecl() -> VarDeclContext? {
				return getRuleContext(VarDeclContext.self, 0)
			}
			internal
			func funcDecl() -> FuncDeclContext? {
				return getRuleContext(FuncDeclContext.self, 0)
			}
			internal
			func classDecl() -> ClassDeclContext? {
				return getRuleContext(ClassDeclContext.self, 0)
			}
			internal
			func precedenceGroupDeclaration() -> PrecedenceGroupDeclarationContext? {
				return getRuleContext(PrecedenceGroupDeclarationContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return CherryParser.RULE_decl
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.enterDecl(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.exitDecl(self)
			}
		}
	}
	@discardableResult
	 internal func decl() throws -> DeclContext {
		var _localctx: DeclContext
		_localctx = DeclContext(_ctx, getState())
		try enterRule(_localctx, 10, CherryParser.RULE_decl)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(68)
		 	try _errHandler.sync(self)
		 	switch (CherryParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .T__9:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(64)
		 		try varDecl()

		 		break

		 	case .T__11:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(65)
		 		try funcDecl()

		 		break

		 	case .T__12:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(66)
		 		try classDecl()

		 		break

		 	case .T__13:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(67)
		 		try precedenceGroupDeclaration()

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class VarDeclContext: ParserRuleContext {
			internal
			func identifier() -> IdentifierContext? {
				return getRuleContext(IdentifierContext.self, 0)
			}
			internal
			func NL() -> [TerminalNode] {
				return getTokens(CherryParser.Tokens.NL.rawValue)
			}
			internal
			func NL(_ i:Int) -> TerminalNode? {
				return getToken(CherryParser.Tokens.NL.rawValue, i)
			}
		override internal
		func getRuleIndex() -> Int {
			return CherryParser.RULE_varDecl
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.enterVarDecl(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.exitVarDecl(self)
			}
		}
	}
	@discardableResult
	 internal func varDecl() throws -> VarDeclContext {
		var _localctx: VarDeclContext
		_localctx = VarDeclContext(_ctx, getState())
		try enterRule(_localctx, 12, CherryParser.RULE_varDecl)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(70)
		 	try match(CherryParser.Tokens.T__9.rawValue)
		 	setState(71)
		 	try identifier()
		 	setState(78)
		 	try _errHandler.sync(self)
		 	switch (CherryParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .T__10:
		 		setState(72)
		 		try match(CherryParser.Tokens.T__10.rawValue)

		 		break

		 	case .NL:
		 		setState(74) 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		repeat {
		 			setState(73)
		 			try match(CherryParser.Tokens.NL.rawValue)


		 			setState(76); 
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		} while (_la == CherryParser.Tokens.NL.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class FuncDeclContext: ParserRuleContext {
			internal
			func identifier() -> IdentifierContext? {
				return getRuleContext(IdentifierContext.self, 0)
			}
			internal
			func NL() -> [TerminalNode] {
				return getTokens(CherryParser.Tokens.NL.rawValue)
			}
			internal
			func NL(_ i:Int) -> TerminalNode? {
				return getToken(CherryParser.Tokens.NL.rawValue, i)
			}
		override internal
		func getRuleIndex() -> Int {
			return CherryParser.RULE_funcDecl
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.enterFuncDecl(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.exitFuncDecl(self)
			}
		}
	}
	@discardableResult
	 internal func funcDecl() throws -> FuncDeclContext {
		var _localctx: FuncDeclContext
		_localctx = FuncDeclContext(_ctx, getState())
		try enterRule(_localctx, 14, CherryParser.RULE_funcDecl)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(80)
		 	try match(CherryParser.Tokens.T__11.rawValue)
		 	setState(81)
		 	try identifier()
		 	setState(88)
		 	try _errHandler.sync(self)
		 	switch (CherryParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .T__10:
		 		setState(82)
		 		try match(CherryParser.Tokens.T__10.rawValue)

		 		break

		 	case .NL:
		 		setState(84) 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		repeat {
		 			setState(83)
		 			try match(CherryParser.Tokens.NL.rawValue)


		 			setState(86); 
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		} while (_la == CherryParser.Tokens.NL.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class ClassDeclContext: ParserRuleContext {
			internal
			func identifier() -> IdentifierContext? {
				return getRuleContext(IdentifierContext.self, 0)
			}
			internal
			func NL() -> [TerminalNode] {
				return getTokens(CherryParser.Tokens.NL.rawValue)
			}
			internal
			func NL(_ i:Int) -> TerminalNode? {
				return getToken(CherryParser.Tokens.NL.rawValue, i)
			}
		override internal
		func getRuleIndex() -> Int {
			return CherryParser.RULE_classDecl
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.enterClassDecl(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.exitClassDecl(self)
			}
		}
	}
	@discardableResult
	 internal func classDecl() throws -> ClassDeclContext {
		var _localctx: ClassDeclContext
		_localctx = ClassDeclContext(_ctx, getState())
		try enterRule(_localctx, 16, CherryParser.RULE_classDecl)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(90)
		 	try match(CherryParser.Tokens.T__12.rawValue)
		 	setState(91)
		 	try identifier()
		 	setState(98)
		 	try _errHandler.sync(self)
		 	switch (CherryParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .T__10:
		 		setState(92)
		 		try match(CherryParser.Tokens.T__10.rawValue)

		 		break

		 	case .NL:
		 		setState(94) 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		repeat {
		 			setState(93)
		 			try match(CherryParser.Tokens.NL.rawValue)


		 			setState(96); 
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		} while (_la == CherryParser.Tokens.NL.rawValue)

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class PrecedenceGroupDeclarationContext: ParserRuleContext {
			internal
			func precedenceGroupName() -> PrecedenceGroupNameContext? {
				return getRuleContext(PrecedenceGroupNameContext.self, 0)
			}
			internal
			func LBRACE() -> TerminalNode? {
				return getToken(CherryParser.Tokens.LBRACE.rawValue, 0)
			}
			internal
			func RBRACE() -> TerminalNode? {
				return getToken(CherryParser.Tokens.RBRACE.rawValue, 0)
			}
			internal
			func NL() -> [TerminalNode] {
				return getTokens(CherryParser.Tokens.NL.rawValue)
			}
			internal
			func NL(_ i:Int) -> TerminalNode? {
				return getToken(CherryParser.Tokens.NL.rawValue, i)
			}
			internal
			func precedenceGroupAttribute() -> [PrecedenceGroupAttributeContext] {
				return getRuleContexts(PrecedenceGroupAttributeContext.self)
			}
			internal
			func precedenceGroupAttribute(_ i: Int) -> PrecedenceGroupAttributeContext? {
				return getRuleContext(PrecedenceGroupAttributeContext.self, i)
			}
		override internal
		func getRuleIndex() -> Int {
			return CherryParser.RULE_precedenceGroupDeclaration
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.enterPrecedenceGroupDeclaration(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.exitPrecedenceGroupDeclaration(self)
			}
		}
	}
	@discardableResult
	 internal func precedenceGroupDeclaration() throws -> PrecedenceGroupDeclarationContext {
		var _localctx: PrecedenceGroupDeclarationContext
		_localctx = PrecedenceGroupDeclarationContext(_ctx, getState())
		try enterRule(_localctx, 18, CherryParser.RULE_precedenceGroupDeclaration)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(100)
		 	try match(CherryParser.Tokens.T__13.rawValue)
		 	setState(101)
		 	try precedenceGroupName()
		 	setState(102)
		 	try match(CherryParser.Tokens.LBRACE.rawValue)
		 	setState(106)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == CherryParser.Tokens.NL.rawValue) {
		 		setState(103)
		 		try match(CherryParser.Tokens.NL.rawValue)


		 		setState(108)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(117)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while ((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 120) != 0) {
		 		setState(109)
		 		try precedenceGroupAttribute()
		 		setState(111) 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		repeat {
		 			setState(110)
		 			_la = try _input.LA(1)
		 			if (!(_la == CherryParser.Tokens.T__10.rawValue || _la == CherryParser.Tokens.NL.rawValue)) {
		 			try _errHandler.recoverInline(self)
		 			}
		 			else {
		 				_errHandler.reportMatch(self)
		 				try consume()
		 			}


		 			setState(113); 
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		} while (_la == CherryParser.Tokens.T__10.rawValue || _la == CherryParser.Tokens.NL.rawValue)


		 		setState(119)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(120)
		 	try match(CherryParser.Tokens.RBRACE.rawValue)
		 	setState(124)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == CherryParser.Tokens.NL.rawValue) {
		 		setState(121)
		 		try match(CherryParser.Tokens.NL.rawValue)


		 		setState(126)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class PrecedenceGroupAttributeContext: ParserRuleContext {
			internal
			func precedenceGroupRelation() -> PrecedenceGroupRelationContext? {
				return getRuleContext(PrecedenceGroupRelationContext.self, 0)
			}
			internal
			func precedenceGroupAssignment() -> PrecedenceGroupAssignmentContext? {
				return getRuleContext(PrecedenceGroupAssignmentContext.self, 0)
			}
			internal
			func precedenceGroupAssociativity() -> PrecedenceGroupAssociativityContext? {
				return getRuleContext(PrecedenceGroupAssociativityContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return CherryParser.RULE_precedenceGroupAttribute
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.enterPrecedenceGroupAttribute(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.exitPrecedenceGroupAttribute(self)
			}
		}
	}
	@discardableResult
	 internal func precedenceGroupAttribute() throws -> PrecedenceGroupAttributeContext {
		var _localctx: PrecedenceGroupAttributeContext
		_localctx = PrecedenceGroupAttributeContext(_ctx, getState())
		try enterRule(_localctx, 20, CherryParser.RULE_precedenceGroupAttribute)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(130)
		 	try _errHandler.sync(self)
		 	switch (CherryParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .T__2:fallthrough
		 	case .T__3:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(127)
		 		try precedenceGroupRelation()

		 		break

		 	case .T__4:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(128)
		 		try precedenceGroupAssignment()

		 		break

		 	case .T__5:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(129)
		 		try precedenceGroupAssociativity()

		 		break
		 	default:
		 		throw ANTLRException.recognition(e: NoViableAltException(self))
		 	}
		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class PrecedenceGroupRelationContext: ParserRuleContext {
		internal var op: Token!
			internal
			func precedenceGroupName() -> [PrecedenceGroupNameContext] {
				return getRuleContexts(PrecedenceGroupNameContext.self)
			}
			internal
			func precedenceGroupName(_ i: Int) -> PrecedenceGroupNameContext? {
				return getRuleContext(PrecedenceGroupNameContext.self, i)
			}
		override internal
		func getRuleIndex() -> Int {
			return CherryParser.RULE_precedenceGroupRelation
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.enterPrecedenceGroupRelation(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.exitPrecedenceGroupRelation(self)
			}
		}
	}
	@discardableResult
	 internal func precedenceGroupRelation() throws -> PrecedenceGroupRelationContext {
		var _localctx: PrecedenceGroupRelationContext
		_localctx = PrecedenceGroupRelationContext(_ctx, getState())
		try enterRule(_localctx, 22, CherryParser.RULE_precedenceGroupRelation)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(132)
		 	_localctx.castdown(PrecedenceGroupRelationContext.self).op = try _input.LT(1)
		 	_la = try _input.LA(1)
		 	if (!(_la == CherryParser.Tokens.T__2.rawValue || _la == CherryParser.Tokens.T__3.rawValue)) {
		 		_localctx.castdown(PrecedenceGroupRelationContext.self).op = try _errHandler.recoverInline(self) as Token
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}
		 	setState(133)
		 	try match(CherryParser.Tokens.T__14.rawValue)
		 	setState(134)
		 	try precedenceGroupName()
		 	setState(139)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == CherryParser.Tokens.T__1.rawValue) {
		 		setState(135)
		 		try match(CherryParser.Tokens.T__1.rawValue)
		 		setState(136)
		 		try precedenceGroupName()


		 		setState(141)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class PrecedenceGroupAssignmentContext: ParserRuleContext {
			internal
			func BOOLEAN_LITERAL() -> TerminalNode? {
				return getToken(CherryParser.Tokens.BOOLEAN_LITERAL.rawValue, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return CherryParser.RULE_precedenceGroupAssignment
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.enterPrecedenceGroupAssignment(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.exitPrecedenceGroupAssignment(self)
			}
		}
	}
	@discardableResult
	 internal func precedenceGroupAssignment() throws -> PrecedenceGroupAssignmentContext {
		var _localctx: PrecedenceGroupAssignmentContext
		_localctx = PrecedenceGroupAssignmentContext(_ctx, getState())
		try enterRule(_localctx, 24, CherryParser.RULE_precedenceGroupAssignment)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(142)
		 	try match(CherryParser.Tokens.T__4.rawValue)
		 	setState(143)
		 	try match(CherryParser.Tokens.T__14.rawValue)
		 	setState(144)
		 	try match(CherryParser.Tokens.BOOLEAN_LITERAL.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class PrecedenceGroupAssociativityContext: ParserRuleContext {
		internal var value: Token!
		override internal
		func getRuleIndex() -> Int {
			return CherryParser.RULE_precedenceGroupAssociativity
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.enterPrecedenceGroupAssociativity(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.exitPrecedenceGroupAssociativity(self)
			}
		}
	}
	@discardableResult
	 internal func precedenceGroupAssociativity() throws -> PrecedenceGroupAssociativityContext {
		var _localctx: PrecedenceGroupAssociativityContext
		_localctx = PrecedenceGroupAssociativityContext(_ctx, getState())
		try enterRule(_localctx, 26, CherryParser.RULE_precedenceGroupAssociativity)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(146)
		 	try match(CherryParser.Tokens.T__5.rawValue)
		 	setState(147)
		 	try match(CherryParser.Tokens.T__14.rawValue)
		 	setState(148)
		 	_localctx.castdown(PrecedenceGroupAssociativityContext.self).value = try _input.LT(1)
		 	_la = try _input.LA(1)
		 	if (!((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 896) != 0)) {
		 		_localctx.castdown(PrecedenceGroupAssociativityContext.self).value = try _errHandler.recoverInline(self) as Token
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class PrecedenceGroupNameContext: ParserRuleContext {
			internal
			func identifier() -> IdentifierContext? {
				return getRuleContext(IdentifierContext.self, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return CherryParser.RULE_precedenceGroupName
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.enterPrecedenceGroupName(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryListener {
				listener.exitPrecedenceGroupName(self)
			}
		}
	}
	@discardableResult
	 internal func precedenceGroupName() throws -> PrecedenceGroupNameContext {
		var _localctx: PrecedenceGroupNameContext
		_localctx = PrecedenceGroupNameContext(_ctx, getState())
		try enterRule(_localctx, 28, CherryParser.RULE_precedenceGroupName)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(150)
		 	try identifier()

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
		try enterRule(_localctx, 30, CherryParser.RULE_stat)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(153)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if ((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 8882091983866) != 0) {
		 		setState(152)
		 		try expr(0)

		 	}

		 	setState(155)
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
			func literal() -> LiteralContext? {
				return getRuleContext(LiteralContext.self, 0)
			}
			internal
			func identifier() -> IdentifierContext? {
				return getRuleContext(IdentifierContext.self, 0)
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
		let _startState: Int = 32
		try enterRecursionRule(_localctx, 32, CherryParser.RULE_expr, _p)
		defer {
	    		try! unrollRecursionContexts(_parentctx)
	    }
		do {
			var _alt: Int
			try enterOuterAlt(_localctx, 1)
			setState(166)
			try _errHandler.sync(self)
			switch (CherryParser.Tokens(rawValue: try _input.LA(1))!) {
			case .T__0:fallthrough
			case .INTEGER_LITERAL:fallthrough
			case .FLOATING_POINT_LITERAL:fallthrough
			case .BOOLEAN_LITERAL:fallthrough
			case .NIL_LITERAL:fallthrough
			case .STRING_LITERAL:
				setState(158)
				try literal()

				break
			case .T__2:fallthrough
			case .T__3:fallthrough
			case .T__4:fallthrough
			case .T__5:fallthrough
			case .T__6:fallthrough
			case .T__7:fallthrough
			case .T__8:fallthrough
			case .IDENTIFIER:
				setState(159)
				try identifier()

				break

			case .STRING:
				setState(160)
				try match(CherryParser.Tokens.STRING.rawValue)

				break

			case .STRING_INTERPOLATION_START:
				setState(161)
				try stringInterpolation()

				break

			case .LPAREN:
				setState(162)
				try match(CherryParser.Tokens.LPAREN.rawValue)
				setState(163)
				try expr(0)
				setState(164)
				try match(CherryParser.Tokens.RPAREN.rawValue)

				break
			default:
				throw ANTLRException.recognition(e: NoViableAltException(self))
			}
			_ctx!.stop = try _input.LT(-1)
			setState(179)
			try _errHandler.sync(self)
			_alt = try getInterpreter().adaptivePredict(_input,20,_ctx)
			while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
				if ( _alt==1 ) {
					if _parseListeners != nil {
					   try triggerExitRuleEvent()
					}
					_prevctx = _localctx
					setState(177)
					try _errHandler.sync(self)
					switch(try getInterpreter().adaptivePredict(_input,19, _ctx)) {
					case 1:
						_localctx = ExprContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, CherryParser.RULE_expr)
						setState(168)
						if (!(precpred(_ctx, 7))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 7)"))
						}
						setState(169)
						try match(CherryParser.Tokens.OP.rawValue)
						setState(170)
						try expr(8)

						break
					case 2:
						_localctx = ExprContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, CherryParser.RULE_expr)
						setState(171)
						if (!(precpred(_ctx, 1))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 1)"))
						}
						setState(172)
						try match(CherryParser.Tokens.LBRACE.rawValue)
						setState(173)
						try expr(0)
						setState(174)
						try match(CherryParser.Tokens.RBRACE.rawValue)
						setState(175)
						try expr(2)

						break
					default: break
					}
			 
				}
				setState(181)
				try _errHandler.sync(self)
				_alt = try getInterpreter().adaptivePredict(_input,20,_ctx)
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
		try enterRule(_localctx, 34, CherryParser.RULE_stringInterpolation)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(182)
		 	try match(CherryParser.Tokens.STRING_INTERPOLATION_START.rawValue)
		 	setState(183)
		 	try expr(0)
		 	setState(188)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == CherryParser.Tokens.STRING_INTERPOLATION_CONTINUE.rawValue) {
		 		setState(184)
		 		try match(CherryParser.Tokens.STRING_INTERPOLATION_CONTINUE.rawValue)
		 		setState(185)
		 		try expr(0)


		 		setState(190)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(191)
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
		case  16:
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
		4,1,43,194,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,2,7,
		7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,14,7,14,
		2,15,7,15,2,16,7,16,2,17,7,17,1,0,1,0,1,0,1,0,3,0,41,8,0,1,1,3,1,44,8,
		1,1,1,1,1,1,2,1,2,1,2,5,2,51,8,2,10,2,12,2,54,9,2,1,3,1,3,1,4,4,4,59,8,
		4,11,4,12,4,60,1,4,1,4,1,5,1,5,1,5,1,5,3,5,69,8,5,1,6,1,6,1,6,1,6,4,6,
		75,8,6,11,6,12,6,76,3,6,79,8,6,1,7,1,7,1,7,1,7,4,7,85,8,7,11,7,12,7,86,
		3,7,89,8,7,1,8,1,8,1,8,1,8,4,8,95,8,8,11,8,12,8,96,3,8,99,8,8,1,9,1,9,
		1,9,1,9,5,9,105,8,9,10,9,12,9,108,9,9,1,9,1,9,4,9,112,8,9,11,9,12,9,113,
		5,9,116,8,9,10,9,12,9,119,9,9,1,9,1,9,5,9,123,8,9,10,9,12,9,126,9,9,1,
		10,1,10,1,10,3,10,131,8,10,1,11,1,11,1,11,1,11,1,11,5,11,138,8,11,10,11,
		12,11,141,9,11,1,12,1,12,1,12,1,12,1,13,1,13,1,13,1,13,1,14,1,14,1,15,
		3,15,154,8,15,1,15,1,15,1,16,1,16,1,16,1,16,1,16,1,16,1,16,1,16,1,16,3,
		16,167,8,16,1,16,1,16,1,16,1,16,1,16,1,16,1,16,1,16,1,16,5,16,178,8,16,
		10,16,12,16,181,9,16,1,17,1,17,1,17,1,17,5,17,187,8,17,10,17,12,17,190,
		9,17,1,17,1,17,1,17,0,1,32,18,0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,
		30,32,34,0,5,1,0,20,21,2,0,3,9,34,34,2,0,11,11,16,16,1,0,3,4,1,0,7,9,205,
		0,40,1,0,0,0,2,43,1,0,0,0,4,47,1,0,0,0,6,55,1,0,0,0,8,58,1,0,0,0,10,68,
		1,0,0,0,12,70,1,0,0,0,14,80,1,0,0,0,16,90,1,0,0,0,18,100,1,0,0,0,20,130,
		1,0,0,0,22,132,1,0,0,0,24,142,1,0,0,0,26,146,1,0,0,0,28,150,1,0,0,0,30,
		153,1,0,0,0,32,166,1,0,0,0,34,182,1,0,0,0,36,41,3,2,1,0,37,41,5,24,0,0,
		38,41,5,22,0,0,39,41,5,23,0,0,40,36,1,0,0,0,40,37,1,0,0,0,40,38,1,0,0,
		0,40,39,1,0,0,0,41,1,1,0,0,0,42,44,5,1,0,0,43,42,1,0,0,0,43,44,1,0,0,0,
		44,45,1,0,0,0,45,46,7,0,0,0,46,3,1,0,0,0,47,52,3,6,3,0,48,49,5,2,0,0,49,
		51,3,6,3,0,50,48,1,0,0,0,51,54,1,0,0,0,52,50,1,0,0,0,52,53,1,0,0,0,53,
		5,1,0,0,0,54,52,1,0,0,0,55,56,7,1,0,0,56,7,1,0,0,0,57,59,3,10,5,0,58,57,
		1,0,0,0,59,60,1,0,0,0,60,58,1,0,0,0,60,61,1,0,0,0,61,62,1,0,0,0,62,63,
		5,0,0,1,63,9,1,0,0,0,64,69,3,12,6,0,65,69,3,14,7,0,66,69,3,16,8,0,67,69,
		3,18,9,0,68,64,1,0,0,0,68,65,1,0,0,0,68,66,1,0,0,0,68,67,1,0,0,0,69,11,
		1,0,0,0,70,71,5,10,0,0,71,78,3,6,3,0,72,79,5,11,0,0,73,75,5,16,0,0,74,
		73,1,0,0,0,75,76,1,0,0,0,76,74,1,0,0,0,76,77,1,0,0,0,77,79,1,0,0,0,78,
		72,1,0,0,0,78,74,1,0,0,0,79,13,1,0,0,0,80,81,5,12,0,0,81,88,3,6,3,0,82,
		89,5,11,0,0,83,85,5,16,0,0,84,83,1,0,0,0,85,86,1,0,0,0,86,84,1,0,0,0,86,
		87,1,0,0,0,87,89,1,0,0,0,88,82,1,0,0,0,88,84,1,0,0,0,89,15,1,0,0,0,90,
		91,5,13,0,0,91,98,3,6,3,0,92,99,5,11,0,0,93,95,5,16,0,0,94,93,1,0,0,0,
		95,96,1,0,0,0,96,94,1,0,0,0,96,97,1,0,0,0,97,99,1,0,0,0,98,92,1,0,0,0,
		98,94,1,0,0,0,99,17,1,0,0,0,100,101,5,14,0,0,101,102,3,28,14,0,102,106,
		5,39,0,0,103,105,5,16,0,0,104,103,1,0,0,0,105,108,1,0,0,0,106,104,1,0,
		0,0,106,107,1,0,0,0,107,117,1,0,0,0,108,106,1,0,0,0,109,111,3,20,10,0,
		110,112,7,2,0,0,111,110,1,0,0,0,112,113,1,0,0,0,113,111,1,0,0,0,113,114,
		1,0,0,0,114,116,1,0,0,0,115,109,1,0,0,0,116,119,1,0,0,0,117,115,1,0,0,
		0,117,118,1,0,0,0,118,120,1,0,0,0,119,117,1,0,0,0,120,124,5,40,0,0,121,
		123,5,16,0,0,122,121,1,0,0,0,123,126,1,0,0,0,124,122,1,0,0,0,124,125,1,
		0,0,0,125,19,1,0,0,0,126,124,1,0,0,0,127,131,3,22,11,0,128,131,3,24,12,
		0,129,131,3,26,13,0,130,127,1,0,0,0,130,128,1,0,0,0,130,129,1,0,0,0,131,
		21,1,0,0,0,132,133,7,3,0,0,133,134,5,15,0,0,134,139,3,28,14,0,135,136,
		5,2,0,0,136,138,3,28,14,0,137,135,1,0,0,0,138,141,1,0,0,0,139,137,1,0,
		0,0,139,140,1,0,0,0,140,23,1,0,0,0,141,139,1,0,0,0,142,143,5,5,0,0,143,
		144,5,15,0,0,144,145,5,22,0,0,145,25,1,0,0,0,146,147,5,6,0,0,147,148,5,
		15,0,0,148,149,7,4,0,0,149,27,1,0,0,0,150,151,3,6,3,0,151,29,1,0,0,0,152,
		154,3,32,16,0,153,152,1,0,0,0,153,154,1,0,0,0,154,155,1,0,0,0,155,156,
		5,42,0,0,156,31,1,0,0,0,157,158,6,16,-1,0,158,167,3,0,0,0,159,167,3,6,
		3,0,160,167,5,43,0,0,161,167,3,34,17,0,162,163,5,36,0,0,163,164,3,32,16,
		0,164,165,5,37,0,0,165,167,1,0,0,0,166,157,1,0,0,0,166,159,1,0,0,0,166,
		160,1,0,0,0,166,161,1,0,0,0,166,162,1,0,0,0,167,179,1,0,0,0,168,169,10,
		7,0,0,169,170,5,41,0,0,170,178,3,32,16,8,171,172,10,1,0,0,172,173,5,39,
		0,0,173,174,3,32,16,0,174,175,5,40,0,0,175,176,3,32,16,2,176,178,1,0,0,
		0,177,168,1,0,0,0,177,171,1,0,0,0,178,181,1,0,0,0,179,177,1,0,0,0,179,
		180,1,0,0,0,180,33,1,0,0,0,181,179,1,0,0,0,182,183,5,26,0,0,183,188,3,
		32,16,0,184,185,5,27,0,0,185,187,3,32,16,0,186,184,1,0,0,0,187,190,1,0,
		0,0,188,186,1,0,0,0,188,189,1,0,0,0,189,191,1,0,0,0,190,188,1,0,0,0,191,
		192,5,28,0,0,192,35,1,0,0,0,22,40,43,52,60,68,76,78,86,88,96,98,106,113,
		117,124,130,139,153,166,177,179,188
	]

	internal
	static let _ATN = try! ATNDeserializer().deserialize(_serializedATN)
}