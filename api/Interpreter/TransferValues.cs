public class BreakException : Exception
{
    public BreakException() : base("Sentencia break"){ }
}

public class ContinueException : Exception
{
    public ContinueException() : base("Sentencia continue") { }
}

public class ReturnException : Exception
{
    public ValueWrapper Value { get;}

    public ReturnException(ValueWrapper value) : base("Sentencia return") { Value = value; }
}