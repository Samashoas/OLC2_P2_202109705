using System.Collections.Generic;

public class StructType
{
    public string Name { get; }
    public Dictionary<string, string> Fields { get; } // nombre del campo -> tipo del campo
    public bool IsCustomType(string typeName) => !new[] { "int", "float64", "bool", "string", "rune" }.Contains(typeName);
    public StructType(string name, Dictionary<string, string> fields)
    {
        Name = name;
        Fields = fields;
    }
    
}