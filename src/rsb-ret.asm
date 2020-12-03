BITS 64
SECTION .text
EXTERN rsb_ptr
EXTERN rsb_begin
EXTERN rsb_end
EXTERN tmp_rsp
EXTERN tmp_0

%if 0
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

	
%else

ret:
	xchg rax, [rsp] 	; get actual return address into RAX
	xchg rsp, [rel tmp_rsp] ; real stack -> tmp stack
	pushf
	push rcx
	xchg rsp, [rel rsb_ptr] ; tmp stack -> RSB stack
	cmp rsp, [rel rsb_begin]
	je .cleanup
	pop rcx
	cmp rax, rcx
	pop rcx
	je .cleanup
	lea rcx, [rel .bkpt] 	; mismatch, so jump to breakpoint
.cleanup:
	mov [rel tmp_0], rcx	; save return address
	xchg rsp, [rel rsb_ptr] ; RSB stack -> tmp stack
	pop rcx
	popf
	xchg rsp, [rel tmp_rsp] ; tmp stack -> real stack
	xchg rax, [rsp]
	lea rsp, [rsp + 8]	; pop (w/o modifying flags)
	jmp [rel tmp_0]
.bkpt:
	lea rsp, [rsp - 8]
	int3

%endif	
