	.global main

rec:
	cmpq %rdi, 0
	je rec.done
	dec %rdi
	inc %rax
	call rec
rec.done:
	ret
	
main:
	mov %rax, 0
	jmp rec
