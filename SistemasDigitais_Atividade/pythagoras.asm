        AREA    Pythagoras, CODE, READONLY
        EXPORT  __main

__main
        ; Definir os valores de a e b
        LDR     R0, =3          ; a
        LDR     R1, =4          ; b

        ; Calcular a^2
        MUL     R2, R0, R0      ; R2 = a^2

        ; Calcular b^2
        MUL     R3, R1, R1      ; R3 = b^2

        ; Calcular a^2 + b^2
        ADD     R4, R2, R3      ; R4 = a^2 + b^2

        ; Calcular sqrt(a^2 + b^2)
        ; Assumindo que sqrt_loop foi definido conforme anteriormente:
        MOV     R5, #0          ; Inicializa R5 (x)
        MOV     R6, #1          ; Inicializa R6 (delta)

sqrt_loop_pythagoras
        ADD     R5, R5, R6      ; x = x + delta
        CMP     R5, R4          ; Comparar x com (a^2 + b^2)
        BGT     sqrt_done_pythagoras
        ADD     R6, R6, #2      ; delta = delta + 2
        B       sqrt_loop_pythagoras

sqrt_done_pythagoras
        SUB     R5, R5, R6      ; Ajusta o resultado para a última iteração válida

        ; O comprimento da hipotenusa está em R5
        BX      LR

        END
