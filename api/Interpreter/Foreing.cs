using analyzer;

public class ForeingFunction : Invocable {
    private Enviroment clousure;
    private LanguageParser.FuncDclContext context;
    private string returnType;

    public ForeingFunction(Enviroment clousure, LanguageParser.FuncDclContext context) {
        this.clousure = clousure;
        this.context = context;
        this.returnType = context.TYPE() != null ? context.TYPE().GetText() : "void";
    }

    public int Arity() {
        if(context.funcParams() == null) {
            return 0;
        }
        return context.funcParams().paramDcl().Length;
    }

    public ValueWrapper Invoke(List<ValueWrapper> args, InterpreterVisitor visitor) {
        var newEnv = new Enviroment(clousure);
        var BeforeCallEnv = visitor.currentEnv;
        visitor.currentEnv = newEnv;

        if(context.funcParams() != null) {
            for(int i = 0; i < context.funcParams().paramDcl().Length; i++) {
                var paramDecl = context.funcParams().paramDcl(i);
                string id = paramDecl.ID().GetText();
                string type = paramDecl.TYPE().GetText();
                
                CheckParameterType(args[i], type, context.Start);
                
                newEnv.DeclareVariableTypeValue(id, type, args[i], context.Start);
            }
        }

        try {
            foreach(var stmt in context.dcl()) {
                visitor.Visit(stmt);
            }
        } catch(ReturnException e) {
            visitor.currentEnv = BeforeCallEnv;
            
            if (returnType != "void") {
                CheckReturnType(e.Value, returnType, context.Start);
            }
            
            return e.Value;
        }

        visitor.currentEnv = BeforeCallEnv;
        
        if (returnType != "void" && returnType != null) {
            throw new ErrorSemantico($"Function {context.ID().GetText()} must return a value of type {returnType}", context.Start);
        }
        
        return visitor.defualtValue;
    }
    
    private void CheckParameterType(ValueWrapper value, string expectedType, Antlr4.Runtime.IToken token) {
        bool isValid = (value, expectedType) switch {
            (IntValue _, "int") => true,
            (FloatValue _, "float64") => true,
            (StringValue _, "string") => true,
            (BoolValue _, "bool") => true,
            (RuneValue _, "rune") => true,
            (IntValue intVal, "float64") => true,
            _ => false
        };
        
        if (!isValid) {
            throw new ErrorSemantico($"Parameter type mismatch: expected {expectedType}, got {GetValueType(value)}", token);
        }
    }
    
    private void CheckReturnType(ValueWrapper value, string expectedType, Antlr4.Runtime.IToken token) {
        bool isValid = (value, expectedType) switch {
            (IntValue _, "int") => true,
            (FloatValue _, "float64") => true,
            (StringValue _, "string") => true,
            (BoolValue _, "bool") => true,
            (RuneValue _, "rune") => true,
            (IntValue intVal, "float64") => true, 
            _ => false
        };
        
        if (!isValid) {
            throw new ErrorSemantico($"Return type mismatch: expected {expectedType}, got {GetValueType(value)}", token);
        }
    }
    
    private string GetValueType(ValueWrapper value) {
        return value switch {
            IntValue _ => "int",
            FloatValue _ => "float64",
            StringValue _ => "string",
            BoolValue _ => "bool",
            RuneValue _ => "rune",
            VoidValue _ => "void",
            StructValue S => S.StructName,
            _ => "unknown"
        };
    }
}