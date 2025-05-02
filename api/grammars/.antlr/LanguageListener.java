// Generated from /home/juan-pablo/Escritorio/Uni/OLC2/C#/OLC2_P1_202109705/api/grammars/Language.g4 by ANTLR 4.13.1
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link LanguageParser}.
 */
public interface LanguageListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link LanguageParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(LanguageParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(LanguageParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#dcl}.
	 * @param ctx the parse tree
	 */
	void enterDcl(LanguageParser.DclContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#dcl}.
	 * @param ctx the parse tree
	 */
	void exitDcl(LanguageParser.DclContext ctx);
	/**
	 * Enter a parse tree produced by the {@code VarImpExpr}
	 * labeled alternative in {@link LanguageParser#varDcl}.
	 * @param ctx the parse tree
	 */
	void enterVarImpExpr(LanguageParser.VarImpExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code VarImpExpr}
	 * labeled alternative in {@link LanguageParser#varDcl}.
	 * @param ctx the parse tree
	 */
	void exitVarImpExpr(LanguageParser.VarImpExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code VarImpNoExpr}
	 * labeled alternative in {@link LanguageParser#varDcl}.
	 * @param ctx the parse tree
	 */
	void enterVarImpNoExpr(LanguageParser.VarImpNoExprContext ctx);
	/**
	 * Exit a parse tree produced by the {@code VarImpNoExpr}
	 * labeled alternative in {@link LanguageParser#varDcl}.
	 * @param ctx the parse tree
	 */
	void exitVarImpNoExpr(LanguageParser.VarImpNoExprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ImpDer}
	 * labeled alternative in {@link LanguageParser#varDcl}.
	 * @param ctx the parse tree
	 */
	void enterImpDer(LanguageParser.ImpDerContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ImpDer}
	 * labeled alternative in {@link LanguageParser#varDcl}.
	 * @param ctx the parse tree
	 */
	void exitImpDer(LanguageParser.ImpDerContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#funcDcl}.
	 * @param ctx the parse tree
	 */
	void enterFuncDcl(LanguageParser.FuncDclContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#funcDcl}.
	 * @param ctx the parse tree
	 */
	void exitFuncDcl(LanguageParser.FuncDclContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#funcParams}.
	 * @param ctx the parse tree
	 */
	void enterFuncParams(LanguageParser.FuncParamsContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#funcParams}.
	 * @param ctx the parse tree
	 */
	void exitFuncParams(LanguageParser.FuncParamsContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterExprStmt(LanguageParser.ExprStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitExprStmt(LanguageParser.ExprStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code PrintStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterPrintStmt(LanguageParser.PrintStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code PrintStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitPrintStmt(LanguageParser.PrintStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code BlockStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterBlockStmt(LanguageParser.BlockStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code BlockStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitBlockStmt(LanguageParser.BlockStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code IfStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterIfStmt(LanguageParser.IfStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code IfStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitIfStmt(LanguageParser.IfStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ForStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterForStmt(LanguageParser.ForStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ForStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitForStmt(LanguageParser.ForStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code SwitchStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterSwitchStmt(LanguageParser.SwitchStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code SwitchStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitSwitchStmt(LanguageParser.SwitchStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ContinueStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterContinueStmt(LanguageParser.ContinueStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ContinueStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitContinueStmt(LanguageParser.ContinueStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code BreakStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterBreakStmt(LanguageParser.BreakStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code BreakStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitBreakStmt(LanguageParser.BreakStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ReturnStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterReturnStmt(LanguageParser.ReturnStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ReturnStmt}
	 * labeled alternative in {@link LanguageParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitReturnStmt(LanguageParser.ReturnStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code CaseClause}
	 * labeled alternative in {@link LanguageParser#switchCase}.
	 * @param ctx the parse tree
	 */
	void enterCaseClause(LanguageParser.CaseClauseContext ctx);
	/**
	 * Exit a parse tree produced by the {@code CaseClause}
	 * labeled alternative in {@link LanguageParser#switchCase}.
	 * @param ctx the parse tree
	 */
	void exitCaseClause(LanguageParser.CaseClauseContext ctx);
	/**
	 * Enter a parse tree produced by the {@code DefaultClause}
	 * labeled alternative in {@link LanguageParser#switchCase}.
	 * @param ctx the parse tree
	 */
	void enterDefaultClause(LanguageParser.DefaultClauseContext ctx);
	/**
	 * Exit a parse tree produced by the {@code DefaultClause}
	 * labeled alternative in {@link LanguageParser#switchCase}.
	 * @param ctx the parse tree
	 */
	void exitDefaultClause(LanguageParser.DefaultClauseContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#forInit}.
	 * @param ctx the parse tree
	 */
	void enterForInit(LanguageParser.ForInitContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#forInit}.
	 * @param ctx the parse tree
	 */
	void exitForInit(LanguageParser.ForInitContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#condition}.
	 * @param ctx the parse tree
	 */
	void enterCondition(LanguageParser.ConditionContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#condition}.
	 * @param ctx the parse tree
	 */
	void exitCondition(LanguageParser.ConditionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code AddSub}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterAddSub(LanguageParser.AddSubContext ctx);
	/**
	 * Exit a parse tree produced by the {@code AddSub}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitAddSub(LanguageParser.AddSubContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Parens}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterParens(LanguageParser.ParensContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Parens}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitParens(LanguageParser.ParensContext ctx);
	/**
	 * Enter a parse tree produced by the {@code TypeOfStmt}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterTypeOfStmt(LanguageParser.TypeOfStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code TypeOfStmt}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitTypeOfStmt(LanguageParser.TypeOfStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Relational}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterRelational(LanguageParser.RelationalContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Relational}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitRelational(LanguageParser.RelationalContext ctx);
	/**
	 * Enter a parse tree produced by the {@code IncDec}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterIncDec(LanguageParser.IncDecContext ctx);
	/**
	 * Exit a parse tree produced by the {@code IncDec}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitIncDec(LanguageParser.IncDecContext ctx);
	/**
	 * Enter a parse tree produced by the {@code String}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterString(LanguageParser.StringContext ctx);
	/**
	 * Exit a parse tree produced by the {@code String}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitString(LanguageParser.StringContext ctx);
	/**
	 * Enter a parse tree produced by the {@code AtoiStmt}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterAtoiStmt(LanguageParser.AtoiStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code AtoiStmt}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitAtoiStmt(LanguageParser.AtoiStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ParseFloatStmt}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterParseFloatStmt(LanguageParser.ParseFloatStmtContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ParseFloatStmt}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitParseFloatStmt(LanguageParser.ParseFloatStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code LogicalOr}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterLogicalOr(LanguageParser.LogicalOrContext ctx);
	/**
	 * Exit a parse tree produced by the {@code LogicalOr}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitLogicalOr(LanguageParser.LogicalOrContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Assignment}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterAssignment(LanguageParser.AssignmentContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Assignment}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitAssignment(LanguageParser.AssignmentContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Integer}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterInteger(LanguageParser.IntegerContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Integer}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitInteger(LanguageParser.IntegerContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Float}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterFloat(LanguageParser.FloatContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Float}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitFloat(LanguageParser.FloatContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Identifier}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterIdentifier(LanguageParser.IdentifierContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Identifier}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitIdentifier(LanguageParser.IdentifierContext ctx);
	/**
	 * Enter a parse tree produced by the {@code MDmod}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterMDmod(LanguageParser.MDmodContext ctx);
	/**
	 * Exit a parse tree produced by the {@code MDmod}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitMDmod(LanguageParser.MDmodContext ctx);
	/**
	 * Enter a parse tree produced by the {@code LogicalAnd}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterLogicalAnd(LanguageParser.LogicalAndContext ctx);
	/**
	 * Exit a parse tree produced by the {@code LogicalAnd}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitLogicalAnd(LanguageParser.LogicalAndContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Negate}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterNegate(LanguageParser.NegateContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Negate}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitNegate(LanguageParser.NegateContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Equality}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterEquality(LanguageParser.EqualityContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Equality}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitEquality(LanguageParser.EqualityContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Boolean}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterBoolean(LanguageParser.BooleanContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Boolean}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitBoolean(LanguageParser.BooleanContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Rune}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterRune(LanguageParser.RuneContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Rune}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitRune(LanguageParser.RuneContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ImplicitAddSub}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterImplicitAddSub(LanguageParser.ImplicitAddSubContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ImplicitAddSub}
	 * labeled alternative in {@link LanguageParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitImplicitAddSub(LanguageParser.ImplicitAddSubContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#call}.
	 * @param ctx the parse tree
	 */
	void enterCall(LanguageParser.CallContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#call}.
	 * @param ctx the parse tree
	 */
	void exitCall(LanguageParser.CallContext ctx);
	/**
	 * Enter a parse tree produced by {@link LanguageParser#args}.
	 * @param ctx the parse tree
	 */
	void enterArgs(LanguageParser.ArgsContext ctx);
	/**
	 * Exit a parse tree produced by {@link LanguageParser#args}.
	 * @param ctx the parse tree
	 */
	void exitArgs(LanguageParser.ArgsContext ctx);
}