	EXTERN orig0, new0
	EXTERN origN, newN

indcache:
	pushf
	push rax
	;; compute dest into RAX
	cmp rax, [rel orig0]
	je .match0
	;; ...
	cmp rax, [rel origN]
	je .matchN
	;;
	int3			; bkpt
	
.match0:
	pop rax
	popf
	jmp new0

.matchN:
	pop rax
	popf
	jmp newN
