section .text

	global _start
		_start:
			MOV al, 0xff
			MOV bl, 0x09
			IMUL bl ; IMUL means signed multiplication
			; if you use MUL al, 0xff is valued 255
			; if you use IMUL al, 0xff is valued -1
			; this is how you can use IMUL to convert any value to signed value
			; the result will be stored to al register
			INT 80h
