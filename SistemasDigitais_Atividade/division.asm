        AREA    Division, CODE, READONLY
        EXPORT  __main

__main
        LDR     R0, =20          ; Numerador
        LDR     R1, =4           ; Denominador
        UDIV    R2, R0, R1       ; R2 = R0 / R1 (20 / 4 = 5)
        BX      LR               ; Retorna da função

        END
