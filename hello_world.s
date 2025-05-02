.section .data
    arreglo: .word 10, 20, 30, 40, 50
    .equ longitud, (. - arreglo) / 4
    mensaje: .ascii "La suma es: "
    mensaje_len = . - mensaje
    buffer: .space 20
    newline: .ascii "\n"

.section .text
.global _start

_start:
    // Inicializar suma en 0
    mov w3, #0
    
    // Cargar dirección base del arreglo
    adr x0, arreglo
    
    // Inicializar contador
    mov w2, #0
    
bucle:
    // Comparar contador con longitud
    cmp w2, #longitud
    bge fin_bucle
    
    // Calcular dirección del elemento actual
    lsl w4, w2, #2           // w4 = índice * 4 (tamaño de word)
    add x1, x0, x4           // x1 = dirección base + offset
    
    // Cargar valor y sumarlo al acumulador
    ldr w5, [x1]
    add w3, w3, w5
    
    // Incrementar contador
    add w2, w2, #1
    
    // Repetir bucle
    b bucle
    
fin_bucle:
    // La suma está en w3
    // Primero imprimimos el mensaje "La suma es: "
    mov x0, #1               // STDOUT
    adr x1, mensaje          // Dirección del mensaje
    mov x2, #mensaje_len     // Longitud del mensaje
    mov x8, #64              // write syscall
    svc #0

    // Convertir el valor en w3 a ASCII
    mov w0, w3               // Mover el resultado a w0
    adr x1, buffer           // Buffer para la cadena
    add x1, x1, #19          // Comenzar desde el final del buffer
    mov w2, #0               // Contador de dígitos
    
    // Asegurarnos de terminar con un caracter nulo
    mov w4, #0
    strb w4, [x1]
    sub x1, x1, #1
    
    // Cargar constante 10 para divisiones
    mov w6, #10
    
convertir_loop:
    // División por 10
    udiv w4, w0, w6         // w4 = w0 / 10
    msub w5, w4, w6, w0     // w5 = w0 - (w4 * 10) = w0 % 10
    
    // Convertir a ASCII y guardar en el buffer
    add w5, w5, #48          // Convertir a ASCII
    strb w5, [x1]            // Guardar en buffer
    sub x1, x1, #1           // Mover a la siguiente posición
    
    // Incrementar contador de dígitos
    add w2, w2, #1
    
    // Actualizar el dividendo y verificar si seguimos
    mov w0, w4
    cbnz w0, convertir_loop
    
    // Ajustar la dirección al inicio del número
    add x1, x1, #1
    
    // Imprimir el número convertido
    mov x0, #1               // STDOUT
    mov x2, x2               // Longitud (cantidad de dígitos)
    mov x8, #64              // write syscall
    svc #0
    
    // Imprimir salto de línea
    mov x0, #1               // STDOUT
    adr x1, newline          // Dirección del salto de línea
    mov x2, #1               // Longitud (1 caracter)
    mov x8, #64              // write syscall
    svc #0
    
    // Salir del programa
    mov x0, #0               // Código de salida
    mov x8, #93              // exit syscall
    svc #0