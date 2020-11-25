BITS 64

	;; NOTE: Currently just works for jmp [rip + x] form

EXTERN orig0
EXTERN new0
EXTERN pointer
EXTERN jmpcache.null_	
	
jmpcache:
	pushf
	push rax
	mov rax, [rel pointer]
	cmp rax, qword [rel orig0]
	jne .mismatch
	pop rax
	popf
	jmp .null_
.mismatch:
	pop rax
	popf
	int3
.null:
	int3
