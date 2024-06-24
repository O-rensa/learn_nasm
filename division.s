section .text

	global _start
		_start:
			MOV eax, 11
			MOV ebx, 2
			DIV ebx ; this code means 11 divided by 2
			; the value 2 will be stored on eax
			; the remainder 1 will be stored on edx
			INT 80h
