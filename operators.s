section .text

	global _start
		_start:
			MOV eax, 0b1010
			MOV ebx, 0b1100
			AND eax, ebx ; do AND operator and store it on eax
			
			MOV eax, 0b1010
			MOV ebx, 0b1100
			OR eax, ebx ; do OR operator and store it on eax
			
			; the NOT operator reverses the binary
			; example 0b1010 -> 0b0101
			; but in order for this to work flawlessly, NOT should be accompanied by AND
			MOV eax, 0b1010
			NOT eax,
			AND eax, 0x0f ; 0x0f == 0b1111 == 15
			
			; XOR Rules
			; 1 -> 1 == 0
			; 1 -> 0 == 1
			; 0 -> 0 == 0
			
			MOV eax, 0b1010
			MOV ebx, 0b1100
			XOR eax, ebx ; do XOR operator and store it on eax
			INT 80h 	
