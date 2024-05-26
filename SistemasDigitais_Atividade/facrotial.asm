        AREA    Factorial, CODE, READONLY
        EXPORT  __main

__main
        LDR     R0, =5           ; Número para calcular o fatorial
        MOV     R1, #1           ; Inicializa o resultado com 1

factorial_loop
        CMP     R0, #1           ; Se R0 <= 1, termine
        BLE     factorial_done   ; Se menor ou igual a 1, termine
        MUL     R1, R1, R0       ; resultado = resultado * número
        SUB     R0, R0, #1       ; número = número - 1
        B       factorial_loop   ; Repete o loop

factorial_done
        BX      LR               ; Retorna da função

        END
