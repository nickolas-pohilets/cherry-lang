// Generated from java-escape by ANTLR 4.11.1
import Antlr4

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link CherryParser}.
 */
internal protocol CherryListener: ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link CherryParser#identifierList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIdentifierList(_ ctx: CherryParser.IdentifierListContext)
	/**
	 * Exit a parse tree produced by {@link CherryParser#identifierList}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIdentifierList(_ ctx: CherryParser.IdentifierListContext)
	/**
	 * Enter a parse tree produced by {@link CherryParser#identifier}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIdentifier(_ ctx: CherryParser.IdentifierContext)
	/**
	 * Exit a parse tree produced by {@link CherryParser#identifier}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIdentifier(_ ctx: CherryParser.IdentifierContext)
	/**
	 * Enter a parse tree produced by {@link CherryParser#literal}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLiteral(_ ctx: CherryParser.LiteralContext)
	/**
	 * Exit a parse tree produced by {@link CherryParser#literal}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLiteral(_ ctx: CherryParser.LiteralContext)
	/**
	 * Enter a parse tree produced by {@link CherryParser#numericLiteral}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterNumericLiteral(_ ctx: CherryParser.NumericLiteralContext)
	/**
	 * Exit a parse tree produced by {@link CherryParser#numericLiteral}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitNumericLiteral(_ ctx: CherryParser.NumericLiteralContext)
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
	 * Enter a parse tree produced by {@link CherryParser#decl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterDecl(_ ctx: CherryParser.DeclContext)
	/**
	 * Exit a parse tree produced by {@link CherryParser#decl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitDecl(_ ctx: CherryParser.DeclContext)
	/**
	 * Enter a parse tree produced by {@link CherryParser#varDecl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterVarDecl(_ ctx: CherryParser.VarDeclContext)
	/**
	 * Exit a parse tree produced by {@link CherryParser#varDecl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitVarDecl(_ ctx: CherryParser.VarDeclContext)
	/**
	 * Enter a parse tree produced by {@link CherryParser#funcDecl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFuncDecl(_ ctx: CherryParser.FuncDeclContext)
	/**
	 * Exit a parse tree produced by {@link CherryParser#funcDecl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFuncDecl(_ ctx: CherryParser.FuncDeclContext)
	/**
	 * Enter a parse tree produced by {@link CherryParser#classDecl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterClassDecl(_ ctx: CherryParser.ClassDeclContext)
	/**
	 * Exit a parse tree produced by {@link CherryParser#classDecl}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitClassDecl(_ ctx: CherryParser.ClassDeclContext)
	/**
	 * Enter a parse tree produced by {@link CherryParser#precedenceGroupDeclaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPrecedenceGroupDeclaration(_ ctx: CherryParser.PrecedenceGroupDeclarationContext)
	/**
	 * Exit a parse tree produced by {@link CherryParser#precedenceGroupDeclaration}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPrecedenceGroupDeclaration(_ ctx: CherryParser.PrecedenceGroupDeclarationContext)
	/**
	 * Enter a parse tree produced by {@link CherryParser#precedenceGroupAttribute}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPrecedenceGroupAttribute(_ ctx: CherryParser.PrecedenceGroupAttributeContext)
	/**
	 * Exit a parse tree produced by {@link CherryParser#precedenceGroupAttribute}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPrecedenceGroupAttribute(_ ctx: CherryParser.PrecedenceGroupAttributeContext)
	/**
	 * Enter a parse tree produced by {@link CherryParser#precedenceGroupRelation}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPrecedenceGroupRelation(_ ctx: CherryParser.PrecedenceGroupRelationContext)
	/**
	 * Exit a parse tree produced by {@link CherryParser#precedenceGroupRelation}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPrecedenceGroupRelation(_ ctx: CherryParser.PrecedenceGroupRelationContext)
	/**
	 * Enter a parse tree produced by {@link CherryParser#precedenceGroupAssignment}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPrecedenceGroupAssignment(_ ctx: CherryParser.PrecedenceGroupAssignmentContext)
	/**
	 * Exit a parse tree produced by {@link CherryParser#precedenceGroupAssignment}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPrecedenceGroupAssignment(_ ctx: CherryParser.PrecedenceGroupAssignmentContext)
	/**
	 * Enter a parse tree produced by {@link CherryParser#precedenceGroupAssociativity}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPrecedenceGroupAssociativity(_ ctx: CherryParser.PrecedenceGroupAssociativityContext)
	/**
	 * Exit a parse tree produced by {@link CherryParser#precedenceGroupAssociativity}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPrecedenceGroupAssociativity(_ ctx: CherryParser.PrecedenceGroupAssociativityContext)
	/**
	 * Enter a parse tree produced by {@link CherryParser#precedenceGroupName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterPrecedenceGroupName(_ ctx: CherryParser.PrecedenceGroupNameContext)
	/**
	 * Exit a parse tree produced by {@link CherryParser#precedenceGroupName}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitPrecedenceGroupName(_ ctx: CherryParser.PrecedenceGroupNameContext)
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