extern tmp_rsp
extern fill	

%define SHADOW_STACK_SIZE 128

call_pre:	
	xchg rsp, [rel tmp_rsp]
	pushf
	push rdi
	push rcx
	push rax
.init:
	mov rdi, [rel tmp_rsp]
	lea rdi, [rdi - SHADOW_STACK_SIZE]
	mov ecx, SHADOW_STACK_SIZE - 8
	mov al, [rel fill]
.loop:
	rep stosb
.done:
	pop rax
	pop rcx
	pop rdi
	popf
	xchg rsp, [rel tmp_rsp]
