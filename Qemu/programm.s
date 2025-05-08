.data
heap: .space 4096
.text
.global _start
_start:
    adr x10, heap
    // --Print statement--
    // --Equality--
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
    // --String value: Holsa--
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
    // StringArray[3] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 97
    MOV w0, #97
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
    // --String equality comparison using library function--
    BL string_compare
    CMP x0, #0
    BEQ L0
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L1
    L0:
    MOV x0, #1
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
