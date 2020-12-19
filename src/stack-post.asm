%define SHADOW_STACK_SIZE 128
	extern tmp_rsp
	extern fill
	extern prev_sp

stack_post:	
	xchg rsp, [rel tmp_rsp]
	pushf
	push rax
	push rdi
	push rcx

	mov rdi, [rel prev_sp]
	mov rcx, [rel tmp_rsp]
	cmp rdi, rcx
	jl .ready
	xchg rdi, rcx
.ready:
	sub rcx, rdi
	lea rdi, [rdi - SHADOW_STACK_SIZE]
	;; %rdi holds begin SP
	;; %rcx holds size
	mov al, [rel fill]
	cld
	rep stosb 
.done:	
	pop rcx
	pop rdi
	pop rax
	popf
	xchg rsp, [rel tmp_rsp]
