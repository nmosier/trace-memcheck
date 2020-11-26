
indcache:
	pushf
	push rax
	;; compute destination address into RAX
	push rcx
	push rdx
	lea rcx, [rel .cache]
	lea rdx, [rel .cache_end]
.loop:
	cmp rax, [rcx]
	je .match
	cmp rcx, rdx
	jne .loop
.bkpt:
	int3
.match:
	pop rdx
	pop rcx
	pop rax
	popf
	;; TODO
.cache:
	dq 0, 0
.cache_end:
