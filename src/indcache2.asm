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
	pop rax
	popf
	int3			; bkpt
.null:
	int3 			; null
	
.match0:
	pop rax
	popf
	jmp new0
	
	;; ...
	
.matchN:
	pop rax
	popf
	jmp newN
