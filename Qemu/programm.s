.data
heap: .space 4096
.text
.global _start
_start:
    adr x10, heap
    // --Print statement--
    // --Logical AND--
    // --Constant false--
    MOV x0, #0
    STR x0, [SP, #-8]!
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L0
    // --Constant true--
    MOV x0, #1
    STR x0, [SP, #-8]!
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L1
    L0:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L1:
    // --Print values--
    // --POP value 2 print--
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_boolean
    //print newline
    BL print_newline
    MOV x0, #0
    MOV x8, #93
    SVC #0



// Standard library functions

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
    
true_str: .ascii "true"
false_str: .ascii "false"
newline_char: .ascii "\n"
