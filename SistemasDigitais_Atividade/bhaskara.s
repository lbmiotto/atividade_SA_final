        AREA    bhaskara, CODE, READONLY
        EXPORT  __main

__main
        LDR     R0, =2
        LDR     R1, =-3
        LDR     R2, =1

        MUL     R3, R1, R1

        LDR     R4, =4
        MUL     R5, R0, R2
        MUL     R5, R5, R4

        SUB     R6, R3, R5

        MOV     R7, #0
        MOV     R8, #1

raiz_loop_bhaskara
        ADD     R7, R7, R8
        CMP     R7, R6
        BGT     raiz_pronto_bhaskara
        ADD     R8, R8, #2
        B       raiz_loop_bhaskara

raiz_pronto_bhaskara
        SUB     R7, R7, R8

        RSBS    R9, R1, #0

        LSL     R10, R0, #1

        ADD     R11, R9, R7
        UDIV    R12, R11, R10

        SUB     R11, R9, R7
        UDIV    R13, R11, R10

        BX      LR

        END
