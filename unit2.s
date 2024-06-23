section .data
	num1 DB 3 DUP(5) ; another way of reserving data is assigning dummy data to the memory
	; the code above means assigning Duplicate of 5 to 3 bytes	

section .text
	global _start

	_start:
		MOV al, [num1]
		INT 80x
