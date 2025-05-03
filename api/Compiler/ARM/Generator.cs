using System;
using System.Collections.Generic;
using System.Text;

public class Generator
{
    private readonly List<string> instructions = new List<string>();
    private readonly StandardLibrary standardLibrary = new StandardLibrary();

    // Arithmetic operations

    public void Neg(string rd, string rs){
        instructions.Add($"NEG {rd}, {rs}");
    }
    public void Add(string rd, string rs1, string rs2)
    {
        instructions.Add($"ADD {rd}, {rs1}, {rs2}");
    }

    public void Sub(string rd, string rs1, string rs2)
    {
        instructions.Add($"SUB {rd}, {rs1}, {rs2}");
    }

    public void Mul(string rd, string rs1, string rs2)
    {
        instructions.Add($"MUL {rd}, {rs1}, {rs2}");
    }

    public void Div(string rd, string rs1, string rs2)
    {
        instructions.Add($"SDIV {rd}, {rs1}, {rs2}");
    }

    // Immediate operations
    public void Addi(string rd, string rs1, int immediate)
    {
        instructions.Add($"ADD {rd}, {rs1}, #{immediate}");
    }

    // Memory operations
    public void Str(string rs1, string rs2, int offset = 0)
    {
        instructions.Add($"STR {rs1}, [{rs2}, #{offset}]");
    }

    public void Ldr(string rd, string rs1, int offset = 0)
    {
        instructions.Add($"LDR {rd}, [{rs1}, #{offset}]");
    }

    public void Mov(string rd, int immediate)
    {
        instructions.Add($"MOV {rd}, #{immediate}");
    }

    // Stack operations
    public void Push(string rd)
    {
        instructions.Add($"STR {rd}, [SP, #-8]!");
    }

    public void Pop(string rd)
    {
        instructions.Add($"LDR {rd}, [SP], #8");
    }

    // System calls
    public void Svc()
    {
        instructions.Add("SVC #0");
    }

    public void PrintSpace(){
        instructions.Add("//print space");
        instructions.Add("BL print_space");
        standardLibrary.Use("print_space");
    }

    public void PrintNewLine(){
        instructions.Add("//print newline");
        instructions.Add("BL print_newline");
        standardLibrary.Use("print_newline");
    }

    // Print integer function
    public void PrintInt(string rd)
    {
        instructions.Add($"MOV x0, {rd}");
        instructions.Add("BL print_integer");
        standardLibrary.Use("print_integer");
    }

    public void EndProgram()
    {
        Mov(Register.X0, 0);
        Mov(Register.X8, 93);
        Svc();
    }

    public void Comment(string text)
    {
        instructions.Add($"// {text}");
    }

    public override string ToString()
    {
        var sb = new StringBuilder();
        sb.AppendLine(".text");
        sb.AppendLine(".global _start");
        sb.AppendLine("_start:");

        EndProgram();
        foreach (var instruction in instructions)
        {
            sb.AppendLine($"    {instruction}");
        }


        sb.AppendLine("\n\n\n// Standard library functions");
        sb.AppendLine(standardLibrary.GetFunctionDefinitions());

        return sb.ToString();
    }
}