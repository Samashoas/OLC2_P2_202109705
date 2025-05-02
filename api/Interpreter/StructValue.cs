using System.Collections.Generic;

public record StructValue : ValueWrapper 
{
    public string StructName { get; }
    public Dictionary<string, ValueWrapper> Fields { get; }
    public bool IsNil { get; }  // Nuevo

    public StructValue(string structName, Dictionary<string, ValueWrapper> fields, bool isNil = false)
    {
        StructName = structName;
        Fields = fields;
        IsNil = isNil;
    }
    
    // Método helper para crear un valor nil
    public static StructValue Nil(string structName) => 
    new StructValue(structName, new Dictionary<string, ValueWrapper>(), true);
}