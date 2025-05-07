using System;
using System.Collections.Generic;
using System.Text;

public class StackObject{
    public enum StackObjectType {Int, Float, String, Bool, Rune, Undefined}
    public StackObjectType Type {get; set;}
    public int length {get; set;}
    public int Depth {get; set;}
    public int Offset { get; set; }
    public string? Id{get; set;}
}

public class Generator
{
    public  List<string> instructions = new List<string>();
    public  List<string> funcInstructions = new List<string>();
    private readonly StandardLibrary standardLibrary = new StandardLibrary();
    private int lableCounter = 0;

    private List<StackObject> stack = new List<StackObject>();
    private int stackDepth = 0;

    // Stack management
    public String GetLable(){
        return $"L{lableCounter++}";
    }

    public void SetLable(string label){
        instructions.Add($"{label}:");
    }

    public void PopObject(){
        stack.RemoveAt(stack.Count - 1);
    }
    public StackObject TopObject(){
        return stack.Last();
    }
    public void PushObject(StackObject obj){
        stack.Add(obj);
    }

    public void PushConstant(StackObject obj, object value)
    {
        switch(obj.Type){
            case StackObject.StackObjectType.Int:
                Mov(Register.X0, (int)value);
                Push(Register.X0);
                break;
            case StackObject.StackObjectType.Bool:
                Mov(Register.X0, (bool)value ? 1 : 0);
                Push(Register.X0);
                break;
            case StackObject.StackObjectType.Rune:
                Mov(Register.X0, (int)(char)value);
                Push(Register.X0);
                break;
            case StackObject.StackObjectType.Float:
                long FloatBits = BitConverter.DoubleToInt64Bits((double)value);
                ushort[] FloatParts = new ushort[4];
                for(int i = 0; i < 4; i++)
                {
                    FloatParts[i] = (ushort)((FloatBits >> (i * 16)) & 0xFFFF);
                }
                instructions.Add($"MOVZ X0, #0x{FloatParts[0]:X4}, LSL #0");

                for(int i = 1; i < 4; i++)
                {
                    instructions.Add($"MOVK X0, #0x{FloatParts[i]:X4}, LSL #{i * 16}");
                }
                Push(Register.X0);
                break;
            case StackObject.StackObjectType.String:
                List<byte> StringArray = Utils.StringTo1ByteArray((string)value);
                Push(Register.HP);
                for(int i = 0; i< StringArray.Count; i++){
                    var charCode = StringArray[i];
                    Comment($"StringArray[{i}] = {charCode}");
                    Mov("w0", charCode);
                    Strb("w0", Register.HP);
                    Mov(Register.X0, 1);
                    Add(Register.HP, Register.HP, Register.X0);
                }
                break;
        }
        PushObject(obj);
    }

    public StackObject PopObject(string rd)
    {
        var obj = stack.Last();
        stack.RemoveAt(stack.Count - 1);
        Pop(rd);
        return obj;
    }

    //REPRESENTACIONES DE OBJETOS TIPO

    public StackObject IntObject(){
        return new StackObject{
            Type = StackObject.StackObjectType.Int,
            length = 8,
            Depth = stackDepth,
            Id = null
        };
    }
        public StackObject BoolObject(){
        return new StackObject{
            Type = StackObject.StackObjectType.Bool,
            length = 8,
            Depth = stackDepth,
            Id = null
        };
    }
    public StackObject FloatObject(){
        return new StackObject{
            Type = StackObject.StackObjectType.Float,
            length = 8,
            Depth = stackDepth,
            Id = null
        };
    }
    public StackObject StringObject(){
        return new StackObject{
            Type = StackObject.StackObjectType.String,
            length = 8,
            Depth = stackDepth,
            Id = null
        };
    }

    public StackObject RuneObject(){
        return new StackObject{
            Type = StackObject.StackObjectType.Rune,
            length = 8,
            Depth = stackDepth,
            Id = null
        };
    }
    public StackObject CloneObject(StackObject obj){
        return new StackObject{
            Type = obj.Type,
            length = obj.length,
            Depth = stackDepth,
            Id = obj.Id
        };
    }

    // Entonrnos

    public void NewScope(){
        stackDepth++;
    }

    public int EndScope(){
        int byteOffset = 0;

        for(int i = stack.Count -1; i >= 0; i--){
            if(stack[i].Depth == stackDepth){
                byteOffset += stack[i].length;
                stack.RemoveAt(i);
            }else{
                break;
            }
        }
        stackDepth--;
        return byteOffset;
    }

    public void TagObject(string id){
        stack.Last().Id = id;
    }

    public(int, StackObject) GetObject(string id){

        int byteOffset = 0;
        for(int i = stack.Count - 1; i >= 0; i--){
            if(stack[i].Id == id){
                return (byteOffset, stack[i]);
            }
            byteOffset += stack[i].length;
        }

        throw new Exception($"Object {id} not found in stack");
    }

    //Direccionamiento
    public void Adr(string rd, string label)
    {
        instructions.Add($"ADR {rd}, {label}");
    }

    public void Bl(string label)
    {
        instructions.Add($"BL {label}");
    }

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

    //Float operations
    public void Fneg(string rd, string rs){
        instructions.Add($"FNEG {rd}, {rs}");
    }
    public void Scvtf(string rd, string rs){
        instructions.Add($"SCVTF {rd}, {rs}");
    }

    public void Fmov(string rd, string rs){
        instructions.Add($"FMOV {rd}, {rs}");
    }

    public void Fadd(string rd, string rs1, string rs2){
        instructions.Add($"FADD {rd}, {rs1}, {rs2}");
    }

    public void Fsub(string rd, string rs1, string rs2){
        instructions.Add($"FSUB {rd}, {rs1}, {rs2}");
    }

    public void Fmul(string rd, string rs1, string rs2){
        instructions.Add($"FMUL {rd}, {rs1}, {rs2}");
    }

    public void Fdiv(string rd, string rs1, string rs2){
        instructions.Add($"FDIV {rd}, {rs1}, {rs2}");
    }

    //Relational operations

    public void Cmp(string rs1, object rs2)
    {
    string rs2Str = rs2 is int ? $"#{rs2}" : rs2.ToString();
    instructions.Add($"CMP {rs1}, {rs2Str}");
    }

    public void cbz(string rs, string label){
        instructions.Add($"CBZ {rs}, {label}");
    }

    public void Br(string rs)
    {
        instructions.Add($"BR {rs}");
    }

    public void B(string label){
        instructions.Add($"B {label}");
    }
    public void Beq(string label){
        instructions.Add($"BEQ {label}");
    }
    public void Bne(string label){
        instructions.Add($"BNE {label}");
    }
    public void Blt(string label){
        instructions.Add($"BLT {label}");
    }
    public void Bgt(string label){
        instructions.Add($"BGT {label}");
    }
    public void Bge(string label){
        instructions.Add($"BGE {label}");
    }
    public void Ble(string label){
        instructions.Add($"BLE {label}");
    }
    public void Ret(){
        instructions.Add($"RET");
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

    public void Strb(string rs1, string rs2, int offset = 0){
        instructions.Add($"STRB {rs1}, [{rs2}]");
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

    public void PrintRune(string rd)
    {
        instructions.Add($"MOV x0, {rd}");
        instructions.Add("BL print_char");
        standardLibrary.Use("print_char"); 
    }

    public void PrintBool(string rd)
    {
        instructions.Add($"MOV x0, {rd}");
        instructions.Add("BL print_boolean");
        standardLibrary.Use("print_boolean");
    }

    public void PrintFloat()
    {
        standardLibrary.Use("print_integer");
        standardLibrary.Use("print_double");
        instructions.Add( "BL print_double");
    }

    public void PrintString(string rd)
    {
        instructions.Add($"MOV x0, {rd}");
        instructions.Add("BL print_string");
        standardLibrary.Use("print_string");
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
        sb.AppendLine(".data");
        sb.AppendLine("heap: .space 4096");
        sb.AppendLine(".text");
        sb.AppendLine(".global _start");
        sb.AppendLine("_start:");
        sb.AppendLine("    adr x10, heap");

        EndProgram();
        // Luego el código principal
        foreach (var instruction in instructions)
        {
            sb.AppendLine($"    {instruction}");
        }
        

        sb.AppendLine("\n\n\n// Standard library functions");
        sb.AppendLine(standardLibrary.GetFunctionDefinitions());

        return sb.ToString();
        }

        public StackObject GetFrameLocal(int index)
    {
        var obj = stack.Where(o => o.Type == StackObject.StackObjectType.Undefined).ToList()[index];
        return obj;
    }
}