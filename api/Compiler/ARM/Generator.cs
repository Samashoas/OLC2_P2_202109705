using System.Text;
using System.Xml.Serialization;

public class ARMGenerator
{
    private readonly List<string> instruccion = new List<string>();
    private readonly StandardLibrary std = new StandardLibrary();

    public void Add(string rd, string rs1, string rs2){
        instruccion.Add($"ADD {rd}, {rs1}, {rs2}");
    }

    public void Sub(string rd, string rs1, string rs2){
        instruccion.Add($"SUB {rd}, {rs1}, {rs2}");
    }

    public void Mul(string rd, string rs1, string rs2){
        instruccion.Add($"MUL {rd}, {rs1}, {rs2}");
    }

    public void Div(string rd, string rs1, string rs2){
        instruccion.Add($"DIV {rd}, {rs1}, {rs2}");
    }

    public void Addi(string rd, string rs1, int imm){
        instruccion.Add($"ADDI {rd}, {rs1}, #{imm}");
    }

    // Operadores de memoria

    public void Str(string rs1, string rs2, int offset = 0){
        instruccion.Add($"STR {rs1}, [{rs2}, #{offset}]");
    }

    public void Ldr(string rd, string rs1, int offset = 0){
        instruccion.Add($"LDR {rd}, [{rs1}, #{offset}]");
    }

    public void Mov(string rd, int imm){
        instruccion.Add($"MOV {rd}, #{imm}");
    }

    public void Push(string rs){
        instruccion.Add($"STR  {rs}, [SP, #-8]!");
    }

    public void Pop(string rd){
        instruccion.Add($"LDR {rd}, [SP], #8");
    }

    public void Svc(){
        instruccion.Add($"SVC #0");
    }

    public void EndProgram(){
        Mov(Registers.X0, 0);
        Mov(Registers.X8, 93);
        Svc();
    }

    public void Comment(string comment){
        instruccion.Add($"// {comment}");
    }

    public void PrintInteger(string rs){
        std.Use("print_integer");
        instruccion.Add($"MOV X0, {rs}");
        instruccion.Add($"BL print_integer");
    }

    public override string ToString(){
        var sb = new StringBuilder();
        sb.AppendLine(".data");
        sb.AppendLine(".global _start");
        sb.AppendLine("_start:");

        EndProgram();
        foreach (var instr in instruccion){
            sb.AppendLine(instr);
        }

        sb.AppendLine("\n\n\n// Standard Library Functions");
        sb.AppendLine(std.GetFunctionDefinitions());

        return sb.ToString();
    }
}

//CONTINUAR A PARTIR DE 2025/03/27 1:17:47