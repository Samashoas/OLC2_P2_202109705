using analyzer;
using Antlr4.Runtime.Misc;
using System.Globalization;
using Microsoft.AspNetCore.DataProtection.AuthenticatedEncryption.ConfigurationModel;
using System.Buffers;
using api.Controllers;

public class CompilerVisitor : LanguageBaseVisitor<Object?>
{
    public Generator GC = new Generator();
    public CompilerVisitor(){}

//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>INICIO POGRAMA<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    public override Object? VisitProgram(LanguageParser.ProgramContext context)
    {
        foreach (var dcl in context.dcl()){
            Visit(dcl);
        }
        return null;
    }
    public override Object? VisitImpDer(LanguageParser.ImpDerContext context)
    {
        return null;
    }
    public override Object? VisitVarImpExpr(LanguageParser.VarImpExprContext context)
    {
        return null;
    }
    public override Object? VisitVarImpNoExpr(LanguageParser.VarImpNoExprContext context)
    {
        return null;
    }
    public override Object? VisitAssignment(LanguageParser.AssignmentContext context)
    {
        return null;
    }
    public override Object? VisitExprStmt(LanguageParser.ExprStmtContext context)
    {
        return null;
    }
    public override Object? VisitPrintStmt(LanguageParser.PrintStmtContext context)
    {
        GC.Comment("--Print statement--");
        for (int i = context.expr().Length - 1; i >= 0; i--)
        {
            Visit(context.expr()[i]);  // Así colocas el valor de la derecha primero, luego el de la izquierda
        }

        int argPrint = context.expr().Length;
        GC.Comment("--Print values--");
        
        for(int i = 0; i < argPrint; i++){

            GC.Comment("--Pop Value--");
            GC.Pop(Register.X0);
            GC.PrintInt(Register.X0);

            //AÑADIR ESPACIO ENTRE ARGUMENTOS
             if(i < argPrint - 1){
                GC.PrintSpace();
                }
        }
        GC.PrintNewLine();
        return null;
    }
    public override Object? VisitIdentifier(LanguageParser.IdentifierContext context)
    {
        return null;
    }
    public override Object? VisitAtoiStmt(LanguageParser.AtoiStmtContext context)
    {
        return null;
    }
    public override Object? VisitTypeOfStmt (LanguageParser.TypeOfStmtContext context)
    {
        return null;
    }
    public override Object? VisitParseFloatStmt (LanguageParser.ParseFloatStmtContext context)
    {
        return null;
    }
    public override Object? VisitBlockStmt(LanguageParser.BlockStmtContext context)
    {
        return null;
    }
    public override Object? VisitIfStmt(LanguageParser.IfStmtContext context)
    {
        return null;
    }
    public override Object? VisitSwitchStmt(LanguageParser.SwitchStmtContext context)
    {
        return null;
    }
    public override Object? VisitCaseClause(LanguageParser.CaseClauseContext context)
    {
        return null;
    }
    public override Object? VisitDefaultClause(LanguageParser.DefaultClauseContext context)
    {
        return null;
    }
    public override Object? VisitForStmt(LanguageParser.ForStmtContext context)
    {
        return null;
    }
    public override Object? VisitRangeInit(LanguageParser.RangeInitContext context)
    {
        return null;
    }
    public override Object? VisitBreakStmt(LanguageParser.BreakStmtContext context)
    {
        return null;
    }
    public override Object? VisitContinueStmt(LanguageParser.ContinueStmtContext context)
    {
        return null;
    }
    public override Object? VisitReturnStmt(LanguageParser.ReturnStmtContext context)
    {
        return null;
    }
    public override Object? VisitCaller(LanguageParser.CallerContext context)
    {
        return null;
    }
    public override Object? VisitFuncDcl([NotNull] LanguageParser.FuncDclContext context)
    {
        return null;
    }
    public override Object? VisitSliceDcl(LanguageParser.SliceDclContext context)
    {
        return null;
    }
    public override Object? VisitSliceVacio([NotNull] LanguageParser.SliceVacioContext context)
    {
        return null;
    }
    public override Object? VisitArrayAccess(LanguageParser.ArrayAccessContext context)
    {
        return null;
    }
    public override Object? VisitArrayUpdate([NotNull] LanguageParser.ArrayUpdateContext context)
    {
        return null;
    }
    public override Object? VisitMatrixDcl(LanguageParser.MatrixDclContext context)
    {
        return null;
    }
    public override Object? VisitMatrixAccess(LanguageParser.MatrixAccessContext context)
    {
        return null;
    }
    public override Object? VisitMatrixUpdate(LanguageParser.MatrixUpdateContext context)
    {
        return null;
    }
    public override Object? VisitSliceIndex(LanguageParser.SliceIndexContext context)
    {
        return null;
    }
    public override Object? VisitStringJoin(LanguageParser.StringJoinContext context)
    {
        return null;
    }
    public override Object? VisitLen (LanguageParser.LenContext context)
    {
        return null;
    }
    public override Object? VisitLenMatrix(LanguageParser.LenMatrixContext context)
    {
        return null;
    }
    public override Object? VisitAppend(LanguageParser.AppendContext context)
    {
        return null;
    }
    public override Object? VisitMatrixAppend([NotNull] LanguageParser.MatrixAppendContext context)
    {
        return null;
    }
    public override Object? VisitStructDcl([NotNull] LanguageParser.StructDclContext context)
    {
        return null;
    }
    public override Object? VisitStructAssignment([NotNull] LanguageParser.StructAssignmentContext context)
        {
            return null;
        }
    public override Object? VisitStructAccess([NotNull] LanguageParser.StructAccessContext context)
    {
        return null;
    }
    public override Object? VisitStructUpdate([NotNull] LanguageParser.StructUpdateContext context)
    {
        return null;
    }
    public override Object? VisitStructAccessInfo([NotNull] LanguageParser.StructAccessInfoContext context)
    {
        return null;
    }
    public override Object? VisitStructVarDcl([NotNull] LanguageParser.StructVarDclContext context)
    {
        return null;
    }
    public override Object? VisitStructLiteral([NotNull] LanguageParser.StructLiteralContext context)
    {
        return null;
    }
    public override Object? VisitNegate(LanguageParser.NegateContext context)
    {
        Visit(context.expr());
        GC.Pop(Register.X0);
        GC.Comment("--Negate--");
        GC.Neg(Register.X0, Register.X0);
        GC.Push(Register.X0);
        return null;
    }
    public override Object? VisitAddSub(LanguageParser.AddSubContext context)
    {
        GC.Comment("--Add/Subtract--");
        Visit(context.expr(0));
        Visit(context.expr(1));

        GC.Comment("--Pop Values R--");
        GC.Pop(Register.X1);
        GC.Comment("--Pop Values L--");
        GC.Pop(Register.X0);

        var op = context.op.Text;
        if(op == "+")
        {
            GC.Add(Register.X0, Register.X0, Register.X1);
        }
        else if(op == "-")
        {
            GC.Sub(Register.X0, Register.X0, Register.X1);
        }
        else
        {
            throw new Exception("Unknown operator: " + op);
        }
        GC.Comment("--Push Result--");
        GC.Push(Register.X0);
        return null;
    }
    public override Object? VisitImplicitAddSub(LanguageParser.ImplicitAddSubContext context)
    {
        return null;
    }
    public override Object? VisitIncDec(LanguageParser.IncDecContext context)
    {
        return null;
    }
    public override Object? VisitMDmod(LanguageParser.MDmodContext context)
    {
        return null;
    }
    public override Object? VisitRelational (LanguageParser.RelationalContext context)
    {
        return null;
    }
    public override Object? VisitEquality (LanguageParser.EqualityContext context)
    {
        return null;
    }
    public override Object? VisitLogicalOr(LanguageParser.LogicalOrContext context)
    {
        return null;
    }
    public override Object? VisitLogicalAnd(LanguageParser.LogicalAndContext context)
    {
        return null;
    }
    public override Object? VisitParens(LanguageParser.ParensContext context)
    {
        return null;
    }
    public override Object? VisitCondition(LanguageParser.ConditionContext context)
    {
        return null;
    }
    public override Object? VisitInteger(LanguageParser.IntegerContext context)
    {   
        GC.Comment("--Integer value--");
        GC.Mov(Register.X0, int.Parse(context.INT().GetText()));
        GC.Push(Register.X0);
        return null;
    }
    public override Object? VisitFloat(LanguageParser.FloatContext context)
    {
        return null;
    }
    public override Object? VisitRune(LanguageParser.RuneContext context)
    {
        return null;
    }
    public override Object? VisitString(LanguageParser.StringContext context)
    {
        return null;
    }
    public override Object? VisitBoolean(LanguageParser.BooleanContext context)
    {
        return null;
    }
}