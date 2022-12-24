// Generated from CherryParser.g4 by ANTLR 4.11.1
import Antlr4

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link CherryParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
internal class CherryParserVisitor<T>: ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link CherryParser#literal}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	internal func visitLiteral(_ ctx: CherryParser.LiteralContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link CherryParser#integerLiteral}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	internal func visitIntegerLiteral(_ ctx: CherryParser.IntegerLiteralContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link CherryParser#floatingPointLiteral}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	internal func visitFloatingPointLiteral(_ ctx: CherryParser.FloatingPointLiteralContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link CherryParser#stringLiteral}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	internal func visitStringLiteral(_ ctx: CherryParser.StringLiteralContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link CherryParser#stringContent}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	internal func visitStringContent(_ ctx: CherryParser.StringContentContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link CherryParser#booleanLiteral}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	internal func visitBooleanLiteral(_ ctx: CherryParser.BooleanLiteralContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link CherryParser#nilLiteral}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	internal func visitNilLiteral(_ ctx: CherryParser.NilLiteralContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link CherryParser#identifierList}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	internal func visitIdentifierList(_ ctx: CherryParser.IdentifierListContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link CherryParser#identifier}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	internal func visitIdentifier(_ ctx: CherryParser.IdentifierContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link CherryParser#prog}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	internal func visitProg(_ ctx: CherryParser.ProgContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link CherryParser#decl}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	internal func visitDecl(_ ctx: CherryParser.DeclContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link CherryParser#varDecl}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	internal func visitVarDecl(_ ctx: CherryParser.VarDeclContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link CherryParser#funcDecl}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	internal func visitFuncDecl(_ ctx: CherryParser.FuncDeclContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link CherryParser#classDecl}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	internal func visitClassDecl(_ ctx: CherryParser.ClassDeclContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link CherryParser#precedenceGroupDeclaration}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	internal func visitPrecedenceGroupDeclaration(_ ctx: CherryParser.PrecedenceGroupDeclarationContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link CherryParser#precedenceGroupAttribute}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	internal func visitPrecedenceGroupAttribute(_ ctx: CherryParser.PrecedenceGroupAttributeContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link CherryParser#precedenceGroupRelation}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	internal func visitPrecedenceGroupRelation(_ ctx: CherryParser.PrecedenceGroupRelationContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link CherryParser#precedenceGroupAssignment}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	internal func visitPrecedenceGroupAssignment(_ ctx: CherryParser.PrecedenceGroupAssignmentContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link CherryParser#precedenceGroupAssociativity}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	internal func visitPrecedenceGroupAssociativity(_ ctx: CherryParser.PrecedenceGroupAssociativityContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link CherryParser#precedenceGroupName}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	internal func visitPrecedenceGroupName(_ ctx: CherryParser.PrecedenceGroupNameContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code OperatorExpr}
	 * labeled alternative in {@link CherryParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	internal func visitOperatorExpr(_ ctx: CherryParser.OperatorExprContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code IdentifierExpr}
	 * labeled alternative in {@link CherryParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	internal func visitIdentifierExpr(_ ctx: CherryParser.IdentifierExprContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by the {@code LiteralExpr}
	 * labeled alternative in {@link CherryParser#expr}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	internal func visitLiteralExpr(_ ctx: CherryParser.LiteralExprContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link CherryParser#lbrace}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	internal func visitLbrace(_ ctx: CherryParser.LbraceContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link CherryParser#rbrace}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	internal func visitRbrace(_ ctx: CherryParser.RbraceContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link CherryParser#semicolon}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	internal func visitSemicolon(_ ctx: CherryParser.SemicolonContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

	/**
	 * Visit a parse tree produced by {@link CherryParser#coma}.
	- Parameters:
	  - ctx: the parse tree
	- returns: the visitor result
	 */
	internal func visitComa(_ ctx: CherryParser.ComaContext) -> T {
	 	fatalError(#function + " must be overridden")
	}

}