.data
heap: .space 4096
.text
.global _start
_start:
    adr x10, heap
    // --Print statement--
    // --Rune value: 'b' (98)--
    MOV x0, #98
    STR x0, [SP, #-8]!
    // --Rune value: 'a' (97)--
    MOV x0, #97
    STR x0, [SP, #-8]!
    // --Print values--
    // --POP value 2 print--
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_char
    //print space
    BL print_space
    // --POP value 2 print--
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_char
    //print newline
    BL print_newline
    MOV x0, #0
    MOV x8, #93
    SVC #0



// Standard library functions

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
    
space_char: .ascii " "
newline_char: .ascii "\n"
