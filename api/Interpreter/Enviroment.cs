public class Enviroment {
    public Dictionary<string, ValueWrapper> variables = new Dictionary<string, ValueWrapper>();
    public Dictionary<string, StructType> structs = new Dictionary<string, StructType>();
    private Enviroment? parent;

    public Enviroment(Enviroment? parent){
        this.parent = parent;
    }
    public ValueWrapper GetVariable(string id, Antlr4.Runtime.IToken token){
        if(variables.ContainsKey(id)){
            return variables[id];
        }
        else if(parent != null){
            return parent.GetVariable(id, token);
        }
        else{
            throw new ErrorSemantico("Variable " + id + " no definida", token);
        }
    }

    public void DeclareVariable(string id, ValueWrapper value, Antlr4.Runtime.IToken? token){
        if(variables.ContainsKey(id)){
            throw new ErrorSemantico("Variable " + id + " ya definida", token);
        }
        else{
            variables[id] = value;
        }
    }

    public void DeclareVariableType(string id, string type, Antlr4.Runtime.IToken? token){
        if(variables.ContainsKey(id)){
            throw new ErrorSemantico("variable " + id + " ya definida", token);
        }
        else{
            ValueWrapper defaultValue = type switch{
                "int" => new IntValue(0),
                "float64" => new FloatValue(0.0f),
                "string" => new StringValue(""),
                "rune" => new RuneValue(' '),
                "bool" => new BoolValue(false),
                "void" => new VoidValue(),
                _ => throw new ErrorSemantico("Tipo de dato no valido", token)
            };
            variables.Add(id, defaultValue);
        }
    }

    public void DeclareVariableTypeValue(string id, string type, ValueWrapper value, Antlr4.Runtime.IToken? token){
        if (variables.ContainsKey(id)){
            throw new ErrorSemantico("Variable " + id + " ya definida", token);
        }
        else{
            ValueWrapper defaultValue = type switch{
                "int" => value is IntValue ? value : throw new ErrorSemantico("El valor y el tipo no coinciden", token),
                "float64" => value is FloatValue ? value : value is IntValue intValue ? new FloatValue(intValue.Value) : throw new ErrorSemantico("El valor y el tipo no coinciden", token),
                "string" => value is StringValue ? value : throw new ErrorSemantico("El valor y el tipo no coinciden", token),
                "rune" => value is RuneValue ? value : throw new ErrorSemantico("El valor y el tipo no coinciden", token),
                "bool" => value is BoolValue ? value : throw new ErrorSemantico("El valor y el tipo no coinciden", token),
            };
            variables.Add(id, defaultValue);
        }
    }

    public ValueWrapper AssignVariable(string id, ValueWrapper value, Antlr4.Runtime.IToken token)
{
    if (variables.ContainsKey(id)){
        ValueWrapper existingValue = variables[id];

        // Verificar que el tipo del valor asignado coincida con el tipo de la variable
        if (existingValue is FloatValue && value is IntValue intValue)
        {
            // Conversión automática de int a float
            variables[id] = new FloatValue(intValue.Value);
            return variables[id];
        }
        else if (existingValue.GetType() == value.GetType())
        {
            // Asignación directa si los tipos coinciden
            variables[id] = value;
            return variables[id];
        }
        else
        {
            throw new ErrorSemantico("El tipo de dato no coincide con el de la variable: " + id, token);
        }
    }else if(parent != null){
        return parent.AssignVariable(id, value, token);
    }
    else
    {
        throw new ErrorSemantico("La variable " + id + " no existe", token);
    }
}

    public void DeclareStruct(string id, Dictionary<string, string> fields, Antlr4.Runtime.IToken? token){
       if (parent != null)
        {
            throw new ErrorSemantico("Los structs solo pueden declararse en el ámbito global", token);
        }
        if (fields.Count == 0)
        {
            throw new ErrorSemantico("Los structs deben tener al menos un atributo", token);
        }
        if (structs.ContainsKey(id))
        {
            throw new ErrorSemantico("Struct " + id + " ya definido", token);
        }

        // Validar tipos de campos
        foreach (var field in fields)
        {
            string type = field.Value;
            if (!IsValidType(type, id)) // Pasar el nombre del struct actual (id)
            {
                throw new ErrorSemantico($"Tipo inválido '{type}' en el campo '{field.Key}'", token);
            }
        }

        structs[id] = new StructType(id, fields);
    }

    public StructType GetStruct(string id, Antlr4.Runtime.IToken? token){
        if(structs.ContainsKey(id)){
            return structs[id];
        }
        else if(parent != null){
            return parent.GetStruct(id, token);
        }
        else{
            throw new ErrorSemantico("Struct " + id + " no definido", token);
        }
    }

    private bool IsValidType(string type, string currentStructName)
    {
        string[] primitiveTypes = { "int", "float64", "string", "rune", "bool" };
        if (primitiveTypes.Contains(type))
        {
            return true;
        }
        // Permitir structs existentes o el struct actual (para recursión)
        return structs.ContainsKey(type) || type == currentStructName;
    }

}