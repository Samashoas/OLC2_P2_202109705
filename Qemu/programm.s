.data
heap: .space 4096
.text
.global _start
_start:
    adr x10, heap
    // --Variable Declaration: a int--
    // --Atoi function--
    // --String value: 123--
    STR x10, [SP, #-8]!
    // StringArray[0] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 50
    MOV w0, #50
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 51
    MOV w0, #51
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 0
    MOV w0, #0
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    LDR x0, [SP], #8
    // --Call string to integer function--
    BL str_to_int
    STR x0, [SP, #-8]!
    // --Store value in memory--
    // --Print statement--
    // --Add/Subtract--
    // --Load variable a--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #1
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    ADD x0, x0, x1
    // --Push Result--
    STR x0, [SP, #-8]!
    // --Print values--
    // --POP value 2 print--
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_integer
    //print newline
    BL print_newline
    MOV x0, #0
    MOV x8, #93
    SVC #0



// Standard library functions

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
    
minus_sign: .ascii "-"
newline_char: .ascii "\n"
