section .text
	global _start
	
	_start:
		MOV al, 3
		MOV bl, 2
		ADD al,bl ; the value of this al register should be 5

		; carry add
		MOV cl, 0b11111111 ; 8bits or 1 byte of data consists of all 1
		MOV dl, 0b0001	; 4 bits with value of 1 stored in 1 byte registry
		ADD cl,dl ; adding the value of cl and dl and storing it on cl
		; the code above however will result to 2 bytes of data
		ADC ch, 0 ; this code tells that the carry from adding cl and dl will be stored on ch
		INT 80h
