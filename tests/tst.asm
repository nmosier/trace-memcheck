global main
main:	
	mov dword [rsp - 64], 0
	sub rsp, 128
	call fn
	add rsp, 128
	mov eax, [rsp - 64]
	ret


fn:
	ret
