        AREA    raiz, CODE, READONLY
        EXPORT  __main

__main
        LDR     R0, =16
        MOV     R1, #0
        MOV     R2, #1

raiz_loop
        ADD     R1, R1, R2
        CMP     R1, R0
        BGT     raiz_pronto
        ADD     R2, R2, #2
        B       raiz_loop

raiz_pronto
        SUB     R1, R1, R2
        BX      LR

        END
