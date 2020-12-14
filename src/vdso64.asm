
/lib/modules/4.4.0-101-generic/vdso/vdso64.so:     file format elf64-x86-64


Disassembly of section .text:

00000000000009a0 <vread_tsc>:
 9a0:	55                   	push   rbp
 9a1:	48 89 e5             	mov    rbp,rsp
 9a4:	90                   	nop
 9a5:	90                   	nop
 9a6:	90                   	nop
 9a7:	0f 31                	rdtsc  
 9a9:	48 c1 e2 20          	shl    rdx,0x20
 9ad:	48 09 d0             	or     rax,rdx
 9b0:	48 8b 15 d1 d6 ff ff 	mov    rdx,QWORD PTR [rip+0xffffffffffffd6d1]        # ffffffffffffe088 <vvar_vsyscall_gtod_data+0x8>
 9b7:	48 39 c2             	cmp    rdx,rax
 9ba:	77 02                	ja     9be <vread_tsc+0x1e>
 9bc:	5d                   	pop    rbp
 9bd:	c3                   	ret    
 9be:	48 89 d0             	mov    rax,rdx
 9c1:	5d                   	pop    rbp
 9c2:	c3                   	ret    
 9c3:	0f 1f 00             	nop    DWORD PTR [rax]
 9c6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 9cd:	00 00 00 

00000000000009d0 <vread_pvclock>:
 9d0:	55                   	push   rbp
 9d1:	41 b9 7b 00 00 00    	mov    r9d,0x7b
 9d7:	49 c7 c2 00 f0 7f ff 	mov    r10,0xffffffffff7ff000
 9de:	48 89 e5             	mov    rbp,rsp
 9e1:	53                   	push   rbx
 9e2:	41 0f 03 f1          	lsl    esi,r9w
 9e6:	41 89 f0             	mov    r8d,esi
 9e9:	83 e6 3f             	and    esi,0x3f
 9ec:	41 81 e0 ff 0f 00 00 	and    r8d,0xfff
 9f3:	44 89 c0             	mov    eax,r8d
 9f6:	48 c1 e8 06          	shr    rax,0x6
 9fa:	05 00 02 00 00       	add    eax,0x200
 9ff:	3d 07 02 00 00       	cmp    eax,0x207
 a04:	0f 8f 8f 00 00 00    	jg     a99 <vread_pvclock+0xc9>
 a0a:	c1 e0 0c             	shl    eax,0xc
 a0d:	4c 89 d3             	mov    rbx,r10
 a10:	48 63 f6             	movsxd rsi,esi
 a13:	48 98                	cdqe   
 a15:	48 c1 e6 06          	shl    rsi,0x6
 a19:	48 29 c3             	sub    rbx,rax
 a1c:	48 01 de             	add    rsi,rbx
 a1f:	44 8b 1e             	mov    r11d,DWORD PTR [rsi]
 a22:	90                   	nop
 a23:	90                   	nop
 a24:	90                   	nop
 a25:	0f 31                	rdtsc  
 a27:	48 c1 e2 20          	shl    rdx,0x20
 a2b:	0f be 4e 1c          	movsx  ecx,BYTE PTR [rsi+0x1c]
 a2f:	8b 5e 18             	mov    ebx,DWORD PTR [rsi+0x18]
 a32:	48 09 c2             	or     rdx,rax
 a35:	48 2b 56 08          	sub    rdx,QWORD PTR [rsi+0x8]
 a39:	48 89 d0             	mov    rax,rdx
 a3c:	48 d3 e0             	shl    rax,cl
 a3f:	85 c9                	test   ecx,ecx
 a41:	78 4c                	js     a8f <vread_pvclock+0xbf>
 a43:	89 da                	mov    edx,ebx
 a45:	48 f7 e2             	mul    rdx
 a48:	48 0f ac d0 20       	shrd   rax,rdx,0x20
 a4d:	41 0f 03 d1          	lsl    edx,r9w
 a51:	81 e2 ff 0f 00 00    	and    edx,0xfff
 a57:	41 39 d0             	cmp    r8d,edx
 a5a:	75 86                	jne    9e2 <vread_pvclock+0x12>
 a5c:	8b 16                	mov    edx,DWORD PTR [rsi]
 a5e:	f6 c2 01             	test   dl,0x1
 a61:	0f 85 7b ff ff ff    	jne    9e2 <vread_pvclock+0x12>
 a67:	44 39 da             	cmp    edx,r11d
 a6a:	0f 85 72 ff ff ff    	jne    9e2 <vread_pvclock+0x12>
 a70:	f6 46 1d 01          	test   BYTE PTR [rsi+0x1d],0x1
 a74:	48 8b 56 10          	mov    rdx,QWORD PTR [rsi+0x10]
 a78:	74 21                	je     a9b <vread_pvclock+0xcb>
 a7a:	48 01 d0             	add    rax,rdx
 a7d:	48 39 05 04 d6 ff ff 	cmp    QWORD PTR [rip+0xffffffffffffd604],rax        # ffffffffffffe088 <vvar_vsyscall_gtod_data+0x8>
 a84:	48 0f 43 05 fc d5 ff 	cmovae rax,QWORD PTR [rip+0xffffffffffffd5fc]        # ffffffffffffe088 <vvar_vsyscall_gtod_data+0x8>
 a8b:	ff 
 a8c:	5b                   	pop    rbx
 a8d:	5d                   	pop    rbp
 a8e:	c3                   	ret    
 a8f:	f7 d9                	neg    ecx
 a91:	48 89 d0             	mov    rax,rdx
 a94:	48 d3 e8             	shr    rax,cl
 a97:	eb aa                	jmp    a43 <vread_pvclock+0x73>
 a99:	0f 0b                	ud2    
 a9b:	c7 07 00 00 00 00    	mov    DWORD PTR [rdi],0x0
 aa1:	eb d7                	jmp    a7a <vread_pvclock+0xaa>
 aa3:	0f 1f 00             	nop    DWORD PTR [rax]
 aa6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 aad:	00 00 00 

0000000000000ab0 <__vdso_clock_gettime>:
 ab0:	55                   	push   rbp
 ab1:	48 89 e5             	mov    rbp,rsp
 ab4:	41 56                	push   r14
 ab6:	41 55                	push   r13
 ab8:	41 54                	push   r12
 aba:	53                   	push   rbx
 abb:	4c 8d 6d dc          	lea    r13,[rbp-0x24]
 abf:	89 fb                	mov    ebx,edi
 ac1:	48 83 ec 10          	sub    rsp,0x10
 ac5:	83 ff 01             	cmp    edi,0x1
 ac8:	74 7b                	je     b45 <__vdso_clock_gettime+0x95>
 aca:	0f 8e 1c 01 00 00    	jle    bec <__vdso_clock_gettime+0x13c>
 ad0:	83 ff 05             	cmp    edi,0x5
 ad3:	74 45                	je     b1a <__vdso_clock_gettime+0x6a>
 ad5:	83 ff 06             	cmp    edi,0x6
 ad8:	0f 85 f7 00 00 00    	jne    bd5 <__vdso_clock_gettime+0x125>
 ade:	8b 05 9c d5 ff ff    	mov    eax,DWORD PTR [rip+0xffffffffffffd59c]        # ffffffffffffe080 <vvar_vsyscall_gtod_data>
 ae4:	a8 01                	test   al,0x1
 ae6:	0f 85 33 02 00 00    	jne    d1f <__vdso_clock_gettime+0x26f>
 aec:	48 8b 15 dd d5 ff ff 	mov    rdx,QWORD PTR [rip+0xffffffffffffd5dd]        # ffffffffffffe0d0 <vvar_vsyscall_gtod_data+0x50>
 af3:	48 89 16             	mov    QWORD PTR [rsi],rdx
 af6:	48 8b 15 db d5 ff ff 	mov    rdx,QWORD PTR [rip+0xffffffffffffd5db]        # ffffffffffffe0d8 <vvar_vsyscall_gtod_data+0x58>
 afd:	48 89 56 08          	mov    QWORD PTR [rsi+0x8],rdx
 b01:	3b 05 79 d5 ff ff    	cmp    eax,DWORD PTR [rip+0xffffffffffffd579]        # ffffffffffffe080 <vvar_vsyscall_gtod_data>
 b07:	75 d5                	jne    ade <__vdso_clock_gettime+0x2e>
 b09:	48 83 c4 10          	add    rsp,0x10
 b0d:	31 c0                	xor    eax,eax
 b0f:	5b                   	pop    rbx
 b10:	41 5c                	pop    r12
 b12:	41 5d                	pop    r13
 b14:	41 5e                	pop    r14
 b16:	5d                   	pop    rbp
 b17:	c3                   	ret    
 b18:	f3 90                	pause  
 b1a:	8b 05 60 d5 ff ff    	mov    eax,DWORD PTR [rip+0xffffffffffffd560]        # ffffffffffffe080 <vvar_vsyscall_gtod_data>
 b20:	a8 01                	test   al,0x1
 b22:	75 f4                	jne    b18 <__vdso_clock_gettime+0x68>
 b24:	48 8b 15 95 d5 ff ff 	mov    rdx,QWORD PTR [rip+0xffffffffffffd595]        # ffffffffffffe0c0 <vvar_vsyscall_gtod_data+0x40>
 b2b:	48 89 16             	mov    QWORD PTR [rsi],rdx
 b2e:	48 8b 15 93 d5 ff ff 	mov    rdx,QWORD PTR [rip+0xffffffffffffd593]        # ffffffffffffe0c8 <vvar_vsyscall_gtod_data+0x48>
 b35:	48 89 56 08          	mov    QWORD PTR [rsi+0x8],rdx
 b39:	3b 05 41 d5 ff ff    	cmp    eax,DWORD PTR [rip+0xffffffffffffd541]        # ffffffffffffe080 <vvar_vsyscall_gtod_data>
 b3f:	74 c8                	je     b09 <__vdso_clock_gettime+0x59>
 b41:	eb d7                	jmp    b1a <__vdso_clock_gettime+0x6a>
 b43:	f3 90                	pause  
 b45:	44 8b 25 34 d5 ff ff 	mov    r12d,DWORD PTR [rip+0xffffffffffffd534]        # ffffffffffffe080 <vvar_vsyscall_gtod_data>
 b4c:	41 f6 c4 01          	test   r12b,0x1
 b50:	75 f1                	jne    b43 <__vdso_clock_gettime+0x93>
 b52:	8b 05 2c d5 ff ff    	mov    eax,DWORD PTR [rip+0xffffffffffffd52c]        # ffffffffffffe084 <vvar_vsyscall_gtod_data+0x4>
 b58:	89 45 dc             	mov    DWORD PTR [rbp-0x24],eax
 b5b:	48 8b 05 4e d5 ff ff 	mov    rax,QWORD PTR [rip+0xffffffffffffd54e]        # ffffffffffffe0b0 <vvar_vsyscall_gtod_data+0x30>
 b62:	48 89 06             	mov    QWORD PTR [rsi],rax
 b65:	8b 15 19 d5 ff ff    	mov    edx,DWORD PTR [rip+0xffffffffffffd519]        # ffffffffffffe084 <vvar_vsyscall_gtod_data+0x4>
 b6b:	4c 8b 35 46 d5 ff ff 	mov    r14,QWORD PTR [rip+0xffffffffffffd546]        # ffffffffffffe0b8 <vvar_vsyscall_gtod_data+0x38>
 b72:	83 fa 01             	cmp    edx,0x1
 b75:	0f 84 51 01 00 00    	je     ccc <__vdso_clock_gettime+0x21c>
 b7b:	83 fa 02             	cmp    edx,0x2
 b7e:	0f 84 25 01 00 00    	je     ca9 <__vdso_clock_gettime+0x1f9>
 b84:	31 c0                	xor    eax,eax
 b86:	83 fa 03             	cmp    edx,0x3
 b89:	0f 84 62 01 00 00    	je     cf1 <__vdso_clock_gettime+0x241>
 b8f:	8b 0d 07 d5 ff ff    	mov    ecx,DWORD PTR [rip+0xffffffffffffd507]        # ffffffffffffe09c <vvar_vsyscall_gtod_data+0x1c>
 b95:	44 3b 25 e4 d4 ff ff 	cmp    r12d,DWORD PTR [rip+0xffffffffffffd4e4]        # ffffffffffffe080 <vvar_vsyscall_gtod_data>
 b9c:	75 a7                	jne    b45 <__vdso_clock_gettime+0x95>
 b9e:	4c 01 f0             	add    rax,r14
 ba1:	48 d3 e8             	shr    rax,cl
 ba4:	48 3d ff c9 9a 3b    	cmp    rax,0x3b9ac9ff
 baa:	0f 86 3a 01 00 00    	jbe    cea <__vdso_clock_gettime+0x23a>
 bb0:	31 d2                	xor    edx,edx
 bb2:	48 2d 00 ca 9a 3b    	sub    rax,0x3b9aca00
 bb8:	83 c2 01             	add    edx,0x1
 bbb:	48 3d ff c9 9a 3b    	cmp    rax,0x3b9ac9ff
 bc1:	77 ef                	ja     bb2 <__vdso_clock_gettime+0x102>
 bc3:	48 01 16             	add    QWORD PTR [rsi],rdx
 bc6:	48 89 46 08          	mov    QWORD PTR [rsi+0x8],rax
 bca:	8b 45 dc             	mov    eax,DWORD PTR [rbp-0x24]
 bcd:	85 c0                	test   eax,eax
 bcf:	0f 85 34 ff ff ff    	jne    b09 <__vdso_clock_gettime+0x59>
 bd5:	48 63 fb             	movsxd rdi,ebx
 bd8:	b8 e4 00 00 00       	mov    eax,0xe4
 bdd:	0f 05                	syscall 
 bdf:	48 83 c4 10          	add    rsp,0x10
 be3:	5b                   	pop    rbx
 be4:	41 5c                	pop    r12
 be6:	41 5d                	pop    r13
 be8:	41 5e                	pop    r14
 bea:	5d                   	pop    rbp
 beb:	c3                   	ret    
 bec:	85 ff                	test   edi,edi
 bee:	4c 8d 6d dc          	lea    r13,[rbp-0x24]
 bf2:	75 e1                	jne    bd5 <__vdso_clock_gettime+0x125>
 bf4:	44 8b 25 85 d4 ff ff 	mov    r12d,DWORD PTR [rip+0xffffffffffffd485]        # ffffffffffffe080 <vvar_vsyscall_gtod_data>
 bfb:	41 f6 c4 01          	test   r12b,0x1
 bff:	0f 85 13 01 00 00    	jne    d18 <__vdso_clock_gettime+0x268>
 c05:	8b 05 79 d4 ff ff    	mov    eax,DWORD PTR [rip+0xffffffffffffd479]        # ffffffffffffe084 <vvar_vsyscall_gtod_data+0x4>
 c0b:	89 45 dc             	mov    DWORD PTR [rbp-0x24],eax
 c0e:	48 8b 05 93 d4 ff ff 	mov    rax,QWORD PTR [rip+0xffffffffffffd493]        # ffffffffffffe0a8 <vvar_vsyscall_gtod_data+0x28>
 c15:	48 89 06             	mov    QWORD PTR [rsi],rax
 c18:	8b 15 66 d4 ff ff    	mov    edx,DWORD PTR [rip+0xffffffffffffd466]        # ffffffffffffe084 <vvar_vsyscall_gtod_data+0x4>
 c1e:	4c 8b 35 7b d4 ff ff 	mov    r14,QWORD PTR [rip+0xffffffffffffd47b]        # ffffffffffffe0a0 <vvar_vsyscall_gtod_data+0x20>
 c25:	83 fa 01             	cmp    edx,0x1
 c28:	0f 84 ad 00 00 00    	je     cdb <__vdso_clock_gettime+0x22b>
 c2e:	83 fa 02             	cmp    edx,0x2
 c31:	74 56                	je     c89 <__vdso_clock_gettime+0x1d9>
 c33:	31 c0                	xor    eax,eax
 c35:	83 fa 03             	cmp    edx,0x3
 c38:	0f 84 c5 00 00 00    	je     d03 <__vdso_clock_gettime+0x253>
 c3e:	8b 0d 58 d4 ff ff    	mov    ecx,DWORD PTR [rip+0xffffffffffffd458]        # ffffffffffffe09c <vvar_vsyscall_gtod_data+0x1c>
 c44:	44 39 25 35 d4 ff ff 	cmp    DWORD PTR [rip+0xffffffffffffd435],r12d        # ffffffffffffe080 <vvar_vsyscall_gtod_data>
 c4b:	75 a7                	jne    bf4 <__vdso_clock_gettime+0x144>
 c4d:	4c 01 f0             	add    rax,r14
 c50:	48 d3 e8             	shr    rax,cl
 c53:	48 3d ff c9 9a 3b    	cmp    rax,0x3b9ac9ff
 c59:	0f 86 8b 00 00 00    	jbe    cea <__vdso_clock_gettime+0x23a>
 c5f:	31 d2                	xor    edx,edx
 c61:	48 2d 00 ca 9a 3b    	sub    rax,0x3b9aca00
 c67:	83 c2 01             	add    edx,0x1
 c6a:	48 3d ff c9 9a 3b    	cmp    rax,0x3b9ac9ff
 c70:	77 ef                	ja     c61 <__vdso_clock_gettime+0x1b1>
 c72:	48 01 16             	add    QWORD PTR [rsi],rdx
 c75:	48 89 46 08          	mov    QWORD PTR [rsi+0x8],rax
 c79:	8b 45 dc             	mov    eax,DWORD PTR [rbp-0x24]
 c7c:	85 c0                	test   eax,eax
 c7e:	0f 84 51 ff ff ff    	je     bd5 <__vdso_clock_gettime+0x125>
 c84:	e9 80 fe ff ff       	jmp    b09 <__vdso_clock_gettime+0x59>
 c89:	8b 05 61 e4 ff ff    	mov    eax,DWORD PTR [rip+0xffffffffffffe461]        # fffffffffffff0f0 <hpet_page+0xf0>
 c8f:	48 2b 05 f2 d3 ff ff 	sub    rax,QWORD PTR [rip+0xffffffffffffd3f2]        # ffffffffffffe088 <vvar_vsyscall_gtod_data+0x8>
 c96:	8b 15 fc d3 ff ff    	mov    edx,DWORD PTR [rip+0xffffffffffffd3fc]        # ffffffffffffe098 <vvar_vsyscall_gtod_data+0x18>
 c9c:	48 23 05 ed d3 ff ff 	and    rax,QWORD PTR [rip+0xffffffffffffd3ed]        # ffffffffffffe090 <vvar_vsyscall_gtod_data+0x10>
 ca3:	48 0f af c2          	imul   rax,rdx
 ca7:	eb 95                	jmp    c3e <__vdso_clock_gettime+0x18e>
 ca9:	8b 05 41 e4 ff ff    	mov    eax,DWORD PTR [rip+0xffffffffffffe441]        # fffffffffffff0f0 <hpet_page+0xf0>
 caf:	48 2b 05 d2 d3 ff ff 	sub    rax,QWORD PTR [rip+0xffffffffffffd3d2]        # ffffffffffffe088 <vvar_vsyscall_gtod_data+0x8>
 cb6:	8b 15 dc d3 ff ff    	mov    edx,DWORD PTR [rip+0xffffffffffffd3dc]        # ffffffffffffe098 <vvar_vsyscall_gtod_data+0x18>
 cbc:	48 23 05 cd d3 ff ff 	and    rax,QWORD PTR [rip+0xffffffffffffd3cd]        # ffffffffffffe090 <vvar_vsyscall_gtod_data+0x10>
 cc3:	48 0f af c2          	imul   rax,rdx
 cc7:	e9 c3 fe ff ff       	jmp    b8f <__vdso_clock_gettime+0xdf>
 ccc:	48 89 75 d0          	mov    QWORD PTR [rbp-0x30],rsi
 cd0:	e8 cb fc ff ff       	call   9a0 <vread_tsc>
 cd5:	48 8b 75 d0          	mov    rsi,QWORD PTR [rbp-0x30]
 cd9:	eb d4                	jmp    caf <__vdso_clock_gettime+0x1ff>
 cdb:	48 89 75 d0          	mov    QWORD PTR [rbp-0x30],rsi
 cdf:	e8 bc fc ff ff       	call   9a0 <vread_tsc>
 ce4:	48 8b 75 d0          	mov    rsi,QWORD PTR [rbp-0x30]
 ce8:	eb a5                	jmp    c8f <__vdso_clock_gettime+0x1df>
 cea:	31 d2                	xor    edx,edx
 cec:	e9 d2 fe ff ff       	jmp    bc3 <__vdso_clock_gettime+0x113>
 cf1:	4c 89 ef             	mov    rdi,r13
 cf4:	48 89 75 d0          	mov    QWORD PTR [rbp-0x30],rsi
 cf8:	e8 d3 fc ff ff       	call   9d0 <vread_pvclock>
 cfd:	48 8b 75 d0          	mov    rsi,QWORD PTR [rbp-0x30]
 d01:	eb ac                	jmp    caf <__vdso_clock_gettime+0x1ff>
 d03:	4c 89 ef             	mov    rdi,r13
 d06:	48 89 75 d0          	mov    QWORD PTR [rbp-0x30],rsi
 d0a:	e8 c1 fc ff ff       	call   9d0 <vread_pvclock>
 d0f:	48 8b 75 d0          	mov    rsi,QWORD PTR [rbp-0x30]
 d13:	e9 77 ff ff ff       	jmp    c8f <__vdso_clock_gettime+0x1df>
 d18:	f3 90                	pause  
 d1a:	e9 d5 fe ff ff       	jmp    bf4 <__vdso_clock_gettime+0x144>
 d1f:	f3 90                	pause  
 d21:	e9 b8 fd ff ff       	jmp    ade <__vdso_clock_gettime+0x2e>
 d26:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 d2d:	00 00 00 

0000000000000d30 <__vdso_gettimeofday>:
 d30:	55                   	push   rbp
 d31:	48 89 e5             	mov    rbp,rsp
 d34:	41 56                	push   r14
 d36:	41 55                	push   r13
 d38:	41 54                	push   r12
 d3a:	53                   	push   rbx
 d3b:	48 83 ec 10          	sub    rsp,0x10
 d3f:	48 85 ff             	test   rdi,rdi
 d42:	0f 84 c5 00 00 00    	je     e0d <__vdso_gettimeofday+0xdd>
 d48:	4c 8d 6d dc          	lea    r13,[rbp-0x24]
 d4c:	48 89 fb             	mov    rbx,rdi
 d4f:	44 8b 25 2a d3 ff ff 	mov    r12d,DWORD PTR [rip+0xffffffffffffd32a]        # ffffffffffffe080 <vvar_vsyscall_gtod_data>
 d56:	41 f6 c4 01          	test   r12b,0x1
 d5a:	0f 85 05 01 00 00    	jne    e65 <__vdso_gettimeofday+0x135>
 d60:	8b 05 1e d3 ff ff    	mov    eax,DWORD PTR [rip+0xffffffffffffd31e]        # ffffffffffffe084 <vvar_vsyscall_gtod_data+0x4>
 d66:	89 45 dc             	mov    DWORD PTR [rbp-0x24],eax
 d69:	48 8b 05 38 d3 ff ff 	mov    rax,QWORD PTR [rip+0xffffffffffffd338]        # ffffffffffffe0a8 <vvar_vsyscall_gtod_data+0x28>
 d70:	48 89 03             	mov    QWORD PTR [rbx],rax
 d73:	8b 15 0b d3 ff ff    	mov    edx,DWORD PTR [rip+0xffffffffffffd30b]        # ffffffffffffe084 <vvar_vsyscall_gtod_data+0x4>
 d79:	4c 8b 35 20 d3 ff ff 	mov    r14,QWORD PTR [rip+0xffffffffffffd320]        # ffffffffffffe0a0 <vvar_vsyscall_gtod_data+0x20>
 d80:	83 fa 01             	cmp    edx,0x1
 d83:	0f 84 cd 00 00 00    	je     e56 <__vdso_gettimeofday+0x126>
 d89:	83 fa 02             	cmp    edx,0x2
 d8c:	0f 84 8f 00 00 00    	je     e21 <__vdso_gettimeofday+0xf1>
 d92:	31 c0                	xor    eax,eax
 d94:	83 fa 03             	cmp    edx,0x3
 d97:	0f 84 a7 00 00 00    	je     e44 <__vdso_gettimeofday+0x114>
 d9d:	8b 0d f9 d2 ff ff    	mov    ecx,DWORD PTR [rip+0xffffffffffffd2f9]        # ffffffffffffe09c <vvar_vsyscall_gtod_data+0x1c>
 da3:	44 3b 25 d6 d2 ff ff 	cmp    r12d,DWORD PTR [rip+0xffffffffffffd2d6]        # ffffffffffffe080 <vvar_vsyscall_gtod_data>
 daa:	75 a3                	jne    d4f <__vdso_gettimeofday+0x1f>
 dac:	4c 01 f0             	add    rax,r14
 daf:	48 d3 e8             	shr    rax,cl
 db2:	48 3d ff c9 9a 3b    	cmp    rax,0x3b9ac9ff
 db8:	48 89 c1             	mov    rcx,rax
 dbb:	0f 86 ca 00 00 00    	jbe    e8b <__vdso_gettimeofday+0x15b>
 dc1:	31 d2                	xor    edx,edx
 dc3:	48 89 c8             	mov    rax,rcx
 dc6:	83 c2 01             	add    edx,0x1
 dc9:	48 8d 88 00 36 65 c4 	lea    rcx,[rax-0x3b9aca00]
 dd0:	48 81 f9 ff c9 9a 3b 	cmp    rcx,0x3b9ac9ff
 dd7:	77 ea                	ja     dc3 <__vdso_gettimeofday+0x93>
 dd9:	8b 45 dc             	mov    eax,DWORD PTR [rbp-0x24]
 ddc:	48 01 13             	add    QWORD PTR [rbx],rdx
 ddf:	48 89 4b 08          	mov    QWORD PTR [rbx+0x8],rcx
 de3:	85 c0                	test   eax,eax
 de5:	0f 84 94 00 00 00    	je     e7f <__vdso_gettimeofday+0x14f>
 deb:	48 89 c8             	mov    rax,rcx
 dee:	48 ba cf f7 53 e3 a5 	movabs rdx,0x20c49ba5e353f7cf
 df5:	9b c4 20 
 df8:	48 f7 ea             	imul   rdx
 dfb:	48 89 c8             	mov    rax,rcx
 dfe:	48 c1 f8 3f          	sar    rax,0x3f
 e02:	48 c1 fa 07          	sar    rdx,0x7
 e06:	48 29 c2             	sub    rdx,rax
 e09:	48 89 53 08          	mov    QWORD PTR [rbx+0x8],rdx
 e0d:	31 c0                	xor    eax,eax
 e0f:	48 85 f6             	test   rsi,rsi
 e12:	75 58                	jne    e6c <__vdso_gettimeofday+0x13c>
 e14:	48 83 c4 10          	add    rsp,0x10
 e18:	5b                   	pop    rbx
 e19:	41 5c                	pop    r12
 e1b:	41 5d                	pop    r13
 e1d:	41 5e                	pop    r14
 e1f:	5d                   	pop    rbp
 e20:	c3                   	ret    
 e21:	8b 05 c9 e2 ff ff    	mov    eax,DWORD PTR [rip+0xffffffffffffe2c9]        # fffffffffffff0f0 <hpet_page+0xf0>
 e27:	48 2b 05 5a d2 ff ff 	sub    rax,QWORD PTR [rip+0xffffffffffffd25a]        # ffffffffffffe088 <vvar_vsyscall_gtod_data+0x8>
 e2e:	8b 15 64 d2 ff ff    	mov    edx,DWORD PTR [rip+0xffffffffffffd264]        # ffffffffffffe098 <vvar_vsyscall_gtod_data+0x18>
 e34:	48 23 05 55 d2 ff ff 	and    rax,QWORD PTR [rip+0xffffffffffffd255]        # ffffffffffffe090 <vvar_vsyscall_gtod_data+0x10>
 e3b:	48 0f af c2          	imul   rax,rdx
 e3f:	e9 59 ff ff ff       	jmp    d9d <__vdso_gettimeofday+0x6d>
 e44:	4c 89 ef             	mov    rdi,r13
 e47:	48 89 75 d0          	mov    QWORD PTR [rbp-0x30],rsi
 e4b:	e8 80 fb ff ff       	call   9d0 <vread_pvclock>
 e50:	48 8b 75 d0          	mov    rsi,QWORD PTR [rbp-0x30]
 e54:	eb d1                	jmp    e27 <__vdso_gettimeofday+0xf7>
 e56:	48 89 75 d0          	mov    QWORD PTR [rbp-0x30],rsi
 e5a:	e8 41 fb ff ff       	call   9a0 <vread_tsc>
 e5f:	48 8b 75 d0          	mov    rsi,QWORD PTR [rbp-0x30]
 e63:	eb c2                	jmp    e27 <__vdso_gettimeofday+0xf7>
 e65:	f3 90                	pause  
 e67:	e9 e3 fe ff ff       	jmp    d4f <__vdso_gettimeofday+0x1f>
 e6c:	8b 15 6e d2 ff ff    	mov    edx,DWORD PTR [rip+0xffffffffffffd26e]        # ffffffffffffe0e0 <vvar_vsyscall_gtod_data+0x60>
 e72:	89 16                	mov    DWORD PTR [rsi],edx
 e74:	8b 15 6a d2 ff ff    	mov    edx,DWORD PTR [rip+0xffffffffffffd26a]        # ffffffffffffe0e4 <vvar_vsyscall_gtod_data+0x64>
 e7a:	89 56 04             	mov    DWORD PTR [rsi+0x4],edx
 e7d:	eb 95                	jmp    e14 <__vdso_gettimeofday+0xe4>
 e7f:	b8 60 00 00 00       	mov    eax,0x60
 e84:	48 89 df             	mov    rdi,rbx
 e87:	0f 05                	syscall 
 e89:	eb 89                	jmp    e14 <__vdso_gettimeofday+0xe4>
 e8b:	31 d2                	xor    edx,edx
 e8d:	e9 47 ff ff ff       	jmp    dd9 <__vdso_gettimeofday+0xa9>
 e92:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
 e96:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
 e9d:	00 00 00 

0000000000000ea0 <__vdso_time>:
 ea0:	55                   	push   rbp
 ea1:	48 85 ff             	test   rdi,rdi
 ea4:	48 8b 05 fd d1 ff ff 	mov    rax,QWORD PTR [rip+0xffffffffffffd1fd]        # ffffffffffffe0a8 <vvar_vsyscall_gtod_data+0x28>
 eab:	48 89 e5             	mov    rbp,rsp
 eae:	74 03                	je     eb3 <__vdso_time+0x13>
 eb0:	48 89 07             	mov    QWORD PTR [rdi],rax
 eb3:	5d                   	pop    rbp
 eb4:	c3                   	ret    
 eb5:	90                   	nop
 eb6:	90                   	nop
 eb7:	90                   	nop
 eb8:	90                   	nop
 eb9:	90                   	nop
 eba:	90                   	nop
 ebb:	90                   	nop
 ebc:	90                   	nop
 ebd:	90                   	nop
 ebe:	90                   	nop
 ebf:	90                   	nop

0000000000000ec0 <__vdso_getcpu>:
 ec0:	55                   	push   rbp
 ec1:	b8 7b 00 00 00       	mov    eax,0x7b
 ec6:	48 89 e5             	mov    rbp,rsp
 ec9:	0f 03 c0             	lsl    eax,ax
 ecc:	48 85 ff             	test   rdi,rdi
 ecf:	74 0a                	je     edb <__vdso_getcpu+0x1b>
 ed1:	89 c2                	mov    edx,eax
 ed3:	81 e2 ff 0f 00 00    	and    edx,0xfff
 ed9:	89 17                	mov    DWORD PTR [rdi],edx
 edb:	48 85 f6             	test   rsi,rsi
 ede:	74 05                	je     ee5 <__vdso_getcpu+0x25>
 ee0:	c1 e8 0c             	shr    eax,0xc
 ee3:	89 06                	mov    DWORD PTR [rsi],eax
 ee5:	31 c0                	xor    eax,eax
 ee7:	5d                   	pop    rbp
 ee8:	c3                   	ret    

Disassembly of section .altinstr_replacement:

0000000000000f1d <.altinstr_replacement>:
 f1d:	0f ae f0             	mfence 
 f20:	0f ae e8             	lfence 
 f23:	0f ae f0             	mfence 
 f26:	0f ae e8             	lfence 
