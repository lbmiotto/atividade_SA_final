        AREA    fatorial, CODE, READONLY
        EXPORT  __main

__main
        LDR     R0, =5
        MOV     R1, #1

fatorial_loop
        CMP     R0, #1
        BLE     fatorial_pronto
        MUL     R1, R1, R0
        SUB     R0, R0, #1
        B       fatorial_loop

fatorial_pronto
        BX      LR

        END
