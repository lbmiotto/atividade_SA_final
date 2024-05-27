        AREA    pitagoras, CODE, READONLY
        EXPORT  __main

__main
        LDR     R0, =3
        LDR     R1, =4

        MUL     R2, R0, R0

        MUL     R3, R1, R1

        ADD     R4, R2, R3

        MOV     R5, #0
        MOV     R6, #1

raiz_loop_pitagoras
        ADD     R5, R5, R6
        CMP     R5, R4
        BGT     raiz_pronto_pitagoras
        ADD     R6, R6, #2
        B       raiz_loop_pitagoras

raiz_pronto_pitagoras
        SUB     R5, R5, R6

        BX      LR

        END
