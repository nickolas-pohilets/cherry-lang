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
		case EOF = -1, NL = 1, WS = 2, COMMENT = 3, MULTILINE_COMMENT = 4, KW_VAR = 5, 
                 KW_FUNC = 6, KW_CLASS = 7, KW_PRECEDENCE_GROUP = 8, CKW_HIGHER_THAN = 9, 
                 CKW_LOWER_THAN = 10, CKW_ASSIGNMENT = 11, CWK_ASSOCIATIVITY = 12, 
                 CWK_ASSOCIATIVITY_VALUE = 13, INTEGER_LITERAL = 14, FLOATING_POINT_LITERAL = 15, 
                 BOOLEAN_LITERAL = 16, NIL_LITERAL = 17, STRING_LITERAL = 18, 
                 MULTILINE_STRING_LITERAL = 19, STRING_INTERPOLATION_START = 20, 
                 STRING_INTERPOLATION_CONTINUE = 21, STRING_INTERPOLATION_FINISH = 22, 
                 MULTILINE_STRING_INTERPOLATION_START = 23, MULTILINE_STRING_INTERPOLATION_CONTINUE = 24, 
                 MULTILINE_STRING_INTERPOLATION_FINISH = 25, RAW_STRING_LITERAL = 26, 
                 RAW_MULTILINE_STRING_LITERAL = 27, IDENTIFIER = 28, IMPLICIT_PARAMETER_NAME = 29, 
                 LPAREN = 30, RPAREN = 31, DOT = 32, COMA = 33, COLON = 34, 
                 SEMICOLON = 35, LBRACE = 36, RBRACE = 37, MINUS = 38, OP = 39
	}

	internal
	static let RULE_literal = 0, RULE_numericLiteral = 1, RULE_identifierList = 2, 
            RULE_identifier = 3, RULE_prog = 4, RULE_decl = 5, RULE_varDecl = 6, 
            RULE_funcDecl = 7, RULE_classDecl = 8, RULE_precedenceGroupDeclaration = 9, 
            RULE_precedenceGroupAttribute = 10, RULE_precedenceGroupRelation = 11, 
            RULE_precedenceGroupAssignment = 12, RULE_precedenceGroupAssociativity = 13, 
            RULE_precedenceGroupName = 14, RULE_stat = 15, RULE_expr = 16, 
            RULE_stringInterpolation = 17, RULE_lbrace = 18, RULE_rbrace = 19, 
            RULE_semicolon = 20, RULE_coma = 21

	internal
	static let ruleNames: [String] = [
		"literal", "numericLiteral", "identifierList", "identifier", "prog", "decl", 
		"varDecl", "funcDecl", "classDecl", "precedenceGroupDeclaration", "precedenceGroupAttribute", 
		"precedenceGroupRelation", "precedenceGroupAssignment", "precedenceGroupAssociativity", 
		"precedenceGroupName", "stat", "expr", "stringInterpolation", "lbrace", 
		"rbrace", "semicolon", "coma"
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
			if let listener = listener as? CherryParserListener {
				listener.enterLiteral(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
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
		 	setState(48)
		 	try _errHandler.sync(self)
		 	switch (CherryParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .INTEGER_LITERAL:fallthrough
		 	case .FLOATING_POINT_LITERAL:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(44)
		 		try numericLiteral()

		 		break

		 	case .STRING_LITERAL:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(45)
		 		try match(CherryParser.Tokens.STRING_LITERAL.rawValue)

		 		break

		 	case .BOOLEAN_LITERAL:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(46)
		 		try match(CherryParser.Tokens.BOOLEAN_LITERAL.rawValue)

		 		break

		 	case .NIL_LITERAL:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(47)
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
			if let listener = listener as? CherryParserListener {
				listener.enterNumericLiteral(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
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
		 	setState(50)
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
			internal
			func COMA() -> [TerminalNode] {
				return getTokens(CherryParser.Tokens.COMA.rawValue)
			}
			internal
			func COMA(_ i:Int) -> TerminalNode? {
				return getToken(CherryParser.Tokens.COMA.rawValue, i)
			}
		override internal
		func getRuleIndex() -> Int {
			return CherryParser.RULE_identifierList
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
				listener.enterIdentifierList(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
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
		 	setState(52)
		 	try identifier()
		 	setState(57)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == CherryParser.Tokens.COMA.rawValue) {
		 		setState(53)
		 		try match(CherryParser.Tokens.COMA.rawValue)
		 		setState(54)
		 		try identifier()


		 		setState(59)
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
			internal
			func CKW_HIGHER_THAN() -> TerminalNode? {
				return getToken(CherryParser.Tokens.CKW_HIGHER_THAN.rawValue, 0)
			}
			internal
			func CKW_LOWER_THAN() -> TerminalNode? {
				return getToken(CherryParser.Tokens.CKW_LOWER_THAN.rawValue, 0)
			}
			internal
			func CKW_ASSIGNMENT() -> TerminalNode? {
				return getToken(CherryParser.Tokens.CKW_ASSIGNMENT.rawValue, 0)
			}
			internal
			func CWK_ASSOCIATIVITY() -> TerminalNode? {
				return getToken(CherryParser.Tokens.CWK_ASSOCIATIVITY.rawValue, 0)
			}
			internal
			func CWK_ASSOCIATIVITY_VALUE() -> TerminalNode? {
				return getToken(CherryParser.Tokens.CWK_ASSOCIATIVITY_VALUE.rawValue, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return CherryParser.RULE_identifier
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
				listener.enterIdentifier(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
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
		 	setState(60)
		 	_la = try _input.LA(1)
		 	if (!((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 268451328) != 0)) {
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
			if let listener = listener as? CherryParserListener {
				listener.enterProg(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
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
		 	setState(63) 
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	repeat {
		 		setState(62)
		 		try decl()


		 		setState(65); 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	} while ((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 480) != 0)
		 	setState(67)
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
			if let listener = listener as? CherryParserListener {
				listener.enterDecl(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
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
		 	setState(73)
		 	try _errHandler.sync(self)
		 	switch (CherryParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .KW_VAR:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(69)
		 		try varDecl()

		 		break

		 	case .KW_FUNC:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(70)
		 		try funcDecl()

		 		break

		 	case .KW_CLASS:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(71)
		 		try classDecl()

		 		break

		 	case .KW_PRECEDENCE_GROUP:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(72)
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
			func KW_VAR() -> TerminalNode? {
				return getToken(CherryParser.Tokens.KW_VAR.rawValue, 0)
			}
			internal
			func identifier() -> IdentifierContext? {
				return getRuleContext(IdentifierContext.self, 0)
			}
			internal
			func SEMICOLON() -> TerminalNode? {
				return getToken(CherryParser.Tokens.SEMICOLON.rawValue, 0)
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
			if let listener = listener as? CherryParserListener {
				listener.enterVarDecl(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
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
		 	setState(75)
		 	try match(CherryParser.Tokens.KW_VAR.rawValue)
		 	setState(76)
		 	try identifier()
		 	setState(83)
		 	try _errHandler.sync(self)
		 	switch (CherryParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .SEMICOLON:
		 		setState(77)
		 		try match(CherryParser.Tokens.SEMICOLON.rawValue)

		 		break

		 	case .NL:
		 		setState(79) 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		repeat {
		 			setState(78)
		 			try match(CherryParser.Tokens.NL.rawValue)


		 			setState(81); 
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
			func KW_FUNC() -> TerminalNode? {
				return getToken(CherryParser.Tokens.KW_FUNC.rawValue, 0)
			}
			internal
			func identifier() -> IdentifierContext? {
				return getRuleContext(IdentifierContext.self, 0)
			}
			internal
			func SEMICOLON() -> TerminalNode? {
				return getToken(CherryParser.Tokens.SEMICOLON.rawValue, 0)
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
			if let listener = listener as? CherryParserListener {
				listener.enterFuncDecl(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
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
		 	setState(85)
		 	try match(CherryParser.Tokens.KW_FUNC.rawValue)
		 	setState(86)
		 	try identifier()
		 	setState(93)
		 	try _errHandler.sync(self)
		 	switch (CherryParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .SEMICOLON:
		 		setState(87)
		 		try match(CherryParser.Tokens.SEMICOLON.rawValue)

		 		break

		 	case .NL:
		 		setState(89) 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		repeat {
		 			setState(88)
		 			try match(CherryParser.Tokens.NL.rawValue)


		 			setState(91); 
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
			func KW_CLASS() -> TerminalNode? {
				return getToken(CherryParser.Tokens.KW_CLASS.rawValue, 0)
			}
			internal
			func identifier() -> IdentifierContext? {
				return getRuleContext(IdentifierContext.self, 0)
			}
			internal
			func SEMICOLON() -> TerminalNode? {
				return getToken(CherryParser.Tokens.SEMICOLON.rawValue, 0)
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
			if let listener = listener as? CherryParserListener {
				listener.enterClassDecl(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
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
		 	setState(95)
		 	try match(CherryParser.Tokens.KW_CLASS.rawValue)
		 	setState(96)
		 	try identifier()
		 	setState(103)
		 	try _errHandler.sync(self)
		 	switch (CherryParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .SEMICOLON:
		 		setState(97)
		 		try match(CherryParser.Tokens.SEMICOLON.rawValue)

		 		break

		 	case .NL:
		 		setState(99) 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		repeat {
		 			setState(98)
		 			try match(CherryParser.Tokens.NL.rawValue)


		 			setState(101); 
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
			func KW_PRECEDENCE_GROUP() -> TerminalNode? {
				return getToken(CherryParser.Tokens.KW_PRECEDENCE_GROUP.rawValue, 0)
			}
			internal
			func precedenceGroupName() -> PrecedenceGroupNameContext? {
				return getRuleContext(PrecedenceGroupNameContext.self, 0)
			}
			internal
			func lbrace() -> LbraceContext? {
				return getRuleContext(LbraceContext.self, 0)
			}
			internal
			func rbrace() -> RbraceContext? {
				return getRuleContext(RbraceContext.self, 0)
			}
			internal
			func precedenceGroupAttribute() -> [PrecedenceGroupAttributeContext] {
				return getRuleContexts(PrecedenceGroupAttributeContext.self)
			}
			internal
			func precedenceGroupAttribute(_ i: Int) -> PrecedenceGroupAttributeContext? {
				return getRuleContext(PrecedenceGroupAttributeContext.self, i)
			}
			internal
			func semicolon() -> [SemicolonContext] {
				return getRuleContexts(SemicolonContext.self)
			}
			internal
			func semicolon(_ i: Int) -> SemicolonContext? {
				return getRuleContext(SemicolonContext.self, i)
			}
		override internal
		func getRuleIndex() -> Int {
			return CherryParser.RULE_precedenceGroupDeclaration
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
				listener.enterPrecedenceGroupDeclaration(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
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
		 	setState(105)
		 	try match(CherryParser.Tokens.KW_PRECEDENCE_GROUP.rawValue)
		 	setState(106)
		 	try precedenceGroupName()
		 	setState(107)
		 	try lbrace()
		 	setState(113)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while ((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 7680) != 0) {
		 		setState(108)
		 		try precedenceGroupAttribute()
		 		setState(109)
		 		try semicolon()


		 		setState(115)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(116)
		 	try rbrace()

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
			if let listener = listener as? CherryParserListener {
				listener.enterPrecedenceGroupAttribute(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
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
		 	setState(121)
		 	try _errHandler.sync(self)
		 	switch (CherryParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .CKW_HIGHER_THAN:fallthrough
		 	case .CKW_LOWER_THAN:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(118)
		 		try precedenceGroupRelation()

		 		break

		 	case .CKW_ASSIGNMENT:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(119)
		 		try precedenceGroupAssignment()

		 		break

		 	case .CWK_ASSOCIATIVITY:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(120)
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
			func COLON() -> TerminalNode? {
				return getToken(CherryParser.Tokens.COLON.rawValue, 0)
			}
			internal
			func precedenceGroupName() -> [PrecedenceGroupNameContext] {
				return getRuleContexts(PrecedenceGroupNameContext.self)
			}
			internal
			func precedenceGroupName(_ i: Int) -> PrecedenceGroupNameContext? {
				return getRuleContext(PrecedenceGroupNameContext.self, i)
			}
			internal
			func CKW_HIGHER_THAN() -> TerminalNode? {
				return getToken(CherryParser.Tokens.CKW_HIGHER_THAN.rawValue, 0)
			}
			internal
			func CKW_LOWER_THAN() -> TerminalNode? {
				return getToken(CherryParser.Tokens.CKW_LOWER_THAN.rawValue, 0)
			}
			internal
			func COMA() -> [TerminalNode] {
				return getTokens(CherryParser.Tokens.COMA.rawValue)
			}
			internal
			func COMA(_ i:Int) -> TerminalNode? {
				return getToken(CherryParser.Tokens.COMA.rawValue, i)
			}
		override internal
		func getRuleIndex() -> Int {
			return CherryParser.RULE_precedenceGroupRelation
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
				listener.enterPrecedenceGroupRelation(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
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
		 	setState(123)
		 	_localctx.castdown(PrecedenceGroupRelationContext.self).op = try _input.LT(1)
		 	_la = try _input.LA(1)
		 	if (!(_la == CherryParser.Tokens.CKW_HIGHER_THAN.rawValue || _la == CherryParser.Tokens.CKW_LOWER_THAN.rawValue)) {
		 		_localctx.castdown(PrecedenceGroupRelationContext.self).op = try _errHandler.recoverInline(self) as Token
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}
		 	setState(124)
		 	try match(CherryParser.Tokens.COLON.rawValue)
		 	setState(125)
		 	try precedenceGroupName()
		 	setState(130)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == CherryParser.Tokens.COMA.rawValue) {
		 		setState(126)
		 		try match(CherryParser.Tokens.COMA.rawValue)
		 		setState(127)
		 		try precedenceGroupName()


		 		setState(132)
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
			func CKW_ASSIGNMENT() -> TerminalNode? {
				return getToken(CherryParser.Tokens.CKW_ASSIGNMENT.rawValue, 0)
			}
			internal
			func COLON() -> TerminalNode? {
				return getToken(CherryParser.Tokens.COLON.rawValue, 0)
			}
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
			if let listener = listener as? CherryParserListener {
				listener.enterPrecedenceGroupAssignment(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
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
		 	setState(133)
		 	try match(CherryParser.Tokens.CKW_ASSIGNMENT.rawValue)
		 	setState(134)
		 	try match(CherryParser.Tokens.COLON.rawValue)
		 	setState(135)
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
			internal
			func CWK_ASSOCIATIVITY() -> TerminalNode? {
				return getToken(CherryParser.Tokens.CWK_ASSOCIATIVITY.rawValue, 0)
			}
			internal
			func COLON() -> TerminalNode? {
				return getToken(CherryParser.Tokens.COLON.rawValue, 0)
			}
			internal
			func CWK_ASSOCIATIVITY_VALUE() -> TerminalNode? {
				return getToken(CherryParser.Tokens.CWK_ASSOCIATIVITY_VALUE.rawValue, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return CherryParser.RULE_precedenceGroupAssociativity
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
				listener.enterPrecedenceGroupAssociativity(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
				listener.exitPrecedenceGroupAssociativity(self)
			}
		}
	}
	@discardableResult
	 internal func precedenceGroupAssociativity() throws -> PrecedenceGroupAssociativityContext {
		var _localctx: PrecedenceGroupAssociativityContext
		_localctx = PrecedenceGroupAssociativityContext(_ctx, getState())
		try enterRule(_localctx, 26, CherryParser.RULE_precedenceGroupAssociativity)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(137)
		 	try match(CherryParser.Tokens.CWK_ASSOCIATIVITY.rawValue)
		 	setState(138)
		 	try match(CherryParser.Tokens.COLON.rawValue)
		 	setState(139)
		 	try match(CherryParser.Tokens.CWK_ASSOCIATIVITY_VALUE.rawValue)

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
			if let listener = listener as? CherryParserListener {
				listener.enterPrecedenceGroupName(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
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
		 	setState(141)
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
			func semicolon() -> SemicolonContext? {
				return getRuleContext(SemicolonContext.self, 0)
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
			if let listener = listener as? CherryParserListener {
				listener.enterStat(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
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
		 	setState(144)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	if ((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 1343749632) != 0) {
		 		setState(143)
		 		try expr(0)

		 	}

		 	setState(146)
		 	try semicolon()

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
			func STRING_LITERAL() -> TerminalNode? {
				return getToken(CherryParser.Tokens.STRING_LITERAL.rawValue, 0)
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
			if let listener = listener as? CherryParserListener {
				listener.enterExpr(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
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
			setState(157)
			try _errHandler.sync(self)
			switch(try getInterpreter().adaptivePredict(_input,14, _ctx)) {
			case 1:
				setState(149)
				try literal()

				break
			case 2:
				setState(150)
				try identifier()

				break
			case 3:
				setState(151)
				try match(CherryParser.Tokens.STRING_LITERAL.rawValue)

				break
			case 4:
				setState(152)
				try stringInterpolation()

				break
			case 5:
				setState(153)
				try match(CherryParser.Tokens.LPAREN.rawValue)
				setState(154)
				try expr(0)
				setState(155)
				try match(CherryParser.Tokens.RPAREN.rawValue)

				break
			default: break
			}
			_ctx!.stop = try _input.LT(-1)
			setState(170)
			try _errHandler.sync(self)
			_alt = try getInterpreter().adaptivePredict(_input,16,_ctx)
			while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
				if ( _alt==1 ) {
					if _parseListeners != nil {
					   try triggerExitRuleEvent()
					}
					_prevctx = _localctx
					setState(168)
					try _errHandler.sync(self)
					switch(try getInterpreter().adaptivePredict(_input,15, _ctx)) {
					case 1:
						_localctx = ExprContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, CherryParser.RULE_expr)
						setState(159)
						if (!(precpred(_ctx, 7))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 7)"))
						}
						setState(160)
						try match(CherryParser.Tokens.OP.rawValue)
						setState(161)
						try expr(8)

						break
					case 2:
						_localctx = ExprContext(_parentctx, _parentState);
						try pushNewRecursionContext(_localctx, _startState, CherryParser.RULE_expr)
						setState(162)
						if (!(precpred(_ctx, 1))) {
						    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 1)"))
						}
						setState(163)
						try match(CherryParser.Tokens.LBRACE.rawValue)
						setState(164)
						try expr(0)
						setState(165)
						try match(CherryParser.Tokens.RBRACE.rawValue)
						setState(166)
						try expr(2)

						break
					default: break
					}
			 
				}
				setState(172)
				try _errHandler.sync(self)
				_alt = try getInterpreter().adaptivePredict(_input,16,_ctx)
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
			if let listener = listener as? CherryParserListener {
				listener.enterStringInterpolation(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
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
		 	setState(173)
		 	try match(CherryParser.Tokens.STRING_INTERPOLATION_START.rawValue)
		 	setState(174)
		 	try expr(0)
		 	setState(179)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == CherryParser.Tokens.STRING_INTERPOLATION_CONTINUE.rawValue) {
		 		setState(175)
		 		try match(CherryParser.Tokens.STRING_INTERPOLATION_CONTINUE.rawValue)
		 		setState(176)
		 		try expr(0)


		 		setState(181)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(182)
		 	try match(CherryParser.Tokens.STRING_INTERPOLATION_FINISH.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class LbraceContext: ParserRuleContext {
			internal
			func LBRACE() -> TerminalNode? {
				return getToken(CherryParser.Tokens.LBRACE.rawValue, 0)
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
			return CherryParser.RULE_lbrace
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
				listener.enterLbrace(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
				listener.exitLbrace(self)
			}
		}
	}
	@discardableResult
	 internal func lbrace() throws -> LbraceContext {
		var _localctx: LbraceContext
		_localctx = LbraceContext(_ctx, getState())
		try enterRule(_localctx, 36, CherryParser.RULE_lbrace)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(184)
		 	try match(CherryParser.Tokens.LBRACE.rawValue)
		 	setState(188)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == CherryParser.Tokens.NL.rawValue) {
		 		setState(185)
		 		try match(CherryParser.Tokens.NL.rawValue)


		 		setState(190)
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

	internal class RbraceContext: ParserRuleContext {
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
		override internal
		func getRuleIndex() -> Int {
			return CherryParser.RULE_rbrace
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
				listener.enterRbrace(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
				listener.exitRbrace(self)
			}
		}
	}
	@discardableResult
	 internal func rbrace() throws -> RbraceContext {
		var _localctx: RbraceContext
		_localctx = RbraceContext(_ctx, getState())
		try enterRule(_localctx, 38, CherryParser.RULE_rbrace)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(191)
		 	try match(CherryParser.Tokens.RBRACE.rawValue)
		 	setState(195)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == CherryParser.Tokens.NL.rawValue) {
		 		setState(192)
		 		try match(CherryParser.Tokens.NL.rawValue)


		 		setState(197)
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

	internal class SemicolonContext: ParserRuleContext {
			internal
			func SEMICOLON() -> TerminalNode? {
				return getToken(CherryParser.Tokens.SEMICOLON.rawValue, 0)
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
			return CherryParser.RULE_semicolon
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
				listener.enterSemicolon(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
				listener.exitSemicolon(self)
			}
		}
	}
	@discardableResult
	 internal func semicolon() throws -> SemicolonContext {
		var _localctx: SemicolonContext
		_localctx = SemicolonContext(_ctx, getState())
		try enterRule(_localctx, 40, CherryParser.RULE_semicolon)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(198)
		 	_la = try _input.LA(1)
		 	if (!(_la == CherryParser.Tokens.NL.rawValue || _la == CherryParser.Tokens.SEMICOLON.rawValue)) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}
		 	setState(202)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == CherryParser.Tokens.NL.rawValue) {
		 		setState(199)
		 		try match(CherryParser.Tokens.NL.rawValue)


		 		setState(204)
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

	internal class ComaContext: ParserRuleContext {
			internal
			func COMA() -> TerminalNode? {
				return getToken(CherryParser.Tokens.COMA.rawValue, 0)
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
			return CherryParser.RULE_coma
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
				listener.enterComa(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
				listener.exitComa(self)
			}
		}
	}
	@discardableResult
	 internal func coma() throws -> ComaContext {
		var _localctx: ComaContext
		_localctx = ComaContext(_ctx, getState())
		try enterRule(_localctx, 42, CherryParser.RULE_coma)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(205)
		 	_la = try _input.LA(1)
		 	if (!(_la == CherryParser.Tokens.NL.rawValue || _la == CherryParser.Tokens.COMA.rawValue)) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}
		 	setState(209)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == CherryParser.Tokens.NL.rawValue) {
		 		setState(206)
		 		try match(CherryParser.Tokens.NL.rawValue)


		 		setState(211)
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
		4,1,39,213,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,2,7,
		7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,14,7,14,
		2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,2,21,7,21,
		1,0,1,0,1,0,1,0,3,0,49,8,0,1,1,1,1,1,2,1,2,1,2,5,2,56,8,2,10,2,12,2,59,
		9,2,1,3,1,3,1,4,4,4,64,8,4,11,4,12,4,65,1,4,1,4,1,5,1,5,1,5,1,5,3,5,74,
		8,5,1,6,1,6,1,6,1,6,4,6,80,8,6,11,6,12,6,81,3,6,84,8,6,1,7,1,7,1,7,1,7,
		4,7,90,8,7,11,7,12,7,91,3,7,94,8,7,1,8,1,8,1,8,1,8,4,8,100,8,8,11,8,12,
		8,101,3,8,104,8,8,1,9,1,9,1,9,1,9,1,9,1,9,5,9,112,8,9,10,9,12,9,115,9,
		9,1,9,1,9,1,10,1,10,1,10,3,10,122,8,10,1,11,1,11,1,11,1,11,1,11,5,11,129,
		8,11,10,11,12,11,132,9,11,1,12,1,12,1,12,1,12,1,13,1,13,1,13,1,13,1,14,
		1,14,1,15,3,15,145,8,15,1,15,1,15,1,16,1,16,1,16,1,16,1,16,1,16,1,16,1,
		16,1,16,3,16,158,8,16,1,16,1,16,1,16,1,16,1,16,1,16,1,16,1,16,1,16,5,16,
		169,8,16,10,16,12,16,172,9,16,1,17,1,17,1,17,1,17,5,17,178,8,17,10,17,
		12,17,181,9,17,1,17,1,17,1,18,1,18,5,18,187,8,18,10,18,12,18,190,9,18,
		1,19,1,19,5,19,194,8,19,10,19,12,19,197,9,19,1,20,1,20,5,20,201,8,20,10,
		20,12,20,204,9,20,1,21,1,21,5,21,208,8,21,10,21,12,21,211,9,21,1,21,0,
		1,32,22,0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,0,
		5,1,0,14,15,2,0,9,13,28,28,1,0,9,10,2,0,1,1,35,35,2,0,1,1,33,33,220,0,
		48,1,0,0,0,2,50,1,0,0,0,4,52,1,0,0,0,6,60,1,0,0,0,8,63,1,0,0,0,10,73,1,
		0,0,0,12,75,1,0,0,0,14,85,1,0,0,0,16,95,1,0,0,0,18,105,1,0,0,0,20,121,
		1,0,0,0,22,123,1,0,0,0,24,133,1,0,0,0,26,137,1,0,0,0,28,141,1,0,0,0,30,
		144,1,0,0,0,32,157,1,0,0,0,34,173,1,0,0,0,36,184,1,0,0,0,38,191,1,0,0,
		0,40,198,1,0,0,0,42,205,1,0,0,0,44,49,3,2,1,0,45,49,5,18,0,0,46,49,5,16,
		0,0,47,49,5,17,0,0,48,44,1,0,0,0,48,45,1,0,0,0,48,46,1,0,0,0,48,47,1,0,
		0,0,49,1,1,0,0,0,50,51,7,0,0,0,51,3,1,0,0,0,52,57,3,6,3,0,53,54,5,33,0,
		0,54,56,3,6,3,0,55,53,1,0,0,0,56,59,1,0,0,0,57,55,1,0,0,0,57,58,1,0,0,
		0,58,5,1,0,0,0,59,57,1,0,0,0,60,61,7,1,0,0,61,7,1,0,0,0,62,64,3,10,5,0,
		63,62,1,0,0,0,64,65,1,0,0,0,65,63,1,0,0,0,65,66,1,0,0,0,66,67,1,0,0,0,
		67,68,5,0,0,1,68,9,1,0,0,0,69,74,3,12,6,0,70,74,3,14,7,0,71,74,3,16,8,
		0,72,74,3,18,9,0,73,69,1,0,0,0,73,70,1,0,0,0,73,71,1,0,0,0,73,72,1,0,0,
		0,74,11,1,0,0,0,75,76,5,5,0,0,76,83,3,6,3,0,77,84,5,35,0,0,78,80,5,1,0,
		0,79,78,1,0,0,0,80,81,1,0,0,0,81,79,1,0,0,0,81,82,1,0,0,0,82,84,1,0,0,
		0,83,77,1,0,0,0,83,79,1,0,0,0,84,13,1,0,0,0,85,86,5,6,0,0,86,93,3,6,3,
		0,87,94,5,35,0,0,88,90,5,1,0,0,89,88,1,0,0,0,90,91,1,0,0,0,91,89,1,0,0,
		0,91,92,1,0,0,0,92,94,1,0,0,0,93,87,1,0,0,0,93,89,1,0,0,0,94,15,1,0,0,
		0,95,96,5,7,0,0,96,103,3,6,3,0,97,104,5,35,0,0,98,100,5,1,0,0,99,98,1,
		0,0,0,100,101,1,0,0,0,101,99,1,0,0,0,101,102,1,0,0,0,102,104,1,0,0,0,103,
		97,1,0,0,0,103,99,1,0,0,0,104,17,1,0,0,0,105,106,5,8,0,0,106,107,3,28,
		14,0,107,113,3,36,18,0,108,109,3,20,10,0,109,110,3,40,20,0,110,112,1,0,
		0,0,111,108,1,0,0,0,112,115,1,0,0,0,113,111,1,0,0,0,113,114,1,0,0,0,114,
		116,1,0,0,0,115,113,1,0,0,0,116,117,3,38,19,0,117,19,1,0,0,0,118,122,3,
		22,11,0,119,122,3,24,12,0,120,122,3,26,13,0,121,118,1,0,0,0,121,119,1,
		0,0,0,121,120,1,0,0,0,122,21,1,0,0,0,123,124,7,2,0,0,124,125,5,34,0,0,
		125,130,3,28,14,0,126,127,5,33,0,0,127,129,3,28,14,0,128,126,1,0,0,0,129,
		132,1,0,0,0,130,128,1,0,0,0,130,131,1,0,0,0,131,23,1,0,0,0,132,130,1,0,
		0,0,133,134,5,11,0,0,134,135,5,34,0,0,135,136,5,16,0,0,136,25,1,0,0,0,
		137,138,5,12,0,0,138,139,5,34,0,0,139,140,5,13,0,0,140,27,1,0,0,0,141,
		142,3,6,3,0,142,29,1,0,0,0,143,145,3,32,16,0,144,143,1,0,0,0,144,145,1,
		0,0,0,145,146,1,0,0,0,146,147,3,40,20,0,147,31,1,0,0,0,148,149,6,16,-1,
		0,149,158,3,0,0,0,150,158,3,6,3,0,151,158,5,18,0,0,152,158,3,34,17,0,153,
		154,5,30,0,0,154,155,3,32,16,0,155,156,5,31,0,0,156,158,1,0,0,0,157,148,
		1,0,0,0,157,150,1,0,0,0,157,151,1,0,0,0,157,152,1,0,0,0,157,153,1,0,0,
		0,158,170,1,0,0,0,159,160,10,7,0,0,160,161,5,39,0,0,161,169,3,32,16,8,
		162,163,10,1,0,0,163,164,5,36,0,0,164,165,3,32,16,0,165,166,5,37,0,0,166,
		167,3,32,16,2,167,169,1,0,0,0,168,159,1,0,0,0,168,162,1,0,0,0,169,172,
		1,0,0,0,170,168,1,0,0,0,170,171,1,0,0,0,171,33,1,0,0,0,172,170,1,0,0,0,
		173,174,5,20,0,0,174,179,3,32,16,0,175,176,5,21,0,0,176,178,3,32,16,0,
		177,175,1,0,0,0,178,181,1,0,0,0,179,177,1,0,0,0,179,180,1,0,0,0,180,182,
		1,0,0,0,181,179,1,0,0,0,182,183,5,22,0,0,183,35,1,0,0,0,184,188,5,36,0,
		0,185,187,5,1,0,0,186,185,1,0,0,0,187,190,1,0,0,0,188,186,1,0,0,0,188,
		189,1,0,0,0,189,37,1,0,0,0,190,188,1,0,0,0,191,195,5,37,0,0,192,194,5,
		1,0,0,193,192,1,0,0,0,194,197,1,0,0,0,195,193,1,0,0,0,195,196,1,0,0,0,
		196,39,1,0,0,0,197,195,1,0,0,0,198,202,7,3,0,0,199,201,5,1,0,0,200,199,
		1,0,0,0,201,204,1,0,0,0,202,200,1,0,0,0,202,203,1,0,0,0,203,41,1,0,0,0,
		204,202,1,0,0,0,205,209,7,4,0,0,206,208,5,1,0,0,207,206,1,0,0,0,208,211,
		1,0,0,0,209,207,1,0,0,0,209,210,1,0,0,0,210,43,1,0,0,0,211,209,1,0,0,0,
		22,48,57,65,73,81,83,91,93,101,103,113,121,130,144,157,168,170,179,188,
		195,202,209
	]

	internal
	static let _ATN = try! ATNDeserializer().deserialize(_serializedATN)
}