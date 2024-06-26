extern printf ; external function printf
extern exit ; external function exit

section .data
	msg DD "Hello World!",0 ; the , 0 serves as null terminator
	fmt DB "Output is : %s",10,0 ; the ,10 serves as new line

section .text
global main
	main:
		; arguments for printf(fmt, msg)
		; but since stack is First In Last Out
		; in order from print it to work
		; stack should pop first the msg, then the fmt next
		PUSH msg ; push msg to the stack
		PUSH fmt ; push fmt to the stack
		CALL printf ; call printf and pop the stack

		; calling function exit(int)
		PUSH 1
		CALL exit 
