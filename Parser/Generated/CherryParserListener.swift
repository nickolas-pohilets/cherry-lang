// Generated from CherryParser.g4 by ANTLR 4.11.1
import Antlr4

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link CherryParser}.
 */
internal protocol CherryParserListener: ParseTreeListener {
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
	 * Enter a parse tree produced by {@link CherryParser#integerLiteral}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIntegerLiteral(_ ctx: CherryParser.IntegerLiteralContext)
	/**
	 * Exit a parse tree produced by {@link CherryParser#integerLiteral}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIntegerLiteral(_ ctx: CherryParser.IntegerLiteralContext)
	/**
	 * Enter a parse tree produced by {@link CherryParser#floatingPointLiteral}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterFloatingPointLiteral(_ ctx: CherryParser.FloatingPointLiteralContext)
	/**
	 * Exit a parse tree produced by {@link CherryParser#floatingPointLiteral}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitFloatingPointLiteral(_ ctx: CherryParser.FloatingPointLiteralContext)
	/**
	 * Enter a parse tree produced by {@link CherryParser#stringLiteral}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterStringLiteral(_ ctx: CherryParser.StringLiteralContext)
	/**
	 * Exit a parse tree produced by {@link CherryParser#stringLiteral}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitStringLiteral(_ ctx: CherryParser.StringLiteralContext)
	/**
	 * Enter a parse tree produced by {@link CherryParser#stringContent}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterStringContent(_ ctx: CherryParser.StringContentContext)
	/**
	 * Exit a parse tree produced by {@link CherryParser#stringContent}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitStringContent(_ ctx: CherryParser.StringContentContext)
	/**
	 * Enter a parse tree produced by {@link CherryParser#booleanLiteral}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterBooleanLiteral(_ ctx: CherryParser.BooleanLiteralContext)
	/**
	 * Exit a parse tree produced by {@link CherryParser#booleanLiteral}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitBooleanLiteral(_ ctx: CherryParser.BooleanLiteralContext)
	/**
	 * Enter a parse tree produced by {@link CherryParser#nilLiteral}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterNilLiteral(_ ctx: CherryParser.NilLiteralContext)
	/**
	 * Exit a parse tree produced by {@link CherryParser#nilLiteral}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitNilLiteral(_ ctx: CherryParser.NilLiteralContext)
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
	 * Enter a parse tree produced by the {@code OperatorExpr}
	 * labeled alternative in {@link CherryParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterOperatorExpr(_ ctx: CherryParser.OperatorExprContext)
	/**
	 * Exit a parse tree produced by the {@code OperatorExpr}
	 * labeled alternative in {@link CherryParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitOperatorExpr(_ ctx: CherryParser.OperatorExprContext)
	/**
	 * Enter a parse tree produced by the {@code IdentifierExpr}
	 * labeled alternative in {@link CherryParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterIdentifierExpr(_ ctx: CherryParser.IdentifierExprContext)
	/**
	 * Exit a parse tree produced by the {@code IdentifierExpr}
	 * labeled alternative in {@link CherryParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitIdentifierExpr(_ ctx: CherryParser.IdentifierExprContext)
	/**
	 * Enter a parse tree produced by the {@code LiteralExpr}
	 * labeled alternative in {@link CherryParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLiteralExpr(_ ctx: CherryParser.LiteralExprContext)
	/**
	 * Exit a parse tree produced by the {@code LiteralExpr}
	 * labeled alternative in {@link CherryParser#expr}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLiteralExpr(_ ctx: CherryParser.LiteralExprContext)
	/**
	 * Enter a parse tree produced by {@link CherryParser#lbrace}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterLbrace(_ ctx: CherryParser.LbraceContext)
	/**
	 * Exit a parse tree produced by {@link CherryParser#lbrace}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitLbrace(_ ctx: CherryParser.LbraceContext)
	/**
	 * Enter a parse tree produced by {@link CherryParser#rbrace}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterRbrace(_ ctx: CherryParser.RbraceContext)
	/**
	 * Exit a parse tree produced by {@link CherryParser#rbrace}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitRbrace(_ ctx: CherryParser.RbraceContext)
	/**
	 * Enter a parse tree produced by {@link CherryParser#semicolon}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterSemicolon(_ ctx: CherryParser.SemicolonContext)
	/**
	 * Exit a parse tree produced by {@link CherryParser#semicolon}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitSemicolon(_ ctx: CherryParser.SemicolonContext)
	/**
	 * Enter a parse tree produced by {@link CherryParser#coma}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func enterComa(_ ctx: CherryParser.ComaContext)
	/**
	 * Exit a parse tree produced by {@link CherryParser#coma}.
	 - Parameters:
	   - ctx: the parse tree
	 */
	func exitComa(_ ctx: CherryParser.ComaContext)
}