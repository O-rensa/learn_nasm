section .text

global _start
	_start:
		MOV eax, 1
		MOV ebx, 2
		CMP eax, ebx ; do operation eax - ebx , and store it on eax
			; eax - -> eax is less than ebx
			; eax + -> eax is greater than ebx
			; eax 0 -> eax is equal to ebx
		JL lesser ; in other languages this is works like "if" operator 
			; JL jump less
			; JG jump greater
			; JZ or JE jump zero or jump equals
			; JLE jump less or equal
			; JGE jump greater or equal
			; JNZ jump not zero
		JMP end ; in other languages, this works like else
	
; lesser definition
	lesser:
		MOV ecx, 1
; end definition
	end:
		INT 80h
	
	
