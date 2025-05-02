using System.Text;

public abstract record ValueWrapper;

public record IntValue(int Value) : ValueWrapper;
public record FloatValue(float Value) : ValueWrapper;
public record StringValue(string Value) : ValueWrapper;
public record RuneValue(char Value) : ValueWrapper;
public record BoolValue(bool Value) : ValueWrapper;

//public record FunctionValue(Incovable invocable, string name) : ValueWrapper;
public record FunctionValue(Invocable invocable, string name) : ValueWrapper;
public record VoidValue : ValueWrapper;