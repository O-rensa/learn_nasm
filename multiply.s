section .text

global _start
	_start:
		MOV al, 5
		MOV bl, 8
		MUL bl
		INT 80h
