section .data
	list1 DB 1,2,3,4,5,6,7,8,9

section .text
	global _start

	_start:
		MOV al, [list1]
		MOV ebx, 42
		INT 80h
