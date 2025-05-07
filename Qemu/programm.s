.data
heap: .space 4096
.text
.global _start
_start:
    adr x10, heap
    // --Variable Declaration (default value): entero int--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Variable Declaration (default value): decimal float64--
    MOV x0, #0
    SCVTF d0, x0
    STR d0, [SP, #-8]!
    // --Variable Declaration (default value): texto string--
    STR x10, [SP, #-8]!
    MOV w0, #0
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // --Variable Declaration (default value): booleano bool--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Variable Declaration (default value): caracter rune--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Variable Declaration--
    // --Integer value--
    MOV x0, #2
    STR x0, [SP, #-8]!
    // --Variable Declaration--
    MOVZ X0, #0x999A, LSL #0
    MOVK X0, #0x9999, LSL #16
    MOVK X0, #0x9999, LSL #32
    MOVK X0, #0x4001, LSL #48
    STR x0, [SP, #-8]!
    // --Variable Declaration--
    // --String value: Hola--
    STR x10, [SP, #-8]!
    // StringArray[0] = 72
    MOV w0, #72
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 0
    MOV w0, #0
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // --Variable Declaration--
    // --Constant true--
    MOV x0, #1
    STR x0, [SP, #-8]!
    // --Variable Declaration--
    // --Rune value: 'A' (65)--
    MOV x0, #65
    STR x0, [SP, #-8]!
    // --Print statement--
    // --String value: \n\n###Validacion Manual--
    STR x10, [SP, #-8]!
    // StringArray[0] = 92
    MOV w0, #92
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 92
    MOV w0, #92
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 35
    MOV w0, #35
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 35
    MOV w0, #35
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 35
    MOV w0, #35
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 86
    MOV w0, #86
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 77
    MOV w0, #77
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 0
    MOV w0, #0
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // --Print values--
    // --POP value 2 print--
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_string
    //print newline
    BL print_newline
    // --Print statement--
    // --Load variable entero--
    MOV x0, #32
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: entero:--
    STR x10, [SP, #-8]!
    // StringArray[0] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 0
    MOV w0, #0
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // --Print values--
    // --POP value 2 print--
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_string
    //print space
    BL print_space
    // --POP value 2 print--
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_integer
    //print newline
    BL print_newline
    // --Print statement--
    // --Load variable decimal--
    MOV x0, #24
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: decimal:--
    STR x10, [SP, #-8]!
    // StringArray[0] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 109
    MOV w0, #109
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 0
    MOV w0, #0
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // --Print values--
    // --POP value 2 print--
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_string
    //print space
    BL print_space
    // --POP value 2 print--
    LDR d0, [SP], #8
    BL print_double
    //print newline
    BL print_newline
    // --Print statement--
    // --Load variable texto--
    MOV x0, #16
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: texto:--
    STR x10, [SP, #-8]!
    // StringArray[0] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 120
    MOV w0, #120
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 0
    MOV w0, #0
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // --Print values--
    // --POP value 2 print--
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_string
    //print space
    BL print_space
    // --POP value 2 print--
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_string
    //print newline
    BL print_newline
    // --Print statement--
    // --Load variable booleano--
    MOV x0, #8
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: booleano:--
    STR x10, [SP, #-8]!
    // StringArray[0] = 98
    MOV w0, #98
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 0
    MOV w0, #0
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // --Print values--
    // --POP value 2 print--
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_string
    //print space
    BL print_space
    // --POP value 2 print--
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_boolean
    //print newline
    BL print_newline
    // --Print statement--
    // --Load variable caracter--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: caracter:--
    STR x10, [SP, #-8]!
    // StringArray[0] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 0
    MOV w0, #0
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // --Print values--
    // --POP value 2 print--
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_string
    //print space
    BL print_space
    // --POP value 2 print--
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_char
    //print newline
    BL print_newline
    // --Print statement--
    // --String value: --
    STR x10, [SP, #-8]!
    // StringArray[0] = 0
    MOV w0, #0
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // --Print values--
    // --POP value 2 print--
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_string
    //print newline
    BL print_newline
    MOV x0, #0
    MOV x8, #93
    SVC #0



// Standard library functions

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
    ret

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

newline_char: .ascii "\n"
space_char: .ascii " "
minus_sign: .ascii "-"
dot_char: .ascii "."
zero_char: .ascii "0"
true_str: .ascii "true"
false_str: .ascii "false"
