section .text

global _start
	_start:
		MOV eax, 0b1010
		SHR eax, 1 ; SHR (Shift Right) 1 step, means 0b1010 --> 0b0101, then store on eax
		MOV eax, 0b0101
		SHL eax, 1 ; SHL (Shift Left) 1 step, means 0b0101 --> 0b1010, then store on eax
		INT 80h
		
		; SHR is equivalent to dividing by 2
		; SHL is equivalent to multiplying by 2
		; SAR shift right unsigned
		; SAL shift left unsigned
