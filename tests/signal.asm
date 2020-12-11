extern print_sp
global fn
%define OFFSET 129
fn:
	push rsp
	mov rbp, rsp
	call print_sp
	mov dword [rsp - OFFSET], 42
	int3
	mov eax, dword [rsp - OFFSET]
	leave
	ret

global get_sp
get_sp:
	mov rax, rsp
	ret
