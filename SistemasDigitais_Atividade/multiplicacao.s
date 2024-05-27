        AREA    multiplicacao, CODE, READONLY
        EXPORT  __main

__main
        LDR     R0, =6
        LDR     R1, =7
        MUL     R2, R0, R1
        BX      LR

        END
