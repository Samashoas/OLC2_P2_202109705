using analyzer;
using Antlr4.Runtime.Misc;
using System.Globalization;
using Microsoft.AspNetCore.DataProtection.AuthenticatedEncryption.ConfigurationModel;
using System.Buffers;
using api.Controllers;
using System.Numerics;
using System.Reflection.Emit;

public class FunctionMetadata{
    public int FrameSize;
    public StackObject.StackObjectType ReturnType;
}
public class CompilerVisitor : LanguageBaseVisitor<Object?>
{
    public Generator GC = new Generator();
    private string continueLabel = "";
    private string breakLabel = "";
    private string returnLabel = "";

    private string currentSwitchValue = ""; // Registro que tiene el valor del switch
    private Dictionary<LanguageParser.SwitchCaseContext, string> caseLabels = new Dictionary<LanguageParser.SwitchCaseContext, string>();
    private string switchEndLabel = "";
    private bool switchHasDefault = false;
    private string switchDefaultLabel = "";
    private int switchPhase = 0;

    //PARA FUNCIONES
    private Dictionary<string, FunctionMetadata> function = new Dictionary<string, FunctionMetadata>();
    private string? insideFunction = null;
    private int framePointerOffset = 0;
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
        var VarName = context.ID().GetText();

        GC.Comment("--Variable Declaration--");
        Visit(context.expr());

        if(insideFunction != null){
            var localObject = GC.GetFrameLocal(framePointerOffset);
            var valueObject = GC.PopObject(Register.X0); // Pop the value to assign

            GC.Mov(Register.X1, framePointerOffset * 8); // Move the offset to X1
            GC.Sub(Register.X1, Register.FP, Register.X1); // Add the offset to FP to get the address
            GC.Str(Register.X0, Register.X1); // Store the value at the address

            localObject.Type = valueObject.Type;
            framePointerOffset++;

            return null;
        }
        GC.TagObject(VarName);

        return null;
    }
    //var ID TIPO = EXPR (var a int = 5)
    public override Object? VisitVarImpExpr(LanguageParser.VarImpExprContext context)
    {
        var varName = context.ID().GetText();
        var typeName = context.TYPE().GetText();
        
        GC.Comment($"--Variable Declaration: {varName} {typeName}--");
        
        // Evaluar la expresión y obtener su valor
        Visit(context.expr());

        GC.Comment("--Store value in memory--");
        
        GC.TagObject(varName);
        
        return null;
    }
    public override Object? VisitVarImpNoExpr(LanguageParser.VarImpNoExprContext context)
    {
        var varName = context.ID().GetText();
        var typeName = context.TYPE().GetText();
        var declaredType = GetType(typeName);
        
        GC.Comment($"--Variable Declaration (default value): {varName} {typeName}--");
        
        // Inicializar la variable con un valor por defecto según su tipo
        switch (declaredType)
        {
            case StackObject.StackObjectType.Int:
            case StackObject.StackObjectType.Rune:
                GC.Mov(Register.X0, 0);
                GC.Push(Register.X0);
                GC.PushObject(GC.IntObject());
                break;
                
            case StackObject.StackObjectType.Bool:
                GC.Mov(Register.X0, 0); // false
                GC.Push(Register.X0);
                GC.PushObject(GC.BoolObject());
                break;
                
            case StackObject.StackObjectType.Float:
                GC.Mov(Register.X0, 0);
                GC.Scvtf(Register.D0, Register.X0);
                GC.Push(Register.D0);
                GC.PushObject(GC.FloatObject());
                break;
                
            case StackObject.StackObjectType.String:
                // Crear una cadena vacía
                GC.Push(Register.HP);
                GC.Mov("w0", 0); // Null terminator
                GC.Strb("w0", Register.HP);
                GC.Mov(Register.X0, 1);
                GC.Add(Register.HP, Register.HP, Register.X0);
                GC.PushObject(GC.StringObject());
                break;
                
            default:
                throw new Exception($"Unsupported type for default initialization: {declaredType}");
        }
        
        // Etiquetamos el objeto con el nombre de la variable
        GC.TagObject(varName);
        
        return null;
    }
    public override Object? VisitAssignment(LanguageParser.AssignmentContext context)
    {
        if(context.expr(0) is LanguageParser.IdentifierContext idContext) {
            string varName = idContext.ID().GetText();
            GC.Comment($"--Assignment to {varName}--");
            
            // Evaluar la expresión del lado derecho y obtener su valor
            Visit(context.expr(1));
            
            // Pop del valor calculado
            var valueObject = GC.PopObject(Register.X0);
            
            // Buscar la variable en el stack y obtener su offset
            var (offset, varObject) = GC.GetObject(varName);
            
            // Calcular la dirección de la variable
            GC.Mov(Register.X1, offset);
            GC.Add(Register.X1, Register.SP, Register.X1);
            
            // Almacenar el valor en la dirección calculada
            GC.Str(Register.X0, Register.X1);

            GC.Push(Register.X0); // Aquí se hace el push del valor calculado
            GC.PushObject(GC.CloneObject(varObject)); // Clonamos el objeto para evitar problemas de referencia
            
            // NO push el valor de vuelta al stack (esto estaba causando duplicados)
        } else {
            // Para otros tipos de asignación (slice, struct, etc.)
            // Implementar según sea necesario
            throw new Exception($"Assignment to non-identifier not implemented yet: {context.expr(0).GetText()}");
        }
    
        return null;
    }
    public override Object? VisitExprStmt(LanguageParser.ExprStmtContext context)
    {
        Visit(context.expr());
        GC.Comment("--Pop para limpiar--");
        GC.PopObject(Register.X0);
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
            GC.Comment("--POP value 2 print--");
            var isDouble = GC.TopObject().Type == StackObject.StackObjectType.Float;
            var value = GC.PopObject(isDouble? Register.D0 : Register.X0);

            if(value.Type == StackObject.StackObjectType.Int){
                GC.PrintInt(Register.X0);
            }else if(value.Type == StackObject.StackObjectType.Rune){
                GC.PrintRune(Register.X0);
            }else if(value.Type == StackObject.StackObjectType.Bool){
                GC.PrintBool(Register.X0);
            }else if(value.Type == StackObject.StackObjectType.Float){
                GC.PrintFloat();
            }else if(value.Type == StackObject.StackObjectType.String){
                GC.PrintString(Register.X0);
            }else{
                throw new Exception($"Unknown type for print: {value.Type}");
            }
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
        var id = context.ID().GetText();
        var (offset, obj) = GC.GetObject(id);
        
        GC.Comment($"--Load variable {id}--");
        GC.Mov(Register.X0, offset);
        GC.Add(Register.X0, Register.SP, Register.X0); // ¡Error aquí! Usabas X1 incorrectamente
        
        GC.Ldr(Register.X0, Register.X0); // Error también aquí, usabas X1 incorrectamente
        GC.Push(Register.X0);
        
        var newObject = GC.CloneObject(obj);
        newObject.Id = null;
        GC.PushObject(newObject);
        return null;
    }
    public override Object? VisitAtoiStmt(LanguageParser.AtoiStmtContext context)
    {
        GC.Comment("--Atoi function--");
    
        // Evaluar la expresión que contiene la cadena
        Visit(context.expr());
        
        // Verificar que lo que recibimos es un string
        if (GC.TopObject().Type != StackObject.StackObjectType.String)
        {
            throw new Exception("Atoi requires a string argument");
        }
        
        // Obtener la dirección de la cadena en X0
        GC.PopObject(Register.X0);
        
        // Llamar a la función de biblioteca que convierte un string a entero
        GC.AtoiFunction();
        
        // El resultado está en X0 como un entero
        GC.Push(Register.X0);
        GC.PushObject(GC.IntObject());
        return null;
    }
    public override Object? VisitTypeOfStmt (LanguageParser.TypeOfStmtContext context)
    {
        GC.Comment("--TypeOf function--");
        
        // Make sure to use the library for symbols
        GC.TypeOfFunction();
        
        // Evaluate the expression
        Visit(context.expr());
        
        var objType = GC.TopObject().Type;
        GC.PopObject(); // Remove the value but don't put it in a register
        
        // Set the result based on type
        switch (objType)
        {
            case StackObject.StackObjectType.Int:
                GC.Adr(Register.X0, "type_int_str");
                break;
            case StackObject.StackObjectType.Float:
                GC.Adr(Register.X0, "type_float_str");
                break;
            case StackObject.StackObjectType.Bool:
                GC.Adr(Register.X0, "type_bool_str");
                break;
            case StackObject.StackObjectType.String:
                GC.Adr(Register.X0, "type_string_str");
                break;
            case StackObject.StackObjectType.Rune:
                GC.Adr(Register.X0, "type_rune_str");
                break;
            default:
                GC.Adr(Register.X0, "type_undefined_str");
                break;
        }
        
        // Push the result to the stack
        GC.Push(Register.X0);
        GC.PushObject(GC.StringObject());  // The result is a string
        
        return null;
    }
    public override Object? VisitParseFloatStmt (LanguageParser.ParseFloatStmtContext context)
    {
        GC.Comment("--ParseFloat function--");
    
        // Evaluate the expression that contains the string
        Visit(context.expr());
        
        // Verify that what we received is a string
        if (GC.TopObject().Type != StackObject.StackObjectType.String)
        {
            throw new Exception("ParseFloat requires a string argument");
        }
        
        // Get the string address in X0
        GC.PopObject(Register.X0);
        
        // Call the library function that converts a string to float
        GC.ParseFloatFunction();
        
        // Result is in D0 as a floating point number
        GC.Push(Register.D0);
        GC.PushObject(GC.FloatObject());
        return null;
    }
    public override Object? VisitBlockStmt(LanguageParser.BlockStmtContext context)
    {
        GC.Comment("--Block Stmt--");
        GC.NewScope();

        foreach (var smt in context.dcl())
        {
            Visit(smt);
        }

        int bytesToRemove = GC.EndScope();
        if(bytesToRemove > 0)
        {
            GC.Comment($"--Pop {bytesToRemove} bytes--");
            GC.Mov(Register.X0, bytesToRemove);
            GC.Add(Register.SP, Register.SP, Register.X0);
            GC.Comment("Stack pointer updated");
        }
        return null;
    }
    public override Object? VisitIfStmt(LanguageParser.IfStmtContext context)
    {
        GC.Comment("--If statement--");
        Visit(context.condition());
        GC.PopObject(Register.X0);

        var HasElse = context.stmt().Length > 1;

        if(HasElse){
            var elseLabel = GC.GetLable();
            var endLabel = GC.GetLable();

            GC.cbz(Register.X0, elseLabel);
            Visit(context.stmt(0));
            GC.B(endLabel);
            GC.SetLable(elseLabel);
            Visit(context.stmt(1));
            GC.SetLable(endLabel);
        }else{
            var endLabel = GC.GetLable();
            GC.cbz(Register.X0, endLabel);
            Visit(context.stmt(0));
            GC.SetLable(endLabel);
        }
        return null;
    }

        public override Object? VisitSwitchStmt(LanguageParser.SwitchStmtContext context)
    {
        GC.Comment("--Switch statement--");
        
        // Guardar break label anterior y establecer uno nuevo
        var previousBreakLabel = breakLabel;
        switchEndLabel = GC.GetLable();
        breakLabel = switchEndLabel;
        
        // Crear un nuevo scope para el switch
        GC.NewScope();
        
        // Evaluar la expresión del switch
        Visit(context.expr());
        
        // Guardar el valor del switch en X19 (registro callee-saved)
        GC.Comment("--Save switch value to X19--");
        GC.PopObject(Register.X0);
        GC.instructions.Add("MOV X19, X0");
        currentSwitchValue = "X19";
        
        // Inicializar o limpiar el diccionario de etiquetas
        caseLabels.Clear();
        switchHasDefault = false;
        
        // Fase 1: Crear etiquetas para cada caso
        switchPhase = 0;
        foreach (var switchCase in context.switchCase())
        {
            Visit(switchCase); // Esto llamará a VisitCaseClause o VisitDefaultClause
        }
        
        // Fase 2: Generar comparaciones
        switchPhase = 1;
        foreach (var switchCase in context.switchCase())
        {
            if (switchCase is LanguageParser.CaseClauseContext)
                Visit(switchCase); // Llamará a VisitCaseClause
        }
        
        // Si ningún caso coincide, saltar al default o al final
        if (switchHasDefault)
        {
            GC.B(switchDefaultLabel);
        }
        else
        {
            GC.B(switchEndLabel);
        }
        
        // Fase 3: Generar cuerpos
        switchPhase = 2;
        foreach (var switchCase in context.switchCase())
        {
            Visit(switchCase); // Llama a VisitCaseClause o VisitDefaultClause para generar los cuerpos
        }
        
        // Etiqueta de fin del switch
        GC.SetLable(switchEndLabel);
        
        // Limpiar el scope
        var bytesToRemove = GC.EndScope();
        if (bytesToRemove > 0)
        {
            GC.Comment($"--Pop {bytesToRemove} bytes--");
            GC.Mov(Register.X0, bytesToRemove);
            GC.Add(Register.SP, Register.SP, Register.X0);
            GC.Comment("Stack pointer updated");
        }
        
        // Restaurar break label anterior
        breakLabel = previousBreakLabel;
        
        return null;
        }
        public override Object? VisitCaseClause(LanguageParser.CaseClauseContext context)
        {   
                if (switchPhase == 0) // Fase de creación de etiquetas
            {
                caseLabels[context] = GC.GetLable();
            }
            else if (switchPhase == 1) // Fase de comparación
            {
            GC.Comment("--Case comparison--");
            // Evaluar la expresión del caso
            Visit(context.expr());
            var caseValueObj = GC.PopObject(Register.X0);
            
            // Restaurar el valor del switch desde la variable global
            GC.instructions.Add($"MOV X1, {currentSwitchValue}");
            
            // Comparar según el tipo
            if (caseValueObj.Type == StackObject.StackObjectType.String)
            {
                GC.StringCompare();
                GC.Cmp(Register.X0, 0);
                GC.Beq(caseLabels[context]);
            }
            else
            {
                GC.Cmp(Register.X1, Register.X0);
                GC.Beq(caseLabels[context]);
            }
        }
        else if (switchPhase == 2) // Fase de generar cuerpos
        {
            GC.Comment("--Case body--");
            GC.SetLable(caseLabels[context]);
            
            // Visitar cada sentencia en el cuerpo
            foreach (var stmt in context.stmt())
            {
                Visit(stmt);
            }
        }
        
        return null;
        }
        public override Object? VisitDefaultClause(LanguageParser.DefaultClauseContext context)
        {
            if (switchPhase == 0) // Fase de creación de etiquetas
            {
                switchDefaultLabel = GC.GetLable();
                switchHasDefault = true;
            }
            else if (switchPhase == 2) // Fase de generar cuerpos
            {
                GC.Comment("--Default case--");
                GC.SetLable(switchDefaultLabel);
                
                // Visitar cada sentencia en el cuerpo
                foreach (var stmt in context.stmt())
                {
                    Visit(stmt);
                }
            }
            
            return null;
        }
        public override Object? VisitForStmt(LanguageParser.ForStmtContext context)
        {
            if(context.forInit() != null){
                return HandleForClasssic(context);
            }else{
                return HandleForCondition(context);
            }
        }
        //For
        private Object? HandleForClasssic(LanguageParser.ForStmtContext context)
        {
            var previousContinueLabel = continueLabel;
            var previousBreakLabel = breakLabel;

            var startLabel = GC.GetLable();
            var conditionLabel = GC.GetLable(); // Nueva etiqueta para la condición
            var endLabel = GC.GetLable();
            var incrementLabel = GC.GetLable();

            continueLabel = incrementLabel;
            breakLabel = endLabel;

            GC.NewScope();

            GC.Comment("--For CLASSIC--");
            // Inicialización
            if (context.forInit() != null)
            {
                Visit(context.forInit());
            }
            
            // Salto directo a la evaluación de la condición
            GC.B(conditionLabel);
            
            GC.SetLable(startLabel);
            // Visitar el cuerpo
            GC.Comment("--For CLASSIC body--");
            Visit(context.stmt());
            
            // Continue label - incremento
            GC.SetLable(incrementLabel);
            GC.Comment("--For CLASSIC increment--");
            
            // Visitar la expresión de incremento
            if (context.expr() != null && context.expr().Length > 1) {
                Visit(context.expr(1));
                GC.PopObject(Register.X0);  // Limpiar después de la expresión
            }
            
            // Evaluación de la condición después del incremento
                GC.SetLable(conditionLabel);
            if (context.expr() != null)
            {
                GC.Comment("--For condition--");
                Visit(context.expr(0));
                GC.PopObject(Register.X0);
                
                // Cambio aquí: usar CBZ para comprobar si la condición es falsa
                GC.Cmp(Register.X0, 0);
                GC.Beq(endLabel);  // Si es falso (0), salir del bucle
                
                // Si es verdadero, continuar con el cuerpo
                GC.B(startLabel);
            }
            else {
                // Si no hay condición, siempre volver al cuerpo (bucle infinito)
                GC.B(startLabel);
            }
            
            // Etiqueta de fin del bucle
            GC.SetLable(endLabel);

            // Limpiar el scope
            var bytesToRemove = GC.EndScope();
            if (bytesToRemove > 0)
            {
                GC.Comment($"--Pop {bytesToRemove} bytes--");
                GC.Mov(Register.X0, bytesToRemove);
                GC.Add(Register.SP, Register.SP, Register.X0);
                GC.Comment("Stack pointer updated");
            }

            GC.Comment("--End For CLASSIC--");
            continueLabel = previousContinueLabel;
            breakLabel = previousBreakLabel;

            return null;
    }
    //While
    private Object? HandleForCondition(LanguageParser.ForStmtContext context)
    {
        var previousContinueLabel = continueLabel;
        var previousBreakLabel = breakLabel;

        var startLabel = GC.GetLable();
        var endLabel = GC.GetLable();

        continueLabel = startLabel;
        breakLabel = endLabel;

        GC.SetLable(startLabel);
        GC.Comment("--For WHILE condition--");
        Visit(context.condition());
        GC.PopObject(Register.X0);
        GC.cbz(Register.X0, endLabel);
        GC.Comment("--For WHILE body--");
        Visit(context.stmt());
        GC.B(startLabel);
        GC.SetLable(endLabel);

        continueLabel = previousContinueLabel;
        breakLabel = previousBreakLabel;
        return null;
    }
    public override Object? VisitRangeInit(LanguageParser.RangeInitContext context)
    {
        return null;
    }
    public override Object? VisitBreakStmt(LanguageParser.BreakStmtContext context)
    {
        GC.Comment("--Break statement--");
        GC.B(breakLabel);

        return null;
    }
    public override Object? VisitContinueStmt(LanguageParser.ContinueStmtContext context)
    {
        GC.Comment("--Continue statement--");
        GC.B(continueLabel);
        return null;
    }
    public override Object? VisitReturnStmt(LanguageParser.ReturnStmtContext context)
    {
        GC.Comment("--Return statement--");
        if(context.expr() == null){
            GC.Br(returnLabel);
            return null;
        }

        if(insideFunction == null) throw new Exception("Return statement outside of function");

        Visit(context.expr());
        GC.PopObject(Register.X0);

        var frameSize = function[insideFunction].FrameSize;
        var returnOffset = frameSize - 1;

        GC.Mov(Register.X1, returnOffset*8);
        GC.Sub(Register.X1, Register.FP, Register.X1);
        GC.Str(Register.X0, Register.X1); // Store the return value in the frame
        GC.B(returnLabel); // Jump to the return label 

        GC.Comment($"--End return statement--");
        return null;
    }
    public override Object? VisitCaller(LanguageParser.CallerContext context)
    {
        if(context.expr() is not LanguageParser.IdentifierContext idContext) return null;
        if(context.call() is not LanguageParser.CallContext[] funcCallContext) return null;

        string funcName = idContext.ID().GetText();
        var callContext = funcCallContext[0];

        var postFuncCallLabel = GC.GetLable();

        int baseOffset = 2;
        int stackElements = 8;
        GC.Mov(Register.X0, baseOffset*stackElements);
        GC.Sub(Register.SP, Register.SP, Register.X0);

        if(callContext.args() != null){
            GC.Comment("--Function parameters--");
            foreach(var param in callContext.args().expr()){
                Visit(param);
            }
        }

        //Calcular el valor del FP
         GC.Mov(Register.X0, baseOffset*stackElements);
        //GC.Mov(Register.X0, stackElements*(baseOffset + callContext.args().expr().Length));
        //Regresar al SP al incio del frame
        GC.Add(Register.SP, Register.SP, Register.X0);

        //Calcular las posicion del SP
        GC.Mov(Register.X0, stackElements);
        //Se almacena el SP en X0
        GC.Sub(Register.X0, Register.SP, Register.X0);

        GC.Adr(Register.X1, postFuncCallLabel); //Direccion de la funcion
        GC.Push(Register.X1);// Push de la direccion al stack

        GC.Push(Register.FP); // Guardar el FP actual
        GC.Add(Register.FP, Register.X0, Register.XZR); // Actualizar el FP al nuevo frame

        int FrameSize = function[funcName].FrameSize;
        GC.Mov(Register.X0, (FrameSize-2)*stackElements);
        GC.Sub(Register.SP, Register.SP, Register.X0); // Reservar espacio para el nuevo frame

        GC.Comment("--llamando a la funcion--");
        GC.Bl(funcName); // Llamar a la función
        GC.Comment("--llamada realizada--");
        GC.SetLable(postFuncCallLabel);
        
        //Obetener el valor del retorno
        var returnOffset = FrameSize -1;
        GC.Mov(Register.X4, returnOffset*stackElements);
        GC.Sub(Register.X4, Register.FP, Register.X4);
        GC.Ldr(Register.X4, Register.X4);

        //Regresar el FP al contexto de ejecucion previo
        GC.Mov(Register.X1, stackElements);
        GC.Sub(Register.X1, Register.FP, Register.X1);
        GC.Ldr(Register.FP, Register.X1);

        GC.Mov(Register.X0, stackElements * FrameSize);
        GC.Add(Register.SP, Register.SP, Register.X0); // Agrega el frameSize al stack

        GC.Push(Register.X4); // Push del valor del retorno al stack
        GC.PushObject(new StackObject{
            Type = function[funcName].ReturnType,
            Id = null,
            Offset = 0,
            length = 8,
        });

        GC.Comment($"--End function call {funcName}--");

        return null;
    }
    public override Object? VisitFuncDcl([NotNull] LanguageParser.FuncDclContext context)
    {
        int baseOffset = 2;
        int parameterOffset = 0;
        
        if(context.funcParams() != null){
            parameterOffset = context.funcParams().paramDcl().Length;
        }

        FrameVisitor frameVisitor = new FrameVisitor(baseOffset + parameterOffset);

        foreach(var dcl in context.dcl()){
            frameVisitor.Visit(dcl);
        }

        var frame = frameVisitor.Frame;
        int LocalOffset = frameVisitor.LocalOffset;
        int returnOffset = frameVisitor.BaseOffset;

        int totalFrameSize = baseOffset + parameterOffset + LocalOffset + returnOffset;

        string funcName = context.ID().GetText();
        StackObject.StackObjectType funcType = context.TYPE() != null 
        ? GetType(context.TYPE().GetText()) 
        : StackObject.StackObjectType.Undefined;

        function.Add(funcName, new FunctionMetadata{
            FrameSize = totalFrameSize,
            ReturnType = funcType
        });

        var prevInstructions = GC.instructions;
        GC.instructions = new List<string>();

        if (context.funcParams() != null) {
            var paramCounter = 0;
            foreach (var param in context.funcParams().paramDcl()) {
                GC.PushObject(new StackObject
                {
                    Type = GetType(param.TYPE().GetText()),
                    Id = param.ID().GetText(),
                    Offset = paramCounter + baseOffset,
                    length = 8,
                });
                paramCounter++;
            }
        }

        foreach(FrameElement element in frame){
            GC.PushObject(new StackObject
            {
                Type = StackObject.StackObjectType.Undefined,
                Id = element.Name,
                Offset = element.Offset,
                length = 8,
            });
        }

        insideFunction = funcName;
        framePointerOffset = 0;

        returnLabel = GC.GetLable();
        
        GC.Comment("Function declaration: " + funcName);
        GC.SetLable(funcName);
        GC.instructions.Add(".global " + funcName); 

        foreach(var dcl in context.dcl()){
            Visit(dcl);
        }

        // Aquí está la corrección para el retorno de la función
        GC.SetLable(returnLabel);
        GC.Comment("-- Return from function --");
        
        // Cargar la dirección de retorno almacenada en el frame
        // El link register (LR) se guardó en el frame en [FP, #-8]
        GC.Mov(Register.X0, 8);  // Offset de 8 bytes para lr
        GC.Sub(Register.X0, Register.FP, Register.X0);
        GC.Ldr(Register.LR, Register.X0);
        
        // Restaurar el frame pointer que se guardó en [FP, #-16]
        GC.Mov(Register.X0, 16);  // Offset de 16 bytes para fp
        GC.Sub(Register.X0, Register.FP, Register.X0);
        GC.Ldr(Register.FP, Register.X0);

        // Volver a la dirección de retorno
        GC.Ret();  // Usar RET en lugar de BR LR - más claro y directo

        GC.Comment($"--End function {funcName}--");

        //Limpiar el stack
        for(int i = 0; i<parameterOffset + LocalOffset; i++){
            GC.PopObject();
        }

        foreach(var instruction in GC.instructions){
            GC.funcInstructions.Add(instruction);
        }

        GC.instructions = prevInstructions;
        insideFunction = null;
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
        
        // Determinar el tipo de operación según el operador
        string op = context.op.Text;
        
        if (op == "-") {
            // Negación numérica (ya implementada en tu código)
            GC.Comment("--Numeric negation--");
            
            var isFloatValue = GC.TopObject().Type == StackObject.StackObjectType.Float;
            
            if (isFloatValue) {
                GC.Pop(Register.D0);
                GC.Fneg(Register.D0, Register.D0);
                GC.Push(Register.D0);
            } else {
                GC.Pop(Register.X0);
                GC.Neg(Register.X0, Register.X0);
                GC.Push(Register.X0);
            }
            
            // No es necesario cambiar el tipo del objeto en la pila
        } 
        else if (op == "!") {
            // Negación lógica
            GC.Comment("--Logical negation--");
            
            // Obtener el valor booleano
            GC.PopObject(Register.X0);
            
            // Negar el valor: si X0 es 0, se convierte en 1; si X0 es 1, se convierte en 0
            GC.Cmp(Register.X0, 0);
            var trueLabel = GC.GetLable();
            var endLabel = GC.GetLable();
            
            GC.Beq(trueLabel);  // Si X0 es 0 (falso), ir a trueLabel
            
            // Si X0 es 1 (verdadero), convertir a 0 (falso)
            GC.Mov(Register.X0, 0);
            GC.B(endLabel);
            
            // Si X0 es 0 (falso), convertir a 1 (verdadero)
            GC.SetLable(trueLabel);
            GC.Mov(Register.X0, 1);
            
            GC.SetLable(endLabel);
            GC.Push(Register.X0);
            GC.PushObject(GC.BoolObject());  // El resultado siempre es un booleano
        }
        
        return null;
    }
    public override Object? VisitAddSub(LanguageParser.AddSubContext context)
    {
        GC.Comment("--Add/Subtract--");
        Visit(context.expr(0));
        Visit(context.expr(1));

        GC.Comment("--Pop Values R--");
        var isRightDouble = GC.TopObject().Type == StackObject.StackObjectType.Float;
        var isRightString = GC.TopObject().Type == StackObject.StackObjectType.String;
        var right = GC.PopObject(isRightDouble? Register.D0 : Register.X0);
        
        GC.Comment("--Pop Values L--");
        var isLeftDouble = GC.TopObject().Type == StackObject.StackObjectType.Float;
        var isLeftString = GC.TopObject().Type == StackObject.StackObjectType.String;
        var left = GC.PopObject(isLeftDouble? Register.D1 : Register.X1);

        var op = context.op.Text;

        if(op == "+" && (isLeftString && isRightString)){
            return HandleStringConcat();
        }

        if(isLeftDouble || isRightDouble){
            if(!isRightDouble) GC.Scvtf(Register.D0, Register.X0);// Convertir right a double
            if(!isLeftDouble) GC.Scvtf(Register.D1, Register.X1);// Convertir left a double

            if(op == "+")
            {
                GC.Fadd(Register.D0, Register.D0, Register.D1);
            }
            else if(op == "-")
            {
                GC.Fsub(Register.D0, Register.D1, Register.D0);
            }
            else
            {
                throw new Exception("Unknown operator: " + op);
            }
            GC.Comment("--Push Result--");
            GC.Push(Register.D0);
            GC.PushObject(GC.CloneObject(isLeftDouble? left : right));
        }else{
            if(op == "+")
            {
                GC.Add(Register.X0, Register.X0, Register.X1);
            }
            else if(op == "-")
            {
                GC.Sub(Register.X0, Register.X1, Register.X0);
            }
            else
            {
                throw new Exception("Unknown operator: " + op);
            }
            GC.Comment("--Push Result--");
            GC.Push(Register.X0);
            GC.PushObject(GC.CloneObject(left));
            GC.PushObject(GC.CloneObject(right));
        }
        return null;
    }

    private Object? HandleStringConcat(){
        GC.Comment("--String Concatenation--");
        // X0 ya contiene el segundo string
        // X1 ya contiene el primer string
        // La función concat_string espera:
        // X0 = primer string
        // X1 = segundo string
        GC.Push(Register.X0);  // Guardar segundo string en stack
        GC.Push(Register.X1);  // Guardar primer string en stack
        
        // Recuperar en el orden correcto
        GC.Pop(Register.X0);   // Primer string ahora en X0
        GC.Pop(Register.X1);   // Segundo string ahora en X1
        
        // Llamar a la función de concatenación
        GC.ConcatString();
        
        // El resultado está en X0
        GC.Push(Register.X0);              // Guardar resultado en la pila
        GC.PushObject(GC.StringObject()); // Indicar que es un string
        
        return null;
    }
    public override Object? VisitImplicitAddSub(LanguageParser.ImplicitAddSubContext context)
    {
        string varName = context.ID().GetText();
        GC.Comment($"--Implicit {context.op.Text} operation on {varName}--");
        
        // Obtener información sobre la variable
        var (offset, varObject) = GC.GetObject(varName);
        
        // Cargar el valor actual de la variable en X1
        GC.Comment("--Load current variable value--");
        GC.Mov(Register.X0, offset);
        GC.Add(Register.X0, Register.SP, Register.X0);
        
        // Guardar la dirección de memoria para después
        GC.Push(Register.X0);
        
        // Cargar el valor según el tipo
        if (varObject.Type == StackObject.StackObjectType.Float) {
            GC.Ldr(Register.D1, Register.X0);
        } else {
            GC.Ldr(Register.X1, Register.X0);
        }
        
        // Evaluar la expresión del lado derecho
        GC.Comment("--Evaluate right operand--");
        Visit(context.expr());
        
        // Obtener el valor de la expresión
        var isRightDouble = GC.TopObject().Type == StackObject.StackObjectType.Float;
        var right = GC.PopObject(isRightDouble ? Register.D0 : Register.X0);
        
        // Operaciones numéricas
        if (varObject.Type == StackObject.StackObjectType.Float || isRightDouble) {
            // Convertir a float si es necesario
            if (varObject.Type != StackObject.StackObjectType.Float) {
                GC.Scvtf(Register.D1, Register.X1);
            }
            if (!isRightDouble) {
                GC.Scvtf(Register.D0, Register.X0);
            }
            
            // Realizar la operación según el operador
            if (context.op.Text == "+=") {
                GC.Comment("--Adding floats--");
                GC.Fadd(Register.D0, Register.D1, Register.D0);
            } else if (context.op.Text == "-=") {
                GC.Comment("--Subtracting floats--");
                GC.Fsub(Register.D0, Register.D1, Register.D0);
            }
            
            // Guardar el resultado en la variable
            GC.Pop(Register.X2);  // Recuperar dirección de memoria
            GC.Str(Register.D0, Register.X2);
            
            // Push del resultado para la pila
            GC.Push(Register.D0);
            GC.PushObject(GC.FloatObject());
        } else {
            // Realizar la operación según el operador
            if (context.op.Text == "+=") {
                GC.Comment("--Adding integers--");
                GC.Add(Register.X0, Register.X1, Register.X0);
            } else if (context.op.Text == "-=") {
                GC.Comment("--Subtracting integers--");
                GC.Sub(Register.X0, Register.X1, Register.X0);
            }
            
            // Guardar el resultado en la variable
            GC.Pop(Register.X2);  // Recuperar dirección de memoria
            GC.Str(Register.X0, Register.X2);
            
            // Push del resultado para la pila
            GC.Push(Register.X0);
            GC.PushObject(GC.CloneObject(varObject));
        }
        return null;
    }
    public override Object? VisitIncDec(LanguageParser.IncDecContext context)
    {
        string varName = context.ID().GetText();
        string operation = context.op.Text;
        
        GC.Comment($"--{operation} operator for {varName}--");
        
        // Obtener la dirección y el objeto de la variable
        var (offset, varObject) = GC.GetObject(varName);
        
        // Cargar el valor actual de la variable en un registro
        GC.Mov(Register.X0, offset);
        GC.Add(Register.X0, Register.SP, Register.X0);  // X0 ahora contiene la dirección de la variable
        
        // Guardar la dirección para actualizar después
        GC.Push(Register.X0);  // Guardar la dirección en la pila
        
        if (varObject.Type == StackObject.StackObjectType.Float)
        {
            // Para float64
            GC.Ldr(Register.D1, Register.X0);  // Cargar el valor en D1
            
            // Incrementar o decrementar según el operador
            if (operation == "++")
            {
                GC.Comment("--Incremento de float--");
                // Cargar constante 1.0 en D0
                GC.Mov(Register.X0, 1);
                GC.Scvtf(Register.D0, Register.X0);  // Convertir 1 a flotante
                GC.Fadd(Register.D1, Register.D1, Register.D0);  // D1 = D1 + 1.0
            }
            else if (operation == "--")
            {
                GC.Comment("--Decremento de float--");
                // Cargar constante 1.0 en D0
                GC.Mov(Register.X0, 1);
                GC.Scvtf(Register.D0, Register.X0);  // Convertir 1 a flotante
                GC.Fsub(Register.D1, Register.D1, Register.D0);  // D1 = D1 - 1.0
            }
            
            // Actualizar el valor en memoria
            GC.Pop(Register.X0);  // Recuperar la dirección
            GC.Str(Register.D1, Register.X0);
            
            // Push el valor resultante en la pila para usarlo como resultado de la expresión
            GC.Push(Register.D1);
            GC.PushObject(GC.FloatObject());
        }
        else
        {
            // Para enteros y otros tipos numéricos
            GC.Ldr(Register.X1, Register.X0);  // Cargar el valor en X1
            
            // Incrementar o decrementar según el operador
            if (operation == "++")
            {
                GC.Comment("--Incremento de entero--");
                GC.Add(Register.X1, Register.X1, "#1");
            }
            else if (operation == "--")
            {
                GC.Comment("--Decremento de entero--");
                GC.Sub(Register.X1, Register.X1, "#1");
            }
            
            // Actualizar el valor en memoria
            GC.Pop(Register.X0);  // Recuperar la dirección
            GC.Str(Register.X1, Register.X0);
            
            // Push el valor resultante en la pila para usarlo como resultado de la expresión
            GC.Push(Register.X1);
            GC.PushObject(GC.CloneObject(varObject));
        }
        
        return null;
    }
    public override Object? VisitMDmod(LanguageParser.MDmodContext context)
    {
        GC.Comment("--Multiply/Divide/Modulo--");
        Visit(context.expr(0));
        Visit(context.expr(1));

        GC.Comment("--Pop Values R--");
        var isRightDouble = GC.TopObject().Type == StackObject.StackObjectType.Float;
        var right = GC.PopObject(isRightDouble? Register.D0 : Register.X0);
        
        GC.Comment("--Pop Values L--");
        var isLeftDouble = GC.TopObject().Type == StackObject.StackObjectType.Float;
        var left = GC.PopObject(isLeftDouble? Register.D1 : Register.X1);

        var op = context.op.Text;

        if(isLeftDouble || isRightDouble){
            if(!isRightDouble) GC.Scvtf(Register.D0, Register.X0);// Convertir right a double
            if(!isLeftDouble) GC.Scvtf(Register.D1, Register.X1);// Convertir left a double

            if(op == "*")
            {
                GC.Fmul(Register.D0, Register.D1, Register.D0);
            }
            else if(op == "/")
            {
                GC.Fdiv(Register.D0, Register.D1, Register.D0);
            }
            else
            {
                throw new Exception("Unknown operator: " + op);
            }
            GC.Comment("--Push Result--");
            GC.Push(Register.D0);
            GC.PushObject(GC.FloatObject());  // El resultado será siempre float si alguno de los operandos es float
        }
        else{
            if(op == "*")
            {
                GC.Mul(Register.X0, Register.X1, Register.X0);
            }
            else if(op == "/")
            {
                // Verificar división por cero
                GC.Cmp(Register.X0, 0);
                var errorLabel = GC.GetLable();
                var continueLabel = GC.GetLable();
                GC.Beq(errorLabel);
                
                GC.Div(Register.X0, Register.X1, Register.X0);
                GC.B(continueLabel);
                
                GC.SetLable(errorLabel);
                GC.Comment("--Division by zero error--");
                // Aquí podrías implementar un manejo de error, como imprimir un mensaje
                // Por ahora, establecemos un valor predeterminado (0) para evitar crash
                GC.Mov(Register.X0, 0);
                
                GC.SetLable(continueLabel);
            }
            else if(op == "%")
            {
                // Verificar módulo por cero
                GC.Cmp(Register.X0, 0);
                var errorLabel = GC.GetLable();
                var continueLabel = GC.GetLable();
                GC.Beq(errorLabel);
                
                // Para enteros, usamos la instrucción MSUB (multiply-subtract)
                GC.Div(Register.X2, Register.X1, Register.X0);  // X2 = X1 / X0
                GC.Mul(Register.X2, Register.X2, Register.X0);  // X2 = X2 * X0
                GC.Sub(Register.X0, Register.X1, Register.X2);  // X0 = X1 - X2
                GC.B(continueLabel);
                
                GC.SetLable(errorLabel);
                GC.Comment("--Modulo by zero error--");
                // Como con la división, establecemos un valor predeterminado
                GC.Mov(Register.X0, 0);
                
                GC.SetLable(continueLabel);
            }
            else
            {
                throw new Exception("Unknown operator: " + op);
            }
            GC.Comment("--Push Result--");
            GC.Push(Register.X0);
            GC.PushObject(GC.CloneObject(left));
        }
        return null;
    }
    public override Object? VisitRelational (LanguageParser.RelationalContext context)
    {
        GC.Comment("--Relational--");
        var operation = context.op.Text;
        Visit(context.expr(0));
        Visit(context.expr(1));

        GC.Comment("--Pop Values R--");
        var isRightDouble = GC.TopObject().Type == StackObject.StackObjectType.Float;
        var isRightRune = GC.TopObject().Type == StackObject.StackObjectType.Rune;
        var right = GC.PopObject(isRightDouble? Register.D0 : Register.X0);
        
        GC.Comment("--Pop Values L--");
        var isLeftDouble = GC.TopObject().Type == StackObject.StackObjectType.Float;
        var isLeftRune = GC.TopObject().Type == StackObject.StackObjectType.Rune;
        var left = GC.PopObject(isLeftDouble? Register.D1 : Register.X1);

        var trueLabel = GC.GetLable();
        var endLabel = GC.GetLable();

        if(isLeftDouble || isRightDouble){
            GC.Comment("--Float relational comparison--");
            if(!isRightDouble) GC.Scvtf(Register.D0, Register.X0);// Convertir right a double
            if(!isLeftDouble) GC.Scvtf(Register.D1, Register.X1);// Convertir left a double

            GC.Fcmp(Register.D1, Register.D0);

            switch (operation)
            {
                case "<":
                    GC.Blt(trueLabel);
                    break;
                case "<=":
                    GC.Ble(trueLabel);
                    break;
                case ">":
                    GC.Bgt(trueLabel);
                    break;
                case ">=":
                    GC.Bge(trueLabel);
                    break;
                default:
                    throw new Exception($"Unknown relational operator: {operation}");
            }
        }else if(isLeftRune && isRightRune){
            GC.Comment("--Rune relational comparison--");
            // Comparar los runes
            GC.Cmp(Register.X1, Register.X0);

            switch (operation)
            {
                case "<":
                    GC.Blt(trueLabel);
                    break;
                case "<=":
                    GC.Ble(trueLabel);
                    break;
                case ">":
                    GC.Bgt(trueLabel);
                    break;
                case ">=":
                    GC.Bge(trueLabel);
                    break;
                default:
                    throw new Exception($"Unknown relational operator: {operation}");
            }
        }
        else{
            GC.Comment("--Integer relational comparison--");
            GC.Cmp(Register.X1, Register.X0);

        switch (operation)
        {
            case "<":
                GC.Blt(trueLabel);
                break;
            case "<=":
                GC.Ble(trueLabel);
                break;
            case ">":
                GC.Bgt(trueLabel);
                break;
            case ">=":
                GC.Bge(trueLabel);
                break;
            default:
                throw new Exception($"Unknown relational operator: {operation}");
        }
        }
        //Set que el valor es falso
        GC.Mov(Register.X0, 0);
        GC.Push(Register.X0);
        GC.B(endLabel);

        //Set que valor es verdadero
        GC.SetLable(trueLabel);
        GC.Mov(Register.X0, 1);
        GC.Push(Register.X0);
        GC.SetLable(endLabel);

        GC.PushObject(GC.BoolObject());
        return null;
    }
    public override Object? VisitEquality (LanguageParser.EqualityContext context)
    {
        GC.Comment("--Equality--");
        var operation = context.op.Text;
        Visit(context.expr(0));
        Visit(context.expr(1));

        GC.Comment("--Pop Values R--");
        var isRightDouble = GC.TopObject().Type == StackObject.StackObjectType.Float;
        var isRightRune = GC.TopObject().Type == StackObject.StackObjectType.Rune;
        var isRightString = GC.TopObject().Type == StackObject.StackObjectType.String;
        var right = GC.PopObject(isRightDouble? Register.D0 : Register.X0);

        GC.Comment("--Pop Values L--");
        var isLeftDouble = GC.TopObject().Type == StackObject.StackObjectType.Float;
        var isLeftRune = GC.TopObject().Type == StackObject.StackObjectType.Rune;
        var isLeftString = GC.TopObject().Type == StackObject.StackObjectType.String;
        var left = GC.PopObject(isLeftDouble? Register.D1 : Register.X1);

        var trueLabel = GC.GetLable();
        var endLabel = GC.GetLable();

        // Si alguno de los operandos es flotante, hacer comparación de flotantes
        if(isLeftDouble || isRightDouble){
            GC.Comment("--Float equality comparison--");
            
            // Convertir a flotantes si es necesario
            if (!isLeftDouble)
                GC.Scvtf(Register.D1, Register.X1);
            if (!isRightDouble)
                GC.Scvtf(Register.D0, Register.X0);
            
            // Comparar los flotantes
            GC.Fcmp(Register.D1, Register.D0);
            
            if (operation == "==")
                GC.Beq(trueLabel);
            else if (operation == "!=")
                GC.Bne(trueLabel);
        } else if(isLeftRune || isRightRune){
            GC.Comment("--Rune equality comparison--");
            // Comparar los runes
            GC.Cmp(Register.X1, Register.X0);
            
            if (operation == "==")
                GC.Beq(trueLabel);
            else if (operation == "!=")
                GC.Bne(trueLabel);
        }else if(isLeftString && isRightString){
            GC.Comment("--String equality comparison using library function--");
    
            // X1 contiene primer string, X0 contiene segundo string
            // Llamar a la función de comparación
            GC.StringCompare();
            
            // X0 ahora contiene 0 si son iguales, 1 si son diferentes
            GC.Cmp(Register.X0, 0);
            
            if (operation == "==")
                GC.Beq(trueLabel);
            else if (operation == "!=")
                GC.Bne(trueLabel);
        }
        // Comparación de enteros (y otros tipos no flotantes)
        else {
            GC.Comment("--Integer equality comparison--");
            GC.Cmp(Register.X1, Register.X0);
            
            if (operation == "==")
                GC.Beq(trueLabel);
            else if (operation == "!=")
                GC.Bne(trueLabel);
        }

        // Si no se cumple la condición, resultado = falso
        GC.Mov(Register.X0, 0); // false
        GC.Push(Register.X0);
        GC.B(endLabel);

        // Código para resultado verdadero
        GC.SetLable(trueLabel);
        GC.Mov(Register.X0, 1); // true
        GC.Push(Register.X0);
        
        // Etiqueta final
        GC.SetLable(endLabel);
        GC.PushObject(GC.BoolObject());
        
        return null;
    }
    public override Object? VisitLogicalOr(LanguageParser.LogicalOrContext context)
    {
            GC.Comment("--Logical OR--");
    
        // Evaluamos la primera expresión
        Visit(context.expr(0));
        
        // Obtenemos el valor del primer operando
        GC.PopObject(Register.X0);
        
        // Etiquetas para el flujo de control
        var trueLabel = GC.GetLable();
        var endLabel = GC.GetLable();
        
        // Verificamos si es verdadero (1) para cortocircuito
        GC.Cmp(Register.X0, 1);
        GC.Beq(trueLabel);  // Si es verdadero, saltamos directamente al resultado verdadero
        
        // Si el primer operando es falso, evaluamos el segundo
        Visit(context.expr(1));
        GC.PopObject(Register.X0);
        
        // El resultado está ahora en X0, lo pusheamos al stack
        GC.Push(Register.X0);
        GC.B(endLabel);
        
        // Si el primer operando es verdadero, el resultado es verdadero
        GC.SetLable(trueLabel);
        GC.Mov(Register.X0, 1);  // true
        GC.Push(Register.X0);
        
        GC.SetLable(endLabel);
        GC.PushObject(GC.BoolObject());
        
        return null;
    }
    public override Object? VisitLogicalAnd(LanguageParser.LogicalAndContext context)
    {
        GC.Comment("--Logical AND--");
        
        // Evaluamos la primera expresión
        Visit(context.expr(0));
        
        // Obtenemos el valor del primer operando
        GC.PopObject(Register.X0);
        
        // Etiquetas para el flujo de control
        var falseLabel = GC.GetLable();
        var endLabel = GC.GetLable();
        
        // Verificamos si es falso (0) para cortocircuito
        GC.Cmp(Register.X0, 0);
        GC.Beq(falseLabel);  // Si es falso, saltamos directamente al resultado falso
        
        // Si el primer operando es verdadero, evaluamos el segundo
        Visit(context.expr(1));
        GC.PopObject(Register.X0);
        
        // El resultado está ahora en X0, lo pusheamos al stack
        GC.Push(Register.X0);
        GC.B(endLabel);
        
        // Si el primer operando es falso, el resultado es falso
        GC.SetLable(falseLabel);
        GC.Mov(Register.X0, 0);  // false
        GC.Push(Register.X0);
        
        GC.SetLable(endLabel);
        GC.PushObject(GC.BoolObject());
        
        return null;
    }
    public override Object? VisitParens(LanguageParser.ParensContext context)
    {
        Visit(context.expr());
        return null;
    }
    public override Object? VisitCondition(LanguageParser.ConditionContext context)
    {
        GC.Comment("--Evaluating condition--");
        Visit(context.expr());
        
        // Make sure we have a boolean value
        var exprType = GC.TopObject().Type;
        if (exprType != StackObject.StackObjectType.Bool)
        {
            // If it's not a bool, we need to convert it
            // For example, non-zero integers are true
            GC.Comment("--Convert to boolean--");
            GC.PopObject(Register.X0);
            GC.Cmp(Register.X0, 0);
            var trueLabel = GC.GetLable();
            var endLabel = GC.GetLable();
            GC.Bne(trueLabel);
            GC.Mov(Register.X0, 0);  // false
            GC.Push(Register.X0);
            GC.B(endLabel);
            GC.SetLable(trueLabel);
            GC.Mov(Register.X0, 1);  // true
            GC.Push(Register.X0);
            GC.SetLable(endLabel);
            GC.PushObject(GC.BoolObject());
        }
        return null;
    }
    public override Object? VisitInteger(LanguageParser.IntegerContext context)
    {   
        var value = context.INT().GetText();
        GC.Comment("--Integer value--");
        var intObject = GC.IntObject();
        GC.PushConstant(intObject, int.Parse(value));
        return null;
    }
    public override Object? VisitFloat(LanguageParser.FloatContext context)
    {
        var value = context.FLOAT().GetText();
        var floatObject = GC.FloatObject();
        double valueDouble = double.Parse(value, CultureInfo.InvariantCulture);
        GC.PushConstant(floatObject, valueDouble);
        //GC.PushConstant(floatObject, float.Parse(value, CultureInfo.InvariantCulture));
        return null;
    }
    public override Object? VisitRune(LanguageParser.RuneContext context)
    {
        string runeText = context.RUNE().GetText();
    
        // Quitar las comillas simples
        string runeContent = runeText.Substring(1, runeText.Length - 2);
        
        // Manejar secuencias de escape
        char runeChar;
        if (runeContent.StartsWith("\\")) {
            switch (runeContent) {
                case "\\n": runeChar = '\n'; break;
                case "\\r": runeChar = '\r'; break;
                case "\\t": runeChar = '\t'; break;
                case "\\\"": runeChar = '\"'; break;
                case "\\'": runeChar = '\''; break;
                case "\\\\": runeChar = '\\'; break;
                default: runeChar = runeContent[1]; break;
            }
        } else {
            runeChar = runeContent[0];
        }
        
        GC.Comment($"--Rune value: '{runeChar}' ({(int)runeChar})--");
        var runeObject = GC.RuneObject();
        GC.PushConstant(runeObject, runeChar);
        
        return null;
    }
    public override Object? VisitString(LanguageParser.StringContext context)
    {
        var value = context.STRING().GetText().Trim('"');
        GC.Comment($"--String value: {value}--");
        var stringObject = GC.StringObject();
        GC.PushConstant(stringObject, value);
        return null;
    }
    public override Object? VisitBoolean(LanguageParser.BooleanContext context)
    {
        var value = context.BOOL().GetText();
        GC.Comment($"--Constant {value}--");
        var boolObject = GC.BoolObject();
        GC.PushConstant(boolObject, value == "true" ? true : false);
        
        return null;
    }

    StackObject.StackObjectType GetType(string type)
    {
        switch (type)
        {
            case "int":
                return StackObject.StackObjectType.Int;
            case "rune":
                return StackObject.StackObjectType.Rune;
            case "float64":
                return StackObject.StackObjectType.Float;
            case "string":
                return StackObject.StackObjectType.String;
            case "bool":
                return StackObject.StackObjectType.Bool;
            default:
                throw new Exception($"Unknown type: {type}");
        }
    }
}



/*
 if(isLeftDouble || isRightDouble){
            if(!isRightDouble) GC.Scvtf(Register.D0, Register.X0);// Convertir right a double
            if(!isLeftDouble) GC.Scvtf(Register.D1, Register.X1);// Convertir left a double

            if(operation == "<")
            {
                GC.Fcmp(Register.D0, Register.D1);
                GC.Fcsetlt(Register.X0);
            }
            else if(operation == "<=")
            {
                GC.Fcmp(Register.D0, Register.D1);
                GC.Fcsetle(Register.X0);
            }
            else if(operation == ">")
            {
                GC.Fcmp(Register.D0, Register.D1);
                GC.Fcsetgt(Register.X0);
            }
            else if(operation == ">=")
            {
                GC.Fcmp(Register.D0, Register.D1);
                GC.Fcsetge(Register.X0);
            }
*/