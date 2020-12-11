global main
main:
	push rsp
	pop rsp
	mov dword [rsp - 4], 0
	xor eax, eax
	ret
