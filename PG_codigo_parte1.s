# PG_Parte1
    MOV		R0, #0  
    MOV		R1, #0 				; valor inicial do contador
    ADD		R4,R0, #2 			;R4 recebe valor de R0 + 2 -  valor de base
    MOV		R5, #4000 			; memoria a partir da qual valores serão armazenados
    STR		R4,[R5, #0] 			; armazenar valor de base no endereço 4000
    MOV		R6, #2147483648 		; valor máximo que PG pode alcançar

WHILE
		CMP		R1, #9		; enquanto não tiver 10 valores na PG
		BEQ		DONE
		LSL		R4, R4, #1	; R4 = R4*2 (PG com razão 2)
		ADD		R8, R4, #0	;registrador R8 recebe resultado da PG
		ADD		R1, R1, #1	; (contador soma 1)
   		ADD		R5, R5, #4	; deslocamento do endereço de memória em 32 bits
		STR		R8, [R5, #0]	; resultado da PG armazenado no próximo endereço de memória deslocado
		TST		R8, R6		; teste/verificar se o resultado da PG é menor que o valor de R6
		B		WHILE	
DONE
    
