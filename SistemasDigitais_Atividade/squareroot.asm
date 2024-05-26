        AREA    SquareRoot, CODE, READONLY
        EXPORT  __main

__main
        LDR     R0, =16          ; Número para calcular a raiz quadrada
        MOV     R1, #0           ; Inicializa R1 (x)
        MOV     R2, #1           ; Inicializa R2 (delta)

sqrt_loop
        ADD     R1, R1, R2       ; x = x + delta
        CMP     R1, R0           ; Comparar x com o número
        BGT     sqrt_done        ; Se x > número, termine
        ADD     R2, R2, #2       ; delta = delta + 2
        B       sqrt_loop        ; Repete o loop

sqrt_done
        SUB     R1, R1, R2       ; Ajusta o resultado para a última iteração válida
        BX      LR               ; Retorna da função

        END
