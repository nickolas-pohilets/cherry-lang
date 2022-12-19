// Generated from java-escape by ANTLR 4.11.1
import Antlr4

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link CherryParser}.
 */
public protocol CherryListener: ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link CherryParser#prog}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterProg(_ ctx: CherryParser.ProgContext)
	/**
	 * Exit a parse tree produced by {@link CherryParser#prog}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitProg(_ ctx: CherryParser.ProgContext)
	/**
	 * Enter a parse tree produced by {@link CherryParser#tokens}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterTokens(_ ctx: CherryParser.TokensContext)
	/**
	 * Exit a parse tree produced by {@link CherryParser#tokens}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitTokens(_ ctx: CherryParser.TokensContext)
	/**
	 * Enter a parse tree produced by {@link CherryParser#stat}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterStat(_ ctx: CherryParser.StatContext)
	/**
	 * Exit a parse tree produced by {@link CherryParser#stat}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitStat(_ ctx: CherryParser.StatContext)
	/**
	 * Enter a parse tree produced by {@link CherryParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterExpr(_ ctx: CherryParser.ExprContext)
	/**
	 * Exit a parse tree produced by {@link CherryParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitExpr(_ ctx: CherryParser.ExprContext)
	/**
	 * Enter a parse tree produced by {@link CherryParser#stringInterpolation}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterStringInterpolation(_ ctx: CherryParser.StringInterpolationContext)
	/**
	 * Exit a parse tree produced by {@link CherryParser#stringInterpolation}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitStringInterpolation(_ ctx: CherryParser.StringInterpolationContext)
}