	.intel_syntax noprefix
	.section .data

	.section .text
	.global AND_FRAG #makes AND_FRAG a global variable
AND_FRAG:
	AND rax, QWORD PTR [rbx] #used the and command on rax and the address of rbx
	jmp done_cond #jumps to the done condition
done_cond: #this is the done condution
	add rbx, 8 #updates rbx
	int3
	
