// Generated from CherryParser.g4 by ANTLR 4.11.1
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
                 CWK_ASSOCIATIVITY_VALUE = 13, FLOATING_POINT_LITERAL = 14, 
                 INTEGER_LITERAL = 15, BOOLEAN_LITERAL = 16, NIL_LITERAL = 17, 
                 STRING_LITERAL_START = 18, MULTILINE_STRING_LITERAL_START = 19, 
                 STRING_INTERPOLATION_CLOSE = 20, RAW_STRING_LITERAL = 21, 
                 BAD_RAW_STRING_LITERAL = 22, RAW_MULTILINE_STRING_LITERAL = 23, 
                 BAD_RAW_MULTILINE_STRING_LITERAL = 24, IDENTIFIER = 25, 
                 IMPLICIT_PARAMETER_NAME = 26, LPAREN = 27, RPAREN = 28, 
                 DOT = 29, COMA = 30, COLON = 31, SEMICOLON = 32, LBRACE = 33, 
                 RBRACE = 34, MINUS = 35, OP = 36, STRING_LITERAL_END = 37, 
                 MULTILINE_STRING_LITERAL_END = 38, STRING_CONTENT_VERBATIM = 39, 
                 STRING_CONTENT_ESCAPE = 40, STRING_CONTENT_UNICODE = 41, 
                 STRING_CONTENT_BAD_ESCAPE = 42, STRING_INTERPOLATION_OPEN = 43
	}

	internal
	static let RULE_literal = 0, RULE_integerLiteral = 1, RULE_floatingPointLiteral = 2, 
            RULE_stringLiteral = 3, RULE_stringContent = 4, RULE_booleanLiteral = 5, 
            RULE_nilLiteral = 6, RULE_identifierList = 7, RULE_identifier = 8, 
            RULE_prog = 9, RULE_decl = 10, RULE_varDecl = 11, RULE_funcDecl = 12, 
            RULE_classDecl = 13, RULE_precedenceGroupDeclaration = 14, RULE_precedenceGroupAttribute = 15, 
            RULE_precedenceGroupRelation = 16, RULE_precedenceGroupAssignment = 17, 
            RULE_precedenceGroupAssociativity = 18, RULE_precedenceGroupName = 19, 
            RULE_expr = 20, RULE_lbrace = 21, RULE_rbrace = 22, RULE_semicolon = 23, 
            RULE_coma = 24

	internal
	static let ruleNames: [String] = [
		"literal", "integerLiteral", "floatingPointLiteral", "stringLiteral", 
		"stringContent", "booleanLiteral", "nilLiteral", "identifierList", "identifier", 
		"prog", "decl", "varDecl", "funcDecl", "classDecl", "precedenceGroupDeclaration", 
		"precedenceGroupAttribute", "precedenceGroupRelation", "precedenceGroupAssignment", 
		"precedenceGroupAssociativity", "precedenceGroupName", "expr", "lbrace", 
		"rbrace", "semicolon", "coma"
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

	override internal
	func getGrammarFileName() -> String { return "CherryParser.g4" }

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
			func integerLiteral() -> IntegerLiteralContext? {
				return getRuleContext(IntegerLiteralContext.self, 0)
			}
			internal
			func floatingPointLiteral() -> FloatingPointLiteralContext? {
				return getRuleContext(FloatingPointLiteralContext.self, 0)
			}
			internal
			func stringLiteral() -> StringLiteralContext? {
				return getRuleContext(StringLiteralContext.self, 0)
			}
			internal
			func booleanLiteral() -> BooleanLiteralContext? {
				return getRuleContext(BooleanLiteralContext.self, 0)
			}
			internal
			func nilLiteral() -> NilLiteralContext? {
				return getRuleContext(NilLiteralContext.self, 0)
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
		override internal
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? CherryParserVisitor {
			    return visitor.visitLiteral(self)
			}
			else if let visitor = visitor as? CherryParserBaseVisitor {
			    return visitor.visitLiteral(self)
			}
			else {
			     return visitor.visitChildren(self)
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
		 	setState(55)
		 	try _errHandler.sync(self)
		 	switch (CherryParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .INTEGER_LITERAL:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(50)
		 		try integerLiteral()

		 		break

		 	case .FLOATING_POINT_LITERAL:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(51)
		 		try floatingPointLiteral()

		 		break
		 	case .STRING_LITERAL_START:fallthrough
		 	case .MULTILINE_STRING_LITERAL_START:fallthrough
		 	case .RAW_STRING_LITERAL:fallthrough
		 	case .BAD_RAW_STRING_LITERAL:fallthrough
		 	case .RAW_MULTILINE_STRING_LITERAL:fallthrough
		 	case .BAD_RAW_MULTILINE_STRING_LITERAL:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(52)
		 		try stringLiteral()

		 		break

		 	case .BOOLEAN_LITERAL:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(53)
		 		try booleanLiteral()

		 		break

		 	case .NIL_LITERAL:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(54)
		 		try nilLiteral()

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

	internal class IntegerLiteralContext: ParserRuleContext {
			internal
			func INTEGER_LITERAL() -> TerminalNode? {
				return getToken(CherryParser.Tokens.INTEGER_LITERAL.rawValue, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return CherryParser.RULE_integerLiteral
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
				listener.enterIntegerLiteral(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
				listener.exitIntegerLiteral(self)
			}
		}
		override internal
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? CherryParserVisitor {
			    return visitor.visitIntegerLiteral(self)
			}
			else if let visitor = visitor as? CherryParserBaseVisitor {
			    return visitor.visitIntegerLiteral(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 internal func integerLiteral() throws -> IntegerLiteralContext {
		var _localctx: IntegerLiteralContext
		_localctx = IntegerLiteralContext(_ctx, getState())
		try enterRule(_localctx, 2, CherryParser.RULE_integerLiteral)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(57)
		 	try match(CherryParser.Tokens.INTEGER_LITERAL.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class FloatingPointLiteralContext: ParserRuleContext {
			internal
			func FLOATING_POINT_LITERAL() -> TerminalNode? {
				return getToken(CherryParser.Tokens.FLOATING_POINT_LITERAL.rawValue, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return CherryParser.RULE_floatingPointLiteral
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
				listener.enterFloatingPointLiteral(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
				listener.exitFloatingPointLiteral(self)
			}
		}
		override internal
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? CherryParserVisitor {
			    return visitor.visitFloatingPointLiteral(self)
			}
			else if let visitor = visitor as? CherryParserBaseVisitor {
			    return visitor.visitFloatingPointLiteral(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 internal func floatingPointLiteral() throws -> FloatingPointLiteralContext {
		var _localctx: FloatingPointLiteralContext
		_localctx = FloatingPointLiteralContext(_ctx, getState())
		try enterRule(_localctx, 4, CherryParser.RULE_floatingPointLiteral)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(59)
		 	try match(CherryParser.Tokens.FLOATING_POINT_LITERAL.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class StringLiteralContext: ParserRuleContext {
			internal
			func STRING_LITERAL_START() -> TerminalNode? {
				return getToken(CherryParser.Tokens.STRING_LITERAL_START.rawValue, 0)
			}
			internal
			func STRING_LITERAL_END() -> TerminalNode? {
				return getToken(CherryParser.Tokens.STRING_LITERAL_END.rawValue, 0)
			}
			internal
			func stringContent() -> [StringContentContext] {
				return getRuleContexts(StringContentContext.self)
			}
			internal
			func stringContent(_ i: Int) -> StringContentContext? {
				return getRuleContext(StringContentContext.self, i)
			}
			internal
			func MULTILINE_STRING_LITERAL_START() -> TerminalNode? {
				return getToken(CherryParser.Tokens.MULTILINE_STRING_LITERAL_START.rawValue, 0)
			}
			internal
			func MULTILINE_STRING_LITERAL_END() -> TerminalNode? {
				return getToken(CherryParser.Tokens.MULTILINE_STRING_LITERAL_END.rawValue, 0)
			}
			internal
			func RAW_STRING_LITERAL() -> TerminalNode? {
				return getToken(CherryParser.Tokens.RAW_STRING_LITERAL.rawValue, 0)
			}
			internal
			func BAD_RAW_STRING_LITERAL() -> TerminalNode? {
				return getToken(CherryParser.Tokens.BAD_RAW_STRING_LITERAL.rawValue, 0)
			}
			internal
			func RAW_MULTILINE_STRING_LITERAL() -> TerminalNode? {
				return getToken(CherryParser.Tokens.RAW_MULTILINE_STRING_LITERAL.rawValue, 0)
			}
			internal
			func BAD_RAW_MULTILINE_STRING_LITERAL() -> TerminalNode? {
				return getToken(CherryParser.Tokens.BAD_RAW_MULTILINE_STRING_LITERAL.rawValue, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return CherryParser.RULE_stringLiteral
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
				listener.enterStringLiteral(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
				listener.exitStringLiteral(self)
			}
		}
		override internal
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? CherryParserVisitor {
			    return visitor.visitStringLiteral(self)
			}
			else if let visitor = visitor as? CherryParserBaseVisitor {
			    return visitor.visitStringLiteral(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 internal func stringLiteral() throws -> StringLiteralContext {
		var _localctx: StringLiteralContext
		_localctx = StringLiteralContext(_ctx, getState())
		try enterRule(_localctx, 6, CherryParser.RULE_stringLiteral)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(81)
		 	try _errHandler.sync(self)
		 	switch (CherryParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .STRING_LITERAL_START:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(61)
		 		try match(CherryParser.Tokens.STRING_LITERAL_START.rawValue)
		 		setState(65)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 17042430230528) != 0)) {
		 			setState(62)
		 			try stringContent()


		 			setState(67)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}
		 		setState(68)
		 		try match(CherryParser.Tokens.STRING_LITERAL_END.rawValue)

		 		break

		 	case .MULTILINE_STRING_LITERAL_START:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(69)
		 		try match(CherryParser.Tokens.MULTILINE_STRING_LITERAL_START.rawValue)
		 		setState(73)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 		while (((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 17042430230528) != 0)) {
		 			setState(70)
		 			try stringContent()


		 			setState(75)
		 			try _errHandler.sync(self)
		 			_la = try _input.LA(1)
		 		}
		 		setState(76)
		 		try match(CherryParser.Tokens.MULTILINE_STRING_LITERAL_END.rawValue)

		 		break

		 	case .RAW_STRING_LITERAL:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(77)
		 		try match(CherryParser.Tokens.RAW_STRING_LITERAL.rawValue)

		 		break

		 	case .BAD_RAW_STRING_LITERAL:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(78)
		 		try match(CherryParser.Tokens.BAD_RAW_STRING_LITERAL.rawValue)

		 		break

		 	case .RAW_MULTILINE_STRING_LITERAL:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(79)
		 		try match(CherryParser.Tokens.RAW_MULTILINE_STRING_LITERAL.rawValue)

		 		break

		 	case .BAD_RAW_MULTILINE_STRING_LITERAL:
		 		try enterOuterAlt(_localctx, 6)
		 		setState(80)
		 		try match(CherryParser.Tokens.BAD_RAW_MULTILINE_STRING_LITERAL.rawValue)

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

	internal class StringContentContext: ParserRuleContext {
			internal
			func STRING_CONTENT_VERBATIM() -> TerminalNode? {
				return getToken(CherryParser.Tokens.STRING_CONTENT_VERBATIM.rawValue, 0)
			}
			internal
			func STRING_CONTENT_ESCAPE() -> TerminalNode? {
				return getToken(CherryParser.Tokens.STRING_CONTENT_ESCAPE.rawValue, 0)
			}
			internal
			func STRING_CONTENT_UNICODE() -> TerminalNode? {
				return getToken(CherryParser.Tokens.STRING_CONTENT_UNICODE.rawValue, 0)
			}
			internal
			func STRING_CONTENT_BAD_ESCAPE() -> TerminalNode? {
				return getToken(CherryParser.Tokens.STRING_CONTENT_BAD_ESCAPE.rawValue, 0)
			}
			internal
			func STRING_INTERPOLATION_OPEN() -> TerminalNode? {
				return getToken(CherryParser.Tokens.STRING_INTERPOLATION_OPEN.rawValue, 0)
			}
			internal
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}
			internal
			func STRING_INTERPOLATION_CLOSE() -> TerminalNode? {
				return getToken(CherryParser.Tokens.STRING_INTERPOLATION_CLOSE.rawValue, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return CherryParser.RULE_stringContent
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
				listener.enterStringContent(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
				listener.exitStringContent(self)
			}
		}
		override internal
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? CherryParserVisitor {
			    return visitor.visitStringContent(self)
			}
			else if let visitor = visitor as? CherryParserBaseVisitor {
			    return visitor.visitStringContent(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 internal func stringContent() throws -> StringContentContext {
		var _localctx: StringContentContext
		_localctx = StringContentContext(_ctx, getState())
		try enterRule(_localctx, 8, CherryParser.RULE_stringContent)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(91)
		 	try _errHandler.sync(self)
		 	switch (CherryParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .STRING_CONTENT_VERBATIM:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(83)
		 		try match(CherryParser.Tokens.STRING_CONTENT_VERBATIM.rawValue)

		 		break

		 	case .STRING_CONTENT_ESCAPE:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(84)
		 		try match(CherryParser.Tokens.STRING_CONTENT_ESCAPE.rawValue)

		 		break

		 	case .STRING_CONTENT_UNICODE:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(85)
		 		try match(CherryParser.Tokens.STRING_CONTENT_UNICODE.rawValue)

		 		break

		 	case .STRING_CONTENT_BAD_ESCAPE:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(86)
		 		try match(CherryParser.Tokens.STRING_CONTENT_BAD_ESCAPE.rawValue)

		 		break

		 	case .STRING_INTERPOLATION_OPEN:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(87)
		 		try match(CherryParser.Tokens.STRING_INTERPOLATION_OPEN.rawValue)
		 		setState(88)
		 		try expr(0)
		 		setState(89)
		 		try match(CherryParser.Tokens.STRING_INTERPOLATION_CLOSE.rawValue)

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

	internal class BooleanLiteralContext: ParserRuleContext {
			internal
			func BOOLEAN_LITERAL() -> TerminalNode? {
				return getToken(CherryParser.Tokens.BOOLEAN_LITERAL.rawValue, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return CherryParser.RULE_booleanLiteral
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
				listener.enterBooleanLiteral(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
				listener.exitBooleanLiteral(self)
			}
		}
		override internal
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? CherryParserVisitor {
			    return visitor.visitBooleanLiteral(self)
			}
			else if let visitor = visitor as? CherryParserBaseVisitor {
			    return visitor.visitBooleanLiteral(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 internal func booleanLiteral() throws -> BooleanLiteralContext {
		var _localctx: BooleanLiteralContext
		_localctx = BooleanLiteralContext(_ctx, getState())
		try enterRule(_localctx, 10, CherryParser.RULE_booleanLiteral)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(93)
		 	try match(CherryParser.Tokens.BOOLEAN_LITERAL.rawValue)

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}

	internal class NilLiteralContext: ParserRuleContext {
			internal
			func NIL_LITERAL() -> TerminalNode? {
				return getToken(CherryParser.Tokens.NIL_LITERAL.rawValue, 0)
			}
		override internal
		func getRuleIndex() -> Int {
			return CherryParser.RULE_nilLiteral
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
				listener.enterNilLiteral(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
				listener.exitNilLiteral(self)
			}
		}
		override internal
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? CherryParserVisitor {
			    return visitor.visitNilLiteral(self)
			}
			else if let visitor = visitor as? CherryParserBaseVisitor {
			    return visitor.visitNilLiteral(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 internal func nilLiteral() throws -> NilLiteralContext {
		var _localctx: NilLiteralContext
		_localctx = NilLiteralContext(_ctx, getState())
		try enterRule(_localctx, 12, CherryParser.RULE_nilLiteral)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(95)
		 	try match(CherryParser.Tokens.NIL_LITERAL.rawValue)

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
		override internal
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? CherryParserVisitor {
			    return visitor.visitIdentifierList(self)
			}
			else if let visitor = visitor as? CherryParserBaseVisitor {
			    return visitor.visitIdentifierList(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 internal func identifierList() throws -> IdentifierListContext {
		var _localctx: IdentifierListContext
		_localctx = IdentifierListContext(_ctx, getState())
		try enterRule(_localctx, 14, CherryParser.RULE_identifierList)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(97)
		 	try identifier()
		 	setState(102)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == CherryParser.Tokens.COMA.rawValue) {
		 		setState(98)
		 		try match(CherryParser.Tokens.COMA.rawValue)
		 		setState(99)
		 		try identifier()


		 		setState(104)
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
		override internal
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? CherryParserVisitor {
			    return visitor.visitIdentifier(self)
			}
			else if let visitor = visitor as? CherryParserBaseVisitor {
			    return visitor.visitIdentifier(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 internal func identifier() throws -> IdentifierContext {
		var _localctx: IdentifierContext
		_localctx = IdentifierContext(_ctx, getState())
		try enterRule(_localctx, 16, CherryParser.RULE_identifier)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(105)
		 	_la = try _input.LA(1)
		 	if (!(((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 33570304) != 0))) {
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
		override internal
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? CherryParserVisitor {
			    return visitor.visitProg(self)
			}
			else if let visitor = visitor as? CherryParserBaseVisitor {
			    return visitor.visitProg(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 internal func prog() throws -> ProgContext {
		var _localctx: ProgContext
		_localctx = ProgContext(_ctx, getState())
		try enterRule(_localctx, 18, CherryParser.RULE_prog)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(108) 
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	repeat {
		 		setState(107)
		 		try decl()


		 		setState(110); 
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	} while (((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 133169120) != 0))
		 	setState(112)
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
			internal
			func expr() -> ExprContext? {
				return getRuleContext(ExprContext.self, 0)
			}
			internal
			func semicolon() -> SemicolonContext? {
				return getRuleContext(SemicolonContext.self, 0)
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
		override internal
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? CherryParserVisitor {
			    return visitor.visitDecl(self)
			}
			else if let visitor = visitor as? CherryParserBaseVisitor {
			    return visitor.visitDecl(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 internal func decl() throws -> DeclContext {
		var _localctx: DeclContext
		_localctx = DeclContext(_ctx, getState())
		try enterRule(_localctx, 20, CherryParser.RULE_decl)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(121)
		 	try _errHandler.sync(self)
		 	switch (CherryParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .KW_VAR:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(114)
		 		try varDecl()

		 		break

		 	case .KW_FUNC:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(115)
		 		try funcDecl()

		 		break

		 	case .KW_CLASS:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(116)
		 		try classDecl()

		 		break

		 	case .KW_PRECEDENCE_GROUP:
		 		try enterOuterAlt(_localctx, 4)
		 		setState(117)
		 		try precedenceGroupDeclaration()

		 		break
		 	case .CKW_HIGHER_THAN:fallthrough
		 	case .CKW_LOWER_THAN:fallthrough
		 	case .CKW_ASSIGNMENT:fallthrough
		 	case .CWK_ASSOCIATIVITY:fallthrough
		 	case .CWK_ASSOCIATIVITY_VALUE:fallthrough
		 	case .FLOATING_POINT_LITERAL:fallthrough
		 	case .INTEGER_LITERAL:fallthrough
		 	case .BOOLEAN_LITERAL:fallthrough
		 	case .NIL_LITERAL:fallthrough
		 	case .STRING_LITERAL_START:fallthrough
		 	case .MULTILINE_STRING_LITERAL_START:fallthrough
		 	case .RAW_STRING_LITERAL:fallthrough
		 	case .BAD_RAW_STRING_LITERAL:fallthrough
		 	case .RAW_MULTILINE_STRING_LITERAL:fallthrough
		 	case .BAD_RAW_MULTILINE_STRING_LITERAL:fallthrough
		 	case .IDENTIFIER:fallthrough
		 	case .IMPLICIT_PARAMETER_NAME:
		 		try enterOuterAlt(_localctx, 5)
		 		setState(118)
		 		try expr(0)
		 		setState(119)
		 		try semicolon()

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
			func semicolon() -> SemicolonContext? {
				return getRuleContext(SemicolonContext.self, 0)
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
		override internal
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? CherryParserVisitor {
			    return visitor.visitVarDecl(self)
			}
			else if let visitor = visitor as? CherryParserBaseVisitor {
			    return visitor.visitVarDecl(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 internal func varDecl() throws -> VarDeclContext {
		var _localctx: VarDeclContext
		_localctx = VarDeclContext(_ctx, getState())
		try enterRule(_localctx, 22, CherryParser.RULE_varDecl)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(123)
		 	try match(CherryParser.Tokens.KW_VAR.rawValue)
		 	setState(124)
		 	try identifier()
		 	setState(125)
		 	try semicolon()

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
			func semicolon() -> SemicolonContext? {
				return getRuleContext(SemicolonContext.self, 0)
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
		override internal
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? CherryParserVisitor {
			    return visitor.visitFuncDecl(self)
			}
			else if let visitor = visitor as? CherryParserBaseVisitor {
			    return visitor.visitFuncDecl(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 internal func funcDecl() throws -> FuncDeclContext {
		var _localctx: FuncDeclContext
		_localctx = FuncDeclContext(_ctx, getState())
		try enterRule(_localctx, 24, CherryParser.RULE_funcDecl)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(127)
		 	try match(CherryParser.Tokens.KW_FUNC.rawValue)
		 	setState(128)
		 	try identifier()
		 	setState(129)
		 	try semicolon()

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
			func semicolon() -> SemicolonContext? {
				return getRuleContext(SemicolonContext.self, 0)
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
		override internal
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? CherryParserVisitor {
			    return visitor.visitClassDecl(self)
			}
			else if let visitor = visitor as? CherryParserBaseVisitor {
			    return visitor.visitClassDecl(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 internal func classDecl() throws -> ClassDeclContext {
		var _localctx: ClassDeclContext
		_localctx = ClassDeclContext(_ctx, getState())
		try enterRule(_localctx, 26, CherryParser.RULE_classDecl)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(131)
		 	try match(CherryParser.Tokens.KW_CLASS.rawValue)
		 	setState(132)
		 	try identifier()
		 	setState(133)
		 	try semicolon()

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
		override internal
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? CherryParserVisitor {
			    return visitor.visitPrecedenceGroupDeclaration(self)
			}
			else if let visitor = visitor as? CherryParserBaseVisitor {
			    return visitor.visitPrecedenceGroupDeclaration(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 internal func precedenceGroupDeclaration() throws -> PrecedenceGroupDeclarationContext {
		var _localctx: PrecedenceGroupDeclarationContext
		_localctx = PrecedenceGroupDeclarationContext(_ctx, getState())
		try enterRule(_localctx, 28, CherryParser.RULE_precedenceGroupDeclaration)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(135)
		 	try match(CherryParser.Tokens.KW_PRECEDENCE_GROUP.rawValue)
		 	setState(136)
		 	try precedenceGroupName()
		 	setState(137)
		 	try lbrace()
		 	setState(143)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (((Int64(_la) & ~0x3f) == 0 && ((Int64(1) << _la) & 7680) != 0)) {
		 		setState(138)
		 		try precedenceGroupAttribute()
		 		setState(139)
		 		try semicolon()


		 		setState(145)
		 		try _errHandler.sync(self)
		 		_la = try _input.LA(1)
		 	}
		 	setState(146)
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
		override internal
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? CherryParserVisitor {
			    return visitor.visitPrecedenceGroupAttribute(self)
			}
			else if let visitor = visitor as? CherryParserBaseVisitor {
			    return visitor.visitPrecedenceGroupAttribute(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 internal func precedenceGroupAttribute() throws -> PrecedenceGroupAttributeContext {
		var _localctx: PrecedenceGroupAttributeContext
		_localctx = PrecedenceGroupAttributeContext(_ctx, getState())
		try enterRule(_localctx, 30, CherryParser.RULE_precedenceGroupAttribute)
		defer {
	    		try! exitRule()
	    }
		do {
		 	setState(151)
		 	try _errHandler.sync(self)
		 	switch (CherryParser.Tokens(rawValue: try _input.LA(1))!) {
		 	case .CKW_HIGHER_THAN:fallthrough
		 	case .CKW_LOWER_THAN:
		 		try enterOuterAlt(_localctx, 1)
		 		setState(148)
		 		try precedenceGroupRelation()

		 		break

		 	case .CKW_ASSIGNMENT:
		 		try enterOuterAlt(_localctx, 2)
		 		setState(149)
		 		try precedenceGroupAssignment()

		 		break

		 	case .CWK_ASSOCIATIVITY:
		 		try enterOuterAlt(_localctx, 3)
		 		setState(150)
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
		override internal
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? CherryParserVisitor {
			    return visitor.visitPrecedenceGroupRelation(self)
			}
			else if let visitor = visitor as? CherryParserBaseVisitor {
			    return visitor.visitPrecedenceGroupRelation(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 internal func precedenceGroupRelation() throws -> PrecedenceGroupRelationContext {
		var _localctx: PrecedenceGroupRelationContext
		_localctx = PrecedenceGroupRelationContext(_ctx, getState())
		try enterRule(_localctx, 32, CherryParser.RULE_precedenceGroupRelation)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(153)
		 	_localctx.castdown(PrecedenceGroupRelationContext.self).op = try _input.LT(1)
		 	_la = try _input.LA(1)
		 	if (!(_la == CherryParser.Tokens.CKW_HIGHER_THAN.rawValue || _la == CherryParser.Tokens.CKW_LOWER_THAN.rawValue)) {
		 		_localctx.castdown(PrecedenceGroupRelationContext.self).op = try _errHandler.recoverInline(self) as Token
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}
		 	setState(154)
		 	try match(CherryParser.Tokens.COLON.rawValue)
		 	setState(155)
		 	try precedenceGroupName()
		 	setState(160)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == CherryParser.Tokens.COMA.rawValue) {
		 		setState(156)
		 		try match(CherryParser.Tokens.COMA.rawValue)
		 		setState(157)
		 		try precedenceGroupName()


		 		setState(162)
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
		override internal
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? CherryParserVisitor {
			    return visitor.visitPrecedenceGroupAssignment(self)
			}
			else if let visitor = visitor as? CherryParserBaseVisitor {
			    return visitor.visitPrecedenceGroupAssignment(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 internal func precedenceGroupAssignment() throws -> PrecedenceGroupAssignmentContext {
		var _localctx: PrecedenceGroupAssignmentContext
		_localctx = PrecedenceGroupAssignmentContext(_ctx, getState())
		try enterRule(_localctx, 34, CherryParser.RULE_precedenceGroupAssignment)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(163)
		 	try match(CherryParser.Tokens.CKW_ASSIGNMENT.rawValue)
		 	setState(164)
		 	try match(CherryParser.Tokens.COLON.rawValue)
		 	setState(165)
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
		override internal
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? CherryParserVisitor {
			    return visitor.visitPrecedenceGroupAssociativity(self)
			}
			else if let visitor = visitor as? CherryParserBaseVisitor {
			    return visitor.visitPrecedenceGroupAssociativity(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 internal func precedenceGroupAssociativity() throws -> PrecedenceGroupAssociativityContext {
		var _localctx: PrecedenceGroupAssociativityContext
		_localctx = PrecedenceGroupAssociativityContext(_ctx, getState())
		try enterRule(_localctx, 36, CherryParser.RULE_precedenceGroupAssociativity)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(167)
		 	try match(CherryParser.Tokens.CWK_ASSOCIATIVITY.rawValue)
		 	setState(168)
		 	try match(CherryParser.Tokens.COLON.rawValue)
		 	setState(169)
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
		override internal
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? CherryParserVisitor {
			    return visitor.visitPrecedenceGroupName(self)
			}
			else if let visitor = visitor as? CherryParserBaseVisitor {
			    return visitor.visitPrecedenceGroupName(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 internal func precedenceGroupName() throws -> PrecedenceGroupNameContext {
		var _localctx: PrecedenceGroupNameContext
		_localctx = PrecedenceGroupNameContext(_ctx, getState())
		try enterRule(_localctx, 38, CherryParser.RULE_precedenceGroupName)
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(171)
		 	try identifier()

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx
	}


	internal class ExprContext: ParserRuleContext {
		override internal
		func getRuleIndex() -> Int {
			return CherryParser.RULE_expr
		}
	}
	internal class OperatorExprContext: ExprContext {
		internal var lhs: ExprContext!
		internal var op: Token!
		internal var rhs: ExprContext!
			internal
			func expr() -> [ExprContext] {
				return getRuleContexts(ExprContext.self)
			}
			internal
			func expr(_ i: Int) -> ExprContext? {
				return getRuleContext(ExprContext.self, i)
			}
			internal
			func OP() -> TerminalNode? {
				return getToken(CherryParser.Tokens.OP.rawValue, 0)
			}

		internal
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
				listener.enterOperatorExpr(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
				listener.exitOperatorExpr(self)
			}
		}
		override internal
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? CherryParserVisitor {
			    return visitor.visitOperatorExpr(self)
			}
			else if let visitor = visitor as? CherryParserBaseVisitor {
			    return visitor.visitOperatorExpr(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	internal class IdentifierExprContext: ExprContext {
			internal
			func identifier() -> IdentifierContext? {
				return getRuleContext(IdentifierContext.self, 0)
			}
			internal
			func IMPLICIT_PARAMETER_NAME() -> TerminalNode? {
				return getToken(CherryParser.Tokens.IMPLICIT_PARAMETER_NAME.rawValue, 0)
			}

		internal
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
				listener.enterIdentifierExpr(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
				listener.exitIdentifierExpr(self)
			}
		}
		override internal
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? CherryParserVisitor {
			    return visitor.visitIdentifierExpr(self)
			}
			else if let visitor = visitor as? CherryParserBaseVisitor {
			    return visitor.visitIdentifierExpr(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	internal class LiteralExprContext: ExprContext {
			internal
			func literal() -> LiteralContext? {
				return getRuleContext(LiteralContext.self, 0)
			}

		internal
		init(_ ctx: ExprContext) {
			super.init()
			copyFrom(ctx)
		}
		override internal
		func enterRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
				listener.enterLiteralExpr(self)
			}
		}
		override internal
		func exitRule(_ listener: ParseTreeListener) {
			if let listener = listener as? CherryParserListener {
				listener.exitLiteralExpr(self)
			}
		}
		override internal
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? CherryParserVisitor {
			    return visitor.visitLiteralExpr(self)
			}
			else if let visitor = visitor as? CherryParserBaseVisitor {
			    return visitor.visitLiteralExpr(self)
			}
			else {
			     return visitor.visitChildren(self)
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
		let _startState: Int = 40
		try enterRecursionRule(_localctx, 40, CherryParser.RULE_expr, _p)
		defer {
	    		try! unrollRecursionContexts(_parentctx)
	    }
		do {
			var _alt: Int
			try enterOuterAlt(_localctx, 1)
			setState(177)
			try _errHandler.sync(self)
			switch (CherryParser.Tokens(rawValue: try _input.LA(1))!) {
			case .FLOATING_POINT_LITERAL:fallthrough
			case .INTEGER_LITERAL:fallthrough
			case .BOOLEAN_LITERAL:fallthrough
			case .NIL_LITERAL:fallthrough
			case .STRING_LITERAL_START:fallthrough
			case .MULTILINE_STRING_LITERAL_START:fallthrough
			case .RAW_STRING_LITERAL:fallthrough
			case .BAD_RAW_STRING_LITERAL:fallthrough
			case .RAW_MULTILINE_STRING_LITERAL:fallthrough
			case .BAD_RAW_MULTILINE_STRING_LITERAL:
				_localctx = LiteralExprContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx

				setState(174)
				try literal()

				break
			case .CKW_HIGHER_THAN:fallthrough
			case .CKW_LOWER_THAN:fallthrough
			case .CKW_ASSIGNMENT:fallthrough
			case .CWK_ASSOCIATIVITY:fallthrough
			case .CWK_ASSOCIATIVITY_VALUE:fallthrough
			case .IDENTIFIER:
				_localctx = IdentifierExprContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(175)
				try identifier()

				break

			case .IMPLICIT_PARAMETER_NAME:
				_localctx = IdentifierExprContext(_localctx)
				_ctx = _localctx
				_prevctx = _localctx
				setState(176)
				try match(CherryParser.Tokens.IMPLICIT_PARAMETER_NAME.rawValue)

				break
			default:
				throw ANTLRException.recognition(e: NoViableAltException(self))
			}
			_ctx!.stop = try _input.LT(-1)
			setState(184)
			try _errHandler.sync(self)
			_alt = try getInterpreter().adaptivePredict(_input,12,_ctx)
			while (_alt != 2 && _alt != ATN.INVALID_ALT_NUMBER) {
				if ( _alt==1 ) {
					if _parseListeners != nil {
					   try triggerExitRuleEvent()
					}
					_prevctx = _localctx
					_localctx = OperatorExprContext(  ExprContext(_parentctx, _parentState))
					(_localctx as! OperatorExprContext).lhs = _prevctx
					try pushNewRecursionContext(_localctx, _startState, CherryParser.RULE_expr)
					setState(179)
					if (!(precpred(_ctx, 4))) {
					    throw ANTLRException.recognition(e:FailedPredicateException(self, "precpred(_ctx, 4)"))
					}
					setState(180)
					try {
							let assignmentValue = try match(CherryParser.Tokens.OP.rawValue)
							_localctx.castdown(OperatorExprContext.self).op = assignmentValue
					     }()

					setState(181)
					try {
							let assignmentValue = try expr(5)
							_localctx.castdown(OperatorExprContext.self).rhs = assignmentValue
					     }()


			 
				}
				setState(186)
				try _errHandler.sync(self)
				_alt = try getInterpreter().adaptivePredict(_input,12,_ctx)
			}

		}
		catch ANTLRException.recognition(let re) {
			_localctx.exception = re
			_errHandler.reportError(self, re)
			try _errHandler.recover(self, re)
		}

		return _localctx;
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
		override internal
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? CherryParserVisitor {
			    return visitor.visitLbrace(self)
			}
			else if let visitor = visitor as? CherryParserBaseVisitor {
			    return visitor.visitLbrace(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 internal func lbrace() throws -> LbraceContext {
		var _localctx: LbraceContext
		_localctx = LbraceContext(_ctx, getState())
		try enterRule(_localctx, 42, CherryParser.RULE_lbrace)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(187)
		 	try match(CherryParser.Tokens.LBRACE.rawValue)
		 	setState(191)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == CherryParser.Tokens.NL.rawValue) {
		 		setState(188)
		 		try match(CherryParser.Tokens.NL.rawValue)


		 		setState(193)
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
		override internal
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? CherryParserVisitor {
			    return visitor.visitRbrace(self)
			}
			else if let visitor = visitor as? CherryParserBaseVisitor {
			    return visitor.visitRbrace(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 internal func rbrace() throws -> RbraceContext {
		var _localctx: RbraceContext
		_localctx = RbraceContext(_ctx, getState())
		try enterRule(_localctx, 44, CherryParser.RULE_rbrace)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(194)
		 	try match(CherryParser.Tokens.RBRACE.rawValue)
		 	setState(198)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == CherryParser.Tokens.NL.rawValue) {
		 		setState(195)
		 		try match(CherryParser.Tokens.NL.rawValue)


		 		setState(200)
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
			internal
			func EOF() -> TerminalNode? {
				return getToken(CherryParser.Tokens.EOF.rawValue, 0)
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
		override internal
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? CherryParserVisitor {
			    return visitor.visitSemicolon(self)
			}
			else if let visitor = visitor as? CherryParserBaseVisitor {
			    return visitor.visitSemicolon(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 internal func semicolon() throws -> SemicolonContext {
		var _localctx: SemicolonContext
		_localctx = SemicolonContext(_ctx, getState())
		try enterRule(_localctx, 46, CherryParser.RULE_semicolon)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(201)
		 	_la = try _input.LA(1)
		 	if (!(((Int64((_la - -1)) & ~0x3f) == 0 && ((Int64(1) << (_la - -1)) & 8589934597) != 0))) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}
		 	setState(205)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == CherryParser.Tokens.NL.rawValue) {
		 		setState(202)
		 		try match(CherryParser.Tokens.NL.rawValue)


		 		setState(207)
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
			internal
			func EOF() -> TerminalNode? {
				return getToken(CherryParser.Tokens.EOF.rawValue, 0)
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
		override internal
		func accept<T>(_ visitor: ParseTreeVisitor<T>) -> T? {
			if let visitor = visitor as? CherryParserVisitor {
			    return visitor.visitComa(self)
			}
			else if let visitor = visitor as? CherryParserBaseVisitor {
			    return visitor.visitComa(self)
			}
			else {
			     return visitor.visitChildren(self)
			}
		}
	}
	@discardableResult
	 internal func coma() throws -> ComaContext {
		var _localctx: ComaContext
		_localctx = ComaContext(_ctx, getState())
		try enterRule(_localctx, 48, CherryParser.RULE_coma)
		var _la: Int = 0
		defer {
	    		try! exitRule()
	    }
		do {
		 	try enterOuterAlt(_localctx, 1)
		 	setState(208)
		 	_la = try _input.LA(1)
		 	if (!(((Int64((_la - -1)) & ~0x3f) == 0 && ((Int64(1) << (_la - -1)) & 2147483653) != 0))) {
		 	try _errHandler.recoverInline(self)
		 	}
		 	else {
		 		_errHandler.reportMatch(self)
		 		try consume()
		 	}
		 	setState(212)
		 	try _errHandler.sync(self)
		 	_la = try _input.LA(1)
		 	while (_la == CherryParser.Tokens.NL.rawValue) {
		 		setState(209)
		 		try match(CherryParser.Tokens.NL.rawValue)


		 		setState(214)
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
		case  20:
			return try expr_sempred(_localctx?.castdown(ExprContext.self), predIndex)
	    default: return true
		}
	}
	private func expr_sempred(_ _localctx: ExprContext!,  _ predIndex: Int) throws -> Bool {
		switch (predIndex) {
		    case 0:return precpred(_ctx, 4)
		    default: return true
		}
	}

	static let _serializedATN:[Int] = [
		4,1,43,216,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,2,7,
		7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,2,12,7,12,2,13,7,13,2,14,7,14,
		2,15,7,15,2,16,7,16,2,17,7,17,2,18,7,18,2,19,7,19,2,20,7,20,2,21,7,21,
		2,22,7,22,2,23,7,23,2,24,7,24,1,0,1,0,1,0,1,0,1,0,3,0,56,8,0,1,1,1,1,1,
		2,1,2,1,3,1,3,5,3,64,8,3,10,3,12,3,67,9,3,1,3,1,3,1,3,5,3,72,8,3,10,3,
		12,3,75,9,3,1,3,1,3,1,3,1,3,1,3,3,3,82,8,3,1,4,1,4,1,4,1,4,1,4,1,4,1,4,
		1,4,3,4,92,8,4,1,5,1,5,1,6,1,6,1,7,1,7,1,7,5,7,101,8,7,10,7,12,7,104,9,
		7,1,8,1,8,1,9,4,9,109,8,9,11,9,12,9,110,1,9,1,9,1,10,1,10,1,10,1,10,1,
		10,1,10,1,10,3,10,122,8,10,1,11,1,11,1,11,1,11,1,12,1,12,1,12,1,12,1,13,
		1,13,1,13,1,13,1,14,1,14,1,14,1,14,1,14,1,14,5,14,142,8,14,10,14,12,14,
		145,9,14,1,14,1,14,1,15,1,15,1,15,3,15,152,8,15,1,16,1,16,1,16,1,16,1,
		16,5,16,159,8,16,10,16,12,16,162,9,16,1,17,1,17,1,17,1,17,1,18,1,18,1,
		18,1,18,1,19,1,19,1,20,1,20,1,20,1,20,3,20,178,8,20,1,20,1,20,1,20,5,20,
		183,8,20,10,20,12,20,186,9,20,1,21,1,21,5,21,190,8,21,10,21,12,21,193,
		9,21,1,22,1,22,5,22,197,8,22,10,22,12,22,200,9,22,1,23,1,23,5,23,204,8,
		23,10,23,12,23,207,9,23,1,24,1,24,5,24,211,8,24,10,24,12,24,214,9,24,1,
		24,0,1,40,25,0,2,4,6,8,10,12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,
		42,44,46,48,0,4,2,0,9,13,25,25,1,0,9,10,2,1,1,1,32,32,2,1,1,1,30,30,222,
		0,55,1,0,0,0,2,57,1,0,0,0,4,59,1,0,0,0,6,81,1,0,0,0,8,91,1,0,0,0,10,93,
		1,0,0,0,12,95,1,0,0,0,14,97,1,0,0,0,16,105,1,0,0,0,18,108,1,0,0,0,20,121,
		1,0,0,0,22,123,1,0,0,0,24,127,1,0,0,0,26,131,1,0,0,0,28,135,1,0,0,0,30,
		151,1,0,0,0,32,153,1,0,0,0,34,163,1,0,0,0,36,167,1,0,0,0,38,171,1,0,0,
		0,40,177,1,0,0,0,42,187,1,0,0,0,44,194,1,0,0,0,46,201,1,0,0,0,48,208,1,
		0,0,0,50,56,3,2,1,0,51,56,3,4,2,0,52,56,3,6,3,0,53,56,3,10,5,0,54,56,3,
		12,6,0,55,50,1,0,0,0,55,51,1,0,0,0,55,52,1,0,0,0,55,53,1,0,0,0,55,54,1,
		0,0,0,56,1,1,0,0,0,57,58,5,15,0,0,58,3,1,0,0,0,59,60,5,14,0,0,60,5,1,0,
		0,0,61,65,5,18,0,0,62,64,3,8,4,0,63,62,1,0,0,0,64,67,1,0,0,0,65,63,1,0,
		0,0,65,66,1,0,0,0,66,68,1,0,0,0,67,65,1,0,0,0,68,82,5,37,0,0,69,73,5,19,
		0,0,70,72,3,8,4,0,71,70,1,0,0,0,72,75,1,0,0,0,73,71,1,0,0,0,73,74,1,0,
		0,0,74,76,1,0,0,0,75,73,1,0,0,0,76,82,5,38,0,0,77,82,5,21,0,0,78,82,5,
		22,0,0,79,82,5,23,0,0,80,82,5,24,0,0,81,61,1,0,0,0,81,69,1,0,0,0,81,77,
		1,0,0,0,81,78,1,0,0,0,81,79,1,0,0,0,81,80,1,0,0,0,82,7,1,0,0,0,83,92,5,
		39,0,0,84,92,5,40,0,0,85,92,5,41,0,0,86,92,5,42,0,0,87,88,5,43,0,0,88,
		89,3,40,20,0,89,90,5,20,0,0,90,92,1,0,0,0,91,83,1,0,0,0,91,84,1,0,0,0,
		91,85,1,0,0,0,91,86,1,0,0,0,91,87,1,0,0,0,92,9,1,0,0,0,93,94,5,16,0,0,
		94,11,1,0,0,0,95,96,5,17,0,0,96,13,1,0,0,0,97,102,3,16,8,0,98,99,5,30,
		0,0,99,101,3,16,8,0,100,98,1,0,0,0,101,104,1,0,0,0,102,100,1,0,0,0,102,
		103,1,0,0,0,103,15,1,0,0,0,104,102,1,0,0,0,105,106,7,0,0,0,106,17,1,0,
		0,0,107,109,3,20,10,0,108,107,1,0,0,0,109,110,1,0,0,0,110,108,1,0,0,0,
		110,111,1,0,0,0,111,112,1,0,0,0,112,113,5,0,0,1,113,19,1,0,0,0,114,122,
		3,22,11,0,115,122,3,24,12,0,116,122,3,26,13,0,117,122,3,28,14,0,118,119,
		3,40,20,0,119,120,3,46,23,0,120,122,1,0,0,0,121,114,1,0,0,0,121,115,1,
		0,0,0,121,116,1,0,0,0,121,117,1,0,0,0,121,118,1,0,0,0,122,21,1,0,0,0,123,
		124,5,5,0,0,124,125,3,16,8,0,125,126,3,46,23,0,126,23,1,0,0,0,127,128,
		5,6,0,0,128,129,3,16,8,0,129,130,3,46,23,0,130,25,1,0,0,0,131,132,5,7,
		0,0,132,133,3,16,8,0,133,134,3,46,23,0,134,27,1,0,0,0,135,136,5,8,0,0,
		136,137,3,38,19,0,137,143,3,42,21,0,138,139,3,30,15,0,139,140,3,46,23,
		0,140,142,1,0,0,0,141,138,1,0,0,0,142,145,1,0,0,0,143,141,1,0,0,0,143,
		144,1,0,0,0,144,146,1,0,0,0,145,143,1,0,0,0,146,147,3,44,22,0,147,29,1,
		0,0,0,148,152,3,32,16,0,149,152,3,34,17,0,150,152,3,36,18,0,151,148,1,
		0,0,0,151,149,1,0,0,0,151,150,1,0,0,0,152,31,1,0,0,0,153,154,7,1,0,0,154,
		155,5,31,0,0,155,160,3,38,19,0,156,157,5,30,0,0,157,159,3,38,19,0,158,
		156,1,0,0,0,159,162,1,0,0,0,160,158,1,0,0,0,160,161,1,0,0,0,161,33,1,0,
		0,0,162,160,1,0,0,0,163,164,5,11,0,0,164,165,5,31,0,0,165,166,5,16,0,0,
		166,35,1,0,0,0,167,168,5,12,0,0,168,169,5,31,0,0,169,170,5,13,0,0,170,
		37,1,0,0,0,171,172,3,16,8,0,172,39,1,0,0,0,173,174,6,20,-1,0,174,178,3,
		0,0,0,175,178,3,16,8,0,176,178,5,26,0,0,177,173,1,0,0,0,177,175,1,0,0,
		0,177,176,1,0,0,0,178,184,1,0,0,0,179,180,10,4,0,0,180,181,5,36,0,0,181,
		183,3,40,20,5,182,179,1,0,0,0,183,186,1,0,0,0,184,182,1,0,0,0,184,185,
		1,0,0,0,185,41,1,0,0,0,186,184,1,0,0,0,187,191,5,33,0,0,188,190,5,1,0,
		0,189,188,1,0,0,0,190,193,1,0,0,0,191,189,1,0,0,0,191,192,1,0,0,0,192,
		43,1,0,0,0,193,191,1,0,0,0,194,198,5,34,0,0,195,197,5,1,0,0,196,195,1,
		0,0,0,197,200,1,0,0,0,198,196,1,0,0,0,198,199,1,0,0,0,199,45,1,0,0,0,200,
		198,1,0,0,0,201,205,7,2,0,0,202,204,5,1,0,0,203,202,1,0,0,0,204,207,1,
		0,0,0,205,203,1,0,0,0,205,206,1,0,0,0,206,47,1,0,0,0,207,205,1,0,0,0,208,
		212,7,3,0,0,209,211,5,1,0,0,210,209,1,0,0,0,211,214,1,0,0,0,212,210,1,
		0,0,0,212,213,1,0,0,0,213,49,1,0,0,0,214,212,1,0,0,0,17,55,65,73,81,91,
		102,110,121,143,151,160,177,184,191,198,205,212
	]

	internal
	static let _ATN = try! ATNDeserializer().deserialize(_serializedATN)
}