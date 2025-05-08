.data
heap: .space 4096
.text
.global _start
_start:
    adr x10, heap
    // --Variable Declaration--
    // --Integer value--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Print statement--
    // --String value: === Archivo de prueba básico ===--
    STR x10, [SP, #-8]!
    // StringArray[0] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 65
    MOV w0, #65
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 104
    MOV w0, #104
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 118
    MOV w0, #118
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 98
    MOV w0, #98
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 98
    MOV w0, #98
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 225
    MOV w0, #225
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 0
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
    // --String value: Validaciones manuales esperadas: 4--
    STR x10, [SP, #-8]!
    // StringArray[0] = 86
    MOV w0, #86
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 109
    MOV w0, #109
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 52
    MOV w0, #52
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 0
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
    // --String value: ==== Declaración de variables ====--
    STR x10, [SP, #-8]!
    // StringArray[0] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 68
    MOV w0, #68
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 118
    MOV w0, #118
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 98
    MOV w0, #98
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 0
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
    // --Variable Declaration--
    // --Integer value--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Print statement--
    // --String value: Declaración explícita con tipo y valor--
    STR x10, [SP, #-8]!
    // StringArray[0] = 68
    MOV w0, #68
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
    // StringArray[3] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 120
    MOV w0, #120
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 237
    MOV w0, #237
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 121
    MOV w0, #121
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 118
    MOV w0, #118
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[35] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[36] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[37] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[38] = 0
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
    // --Variable Declaration: entero int--
    // --Integer value--
    MOV x0, #42
    STR x0, [SP, #-8]!
    // --Store value in memory--
    // --Variable Declaration: decimal float64--
    MOVZ X0, #0x851F, LSL #0
    MOVK X0, #0x51EB, LSL #16
    MOVK X0, #0x1EB8, LSL #32
    MOVK X0, #0x4009, LSL #48
    STR x0, [SP, #-8]!
    // --Store value in memory--
    // --Variable Declaration: texto string--
    // --String value: Hola!--
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
    // StringArray[4] = 33
    MOV w0, #33
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 0
    MOV w0, #0
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // --Store value in memory--
    // --Variable Declaration: booleano bool--
    // --Constant true--
    MOV x0, #1
    STR x0, [SP, #-8]!
    // --Store value in memory--
    // --Variable Declaration: caracter rune--
    // --Rune value: 'A' (65)--
    MOV x0, #65
    STR x0, [SP, #-8]!
    // --Store value in memory--
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
    // --If statement--
    // --Evaluating condition--
    // --Logical AND--
    // --Logical AND--
    // --Logical AND--
    // --Logical AND--
    // --Equality--
    // --Load variable entero--
    MOV x0, #32
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #42
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
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
    CMP x0, #0
    BEQ L2
    // --Relational--
    // --Load variable decimal--
    MOV x0, #24
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x4008, LSL #48
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR d0, [SP], #8
    // --Pop Values L--
    LDR d1, [SP], #8
    // --Float relational comparison--
    FCMP d1, d0
    BGT L4
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L5
    L4:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L5:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L3
    L2:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L3:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L6
    // --Equality--
    // --Load variable texto--
    MOV x0, #16
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: Hola!--
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
    // StringArray[4] = 33
    MOV w0, #33
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
    BEQ L8
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L9
    L8:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L9:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L7
    L6:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L7:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L10
    // --Equality--
    // --Load variable booleano--
    MOV x0, #8
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Constant true--
    MOV x0, #1
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L12
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L13
    L12:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L13:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L11
    L10:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L11:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L14
    // --Equality--
    // --Load variable caracter--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Rune value: 'A' (65)--
    MOV x0, #65
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Rune equality comparison--
    CMP x1, x0
    BEQ L16
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L17
    L16:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L17:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L15
    L14:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L15:
    LDR x0, [SP], #8
    CBZ x0, L18
    // --Block Stmt--
    // --Assignment to puntosDeclaracion--
    // --Add/Subtract--
    // --Load variable puntosDeclaracion--
    MOV x0, #40
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
    LDR x0, [SP], #8
    MOV x1, #48
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Print statement--
    // --String value: OK Declaración explícita: correcto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 75
    MOV w0, #75
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 68
    MOV w0, #68
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 120
    MOV w0, #120
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 237
    MOV w0, #237
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 0
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
    // --Pop 8 bytes--
    MOV x0, #8
    ADD sp, sp, x0
    // Stack pointer updated
    B L19
    L18:
    // --Block Stmt--
    // --Print statement--
    // --String value: X Declaración explícita: incorrecto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 88
    MOV w0, #88
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 68
    MOV w0, #68
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 120
    MOV w0, #120
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 237
    MOV w0, #237
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[35] = 0
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
    L19:
    // --Print statement--
    // --String value: Declaración sin valor--
    STR x10, [SP, #-8]!
    // StringArray[0] = 68
    MOV w0, #68
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
    // StringArray[3] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 118
    MOV w0, #118
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 0
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
    // --Variable Declaration (default value): enteroSinValor int--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Variable Declaration (default value): decimalSinValor float64--
    MOV x0, #0
    SCVTF d0, x0
    STR d0, [SP, #-8]!
    // --Variable Declaration (default value): textoSinValor string--
    STR x10, [SP, #-8]!
    MOV w0, #0
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // --Variable Declaration (default value): booleanoSinValor bool--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Print statement--
    // --Load variable enteroSinValor--
    MOV x0, #24
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: enteroSinValor:--
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
    // StringArray[6] = 83
    MOV w0, #83
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 86
    MOV w0, #86
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 0
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
    // --Load variable decimalSinValor--
    MOV x0, #16
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: decimalSinValor:--
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
    // StringArray[7] = 83
    MOV w0, #83
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 86
    MOV w0, #86
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 0
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
    // --Load variable textoSinValor--
    MOV x0, #8
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: textoSinValor:--
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
    // StringArray[5] = 83
    MOV w0, #83
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 86
    MOV w0, #86
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 0
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
    // --Load variable booleanoSinValor--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: booleanoSinValor:--
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
    // StringArray[8] = 83
    MOV w0, #83
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 86
    MOV w0, #86
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 0
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
    // --If statement--
    // --Evaluating condition--
    // --Logical AND--
    // --Logical AND--
    // --Logical AND--
    // --Equality--
    // --Load variable enteroSinValor--
    MOV x0, #24
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L20
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L21
    L20:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L21:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L22
    // --Equality--
    // --Load variable decimalSinValor--
    MOV x0, #16
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x0000, LSL #48
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR d0, [SP], #8
    // --Pop Values L--
    LDR d1, [SP], #8
    // --Float equality comparison--
    FCMP d1, d0
    BEQ L24
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L25
    L24:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L25:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L23
    L22:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L23:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L26
    // --Equality--
    // --Load variable textoSinValor--
    MOV x0, #8
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: --
    STR x10, [SP, #-8]!
    // StringArray[0] = 0
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
    BEQ L28
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L29
    L28:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L29:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L27
    L26:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L27:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L30
    // --Equality--
    // --Load variable booleanoSinValor--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Constant false--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L32
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L33
    L32:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L33:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L31
    L30:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L31:
    LDR x0, [SP], #8
    CBZ x0, L34
    // --Block Stmt--
    // --Assignment to puntosDeclaracion--
    // --Add/Subtract--
    // --Load variable puntosDeclaracion--
    MOV x0, #72
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
    LDR x0, [SP], #8
    MOV x1, #80
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Print statement--
    // --String value: OK Declaración sin valor: correcto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 75
    MOV w0, #75
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 68
    MOV w0, #68
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 118
    MOV w0, #118
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 0
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
    // --Pop 8 bytes--
    MOV x0, #8
    ADD sp, sp, x0
    // Stack pointer updated
    B L35
    L34:
    // --Block Stmt--
    // --Print statement--
    // --String value: X Declaración sin valor: incorrecto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 88
    MOV w0, #88
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 68
    MOV w0, #68
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 105
    MOV w0, #105
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
    // StringArray[18] = 118
    MOV w0, #118
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[35] = 0
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
    L35:
    // --Print statement--
    // --String value: Declaración con inferencia de tipo--
    STR x10, [SP, #-8]!
    // StringArray[0] = 68
    MOV w0, #68
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
    // StringArray[3] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 102
    MOV w0, #102
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 0
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
    // --Variable Declaration--
    // --Integer value--
    MOV x0, #100
    STR x0, [SP, #-8]!
    // --Variable Declaration--
    MOVZ X0, #0x47AE, LSL #0
    MOVK X0, #0x7AE1, LSL #16
    MOVK X0, #0xAE14, LSL #32
    MOVK X0, #0x4005, LSL #48
    STR x0, [SP, #-8]!
    // --Variable Declaration--
    // --String value: Adios!--
    STR x10, [SP, #-8]!
    // StringArray[0] = 65
    MOV w0, #65
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 33
    MOV w0, #33
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 0
    MOV w0, #0
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // --Variable Declaration--
    // --Constant false--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Print statement--
    // --Load variable enteroInferido--
    MOV x0, #24
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: enteroInferido:--
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
    // StringArray[6] = 73
    MOV w0, #73
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 102
    MOV w0, #102
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 0
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
    // --Load variable decimalInferido--
    MOV x0, #16
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: decimalInferido:--
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
    // StringArray[7] = 73
    MOV w0, #73
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 102
    MOV w0, #102
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 0
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
    // --Load variable textoInferido--
    MOV x0, #8
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: textoInferido:--
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
    // StringArray[5] = 73
    MOV w0, #73
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 102
    MOV w0, #102
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 114
    MOV w0, #114
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
    // StringArray[12] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 0
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
    // --Load variable booleanoInferido--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: booleanoInferido:--
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
    // StringArray[8] = 73
    MOV w0, #73
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 102
    MOV w0, #102
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 0
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
    // --If statement--
    // --Evaluating condition--
    // --Logical AND--
    // --Logical AND--
    // --Logical AND--
    // --Equality--
    // --Load variable enteroInferido--
    MOV x0, #24
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #100
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L36
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L37
    L36:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L37:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L38
    // --Relational--
    // --Load variable decimalInferido--
    MOV x0, #16
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    MOVZ X0, #0x999A, LSL #0
    MOVK X0, #0x9999, LSL #16
    MOVK X0, #0x9999, LSL #32
    MOVK X0, #0x4005, LSL #48
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR d0, [SP], #8
    // --Pop Values L--
    LDR d1, [SP], #8
    // --Float relational comparison--
    FCMP d1, d0
    BGT L40
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L41
    L40:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L41:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L39
    L38:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L39:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L42
    // --Equality--
    // --Load variable textoInferido--
    MOV x0, #8
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: Adios!--
    STR x10, [SP, #-8]!
    // StringArray[0] = 65
    MOV w0, #65
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 33
    MOV w0, #33
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 0
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
    BEQ L44
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L45
    L44:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L45:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L43
    L42:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L43:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L46
    // --Equality--
    // --Load variable booleanoInferido--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Constant false--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L48
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L49
    L48:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L49:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L47
    L46:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L47:
    LDR x0, [SP], #8
    CBZ x0, L50
    // --Block Stmt--
    // --Assignment to puntosDeclaracion--
    // --Add/Subtract--
    // --Load variable puntosDeclaracion--
    MOV x0, #104
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
    LDR x0, [SP], #8
    MOV x1, #112
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Print statement--
    // --String value: OK Declaración con inferencia: correcto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 75
    MOV w0, #75
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 68
    MOV w0, #68
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 102
    MOV w0, #102
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[35] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[36] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[37] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[38] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[39] = 0
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
    // --Pop 8 bytes--
    MOV x0, #8
    ADD sp, sp, x0
    // Stack pointer updated
    B L51
    L50:
    // --Block Stmt--
    // --Print statement--
    // --String value: X Declaración con inferencia: incorrecto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 88
    MOV w0, #88
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 68
    MOV w0, #68
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 99
    MOV w0, #99
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
    // StringArray[18] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 102
    MOV w0, #102
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[35] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[36] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[37] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[38] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[39] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[40] = 0
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
    L51:
    // --Print statement--
    // --String value: \n==== Asignación de variables ====--
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
    // StringArray[2] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 65
    MOV w0, #65
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 103
    MOV w0, #103
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 110
    MOV w0, #110
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
    // StringArray[15] = 243
    MOV w0, #243
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
    // StringArray[18] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 118
    MOV w0, #118
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 98
    MOV w0, #98
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[35] = 0
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
    // --Variable Declaration--
    // --Integer value--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Print statement--
    // --String value: Asignación con tipo correcto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 65
    MOV w0, #65
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 103
    MOV w0, #103
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 0
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
    // --Assignment to entero--
    // --Integer value--
    MOV x0, #99
    STR x0, [SP, #-8]!
    LDR x0, [SP], #8
    MOV x1, #104
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Assignment to decimal--
    MOVZ X0, #0xCCCD, LSL #0
    MOVK X0, #0xCCCC, LSL #16
    MOVK X0, #0xCCCC, LSL #32
    MOVK X0, #0x4023, LSL #48
    STR x0, [SP, #-8]!
    LDR x0, [SP], #8
    MOV x1, #96
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Assignment to texto--
    // --String value: Nuevo--
    STR x10, [SP, #-8]!
    // StringArray[0] = 78
    MOV w0, #78
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 118
    MOV w0, #118
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
    LDR x0, [SP], #8
    MOV x1, #88
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Assignment to booleano--
    // --Load variable booleano--
    MOV x0, #80
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Logical negation--
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L52
    MOV x0, #0
    B L53
    L52:
    MOV x0, #1
    L53:
    STR x0, [SP, #-8]!
    LDR x0, [SP], #8
    MOV x1, #80
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
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
    MOV x0, #104
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
    MOV x0, #96
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
    MOV x0, #88
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
    MOV x0, #80
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
    // --If statement--
    // --Evaluating condition--
    // --Logical AND--
    // --Logical AND--
    // --Logical AND--
    // --Equality--
    // --Load variable entero--
    MOV x0, #104
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #99
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L54
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L55
    L54:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L55:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L56
    // --Equality--
    // --Load variable decimal--
    MOV x0, #96
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    MOVZ X0, #0xCCCD, LSL #0
    MOVK X0, #0xCCCC, LSL #16
    MOVK X0, #0xCCCC, LSL #32
    MOVK X0, #0x4023, LSL #48
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR d0, [SP], #8
    // --Pop Values L--
    LDR d1, [SP], #8
    // --Float equality comparison--
    FCMP d1, d0
    BEQ L58
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L59
    L58:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L59:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L57
    L56:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L57:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L60
    // --Equality--
    // --Load variable texto--
    MOV x0, #88
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: Nuevo--
    STR x10, [SP, #-8]!
    // StringArray[0] = 78
    MOV w0, #78
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 118
    MOV w0, #118
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
    // --String equality comparison using library function--
    BL string_compare
    CMP x0, #0
    BEQ L62
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L63
    L62:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L63:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L61
    L60:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L61:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L64
    // --Equality--
    // --Load variable booleano--
    MOV x0, #80
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Constant false--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L66
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L67
    L66:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L67:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L65
    L64:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L65:
    LDR x0, [SP], #8
    CBZ x0, L68
    // --Block Stmt--
    // --Assignment to puntosAsignacion--
    // --Add/Subtract--
    // --Load variable puntosAsignacion--
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
    LDR x0, [SP], #8
    MOV x1, #8
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Print statement--
    // --String value: OK Asignación simple: correcto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 75
    MOV w0, #75
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 65
    MOV w0, #65
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 115
    MOV w0, #115
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
    // StringArray[7] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 109
    MOV w0, #109
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 0
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
    // --Pop 8 bytes--
    MOV x0, #8
    ADD sp, sp, x0
    // Stack pointer updated
    B L69
    L68:
    // --Block Stmt--
    // --Print statement--
    // --String value: X Asignación simple: incorrecto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 88
    MOV w0, #88
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 65
    MOV w0, #65
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 103
    MOV w0, #103
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 109
    MOV w0, #109
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 0
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
    L69:
    // --Print statement--
    // --String value: Asignación con expresiones--
    STR x10, [SP, #-8]!
    // StringArray[0] = 65
    MOV w0, #65
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 103
    MOV w0, #103
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 120
    MOV w0, #120
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 0
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
    // --Assignment to entero--
    // --Add/Subtract--
    // --Load variable entero--
    MOV x0, #104
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
    LDR x0, [SP], #8
    MOV x1, #112
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Assignment to decimal--
    // --Multiply/Divide/Modulo--
    // --Load variable decimal--
    MOV x0, #104
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #2
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR d1, [SP], #8
    SCVTF d0, x0
    FMUL d0, d1, d0
    // --Push Result--
    STR d0, [SP, #-8]!
    LDR x0, [SP], #8
    MOV x1, #104
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Assignment to texto--
    // --String value: Nuevo!--
    STR x10, [SP, #-8]!
    // StringArray[0] = 78
    MOV w0, #78
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 118
    MOV w0, #118
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 33
    MOV w0, #33
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 0
    MOV w0, #0
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    LDR x0, [SP], #8
    MOV x1, #96
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Assignment to booleano--
    // --Load variable booleano--
    MOV x0, #88
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Logical negation--
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L70
    MOV x0, #0
    B L71
    L70:
    MOV x0, #1
    L71:
    STR x0, [SP, #-8]!
    LDR x0, [SP], #8
    MOV x1, #88
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Print statement--
    // --Load variable entero--
    MOV x0, #112
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
    MOV x0, #104
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
    MOV x0, #96
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
    MOV x0, #88
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
    // --If statement--
    // --Evaluating condition--
    // --Logical AND--
    // --Logical AND--
    // --Logical AND--
    // --Equality--
    // --Load variable entero--
    MOV x0, #112
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #100
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L72
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L73
    L72:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L73:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L74
    // --Equality--
    // --Load variable decimal--
    MOV x0, #104
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    MOVZ X0, #0xCCCD, LSL #0
    MOVK X0, #0xCCCC, LSL #16
    MOVK X0, #0xCCCC, LSL #32
    MOVK X0, #0x4033, LSL #48
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR d0, [SP], #8
    // --Pop Values L--
    LDR d1, [SP], #8
    // --Float equality comparison--
    FCMP d1, d0
    BEQ L76
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L77
    L76:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L77:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L75
    L74:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L75:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L78
    // --Equality--
    // --Load variable texto--
    MOV x0, #96
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: Nuevo!--
    STR x10, [SP, #-8]!
    // StringArray[0] = 78
    MOV w0, #78
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 118
    MOV w0, #118
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 33
    MOV w0, #33
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 0
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
    BEQ L80
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L81
    L80:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L81:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L79
    L78:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L79:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L82
    // --Equality--
    // --Load variable booleano--
    MOV x0, #88
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Constant true--
    MOV x0, #1
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L84
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L85
    L84:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L85:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L83
    L82:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L83:
    LDR x0, [SP], #8
    CBZ x0, L86
    // --Block Stmt--
    // --Assignment to puntosAsignacion--
    // --Add/Subtract--
    // --Load variable puntosAsignacion--
    MOV x0, #8
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
    LDR x0, [SP], #8
    MOV x1, #16
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Print statement--
    // --String value: OK Asignación con expresiones: correcto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 75
    MOV w0, #75
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 65
    MOV w0, #65
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 115
    MOV w0, #115
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
    // StringArray[7] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 99
    MOV w0, #99
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
    // StringArray[18] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 120
    MOV w0, #120
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[35] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[36] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[37] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[38] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[39] = 0
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
    // --Pop 8 bytes--
    MOV x0, #8
    ADD sp, sp, x0
    // Stack pointer updated
    B L87
    L86:
    // --Block Stmt--
    // --Print statement--
    // --String value: X Asignación con expresiones: incorrecto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 88
    MOV w0, #88
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 65
    MOV w0, #65
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 103
    MOV w0, #103
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 120
    MOV w0, #120
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[35] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[36] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[37] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[38] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[39] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[40] = 0
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
    L87:
    // --Print statement--
    // --String value: Asignación con tipo incorrecto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 65
    MOV w0, #65
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 103
    MOV w0, #103
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 0
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
    // --Assignment to puntosAsignacion--
    // --Add/Subtract--
    // --Load variable puntosAsignacion--
    MOV x0, #8
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
    LDR x0, [SP], #8
    MOV x1, #16
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Print statement--
    // --String value: OK Asignación con tipo incorrecto: correcto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 75
    MOV w0, #75
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 65
    MOV w0, #65
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 115
    MOV w0, #115
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
    // StringArray[7] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 99
    MOV w0, #99
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
    // StringArray[18] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[35] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[36] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[37] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[38] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[39] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[40] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[41] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[42] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[43] = 0
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
    // --String value: \n==== Operaciones Aritméticas ====--
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
    // StringArray[2] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 65
    MOV w0, #65
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 109
    MOV w0, #109
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 233
    MOV w0, #233
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[35] = 0
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
    // --Variable Declaration--
    // --Integer value--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Print statement--
    // --String value: Suma--
    STR x10, [SP, #-8]!
    // StringArray[0] = 83
    MOV w0, #83
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 109
    MOV w0, #109
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
    // --Print values--
    // --POP value 2 print--
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_string
    //print newline
    BL print_newline
    // --Variable Declaration--
    // --Add/Subtract--
    // --Integer value--
    MOV x0, #10
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #5
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    ADD x0, x0, x1
    // --Push Result--
    STR x0, [SP, #-8]!
    // --Variable Declaration--
    // --Add/Subtract--
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x4025, LSL #48
    STR x0, [SP, #-8]!
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x4016, LSL #48
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR d0, [SP], #8
    // --Pop Values L--
    LDR d1, [SP], #8
    FADD d0, d0, d1
    // --Push Result--
    STR d0, [SP, #-8]!
    // --Variable Declaration--
    // --Add/Subtract--
    // --Integer value--
    MOV x0, #10
    STR x0, [SP, #-8]!
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x4016, LSL #48
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR d0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    SCVTF d1, x1
    FADD d0, d0, d1
    // --Push Result--
    STR d0, [SP, #-8]!
    // --Variable Declaration--
    // --Add/Subtract--
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x4025, LSL #48
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #5
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR d1, [SP], #8
    SCVTF d0, x0
    FADD d0, d0, d1
    // --Push Result--
    STR d0, [SP, #-8]!
    // --Print statement--
    // --Load variable resultadoSuma1--
    MOV x0, #24
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: 10 + 5 =--
    STR x10, [SP, #-8]!
    // StringArray[0] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 43
    MOV w0, #43
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 61
    MOV w0, #61
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
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_integer
    //print newline
    BL print_newline
    // --Print statement--
    // --Load variable resultadoSuma2--
    MOV x0, #16
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: 10.5 + 5.5 =--
    STR x10, [SP, #-8]!
    // StringArray[0] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 46
    MOV w0, #46
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 43
    MOV w0, #43
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 46
    MOV w0, #46
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 0
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
    // --Load variable resultadoSuma3--
    MOV x0, #8
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: 10 + 5.5 =--
    STR x10, [SP, #-8]!
    // StringArray[0] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 43
    MOV w0, #43
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 46
    MOV w0, #46
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 61
    MOV w0, #61
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
    //print space
    BL print_space
    // --POP value 2 print--
    LDR d0, [SP], #8
    BL print_double
    //print newline
    BL print_newline
    // --Print statement--
    // --Load variable resultadoSuma4--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: 10.5 + 5 =--
    STR x10, [SP, #-8]!
    // StringArray[0] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 46
    MOV w0, #46
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 43
    MOV w0, #43
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 61
    MOV w0, #61
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
    //print space
    BL print_space
    // --POP value 2 print--
    LDR d0, [SP], #8
    BL print_double
    //print newline
    BL print_newline
    // --If statement--
    // --Evaluating condition--
    // --Logical AND--
    // --Logical AND--
    // --Logical AND--
    // --Equality--
    // --Load variable resultadoSuma1--
    MOV x0, #24
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #15
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L88
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L89
    L88:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L89:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L90
    // --Equality--
    // --Load variable resultadoSuma2--
    MOV x0, #16
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x4030, LSL #48
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR d0, [SP], #8
    // --Pop Values L--
    LDR d1, [SP], #8
    // --Float equality comparison--
    FCMP d1, d0
    BEQ L92
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L93
    L92:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L93:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L91
    L90:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L91:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L94
    // --Equality--
    // --Load variable resultadoSuma3--
    MOV x0, #8
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x402F, LSL #48
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR d0, [SP], #8
    // --Pop Values L--
    LDR d1, [SP], #8
    // --Float equality comparison--
    FCMP d1, d0
    BEQ L96
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L97
    L96:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L97:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L95
    L94:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L95:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L98
    // --Equality--
    // --Load variable resultadoSuma4--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x402F, LSL #48
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR d0, [SP], #8
    // --Pop Values L--
    LDR d1, [SP], #8
    // --Float equality comparison--
    FCMP d1, d0
    BEQ L100
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L101
    L100:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L101:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L99
    L98:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L99:
    LDR x0, [SP], #8
    CBZ x0, L102
    // --Block Stmt--
    // --Assignment to puntosOperacionesAritmeticas--
    // --Add/Subtract--
    // --Load variable puntosOperacionesAritmeticas--
    MOV x0, #40
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
    LDR x0, [SP], #8
    MOV x1, #48
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Print statement--
    // --String value: OK Suma: correcto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 75
    MOV w0, #75
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 83
    MOV w0, #83
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 109
    MOV w0, #109
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 0
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
    // --Pop 8 bytes--
    MOV x0, #8
    ADD sp, sp, x0
    // Stack pointer updated
    B L103
    L102:
    // --Block Stmt--
    // --Print statement--
    // --String value: X Suma: incorrecto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 88
    MOV w0, #88
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 83
    MOV w0, #83
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 117
    MOV w0, #117
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
    // StringArray[6] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 0
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
    L103:
    // --Print statement--
    // --String value: Multiplicación--
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
    // StringArray[2] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 0
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
    // --Variable Declaration--
    // --Multiply/Divide/Modulo--
    // --Integer value--
    MOV x0, #5
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #3
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    MUL x0, x1, x0
    // --Push Result--
    STR x0, [SP, #-8]!
    // --Variable Declaration--
    // --Multiply/Divide/Modulo--
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x4016, LSL #48
    STR x0, [SP, #-8]!
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x4000, LSL #48
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR d0, [SP], #8
    // --Pop Values L--
    LDR d1, [SP], #8
    FMUL d0, d1, d0
    // --Push Result--
    STR d0, [SP, #-8]!
    // --Variable Declaration--
    // --Multiply/Divide/Modulo--
    // --Integer value--
    MOV x0, #5
    STR x0, [SP, #-8]!
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x4004, LSL #48
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR d0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    SCVTF d1, x1
    FMUL d0, d1, d0
    // --Push Result--
    STR d0, [SP, #-8]!
    // --Variable Declaration--
    // --Multiply/Divide/Modulo--
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x4016, LSL #48
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #2
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR d1, [SP], #8
    SCVTF d0, x0
    FMUL d0, d1, d0
    // --Push Result--
    STR d0, [SP, #-8]!
    // --Print statement--
    // --Load variable resultadoMult1--
    MOV x0, #24
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: 5 * 3 =--
    STR x10, [SP, #-8]!
    // StringArray[0] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 42
    MOV w0, #42
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 51
    MOV w0, #51
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 61
    MOV w0, #61
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
    // --Load variable resultadoMult2--
    MOV x0, #16
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: 5.5 * 2.0 =--
    STR x10, [SP, #-8]!
    // StringArray[0] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 46
    MOV w0, #46
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 42
    MOV w0, #42
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 50
    MOV w0, #50
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 46
    MOV w0, #46
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 0
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
    // --Load variable resultadoMult3--
    MOV x0, #8
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: 5 * 2.5 =--
    STR x10, [SP, #-8]!
    // StringArray[0] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 42
    MOV w0, #42
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 50
    MOV w0, #50
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 46
    MOV w0, #46
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 61
    MOV w0, #61
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
    LDR d0, [SP], #8
    BL print_double
    //print newline
    BL print_newline
    // --Print statement--
    // --Load variable resultadoMult4--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: 5.5 * 2 =--
    STR x10, [SP, #-8]!
    // StringArray[0] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 46
    MOV w0, #46
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 42
    MOV w0, #42
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 50
    MOV w0, #50
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 61
    MOV w0, #61
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
    LDR d0, [SP], #8
    BL print_double
    //print newline
    BL print_newline
    // --If statement--
    // --Evaluating condition--
    // --Logical AND--
    // --Logical AND--
    // --Logical AND--
    // --Equality--
    // --Load variable resultadoMult1--
    MOV x0, #24
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #15
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L104
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L105
    L104:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L105:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L106
    // --Equality--
    // --Load variable resultadoMult2--
    MOV x0, #16
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x4026, LSL #48
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR d0, [SP], #8
    // --Pop Values L--
    LDR d1, [SP], #8
    // --Float equality comparison--
    FCMP d1, d0
    BEQ L108
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L109
    L108:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L109:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L107
    L106:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L107:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L110
    // --Equality--
    // --Load variable resultadoMult3--
    MOV x0, #8
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x4029, LSL #48
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR d0, [SP], #8
    // --Pop Values L--
    LDR d1, [SP], #8
    // --Float equality comparison--
    FCMP d1, d0
    BEQ L112
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L113
    L112:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L113:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L111
    L110:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L111:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L114
    // --Equality--
    // --Load variable resultadoMult4--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x4026, LSL #48
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR d0, [SP], #8
    // --Pop Values L--
    LDR d1, [SP], #8
    // --Float equality comparison--
    FCMP d1, d0
    BEQ L116
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L117
    L116:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L117:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L115
    L114:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L115:
    LDR x0, [SP], #8
    CBZ x0, L118
    // --Block Stmt--
    // --Assignment to puntosOperacionesAritmeticas--
    // --Add/Subtract--
    // --Load variable puntosOperacionesAritmeticas--
    MOV x0, #72
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
    LDR x0, [SP], #8
    MOV x1, #80
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Print statement--
    // --String value: OK Multiplicación: correcto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 75
    MOV w0, #75
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 77
    MOV w0, #77
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 112
    MOV w0, #112
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
    // StringArray[11] = 99
    MOV w0, #99
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
    // StringArray[15] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 0
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
    // --Pop 8 bytes--
    MOV x0, #8
    ADD sp, sp, x0
    // Stack pointer updated
    B L119
    L118:
    // --Block Stmt--
    // --Print statement--
    // --String value: X Multiplicación: incorrecto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 88
    MOV w0, #88
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 77
    MOV w0, #77
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 0
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
    L119:
    // --Print statement--
    // --String value: División--
    STR x10, [SP, #-8]!
    // StringArray[0] = 68
    MOV w0, #68
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 118
    MOV w0, #118
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 110
    MOV w0, #110
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
    //print newline
    BL print_newline
    // --Variable Declaration--
    // --Multiply/Divide/Modulo--
    // --Integer value--
    MOV x0, #10
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #2
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    CMP x0, #0
    BEQ L120
    SDIV x0, x1, x0
    B L121
    L120:
    // --Division by zero error--
    MOV x0, #0
    L121:
    // --Push Result--
    STR x0, [SP, #-8]!
    // --Variable Declaration--
    // --Multiply/Divide/Modulo--
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x4024, LSL #48
    STR x0, [SP, #-8]!
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x4010, LSL #48
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR d0, [SP], #8
    // --Pop Values L--
    LDR d1, [SP], #8
    FDIV d0, d1, d0
    // --Push Result--
    STR d0, [SP, #-8]!
    // --Variable Declaration--
    // --Multiply/Divide/Modulo--
    // --Integer value--
    MOV x0, #10
    STR x0, [SP, #-8]!
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x4010, LSL #48
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR d0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    SCVTF d1, x1
    FDIV d0, d1, d0
    // --Push Result--
    STR d0, [SP, #-8]!
    // --Variable Declaration--
    // --Multiply/Divide/Modulo--
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x4024, LSL #48
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #4
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR d1, [SP], #8
    SCVTF d0, x0
    FDIV d0, d1, d0
    // --Push Result--
    STR d0, [SP, #-8]!
    // --Print statement--
    // --Load variable resultadoDiv1--
    MOV x0, #24
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: 10 / 2 =--
    STR x10, [SP, #-8]!
    // StringArray[0] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 47
    MOV w0, #47
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 50
    MOV w0, #50
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 61
    MOV w0, #61
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
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_integer
    //print newline
    BL print_newline
    // --Print statement--
    // --Load variable resultadoDiv2--
    MOV x0, #16
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: 10.0 / 4.0 =--
    STR x10, [SP, #-8]!
    // StringArray[0] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 46
    MOV w0, #46
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 47
    MOV w0, #47
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 52
    MOV w0, #52
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 46
    MOV w0, #46
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 0
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
    // --Load variable resultadoDiv3--
    MOV x0, #8
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: 10 / 4.0 =--
    STR x10, [SP, #-8]!
    // StringArray[0] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 47
    MOV w0, #47
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 52
    MOV w0, #52
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 46
    MOV w0, #46
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 61
    MOV w0, #61
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
    //print space
    BL print_space
    // --POP value 2 print--
    LDR d0, [SP], #8
    BL print_double
    //print newline
    BL print_newline
    // --Print statement--
    // --Load variable resultadoDiv4--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: 10.0 / 4 =--
    STR x10, [SP, #-8]!
    // StringArray[0] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 46
    MOV w0, #46
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 47
    MOV w0, #47
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 52
    MOV w0, #52
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 61
    MOV w0, #61
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
    //print space
    BL print_space
    // --POP value 2 print--
    LDR d0, [SP], #8
    BL print_double
    //print newline
    BL print_newline
    // --If statement--
    // --Evaluating condition--
    // --Logical AND--
    // --Logical AND--
    // --Logical AND--
    // --Equality--
    // --Load variable resultadoDiv1--
    MOV x0, #24
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #5
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L122
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L123
    L122:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L123:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L124
    // --Equality--
    // --Load variable resultadoDiv2--
    MOV x0, #16
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x4004, LSL #48
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR d0, [SP], #8
    // --Pop Values L--
    LDR d1, [SP], #8
    // --Float equality comparison--
    FCMP d1, d0
    BEQ L126
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L127
    L126:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L127:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L125
    L124:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L125:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L128
    // --Equality--
    // --Load variable resultadoDiv3--
    MOV x0, #8
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x4004, LSL #48
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR d0, [SP], #8
    // --Pop Values L--
    LDR d1, [SP], #8
    // --Float equality comparison--
    FCMP d1, d0
    BEQ L130
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L131
    L130:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L131:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L129
    L128:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L129:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L132
    // --Equality--
    // --Load variable resultadoDiv4--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x4004, LSL #48
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR d0, [SP], #8
    // --Pop Values L--
    LDR d1, [SP], #8
    // --Float equality comparison--
    FCMP d1, d0
    BEQ L134
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L135
    L134:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L135:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L133
    L132:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L133:
    LDR x0, [SP], #8
    CBZ x0, L136
    // --Block Stmt--
    // --Assignment to puntosOperacionesAritmeticas--
    // --Add/Subtract--
    // --Load variable puntosOperacionesAritmeticas--
    MOV x0, #104
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
    LDR x0, [SP], #8
    MOV x1, #112
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Print statement--
    // --String value: OK División: correcto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 75
    MOV w0, #75
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 68
    MOV w0, #68
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 118
    MOV w0, #118
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 0
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
    // --Pop 8 bytes--
    MOV x0, #8
    ADD sp, sp, x0
    // Stack pointer updated
    B L137
    L136:
    // --Block Stmt--
    // --Print statement--
    // --String value: X División: incorrecto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 88
    MOV w0, #88
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 68
    MOV w0, #68
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 118
    MOV w0, #118
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 0
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
    L137:
    // --Print statement--
    // --String value: \n==== Operaciones Relacionales ====--
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
    // StringArray[2] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 82
    MOV w0, #82
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[35] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[36] = 0
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
    // --Variable Declaration--
    // --Integer value--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Print statement--
    // --String value: Igualdad--
    STR x10, [SP, #-8]!
    // StringArray[0] = 73
    MOV w0, #73
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 103
    MOV w0, #103
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 100
    MOV w0, #100
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
    //print newline
    BL print_newline
    // --Variable Declaration--
    // --Equality--
    // --Integer value--
    MOV x0, #10
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #10
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L138
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L139
    L138:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L139:
    // --Variable Declaration--
    // --Equality--
    // --Integer value--
    MOV x0, #10
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #5
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L140
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L141
    L140:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L141:
    // --Variable Declaration--
    // --Equality--
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x4025, LSL #48
    STR x0, [SP, #-8]!
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x4025, LSL #48
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR d0, [SP], #8
    // --Pop Values L--
    LDR d1, [SP], #8
    // --Float equality comparison--
    FCMP d1, d0
    BEQ L142
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L143
    L142:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L143:
    // --Variable Declaration--
    // --Equality--
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x4025, LSL #48
    STR x0, [SP, #-8]!
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x4016, LSL #48
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR d0, [SP], #8
    // --Pop Values L--
    LDR d1, [SP], #8
    // --Float equality comparison--
    FCMP d1, d0
    BEQ L144
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L145
    L144:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L145:
    // --Variable Declaration--
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
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --String equality comparison using library function--
    BL string_compare
    CMP x0, #0
    BEQ L146
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L147
    L146:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L147:
    // --Variable Declaration--
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
    // --String equality comparison using library function--
    BL string_compare
    CMP x0, #0
    BEQ L148
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L149
    L148:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L149:
    // --Print statement--
    // --Load variable resultadoIgualdad1--
    MOV x0, #40
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: 10 == 10:--
    STR x10, [SP, #-8]!
    // StringArray[0] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 48
    MOV w0, #48
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
    // --Load variable resultadoIgualdad2--
    MOV x0, #32
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: 10 == 5:--
    STR x10, [SP, #-8]!
    // StringArray[0] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 53
    MOV w0, #53
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
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_boolean
    //print newline
    BL print_newline
    // --Print statement--
    // --Load variable resultadoIgualdad3--
    MOV x0, #24
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: 10.5 == 10.5:--
    STR x10, [SP, #-8]!
    // StringArray[0] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 46
    MOV w0, #46
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 46
    MOV w0, #46
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 0
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
    // --Load variable resultadoIgualdad4--
    MOV x0, #16
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: 10.5 == 5.5:--
    STR x10, [SP, #-8]!
    // StringArray[0] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 46
    MOV w0, #46
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 46
    MOV w0, #46
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 0
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
    // --Load variable resultadoIgualdad5--
    MOV x0, #8
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: \"Hola\" == \"Hola\":--
    STR x10, [SP, #-8]!
    // StringArray[0] = 92
    MOV w0, #92
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 34
    MOV w0, #34
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 72
    MOV w0, #72
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 92
    MOV w0, #92
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 34
    MOV w0, #34
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 92
    MOV w0, #92
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 34
    MOV w0, #34
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 72
    MOV w0, #72
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 92
    MOV w0, #92
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 34
    MOV w0, #34
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 0
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
    // --Load variable resultadoIgualdad6--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: \"Hola\" == \"Mundo\":--
    STR x10, [SP, #-8]!
    // StringArray[0] = 92
    MOV w0, #92
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 34
    MOV w0, #34
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 72
    MOV w0, #72
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 92
    MOV w0, #92
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 34
    MOV w0, #34
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 92
    MOV w0, #92
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 34
    MOV w0, #34
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 77
    MOV w0, #77
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 92
    MOV w0, #92
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 34
    MOV w0, #34
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 0
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
    // --If statement--
    // --Evaluating condition--
    // --Logical AND--
    // --Logical AND--
    // --Logical AND--
    // --Logical AND--
    // --Logical AND--
    // --Equality--
    // --Load variable resultadoIgualdad1--
    MOV x0, #40
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Constant true--
    MOV x0, #1
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L150
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L151
    L150:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L151:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L152
    // --Equality--
    // --Load variable resultadoIgualdad2--
    MOV x0, #32
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Constant false--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L154
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L155
    L154:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L155:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L153
    L152:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L153:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L156
    // --Equality--
    // --Load variable resultadoIgualdad3--
    MOV x0, #24
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Constant true--
    MOV x0, #1
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L158
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L159
    L158:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L159:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L157
    L156:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L157:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L160
    // --Equality--
    // --Load variable resultadoIgualdad4--
    MOV x0, #16
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Constant false--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L162
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L163
    L162:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L163:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L161
    L160:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L161:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L164
    // --Equality--
    // --Load variable resultadoIgualdad5--
    MOV x0, #8
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Constant true--
    MOV x0, #1
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L166
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L167
    L166:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L167:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L165
    L164:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L165:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L168
    // --Equality--
    // --Load variable resultadoIgualdad6--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Constant false--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L170
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L171
    L170:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L171:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L169
    L168:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L169:
    LDR x0, [SP], #8
    CBZ x0, L172
    // --Block Stmt--
    // --Assignment to puntosOperacionesRelacionales--
    // --Add/Subtract--
    // --Load variable puntosOperacionesRelacionales--
    MOV x0, #48
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
    LDR x0, [SP], #8
    MOV x1, #56
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Print statement--
    // --String value: OK Igualdad: correcto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 75
    MOV w0, #75
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 73
    MOV w0, #73
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 103
    MOV w0, #103
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 0
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
    // --Pop 8 bytes--
    MOV x0, #8
    ADD sp, sp, x0
    // Stack pointer updated
    B L173
    L172:
    // --Block Stmt--
    // --Print statement--
    // --String value: X Igualdad: incorrecto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 88
    MOV w0, #88
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 73
    MOV w0, #73
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 103
    MOV w0, #103
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 117
    MOV w0, #117
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
    // StringArray[7] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 0
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
    L173:
    // --Print statement--
    // --String value: Mayor/Menor--
    STR x10, [SP, #-8]!
    // StringArray[0] = 77
    MOV w0, #77
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 121
    MOV w0, #121
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 47
    MOV w0, #47
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 77
    MOV w0, #77
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 0
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
    // --Variable Declaration--
    // --Relational--
    // --Integer value--
    MOV x0, #10
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #5
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer relational comparison--
    CMP x1, x0
    BGT L174
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L175
    L174:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L175:
    // --Variable Declaration--
    // --Relational--
    // --Integer value--
    MOV x0, #10
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #5
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer relational comparison--
    CMP x1, x0
    BLT L176
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L177
    L176:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L177:
    // --Variable Declaration--
    // --Relational--
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x4025, LSL #48
    STR x0, [SP, #-8]!
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x4016, LSL #48
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR d0, [SP], #8
    // --Pop Values L--
    LDR d1, [SP], #8
    // --Float relational comparison--
    FCMP d1, d0
    BGT L178
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L179
    L178:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L179:
    // --Variable Declaration--
    // --Relational--
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x4025, LSL #48
    STR x0, [SP, #-8]!
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x4016, LSL #48
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR d0, [SP], #8
    // --Pop Values L--
    LDR d1, [SP], #8
    // --Float relational comparison--
    FCMP d1, d0
    BLT L180
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L181
    L180:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L181:
    // --Print statement--
    // --Load variable resultadoComp1--
    MOV x0, #24
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: 10 > 5:--
    STR x10, [SP, #-8]!
    // StringArray[0] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 62
    MOV w0, #62
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 53
    MOV w0, #53
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
    BL print_boolean
    //print newline
    BL print_newline
    // --Print statement--
    // --Load variable resultadoComp2--
    MOV x0, #16
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: 10 < 5:--
    STR x10, [SP, #-8]!
    // StringArray[0] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 60
    MOV w0, #60
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 53
    MOV w0, #53
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
    BL print_boolean
    //print newline
    BL print_newline
    // --Print statement--
    // --Load variable resultadoComp3--
    MOV x0, #8
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: 10.5 > 5.5:--
    STR x10, [SP, #-8]!
    // StringArray[0] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 46
    MOV w0, #46
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 62
    MOV w0, #62
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 46
    MOV w0, #46
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 0
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
    // --Load variable resultadoComp4--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: 10.5 < 5.5:--
    STR x10, [SP, #-8]!
    // StringArray[0] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 46
    MOV w0, #46
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 60
    MOV w0, #60
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 46
    MOV w0, #46
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 0
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
    // --If statement--
    // --Evaluating condition--
    // --Logical AND--
    // --Logical AND--
    // --Logical AND--
    // --Equality--
    // --Load variable resultadoComp1--
    MOV x0, #24
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Constant true--
    MOV x0, #1
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L182
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L183
    L182:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L183:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L184
    // --Equality--
    // --Load variable resultadoComp2--
    MOV x0, #16
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Constant false--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L186
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L187
    L186:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L187:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L185
    L184:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L185:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L188
    // --Equality--
    // --Load variable resultadoComp3--
    MOV x0, #8
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Constant true--
    MOV x0, #1
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L190
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L191
    L190:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L191:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L189
    L188:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L189:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L192
    // --Equality--
    // --Load variable resultadoComp4--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Constant false--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L194
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L195
    L194:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L195:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L193
    L192:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L193:
    LDR x0, [SP], #8
    CBZ x0, L196
    // --Block Stmt--
    // --Assignment to puntosOperacionesRelacionales--
    // --Add/Subtract--
    // --Load variable puntosOperacionesRelacionales--
    MOV x0, #80
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
    LDR x0, [SP], #8
    MOV x1, #88
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Print statement--
    // --String value: OK Mayor/Menor: correcto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 75
    MOV w0, #75
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 77
    MOV w0, #77
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 121
    MOV w0, #121
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 47
    MOV w0, #47
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 77
    MOV w0, #77
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 111
    MOV w0, #111
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
    // --Pop 8 bytes--
    MOV x0, #8
    ADD sp, sp, x0
    // Stack pointer updated
    B L197
    L196:
    // --Block Stmt--
    // --Print statement--
    // --String value: X Mayor/Menor: incorrecto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 88
    MOV w0, #88
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 77
    MOV w0, #77
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 121
    MOV w0, #121
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 47
    MOV w0, #47
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 77
    MOV w0, #77
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 0
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
    L197:
    // --Print statement--
    // --String value: Mayor o igual/Menor o igual--
    STR x10, [SP, #-8]!
    // StringArray[0] = 77
    MOV w0, #77
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 121
    MOV w0, #121
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 103
    MOV w0, #103
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 47
    MOV w0, #47
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 77
    MOV w0, #77
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 103
    MOV w0, #103
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 0
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
    // --Variable Declaration--
    // --Relational--
    // --Integer value--
    MOV x0, #10
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #10
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer relational comparison--
    CMP x1, x0
    BGE L198
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L199
    L198:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L199:
    // --Variable Declaration--
    // --Relational--
    // --Integer value--
    MOV x0, #10
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #5
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer relational comparison--
    CMP x1, x0
    BLE L200
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L201
    L200:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L201:
    // --Variable Declaration--
    // --Relational--
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x4025, LSL #48
    STR x0, [SP, #-8]!
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x4016, LSL #48
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR d0, [SP], #8
    // --Pop Values L--
    LDR d1, [SP], #8
    // --Float relational comparison--
    FCMP d1, d0
    BGE L202
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L203
    L202:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L203:
    // --Variable Declaration--
    // --Relational--
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x4025, LSL #48
    STR x0, [SP, #-8]!
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x4025, LSL #48
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR d0, [SP], #8
    // --Pop Values L--
    LDR d1, [SP], #8
    // --Float relational comparison--
    FCMP d1, d0
    BLE L204
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L205
    L204:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L205:
    // --Print statement--
    // --Load variable resultadoComp5--
    MOV x0, #24
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: 10 >= 10:--
    STR x10, [SP, #-8]!
    // StringArray[0] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 62
    MOV w0, #62
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 48
    MOV w0, #48
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
    // --Load variable resultadoComp6--
    MOV x0, #16
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: 10 <= 5:--
    STR x10, [SP, #-8]!
    // StringArray[0] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 60
    MOV w0, #60
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 53
    MOV w0, #53
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
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_boolean
    //print newline
    BL print_newline
    // --Print statement--
    // --Load variable resultadoComp7--
    MOV x0, #8
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: 10.5 >= 5.5:--
    STR x10, [SP, #-8]!
    // StringArray[0] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 46
    MOV w0, #46
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 62
    MOV w0, #62
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 46
    MOV w0, #46
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 0
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
    // --Load variable resultadoComp8--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: 10.5 <= 10.5:--
    STR x10, [SP, #-8]!
    // StringArray[0] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 46
    MOV w0, #46
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 60
    MOV w0, #60
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 46
    MOV w0, #46
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 0
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
    // --If statement--
    // --Evaluating condition--
    // --Logical AND--
    // --Logical AND--
    // --Logical AND--
    // --Equality--
    // --Load variable resultadoComp5--
    MOV x0, #24
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Constant true--
    MOV x0, #1
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L206
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L207
    L206:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L207:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L208
    // --Equality--
    // --Load variable resultadoComp6--
    MOV x0, #16
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Constant false--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L210
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L211
    L210:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L211:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L209
    L208:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L209:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L212
    // --Equality--
    // --Load variable resultadoComp7--
    MOV x0, #8
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Constant true--
    MOV x0, #1
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L214
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L215
    L214:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L215:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L213
    L212:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L213:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L216
    // --Equality--
    // --Load variable resultadoComp8--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Constant true--
    MOV x0, #1
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L218
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L219
    L218:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L219:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L217
    L216:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L217:
    LDR x0, [SP], #8
    CBZ x0, L220
    // --Block Stmt--
    // --Assignment to puntosOperacionesRelacionales--
    // --Add/Subtract--
    // --Load variable puntosOperacionesRelacionales--
    MOV x0, #112
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
    LDR x0, [SP], #8
    MOV x1, #120
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Print statement--
    // --String value: OK Mayor o igual/Menor o igual: correcto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 75
    MOV w0, #75
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 77
    MOV w0, #77
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 121
    MOV w0, #121
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 103
    MOV w0, #103
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 47
    MOV w0, #47
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 77
    MOV w0, #77
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 103
    MOV w0, #103
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[35] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[36] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[37] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[38] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[39] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[40] = 0
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
    // --Pop 8 bytes--
    MOV x0, #8
    ADD sp, sp, x0
    // Stack pointer updated
    B L221
    L220:
    // --Block Stmt--
    // --Print statement--
    // --String value: X Mayor o igual/Menor o igual: incorrecto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 88
    MOV w0, #88
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 77
    MOV w0, #77
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 121
    MOV w0, #121
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 103
    MOV w0, #103
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 47
    MOV w0, #47
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 77
    MOV w0, #77
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 103
    MOV w0, #103
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[35] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[36] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[37] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[38] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[39] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[40] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[41] = 0
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
    L221:
    // --Print statement--
    // --String value: \n==== Operaciones Lógicas ====--
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
    // StringArray[2] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 76
    MOV w0, #76
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 103
    MOV w0, #103
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 0
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
    // --Variable Declaration--
    // --Integer value--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Print statement--
    // --String value: AND--
    STR x10, [SP, #-8]!
    // StringArray[0] = 65
    MOV w0, #65
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 78
    MOV w0, #78
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 68
    MOV w0, #68
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 0
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
    // --Variable Declaration--
    // --Logical AND--
    // --Constant true--
    MOV x0, #1
    STR x0, [SP, #-8]!
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L222
    // --Constant true--
    MOV x0, #1
    STR x0, [SP, #-8]!
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L223
    L222:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L223:
    // --Variable Declaration--
    // --Logical AND--
    // --Constant true--
    MOV x0, #1
    STR x0, [SP, #-8]!
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L224
    // --Constant false--
    MOV x0, #0
    STR x0, [SP, #-8]!
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L225
    L224:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L225:
    // --Variable Declaration--
    // --Logical AND--
    // --Equality--
    // --Integer value--
    MOV x0, #10
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #10
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L226
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L227
    L226:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L227:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L228
    // --Equality--
    // --Integer value--
    MOV x0, #5
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #5
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L230
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L231
    L230:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L231:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L229
    L228:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L229:
    // --Variable Declaration--
    // --Logical AND--
    // --Equality--
    // --Integer value--
    MOV x0, #10
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #10
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L232
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L233
    L232:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L233:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L234
    // --Equality--
    // --Integer value--
    MOV x0, #5
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #6
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L236
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L237
    L236:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L237:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L235
    L234:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L235:
    // --Print statement--
    // --Load variable resultadoAnd1--
    MOV x0, #24
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: true && true:--
    STR x10, [SP, #-8]!
    // StringArray[0] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 38
    MOV w0, #38
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 38
    MOV w0, #38
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 0
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
    // --Load variable resultadoAnd2--
    MOV x0, #16
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: true && false:--
    STR x10, [SP, #-8]!
    // StringArray[0] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 38
    MOV w0, #38
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 38
    MOV w0, #38
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 102
    MOV w0, #102
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 0
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
    // --Load variable resultadoAnd3--
    MOV x0, #8
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: (10 == 10) && (5 == 5):--
    STR x10, [SP, #-8]!
    // StringArray[0] = 40
    MOV w0, #40
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 41
    MOV w0, #41
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 38
    MOV w0, #38
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 38
    MOV w0, #38
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 40
    MOV w0, #40
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 41
    MOV w0, #41
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 0
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
    // --Load variable resultadoAnd4--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: (10 == 10) && (5 == 6):--
    STR x10, [SP, #-8]!
    // StringArray[0] = 40
    MOV w0, #40
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 41
    MOV w0, #41
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 38
    MOV w0, #38
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 38
    MOV w0, #38
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 40
    MOV w0, #40
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 54
    MOV w0, #54
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 41
    MOV w0, #41
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 0
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
    // --If statement--
    // --Evaluating condition--
    // --Logical AND--
    // --Logical AND--
    // --Logical AND--
    // --Equality--
    // --Load variable resultadoAnd1--
    MOV x0, #24
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Constant true--
    MOV x0, #1
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L238
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L239
    L238:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L239:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L240
    // --Equality--
    // --Load variable resultadoAnd2--
    MOV x0, #16
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Constant false--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L242
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L243
    L242:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L243:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L241
    L240:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L241:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L244
    // --Equality--
    // --Load variable resultadoAnd3--
    MOV x0, #8
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Constant true--
    MOV x0, #1
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L246
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L247
    L246:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L247:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L245
    L244:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L245:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L248
    // --Equality--
    // --Load variable resultadoAnd4--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Constant false--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L250
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L251
    L250:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L251:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L249
    L248:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L249:
    LDR x0, [SP], #8
    CBZ x0, L252
    // --Block Stmt--
    // --Assignment to puntosOperacionesLogicas--
    // --Add/Subtract--
    // --Load variable puntosOperacionesLogicas--
    MOV x0, #32
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
    LDR x0, [SP], #8
    MOV x1, #40
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Print statement--
    // --String value: OK AND: correcto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 75
    MOV w0, #75
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 65
    MOV w0, #65
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 78
    MOV w0, #78
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 68
    MOV w0, #68
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 0
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
    // --Pop 8 bytes--
    MOV x0, #8
    ADD sp, sp, x0
    // Stack pointer updated
    B L253
    L252:
    // --Block Stmt--
    // --Print statement--
    // --String value: X AND: incorrecto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 88
    MOV w0, #88
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 65
    MOV w0, #65
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 78
    MOV w0, #78
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 68
    MOV w0, #68
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 0
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
    L253:
    // --Print statement--
    // --String value: OR--
    STR x10, [SP, #-8]!
    // StringArray[0] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 82
    MOV w0, #82
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 0
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
    // --Variable Declaration--
    // --Logical OR--
    // --Constant true--
    MOV x0, #1
    STR x0, [SP, #-8]!
    LDR x0, [SP], #8
    CMP x0, #1
    BEQ L254
    // --Constant false--
    MOV x0, #0
    STR x0, [SP, #-8]!
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L255
    L254:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L255:
    // --Variable Declaration--
    // --Logical OR--
    // --Constant false--
    MOV x0, #0
    STR x0, [SP, #-8]!
    LDR x0, [SP], #8
    CMP x0, #1
    BEQ L256
    // --Constant false--
    MOV x0, #0
    STR x0, [SP, #-8]!
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L257
    L256:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L257:
    // --Variable Declaration--
    // --Logical OR--
    // --Equality--
    // --Integer value--
    MOV x0, #10
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #10
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L258
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L259
    L258:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L259:
    LDR x0, [SP], #8
    CMP x0, #1
    BEQ L260
    // --Equality--
    // --Integer value--
    MOV x0, #5
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #6
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L262
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L263
    L262:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L263:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L261
    L260:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L261:
    // --Variable Declaration--
    // --Logical OR--
    // --Equality--
    // --Integer value--
    MOV x0, #10
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #11
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L264
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L265
    L264:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L265:
    LDR x0, [SP], #8
    CMP x0, #1
    BEQ L266
    // --Equality--
    // --Integer value--
    MOV x0, #5
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #6
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L268
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L269
    L268:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L269:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L267
    L266:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L267:
    // --Print statement--
    // --Load variable resultadoOr1--
    MOV x0, #24
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: true || false:--
    STR x10, [SP, #-8]!
    // StringArray[0] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 102
    MOV w0, #102
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 0
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
    // --Load variable resultadoOr2--
    MOV x0, #16
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: false || false:--
    STR x10, [SP, #-8]!
    // StringArray[0] = 102
    MOV w0, #102
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 97
    MOV w0, #97
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
    // StringArray[4] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 102
    MOV w0, #102
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 0
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
    // --Load variable resultadoOr3--
    MOV x0, #8
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: (10 == 10) || (5 == 6):--
    STR x10, [SP, #-8]!
    // StringArray[0] = 40
    MOV w0, #40
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 41
    MOV w0, #41
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 40
    MOV w0, #40
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 54
    MOV w0, #54
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 41
    MOV w0, #41
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 0
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
    // --Load variable resultadoOr4--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: (10 == 11) || (5 == 6):--
    STR x10, [SP, #-8]!
    // StringArray[0] = 40
    MOV w0, #40
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 41
    MOV w0, #41
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 40
    MOV w0, #40
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 53
    MOV w0, #53
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 54
    MOV w0, #54
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 41
    MOV w0, #41
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 0
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
    // --If statement--
    // --Evaluating condition--
    // --Logical AND--
    // --Logical AND--
    // --Logical AND--
    // --Equality--
    // --Load variable resultadoOr1--
    MOV x0, #24
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Constant true--
    MOV x0, #1
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L270
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L271
    L270:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L271:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L272
    // --Equality--
    // --Load variable resultadoOr2--
    MOV x0, #16
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Constant false--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L274
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L275
    L274:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L275:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L273
    L272:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L273:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L276
    // --Equality--
    // --Load variable resultadoOr3--
    MOV x0, #8
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Constant true--
    MOV x0, #1
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L278
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L279
    L278:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L279:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L277
    L276:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L277:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L280
    // --Equality--
    // --Load variable resultadoOr4--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Constant false--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L282
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L283
    L282:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L283:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L281
    L280:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L281:
    LDR x0, [SP], #8
    CBZ x0, L284
    // --Block Stmt--
    // --Assignment to puntosOperacionesLogicas--
    // --Add/Subtract--
    // --Load variable puntosOperacionesLogicas--
    MOV x0, #64
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
    LDR x0, [SP], #8
    MOV x1, #72
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Print statement--
    // --String value: OK OR: correcto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 75
    MOV w0, #75
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 82
    MOV w0, #82
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 0
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
    // --Pop 8 bytes--
    MOV x0, #8
    ADD sp, sp, x0
    // Stack pointer updated
    B L285
    L284:
    // --Block Stmt--
    // --Print statement--
    // --String value: X OR: incorrecto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 88
    MOV w0, #88
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 82
    MOV w0, #82
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 0
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
    L285:
    // --Print statement--
    // --String value: NOT--
    STR x10, [SP, #-8]!
    // StringArray[0] = 78
    MOV w0, #78
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 84
    MOV w0, #84
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 0
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
    // --Variable Declaration--
    // --Constant true--
    MOV x0, #1
    STR x0, [SP, #-8]!
    // --Logical negation--
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L286
    MOV x0, #0
    B L287
    L286:
    MOV x0, #1
    L287:
    STR x0, [SP, #-8]!
    // --Variable Declaration--
    // --Constant false--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Logical negation--
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L288
    MOV x0, #0
    B L289
    L288:
    MOV x0, #1
    L289:
    STR x0, [SP, #-8]!
    // --Variable Declaration--
    // --Equality--
    // --Integer value--
    MOV x0, #10
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #10
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L290
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L291
    L290:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L291:
    // --Logical negation--
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L292
    MOV x0, #0
    B L293
    L292:
    MOV x0, #1
    L293:
    STR x0, [SP, #-8]!
    // --Variable Declaration--
    // --Equality--
    // --Integer value--
    MOV x0, #10
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #11
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L294
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L295
    L294:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L295:
    // --Logical negation--
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L296
    MOV x0, #0
    B L297
    L296:
    MOV x0, #1
    L297:
    STR x0, [SP, #-8]!
    // --Print statement--
    // --Load variable resultadoNot1--
    MOV x0, #24
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: !true:--
    STR x10, [SP, #-8]!
    // StringArray[0] = 33
    MOV w0, #33
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 101
    MOV w0, #101
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
    BL print_boolean
    //print newline
    BL print_newline
    // --Print statement--
    // --Load variable resultadoNot2--
    MOV x0, #16
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: !false:--
    STR x10, [SP, #-8]!
    // StringArray[0] = 33
    MOV w0, #33
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 102
    MOV w0, #102
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 101
    MOV w0, #101
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
    BL print_boolean
    //print newline
    BL print_newline
    // --Print statement--
    // --Load variable resultadoNot3--
    MOV x0, #8
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: !(10 == 10):--
    STR x10, [SP, #-8]!
    // StringArray[0] = 33
    MOV w0, #33
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 40
    MOV w0, #40
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 41
    MOV w0, #41
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 0
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
    // --Load variable resultadoNot4--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: !(10 == 11):--
    STR x10, [SP, #-8]!
    // StringArray[0] = 33
    MOV w0, #33
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 40
    MOV w0, #40
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 49
    MOV w0, #49
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 41
    MOV w0, #41
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 0
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
    // --If statement--
    // --Evaluating condition--
    // --Logical AND--
    // --Logical AND--
    // --Logical AND--
    // --Equality--
    // --Load variable resultadoNot1--
    MOV x0, #24
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Constant false--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L298
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L299
    L298:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L299:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L300
    // --Equality--
    // --Load variable resultadoNot2--
    MOV x0, #16
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Constant true--
    MOV x0, #1
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L302
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L303
    L302:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L303:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L301
    L300:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L301:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L304
    // --Equality--
    // --Load variable resultadoNot3--
    MOV x0, #8
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Constant false--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L306
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L307
    L306:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L307:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L305
    L304:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L305:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L308
    // --Equality--
    // --Load variable resultadoNot4--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Constant true--
    MOV x0, #1
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L310
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L311
    L310:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L311:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L309
    L308:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L309:
    LDR x0, [SP], #8
    CBZ x0, L312
    // --Block Stmt--
    // --Assignment to puntosOperacionesLogicas--
    // --Add/Subtract--
    // --Load variable puntosOperacionesLogicas--
    MOV x0, #96
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
    LDR x0, [SP], #8
    MOV x1, #104
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Print statement--
    // --String value: OK NOT: correcto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 75
    MOV w0, #75
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 78
    MOV w0, #78
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 84
    MOV w0, #84
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 0
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
    // --Pop 8 bytes--
    MOV x0, #8
    ADD sp, sp, x0
    // Stack pointer updated
    B L313
    L312:
    // --Block Stmt--
    // --Print statement--
    // --String value: X NOT: incorrecto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 88
    MOV w0, #88
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 78
    MOV w0, #78
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 84
    MOV w0, #84
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 0
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
    L313:
    // --Print statement--
    // --String value: \n==== fmt.Println ====--
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
    // StringArray[2] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 102
    MOV w0, #102
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 109
    MOV w0, #109
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 46
    MOV w0, #46
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 80
    MOV w0, #80
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 0
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
    // --Variable Declaration--
    // --Integer value--
    MOV x0, #0
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
    // --String value: Impresión de valores simples--
    STR x10, [SP, #-8]!
    // StringArray[0] = 73
    MOV w0, #73
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 109
    MOV w0, #109
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 118
    MOV w0, #118
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 109
    MOV w0, #109
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 0
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
    // --Integer value--
    MOV x0, #42
    STR x0, [SP, #-8]!
    // --Print values--
    // --POP value 2 print--
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_integer
    //print newline
    BL print_newline
    // --Print statement--
    MOVZ X0, #0x851F, LSL #0
    MOVK X0, #0x51EB, LSL #16
    MOVK X0, #0x1EB8, LSL #32
    MOVK X0, #0x4009, LSL #48
    STR x0, [SP, #-8]!
    // --Print values--
    // --POP value 2 print--
    LDR d0, [SP], #8
    BL print_double
    //print newline
    BL print_newline
    // --Print statement--
    // --String value: Texto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 84
    MOV w0, #84
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
    // StringArray[5] = 0
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
    // --Constant true--
    MOV x0, #1
    STR x0, [SP, #-8]!
    // --Print values--
    // --POP value 2 print--
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_boolean
    //print newline
    BL print_newline
    // --Print statement--
    // --Rune value: 'A' (65)--
    MOV x0, #65
    STR x0, [SP, #-8]!
    // --Print values--
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
    // --Assignment to puntosPrintln--
    // --Add/Subtract--
    // --Load variable puntosPrintln--
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
    LDR x0, [SP], #8
    MOV x1, #8
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Print statement--
    // --String value: OK Impresión de valores simples: correcto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 75
    MOV w0, #75
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 73
    MOV w0, #73
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 109
    MOV w0, #109
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 118
    MOV w0, #118
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 109
    MOV w0, #109
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[35] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[36] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[37] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[38] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[39] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[40] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[41] = 0
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
    // --String value: Impresión de múltiples valores--
    STR x10, [SP, #-8]!
    // StringArray[0] = 73
    MOV w0, #73
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 109
    MOV w0, #109
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 109
    MOV w0, #109
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 250
    MOV w0, #250
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 118
    MOV w0, #118
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 0
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
    MOVZ X0, #0x851F, LSL #0
    MOVK X0, #0x51EB, LSL #16
    MOVK X0, #0x1EB8, LSL #32
    MOVK X0, #0x4009, LSL #48
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #42
    STR x0, [SP, #-8]!
    // --String value: Números:--
    STR x10, [SP, #-8]!
    // StringArray[0] = 78
    MOV w0, #78
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 250
    MOV w0, #250
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 109
    MOV w0, #109
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
    // StringArray[6] = 115
    MOV w0, #115
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
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_integer
    //print space
    BL print_space
    // --POP value 2 print--
    LDR d0, [SP], #8
    BL print_double
    //print newline
    BL print_newline
    // --Print statement--
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
    // --String value: Texto:--
    STR x10, [SP, #-8]!
    // StringArray[0] = 84
    MOV w0, #84
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
    // --Constant true--
    MOV x0, #1
    STR x0, [SP, #-8]!
    // --String value: Booleano:--
    STR x10, [SP, #-8]!
    // StringArray[0] = 66
    MOV w0, #66
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
    //print space
    BL print_space
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
    // --Assignment to puntosPrintln--
    // --Add/Subtract--
    // --Load variable puntosPrintln--
    MOV x0, #8
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
    LDR x0, [SP], #8
    MOV x1, #16
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Print statement--
    // --String value: OK Impresión de múltiples valores: correcto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 75
    MOV w0, #75
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 73
    MOV w0, #73
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 109
    MOV w0, #109
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 109
    MOV w0, #109
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 250
    MOV w0, #250
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 118
    MOV w0, #118
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[35] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[36] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[37] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[38] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[39] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[40] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[41] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[42] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[43] = 0
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
    // --String value: Impresión de expresiones--
    STR x10, [SP, #-8]!
    // StringArray[0] = 73
    MOV w0, #73
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 109
    MOV w0, #109
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 120
    MOV w0, #120
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 115
    MOV w0, #115
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
    // --Add/Subtract--
    // --Integer value--
    MOV x0, #10
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #5
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    ADD x0, x0, x1
    // --Push Result--
    STR x0, [SP, #-8]!
    // --String value: Suma:--
    STR x10, [SP, #-8]!
    // StringArray[0] = 83
    MOV w0, #83
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 109
    MOV w0, #109
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 0
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
    // --Relational--
    // --Integer value--
    MOV x0, #10
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #5
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer relational comparison--
    CMP x1, x0
    BGT L314
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L315
    L314:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L315:
    // --String value: Comparación:--
    STR x10, [SP, #-8]!
    // StringArray[0] = 67
    MOV w0, #67
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 109
    MOV w0, #109
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 0
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
    // --Logical AND--
    // --Constant true--
    MOV x0, #1
    STR x0, [SP, #-8]!
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L316
    // --Constant false--
    MOV x0, #0
    STR x0, [SP, #-8]!
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L317
    L316:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L317:
    // --String value: Lógica:--
    STR x10, [SP, #-8]!
    // StringArray[0] = 76
    MOV w0, #76
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 103
    MOV w0, #103
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 97
    MOV w0, #97
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
    BL print_boolean
    //print newline
    BL print_newline
    // --Assignment to puntosPrintln--
    // --Add/Subtract--
    // --Load variable puntosPrintln--
    MOV x0, #24
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
    LDR x0, [SP], #8
    MOV x1, #32
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Print statement--
    // --String value: OK Impresión de expresiones: correcto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 75
    MOV w0, #75
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 73
    MOV w0, #73
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 109
    MOV w0, #109
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 120
    MOV w0, #120
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[35] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[36] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[37] = 0
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
    // --String value: \n==== Manejo de valor nulo ====--
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
    // StringArray[2] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 77
    MOV w0, #77
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 106
    MOV w0, #106
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 118
    MOV w0, #118
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 0
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
    // --Variable Declaration--
    // --Integer value--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Print statement--
    // --String value: Valores por defecto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 86
    MOV w0, #86
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 102
    MOV w0, #102
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 0
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
    // --Variable Declaration (default value): enteroNulo int--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Variable Declaration (default value): decimalNulo float64--
    MOV x0, #0
    SCVTF d0, x0
    STR d0, [SP, #-8]!
    // --Variable Declaration (default value): textoNulo string--
    STR x10, [SP, #-8]!
    MOV w0, #0
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // --Variable Declaration (default value): booleanoNulo bool--
    MOV x0, #0
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
    // --Load variable enteroNulo--
    MOV x0, #24
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: enteroNulo:--
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
    // StringArray[6] = 78
    MOV w0, #78
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 0
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
    // --Load variable decimalNulo--
    MOV x0, #16
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: decimalNulo:--
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
    // StringArray[7] = 78
    MOV w0, #78
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 0
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
    // --Load variable textoNulo--
    MOV x0, #8
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: textoNulo:--
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
    // StringArray[5] = 78
    MOV w0, #78
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 58
    MOV w0, #58
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
    //print space
    BL print_space
    // --POP value 2 print--
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_string
    //print newline
    BL print_newline
    // --Print statement--
    // --Load variable booleanoNulo--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: booleanoNulo:--
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
    // StringArray[8] = 78
    MOV w0, #78
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 0
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
    // --If statement--
    // --Evaluating condition--
    // --Logical AND--
    // --Logical AND--
    // --Logical AND--
    // --Equality--
    // --Load variable enteroNulo--
    MOV x0, #24
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L318
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L319
    L318:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L319:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L320
    // --Equality--
    // --Load variable decimalNulo--
    MOV x0, #16
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    MOVZ X0, #0x0000, LSL #0
    MOVK X0, #0x0000, LSL #16
    MOVK X0, #0x0000, LSL #32
    MOVK X0, #0x0000, LSL #48
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR d0, [SP], #8
    // --Pop Values L--
    LDR d1, [SP], #8
    // --Float equality comparison--
    FCMP d1, d0
    BEQ L322
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L323
    L322:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L323:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L321
    L320:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L321:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L324
    // --Equality--
    // --Load variable textoNulo--
    MOV x0, #8
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: --
    STR x10, [SP, #-8]!
    // StringArray[0] = 0
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
    BEQ L326
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L327
    L326:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L327:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L325
    L324:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L325:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L328
    // --Equality--
    // --Load variable booleanoNulo--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Constant false--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L330
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L331
    L330:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L331:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L329
    L328:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L329:
    LDR x0, [SP], #8
    CBZ x0, L332
    // --Block Stmt--
    // --Assignment to puntosValorNulo--
    // --Add/Subtract--
    // --Load variable puntosValorNulo--
    MOV x0, #32
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
    LDR x0, [SP], #8
    MOV x1, #40
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Print statement--
    // --String value: OK Valores por defecto: correcto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 75
    MOV w0, #75
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 86
    MOV w0, #86
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 102
    MOV w0, #102
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 0
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
    // --Pop 8 bytes--
    MOV x0, #8
    ADD sp, sp, x0
    // Stack pointer updated
    B L333
    L332:
    // --Block Stmt--
    // --Print statement--
    // --String value: X Valores por defecto: incorrecto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 88
    MOV w0, #88
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 86
    MOV w0, #86
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 102
    MOV w0, #102
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 0
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
    L333:
    // --Print statement--
    // --String value: Operaciones con nil--
    STR x10, [SP, #-8]!
    // StringArray[0] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 0
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
    // --Assignment to puntosValorNulo--
    // --Add/Subtract--
    // --Load variable puntosValorNulo--
    MOV x0, #32
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
    LDR x0, [SP], #8
    MOV x1, #40
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Print statement--
    // --String value: OK Operaciones con nil: correcto--
    STR x10, [SP, #-8]!
    // StringArray[0] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 75
    MOV w0, #75
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 0
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
    // --Assignment to puntos--
    // --Add/Subtract--
    // --Add/Subtract--
    // --Add/Subtract--
    // --Add/Subtract--
    // --Add/Subtract--
    // --Add/Subtract--
    // --Load variable puntosDeclaracion--
    MOV x0, #552
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Load variable puntosAsignacion--
    MOV x0, #448
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    ADD x0, x0, x1
    // --Push Result--
    STR x0, [SP, #-8]!
    // --Load variable puntosOperacionesAritmeticas--
    MOV x0, #432
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    ADD x0, x0, x1
    // --Push Result--
    STR x0, [SP, #-8]!
    // --Load variable puntosOperacionesRelacionales--
    MOV x0, #328
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    ADD x0, x0, x1
    // --Push Result--
    STR x0, [SP, #-8]!
    // --Load variable puntosOperacionesLogicas--
    MOV x0, #216
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    ADD x0, x0, x1
    // --Push Result--
    STR x0, [SP, #-8]!
    // --Load variable puntosPrintln--
    MOV x0, #120
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    ADD x0, x0, x1
    // --Push Result--
    STR x0, [SP, #-8]!
    // --Load variable puntosValorNulo--
    MOV x0, #88
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    ADD x0, x0, x1
    // --Push Result--
    STR x0, [SP, #-8]!
    LDR x0, [SP], #8
    MOV x1, #608
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Print statement--
    // --String value: \n=== Tabla de Resultados ===--
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
    // StringArray[2] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 84
    MOV w0, #84
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 98
    MOV w0, #98
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 82
    MOV w0, #82
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 0
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
    // --String value: +--------------------------+--------+-------+--
    STR x10, [SP, #-8]!
    // StringArray[0] = 43
    MOV w0, #43
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 43
    MOV w0, #43
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[35] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[36] = 43
    MOV w0, #43
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[37] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[38] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[39] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[40] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[41] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[42] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[43] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[44] = 43
    MOV w0, #43
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[45] = 0
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
    // --String value: | Característica           | Puntos | Total |--
    STR x10, [SP, #-8]!
    // StringArray[0] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 67
    MOV w0, #67
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 237
    MOV w0, #237
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 80
    MOV w0, #80
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[35] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[36] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[37] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[38] = 84
    MOV w0, #84
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[39] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[40] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[41] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[42] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[43] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[44] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[45] = 0
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
    // --String value: +--------------------------+--------+-------+--
    STR x10, [SP, #-8]!
    // StringArray[0] = 43
    MOV w0, #43
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 43
    MOV w0, #43
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[35] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[36] = 43
    MOV w0, #43
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[37] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[38] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[39] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[40] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[41] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[42] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[43] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[44] = 43
    MOV w0, #43
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[45] = 0
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
    // --String value:     | 3     |--
    STR x10, [SP, #-8]!
    // StringArray[0] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 51
    MOV w0, #51
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 0
    MOV w0, #0
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // --Load variable puntosDeclaracion--
    MOV x0, #608
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: | Declaración de variables | --
    STR x10, [SP, #-8]!
    // StringArray[0] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 68
    MOV w0, #68
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 118
    MOV w0, #118
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 98
    MOV w0, #98
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 0
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
    //print space
    BL print_space
    // --POP value 2 print--
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_string
    //print newline
    BL print_newline
    // --Print statement--
    // --String value:     | 3     |--
    STR x10, [SP, #-8]!
    // StringArray[0] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 51
    MOV w0, #51
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 0
    MOV w0, #0
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // --Load variable puntosAsignacion--
    MOV x0, #496
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: | Asignación de variables  | --
    STR x10, [SP, #-8]!
    // StringArray[0] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 65
    MOV w0, #65
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 103
    MOV w0, #103
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 118
    MOV w0, #118
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 98
    MOV w0, #98
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 0
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
    //print space
    BL print_space
    // --POP value 2 print--
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_string
    //print newline
    BL print_newline
    // --Print statement--
    // --String value:     | 3     |--
    STR x10, [SP, #-8]!
    // StringArray[0] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 51
    MOV w0, #51
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 0
    MOV w0, #0
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // --Load variable puntosOperacionesAritmeticas--
    MOV x0, #472
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: | Operaciones Aritméticas  | --
    STR x10, [SP, #-8]!
    // StringArray[0] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 65
    MOV w0, #65
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 109
    MOV w0, #109
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 233
    MOV w0, #233
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 0
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
    //print space
    BL print_space
    // --POP value 2 print--
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_string
    //print newline
    BL print_newline
    // --Print statement--
    // --String value:     | 3     |--
    STR x10, [SP, #-8]!
    // StringArray[0] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 51
    MOV w0, #51
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 0
    MOV w0, #0
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // --Load variable puntosOperacionesRelacionales--
    MOV x0, #360
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: | Operaciones Relacionales | --
    STR x10, [SP, #-8]!
    // StringArray[0] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 82
    MOV w0, #82
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 110
    MOV w0, #110
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
    // StringArray[24] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 0
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
    //print space
    BL print_space
    // --POP value 2 print--
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_string
    //print newline
    BL print_newline
    // --Print statement--
    // --String value:     | 3     |--
    STR x10, [SP, #-8]!
    // StringArray[0] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 51
    MOV w0, #51
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 0
    MOV w0, #0
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // --Load variable puntosOperacionesLogicas--
    MOV x0, #240
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: | Operaciones Lógicas      | --
    STR x10, [SP, #-8]!
    // StringArray[0] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 76
    MOV w0, #76
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 103
    MOV w0, #103
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 0
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
    //print space
    BL print_space
    // --POP value 2 print--
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_string
    //print newline
    BL print_newline
    // --Print statement--
    // --String value:     | 3     |--
    STR x10, [SP, #-8]!
    // StringArray[0] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 51
    MOV w0, #51
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 0
    MOV w0, #0
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // --Load variable puntosPrintln--
    MOV x0, #136
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: | fmt.Println              | --
    STR x10, [SP, #-8]!
    // StringArray[0] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 102
    MOV w0, #102
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 109
    MOV w0, #109
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 46
    MOV w0, #46
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 80
    MOV w0, #80
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 0
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
    //print space
    BL print_space
    // --POP value 2 print--
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_string
    //print newline
    BL print_newline
    // --Print statement--
    // --String value:     | 2     |--
    STR x10, [SP, #-8]!
    // StringArray[0] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 50
    MOV w0, #50
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 0
    MOV w0, #0
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // --Load variable puntosValorNulo--
    MOV x0, #96
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: | Manejo de valor nulo     | --
    STR x10, [SP, #-8]!
    // StringArray[0] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 77
    MOV w0, #77
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 106
    MOV w0, #106
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 118
    MOV w0, #118
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 0
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
    //print space
    BL print_space
    // --POP value 2 print--
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_string
    //print newline
    BL print_newline
    // --Print statement--
    // --String value: +--------------------------+--------+-------+--
    STR x10, [SP, #-8]!
    // StringArray[0] = 43
    MOV w0, #43
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 43
    MOV w0, #43
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[35] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[36] = 43
    MOV w0, #43
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[37] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[38] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[39] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[40] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[41] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[42] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[43] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[44] = 43
    MOV w0, #43
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[45] = 0
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
    // --String value:    | 20    |--
    STR x10, [SP, #-8]!
    // StringArray[0] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 50
    MOV w0, #50
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 48
    MOV w0, #48
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 0
    MOV w0, #0
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // --Load variable puntos--
    MOV x0, #616
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: | TOTAL                    | --
    STR x10, [SP, #-8]!
    // StringArray[0] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 84
    MOV w0, #84
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 84
    MOV w0, #84
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 65
    MOV w0, #65
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 76
    MOV w0, #76
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 124
    MOV w0, #124
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 0
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
    //print space
    BL print_space
    // --POP value 2 print--
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_string
    //print newline
    BL print_newline
    // --Print statement--
    // --String value: +--------------------------+--------+-------+--
    STR x10, [SP, #-8]!
    // StringArray[0] = 43
    MOV w0, #43
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 43
    MOV w0, #43
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[35] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[36] = 43
    MOV w0, #43
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[37] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[38] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[39] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[40] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[41] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[42] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[43] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[44] = 43
    MOV w0, #43
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[45] = 0
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

newline_char: .ascii "\n"
space_char: .ascii " "
minus_sign: .ascii "-"
dot_char: .ascii "."
zero_char: .ascii "0"
true_str: .ascii "true"
false_str: .ascii "false"
