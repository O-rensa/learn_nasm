section .data
	num1 DB 9
	num2 DB 5	

section .text
	global _start

	_start:
		MOV al,[num1]
		MOV bl,[num2]
		MOV ecx, 1
		INT 80h
