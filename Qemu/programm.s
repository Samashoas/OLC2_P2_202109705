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
    // --String value: === Archivo de prueba de funcionalidades intermedias ===--
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
    // StringArray[22] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 102
    MOV w0, #102
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[35] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[36] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[37] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[38] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[39] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[40] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[41] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[42] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[43] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[44] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[45] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[46] = 109
    MOV w0, #109
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[47] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[48] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[49] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[50] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[51] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[52] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[53] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[54] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[55] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[56] = 0
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
    // --String value: ==== Manejo de entornos ====--
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
    // StringArray[5] = 77
    MOV w0, #77
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 106
    MOV w0, #106
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
    // StringArray[19] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 111
    MOV w0, #111
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
    // StringArray[24] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 61
    MOV w0, #61
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
    // --Variable Declaration--
    // --Integer value--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Print statement--
    // --String value: \nVariable redeclarada en un entorno diferente--
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
    // StringArray[4] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 98
    MOV w0, #98
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 32
    MOV w0, #32
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
    // StringArray[15] = 99
    MOV w0, #99
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
    // StringArray[18] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 32
    MOV w0, #32
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
    // StringArray[25] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 110
    MOV w0, #110
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
    // StringArray[33] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[35] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[36] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[37] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[38] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[39] = 102
    MOV w0, #102
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[40] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[41] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[42] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[43] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[44] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[45] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[46] = 0
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
    MOV x0, #10
    STR x0, [SP, #-8]!
    // --If statement--
    // --Evaluating condition--
    // --Constant true--
    MOV x0, #1
    STR x0, [SP, #-8]!
    LDR x0, [SP], #8
    CBZ x0, L0
    // --Block Stmt--
    // --Variable Declaration--
    // --Integer value--
    MOV x0, #20
    STR x0, [SP, #-8]!
    // --Print statement--
    // --Load variable b--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: b dentro del if =--
    STR x10, [SP, #-8]!
    // StringArray[0] = 98
    MOV w0, #98
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 114
    MOV w0, #114
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
    // StringArray[11] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 102
    MOV w0, #102
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 61
    MOV w0, #61
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
    BL print_integer
    //print newline
    BL print_newline
    // --If statement--
    // --Evaluating condition--
    // --Equality--
    // --Load variable b--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #20
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L1
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L2
    L1:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L2:
    LDR x0, [SP], #8
    CBZ x0, L3
    // --Block Stmt--
    // --Assignment to puntosEntornos--
    // --Add/Subtract--
    // --Load variable puntosEntornos--
    MOV x0, #16
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #2
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    ADD x0, x0, x1
    // --Push Result--
    STR x0, [SP, #-8]!
    LDR x0, [SP], #8
    MOV x1, #24
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Print statement--
    // --String value: OK Redeclaración en entorno diferente: correcto--
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
    // StringArray[3] = 82
    MOV w0, #82
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 100
    MOV w0, #100
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
    // StringArray[19] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 110
    MOV w0, #110
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
    // StringArray[24] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 110
    MOV w0, #110
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
    // StringArray[28] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 102
    MOV w0, #102
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 101
    MOV w0, #101
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
    // StringArray[34] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[35] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[36] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[37] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[38] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[39] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[40] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[41] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[42] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[43] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[44] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[45] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[46] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[47] = 0
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
    B L4
    L3:
    // --Block Stmt--
    // --Print statement--
    // --String value: X Redeclaración en entorno diferente: incorrecto--
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
    // StringArray[2] = 82
    MOV w0, #82
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 243
    MOV w0, #243
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
    // StringArray[16] = 101
    MOV w0, #101
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
    // StringArray[19] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 116
    MOV w0, #116
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
    // StringArray[24] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 111
    MOV w0, #111
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
    // StringArray[28] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 102
    MOV w0, #102
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[35] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[36] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[37] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[38] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[39] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[40] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[41] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[42] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[43] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[44] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[45] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[46] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[47] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[48] = 0
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
    L4:
    // --Pop 8 bytes--
    MOV x0, #8
    ADD sp, sp, x0
    // Stack pointer updated
    L0:
    // --Print statement--
    // --Load variable b--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: b fuera del if =--
    STR x10, [SP, #-8]!
    // StringArray[0] = 98
    MOV w0, #98
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
    // StringArray[7] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 108
    MOV w0, #108
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
    // StringArray[13] = 102
    MOV w0, #102
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 61
    MOV w0, #61
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
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_integer
    //print newline
    BL print_newline
    // --Print statement--
    // --String value: \nUso de variable en un entorno superior--
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
    // StringArray[2] = 85
    MOV w0, #85
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 118
    MOV w0, #118
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 97
    MOV w0, #97
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
    // StringArray[13] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 98
    MOV w0, #98
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 101
    MOV w0, #101
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
    // StringArray[19] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 32
    MOV w0, #32
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
    // StringArray[28] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[35] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[36] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[37] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[38] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[39] = 114
    MOV w0, #114
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
    // --Variable Declaration--
    // --Integer value--
    MOV x0, #10
    STR x0, [SP, #-8]!
    // --Variable Declaration--
    // --Integer value--
    MOV x0, #10
    STR x0, [SP, #-8]!
    // --If statement--
    // --Evaluating condition--
    // --Constant true--
    MOV x0, #1
    STR x0, [SP, #-8]!
    LDR x0, [SP], #8
    CBZ x0, L5
    // --Block Stmt--
    // --Variable Declaration--
    // --Integer value--
    MOV x0, #20
    STR x0, [SP, #-8]!
    // --Print statement--
    // --Load variable c--
    MOV x0, #16
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: c dentro del if =--
    STR x10, [SP, #-8]!
    // StringArray[0] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 114
    MOV w0, #114
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
    // StringArray[11] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 102
    MOV w0, #102
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 61
    MOV w0, #61
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
    BL print_integer
    //print newline
    BL print_newline
    // --Print statement--
    // --Load variable d--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: d dentro del if =--
    STR x10, [SP, #-8]!
    // StringArray[0] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 114
    MOV w0, #114
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
    // StringArray[11] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 102
    MOV w0, #102
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 61
    MOV w0, #61
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
    BL print_integer
    //print newline
    BL print_newline
    // --Assignment to c--
    // --Integer value--
    MOV x0, #30
    STR x0, [SP, #-8]!
    LDR x0, [SP], #8
    MOV x1, #16
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Assignment to d--
    // --Integer value--
    MOV x0, #30
    STR x0, [SP, #-8]!
    LDR x0, [SP], #8
    MOV x1, #0
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Pop 8 bytes--
    MOV x0, #8
    ADD sp, sp, x0
    // Stack pointer updated
    L5:
    // --Print statement--
    // --Load variable c--
    MOV x0, #8
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: c fuera del if =--
    STR x10, [SP, #-8]!
    // StringArray[0] = 99
    MOV w0, #99
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
    // StringArray[7] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 108
    MOV w0, #108
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
    // StringArray[13] = 102
    MOV w0, #102
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 61
    MOV w0, #61
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
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_integer
    //print newline
    BL print_newline
    // --Print statement--
    // --Load variable d--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: d fuera del if =--
    STR x10, [SP, #-8]!
    // StringArray[0] = 100
    MOV w0, #100
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
    // StringArray[7] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 108
    MOV w0, #108
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
    // StringArray[13] = 102
    MOV w0, #102
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 61
    MOV w0, #61
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
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_integer
    //print newline
    BL print_newline
    // --If statement--
    // --Evaluating condition--
    // --Logical AND--
    // --Equality--
    // --Load variable c--
    MOV x0, #8
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #30
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L6
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L7
    L6:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L7:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L8
    // --Equality--
    // --Load variable d--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
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
    BEQ L10
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L11
    L10:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L11:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L9
    L8:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L9:
    LDR x0, [SP], #8
    CBZ x0, L12
    // --Block Stmt--
    // --Assignment to puntosEntornos--
    // --Add/Subtract--
    // --Load variable puntosEntornos--
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
    // --String value: OK Uso de variable en entorno superior: correcto--
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
    // StringArray[3] = 85
    MOV w0, #85
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 118
    MOV w0, #118
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 97
    MOV w0, #97
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
    // StringArray[14] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 98
    MOV w0, #98
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 110
    MOV w0, #110
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
    // StringArray[23] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 116
    MOV w0, #116
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
    // StringArray[27] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[35] = 105
    MOV w0, #105
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
    // StringArray[38] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[39] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[40] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[41] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[42] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[43] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[44] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[45] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[46] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[47] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[48] = 0
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
    B L13
    L12:
    // --Block Stmt--
    // --Print statement--
    // --String value: X Uso de variable en entorno superior: incorrecto--
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
    // StringArray[2] = 85
    MOV w0, #85
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 118
    MOV w0, #118
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 97
    MOV w0, #97
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
    // StringArray[13] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 98
    MOV w0, #98
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 101
    MOV w0, #101
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
    // StringArray[19] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 32
    MOV w0, #32
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
    // StringArray[25] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 110
    MOV w0, #110
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
    // StringArray[29] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[35] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[36] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[37] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[38] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[39] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[40] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[41] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[42] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[43] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[44] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[45] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[46] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[47] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[48] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[49] = 0
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
    L13:
    // --Print statement--
    // --String value: \n==== If / Else ====--
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
    // StringArray[7] = 73
    MOV w0, #73
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 102
    MOV w0, #102
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 47
    MOV w0, #47
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 69
    MOV w0, #69
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 115
    MOV w0, #115
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
    // --String value: If simple--
    STR x10, [SP, #-8]!
    // StringArray[0] = 73
    MOV w0, #73
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 102
    MOV w0, #102
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
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
    // StringArray[5] = 109
    MOV w0, #109
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 101
    MOV w0, #101
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
    //print newline
    BL print_newline
    // --If statement--
    // --Evaluating condition--
    // --Constant true--
    MOV x0, #1
    STR x0, [SP, #-8]!
    LDR x0, [SP], #8
    CBZ x0, L14
    // --Block Stmt--
    // --Print statement--
    // --String value: Condición verdadera--
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
    // StringArray[4] = 105
    MOV w0, #105
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
    // StringArray[10] = 118
    MOV w0, #118
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
    // StringArray[13] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 97
    MOV w0, #97
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
    // StringArray[17] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 97
    MOV w0, #97
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
    // --Assignment to puntosIfElse--
    // --Add/Subtract--
    // --Load variable puntosIfElse--
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
    // --Pop 8 bytes--
    MOV x0, #8
    ADD sp, sp, x0
    // Stack pointer updated
    L14:
    // --Print statement--
    // --String value: \nIf-Else--
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
    // StringArray[2] = 73
    MOV w0, #73
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 102
    MOV w0, #102
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 69
    MOV w0, #69
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 101
    MOV w0, #101
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
    //print newline
    BL print_newline
    // --If statement--
    // --Evaluating condition--
    // --Constant true--
    MOV x0, #1
    STR x0, [SP, #-8]!
    LDR x0, [SP], #8
    CBZ x0, L15
    // --Block Stmt--
    // --Print statement--
    // --String value: Condición verdadera en if-else--
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
    // StringArray[4] = 105
    MOV w0, #105
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
    // StringArray[10] = 118
    MOV w0, #118
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
    // StringArray[13] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 97
    MOV w0, #97
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
    // StringArray[17] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 110
    MOV w0, #110
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
    // StringArray[24] = 102
    MOV w0, #102
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 101
    MOV w0, #101
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
    B L16
    L15:
    // --Block Stmt--
    // --Print statement--
    // --String value: Condición falsa en if-else--
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
    // StringArray[4] = 105
    MOV w0, #105
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
    // StringArray[10] = 102
    MOV w0, #102
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
    // StringArray[13] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 97
    MOV w0, #97
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
    // StringArray[20] = 102
    MOV w0, #102
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 101
    MOV w0, #101
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
    L16:
    // --If statement--
    // --Evaluating condition--
    // --Constant false--
    MOV x0, #0
    STR x0, [SP, #-8]!
    LDR x0, [SP], #8
    CBZ x0, L17
    // --Block Stmt--
    // --Print statement--
    // --String value: Esto no debería imprimirse--
    STR x10, [SP, #-8]!
    // StringArray[0] = 69
    MOV w0, #69
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 110
    MOV w0, #110
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
    // StringArray[8] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 98
    MOV w0, #98
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
    // StringArray[13] = 237
    MOV w0, #237
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 97
    MOV w0, #97
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
    // StringArray[17] = 109
    MOV w0, #109
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
    // StringArray[20] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 109
    MOV w0, #109
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 101
    MOV w0, #101
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
    B L18
    L17:
    // --Block Stmt--
    // --Print statement--
    // --String value: Condición falsa, ejecutando else--
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
    // StringArray[4] = 105
    MOV w0, #105
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
    // StringArray[10] = 102
    MOV w0, #102
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
    // StringArray[13] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 44
    MOV w0, #44
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
    // StringArray[18] = 106
    MOV w0, #106
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 117
    MOV w0, #117
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
    // StringArray[24] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 100
    MOV w0, #100
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
    // StringArray[28] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 101
    MOV w0, #101
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
    // --Assignment to puntosIfElse--
    // --Add/Subtract--
    // --Load variable puntosIfElse--
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
    // --Pop 8 bytes--
    MOV x0, #8
    ADD sp, sp, x0
    // Stack pointer updated
    L18:
    // --Print statement--
    // --String value: \nIf-ElseIf-Else--
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
    // StringArray[2] = 73
    MOV w0, #73
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 102
    MOV w0, #102
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 69
    MOV w0, #69
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 73
    MOV w0, #73
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 102
    MOV w0, #102
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 45
    MOV w0, #45
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 69
    MOV w0, #69
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 101
    MOV w0, #101
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
    // --If statement--
    // --Evaluating condition--
    // --Constant true--
    MOV x0, #1
    STR x0, [SP, #-8]!
    LDR x0, [SP], #8
    CBZ x0, L19
    // --Block Stmt--
    // --Print statement--
    // --String value: Primera condición verdadera--
    STR x10, [SP, #-8]!
    // StringArray[0] = 80
    MOV w0, #80
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 109
    MOV w0, #109
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
    // StringArray[10] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 105
    MOV w0, #105
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
    // StringArray[18] = 118
    MOV w0, #118
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
    // StringArray[21] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 97
    MOV w0, #97
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
    B L20
    L19:
    // --If statement--
    // --Evaluating condition--
    // --Constant true--
    MOV x0, #1
    STR x0, [SP, #-8]!
    LDR x0, [SP], #8
    CBZ x0, L21
    // --Block Stmt--
    // --Print statement--
    // --String value: Segunda condición verdadera, pero no se ejecuta--
    STR x10, [SP, #-8]!
    // StringArray[0] = 83
    MOV w0, #83
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 103
    MOV w0, #103
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 110
    MOV w0, #110
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
    // StringArray[10] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 105
    MOV w0, #105
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
    // StringArray[18] = 118
    MOV w0, #118
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
    // StringArray[21] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 44
    MOV w0, #44
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[35] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[36] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[37] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[38] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[39] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[40] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[41] = 106
    MOV w0, #106
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[42] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[43] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[44] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[45] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[46] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[47] = 0
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
    B L22
    L21:
    // --Block Stmt--
    // --Print statement--
    // --String value: Ninguna condición verdadera--
    STR x10, [SP, #-8]!
    // StringArray[0] = 78
    MOV w0, #78
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 110
    MOV w0, #110
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
    // StringArray[5] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 97
    MOV w0, #97
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
    // StringArray[10] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 105
    MOV w0, #105
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
    // StringArray[18] = 118
    MOV w0, #118
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
    // StringArray[21] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 97
    MOV w0, #97
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
    L22:
    L20:
    // --If statement--
    // --Evaluating condition--
    // --Constant false--
    MOV x0, #0
    STR x0, [SP, #-8]!
    LDR x0, [SP], #8
    CBZ x0, L23
    // --Block Stmt--
    // --Print statement--
    // --String value: Primera condición falsa--
    STR x10, [SP, #-8]!
    // StringArray[0] = 80
    MOV w0, #80
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 109
    MOV w0, #109
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
    // StringArray[10] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 105
    MOV w0, #105
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
    // StringArray[18] = 102
    MOV w0, #102
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
    // StringArray[21] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 97
    MOV w0, #97
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
    B L24
    L23:
    // --If statement--
    // --Evaluating condition--
    // --Constant true--
    MOV x0, #1
    STR x0, [SP, #-8]!
    LDR x0, [SP], #8
    CBZ x0, L25
    // --Block Stmt--
    // --Print statement--
    // --String value: Segunda condición verdadera--
    STR x10, [SP, #-8]!
    // StringArray[0] = 83
    MOV w0, #83
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 103
    MOV w0, #103
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 110
    MOV w0, #110
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
    // StringArray[10] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 105
    MOV w0, #105
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
    // StringArray[18] = 118
    MOV w0, #118
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
    // StringArray[21] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 97
    MOV w0, #97
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
    // --Assignment to puntosIfElse--
    // --Add/Subtract--
    // --Load variable puntosIfElse--
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
    // --Pop 8 bytes--
    MOV x0, #8
    ADD sp, sp, x0
    // Stack pointer updated
    B L26
    L25:
    // --Block Stmt--
    // --Print statement--
    // --String value: Ninguna condición verdadera--
    STR x10, [SP, #-8]!
    // StringArray[0] = 78
    MOV w0, #78
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 110
    MOV w0, #110
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
    // StringArray[5] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 97
    MOV w0, #97
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
    // StringArray[10] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 105
    MOV w0, #105
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
    // StringArray[18] = 118
    MOV w0, #118
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
    // StringArray[21] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 97
    MOV w0, #97
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
    L26:
    L24:
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
    // --Print statement--
    // --String value: \n==== For Tipo While ====--
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
    // StringArray[7] = 70
    MOV w0, #70
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
    // StringArray[10] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 84
    MOV w0, #84
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 87
    MOV w0, #87
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 104
    MOV w0, #104
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 105
    MOV w0, #105
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
    // StringArray[21] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 61
    MOV w0, #61
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
    // --Variable Declaration--
    // --Integer value--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Print statement--
    // --String value: For como while simple--
    STR x10, [SP, #-8]!
    // StringArray[0] = 70
    MOV w0, #70
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 109
    MOV w0, #109
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
    // StringArray[9] = 119
    MOV w0, #119
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 104
    MOV w0, #104
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 108
    MOV w0, #108
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
    // StringArray[17] = 109
    MOV w0, #109
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
    // --Variable Declaration--
    // --Integer value--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Variable Declaration--
    // --Integer value--
    MOV x0, #0
    STR x0, [SP, #-8]!
    L27:
    // --For WHILE condition--
    // --Evaluating condition--
    // --Relational--
    // --Load variable i--
    MOV x0, #8
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
    // --Integer relational comparison--
    CMP x1, x0
    BLT L29
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L30
    L29:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L30:
    LDR x0, [SP], #8
    CBZ x0, L28
    // --For WHILE body--
    // --Block Stmt--
    // --Print statement--
    // --Load variable i--
    MOV x0, #8
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: i =--
    STR x10, [SP, #-8]!
    // StringArray[0] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 61
    MOV w0, #61
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
    //print space
    BL print_space
    // --POP value 2 print--
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_integer
    //print newline
    BL print_newline
    // --Assignment to suma--
    // --Add/Subtract--
    // --Load variable suma--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Load variable i--
    MOV x0, #16
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
    MOV x1, #8
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --++ operator for i--
    MOV x0, #16
    ADD x0, sp, x0
    STR x0, [SP, #-8]!
    LDR x1, [x0, #0]
    // --Incremento de entero--
    ADD x1, x1, #1
    LDR x0, [SP], #8
    STR x1, [x0, #0]
    STR x1, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Pop 8 bytes--
    MOV x0, #8
    ADD sp, sp, x0
    // Stack pointer updated
    B L27
    L28:
    // --If statement--
    // --Evaluating condition--
    // --Equality--
    // --Load variable suma--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #9
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L31
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L32
    L31:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L32:
    LDR x0, [SP], #8
    CBZ x0, L33
    // --Block Stmt--
    // --Assignment to puntosForWhile--
    // --Add/Subtract--
    // --Load variable puntosForWhile--
    MOV x0, #16
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
    MOV x1, #24
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Print statement--
    // --String value: OK For como while simple: correcto--
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
    // StringArray[3] = 70
    MOV w0, #70
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 114
    MOV w0, #114
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
    // StringArray[9] = 109
    MOV w0, #109
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
    // StringArray[12] = 119
    MOV w0, #119
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 104
    MOV w0, #104
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 32
    MOV w0, #32
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
    // StringArray[20] = 109
    MOV w0, #109
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
    B L34
    L33:
    // --Block Stmt--
    // --Print statement--
    // --String value: X For como while simple: incorrecto--
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
    // StringArray[2] = 70
    MOV w0, #70
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
    // StringArray[6] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 109
    MOV w0, #109
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
    // StringArray[11] = 119
    MOV w0, #119
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 104
    MOV w0, #104
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 108
    MOV w0, #108
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
    // StringArray[17] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 109
    MOV w0, #109
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 101
    MOV w0, #101
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
    L34:
    // --Print statement--
    // --String value: \nFor como while con condición compuesta--
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
    // StringArray[2] = 70
    MOV w0, #70
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
    // StringArray[6] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 109
    MOV w0, #109
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
    // StringArray[11] = 119
    MOV w0, #119
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 104
    MOV w0, #104
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 108
    MOV w0, #108
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
    // StringArray[19] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 99
    MOV w0, #99
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
    // StringArray[24] = 100
    MOV w0, #100
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
    // StringArray[27] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 110
    MOV w0, #110
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
    // StringArray[33] = 109
    MOV w0, #109
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[35] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[36] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[37] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[38] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[39] = 97
    MOV w0, #97
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
    // --Variable Declaration--
    // --Integer value--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Variable Declaration--
    // --Integer value--
    MOV x0, #1
    STR x0, [SP, #-8]!
    L35:
    // --For WHILE condition--
    // --Evaluating condition--
    // --Logical AND--
    // --Relational--
    // --Load variable j--
    MOV x0, #8
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
    // --Integer relational comparison--
    CMP x1, x0
    BLT L37
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L38
    L37:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L38:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L39
    // --Relational--
    // --Load variable producto--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #50
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer relational comparison--
    CMP x1, x0
    BLT L41
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L42
    L41:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L42:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L40
    L39:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L40:
    LDR x0, [SP], #8
    CBZ x0, L36
    // --For WHILE body--
    // --Block Stmt--
    // --++ operator for j--
    MOV x0, #8
    ADD x0, sp, x0
    STR x0, [SP, #-8]!
    LDR x1, [x0, #0]
    // --Incremento de entero--
    ADD x1, x1, #1
    LDR x0, [SP], #8
    STR x1, [x0, #0]
    STR x1, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Assignment to producto--
    // --Multiply/Divide/Modulo--
    // --Load variable producto--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Load variable j--
    MOV x0, #16
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    MUL x0, x1, x0
    // --Push Result--
    STR x0, [SP, #-8]!
    LDR x0, [SP], #8
    MOV x1, #0
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Print statement--
    // --Load variable producto--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: producto =--
    STR x10, [SP, #-8]!
    // StringArray[0] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 116
    MOV w0, #116
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
    // --Load variable j--
    MOV x0, #24
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: j =--
    STR x10, [SP, #-8]!
    // StringArray[0] = 106
    MOV w0, #106
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 61
    MOV w0, #61
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
    //print space
    BL print_space
    // --POP value 2 print--
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_integer
    //print newline
    BL print_newline
    B L35
    L36:
    // --If statement--
    // --Evaluating condition--
    // --Logical AND--
    // --Equality--
    // --Load variable j--
    MOV x0, #8
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
    BEQ L43
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L44
    L43:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L44:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L45
    // --Equality--
    // --Load variable producto--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #120
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L47
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L48
    L47:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L48:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L46
    L45:
    MOV x0, #0
    STR x0, [SP, #-8]!
    L46:
    LDR x0, [SP], #8
    CBZ x0, L49
    // --Block Stmt--
    // --Assignment to puntosForWhile--
    // --Add/Subtract--
    // --Load variable puntosForWhile--
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
    // --String value: OK For como while con condición compuesta: correcto--
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
    // StringArray[3] = 70
    MOV w0, #70
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 114
    MOV w0, #114
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
    // StringArray[9] = 109
    MOV w0, #109
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
    // StringArray[12] = 119
    MOV w0, #119
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 104
    MOV w0, #104
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 110
    MOV w0, #110
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
    // StringArray[25] = 100
    MOV w0, #100
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
    // StringArray[28] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 110
    MOV w0, #110
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
    // StringArray[34] = 109
    MOV w0, #109
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[35] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[36] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[37] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[38] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[39] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[40] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[41] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[42] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[43] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[44] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[45] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[46] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[47] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[48] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[49] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[50] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[51] = 0
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
    B L50
    L49:
    // --Block Stmt--
    // --Print statement--
    // --String value: X For como while con condición compuesta: incorrecto--
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
    // StringArray[2] = 70
    MOV w0, #70
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
    // StringArray[6] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 109
    MOV w0, #109
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
    // StringArray[11] = 119
    MOV w0, #119
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 104
    MOV w0, #104
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 108
    MOV w0, #108
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
    // StringArray[19] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 99
    MOV w0, #99
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
    // StringArray[24] = 100
    MOV w0, #100
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
    // StringArray[27] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 110
    MOV w0, #110
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
    // StringArray[33] = 109
    MOV w0, #109
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[35] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[36] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[37] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[38] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[39] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[40] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[41] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[42] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[43] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[44] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[45] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[46] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[47] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[48] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[49] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[50] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[51] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[52] = 0
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
    L50:
    // --Print statement--
    // --String value: \nFor como while anidado (patrón X)--
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
    // StringArray[2] = 70
    MOV w0, #70
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
    // StringArray[6] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 109
    MOV w0, #109
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
    // StringArray[11] = 119
    MOV w0, #119
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 104
    MOV w0, #104
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 108
    MOV w0, #108
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
    // StringArray[17] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 100
    MOV w0, #100
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
    // StringArray[24] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 40
    MOV w0, #40
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 243
    MOV w0, #243
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 88
    MOV w0, #88
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 41
    MOV w0, #41
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
    // --Variable Declaration--
    // --Integer value--
    MOV x0, #5
    STR x0, [SP, #-8]!
    // --Variable Declaration--
    // --Integer value--
    MOV x0, #0
    STR x0, [SP, #-8]!
    L51:
    // --For WHILE condition--
    // --Evaluating condition--
    // --Relational--
    // --Load variable x--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Load variable n--
    MOV x0, #16
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer relational comparison--
    CMP x1, x0
    BLT L53
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L54
    L53:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L54:
    LDR x0, [SP], #8
    CBZ x0, L52
    // --For WHILE body--
    // --Block Stmt--
    // --Variable Declaration--
    // --Integer value--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Variable Declaration--
    // --String value: --
    STR x10, [SP, #-8]!
    // StringArray[0] = 0
    MOV w0, #0
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    L55:
    // --For WHILE condition--
    // --Evaluating condition--
    // --Relational--
    // --Load variable j--
    MOV x0, #8
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Load variable n--
    MOV x0, #32
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer relational comparison--
    CMP x1, x0
    BLT L57
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L58
    L57:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L58:
    LDR x0, [SP], #8
    CBZ x0, L56
    // --For WHILE body--
    // --Block Stmt--
    // --If statement--
    // --Evaluating condition--
    // --Logical OR--
    // --Equality--
    // --Load variable x--
    MOV x0, #16
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Load variable j--
    MOV x0, #16
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L59
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L60
    L59:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L60:
    LDR x0, [SP], #8
    CMP x0, #1
    BEQ L61
    // --Equality--
    // --Add/Subtract--
    // --Load variable x--
    MOV x0, #16
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Load variable j--
    MOV x0, #16
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
    // --Add/Subtract--
    // --Load variable n--
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
    SUB x0, x1, x0
    // --Push Result--
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L63
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L64
    L63:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L64:
    LDR x0, [SP], #8
    STR x0, [SP, #-8]!
    B L62
    L61:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L62:
    LDR x0, [SP], #8
    CBZ x0, L65
    // --Block Stmt--
    // --Assignment to fila--
    // --String value: *--
    STR x10, [SP, #-8]!
    // StringArray[0] = 42
    MOV w0, #42
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 0
    MOV w0, #0
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    LDR x0, [SP], #8
    MOV x1, #16
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    B L66
    L65:
    // --Block Stmt--
    // --Assignment to fila--
    // --String value: LA CONCATENACION ESTA BUGEADA--
    STR x10, [SP, #-8]!
    // StringArray[0] = 76
    MOV w0, #76
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 65
    MOV w0, #65
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 67
    MOV w0, #67
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 78
    MOV w0, #78
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 67
    MOV w0, #67
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 65
    MOV w0, #65
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 84
    MOV w0, #84
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 69
    MOV w0, #69
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 78
    MOV w0, #78
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 65
    MOV w0, #65
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 67
    MOV w0, #67
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 73
    MOV w0, #73
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 79
    MOV w0, #79
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 78
    MOV w0, #78
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 69
    MOV w0, #69
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 83
    MOV w0, #83
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 84
    MOV w0, #84
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 65
    MOV w0, #65
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 66
    MOV w0, #66
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 85
    MOV w0, #85
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 71
    MOV w0, #71
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 69
    MOV w0, #69
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 65
    MOV w0, #65
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 68
    MOV w0, #68
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 65
    MOV w0, #65
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 0
    MOV w0, #0
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    LDR x0, [SP], #8
    MOV x1, #16
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    L66:
    // --++ operator for j--
    MOV x0, #24
    ADD x0, sp, x0
    STR x0, [SP, #-8]!
    LDR x1, [x0, #0]
    // --Incremento de entero--
    ADD x1, x1, #1
    LDR x0, [SP], #8
    STR x1, [x0, #0]
    STR x1, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Pop 16 bytes--
    MOV x0, #16
    ADD sp, sp, x0
    // Stack pointer updated
    B L55
    L56:
    // --Print statement--
    // --Load variable fila--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Print values--
    // --POP value 2 print--
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_string
    //print newline
    BL print_newline
    // --++ operator for x--
    MOV x0, #16
    ADD x0, sp, x0
    STR x0, [SP, #-8]!
    LDR x1, [x0, #0]
    // --Incremento de entero--
    ADD x1, x1, #1
    LDR x0, [SP], #8
    STR x1, [x0, #0]
    STR x1, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Pop 16 bytes--
    MOV x0, #16
    ADD sp, sp, x0
    // Stack pointer updated
    B L51
    L52:
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
    // --Equality--
    // --Load variable x--
    MOV x0, #0
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
    BEQ L67
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L68
    L67:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L68:
    LDR x0, [SP], #8
    CBZ x0, L69
    // --Block Stmt--
    // --Assignment to puntosForWhile--
    // --Add/Subtract--
    // --Load variable puntosForWhile--
    MOV x0, #48
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #2
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
    // --String value: OK For como while anidado: correcto--
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
    // StringArray[3] = 70
    MOV w0, #70
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 114
    MOV w0, #114
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
    // StringArray[9] = 109
    MOV w0, #109
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
    // StringArray[12] = 119
    MOV w0, #119
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 104
    MOV w0, #104
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 97
    MOV w0, #97
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
    // StringArray[21] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 32
    MOV w0, #32
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
    // --Pop 8 bytes--
    MOV x0, #8
    ADD sp, sp, x0
    // Stack pointer updated
    B L70
    L69:
    // --Block Stmt--
    // --Print statement--
    // --String value: X For como while anidado: incorrecto--
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
    // StringArray[2] = 70
    MOV w0, #70
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
    // StringArray[6] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 109
    MOV w0, #109
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
    // StringArray[11] = 119
    MOV w0, #119
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 104
    MOV w0, #104
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 108
    MOV w0, #108
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
    // StringArray[17] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 100
    MOV w0, #100
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
    // StringArray[26] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 99
    MOV w0, #99
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
    // StringArray[31] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[35] = 111
    MOV w0, #111
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
    L70:
    // --Print statement--
    // --String value: \n==== For Clásico ====--
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
    // StringArray[7] = 70
    MOV w0, #70
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
    // StringArray[10] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 67
    MOV w0, #67
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 225
    MOV w0, #225
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
    // --String value: For clásico simple--
    STR x10, [SP, #-8]!
    // StringArray[0] = 70
    MOV w0, #70
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 32
    MOV w0, #32
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
    // StringArray[6] = 225
    MOV w0, #225
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
    // StringArray[14] = 109
    MOV w0, #109
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 101
    MOV w0, #101
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
    // --Assignment to suma--
    // --Integer value--
    MOV x0, #0
    STR x0, [SP, #-8]!
    LDR x0, [SP], #8
    MOV x1, #40
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --For CLASSIC--
    // --Variable Declaration--
    // --Integer value--
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L72
    L71:
    // --For CLASSIC body--
    // --Block Stmt--
    // --Print statement--
    // --Load variable i--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: i =--
    STR x10, [SP, #-8]!
    // StringArray[0] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 61
    MOV w0, #61
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
    //print space
    BL print_space
    // --POP value 2 print--
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_integer
    //print newline
    BL print_newline
    // --Assignment to suma--
    // --Add/Subtract--
    // --Load variable suma--
    MOV x0, #48
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Load variable i--
    MOV x0, #8
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
    MOV x1, #56
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Pop 8 bytes--
    MOV x0, #8
    ADD sp, sp, x0
    // Stack pointer updated
    L74:
    // --For CLASSIC increment--
    // --++ operator for i--
    MOV x0, #0
    ADD x0, sp, x0
    STR x0, [SP, #-8]!
    LDR x1, [x0, #0]
    // --Incremento de entero--
    ADD x1, x1, #1
    LDR x0, [SP], #8
    STR x1, [x0, #0]
    STR x1, [SP, #-8]!
    LDR x0, [SP], #8
    L72:
    // --For condition--
    // --Relational--
    // --Load variable i--
    MOV x0, #0
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
    // --Integer relational comparison--
    CMP x1, x0
    BLT L75
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L76
    L75:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L76:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L73
    B L71
    L73:
    // --Pop 8 bytes--
    MOV x0, #8
    ADD sp, sp, x0
    // Stack pointer updated
    // --End For CLASSIC--
    // --If statement--
    // --Evaluating condition--
    // --Equality--
    // --Load variable suma--
    MOV x0, #40
    ADD x0, sp, x0
    LDR x0, [x0, #0]
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
    BEQ L77
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L78
    L77:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L78:
    LDR x0, [SP], #8
    CBZ x0, L79
    // --Block Stmt--
    // --Assignment to puntosForClasico--
    // --Add/Subtract--
    // --Load variable puntosForClasico--
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
    // --String value: OK For clásico simple: correcto--
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
    // StringArray[3] = 70
    MOV w0, #70
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 114
    MOV w0, #114
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
    // StringArray[8] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 225
    MOV w0, #225
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 105
    MOV w0, #105
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
    // StringArray[17] = 109
    MOV w0, #109
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
    // --Pop 8 bytes--
    MOV x0, #8
    ADD sp, sp, x0
    // Stack pointer updated
    B L80
    L79:
    // --Block Stmt--
    // --Print statement--
    // --String value: X For clásico simple: incorrecto--
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
    // StringArray[2] = 70
    MOV w0, #70
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
    // StringArray[6] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 225
    MOV w0, #225
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 115
    MOV w0, #115
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
    // StringArray[22] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 110
    MOV w0, #110
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
    L80:
    // --Print statement--
    // --String value: \nFor clásico anidado (tabla de multiplicar)--
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
    // StringArray[2] = 70
    MOV w0, #70
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
    // StringArray[6] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 225
    MOV w0, #225
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 115
    MOV w0, #115
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
    // StringArray[16] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 100
    MOV w0, #100
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
    // StringArray[22] = 40
    MOV w0, #40
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 116
    MOV w0, #116
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
    // StringArray[27] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[29] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[30] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[31] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 109
    MOV w0, #109
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[35] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[36] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[37] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[38] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[39] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[40] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[41] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[42] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[43] = 41
    MOV w0, #41
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[44] = 0
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
    // --For CLASSIC--
    // --Variable Declaration--
    // --Integer value--
    MOV x0, #1
    STR x0, [SP, #-8]!
    B L82
    L81:
    // --For CLASSIC body--
    // --Block Stmt--
    // --For CLASSIC--
    // --Variable Declaration--
    // --Integer value--
    MOV x0, #1
    STR x0, [SP, #-8]!
    B L86
    L85:
    // --For CLASSIC body--
    // --Block Stmt--
    // --Print statement--
    // --Multiply/Divide/Modulo--
    // --Load variable i--
    MOV x0, #8
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Load variable j--
    MOV x0, #8
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    MUL x0, x1, x0
    // --Push Result--
    STR x0, [SP, #-8]!
    // --String value: =--
    STR x10, [SP, #-8]!
    // StringArray[0] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 0
    MOV w0, #0
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // --Load variable j--
    MOV x0, #16
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: x--
    STR x10, [SP, #-8]!
    // StringArray[0] = 120
    MOV w0, #120
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 0
    MOV w0, #0
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // --Load variable i--
    MOV x0, #40
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Print values--
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
    //print space
    BL print_space
    // --POP value 2 print--
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_integer
    //print newline
    BL print_newline
    L88:
    // --For CLASSIC increment--
    // --++ operator for j--
    MOV x0, #0
    ADD x0, sp, x0
    STR x0, [SP, #-8]!
    LDR x1, [x0, #0]
    // --Incremento de entero--
    ADD x1, x1, #1
    LDR x0, [SP], #8
    STR x1, [x0, #0]
    STR x1, [SP, #-8]!
    LDR x0, [SP], #8
    L86:
    // --For condition--
    // --Relational--
    // --Load variable j--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #3
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer relational comparison--
    CMP x1, x0
    BLE L89
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L90
    L89:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L90:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L87
    B L85
    L87:
    // --Pop 8 bytes--
    MOV x0, #8
    ADD sp, sp, x0
    // Stack pointer updated
    // --End For CLASSIC--
    // --Print statement--
    // --Print values--
    //print newline
    BL print_newline
    L84:
    // --For CLASSIC increment--
    // --++ operator for i--
    MOV x0, #0
    ADD x0, sp, x0
    STR x0, [SP, #-8]!
    LDR x1, [x0, #0]
    // --Incremento de entero--
    ADD x1, x1, #1
    LDR x0, [SP], #8
    STR x1, [x0, #0]
    STR x1, [SP, #-8]!
    LDR x0, [SP], #8
    L82:
    // --For condition--
    // --Relational--
    // --Load variable i--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #3
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer relational comparison--
    CMP x1, x0
    BLE L91
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L92
    L91:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L92:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L83
    B L81
    L83:
    // --Pop 8 bytes--
    MOV x0, #8
    ADD sp, sp, x0
    // Stack pointer updated
    // --End For CLASSIC--
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
    // --Assignment to puntosForClasico--
    // --Add/Subtract--
    // --Load variable puntosForClasico--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #2
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
    // --String value: OK For clásico anidado: correcto--
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
    // StringArray[3] = 70
    MOV w0, #70
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 114
    MOV w0, #114
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
    // StringArray[8] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 225
    MOV w0, #225
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 105
    MOV w0, #105
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
    // StringArray[14] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 97
    MOV w0, #97
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
    // StringArray[18] = 100
    MOV w0, #100
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 100
    MOV w0, #100
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
    // --Print statement--
    // --String value: \n==== Break ====--
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
    // StringArray[7] = 66
    MOV w0, #66
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 107
    MOV w0, #107
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[15] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 61
    MOV w0, #61
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
    // --Variable Declaration--
    // --Integer value--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Print statement--
    // --String value: Break en for infinito--
    STR x10, [SP, #-8]!
    // StringArray[0] = 66
    MOV w0, #66
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 107
    MOV w0, #107
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 110
    MOV w0, #110
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
    // StringArray[12] = 32
    MOV w0, #32
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
    // StringArray[15] = 102
    MOV w0, #102
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
    // --Variable Declaration--
    // --Integer value--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --Assignment to suma--
    // --Integer value--
    MOV x0, #0
    STR x0, [SP, #-8]!
    LDR x0, [SP], #8
    MOV x1, #64
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    L93:
    // --For WHILE condition--
    // --Evaluating condition--
    // --Constant true--
    MOV x0, #1
    STR x0, [SP, #-8]!
    LDR x0, [SP], #8
    CBZ x0, L94
    // --For WHILE body--
    // --Block Stmt--
    // --Print statement--
    // --Load variable contador--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: contador =--
    STR x10, [SP, #-8]!
    // StringArray[0] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 100
    MOV w0, #100
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
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_integer
    //print newline
    BL print_newline
    // --Assignment to suma--
    // --Add/Subtract--
    // --Load variable suma--
    MOV x0, #64
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Load variable contador--
    MOV x0, #8
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
    MOV x1, #72
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --++ operator for contador--
    MOV x0, #8
    ADD x0, sp, x0
    STR x0, [SP, #-8]!
    LDR x1, [x0, #0]
    // --Incremento de entero--
    ADD x1, x1, #1
    LDR x0, [SP], #8
    STR x1, [x0, #0]
    STR x1, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --If statement--
    // --Evaluating condition--
    // --Relational--
    // --Load variable contador--
    MOV x0, #8
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
    // --Integer relational comparison--
    CMP x1, x0
    BGE L95
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L96
    L95:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L96:
    LDR x0, [SP], #8
    CBZ x0, L97
    // --Block Stmt--
    // --Break statement--
    B L94
    L97:
    // --Pop 8 bytes--
    MOV x0, #8
    ADD sp, sp, x0
    // Stack pointer updated
    B L93
    L94:
    // --Print statement--
    // --Load variable suma--
    MOV x0, #64
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Print values--
    // --POP value 2 print--
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_integer
    //print newline
    BL print_newline
    // --If statement--
    // --Evaluating condition--
    // --Equality--
    // --Load variable suma--
    MOV x0, #64
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #7
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L98
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L99
    L98:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L99:
    LDR x0, [SP], #8
    CBZ x0, L100
    // --Block Stmt--
    // --Assignment to puntosBreak--
    // --Add/Subtract--
    // --Load variable puntosBreak--
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
    // --String value: OK Break en for infinito: correcto--
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
    // StringArray[3] = 66
    MOV w0, #66
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
    // StringArray[6] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 107
    MOV w0, #107
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 32
    MOV w0, #32
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
    // StringArray[11] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 102
    MOV w0, #102
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
    // StringArray[23] = 111
    MOV w0, #111
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
    B L101
    L100:
    // --Block Stmt--
    // --Print statement--
    // --String value: X Break en for infinito: incorrecto--
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
    // StringArray[2] = 66
    MOV w0, #66
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
    // StringArray[5] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 107
    MOV w0, #107
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 101
    MOV w0, #101
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
    // StringArray[11] = 102
    MOV w0, #102
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
    // StringArray[17] = 102
    MOV w0, #102
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
    // StringArray[22] = 111
    MOV w0, #111
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
    L101:
    // --Print statement--
    // --String value: \nBreak en for clásico--
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
    // StringArray[2] = 66
    MOV w0, #66
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
    // StringArray[5] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 107
    MOV w0, #107
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 101
    MOV w0, #101
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
    // StringArray[11] = 102
    MOV w0, #102
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
    // StringArray[15] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 225
    MOV w0, #225
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
    // --Assignment to suma--
    // --Integer value--
    MOV x0, #0
    STR x0, [SP, #-8]!
    LDR x0, [SP], #8
    MOV x1, #64
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --For CLASSIC--
    // --Variable Declaration--
    // --Integer value--
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L103
    L102:
    // --For CLASSIC body--
    // --Block Stmt--
    // --Print statement--
    // --Load variable i--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: i =--
    STR x10, [SP, #-8]!
    // StringArray[0] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[1] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[2] = 61
    MOV w0, #61
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
    //print space
    BL print_space
    // --POP value 2 print--
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_integer
    //print newline
    BL print_newline
    // --++ operator for suma--
    MOV x0, #72
    ADD x0, sp, x0
    STR x0, [SP, #-8]!
    LDR x1, [x0, #0]
    // --Incremento de entero--
    ADD x1, x1, #1
    LDR x0, [SP], #8
    STR x1, [x0, #0]
    STR x1, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --If statement--
    // --Evaluating condition--
    // --Relational--
    // --Load variable i--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #4
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer relational comparison--
    CMP x1, x0
    BGE L106
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L107
    L106:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L107:
    LDR x0, [SP], #8
    CBZ x0, L108
    // --Block Stmt--
    // --Break statement--
    B L104
    L108:
    L105:
    // --For CLASSIC increment--
    // --++ operator for i--
    MOV x0, #0
    ADD x0, sp, x0
    STR x0, [SP, #-8]!
    LDR x1, [x0, #0]
    // --Incremento de entero--
    ADD x1, x1, #1
    LDR x0, [SP], #8
    STR x1, [x0, #0]
    STR x1, [SP, #-8]!
    LDR x0, [SP], #8
    L103:
    // --For condition--
    // --Relational--
    // --Load variable i--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
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
    BLT L109
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L110
    L109:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L110:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L104
    B L102
    L104:
    // --Pop 8 bytes--
    MOV x0, #8
    ADD sp, sp, x0
    // Stack pointer updated
    // --End For CLASSIC--
    // --Print statement--
    // --Load variable suma--
    MOV x0, #64
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Print values--
    // --POP value 2 print--
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_integer
    //print newline
    BL print_newline
    // --If statement--
    // --Evaluating condition--
    // --Equality--
    // --Load variable suma--
    MOV x0, #64
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
    BEQ L111
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L112
    L111:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L112:
    LDR x0, [SP], #8
    CBZ x0, L113
    // --Block Stmt--
    // --Assignment to puntosBreak--
    // --Add/Subtract--
    // --Load variable puntosBreak--
    MOV x0, #8
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #2
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
    // --String value: OK Break en for clásico: correcto--
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
    // StringArray[3] = 66
    MOV w0, #66
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
    // StringArray[6] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 107
    MOV w0, #107
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 32
    MOV w0, #32
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
    // StringArray[11] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 102
    MOV w0, #102
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
    // StringArray[17] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 225
    MOV w0, #225
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 115
    MOV w0, #115
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 111
    MOV w0, #111
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
    // --Pop 8 bytes--
    MOV x0, #8
    ADD sp, sp, x0
    // Stack pointer updated
    B L114
    L113:
    // --Block Stmt--
    // --Print statement--
    // --String value: X Break en for clásico: incorrecto--
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
    // StringArray[2] = 66
    MOV w0, #66
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
    // StringArray[5] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 107
    MOV w0, #107
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 101
    MOV w0, #101
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
    // StringArray[11] = 102
    MOV w0, #102
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
    // StringArray[15] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[16] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 225
    MOV w0, #225
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
    // StringArray[24] = 105
    MOV w0, #105
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
    L114:
    // --Print statement--
    // --String value: \n==== Continue ====--
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
    // StringArray[7] = 67
    MOV w0, #67
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
    // StringArray[10] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 117
    MOV w0, #117
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
    // StringArray[16] = 61
    MOV w0, #61
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
    // StringArray[19] = 61
    MOV w0, #61
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 0
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
    // --String value: Continue en for tipo while--
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
    // StringArray[2] = 110
    MOV w0, #110
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
    // StringArray[5] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 32
    MOV w0, #32
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
    // StringArray[11] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 102
    MOV w0, #102
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
    // StringArray[15] = 32
    MOV w0, #32
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
    // StringArray[19] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 119
    MOV w0, #119
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[22] = 104
    MOV w0, #104
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[23] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 101
    MOV w0, #101
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
    // --Variable Declaration--
    // --Integer value--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --For CLASSIC--
    // --Variable Declaration--
    // --Integer value--
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L116
    L115:
    // --For CLASSIC body--
    // --Block Stmt--
    // --If statement--
    // --Evaluating condition--
    // --Equality--
    // --Multiply/Divide/Modulo--
    // --Load variable i--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #2
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    CMP x0, #0
    BEQ L119
    SDIV x2, x1, x0
    MUL x2, x2, x0
    SUB x0, x1, x2
    B L120
    L119:
    // --Modulo by zero error--
    MOV x0, #0
    L120:
    // --Push Result--
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
    BEQ L121
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L122
    L121:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L122:
    LDR x0, [SP], #8
    CBZ x0, L123
    // --Block Stmt--
    // --Continue statement--
    B L118
    L123:
    // --Assignment to impares--
    // --Add/Subtract--
    // --Load variable impares--
    MOV x0, #8
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Load variable i--
    MOV x0, #8
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
    MOV x1, #16
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Pop 8 bytes--
    MOV x0, #8
    ADD sp, sp, x0
    // Stack pointer updated
    L118:
    // --For CLASSIC increment--
    // --++ operator for i--
    MOV x0, #0
    ADD x0, sp, x0
    STR x0, [SP, #-8]!
    LDR x1, [x0, #0]
    // --Incremento de entero--
    ADD x1, x1, #1
    LDR x0, [SP], #8
    STR x1, [x0, #0]
    STR x1, [SP, #-8]!
    LDR x0, [SP], #8
    L116:
    // --For condition--
    // --Relational--
    // --Load variable i--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
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
    BLT L124
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L125
    L124:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L125:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L117
    B L115
    L117:
    // --Pop 8 bytes--
    MOV x0, #8
    ADD sp, sp, x0
    // Stack pointer updated
    // --End For CLASSIC--
    // --Print statement--
    // --Load variable impares--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: Números impares:--
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
    // StringArray[9] = 109
    MOV w0, #109
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 112
    MOV w0, #112
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 97
    MOV w0, #97
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
    // StringArray[14] = 115
    MOV w0, #115
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
    LDR x0, [SP], #8
    MOV x0, x0
    BL print_integer
    //print newline
    BL print_newline
    // --If statement--
    // --Evaluating condition--
    // --Equality--
    // --Load variable impares--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #24
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L126
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L127
    L126:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L127:
    LDR x0, [SP], #8
    CBZ x0, L128
    // --Block Stmt--
    // --Assignment to puntosContinue--
    // --Add/Subtract--
    // --Load variable puntosContinue--
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
    // --String value: OK Continue en for tipo while: correcto--
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
    // StringArray[3] = 67
    MOV w0, #67
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 110
    MOV w0, #110
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
    // StringArray[8] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 117
    MOV w0, #117
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
    // StringArray[12] = 101
    MOV w0, #101
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
    // StringArray[15] = 102
    MOV w0, #102
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
    // StringArray[18] = 32
    MOV w0, #32
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
    // StringArray[24] = 119
    MOV w0, #119
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 104
    MOV w0, #104
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 105
    MOV w0, #105
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
    B L129
    L128:
    // --Block Stmt--
    // --Print statement--
    // --String value: X Continue en for tipo while: incorrecto--
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
    // StringArray[2] = 67
    MOV w0, #67
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 110
    MOV w0, #110
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
    // StringArray[7] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 101
    MOV w0, #101
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
    // StringArray[14] = 102
    MOV w0, #102
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
    // StringArray[23] = 119
    MOV w0, #119
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[24] = 104
    MOV w0, #104
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[25] = 105
    MOV w0, #105
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
    L129:
    // --Print statement--
    // --String value: \nContinue en for clásico--
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
    // StringArray[2] = 67
    MOV w0, #67
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 110
    MOV w0, #110
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
    // StringArray[7] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 101
    MOV w0, #101
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
    // StringArray[14] = 102
    MOV w0, #102
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
    // StringArray[18] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 225
    MOV w0, #225
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
    // --Variable Declaration--
    // --Integer value--
    MOV x0, #0
    STR x0, [SP, #-8]!
    // --For CLASSIC--
    // --Variable Declaration--
    // --Integer value--
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L131
    L130:
    // --For CLASSIC body--
    // --Block Stmt--
    // --If statement--
    // --Evaluating condition--
    // --Equality--
    // --Multiply/Divide/Modulo--
    // --Load variable i--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #2
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    CMP x0, #0
    BEQ L134
    SDIV x2, x1, x0
    MUL x2, x2, x0
    SUB x0, x1, x2
    B L135
    L134:
    // --Modulo by zero error--
    MOV x0, #0
    L135:
    // --Push Result--
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
    BNE L136
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L137
    L136:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L137:
    LDR x0, [SP], #8
    CBZ x0, L138
    // --Block Stmt--
    // --Continue statement--
    B L133
    L138:
    // --Assignment to pares--
    // --Add/Subtract--
    // --Load variable pares--
    MOV x0, #8
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Load variable i--
    MOV x0, #8
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
    MOV x1, #16
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Pop 8 bytes--
    MOV x0, #8
    ADD sp, sp, x0
    // Stack pointer updated
    L133:
    // --For CLASSIC increment--
    // --++ operator for i--
    MOV x0, #0
    ADD x0, sp, x0
    STR x0, [SP, #-8]!
    LDR x1, [x0, #0]
    // --Incremento de entero--
    ADD x1, x1, #1
    LDR x0, [SP], #8
    STR x1, [x0, #0]
    STR x1, [SP, #-8]!
    LDR x0, [SP], #8
    L131:
    // --For condition--
    // --Relational--
    // --Load variable i--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
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
    BLT L139
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L140
    L139:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L140:
    LDR x0, [SP], #8
    CMP x0, #0
    BEQ L132
    B L130
    L132:
    // --Pop 8 bytes--
    MOV x0, #8
    ADD sp, sp, x0
    // Stack pointer updated
    // --End For CLASSIC--
    // --Print statement--
    // --Load variable pares--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: Números pares:--
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
    BL print_integer
    //print newline
    BL print_newline
    // --If statement--
    // --Evaluating condition--
    // --Equality--
    // --Load variable pares--
    MOV x0, #0
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #14
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    // --Integer equality comparison--
    CMP x1, x0
    BEQ L141
    MOV x0, #0
    STR x0, [SP, #-8]!
    B L142
    L141:
    MOV x0, #1
    STR x0, [SP, #-8]!
    L142:
    LDR x0, [SP], #8
    CBZ x0, L143
    // --Block Stmt--
    // --Assignment to puntosContinue--
    // --Add/Subtract--
    // --Load variable puntosContinue--
    MOV x0, #16
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Integer value--
    MOV x0, #2
    STR x0, [SP, #-8]!
    // --Pop Values R--
    LDR x0, [SP], #8
    // --Pop Values L--
    LDR x1, [SP], #8
    ADD x0, x0, x1
    // --Push Result--
    STR x0, [SP, #-8]!
    LDR x0, [SP], #8
    MOV x1, #24
    ADD x1, sp, x1
    STR x0, [x1, #0]
    STR x0, [SP, #-8]!
    // --Pop para limpiar--
    LDR x0, [SP], #8
    // --Print statement--
    // --String value: OK Continue en for clásico: correcto--
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
    // StringArray[3] = 67
    MOV w0, #67
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[5] = 110
    MOV w0, #110
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
    // StringArray[8] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 117
    MOV w0, #117
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
    // StringArray[12] = 101
    MOV w0, #101
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
    // StringArray[15] = 102
    MOV w0, #102
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
    // StringArray[20] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[21] = 225
    MOV w0, #225
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
    // StringArray[26] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 99
    MOV w0, #99
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
    // StringArray[31] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[32] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[33] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[34] = 116
    MOV w0, #116
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[35] = 111
    MOV w0, #111
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
    // --Pop 8 bytes--
    MOV x0, #8
    ADD sp, sp, x0
    // Stack pointer updated
    B L144
    L143:
    // --Block Stmt--
    // --Print statement--
    // --String value: X Continue en for clásico: incorrecto--
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
    // StringArray[2] = 67
    MOV w0, #67
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 110
    MOV w0, #110
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
    // StringArray[7] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[10] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[11] = 101
    MOV w0, #101
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
    // StringArray[14] = 102
    MOV w0, #102
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
    // StringArray[18] = 99
    MOV w0, #99
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[19] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[20] = 225
    MOV w0, #225
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
    // StringArray[25] = 58
    MOV w0, #58
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[26] = 32
    MOV w0, #32
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[27] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[28] = 110
    MOV w0, #110
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
    L144:
    // --Assignment to puntos--
    // --Add/Subtract--
    // --Add/Subtract--
    // --Add/Subtract--
    // --Add/Subtract--
    // --Add/Subtract--
    // --Load variable puntosEntornos--
    MOV x0, #144
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --Load variable puntosIfElse--
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
    // --Load variable puntosForWhile--
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
    // --Load variable puntosForClasico--
    MOV x0, #72
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
    // --Load variable puntosBreak--
    MOV x0, #64
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
    // --Load variable puntosContinue--
    MOV x0, #56
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
    MOV x1, #192
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
    // --Load variable puntosEntornos--
    MOV x0, #192
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: | Manejo de entornos       | --
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
    // StringArray[12] = 101
    MOV w0, #101
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 110
    MOV w0, #110
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
    // StringArray[16] = 114
    MOV w0, #114
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[17] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[18] = 111
    MOV w0, #111
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
    // --Load variable puntosIfElse--
    MOV x0, #160
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: | If / Else                | --
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
    // StringArray[2] = 73
    MOV w0, #73
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[3] = 102
    MOV w0, #102
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
    // StringArray[7] = 69
    MOV w0, #69
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 115
    MOV w0, #115
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
    // --String value:     | 4     |--
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
    // StringArray[6] = 52
    MOV w0, #52
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
    // --Load variable puntosForWhile--
    MOV x0, #152
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: | For Tipo While           | --
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
    // StringArray[2] = 70
    MOV w0, #70
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
    // StringArray[6] = 84
    MOV w0, #84
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
    // StringArray[11] = 87
    MOV w0, #87
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[12] = 104
    MOV w0, #104
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[13] = 105
    MOV w0, #105
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[14] = 108
    MOV w0, #108
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
    // --Load variable puntosForClasico--
    MOV x0, #96
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: | For Clásico              | --
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
    // StringArray[2] = 70
    MOV w0, #70
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
    // StringArray[6] = 67
    MOV w0, #67
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[7] = 108
    MOV w0, #108
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 225
    MOV w0, #225
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 115
    MOV w0, #115
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
    // --Load variable puntosBreak--
    MOV x0, #80
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: | Break                    | --
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
    // StringArray[2] = 66
    MOV w0, #66
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
    // StringArray[5] = 97
    MOV w0, #97
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[6] = 107
    MOV w0, #107
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
    // --Load variable puntosContinue--
    MOV x0, #64
    ADD x0, sp, x0
    LDR x0, [x0, #0]
    STR x0, [SP, #-8]!
    // --String value: | Continue                 | --
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
    // StringArray[3] = 111
    MOV w0, #111
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[4] = 110
    MOV w0, #110
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
    // StringArray[7] = 110
    MOV w0, #110
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[8] = 117
    MOV w0, #117
    STRB w0, [x10]
    MOV x0, #1
    ADD x10, x10, x0
    // StringArray[9] = 101
    MOV w0, #101
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
    // --Print statement--
    // --String value:    | 25    |--
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
    MOV x0, #200
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
    
newline_char: .ascii "\n"
space_char: .ascii " "
minus_sign: .ascii "-"
