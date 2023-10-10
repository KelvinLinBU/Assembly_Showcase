	.intel_syntax noprefix
	.section .data

	.section .text
	.global OR_FRAG #makes OR_FRAG a global variable
OR_FRAG: #This is the code for the OR_FRAG
	OR rax, QWORD PTR[rbx] #Or command is run on rax and memory address of rbx
	jmp done_cond #jump to done_cond
done_cond: #this is the done cond
	add rbx, 8 #this updates rbx
	int3
