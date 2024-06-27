section .text

global main
	main:
		PUSH 4 ; push 4 into the stack (consumes 4 bytes or 32 bit)
		PUSH 3 ; push 3 into the stack	(consumes 4 bytes or 32 bit)
		CALL addTwo ; push RET instruction into the stack (consumes 4 bytes or 32bit)
		MOV ebx, eax
		INT 80h
		
	addTwo:
		PUSH ebp ; push base point into the stack
		MOV ebp, esp ; move the value of esp into ebp
		MOV eax, [ebp + 8] ; this is because 3 is 8 bytes away from ebp
		MOV ebx, [ebp + 12] ; 4 is 12 bytes away from ebp
		ADD eax, ebx ; add the values of eax and ebx then store it on eax
		POP ebp ; remove ebp from top of stack
		RET ; Return to main function

		
		; This is how the stack looks like
		;	| ebp |
		;	| RET | --> 4 bytes away from ebp
		;	|  3  |	--> 8 bytes away from ebp
		;	|  4  | --> 12 bytes away from ebp
	
		
