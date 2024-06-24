section .text

	global _start
		_start:
			MOV al, 0xff ; value of this is 255 and is max
			MOV bl, 0x02 ; value of this is 2
			MUL bl ; register a is special purpose register,
			; what the code tells us is that multiply value between al and bl
			; then store it on al
			; MUL keyword will always multiply any register to register a
			; then store it on registera
			INT 80h
