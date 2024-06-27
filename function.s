section .text
global main:
	main:
		MOV ecx, 2
		MOV ebx, 3
		CALL addRegisters ; call add registers function and stores the value on ecx
		INT 80h

	addRegisters:
		ADD ecx,ebx
		RET
