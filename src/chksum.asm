extern tmp_rsp
extern memchk_flags_chksum	

cksum_flags:
	xchg rsp, [rel tmp_rsp]
	pushf
	xchg rax, [rsp]
	add eax, [rel memchk_flags_chksum]
	ror eax, 1
	mov [rel memchk_flags_chksum], eax
	pop rax
	xchg rsp, [rel tmp_rsp]
	
