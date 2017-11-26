# PG_Parte1
    MOV		R0, #0 ;
    ADD		R4,R0, #2 ;R4 recebe valor de R0 + 2 -  valor de base
    MOV		R5, #4000 ; memoria a partir da qual valores serão armazenados
    STR		R4,[R5, #0] ; armazenar valor de base no endereço 4000

		

		LSL		R4, R4, #1	; R4 = R4*2 (PG com razão 2)
    ADD		R5, R5, #4	; deslocamento do endereço de memória em 32 bits
		STR		R8, [R5, #0]	; resultado da PG armazenado no próximo endereço de memória deslocado
		TST		R8, R6		; teste/verificar se o resultado da PG é menor que o valor de R6
    
