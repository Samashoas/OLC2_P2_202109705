using analyzer;
using Antlr4.Runtime.Misc;
using System.Globalization;
using Microsoft.AspNetCore.DataProtection.AuthenticatedEncryption.ConfigurationModel;
using System.Buffers;

public class InterpreterVisitor : LanguageBaseVisitor<ValueWrapper>
{
    public ValueWrapper defualtValue = new VoidValue();
    public string output = "";
    public Enviroment currentEnv = new Enviroment(null);

//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>INICIO POGRAMA<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    public override ValueWrapper VisitProgram(LanguageParser.ProgramContext context)
    {
        foreach (var dcl in context.dcl())
        {
            Visit(dcl);
        }
        
        // Intentar ejecutar main si existe
        try 
        {
            ValueWrapper mainFunction = currentEnv.GetVariable("main", context.Start);
            
            if (mainFunction is FunctionValue functionValue)
            {
                // Verificar que main no tenga parámetros
                if (functionValue.invocable.Arity() != 0)
                {
                    throw new ErrorSemantico("La función main no debe tener parámetros", context.Start);
                }
                
                // Ejecutar la función main con una lista vacía de argumentos
                VisitCall(functionValue.invocable, null);
            }
        }
        catch (KeyNotFoundException)
        {
            // Si no hay función main, simplemente no hacemos nada extra
            // y consideramos que el código ya se ejecutó en la primera pasada
        }
        catch (Exception ex) when (ex is not ReturnException)
        {
            throw;
        }
        
        return defualtValue;
    }

//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>DECLARACIONES<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    //Declaracion de variable implisito (ID := expr)
    public override ValueWrapper VisitImpDer(LanguageParser.ImpDerContext context)
    {
        string id = context.ID().GetText();
        ValueWrapper value = Visit(context.expr());
        //Entornos
        currentEnv.DeclareVariable(id, value, context.Start);
        return defualtValue;
    }
    //Declaracion de variable con tipo y expresion (var ID TYPE = expr)
    public override ValueWrapper VisitVarImpExpr(LanguageParser.VarImpExprContext context)
    {
        string id = context.ID().GetText();
        string type = context.TYPE().GetText();
        ValueWrapper value = Visit(context.expr());
        currentEnv.DeclareVariableTypeValue(id, type, value, context.Start);
        return defualtValue;
    }

    //Declaracion de variables sin expresion (var ID TYPE)
    public override ValueWrapper VisitVarImpNoExpr(LanguageParser.VarImpNoExprContext context)
    {
        string id = context.ID().GetText();
        string type = context.TYPE().GetText();
        currentEnv.DeclareVariableType(id, type, context.Start);
        return defualtValue;
    }
    
    //Asignacion de variables
    public override ValueWrapper VisitAssignment(LanguageParser.AssignmentContext context)
    {
        string id = context.expr(0).GetText();
        ValueWrapper value = Visit(context.expr(1));
        //Entornos
        currentEnv.AssignVariable(id, value, context.Start);
        return defualtValue;
    }
//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>STATMENTS VARIOS<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    public override ValueWrapper VisitExprStmt(LanguageParser.ExprStmtContext context)
    {
        return Visit(context.expr());
    }
    public override ValueWrapper VisitPrintStmt(LanguageParser.PrintStmtContext context)
    {
        var expressions = context.expr();
    
        if (expressions.Length == 0)
        {
            output += "\n";
            return defualtValue;
        }
        
        for (int index = 0; index < expressions.Length; index++)
        {
            ValueWrapper value = Visit(expressions[index]);
            
            string valueStr = value switch
            {
                IntValue intVal => intVal.Value.ToString(),
                FloatValue floatVal => floatVal.Value.ToString("0.00"),
                RuneValue runeVal => runeVal.Value.ToString(),
                StringValue strVal => strVal.Value,
                BoolValue boolVal => boolVal.Value.ToString().ToLower(),
                ArrayValue arrayVal => FormatArray(arrayVal),
                MatrixValue matrixVal => FormatMatrix(matrixVal),
                _ => throw new ErrorSemantico("Valor no imprimible", context.Start)
            };
            
            output += valueStr;
            
            if (index < expressions.Length - 1)
            {
                output += " ";
            }
        }
        
        output += "\n";
        
        return defualtValue;
    }


    public override ValueWrapper VisitIdentifier(LanguageParser.IdentifierContext context)
    {
        string id = context.ID().GetText();
        //Entornos
        return currentEnv.GetVariable(id, context.Start);
    }
    public override ValueWrapper VisitAtoiStmt(LanguageParser.AtoiStmtContext context)
    {
        ValueWrapper value = Visit(context.expr());

        if (value is not StringValue stringValue){
            throw new ErrorSemantico("No se puede convertir a string", context.Start);
        }

        string stringToParse = stringValue.Value.Trim();

        if(stringToParse.Contains(".") || stringToParse.Contains(","))
        {
            throw new ErrorSemantico("No se puede convertir a entero", context.Start);
        }

        if(int.TryParse(stringToParse, out int result)){
            return new IntValue(result);
        }
        else{
            throw new ErrorSemantico("No se puede convertir a entero", context.Start);
        }
    }
    public override ValueWrapper VisitTypeOfStmt (LanguageParser.TypeOfStmtContext context)
    {
        ValueWrapper value = Visit(context.expr());
        return value switch
        {
            IntValue _ => new StringValue("int"),
            FloatValue _ => new StringValue("float64"),
            BoolValue _ => new StringValue("bool"),
            StringValue _ => new StringValue("string"),
            RuneValue _ => new StringValue("rune"),
            ArrayValue arrayValue => new StringValue($"[]{arrayValue.ElementType}"),
            _ => throw new ErrorSemantico("Tipo de dato no reconocido", context.Start)
        };
    }
    public override ValueWrapper VisitParseFloatStmt (LanguageParser.ParseFloatStmtContext context)
    {
        ValueWrapper value = Visit(context.expr());

        if (value is not StringValue stringValue)
        {
            throw new ErrorSemantico("No se puede convertir a float", context.Start);
        }

        string stringToParse = stringValue.Value.Trim();

        if (float.TryParse(stringToParse, NumberStyles.Float, CultureInfo.InvariantCulture, out float result))
        {
            return new FloatValue(result);
        }
        else
        {
            throw new ErrorSemantico($"strconv.ParseFloat: la cadena '{stringToParse}' no puede convertirse a float", context.Start);
        }
    }
    public override ValueWrapper VisitBlockStmt(LanguageParser.BlockStmtContext context)
    {
        Enviroment previusEnv = currentEnv;
        currentEnv = new Enviroment(previusEnv);
        foreach (var stmt in context.dcl())
        {
            Visit(stmt);
        }
        currentEnv = previusEnv;
        return defualtValue;
    }
    //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>SENTENCIAS DE CONTROL<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    //Sentencia IF ELSE (IF?)
    public override ValueWrapper VisitIfStmt(LanguageParser.IfStmtContext context)
    {
        ValueWrapper condition = Visit(context.condition());
        if(condition is not BoolValue){
            throw new ErrorSemantico("La condicion no es de tipo booleana", context.Start);
        }

        if((condition as BoolValue).Value){
            Visit(context.stmt(0));
        }
        else if(context.stmt().Length > 1){
            Visit(context.stmt(1));
        }
        return defualtValue;
    }
    //Switch-case
    public override ValueWrapper VisitSwitchStmt(LanguageParser.SwitchStmtContext context)
    {
        ValueWrapper switchExpr = Visit(context.expr());

        // Bandera para saber si algún caso coincidió
        bool matchedCase = false;
        
        // Guardar el entorno actual
        Enviroment previusEnv = currentEnv;
        
        // Crear un nuevo entorno para el switch
        currentEnv = new Enviroment(previusEnv);
        
        try 
        {
            // Recorrer todos los casos del switch
            foreach (var switchCase in context.switchCase())
            {
                if (switchCase is LanguageParser.DefaultClauseContext defaultCase)
                {
                    // Si es un default, solo lo ejecutamos si no ha coincidido ningún caso previo
                    if (!matchedCase)
                    {
                        try 
                        {
                            // Visitar cada declaración dentro del default
                            foreach (var dcl in defaultCase.stmt())
                            {
                                Visit(dcl);
                            }
                            matchedCase = true;
                        }
                        catch (BreakException)
                        {
                            // Si encontramos un break explícito, salimos del case pero seguimos en el switch
                            matchedCase = true;
                            break;
                        }
                    }
                }
                else if (switchCase is LanguageParser.CaseClauseContext caseClause)
                {
                    // Si ya coincidió un caso, no evaluamos más
                    if (matchedCase) continue;
                    
                    // Evaluar la expresión del case
                    ValueWrapper caseExpr = Visit(caseClause.expr());
                    
                    // Comparar el valor del switch con el valor del case
                    if (AreEqual(switchExpr, caseExpr))
                    {
                        try 
                        {
                            // Si coinciden, ejecutar las declaraciones de este case
                            foreach (var dcl in caseClause.stmt())
                            {
                                Visit(dcl);
                            }
                            matchedCase = true;
                        }
                        catch (BreakException)
                        {
                            // Si encontramos un break explícito, salimos del case pero seguimos en el switch
                            matchedCase = true;
                            break;
                        }
                    }
                }
            }
        }
        finally 
        {
            // Restaurar el entorno anterior
            currentEnv = previusEnv;
        }
        
        return defualtValue;
    }

    private bool AreEqual(ValueWrapper left, ValueWrapper right)
    {
            // Verificar que los tipos sean comparables
        if (left.GetType() != right.GetType())
        {
            throw new ErrorSemantico("No se pueden comparar valores de diferentes tipos", null);
        }
        
        // Comparar según el tipo
        return (left, right) switch
        {
            (IntValue l, IntValue r) => l.Value == r.Value,
            (FloatValue l, FloatValue r) => l.Value == r.Value,
            (BoolValue l, BoolValue r) => l.Value == r.Value,
            (StringValue l, StringValue r) => l.Value == r.Value,
            (RuneValue l, RuneValue r) => l.Value == r.Value,
            _ => throw new ErrorSemantico("Tipos no soportados en switch-case", null)
        };
    }

    public override ValueWrapper VisitCaseClause(LanguageParser.CaseClauseContext context)
    {
        Visit(context.expr());
        
        // Visitar cada declaración
        foreach (var dcl in context.stmt())
        {
            Visit(dcl);
        }
        
        return defualtValue;
    }

    public override ValueWrapper VisitDefaultClause(LanguageParser.DefaultClauseContext context)
    {
        foreach (var dcl in context.stmt())
        {
            Visit(dcl);
        }
        
        return defualtValue;
    }
    //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>SENTENCIAS CICLICAS<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    //Ciclo FOR/While y FOR normal
    public override ValueWrapper VisitForStmt(LanguageParser.ForStmtContext context)
    {
        // Verificamos si es un for clásico o un for tipo while
        if (context.forInit() != null) 
        {
            // Es un for clásico con tres partes
            return HandleForClassic(context);
        }else if(context.rangeInit() != null){
            return Visit(context.rangeInit());
        }
        else 
        {
            // Es un for tipo while (con solo condición)
            return HandleForCondition(context);
        }
    }

    public override ValueWrapper VisitRangeInit(LanguageParser.RangeInitContext context)
    {
        string indexName = context.ID(0).GetText();
        string ValueName = context.ID(1).GetText();
        ValueWrapper range = Visit(context.expr());

        if(range is ArrayValue array){
            return ArrayRange(indexName, ValueName, array, context);
        }else if(range is MatrixValue matrix){
            return MatrixRange(indexName, ValueName, matrix, context);
        }else{
            throw new ErrorSemantico("El rango debe ser un arreglo o una matriz", context.Start);
        }
    }
    
    // Método para manejar for clásico
    private ValueWrapper HandleForClassic(LanguageParser.ForStmtContext context)
        {
            Enviroment previusEnv = currentEnv;
            currentEnv = new Enviroment(previusEnv);

            // Ejecutar la inicialización
            Visit(context.forInit());

            // Ejecutar el for (condición, cuerpo, incremento)
            ForBodyClassic(context);

            currentEnv = previusEnv;
            return defualtValue;
        }

    // Método para manejar bucle while
    private ValueWrapper HandleForCondition(LanguageParser.ForStmtContext context)
        {
            ValueWrapper condition = Visit(context.condition());

            if (condition is not BoolValue)
            {
                throw new ErrorSemantico("La condición no es de tipo booleana", context.Start);
            }

            try
            {
                while ((condition as BoolValue).Value)
                {
                    Visit(context.stmt());
                    condition = Visit(context.condition());
                }
            }
            catch (BreakException)
            {
                // Simplemente salir del bucle
            }
            catch (ContinueException)
            {
                // Reevaluar la condición y continuar el bucle
                condition = Visit(context.condition());
                if ((condition as BoolValue).Value)
                {
                    return HandleForCondition(context);
                }
            }

            return defualtValue;
        }

    // Método para el cuerpo del for clásico
    private void ForBodyClassic(LanguageParser.ForStmtContext context)
    {
        // La primera expresión después de la inicialización es la condición
        ValueWrapper condition = Visit(context.expr(0));
        var PreviusEnv = currentEnv;

        if (condition is not BoolValue)
        {
            throw new ErrorSemantico("La condición no es de tipo booleana", context.Start);
        }

        try
        {
            while ((condition as BoolValue).Value)
            {
                Visit(context.stmt());
                // La segunda expresión es el incremento
                Visit(context.expr(1));
                // Reevaluar la condición
                condition = Visit(context.expr(0));
            }
        }
        catch (BreakException)
        {
            currentEnv = PreviusEnv;
        }
        catch (ContinueException)
        {
            currentEnv = PreviusEnv;
            Visit(context.expr(1)); // Ejecutar el incremento
            ForBodyClassic(context);
        }
    }
    //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>SENTENCIAS DE TRANSFERENCIA<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    //Break
    public override ValueWrapper VisitBreakStmt(LanguageParser.BreakStmtContext context)
    {
        throw new BreakException();
    }

    //Continue
    public override ValueWrapper VisitContinueStmt(LanguageParser.ContinueStmtContext context)
    {
        throw new ContinueException();
    }

    //Return
    public override ValueWrapper VisitReturnStmt(LanguageParser.ReturnStmtContext context)
    {
        ValueWrapper value = defualtValue;
        if(context.expr() != null){
            value = Visit(context.expr());
        }
        throw new ReturnException(value);
    }
    //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>FUNCIONES<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    public override ValueWrapper VisitCaller(LanguageParser.CallerContext context)
    {
        ValueWrapper caller = Visit(context.expr());

        foreach(var call in context.call()){
            if(caller is FunctionValue functionValue){
                caller = VisitCall(functionValue.invocable, call.args());
            }
            else{
                throw new ErrorSemantico("No se puede llamar a un valor que no es una función", context.Start);
            }
        }
        return caller;
    }

    public ValueWrapper VisitCall(Invocable invocable, LanguageParser.ArgsContext context){
        
       List<ValueWrapper> arguments = new List<ValueWrapper>();

        if(context != null) {
            foreach(var arg in context.expr()) {
                arguments.Add(Visit(arg));
            }
        }

        if(arguments.Count != invocable.Arity()) {
            throw new ErrorSemantico("Se esperaban argumentos", context.Start);
        }
        
        return invocable.Invoke(arguments, this);
    }

    public override ValueWrapper VisitFuncDcl([NotNull] LanguageParser.FuncDclContext context)
    {
            var foreignFunction = new ForeingFunction(currentEnv, context);
        currentEnv.DeclareVariable(context.ID().GetText(), 
                                new FunctionValue(foreignFunction, context.ID().GetText()), 
                                context.Start);
        return defualtValue;
    }
    //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>SLICES/ARREGLOS Y MATRICES<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    public override ValueWrapper VisitSliceDcl(LanguageParser.SliceDclContext context)
    {
        string varName = context.ID().GetText();
        string elemntType = context.TYPE().GetText();

        List<ValueWrapper> elements = new List<ValueWrapper>();

        if(context.args() != null){
            foreach(var exprContext in context.args().expr()){
                ValueWrapper value = Visit(exprContext);
                CheckArrayElement(value, elemntType, context.Start);
                elements.Add(value);
            }
        }

        ArrayValue arrayValue = new ArrayValue(elemntType, elements);
        currentEnv.DeclareVariable(varName, arrayValue, context.Start);
        return defualtValue;
    }

    public override ValueWrapper VisitSliceVacio([NotNull] LanguageParser.SliceVacioContext context)
    {
        string varName = context.ID().GetText();
        string elemntType = context.TYPE().GetText();

        ArrayValue arrayValue = new ArrayValue(elemntType, new List<ValueWrapper>());
        currentEnv.DeclareVariable(varName, arrayValue, context.Start);
        return defualtValue;
    }

    public override ValueWrapper VisitArrayAccess(LanguageParser.ArrayAccessContext context){
        string arrayName = context.ID().GetText();
        ValueWrapper indexValue = Visit(context.expr());
        
        // Verificar que el índice sea un entero
        if (indexValue is not IntValue intIndex)
        {
            throw new ErrorSemantico("El índice debe ser un entero", context.Start);
        }
        
        // Obtener el arreglo
        ValueWrapper arrayValue = currentEnv.GetVariable(arrayName, context.Start);

        if(arrayValue is MatrixValue matrix){
            if(intIndex.Value < 0 || intIndex.Value >= matrix.Elements.Count){
                throw new ErrorSemantico("Índice de fila fuera de rango", context.Start);
            }

            List<ValueWrapper> row = matrix.Elements[intIndex.Value];
            return new ArrayValue(matrix.ElementType, row);
        }else if(arrayValue is ArrayValue array){
            if(intIndex.Value < 0 || intIndex.Value >= array.Elements.Count){
                throw new ErrorSemantico("Indice fuera de rango", context.Start);
            }

            return array.Elements[intIndex.Value];
        }else{
            throw new ErrorSemantico("La variable no pertenece a un arreglo", context.Start);
        }
    }

    public override ValueWrapper VisitArrayUpdate([NotNull] LanguageParser.ArrayUpdateContext context)
    {
        string ArrayName = context.ID().GetText(); // Corregido: ArrayName en lugar de ArrayNAme
        ValueWrapper indexValue = Visit(context.expr(0));
        ValueWrapper newValue = Visit(context.expr(1));

        if(indexValue is not IntValue intIndex){
            throw new ErrorSemantico("El índice debe ser un entero", context.Start);
        }

        ValueWrapper arrayValue = currentEnv.GetVariable(ArrayName, context.Start); // Corregido

        if(arrayValue is not ArrayValue array){
            throw new ErrorSemantico("La variable no pertenece a un arreglo", context.Start);
        }

        if(intIndex.Value < 0 || intIndex.Value >= array.Elements.Count){
            throw new ErrorSemantico("Indice fuera de rango", context.Start); // Corregido: "rango" en lugar de "rrango"
        }

        CheckArrayElement(newValue, array.ElementType, context.Start);

        List<ValueWrapper> newElements = new List<ValueWrapper>(array.Elements);
        newElements[intIndex.Value] = newValue;

        ArrayValue newArray = new ArrayValue(array.ElementType, newElements);
        currentEnv.AssignVariable(ArrayName, newArray, context.Start); // Corregido
        return defualtValue;

    }

    public override ValueWrapper VisitMatrixDcl(LanguageParser.MatrixDclContext context)
    {
       string varName = context.ID().GetText();
       string elementType = context.TYPE().GetText();

       List<List<ValueWrapper>> elements = new List<List<ValueWrapper>>();

       if(context.listaArg() != null){
        foreach (var argContext in context.listaArg().args()){

            List<ValueWrapper> row = new List<ValueWrapper>();

            if(argContext != null && argContext.expr() != null){

                foreach(var exprContext in argContext.expr()){
                    ValueWrapper value = Visit(exprContext);
                    CheckArrayElement(value, elementType, context.Start);
                    row.Add(value);
                    }
                }
                elements.Add(row);
            }
            /*
            int rowLength = elements.Count > 0 ? elements[0].Count : 0;
            for(int i=1; i<elements.Count; i++){
                if(elements[i].Count != rowLength){
                    throw new ErrorSemantico("Todas las filas deben tener la misma longitud", context.Start);
                }
            }
            */
        }

        MatrixValue matrixValue = new MatrixValue(elementType, elements);
        currentEnv.DeclareVariable(varName, matrixValue, context.Start);
        return defualtValue;
    }

    public override ValueWrapper VisitMatrixAccess(LanguageParser.MatrixAccessContext context){
        string matrixName = context.ID().GetText();
        ValueWrapper rowIndexValue = Visit(context.expr(0));
        ValueWrapper colIndexValue = Visit(context.expr(1));

       if(rowIndexValue is not IntValue rowIndex || colIndexValue is not IntValue colIndex){
            throw new ErrorSemantico("Los índices deben ser enteros", context.Start);
        }

        ValueWrapper matrixValue = currentEnv.GetVariable(matrixName, context.Start);

        if(matrixValue is not MatrixValue matrix){
            throw new ErrorSemantico("La variable no pertenece a una matriz", context.Start);
        }

        if(rowIndex.Value < 0 || rowIndex.Value >= matrix.Elements.Count){
            throw new ErrorSemantico("Índice de fila fuera de rango", context.Start);
        }

        if(colIndex.Value < 0 || colIndex.Value >= matrix.Elements[rowIndex.Value].Count){
            throw new ErrorSemantico("Índice de columna fuera de rango", context.Start);
        }

        return matrix.Elements[rowIndex.Value][colIndex.Value];
    }

    public override ValueWrapper VisitMatrixUpdate(LanguageParser.MatrixUpdateContext context){
        string matrixName = context.ID().GetText();
        ValueWrapper rowIndexValue = Visit(context.expr(0));
        ValueWrapper colIndexValue = Visit(context.expr(1));
        ValueWrapper newValue = Visit(context.expr(2));

        if(rowIndexValue is not IntValue rowIndex || colIndexValue is not IntValue colIndex){
            throw new ErrorSemantico("Los índices deben ser enteros", context.Start);
        }

        ValueWrapper matrixValue = currentEnv.GetVariable(matrixName, context.Start);

        if(matrixValue is not MatrixValue matrix){
            throw new ErrorSemantico("La variable no pertenece a una matriz", context.Start);
        }

        if(rowIndex.Value < 0 || rowIndex.Value >= matrix.Elements.Count){
            throw new ErrorSemantico("Índice de fila fuera de rango", context.Start);
        }

        if(colIndex.Value < 0 || colIndex.Value >= matrix.Elements[rowIndex.Value].Count){
            throw new ErrorSemantico("Índice de columna fuera de rango", context.Start);
        }

        CheckArrayElement(newValue, matrix.ElementType, context.Start);

        List<List<ValueWrapper>> newElements = new List<List<ValueWrapper>>();
        foreach(var row in matrix.Elements){
            newElements.Add(new List<ValueWrapper>(row));
        }

        newElements[rowIndex.Value][colIndex.Value] = newValue;
        MatrixValue newMatrix = new MatrixValue(matrix.ElementType, newElements);
        currentEnv.AssignVariable(matrixName, newMatrix, context.Start);
        return defualtValue;
    }

    public override ValueWrapper VisitSliceIndex(LanguageParser.SliceIndexContext context){
        string arrayName = context.ID().GetText();
        ValueWrapper startValue = Visit(context.expr());

        ValueWrapper arrayValue = currentEnv.GetVariable(arrayName, context.Start);

        if(arrayValue is not ArrayValue array){
            throw new ErrorSemantico("La variable no pertenece a un arreglo", context.Start);
        }

        for(int i =0; i<array.Elements.Count; i++){
            ValueWrapper element = array.Elements[i];
            bool found = false;

            if(startValue.GetType() != element.GetType()){
                if ((startValue is IntValue && element is FloatValue) || 
                    (startValue is FloatValue && element is IntValue)){
                    // Convertir a valores numéricos para comparación
                    double searchNum = startValue is IntValue intVal 
                        ? intVal.Value 
                        : ((FloatValue)startValue).Value;
                    
                    double elementNum = element is IntValue intElement 
                        ? intElement.Value 
                        : ((FloatValue)element).Value;
                    
                    found = Math.Abs(searchNum - elementNum) < 0.000001; // Comparación con tolerancia
                }
                // Otros tipos no son comparables entre sí
                continue;
            }

            found = (startValue, element) switch{
                (IntValue v1, IntValue v2) => v1.Value == v2.Value,
                (FloatValue v1, FloatValue v2) => v1.Value == v2.Value,
                (StringValue v1, StringValue v2) => v1.Value == v2.Value,
                (RuneValue v1, RuneValue v2) => v1.Value == v2.Value,
                (BoolValue v1, BoolValue v2) => v1.Value == v2.Value,
                _ => false
            };

            if(found){
                return new IntValue(i);
            }
        }
        return new IntValue(-1);
    }

    public override ValueWrapper VisitStringJoin(LanguageParser.StringJoinContext context)
    {
        string arrayName = context.ID().GetText();
        ValueWrapper separator = Visit(context.expr());

        if(separator is not StringValue separatorValue){
            throw new ErrorSemantico("El separador debe ser un string", context.Start);
        }

        ValueWrapper arrayValue = currentEnv.GetVariable(arrayName, context.Start);

        if(arrayValue is not ArrayValue array){
            throw new ErrorSemantico("La variable no pertenece a un arreglo", context.Start);
        }

        if(array.ElementType != "string"){
            throw new ErrorSemantico("El arreglo no es de strings", context.Start);
        }

        List<string> elements = new List<string>();
        foreach(var element in array.Elements){
            if(element is StringValue stringValue){
                elements.Add(stringValue.Value);
            }else{
                throw new ErrorSemantico("El arreglo no es de strings", context.Start);
            }
        }

        string joined = string.Join(separatorValue.Value, elements);
        return new StringValue(joined);
    }

    public override ValueWrapper VisitLen (LanguageParser.LenContext context)
    {
        string id = context.ID().GetText();
        ValueWrapper value = currentEnv.GetVariable(id, context.Start);
        
        if (value is ArrayValue array)
        {
            return new IntValue(array.Elements.Count);
        }
        else if (value is MatrixValue matrix)
        {
            // Para una matriz, devolvemos el número de filas
            return new IntValue(matrix.Elements.Count);
        }
        else
        {
            throw new ErrorSemantico($"La variable '{id}' no es un arreglo ni una matriz", context.Start);
        }
    }

    public override ValueWrapper VisitLenMatrix(LanguageParser.LenMatrixContext context)
    {
        string matrixName = context.ID().GetText();
        ValueWrapper rowIndexValue = Visit(context.expr());
        
        // Verificar que el índice sea un entero
        if (rowIndexValue is not IntValue rowIndex)
        {
            throw new ErrorSemantico("El índice debe ser un entero", context.Start);
        }
        
        // Obtener la matriz
        ValueWrapper matrixValue = currentEnv.GetVariable(matrixName, context.Start);
        
        if (matrixValue is not MatrixValue matrix)
        {
            throw new ErrorSemantico($"La variable '{matrixName}' no es una matriz", context.Start);
        }
        
        // Verificar que el índice de fila esté dentro de los límites
        if (rowIndex.Value < 0 || rowIndex.Value >= matrix.Elements.Count)
        {
            throw new ErrorSemantico($"Índice de fila fuera de rango: {rowIndex.Value}. La matriz tiene {matrix.Elements.Count} filas", context.Start);
        }
        
        // Devolver la longitud de la fila específica
        return new IntValue(matrix.Elements[rowIndex.Value].Count);
    }

    public override ValueWrapper VisitAppend(LanguageParser.AppendContext context)
    {
        string arrayName = context.ID().GetText();
        ValueWrapper newValue = Visit(context.expr());

        ValueWrapper arrayValue = currentEnv.GetVariable(arrayName, context.Start);

        if(arrayValue is not ArrayValue array){
            throw new ErrorSemantico("La variable no pertenece a un arreglo", context.Start);
        }

        CheckArrayElement(newValue, array.ElementType, context.Start);

        List<ValueWrapper> newElements = new List<ValueWrapper>(array.Elements);
        newElements.Add(newValue);

        ArrayValue newArray = new ArrayValue(array.ElementType, newElements);
        currentEnv.AssignVariable(arrayName, newArray, context.Start);
        return newArray;
    }

    public override ValueWrapper VisitMatrixAppend([NotNull] LanguageParser.MatrixAppendContext context)
    {
        string matrixName = context.ID(0).GetText();
        string arrayName = context.ID(1).GetText();

        ValueWrapper matrixValue = currentEnv.GetVariable(matrixName, context.Start);

        if(matrixValue is not MatrixValue matrix){
            throw new ErrorSemantico("La variable no pertenece a una matriz", context.Start);
        }

        ValueWrapper arrayValue = currentEnv.GetVariable(arrayName, context.Start);

        if(arrayValue is not ArrayValue array){
            throw new ErrorSemantico("La variable no pertenece a un arreglo", context.Start);
        }

        if(array.ElementType != matrix.ElementType){
            throw new ErrorSemantico("El tipo de los elementos no coincide", context.Start);
        }

        List<List<ValueWrapper>> newElements = new List<List<ValueWrapper>>();
        foreach(var row in matrix.Elements){
            newElements.Add(new List<ValueWrapper>(row));
        }

        newElements.Add(new List<ValueWrapper>(array.Elements));
        MatrixValue newMatrix = new MatrixValue(matrix.ElementType, newElements);
        currentEnv.AssignVariable(matrixName, newMatrix, context.Start);
        return newMatrix;
    }

    private void CheckArrayElement(ValueWrapper value, string expectedType, Antlr4.Runtime.IToken token)
    {
        bool isValid = (value, expectedType) switch
        {
            (IntValue v, "int") => true,
            (FloatValue v, "float64") => true,
            (StringValue v, "string") => true,
            (RuneValue v, "rune") => true,
            (BoolValue v, "bool") => true,
            (IntValue v, "float64") => true,
            _ => false
        };

        if (!isValid)
        {
            throw new ErrorSemantico("Tipo de dato no valido", token);
        }
    }   

    private ValueWrapper ArrayRange(string indexName, string ValueName, ArrayValue array, LanguageParser.RangeInitContext context){
        Enviroment loopEnv = new Enviroment(currentEnv);
        Enviroment previusEnv = currentEnv;
        currentEnv = loopEnv;

        try{
            currentEnv.DeclareVariable(indexName, new IntValue(0), context.Start);

            string elementType = array.ElementType;
            ValueWrapper defaultValue = DefaultTypeValue(elementType);
            currentEnv.DeclareVariable(ValueName, defaultValue, context.Start);

            var forStmtContext = (LanguageParser.ForStmtContext)context.Parent;
            var stmt = forStmtContext.stmt();

            for(int i = 0; i < array.Elements.Count; i++){
                try{
                    currentEnv.AssignVariable(indexName, new IntValue(i), context.Start);
                    currentEnv.AssignVariable(ValueName, array.Elements[i], context.Start);

                    Visit(stmt);
                }catch(ContinueException){
                    continue;
                }catch(BreakException){
                    break;
                }
            }
        }finally{
            currentEnv = previusEnv;
        }
        return defualtValue;
    }

    private ValueWrapper MatrixRange(string index, string ValueNamem, MatrixValue matrix, LanguageParser.RangeInitContext context){
        Enviroment loopEnv = new Enviroment(currentEnv);
        Enviroment previusEnv = currentEnv;
        currentEnv = loopEnv;

        try{
            currentEnv.DeclareVariable(index, new IntValue(0), context.Start);
            currentEnv.DeclareVariable(ValueNamem, new ArrayValue(matrix.ElementType, new List<ValueWrapper>()), context.Start);

            var forStmtContext = (LanguageParser.ForStmtContext)context.Parent;
            var stmt = forStmtContext.stmt();

            for(int i = 0; i<matrix.Elements.Count; i++){
                try{
                    currentEnv.AssignVariable(index, new IntValue(i), context.Start);
                    ArrayValue row = new ArrayValue(matrix.ElementType, matrix.Elements[i]);
                    currentEnv.AssignVariable(ValueNamem, row, context.Start);

                    Visit(stmt);
                }catch(ContinueException){
                    continue;
                }catch(BreakException){
                    break;
                }
            }
        }finally{
            currentEnv = previusEnv;
        }
        return defualtValue;
    }
    private string FormatArray(ArrayValue array){
        var elements = array.Elements;
        List<string> FormatElements = new List<string>();

        foreach(var element in elements){
            string elementStr = element switch{
                IntValue v => v.Value.ToString(),
                FloatValue v => v.Value.ToString("0.00"),
                StringValue v => v.Value,
                RuneValue v => v.Value.ToString(),
                BoolValue v => v.Value.ToString().ToLower(),
                ArrayValue v => FormatArray(v),
                MatrixValue v => FormatMatrix(v),
                _ => throw new ErrorSemantico("Tipo de dato no valido", null)
            };

            FormatElements.Add(elementStr);
        }
        return $"[{string.Join(", ", FormatElements)}]";
    }

    private string FormatMatrix(MatrixValue matrix){
        List<string> FormatRows = new List<string>();

        foreach(var row in matrix.Elements){
            List<string> elements = new List<string>();

            foreach(var element in row){
                string elementStr = element switch{
                    IntValue v => v.Value.ToString(),
                    FloatValue v => v.Value.ToString("0.00"),
                    StringValue v => v.Value,
                    RuneValue v => v.Value.ToString(),
                    BoolValue v => v.Value.ToString().ToLower(),
                    _ => throw new ErrorSemantico("Tipo de dato no valido", null)
                };

                elements.Add(elementStr);
            }

            FormatRows.Add($"[{string.Join(", ", elements)}]");
        }
        return $"[{string.Join(", ", FormatRows)}]";
    }
    //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>STRUCTS<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    public override ValueWrapper VisitStructDcl([NotNull] LanguageParser.StructDclContext context)
    {
       string structName = context.ID().GetText(); // El nombre del struct
        Dictionary<string, string> fields = new Dictionary<string, string>();

        foreach (var fieldContext in context.structParams())
        {
            // Obtener el tipo del campo (puede ser TYPE o ID)
            string type;
            if (fieldContext.TYPE() != null)
            {
                type = fieldContext.TYPE().GetText(); // Tipo primitivo
            }
            else if (fieldContext.ID().Length > 1) // Hay dos ID: tipo y nombre del campo
            {
                type = fieldContext.ID(0).GetText(); // Primer ID es el tipo
            }
            else
            {
                throw new ErrorSemantico("Se esperaba un tipo para el campo", context.Start);
            }

            // Obtener el nombre del campo (siempre el último ID)
            string fieldName = fieldContext.ID(fieldContext.ID().Length - 1).GetText();

            if (fields.ContainsKey(fieldName))
            {
                throw new ErrorSemantico("Campo duplicado en estructura", context.Start);
            }
            fields[fieldName] = type;
        }

        currentEnv.DeclareStruct(structName, fields, context.Start);
        return defualtValue;
    }

    public override ValueWrapper VisitStructAssignment([NotNull] LanguageParser.StructAssignmentContext context){
        string structName = context.ID(0).GetText();
        string varName = context.ID(1).GetText();

        StructType structType = currentEnv.GetStruct(structName, context.Start);
        Dictionary<string, ValueWrapper> fieldsValue = new Dictionary<string, ValueWrapper>();

        var arguments = context.structArgs();
        for (int i = 0; i < arguments.ID().Length; i++)
        {
            string fieldName = arguments.ID(i).GetText();
            ValueWrapper fieldValue = Visit(arguments.expr(i));

            if (!structType.Fields.ContainsKey(fieldName))
            {
                throw new ErrorSemantico($"Campo '{fieldName}' no encontrado en estructura '{structName}'", context.Start);
            }

            string expectedType = structType.Fields[fieldName];
            if (currentEnv.structs.ContainsKey(expectedType))
            {
                // Es un struct anidado
                if (!(fieldValue is StructValue sv && sv.StructName == expectedType))
                {
                    throw new ErrorSemantico($"El valor para el campo '{fieldName}' debe ser un '{expectedType}'", context.Start);
                }
            }
            else
            {
                // Es un tipo primitivo
                CheckType(fieldValue, expectedType, context.Start);
            }
            fieldsValue[fieldName] = fieldValue;
        }

        // Rellenar campos no especificados con valores por defecto
        foreach (var field in structType.Fields)
        {
            if (!fieldsValue.ContainsKey(field.Key))
            {
                if (currentEnv.structs.ContainsKey(field.Value))
                {
                    // Para structs anidados, crear una instancia vacía
                    var nestedFields = currentEnv.GetStruct(field.Value, context.Start).Fields;
                    var defaultNestedFields = nestedFields.ToDictionary(
                        f => f.Key,
                        f => DefaultTypeValue(f.Value)
                    );
                    fieldsValue[field.Key] = new StructValue(field.Value, defaultNestedFields);
                }
                else
                {
                    fieldsValue[field.Key] = DefaultTypeValue(field.Value);
                }
            }
        }

        StructValue structValue = new StructValue(structName, fieldsValue);
        currentEnv.DeclareVariable(varName, structValue, context.Start);
    return defualtValue;
    }

    private ValueWrapper DefaultTypeValue(string type){
        return type switch
        {
            "int" => new IntValue(0),
            "float64" => new FloatValue(0.0f),
            "string" => new StringValue(""),
            "rune" => new RuneValue(' '),
            "bool" => new BoolValue(false),
            _ => throw new ErrorSemantico("Tipo de dato no valido", null)
        };
    }

    public override ValueWrapper VisitStructAccess([NotNull] LanguageParser.StructAccessContext context)
    {
        string type = context.TYPE().GetText();
        string targetVar = context.ID(0).GetText();
        string sourceVar = context.ID(1).GetText();
        string field = context.ID(2).GetText();

        ValueWrapper sourceValue = currentEnv.GetVariable(sourceVar, context.Start);

        if(sourceValue is not StructValue structValue){
            throw new ErrorSemantico("Variable no es una estructura", context.Start);
        }

        if(!structValue.Fields.ContainsKey(field)){
            throw new ErrorSemantico("Campo no encontrado en estructura", context.Start);
        }

        ValueWrapper fieldValue = structValue.Fields[field];

        if(!ItMatches(fieldValue, type)){
            throw new ErrorSemantico("Tipo de dato no valido", context.Start);
        }

        currentEnv.DeclareVariableTypeValue(targetVar, type, fieldValue, context.Start);
        return defualtValue;
    }

    public override ValueWrapper VisitStructUpdate([NotNull] LanguageParser.StructUpdateContext context){
        string varName = context.ID(0).GetText();    // "p1" - Nombre de la variable
        string fieldName = context.ID(1).GetText();  // "Nombre" - Campo a actualizar
        ValueWrapper newValue = Visit(context.expr()); // "María" - Nuevo valor

        // Obtener la variable del entorno
        ValueWrapper varValue = currentEnv.GetVariable(varName, context.Start);

        if (varValue is not StructValue structValue)
        {
            throw new ErrorSemantico($"La variable '{varName}' no es una estructura", context.Start);
        }

        if (!structValue.Fields.ContainsKey(fieldName))
        {
            throw new ErrorSemantico($"Campo '{fieldName}' no encontrado en estructura '{structValue.StructName}'", context.Start);
        }

        // Obtener el tipo esperado del campo
        StructType structType = currentEnv.GetStruct(structValue.StructName, context.Start);
        string expectedType = structType.Fields[fieldName];

        // Verificar que el tipo del nuevo valor coincida
        CheckType(newValue, expectedType, context.Start);

        // Crear una copia de los campos y actualizar el valor
        Dictionary<string, ValueWrapper> updatedFields = new Dictionary<string, ValueWrapper>(structValue.Fields)
        {
            [fieldName] = newValue // Actualiza el campo específico
        };

        // Crear un nuevo StructValue con los campos actualizados
        StructValue updatedStruct = new StructValue(structValue.StructName, updatedFields);

        // Asignar el struct actualizado al entorno
        currentEnv.AssignVariable(varName, updatedStruct, context.Start);

        return defualtValue;
    }

    public override ValueWrapper VisitStructAccessInfo([NotNull] LanguageParser.StructAccessInfoContext context)
    {
        ValueWrapper baseValue = Visit(context.expr()); // Evaluar la expresión base (ej. n1 o n1.Siguiente)
        string fieldName = context.ID().GetText();      // Nombre del campo (ej. Siguiente o Valor)

        if (baseValue is StructValue structValue)
        {
            if (structValue.Fields.TryGetValue(fieldName, out ValueWrapper fieldValue))
            {
                return fieldValue;
            }
            throw new ErrorSemantico($"Campo '{fieldName}' no encontrado en estructura '{structValue.StructName}'", context.Start);
        }
        throw new ErrorSemantico($"No se puede acceder al campo '{fieldName}' en un valor que no es una estructura", context.Start);
    }

    public override ValueWrapper VisitStructVarDcl([NotNull] LanguageParser.StructVarDclContext context)
    {
        string structName = context.ID(0).GetText(); // Tipo del struct (ej. "Nodo")
        string varName = context.ID(1).GetText();    // Nombre de la variable (ej. "n1")

        StructType structType = currentEnv.GetStruct(structName, context.Start);
        Dictionary<string, ValueWrapper> fieldsValue = new Dictionary<string, ValueWrapper>();

        var arguments = context.structArgs();
        if (arguments != null)
        {
            for (int i = 0; i < arguments.ID().Length; i++)
            {
                string fieldName = arguments.ID(i).GetText();
                ValueWrapper fieldValue = Visit(arguments.expr(i));

                if (!structType.Fields.ContainsKey(fieldName))
                {
                    throw new ErrorSemantico($"Campo '{fieldName}' no encontrado en estructura '{structName}'", context.Start);
                }

                string expectedType = structType.Fields[fieldName];
                if (currentEnv.structs.ContainsKey(expectedType))
                {
                    // El campo es un struct anidado
                    if (fieldValue is StructValue sv)
                    {
                        if (sv.StructName == null)
                        {
                            // Inferir el tipo del StructLiteral
                            sv = new StructValue(expectedType, sv.Fields);
                        }
                        if (sv.StructName != expectedType)
                        {
                            throw new ErrorSemantico($"El valor para el campo '{fieldName}' debe ser un '{expectedType}', no '{sv.StructName}'", context.Start);
                        }
                        // Validar que los campos del struct anidado sean correctos
                        StructType nestedType = currentEnv.GetStruct(expectedType, context.Start);
                        foreach (var field in sv.Fields)
                        {
                            if (!nestedType.Fields.ContainsKey(field.Key))
                            {
                                throw new ErrorSemantico($"Campo '{field.Key}' no encontrado en estructura '{expectedType}'", context.Start);
                            }
                            CheckType(field.Value, nestedType.Fields[field.Key], context.Start);
                        }
                    }
                    else
                    {
                        throw new ErrorSemantico($"El valor para el campo '{fieldName}' debe ser un '{expectedType}'", context.Start);
                    }
                }
                else
                {
                    // Tipo primitivo
                    CheckType(fieldValue, expectedType, context.Start);
                }
                fieldsValue[fieldName] = fieldValue;
            }
        }

        foreach (var field in structType.Fields)
        {
            if (!fieldsValue.ContainsKey(field.Key))
            {
                if (currentEnv.structs.ContainsKey(field.Value))
                {
                    var nestedFields = currentEnv.GetStruct(field.Value, context.Start).Fields;
                    var defaultNestedFields = nestedFields.ToDictionary(
                        f => f.Key,
                        f => DefaultTypeValue(f.Value)
                    );
                    fieldsValue[field.Key] = new StructValue(field.Value, defaultNestedFields);
                }
                else
                {
                    fieldsValue[field.Key] = DefaultTypeValue(field.Value);
                }
            }
        }

        StructValue structValue = new StructValue(structName, fieldsValue);
        currentEnv.DeclareVariable(varName, structValue, context.Start);
        return defualtValue;
    }

    public override ValueWrapper VisitStructLiteral([NotNull] LanguageParser.StructLiteralContext context)
    {
        Dictionary<string, ValueWrapper> fieldsValue = new Dictionary<string, ValueWrapper>();

        var arguments = context.structArgs();
        if (arguments != null)
        {
            for (int i = 0; i < arguments.ID().Length; i++)
            {
                string fieldName = arguments.ID(i).GetText();
                ValueWrapper fieldValue = Visit(arguments.expr(i));
                fieldsValue[fieldName] = fieldValue;
            }
        }
        // Creamos un StructValue sin tipo específico por ahora; el tipo se validará en el contexto superior
        return new StructValue(null, fieldsValue);
    }
    private bool ItMatches(ValueWrapper value, string type){
        return value switch
        {
            IntValue _ when type == "int" => true,
            FloatValue _ when type == "float64" => true,
            StringValue _ when type == "string" => true,
            RuneValue _ when type == "rune" => true,
            BoolValue _ when type == "bool" => true,
            _ => false
        };
    }

    private void CheckType(ValueWrapper value, string expectedType, Antlr4.Runtime.IToken token)
    {
        bool isValid = (value, expectedType) switch
        {
            (IntValue v, "int") => true,
            (FloatValue v, "float64") => true,
            (StringValue v, "string") => true,
            (RuneValue v, "rune") => true,
            (BoolValue v, "bool") => true,
            _ => false
        };

        if (!isValid)
        {
            throw new ErrorSemantico("Tipo de dato no valido", token);
        }
    }

    private string GetTypeName(ValueWrapper value){
        return value switch{
            IntValue _ => "int",
            FloatValue _ => "float64",
            StringValue _ => "string",
            RuneValue _ => "rune",
            BoolValue _ => "bool",
            _ => throw new ErrorSemantico("Tipo de dato no valido", null)
        };
    }

    //>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>OPERACIONES<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    //NEGACION ARITMETICA Y LOGICA
    public override ValueWrapper VisitNegate(LanguageParser.NegateContext context)
    {
        ValueWrapper value = Visit(context.expr());
        return value switch{
            IntValue i => new IntValue(-i.Value),
            FloatValue f => new FloatValue(-f.Value),
            BoolValue b => new BoolValue(!b.Value),
            _ => throw new ErrorSemantico("Negacion de expresion no permitida", context.Start)
        };
    }
    //********************************************************Aritmeticos**************************************************************
    //SUMA Y RESTA
    public override ValueWrapper VisitAddSub(LanguageParser.AddSubContext context)
    {
        ValueWrapper left = Visit(context.expr(0));
        Console.WriteLine(left);
        ValueWrapper right = Visit(context.expr(1));
        Console.WriteLine(right);
        string op = context.op.Text;

        return (left, right, op) switch{
            //SUMAS
            (IntValue l, IntValue r, "+") => new IntValue(l.Value + r.Value),
            (IntValue l, FloatValue r, "+") => new FloatValue(l.Value + r.Value),
            (FloatValue l, IntValue r, "+") => new FloatValue(l.Value + r.Value),
            (FloatValue l, FloatValue r, "+") => new FloatValue(l.Value + r.Value),
            (StringValue l, StringValue r, "+") => new StringValue(l.Value + r.Value),
            //RESTAS
            (IntValue l, IntValue r, "-") => new IntValue(l.Value - r.Value),
            (IntValue l, FloatValue r, "-") => new FloatValue(l.Value - r.Value),
            (FloatValue l, IntValue r, "-") => new FloatValue(l.Value - r.Value), // Agregado
            (FloatValue l, FloatValue r, "-") => new FloatValue(l.Value - r.Value),
            _ => throw new ErrorSemantico("Operación no valida para suma o resta", context.Start)
        };
    }

    public override ValueWrapper VisitImplicitAddSub(LanguageParser.ImplicitAddSubContext context)
    {
        string id = context.ID().GetText();
        string op = context.op.Text;  
        ValueWrapper right = Visit(context.expr());
        ValueWrapper left = currentEnv.GetVariable(id, context.Start);


        ValueWrapper result = (left, right, op) switch {
            // Para operador +=
            (IntValue l, IntValue r, "+=") => new IntValue(l.Value + r.Value),
            (IntValue l, FloatValue r, "+=") => new FloatValue(l.Value + r.Value),
            (FloatValue l, IntValue r, "+=") => new FloatValue(l.Value + r.Value),
            (FloatValue l, FloatValue r, "+=") => new FloatValue(l.Value + r.Value),
            (StringValue l, StringValue r, "+=") => new StringValue(l.Value + r.Value),
            
            // Para operador -=
            (IntValue l, IntValue r, "-=") => new IntValue(l.Value - r.Value),
            (IntValue l, FloatValue r, "-=") => new FloatValue(l.Value - r.Value),
            (FloatValue l, IntValue r, "-=") => new FloatValue(l.Value - r.Value),
            (FloatValue l, FloatValue r, "-=") => new FloatValue(l.Value - r.Value),
            
            _ => throw new ErrorSemantico("Operacion implicita NO permitida", context.Start)
        };

    // Asignar el nuevo valor a la variable
        currentEnv.AssignVariable(id, result, context.Start);
        return defualtValue;
    }

    public override ValueWrapper VisitIncDec(LanguageParser.IncDecContext context)
    {
        string id = context.ID().GetText();
        string op = context.op.Text;  // Obtiene el operador ('++' o '--')
        ValueWrapper value = currentEnv.GetVariable(id, context.Start);

        // Realizar la operación adecuada según el operador
        ValueWrapper result = (value, op) switch {
            // Para operador ++
            (IntValue v, "++") => new IntValue(v.Value + 1),
            (FloatValue v, "++") => new FloatValue(v.Value + 1),
            
            // Para operador --
            (IntValue v, "--") => new IntValue(v.Value - 1),
            (FloatValue v, "--") => new FloatValue(v.Value - 1),
            
            _ => throw new ErrorSemantico("Incremento o decremento no valido", context.Start)
        };

        // Asignar el nuevo valor a la variable
        currentEnv.AssignVariable(id, result, context.Start);
        return defualtValue;
    }
    //MULTIPLICACION, DIVISION Y MODULO
    public override ValueWrapper VisitMDmod(LanguageParser.MDmodContext context)
    {
        ValueWrapper left = Visit(context.expr(0));
        ValueWrapper right = Visit(context.expr(1));
        string op = context.op.Text;

        return (left, right, op) switch{
            //MULTIPLICACION
            (IntValue l, IntValue r, "*") => new IntValue(l.Value * r.Value),
            (IntValue l, FloatValue r, "*") => new FloatValue(l.Value * r.Value),
            (FloatValue l, FloatValue r, "*") => new FloatValue(l.Value * r.Value),
            (FloatValue l, IntValue r, "*") => new FloatValue(l.Value * r.Value),
            //DIVISION
            (IntValue l, IntValue r, "/") => new FloatValue((float)l.Value / r.Value),
            (IntValue l, FloatValue r, "/") => new FloatValue(l.Value / r.Value),
            (FloatValue l, FloatValue r, "/") => new FloatValue(l.Value / r.Value),
            (FloatValue l, IntValue r, "/") => new FloatValue(l.Value / r.Value),
            //MODULO
            (IntValue l, IntValue r, "%") => new IntValue(l.Value % r.Value),
            _ => throw new ErrorSemantico("Operacion para Multiplicacion, divison o modulo no permitida", context.Start)
        };
    }

//********************************************************RELACIONALES**************************************************************
    public override ValueWrapper VisitRelational (LanguageParser.RelationalContext context)
    {
        ValueWrapper left = Visit(context.expr(0));
        ValueWrapper right = Visit(context.expr(1));
        string op = context.op.Text;

        return (left, right, op) switch{
            //MAYOR
            (IntValue l, IntValue r, ">") => new BoolValue(l.Value > r.Value),
            (FloatValue l, FloatValue r, ">") => new BoolValue(l.Value > r.Value),
            (IntValue l, FloatValue r, ">") => new BoolValue(l.Value > r.Value),
            (FloatValue l, IntValue r, ">") => new BoolValue(l.Value > r.Value),
            (RuneValue l, RuneValue r, ">") => new BoolValue(l.Value > r.Value),
            //MENOR
            (IntValue l, IntValue r, "<") => new BoolValue(l.Value < r.Value),
            (FloatValue l, FloatValue r, "<") => new BoolValue(l.Value < r.Value),
            (IntValue l, FloatValue r, "<") => new BoolValue(l.Value < r.Value),
            (FloatValue l, IntValue r, "<") => new BoolValue(l.Value < r.Value),
            (RuneValue l, RuneValue r, "<") => new BoolValue(l.Value < r.Value),
            //MAYOR O IGUAL
            (IntValue l, IntValue r, ">=") => new BoolValue(l.Value >= r.Value),
            (FloatValue l, FloatValue r, ">=") => new BoolValue(l.Value >= r.Value),
            (IntValue l, FloatValue r, ">=") => new BoolValue(l.Value >= r.Value),
            (FloatValue l, IntValue r, ">=") => new BoolValue(l.Value >= r.Value),
            (RuneValue l, RuneValue r, ">=") => new BoolValue(l.Value >= r.Value),
            //MENOR O IGUAL
            (IntValue l, IntValue r, "<=") => new BoolValue(l.Value <= r.Value),
            (FloatValue l, FloatValue r, "<=") => new BoolValue(l.Value <= r.Value),
            (IntValue l, FloatValue r, "<=") => new BoolValue(l.Value <= r.Value),
            (FloatValue l, IntValue r, "<=") => new BoolValue(l.Value <= r.Value),
            (RuneValue l, RuneValue r, "<=") => new BoolValue(l.Value <= r.Value),
            _ => throw new ErrorSemantico("Operador relacional no permitida", context.Start)
        };
    }

//********************************************************IGUALDAD**************************************************************
    public override ValueWrapper VisitEquality (LanguageParser.EqualityContext context)
    {
        ValueWrapper left = Visit(context.expr(0));
        ValueWrapper right = Visit(context.expr(1));
        string op = context.op.Text;

        return (left, right, op) switch{
            //IGUAL
            (IntValue l, IntValue r, "==") => new BoolValue(l.Value == r.Value),
            (FloatValue l, FloatValue r, "==") => new BoolValue(l.Value == r.Value),
            (IntValue l, FloatValue r, "==") => new BoolValue(l.Value == r.Value),
            (FloatValue l, IntValue r, "==") => new BoolValue(l.Value == r.Value),
            (BoolValue l, BoolValue r, "==") => new BoolValue(l.Value == r.Value),
            (StringValue l, StringValue r, "==") => new BoolValue(l.Value == r.Value),
            (RuneValue l, RuneValue r, "==") => new BoolValue(l.Value == r.Value),
            //DIFERENTE
            (IntValue l, IntValue r, "!=") => new BoolValue(l.Value != r.Value),
            (FloatValue l, FloatValue r, "!=") => new BoolValue(l.Value != r.Value),
            (IntValue l, FloatValue r, "!=") => new BoolValue(l.Value != r.Value),
            (FloatValue l, IntValue r, "!=") => new BoolValue(l.Value != r.Value),
            (BoolValue l, BoolValue r, "!=") => new BoolValue(l.Value != r.Value),
            (StringValue l, StringValue r, "!=") => new BoolValue(l.Value != r.Value),
            (RuneValue l, RuneValue r, "!=") => new BoolValue(l.Value != r.Value),
            _ => throw new ErrorSemantico("Operacion de igualación no permitida", context.Start)
        };
    }
//********************************************************LOGICOS**************************************************************
    //OR
    public override ValueWrapper VisitLogicalOr(LanguageParser.LogicalOrContext context)
    {
        ValueWrapper left = Visit(context.expr(0));
        ValueWrapper right = Visit(context.expr(1));

        return (left, right) switch{
            (BoolValue l, BoolValue r) => new BoolValue(l.Value || r.Value),
            _ => throw new ErrorSemantico("Operacion logica OR no permitida", context.Start)
        };
    }
    //AND
    public override ValueWrapper VisitLogicalAnd(LanguageParser.LogicalAndContext context)
    {
        ValueWrapper left = Visit(context.expr(0));
        ValueWrapper right = Visit(context.expr(1));

        return (left, right) switch{
            (BoolValue l, BoolValue r) => new BoolValue(l.Value && r.Value),
            _ => throw new ErrorSemantico("Operacion logica AND no permitida", context.Start)
        };
    }
//********************************************************AGRUPACION**************************************************************
    public override ValueWrapper VisitParens(LanguageParser.ParensContext context)
    {
        return Visit(context.expr());
    }

    public override ValueWrapper VisitCondition(LanguageParser.ConditionContext context)
    {
        return Visit(context.expr());
    }
//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>TIPOS DE DATOS<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
    public override ValueWrapper VisitInteger(LanguageParser.IntegerContext context)
    {
        return new IntValue(int.Parse(context.INT().GetText()));
    }

    public override ValueWrapper VisitFloat(LanguageParser.FloatContext context)
    {
        return new FloatValue(float.Parse(context.FLOAT().GetText(), CultureInfo.InvariantCulture));
    }

    public override ValueWrapper VisitRune(LanguageParser.RuneContext context)
    {
        string rawText = context.RUNE().GetText();
    
        // Quitar las comillas simples de los extremos
        string text = rawText.Substring(1, rawText.Length - 2);
        
        // Procesar secuencias de escape
        text = SecuenciasEscape(text);
        
        // Si después de procesar las secuencias de escape hay más de un carácter
        // o el string está vacío, es un error
        if (text.Length != 1)
        {
            throw new ErrorSemantico("Un rune debe contener exactamente un carácter", context.Start);
        }
        
        return new RuneValue(text[0]);
    }

    public override ValueWrapper VisitString(LanguageParser.StringContext context)
    {
        string rawText = context.STRING().GetText();
    
        // Quitar las comillas de los extremos (primer y último carácter)
        string text = rawText.Substring(1, rawText.Length - 2);
        
        // Reemplazar las secuencias de escape con sus valores reales
        text = SecuenciasEscape(text);
        
        return new StringValue(text);
    }

    public override ValueWrapper VisitBoolean(LanguageParser.BooleanContext context)
    {
        return new BoolValue(bool.Parse(context.BOOL().GetText()));
    }

    private string SecuenciasEscape(string text){
        var sb = new System.Text.StringBuilder(text.Length);
    
        for (int i = 0; i < text.Length; i++)
        {
            if (text[i] == '\\' && i < text.Length - 1)
            {
                switch (text[i + 1])
                {
                    case '\\': 
                        sb.Append('\\');
                        break;
                    case '"': 
                        sb.Append('"');
                        break;
                    case 'n': 
                        sb.Append('\n');
                        break;
                    case 'r': 
                        sb.Append('\r');
                        break;
                    case 't': 
                        sb.Append('\t');
                        break;
                    case '/': 
                        sb.Append('/');
                        break;
                    default: 
                        sb.Append('\\');
                        sb.Append(text[i + 1]);
                        break;
                }
                i++;
            }
            else
            {
                sb.Append(text[i]);
            }
        }
        
        return sb.ToString();
    }
}