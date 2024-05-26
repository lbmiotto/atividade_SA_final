        AREA    Bhaskara, CODE, READONLY
        EXPORT  __main

__main
        ; Definir os valores de a, b, c
        LDR     R0, =2          ; a
        LDR     R1, =-3         ; b
        LDR     R2, =1          ; c

        ; Calcular b^2
        MUL     R3, R1, R1      ; R3 = b^2

        ; Calcular 4ac
        LDR     R4, =4          ; Constante 4
        MUL     R5, R0, R2      ; R5 = a * c
        MUL     R5, R5, R4      ; R5 = 4 * a * c

        ; Calcular b^2 - 4ac
        SUB     R6, R3, R5      ; R6 = b^2 - 4ac

        ; Calcular sqrt(b^2 - 4ac)
        ; Assumindo que sqrt_loop foi definido conforme anteriormente:
        MOV     R7, #0          ; Inicializa R7 (x)
        MOV     R8, #1          ; Inicializa R8 (delta)

sqrt_loop_bhaskara
        ADD     R7, R7, R8      ; x = x + delta
        CMP     R7, R6          ; Comparar x com (b^2 - 4ac)
        BGT     sqrt_done_bhaskara
        ADD     R8, R8, #2      ; delta = delta + 2
        B       sqrt_loop_bhaskara

sqrt_done_bhaskara
        SUB     R7, R7, R8      ; Ajusta o resultado para a última iteração válida

        ; Calcular -b
        RSBS    R9, R1, #0      ; R9 = -b

        ; Calcular 2a
        LSL     R10, R0, #1     ; R10 = 2 * a

        ; Calcular (-b + sqrt(b^2 - 4ac)) / 2a
        ADD     R11, R9, R7     ; R11 = -b + sqrt(b^2 - 4ac)
        UDIV    R12, R11, R10   ; R12 = (-b + sqrt(b^2 - 4ac)) / 2a

        ; Calcular (-b - sqrt(b^2 - 4ac)) / 2a
        SUB     R11, R9, R7     ; R11 = -b - sqrt(b^2 - 4ac)
        UDIV    R13, R11, R10   ; R13 = (-b - sqrt(b^2 - 4ac)) / 2a

        ; As raízes estão em R12 e R13
        BX      LR

        END
