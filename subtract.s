section .text

	global _start
	
		_start:
			MOV al, 5
			MOV bl, 2
			SUB al,bl ; Subtract bl from al and store it on al
			; the answer should be 3

			MOV cl, 2
			MOV dl, 5
			SUB cl,dl ; answer should be -3
			; the SF on EFLAGS register will show
			INT 80h

