	.intel_syntax noprefix
	.section .data
	.global SUM_POSITIVE
	.global SUM_NEGATIVE
SUM_POSITIVE: #create the SUM_POSITIVE variable
	.quad 0
SUM_NEGATIVE: #create the SUM_NEGATIVE variable
	.quad 0
	
	.section .text
	.global SUM_FRAG #starts at this
	
	
SUM_FRAG: #sum fragment
	cmp QWORD PTR [rbx], 0 #compares rax and sees if it is negative
	jl is_neg #if the above statement is negative, jump to is_neg
	mov rdi, QWORD PTR[rbx]
	add QWORD PTR [SUM_POSITIVE], rdi #adds to SUM_POSITIVE
	jmp done_cond
is_neg: #is_neg condition hits 
	mov rdi, QWORD PTR[rbx]
	add QWORD PTR [SUM_NEGATIVE], rdi #adds to SUM_NEGATIVE
	jmp done_cond
done_cond: #done condition
	add rax, QWORD PTR [rbx] #update rax
	add rbx, 8 #update rbx
	
	int3
	
