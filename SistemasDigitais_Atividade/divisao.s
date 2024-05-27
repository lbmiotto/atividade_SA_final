        AREA    divisao, CODE, READONLY
        EXPORT  __main

__main
        LDR     R0, =20
        LDR     R1, =4
        MOV     R2, #0
loop
        CMP     R0, #0
        BEQ     end_loop
        SUBS    R0, R0, R1
        ADDS    R2, R2, #1
        BPL     loop
end_loop
        BX      LR

        END
