using Antlr4.Runtime;
using Antlr4.Runtime.Misc;
public class ErrorSemantico : Exception
{
    private string _message;
    private Antlr4.Runtime.IToken _token;

    public ErrorSemantico(string message, Antlr4.Runtime.IToken token)
    {
        _message = message;
        _token = token;
    }

    public Antlr4.Runtime.IToken Token => _token;

    public override string Message
    {
        get
        {
            return _message + " en la linea " + _token.Line + " y columna " + _token.Column;
        }
    }
}

public class ErrorLexico : BaseErrorListener, IAntlrErrorListener<int>
{
    public void SyntaxError(TextWriter output, IRecognizer recognizer, int offendingSymbol, int line, int charPositionInLine, string msg, RecognitionException e)
    {
        throw new ParseCanceledException($"Error léxico en línea {line}:{charPositionInLine} - {msg}");
    }

}

public class ErrorSintactico : BaseErrorListener
{
    public override void SyntaxError(TextWriter output, IRecognizer recognizer, IToken offendingSymbol, int line, int charPositionInLine, string msg, RecognitionException e)
    {
        throw new ParseCanceledException($"Error sintáctico en línea {line}:{charPositionInLine} - {msg}");
    }
}