BITS 64
SECTION .text
EXTERN rsb_ptr
EXTERN rsb_begin
EXTERN rsb_end

ret_:
	xchg rax, [rsp]
	pushf 			; NEW
	push rcx
	mov rcx, [rel rsb_ptr]
	cmp rcx, [rel rsb_begin]
	je .mismatch
	add qword [rel rsb_ptr], 16
	cmp rax, [rcx]
	jne .mismatch
	mov rax, [rcx + 8]
	pop rcx
	popf 			; NEW
	xchg rax, [rsp]
	ret
.mismatch:
	pop rcx
	popf 			; NEW
	xchg rax, [rsp]
	int3

	
