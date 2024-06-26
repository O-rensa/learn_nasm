section .data
	list DB 1, 2, 3, 4 ; list of bytes

section .text

global _start
	_start:
		MOV al, 0 ; this will serve as index
		MOV cl, 0 ; the sum of all the value of the list will be stored here

	; loop definition
	loop:
		MOV bl, [list + eax] ; this will serve as the iterator
		ADD cl, bl ; Add the value of iterator to cl
		INC al ; ADD al,1 could also be used. This means the iterator is incremented
		CMP al, 4 ; check if al == 4
		JE end	; if equal then end
		JMP loop ; else loop again
	
	; end definition
	end: 
		MOV al, 0 ; clean up codes
		MOV bl, 0
		MOV cl, 0
		INT 80h

