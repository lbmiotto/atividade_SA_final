        AREA    Multiplication, CODE, READONLY
        EXPORT  __main

__main
        LDR     R0, =6           ; Primeiro número
        LDR     R1, =7           ; Segundo número
        MUL     R2, R0, R1       ; R2 = R0 * R1 (6 * 7 = 42)
        BX      LR               ; Retorna da função

        END
