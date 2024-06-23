section .bss
	num RESB 3 ; reserve 3 bytes of data	
	num2 RESW 3 ; reserve 3 words of data -> 1 word == 2 bytes
	num3 RESD 3 ; reserve 3 double words of data 1 double word == 4 bytes

section .text
	global _start
	
	_start:
		MOV al, 1 ; default value for num address
		MOV [num], al
		MOV [num + 1], al ; address + 1 byte
		MOV [num + 2], al
		
		MOV bx, 2 ; default value for num2 address
		MOV [num2], bx
		MOV [num2 + 2], bx ; address + 2 bytes
		MOV [num2 + 4], bx

		MOV ecx, 3 ; default value for num3 address
		MOV [num3], ecx
		MOV [num3 + 4], ecx ; address + 4 bytes
		MOV [num3 + 8], ecx

		INT 80h
