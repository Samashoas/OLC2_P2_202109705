.data
heap: .space 4096
.text
.global _start
_start:
    adr x10, heap
    // --Print statement--
    // --Add/Subtract--
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
    // --String value: Mundo--
    STR x10, [SP, #-8]!
    // StringArray[0] = 77
    MOV w0, #77
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 0
    MOV w0, #0
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --String Concatenation--
    STR x0, [SP, #-8]!
    STR x1, [SP, #-8]!
    LDR x0, [SP], #8
    LDR x1, [SP], #8
    BL concat_string
    STR x0, [SP, #-8]!
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
// concat_string - Concatenates two strings and returns a new string
//
// Input:
//   x0 - Address of the first string
//   x1 - Address of the second string
// Output:
//   x0 - Address of the concatenated string (in heap)
//--------------------------------------------------------------
concat_string:
    // Save registers
    stp x29, x30, [sp, #-16]!  // Save frame pointer and link register
    stp x19, x20, [sp, #-16]!  // Save callee-saved registers
    stp x21, x22, [sp, #-16]!  // Save more callee-saved registers
    
    // Save string addresses
    mov x19, x0                // First string
    mov x20, x1                // Second string
    mov x21, x10               // Current heap pointer
    
    // Copy first string to heap
    mov x22, #0                // Initialize counter
copy_first:
    ldrb w0, [x19, x22]        // Load byte from first string
    cbz w0, copy_second_init   // If null terminator, start copying second string
    strb w0, [x10]             // Store byte in heap
    add x10, x10, #1           // Increment heap pointer
    add x22, x22, #1           // Increment counter
    b copy_first               // Continue copying
    
copy_second_init:
    mov x22, #0                // Reset counter for second string
copy_second:
    ldrb w0, [x20, x22]        // Load byte from second string
    strb w0, [x10]             // Store byte in heap (including null terminator)
    cbz w0, concat_done        // If null terminator, we're done
    add x10, x10, #1           // Increment heap pointer
    add x22, x22, #1           // Increment counter
    b copy_second              // Continue copying
    
concat_done:
    add x10, x10, #1           // Move heap pointer past null terminator
    mov x0, x21                // Return pointer to the new string
    
    // Restore registers
    ldp x21, x22, [sp], #16    // Restore callee-saved registers
    ldp x19, x20, [sp], #16    // Restore callee-saved registers
    ldp x29, x30, [sp], #16    // Restore frame pointer and link register
    ret


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
