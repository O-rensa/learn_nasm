section .data
	data0 DD 3.14
	data1 DD 2.5

section .text
global _start
	_start:
		MOVSS xmm0, [data0] ; MOVSS means move scalar single precision
		MOVSS xmm1, [data1]
		UCOMISS xmm0, xmm1 ; UCOMISS means unordered compare scalar single precision
		JA greater ; JA means jump above, JB means jump below
			; JA == JG
			; JB == JL
			; JAE == JGE
			; JBE == JLE
			; JE == JE 
		JMP end 
	; greater definition
	greater:
		MOV al, 1
	
	; end definition
	end:
		INT 80h
