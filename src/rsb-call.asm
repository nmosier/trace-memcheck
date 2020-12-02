BITS 64

SECTION .text

EXTERN rsb_ptr
EXTERN rsb_end
EXTERN new_ra
EXTERN orig_ra
EXTERN tmp_rsp

%if 0
call_relbrd:
	pushf
	push rax
	mov rax, rsp
	mov rsp, [rel rsb_ptr]
	cmp rsp, [rel rsb_end]
	je .after_entry
	push qword [rel new_ra]
	push qword [rel orig_ra]
	mov [rel rsb_ptr], rsp
.after_entry:
	mov rsp, rax
	pop rax
	popf
%else

call:
	xchg rsp, [rel tmp_rsp]
	pushf
	xchg rsp, [rel rsb_ptr]
	cmp rsp, [rel rsb_end]
	je .after
	push qword [rel new_ra]
	push qword [rel orig_ra]
.after:
	xchg rsp, [rel rsb_ptr]
	popf
	xchg rsp, [rel tmp_rsp]
	
%endif
