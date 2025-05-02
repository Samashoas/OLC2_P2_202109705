using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using analyzer;
using Antlr4.Runtime;
using Antlr4.Runtime.Tree;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Antlr4.Runtime.Misc;

namespace api.Controllers
{
    [Route("[controller]")]
    public class Compile : Controller
    {
        private readonly ILogger<Compile> _logger;

        public Compile(ILogger<Compile> logger)
        {
            _logger = logger;
        }

        public class CompileRequest
        {
            [Required]
            public required string code { get; set; }
        }

        // POST /compile
        [HttpPost]
        public IActionResult Post([FromBody] CompileRequest request)
        {
            if (!ModelState.IsValid)
            {
                return BadRequest(new { success = false, error = "Invalid request" });
            }

            var inputStream = new AntlrInputStream(request.code);
            var lexer = new LanguageLexer(inputStream);
            var tokens = new CommonTokenStream(lexer);
            var parser = new LanguageParser(tokens);

            lexer.RemoveErrorListeners();
            lexer.AddErrorListener(new ErrorLexico());

            parser.RemoveErrorListeners();
            parser.AddErrorListener(new ErrorSintactico());
            try
            {
                var tree = parser.program();

                var visitor = new InterpreterVisitor();
                visitor.Visit(tree);

                return Ok(new { success = true, result = visitor.output });
            }
            catch (ParseCanceledException ex)
            {
                // Devolver error con información estructurada
                var recognitionException = ex.InnerException as RecognitionException;
                var offendingToken = recognitionException?.OffendingToken;
                
                return Ok(new { 
                    success = false, 
                    error = ex.Message,
                    errorDetails = new {
                        message = ex.Message,
                        line = offendingToken?.Line ?? 0,
                        column = offendingToken?.Column ?? 0
                    }
                });
            }
            catch (ErrorSemantico ex)
            {
                // Devolver error con información estructurada
                return Ok(new { 
                    success = false, 
                    error = ex.Message,
                    errorDetails = new {
                        message = ex.Message,
                        line = ex.Token?.Line ?? 0,
                        column = ex.Token?.Column ?? 0
                    }
                });
            }
            catch (Exception ex)
            {
                // Para otros errores no esperados
                return Ok(new { 
                    success = false, 
                    error = "Error interno: " + ex.Message 
                });
            }
        }
    }
}

/*
Para probar de forma comoda todas las expresiones aritmeticas al momento de hacerlas hay que:
1. Hay que cambiar >>>>>> var tree = parser.program(); <<<<<<< por var >>>>>> tree = parser.expr(); <<<<< en el metodo Post.
2. El return del post se tiene que cambiar por >>>> return Ok(result);
De esta forma se pueden probar las expresiones artimeticas sin la necesidad de hacer declaraciones
*/

//Listener
/*
var listener = new CompilerListener();
var walker = new ParseTreeWalker();
walker.Walk(listener, tree);

return Ok(listener.GetResult());
*/