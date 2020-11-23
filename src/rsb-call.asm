BITS 64

SECTION .text

EXTERN rsb_ptr
EXTERN rsb_begin
EXTERN rsb_end
EXTERN dst
	
call_relbrd:
	push qword [rel orig_ra]
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
	jmp dst
	
orig_ra: dq 42
new_ra:	 dq 42

