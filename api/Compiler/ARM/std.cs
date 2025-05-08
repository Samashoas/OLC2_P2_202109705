using System.Collections.Generic;

public class StandardLibrary
{
    private readonly HashSet<string> UsedFunctions = new HashSet<string>();
    private readonly HashSet<string> UsedSymbols = new HashSet<string>();

    public void Use(string function)
    {
        UsedFunctions.Add(function);

        if (function == "print_integer")
        {
            UsedSymbols.Add("minus_sign");
        }
        else if (function == "print_double" || function == "print_float")
        {
            UsedSymbols.Add("dot_char");
            UsedSymbols.Add("zero_char");
        }
        else if (function == "print_boolean")
        {
            UsedSymbols.Add("true_str");
            UsedSymbols.Add("false_str");
        }
        else if (function == "print_space")
        {
            UsedSymbols.Add("space_char");
        }
        else if (function == "print_newline")
        {
            UsedSymbols.Add("newline_char");
        }else if (function == "parse_float")
        {
            UsedSymbols.Add("minus_sign");
            UsedSymbols.Add("dot_char");
        }else if (function == "typeof")
        {
            UsedSymbols.Add("type_int_str");
            UsedSymbols.Add("type_float_str");
            UsedSymbols.Add("type_bool_str");
            UsedSymbols.Add("type_string_str");
            UsedSymbols.Add("type_rune_str");
            UsedSymbols.Add("type_undefined_str");
        }
    }

    public string GetFunctionDefinitions()
    {
        var functions = new List<string>();

        foreach (var function in UsedFunctions)
        {
            if (FunctionDefinitions.TryGetValue(function, out var definition))
            {
                functions.Add(definition);
            }
        }

        var fnDefs = string.Join("\n", functions);

        var symbols = new List<string>();
        foreach (var symbol in UsedSymbols)
        {
            if (Symbols.TryGetValue(symbol, out var definition))
            {
                symbols.Add(definition);
            }
        }
        var symbolsDefs = string.Join("\n", symbols);

        return fnDefs + "\n" + symbolsDefs;
    }

    private readonly static Dictionary<string, string> FunctionDefinitions = new Dictionary<string, string>
    {
        { "print_integer", @"
//--------------------------------------------------------------
// print_integer - Prints a signed integer to stdout
//
// Input:
//   x0 - The integer value to print
//--------------------------------------------------------------
print_integer:
    // Save registers
    stp x29, x30, [sp, #-16]!  // Save frame pointer and link register
    stp x19, x20, [sp, #-16]!  // Save callee-saved registers
    stp x21, x22, [sp, #-16]!
    stp x23, x24, [sp, #-16]!
    stp x25, x26, [sp, #-16]!
    stp x27, x28, [sp, #-16]!
    
    // Check if number is negative
    mov x19, x0                // Save original number
    cmp x19, #0                // Compare with zero
    bge positive_number        // Branch if greater or equal to zero
    
    // Handle negative number
    mov x0, #1                 // fd = 1 (stdout)
    adr x1, minus_sign         // Address of minus sign
    mov x2, #1                 // Length = 1
    mov w8, #64                // Syscall write
    svc #0
    
    neg x19, x19               // Make number positive
    
positive_number:
    // Prepare buffer for converting result to ASCII
    sub sp, sp, #32            // Reserve space on stack
    mov x22, sp                // x22 points to buffer
    
    // Initialize digit counter
    mov x23, #0                // Digit counter
    
    // Handle special case for zero
    cmp x19, #0
    bne convert_loop
    
    // If number is zero, just write '0'
    mov w24, #48               // ASCII '0'
    strb w24, [x22, x23]       // Store in buffer
    add x23, x23, #1           // Increment counter
    b print_result             // Skip conversion loop
    
convert_loop:
    // Divide the number by 10
    mov x24, #10
    udiv x25, x19, x24         // x25 = x19 / 10 (quotient)
    msub x26, x25, x24, x19    // x26 = x19 - (x25 * 10) (remainder)
    
    // Convert remainder to ASCII and store in buffer
    add x26, x26, #48          // Convert to ASCII ('0' = 48)
    strb w26, [x22, x23]       // Store digit in buffer
    add x23, x23, #1           // Increment digit counter
    
    // Prepare for next iteration
    mov x19, x25               // Quotient becomes the new number
    cbnz x19, convert_loop     // If number is not zero, continue
    
    // Reverse the buffer since digits are in reverse order
    mov x27, #0                // Start index
reverse_loop:
    sub x28, x23, x27          // x28 = length - current index
    sub x28, x28, #1           // x28 = length - current index - 1
    
    cmp x27, x28               // Compare indices
    bge print_result           // If crossed, finish reversing
    
    // Swap characters
    ldrb w24, [x22, x27]       // Load character from start
    ldrb w25, [x22, x28]       // Load character from end
    strb w25, [x22, x27]       // Store end character at start
    strb w24, [x22, x28]       // Store start character at end
    
    add x27, x27, #1           // Increment start index
    b reverse_loop             // Continue reversing
    
print_result:
    // Print the result
    mov x0, #1                 // fd = 1 (stdout)
    mov x1, x22                // Buffer address
    mov x2, x23                // Buffer length
    mov w8, #64                // Syscall write
    svc #0
    
    // Clean up and restore registers
    add sp, sp, #32            // Free buffer space
    ldp x27, x28, [sp], #16    // Restore callee-saved registers
    ldp x25, x26, [sp], #16
    ldp x23, x24, [sp], #16
    ldp x21, x22, [sp], #16
    ldp x19, x20, [sp], #16
    ldp x29, x30, [sp], #16    // Restore frame pointer and link register
    ret                        // Return to caller
    "
    },

{ "print_string", @"
//--------------------------------------------------------------
// print_string - Prints a null-terminated string to stdout
//
// Input:
//   x0 - Address of the null-terminated string
//--------------------------------------------------------------
.align 4
print_string:
    // Save registers
    stp x29, x30, [sp, #-16]!  // Save frame pointer and link register
    stp x19, x20, [sp, #-16]!  // Save callee-saved registers
    
    // Setup
    mov x19, x0                // Save string address
    
    // Calculate string length
    mov x20, #0                // Initialize length counter
length_loop:
    ldrb w0, [x19, x20]        // Load byte from string
    cbz w0, print_it           // If byte is zero (null terminator), exit loop
    add x20, x20, #1           // Increment length counter
    b length_loop              // Continue loop
    
print_it:
    // Print the string
    mov x0, #1                 // fd = 1 (stdout)
    mov x1, x19                // String address
    mov x2, x20                // String length
    mov w8, #64                // write syscall
    svc #0
    
    // Restore registers and return
    ldp x19, x20, [sp], #16    // Restore callee-saved registers
    ldp x29, x30, [sp], #16    // Restore frame pointer and link register
    ret
"
},
    {
        "print_double", @"
//--------------------------------------------------------------
// print_double - Prints a double precision float to stdout
//
// Input:
//   d0 - The double value to print
//--------------------------------------------------------------
print_double:
    // Save context
    stp x29, x30, [sp, #-16]!    
    stp x19, x20, [sp, #-16]!
    stp x21, x22, [sp, #-16]!
    stp x23, x24, [sp, #-16]!
    
    // Check if number is negative
    fmov x19, d0
    tst x19, #(1 << 63)       // Comprueba el bit de signo
    beq skip_minus

    // Print minus sign
    mov x0, #1
    adr x1, minus_sign
    mov x2, #1
    mov x8, #64
    svc #0

    // Make value positive
    fneg d0, d0

skip_minus:
    // Convert integer part
    fcvtzs x0, d0             // x0 = int(d0)
    bl print_integer

    // Print dot '.'
    mov x0, #1
    adr x1, dot_char
    mov x2, #1
    mov x8, #64
    svc #0

    // Get fractional part: frac = d0 - float(int(d0))
    frintm d4, d0             // d4 = floor(d0)
    fsub d2, d0, d4           // d2 = d0 - floor(d0) (exact fraction)

    // Para 2.5, d2 debe ser exactamente 0.5

    // Multiplicar por 1_000_000 (6 decimales)
    movz x1, #0x000F, lsl #16
    movk x1, #0x4240, lsl #0   // x1 = 1000000
    scvtf d3, x1              // d3 = 1000000.0
    fmul d2, d2, d3           // d2 = frac * 1_000_000
    
    // Redondear al entero más cercano para evitar errores de precisión
    frintn d2, d2             // d2 = round(d2)
    fcvtzs x0, d2             // x0 = int(d2)

    // Imprimir ceros a la izquierda si es necesario
    mov x20, x0               // x20 = fracción entera
    movz x21, #0x0001, lsl #16
    movk x21, #0x86A0, lsl #0  // x21 = 100000
    mov x22, #0               // inicializar contador de ceros
    mov x23, #10              // constante para división

leading_zero_loop:
    udiv x24, x20, x21        // x24 = x20 / x21
    cbnz x24, done_leading_zeros  // Si hay un dígito no cero, salir del bucle

    // Imprimir '0'
    mov x0, #1
    adr x1, zero_char
    mov x2, #1
    mov x8, #64
    svc #0

    udiv x21, x21, x23        // x21 /= 10
    add x22, x22, #1          // incrementar contador de ceros
    cmp x21, #0               // verificar si llegamos al final
    beq print_remaining       // si divisor es 0, saltar a imprimir el resto
    b leading_zero_loop

done_leading_zeros:
    // Print the remaining fractional part
    mov x0, x20
    bl print_integer
    b exit_function

print_remaining:
    // Caso especial cuando la parte fraccionaria es 0 después de imprimir ceros
    cmp x20, #0
    bne exit_function
    
    // Ya imprimimos todos los ceros necesarios
    // No hace falta imprimir nada más

exit_function:
    // Restore context
    ldp x23, x24, [sp], #16
    ldp x21, x22, [sp], #16
    ldp x19, x20, [sp], #16
    ldp x29, x30, [sp], #16
    ret
    "},

    { "print_space", @"
//--------------------------------------------------------------
// print_space - Prints a space character to stdout
//--------------------------------------------------------------
print_space:
    // Save link register
    stp x29, x30, [sp, #-16]!
    
    // Print space character
    mov x0, #1           // fd = 1 (stdout)
    adr x1, space_char   // address of space
    mov x2, #1           // length is 1 byte
    mov w8, #64          // write syscall
    svc #0
    
    // Restore registers and return
    ldp x29, x30, [sp], #16
    ret
    "},

    { "print_newline", @"
//--------------------------------------------------------------
// print_newline - Prints a newline character
//--------------------------------------------------------------
print_newline:
    // Save link register
    stp x29, x30, [sp, #-16]!
    
    // Print newline character
    mov x0, #1           // fd = 1 (stdout)
    adr x1, newline_char // address of newline
    mov x2, #1           // length is 1 byte
    mov w8, #64          // write syscall
    svc #0
    
    // Restore registers and return
    ldp x29, x30, [sp], #16
    ret
    "},
    { "print_char", @"
//--------------------------------------------------------------
// print_char - Prints a single character to stdout
//
// Input:
//   x0 - The character value to print (as an integer)
//--------------------------------------------------------------
print_char:
    // Save registers
    stp x29, x30, [sp, #-16]!  // Save frame pointer and link register
    
    // Reserve space for the character on the stack and store it
    sub sp, sp, #16
    strb w0, [sp]              // Store the character on stack
    
    // Print the character
    mov x0, #1                 // fd = 1 (stdout)
    mov x1, sp                 // Address of character on stack
    mov x2, #1                 // Length = 1 byte
    mov w8, #64                // write syscall
    svc #0
    
    // Clean up and return
    add sp, sp, #16            // Restore stack
    ldp x29, x30, [sp], #16    // Restore frame pointer and link register
    ret
"},
       { "print_boolean", @"
//--------------------------------------------------------------
// print_boolean - Prints a boolean value (true/false) to stdout
//
// Input:
//   x0 - The boolean value to print (0 = false, non-zero = true)
//--------------------------------------------------------------
print_boolean:
    // Save registers
    stp x29, x30, [sp, #-16]!  // Save frame pointer and link register
    
    // Check if the value is true or false
    cmp x0, #0
    beq print_false
    
    // Print 'true'
    mov x0, #1                 // fd = 1 (stdout)
    adr x1, true_str           // Address of 'true' string
    mov x2, #4                 // Length = 4 bytes
    mov w8, #64                // Syscall write
    svc #0
    b print_bool_end
    
print_false:
    // Print 'false'
    mov x0, #1                 // fd = 1 (stdout)
    adr x1, false_str          // Address of 'false' string
    mov x2, #5                 // Length = 5 bytes
    mov w8, #64                // Syscall write
    svc #0
    
print_bool_end:
    // Restore registers and return
    ldp x29, x30, [sp], #16    // Restore frame pointer and link register
    ret" },
{ "concat_string", @"
//--------------------------------------------------------------
// concat_string - Concatenates two strings and returns a new string
//
// Input:
//   x0 - Address of the first string
//   x1 - Address of the second string
// Output:
//   x0 - Address of the concatenated string (in heap)
//--------------------------------------------------------------
concat_string:
    // Save ALL necessary registers
    stp x29, x30, [sp, #-16]!  // Save frame pointer and link register
    stp x19, x20, [sp, #-16]!  // Save callee-saved registers
    stp x21, x22, [sp, #-16]!  // Save more callee-saved registers
    str x10, [sp, #-16]!       // IMPORTANTE: Guardar x10 (heap pointer)
    
    // Save string addresses
    mov x19, x0                // First string
    mov x20, x1                // Second string
    mov x21, x10               // Current heap pointer
    
    // Calculate lengths (for debugging and optimization)
    mov x22, #0                // Length counter for first string
len_first:
    ldrb w0, [x19, x22]
    cbz w0, done_len_first
    add x22, x22, #1
    b len_first
done_len_first:
    
    mov x23, #0                // Length counter for second string
len_second:
    ldrb w0, [x20, x23]
    cbz w0, done_len_second
    add x23, x23, #1
    b len_second
done_len_second:
    
    // Verify heap has enough space (optional safety check)
    add x24, x22, x23          // Total length needed (plus null terminator)
    add x24, x24, #1
    
    // Copy first string to heap
    mov x22, #0                // Reset counter
copy_first:
    ldrb w0, [x19, x22]        // Load byte from first string
    cbz w0, copy_second_init   // If null terminator, start copying second string
    strb w0, [x10], #1         // Store byte and advance heap pointer
    add x22, x22, #1           // Increment counter
    b copy_first
    
copy_second_init:
    mov x22, #0                // Reset counter for second string
copy_second:
    ldrb w0, [x20, x22]        // Load byte from second string
    strb w0, [x10], #1         // Store byte and advance heap pointer
    add x22, x22, #1           // Increment counter
    cbz w0, concat_done        // If we just copied null terminator, we're done
    b copy_second
    
concat_done:
    mov x0, x21                // Return pointer to the new string
    
    // Restore ALL registers in reverse order
    ldr x10, [sp], #16         // IMPORTANTE: Restaurar x10 correctamente
    ldp x21, x22, [sp], #16    // Restore callee-saved registers
    ldp x19, x20, [sp], #16    // Restore callee-saved registers
    ldp x29, x30, [sp], #16    // Restore frame pointer and link register
    ret
"},
{"atoi", @"
//--------------------------------------------------------------
// str_to_int - Convert string to integer
//
// Input:
//   x0 - Address of the string
// Output:
//   x0 - Integer value
//--------------------------------------------------------------
str_to_int:
    // Save registers
    stp x29, x30, [sp, #-16]!
    stp x19, x20, [sp, #-16]!
    stp x21, x22, [sp, #-16]!
    
    // Initialize registers
    mov x19, x0       // Save string address
    mov x20, #0       // Initialize result
    mov x21, #0       // Flag for negative number (0 = positive)
    mov x22, #10      // Constant multiplier (base 10)
    
    // Check if string is empty
    ldrb w0, [x19]
    cbz w0, str_to_int_end
    
    // Check for negative sign
    cmp w0, #'-'
    bne parse_loop
    mov x21, #1       // Set negative flag
    add x19, x19, #1  // Skip the '-' sign
    
parse_loop:
    // Load current character
    ldrb w0, [x19], #1
    
    // Check if we're done (null terminator)
    cbz w0, apply_negative
    
    // Check if character is a digit (ASCII '0' to '9')
    sub w0, w0, #'0'
    cmp w0, #9
    bhi apply_negative  // If not a digit, we're done
    
    // Update result: result = result * 10 + digit
    mul x20, x20, x22
    add x20, x20, x0, UXTW  // Add with zero extension
    
    // Continue with next character
    b parse_loop
    
apply_negative:
    // Apply negative sign if needed
    cmp x21, #1
    bne str_to_int_end
    neg x20, x20
    
str_to_int_end:
    // Return result in x0
    mov x0, x20
    
    // Restore registers and return
    ldp x21, x22, [sp], #16
    ldp x19, x20, [sp], #16
    ldp x29, x30, [sp], #16
    ret
"
},
{ "parseFloat", @"
//--------------------------------------------------------------
// parse_float - Convert string to floating point number
//
// Input:
//   x0 - Address of the string
// Output:
//   d0 - Double precision floating point value
//--------------------------------------------------------------
parse_float:
    // Save all necessary registers
    stp x29, x30, [sp, #-16]!
    stp x19, x20, [sp, #-16]!
    stp x21, x22, [sp, #-16]!
    stp x23, x24, [sp, #-16]!
    stp x25, x26, [sp, #-16]!
    
    // Initialize registers
    mov x19, x0        // Save string pointer
    mov x20, #0        // Integer part
    mov x21, #0        // Fractional part
    mov x22, #10       // Base 10
    mov x23, #0        // Negative flag
    mov x24, #0        // Position after decimal point
    fmov d0, xzr       // Initialize result to 0.0
    
    // Check if string is empty
    ldrb w0, [x19]
    cbz w0, parse_float_end
    
    // Check for sign
    cmp w0, #'-'
    bne not_negative
    mov x23, #1        // Set negative flag
    add x19, x19, #1   // Skip '-'
    b check_digits
    
not_negative:
    cmp w0, #'+'
    bne check_digits
    add x19, x19, #1   // Skip '+'
    
check_digits:
    // First pass: build integer part until we hit a dot or end
    mov x20, #0        // Reset integer part
    
int_part_loop:
    ldrb w0, [x19]
    cbz w0, convert_int_part  // End of string
    
    cmp w0, #'.'
    beq decimal_point_found  // Decimal point found
    
    sub w0, w0, #'0'
    cmp w0, #9
    bhi convert_int_part      // Not a digit
    
    // integer_part = integer_part * 10 + digit
    mul x20, x20, x22
    add x20, x20, x0
    
    add x19, x19, #1  // Next character
    b int_part_loop
    
decimal_point_found:
    add x19, x19, #1  // Skip decimal point
    
    // Second pass: build fractional part
    mov x21, #0        // Reset fractional part
    mov x24, #1        // Start with divisor 10
    
frac_part_loop:
    ldrb w0, [x19]
    cbz w0, convert_parts    // End of string
    
    sub w0, w0, #'0'
    cmp w0, #9
    bhi convert_parts        // Not a digit
    
    // fractional_part = fractional_part * 10 + digit
    mul x21, x21, x22
    add x21, x21, x0
    
    // Increase divisor by factor of 10
    mul x24, x24, x22
    
    add x19, x19, #1        // Next character
    b frac_part_loop
    
convert_int_part:
    // Convert integer part to float
    scvtf d0, x20
    b apply_sign
    
convert_parts:
    // Convert integer part to float
    scvtf d0, x20
    
    // If we have fractional part
    cmp x24, #1
    beq apply_sign       // No fractional part
    
    // Convert fractional part to float
    scvtf d1, x21        // d1 = float(fractional)
    scvtf d2, x24        // d2 = float(divisor)
    fdiv d1, d1, d2      // d1 = d1 / d2
    
    // Add to result
    fadd d0, d0, d1      // result = int_part + frac_part
    
apply_sign:
    // Apply negative sign if needed
    cmp x23, #0
    beq parse_float_end
    fneg d0, d0
    
parse_float_end:
    // Restore registers
    ldp x25, x26, [sp], #16
    ldp x23, x24, [sp], #16
    ldp x21, x22, [sp], #16
    ldp x19, x20, [sp], #16
    ldp x29, x30, [sp], #16
    ret
"},
{ "string_compare", @"
//--------------------------------------------------------------
// string_compare - Compares two strings and returns 0 if equal, 1 if different
//
// Input:
//   x0 - Address of the first string
//   x1 - Address of the second string
// Output:
//   x0 - 0 if strings are equal, 1 if different
//--------------------------------------------------------------
string_compare:
    // Save registers
    stp x29, x30, [sp, #-16]!
    mov x29, sp
    
    // Initialize registers for comparison
    mov x2, x0  // First string
    mov x3, x1  // Second string
    
string_compare_loop:
    // Load a byte from each string
    ldrb w4, [x2], #1
    ldrb w5, [x3], #1
    
    // Check if bytes are different
    cmp w4, w5
    bne string_compare_diff
    
    // Check if we reached end of string (null terminator)
    cbz w4, string_compare_equal
    
    // Continue to next character
    b string_compare_loop
    
string_compare_diff:
    // Strings are different
    mov x0, #1
    b string_compare_exit
    
string_compare_equal:
    // Strings are equal
    mov x0, #0
    
string_compare_exit:
    // Restore registers and return
    ldp x29, x30, [sp], #16
    ret
"},
    };

    private readonly static Dictionary<string, string> Symbols = new Dictionary<string, string>
    {
        { "minus_sign", @"minus_sign: .ascii ""-""" },
        { "dot_char", @"dot_char: .ascii "".""" },
        { "zero_char", @"zero_char: .ascii ""0""" },
        { "space_char", @"space_char: .ascii "" """ },
        { "newline_char", @"newline_char: .ascii ""\n""" },
        { "true_str", @"true_str: .ascii ""true""" },
        { "false_str", @"false_str: .ascii ""false""" },
        { "type_int_str", @"type_int_str: .ascii ""int\0""" },
        { "type_float_str", @"type_float_str: .ascii ""float64\0""" },
        { "type_bool_str", @"type_bool_str: .ascii ""bool\0""" },
        { "type_string_str", @"type_string_str: .ascii ""string\0""" },
        { "type_rune_str", @"type_rune_str: .ascii ""rune\0""" },
        { "type_undefined_str", @"type_undefined_str: .ascii ""undefined\0""" }
    };
}