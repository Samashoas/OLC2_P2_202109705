.data
heap: .space 4096
.text
.global _start
_start:
    adr x10, heap
    // --If statement--
    // --Evaluating condition--
    // --Equality--
    // --Integer value--
    MOV x0, #2
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #2
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    CMP x1, x0
    BEQ L0
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L1
    L0:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L1:
    LDR x0, [SP], #8
    CBZ x0, L2
    // --Block Stmt--
    // --Print statement--
    // --String value: Hola igual--
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
    // StringArray[4] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 103
    MOV w0, #103
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 117
    MOV w0, #117
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
    // StringArray[10] = 0
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
    L2:
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
    
newline_char: .ascii "\n"
