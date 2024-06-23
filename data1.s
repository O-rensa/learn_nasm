section .data
	num DD 25

section .text
	global _start

	_start:
		MOV eax,[num]
		MOV ebx, 1
		INT 80h
