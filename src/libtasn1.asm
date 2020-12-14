
/afs/.ir/users/n/m/nmosier/lib/libtasn1.so.6.6.0:     file format elf64-x86-64


Disassembly of section .init:

0000000000002ab8 <_init>:
    2ab8:	48 83 ec 08          	sub    rsp,0x8
    2abc:	48 8b 05 0d 05 21 00 	mov    rax,QWORD PTR [rip+0x21050d]        # 212fd0 <_DYNAMIC+0x200>
    2ac3:	48 85 c0             	test   rax,rax
    2ac6:	74 05                	je     2acd <_init+0x15>
    2ac8:	e8 73 03 00 00       	call   2e40 <asn1_length_der@plt+0x10>
    2acd:	48 83 c4 08          	add    rsp,0x8
    2ad1:	c3                   	ret    

Disassembly of section .plt:

0000000000002ae0 <asn1_get_length_ber@plt-0x10>:
    2ae0:	ff 35 22 05 21 00    	push   QWORD PTR [rip+0x210522]        # 213008 <_GLOBAL_OFFSET_TABLE_+0x8>
    2ae6:	ff 25 24 05 21 00    	jmp    QWORD PTR [rip+0x210524]        # 213010 <_GLOBAL_OFFSET_TABLE_+0x10>
    2aec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000002af0 <asn1_get_length_ber@plt>:
    2af0:	ff 25 22 05 21 00    	jmp    QWORD PTR [rip+0x210522]        # 213018 <_GLOBAL_OFFSET_TABLE_+0x18>
    2af6:	68 00 00 00 00       	push   0x0
    2afb:	e9 e0 ff ff ff       	jmp    2ae0 <_init+0x28>

0000000000002b00 <__snprintf_chk@plt>:
    2b00:	ff 25 1a 05 21 00    	jmp    QWORD PTR [rip+0x21051a]        # 213020 <_GLOBAL_OFFSET_TABLE_+0x20>
    2b06:	68 01 00 00 00       	push   0x1
    2b0b:	e9 d0 ff ff ff       	jmp    2ae0 <_init+0x28>

0000000000002b10 <free@plt>:
    2b10:	ff 25 12 05 21 00    	jmp    QWORD PTR [rip+0x210512]        # 213028 <_GLOBAL_OFFSET_TABLE_+0x28>
    2b16:	68 02 00 00 00       	push   0x2
    2b1b:	e9 c0 ff ff ff       	jmp    2ae0 <_init+0x28>

0000000000002b20 <asn1_octet_der@plt>:
    2b20:	ff 25 0a 05 21 00    	jmp    QWORD PTR [rip+0x21050a]        # 213030 <_GLOBAL_OFFSET_TABLE_+0x30>
    2b26:	68 03 00 00 00       	push   0x3
    2b2b:	e9 b0 ff ff ff       	jmp    2ae0 <_init+0x28>

0000000000002b30 <asn1_find_node@plt>:
    2b30:	ff 25 02 05 21 00    	jmp    QWORD PTR [rip+0x210502]        # 213038 <_GLOBAL_OFFSET_TABLE_+0x38>
    2b36:	68 04 00 00 00       	push   0x4
    2b3b:	e9 a0 ff ff ff       	jmp    2ae0 <_init+0x28>

0000000000002b40 <strverscmp@plt>:
    2b40:	ff 25 fa 04 21 00    	jmp    QWORD PTR [rip+0x2104fa]        # 213040 <_GLOBAL_OFFSET_TABLE_+0x40>
    2b46:	68 05 00 00 00       	push   0x5
    2b4b:	e9 90 ff ff ff       	jmp    2ae0 <_init+0x28>

0000000000002b50 <strcpy@plt>:
    2b50:	ff 25 f2 04 21 00    	jmp    QWORD PTR [rip+0x2104f2]        # 213048 <_GLOBAL_OFFSET_TABLE_+0x48>
    2b56:	68 06 00 00 00       	push   0x6
    2b5b:	e9 80 ff ff ff       	jmp    2ae0 <_init+0x28>

0000000000002b60 <asn1_der_coding@plt>:
    2b60:	ff 25 ea 04 21 00    	jmp    QWORD PTR [rip+0x2104ea]        # 213050 <_GLOBAL_OFFSET_TABLE_+0x50>
    2b66:	68 07 00 00 00       	push   0x7
    2b6b:	e9 70 ff ff ff       	jmp    2ae0 <_init+0x28>

0000000000002b70 <qsort@plt>:
    2b70:	ff 25 e2 04 21 00    	jmp    QWORD PTR [rip+0x2104e2]        # 213058 <_GLOBAL_OFFSET_TABLE_+0x58>
    2b76:	68 08 00 00 00       	push   0x8
    2b7b:	e9 60 ff ff ff       	jmp    2ae0 <_init+0x28>

0000000000002b80 <asn1_bit_der@plt>:
    2b80:	ff 25 da 04 21 00    	jmp    QWORD PTR [rip+0x2104da]        # 213060 <_GLOBAL_OFFSET_TABLE_+0x60>
    2b86:	68 09 00 00 00       	push   0x9
    2b8b:	e9 50 ff ff ff       	jmp    2ae0 <_init+0x28>

0000000000002b90 <asn1_get_tag_der@plt>:
    2b90:	ff 25 d2 04 21 00    	jmp    QWORD PTR [rip+0x2104d2]        # 213068 <_GLOBAL_OFFSET_TABLE_+0x68>
    2b96:	68 0a 00 00 00       	push   0xa
    2b9b:	e9 40 ff ff ff       	jmp    2ae0 <_init+0x28>

0000000000002ba0 <fclose@plt>:
    2ba0:	ff 25 ca 04 21 00    	jmp    QWORD PTR [rip+0x2104ca]        # 213070 <_GLOBAL_OFFSET_TABLE_+0x70>
    2ba6:	68 0b 00 00 00       	push   0xb
    2bab:	e9 30 ff ff ff       	jmp    2ae0 <_init+0x28>

0000000000002bb0 <stpcpy@plt>:
    2bb0:	ff 25 c2 04 21 00    	jmp    QWORD PTR [rip+0x2104c2]        # 213078 <_GLOBAL_OFFSET_TABLE_+0x78>
    2bb6:	68 0c 00 00 00       	push   0xc
    2bbb:	e9 20 ff ff ff       	jmp    2ae0 <_init+0x28>

0000000000002bc0 <strlen@plt>:
    2bc0:	ff 25 ba 04 21 00    	jmp    QWORD PTR [rip+0x2104ba]        # 213080 <_GLOBAL_OFFSET_TABLE_+0x80>
    2bc6:	68 0d 00 00 00       	push   0xd
    2bcb:	e9 10 ff ff ff       	jmp    2ae0 <_init+0x28>

0000000000002bd0 <__stack_chk_fail@plt>:
    2bd0:	ff 25 b2 04 21 00    	jmp    QWORD PTR [rip+0x2104b2]        # 213088 <_GLOBAL_OFFSET_TABLE_+0x88>
    2bd6:	68 0e 00 00 00       	push   0xe
    2bdb:	e9 00 ff ff ff       	jmp    2ae0 <_init+0x28>

0000000000002be0 <strchr@plt>:
    2be0:	ff 25 aa 04 21 00    	jmp    QWORD PTR [rip+0x2104aa]        # 213090 <_GLOBAL_OFFSET_TABLE_+0x90>
    2be6:	68 0f 00 00 00       	push   0xf
    2beb:	e9 f0 fe ff ff       	jmp    2ae0 <_init+0x28>

0000000000002bf0 <asn1_create_element@plt>:
    2bf0:	ff 25 a2 04 21 00    	jmp    QWORD PTR [rip+0x2104a2]        # 213098 <_GLOBAL_OFFSET_TABLE_+0x98>
    2bf6:	68 10 00 00 00       	push   0x10
    2bfb:	e9 e0 fe ff ff       	jmp    2ae0 <_init+0x28>

0000000000002c00 <snprintf@plt>:
    2c00:	ff 25 9a 04 21 00    	jmp    QWORD PTR [rip+0x21049a]        # 2130a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
    2c06:	68 11 00 00 00       	push   0x11
    2c0b:	e9 d0 fe ff ff       	jmp    2ae0 <_init+0x28>

0000000000002c10 <fputs@plt>:
    2c10:	ff 25 92 04 21 00    	jmp    QWORD PTR [rip+0x210492]        # 2130a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
    2c16:	68 12 00 00 00       	push   0x12
    2c1b:	e9 c0 fe ff ff       	jmp    2ae0 <_init+0x28>

0000000000002c20 <asn1_get_object_id_der@plt>:
    2c20:	ff 25 8a 04 21 00    	jmp    QWORD PTR [rip+0x21048a]        # 2130b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
    2c26:	68 13 00 00 00       	push   0x13
    2c2b:	e9 b0 fe ff ff       	jmp    2ae0 <_init+0x28>

0000000000002c30 <asn1_delete_structure@plt>:
    2c30:	ff 25 82 04 21 00    	jmp    QWORD PTR [rip+0x210482]        # 2130b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
    2c36:	68 14 00 00 00       	push   0x14
    2c3b:	e9 a0 fe ff ff       	jmp    2ae0 <_init+0x28>

0000000000002c40 <memset@plt>:
    2c40:	ff 25 7a 04 21 00    	jmp    QWORD PTR [rip+0x21047a]        # 2130c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
    2c46:	68 15 00 00 00       	push   0x15
    2c4b:	e9 90 fe ff ff       	jmp    2ae0 <_init+0x28>

0000000000002c50 <strncat@plt>:
    2c50:	ff 25 72 04 21 00    	jmp    QWORD PTR [rip+0x210472]        # 2130c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
    2c56:	68 16 00 00 00       	push   0x16
    2c5b:	e9 80 fe ff ff       	jmp    2ae0 <_init+0x28>

0000000000002c60 <fgetc@plt>:
    2c60:	ff 25 6a 04 21 00    	jmp    QWORD PTR [rip+0x21046a]        # 2130d0 <_GLOBAL_OFFSET_TABLE_+0xd0>
    2c66:	68 17 00 00 00       	push   0x17
    2c6b:	e9 70 fe ff ff       	jmp    2ae0 <_init+0x28>

0000000000002c70 <fputc@plt>:
    2c70:	ff 25 62 04 21 00    	jmp    QWORD PTR [rip+0x210462]        # 2130d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
    2c76:	68 18 00 00 00       	push   0x18
    2c7b:	e9 60 fe ff ff       	jmp    2ae0 <_init+0x28>

0000000000002c80 <__strdup@plt>:
    2c80:	ff 25 5a 04 21 00    	jmp    QWORD PTR [rip+0x21045a]        # 2130e0 <_GLOBAL_OFFSET_TABLE_+0xe0>
    2c86:	68 19 00 00 00       	push   0x19
    2c8b:	e9 50 fe ff ff       	jmp    2ae0 <_init+0x28>

0000000000002c90 <memcmp@plt>:
    2c90:	ff 25 52 04 21 00    	jmp    QWORD PTR [rip+0x210452]        # 2130e8 <_GLOBAL_OFFSET_TABLE_+0xe8>
    2c96:	68 1a 00 00 00       	push   0x1a
    2c9b:	e9 40 fe ff ff       	jmp    2ae0 <_init+0x28>

0000000000002ca0 <asn1_strerror@plt>:
    2ca0:	ff 25 4a 04 21 00    	jmp    QWORD PTR [rip+0x21044a]        # 2130f0 <_GLOBAL_OFFSET_TABLE_+0xf0>
    2ca6:	68 1b 00 00 00       	push   0x1b
    2cab:	e9 30 fe ff ff       	jmp    2ae0 <_init+0x28>

0000000000002cb0 <calloc@plt>:
    2cb0:	ff 25 42 04 21 00    	jmp    QWORD PTR [rip+0x210442]        # 2130f8 <_GLOBAL_OFFSET_TABLE_+0xf8>
    2cb6:	68 1c 00 00 00       	push   0x1c
    2cbb:	e9 20 fe ff ff       	jmp    2ae0 <_init+0x28>

0000000000002cc0 <strcmp@plt>:
    2cc0:	ff 25 3a 04 21 00    	jmp    QWORD PTR [rip+0x21043a]        # 213100 <_GLOBAL_OFFSET_TABLE_+0x100>
    2cc6:	68 1d 00 00 00       	push   0x1d
    2ccb:	e9 10 fe ff ff       	jmp    2ae0 <_init+0x28>

0000000000002cd0 <__memcpy_chk@plt>:
    2cd0:	ff 25 32 04 21 00    	jmp    QWORD PTR [rip+0x210432]        # 213108 <_GLOBAL_OFFSET_TABLE_+0x108>
    2cd6:	68 1e 00 00 00       	push   0x1e
    2cdb:	e9 00 fe ff ff       	jmp    2ae0 <_init+0x28>

0000000000002ce0 <strtol@plt>:
    2ce0:	ff 25 2a 04 21 00    	jmp    QWORD PTR [rip+0x21042a]        # 213110 <_GLOBAL_OFFSET_TABLE_+0x110>
    2ce6:	68 1f 00 00 00       	push   0x1f
    2ceb:	e9 f0 fd ff ff       	jmp    2ae0 <_init+0x28>

0000000000002cf0 <memcpy@plt>:
    2cf0:	ff 25 22 04 21 00    	jmp    QWORD PTR [rip+0x210422]        # 213118 <_GLOBAL_OFFSET_TABLE_+0x118>
    2cf6:	68 20 00 00 00       	push   0x20
    2cfb:	e9 e0 fd ff ff       	jmp    2ae0 <_init+0x28>

0000000000002d00 <__stpcpy_chk@plt>:
    2d00:	ff 25 1a 04 21 00    	jmp    QWORD PTR [rip+0x21041a]        # 213120 <_GLOBAL_OFFSET_TABLE_+0x120>
    2d06:	68 21 00 00 00       	push   0x21
    2d0b:	e9 d0 fd ff ff       	jmp    2ae0 <_init+0x28>

0000000000002d10 <malloc@plt>:
    2d10:	ff 25 12 04 21 00    	jmp    QWORD PTR [rip+0x210412]        # 213128 <_GLOBAL_OFFSET_TABLE_+0x128>
    2d16:	68 22 00 00 00       	push   0x22
    2d1b:	e9 c0 fd ff ff       	jmp    2ae0 <_init+0x28>

0000000000002d20 <ungetc@plt>:
    2d20:	ff 25 0a 04 21 00    	jmp    QWORD PTR [rip+0x21040a]        # 213130 <_GLOBAL_OFFSET_TABLE_+0x130>
    2d26:	68 23 00 00 00       	push   0x23
    2d2b:	e9 b0 fd ff ff       	jmp    2ae0 <_init+0x28>

0000000000002d30 <asn1_der_decoding@plt>:
    2d30:	ff 25 02 04 21 00    	jmp    QWORD PTR [rip+0x210402]        # 213138 <_GLOBAL_OFFSET_TABLE_+0x138>
    2d36:	68 24 00 00 00       	push   0x24
    2d3b:	e9 a0 fd ff ff       	jmp    2ae0 <_init+0x28>

0000000000002d40 <realloc@plt>:
    2d40:	ff 25 fa 03 21 00    	jmp    QWORD PTR [rip+0x2103fa]        # 213140 <_GLOBAL_OFFSET_TABLE_+0x140>
    2d46:	68 25 00 00 00       	push   0x25
    2d4b:	e9 90 fd ff ff       	jmp    2ae0 <_init+0x28>

0000000000002d50 <__strcpy_chk@plt>:
    2d50:	ff 25 f2 03 21 00    	jmp    QWORD PTR [rip+0x2103f2]        # 213148 <_GLOBAL_OFFSET_TABLE_+0x148>
    2d56:	68 26 00 00 00       	push   0x26
    2d5b:	e9 80 fd ff ff       	jmp    2ae0 <_init+0x28>

0000000000002d60 <asn1_read_value@plt>:
    2d60:	ff 25 ea 03 21 00    	jmp    QWORD PTR [rip+0x2103ea]        # 213150 <_GLOBAL_OFFSET_TABLE_+0x150>
    2d66:	68 27 00 00 00       	push   0x27
    2d6b:	e9 70 fd ff ff       	jmp    2ae0 <_init+0x28>

0000000000002d70 <memmove@plt>:
    2d70:	ff 25 e2 03 21 00    	jmp    QWORD PTR [rip+0x2103e2]        # 213158 <_GLOBAL_OFFSET_TABLE_+0x158>
    2d76:	68 28 00 00 00       	push   0x28
    2d7b:	e9 60 fd ff ff       	jmp    2ae0 <_init+0x28>

0000000000002d80 <asn1_get_bit_der@plt>:
    2d80:	ff 25 da 03 21 00    	jmp    QWORD PTR [rip+0x2103da]        # 213160 <_GLOBAL_OFFSET_TABLE_+0x160>
    2d86:	68 29 00 00 00       	push   0x29
    2d8b:	e9 50 fd ff ff       	jmp    2ae0 <_init+0x28>

0000000000002d90 <fopen@plt>:
    2d90:	ff 25 d2 03 21 00    	jmp    QWORD PTR [rip+0x2103d2]        # 213168 <_GLOBAL_OFFSET_TABLE_+0x168>
    2d96:	68 2a 00 00 00       	push   0x2a
    2d9b:	e9 40 fd ff ff       	jmp    2ae0 <_init+0x28>

0000000000002da0 <asn1_get_length_der@plt>:
    2da0:	ff 25 ca 03 21 00    	jmp    QWORD PTR [rip+0x2103ca]        # 213170 <_GLOBAL_OFFSET_TABLE_+0x170>
    2da6:	68 2b 00 00 00       	push   0x2b
    2dab:	e9 30 fd ff ff       	jmp    2ae0 <_init+0x28>

0000000000002db0 <strtoul@plt>:
    2db0:	ff 25 c2 03 21 00    	jmp    QWORD PTR [rip+0x2103c2]        # 213178 <_GLOBAL_OFFSET_TABLE_+0x178>
    2db6:	68 2c 00 00 00       	push   0x2c
    2dbb:	e9 20 fd ff ff       	jmp    2ae0 <_init+0x28>

0000000000002dc0 <strcat@plt>:
    2dc0:	ff 25 ba 03 21 00    	jmp    QWORD PTR [rip+0x2103ba]        # 213180 <_GLOBAL_OFFSET_TABLE_+0x180>
    2dc6:	68 2d 00 00 00       	push   0x2d
    2dcb:	e9 10 fd ff ff       	jmp    2ae0 <_init+0x28>

0000000000002dd0 <asn1_read_value_type@plt>:
    2dd0:	ff 25 b2 03 21 00    	jmp    QWORD PTR [rip+0x2103b2]        # 213188 <_GLOBAL_OFFSET_TABLE_+0x188>
    2dd6:	68 2e 00 00 00       	push   0x2e
    2ddb:	e9 00 fd ff ff       	jmp    2ae0 <_init+0x28>

0000000000002de0 <exit@plt>:
    2de0:	ff 25 aa 03 21 00    	jmp    QWORD PTR [rip+0x2103aa]        # 213190 <_GLOBAL_OFFSET_TABLE_+0x190>
    2de6:	68 2f 00 00 00       	push   0x2f
    2deb:	e9 f0 fc ff ff       	jmp    2ae0 <_init+0x28>

0000000000002df0 <fwrite@plt>:
    2df0:	ff 25 a2 03 21 00    	jmp    QWORD PTR [rip+0x2103a2]        # 213198 <_GLOBAL_OFFSET_TABLE_+0x198>
    2df6:	68 30 00 00 00       	push   0x30
    2dfb:	e9 e0 fc ff ff       	jmp    2ae0 <_init+0x28>

0000000000002e00 <asn1_der_decoding2@plt>:
    2e00:	ff 25 9a 03 21 00    	jmp    QWORD PTR [rip+0x21039a]        # 2131a0 <_GLOBAL_OFFSET_TABLE_+0x1a0>
    2e06:	68 31 00 00 00       	push   0x31
    2e0b:	e9 d0 fc ff ff       	jmp    2ae0 <_init+0x28>

0000000000002e10 <__fprintf_chk@plt>:
    2e10:	ff 25 92 03 21 00    	jmp    QWORD PTR [rip+0x210392]        # 2131a8 <_GLOBAL_OFFSET_TABLE_+0x1a8>
    2e16:	68 32 00 00 00       	push   0x32
    2e1b:	e9 c0 fc ff ff       	jmp    2ae0 <_init+0x28>

0000000000002e20 <asn1_get_octet_der@plt>:
    2e20:	ff 25 8a 03 21 00    	jmp    QWORD PTR [rip+0x21038a]        # 2131b0 <_GLOBAL_OFFSET_TABLE_+0x1b0>
    2e26:	68 33 00 00 00       	push   0x33
    2e2b:	e9 b0 fc ff ff       	jmp    2ae0 <_init+0x28>

0000000000002e30 <asn1_length_der@plt>:
    2e30:	ff 25 82 03 21 00    	jmp    QWORD PTR [rip+0x210382]        # 2131b8 <_GLOBAL_OFFSET_TABLE_+0x1b8>
    2e36:	68 34 00 00 00       	push   0x34
    2e3b:	e9 a0 fc ff ff       	jmp    2ae0 <_init+0x28>

Disassembly of section .plt.got:

0000000000002e40 <.plt.got>:
    2e40:	ff 25 8a 01 21 00    	jmp    QWORD PTR [rip+0x21018a]        # 212fd0 <_DYNAMIC+0x200>
    2e46:	66 90                	xchg   ax,ax
    2e48:	ff 25 a2 01 21 00    	jmp    QWORD PTR [rip+0x2101a2]        # 212ff0 <_DYNAMIC+0x220>
    2e4e:	66 90                	xchg   ax,ax

Disassembly of section .text:

0000000000002e50 <deregister_tm_clones>:
    2e50:	48 8d 3d 79 03 21 00 	lea    rdi,[rip+0x210379]        # 2131d0 <__TMC_END__>
    2e57:	48 8d 05 79 03 21 00 	lea    rax,[rip+0x210379]        # 2131d7 <__TMC_END__+0x7>
    2e5e:	55                   	push   rbp
    2e5f:	48 29 f8             	sub    rax,rdi
    2e62:	48 89 e5             	mov    rbp,rsp
    2e65:	48 83 f8 0e          	cmp    rax,0xe
    2e69:	76 15                	jbe    2e80 <deregister_tm_clones+0x30>
    2e6b:	48 8b 05 4e 01 21 00 	mov    rax,QWORD PTR [rip+0x21014e]        # 212fc0 <_DYNAMIC+0x1f0>
    2e72:	48 85 c0             	test   rax,rax
    2e75:	74 09                	je     2e80 <deregister_tm_clones+0x30>
    2e77:	5d                   	pop    rbp
    2e78:	ff e0                	jmp    rax
    2e7a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    2e80:	5d                   	pop    rbp
    2e81:	c3                   	ret    
    2e82:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    2e86:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    2e8d:	00 00 00 

0000000000002e90 <register_tm_clones>:
    2e90:	48 8d 3d 39 03 21 00 	lea    rdi,[rip+0x210339]        # 2131d0 <__TMC_END__>
    2e97:	48 8d 35 32 03 21 00 	lea    rsi,[rip+0x210332]        # 2131d0 <__TMC_END__>
    2e9e:	55                   	push   rbp
    2e9f:	48 29 fe             	sub    rsi,rdi
    2ea2:	48 89 e5             	mov    rbp,rsp
    2ea5:	48 c1 fe 03          	sar    rsi,0x3
    2ea9:	48 89 f0             	mov    rax,rsi
    2eac:	48 c1 e8 3f          	shr    rax,0x3f
    2eb0:	48 01 c6             	add    rsi,rax
    2eb3:	48 d1 fe             	sar    rsi,1
    2eb6:	74 18                	je     2ed0 <register_tm_clones+0x40>
    2eb8:	48 8b 05 29 01 21 00 	mov    rax,QWORD PTR [rip+0x210129]        # 212fe8 <_DYNAMIC+0x218>
    2ebf:	48 85 c0             	test   rax,rax
    2ec2:	74 0c                	je     2ed0 <register_tm_clones+0x40>
    2ec4:	5d                   	pop    rbp
    2ec5:	ff e0                	jmp    rax
    2ec7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    2ece:	00 00 
    2ed0:	5d                   	pop    rbp
    2ed1:	c3                   	ret    
    2ed2:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    2ed6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    2edd:	00 00 00 

0000000000002ee0 <__do_global_dtors_aux>:
    2ee0:	80 3d f9 02 21 00 00 	cmp    BYTE PTR [rip+0x2102f9],0x0        # 2131e0 <completed.7594>
    2ee7:	75 27                	jne    2f10 <__do_global_dtors_aux+0x30>
    2ee9:	48 83 3d ff 00 21 00 	cmp    QWORD PTR [rip+0x2100ff],0x0        # 212ff0 <_DYNAMIC+0x220>
    2ef0:	00 
    2ef1:	55                   	push   rbp
    2ef2:	48 89 e5             	mov    rbp,rsp
    2ef5:	74 0c                	je     2f03 <__do_global_dtors_aux+0x23>
    2ef7:	48 8b 3d c2 02 21 00 	mov    rdi,QWORD PTR [rip+0x2102c2]        # 2131c0 <__dso_handle>
    2efe:	e8 45 ff ff ff       	call   2e48 <asn1_length_der@plt+0x18>
    2f03:	e8 48 ff ff ff       	call   2e50 <deregister_tm_clones>
    2f08:	5d                   	pop    rbp
    2f09:	c6 05 d0 02 21 00 01 	mov    BYTE PTR [rip+0x2102d0],0x1        # 2131e0 <completed.7594>
    2f10:	f3 c3                	repz ret 
    2f12:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    2f16:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    2f1d:	00 00 00 

0000000000002f20 <frame_dummy>:
    2f20:	48 8d 3d d1 f5 20 00 	lea    rdi,[rip+0x20f5d1]        # 2124f8 <__JCR_END__>
    2f27:	48 83 3f 00          	cmp    QWORD PTR [rdi],0x0
    2f2b:	75 0b                	jne    2f38 <frame_dummy+0x18>
    2f2d:	e9 5e ff ff ff       	jmp    2e90 <register_tm_clones>
    2f32:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    2f38:	48 8b 05 a1 00 21 00 	mov    rax,QWORD PTR [rip+0x2100a1]        # 212fe0 <_DYNAMIC+0x210>
    2f3f:	48 85 c0             	test   rax,rax
    2f42:	74 e9                	je     2f2d <frame_dummy+0xd>
    2f44:	55                   	push   rbp
    2f45:	48 89 e5             	mov    rbp,rsp
    2f48:	ff d0                	call   rax
    2f4a:	5d                   	pop    rbp
    2f4b:	e9 40 ff ff ff       	jmp    2e90 <register_tm_clones>

0000000000002f50 <_asn1_create_errorDescription>:
    2f50:	48 83 ec 08          	sub    rsp,0x8
    2f54:	48 85 f6             	test   rsi,rsi
    2f57:	74 50                	je     2fa9 <_asn1_create_errorDescription+0x59>
    2f59:	83 ff 03             	cmp    edi,0x3
    2f5c:	48 89 f0             	mov    rax,rsi
    2f5f:	0f 84 b3 00 00 00    	je     3018 <_asn1_create_errorDescription+0xc8>
    2f65:	7e 49                	jle    2fb0 <_asn1_create_errorDescription+0x60>
    2f67:	83 ff 0b             	cmp    edi,0xb
    2f6a:	0f 84 80 00 00 00    	je     2ff0 <_asn1_create_errorDescription+0xa0>
    2f70:	83 ff 0f             	cmp    edi,0xf
    2f73:	75 73                	jne    2fe8 <_asn1_create_errorDescription+0x98>
    2f75:	8b 15 e5 03 21 00    	mov    edx,DWORD PTR [rip+0x2103e5]        # 213360 <line_number>
    2f7b:	4c 8b 0d ee 02 21 00 	mov    r9,QWORD PTR [rip+0x2102ee]        # 213270 <file_name>
    2f82:	4c 8d 05 37 ba 00 00 	lea    r8,[rip+0xba37]        # e9c0 <_fini+0x4c0>
    2f89:	6a 40                	push   0x40
    2f8b:	52                   	push   rdx
    2f8c:	ba 01 00 00 00       	mov    edx,0x1
    2f91:	48 89 c7             	mov    rdi,rax
    2f94:	48 c7 c1 ff ff ff ff 	mov    rcx,0xffffffffffffffff
    2f9b:	be 80 00 00 00       	mov    esi,0x80
    2fa0:	31 c0                	xor    eax,eax
    2fa2:	e8 59 fb ff ff       	call   2b00 <__snprintf_chk@plt>
    2fa7:	58                   	pop    rax
    2fa8:	5a                   	pop    rdx
    2fa9:	48 83 c4 08          	add    rsp,0x8
    2fad:	c3                   	ret    
    2fae:	66 90                	xchg   ax,ax
    2fb0:	83 ff 01             	cmp    edi,0x1
    2fb3:	75 33                	jne    2fe8 <_asn1_create_errorDescription+0x98>
    2fb5:	4c 8b 0d b4 02 21 00 	mov    r9,QWORD PTR [rip+0x2102b4]        # 213270 <file_name>
    2fbc:	4c 8d 05 5d b5 00 00 	lea    r8,[rip+0xb55d]        # e520 <_fini+0x20>
    2fc3:	48 89 c7             	mov    rdi,rax
    2fc6:	48 c7 c1 ff ff ff ff 	mov    rcx,0xffffffffffffffff
    2fcd:	ba 01 00 00 00       	mov    edx,0x1
    2fd2:	be 80 00 00 00       	mov    esi,0x80
    2fd7:	31 c0                	xor    eax,eax
    2fd9:	48 83 c4 08          	add    rsp,0x8
    2fdd:	e9 1e fb ff ff       	jmp    2b00 <__snprintf_chk@plt>
    2fe2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    2fe8:	c6 00 00             	mov    BYTE PTR [rax],0x0
    2feb:	48 83 c4 08          	add    rsp,0x8
    2fef:	c3                   	ret    
    2ff0:	48 8d 0d e9 02 21 00 	lea    rcx,[rip+0x2102e9]        # 2132e0 <last_error>
    2ff7:	48 8d 15 79 b5 00 00 	lea    rdx,[rip+0xb579]        # e577 <_fini+0x77>
    2ffe:	48 89 c7             	mov    rdi,rax
    3001:	be 80 00 00 00       	mov    esi,0x80
    3006:	31 c0                	xor    eax,eax
    3008:	48 83 c4 08          	add    rsp,0x8
    300c:	e9 ef fb ff ff       	jmp    2c00 <snprintf@plt>
    3011:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    3018:	48 83 ec 08          	sub    rsp,0x8
    301c:	4c 8b 0d 4d 02 21 00 	mov    r9,QWORD PTR [rip+0x21024d]        # 213270 <file_name>
    3023:	ff 35 af ff 20 00    	push   QWORD PTR [rip+0x20ffaf]        # 212fd8 <_DYNAMIC+0x208>
    3029:	4c 8d 05 c0 b9 00 00 	lea    r8,[rip+0xb9c0]        # e9f0 <_fini+0x4f0>
    3030:	e9 57 ff ff ff       	jmp    2f8c <_asn1_create_errorDescription+0x3c>
    3035:	90                   	nop
    3036:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    303d:	00 00 00 

0000000000003040 <_asn1_yyerror.part.1>:
    3040:	48 8d 05 39 02 21 00 	lea    rax,[rip+0x210239]        # 213280 <last_token>
    3047:	48 83 ec 10          	sub    rsp,0x10
    304b:	4c 8b 0d 1e 02 21 00 	mov    r9,QWORD PTR [rip+0x21021e]        # 213270 <file_name>
    3052:	4c 8d 05 dd b4 00 00 	lea    r8,[rip+0xb4dd]        # e536 <_fini+0x36>
    3059:	b9 80 00 00 00       	mov    ecx,0x80
    305e:	ba 01 00 00 00       	mov    edx,0x1
    3063:	50                   	push   rax
    3064:	8b 05 f6 02 21 00    	mov    eax,DWORD PTR [rip+0x2102f6]        # 213360 <line_number>
    306a:	be 80 00 00 00       	mov    esi,0x80
    306f:	57                   	push   rdi
    3070:	48 8d 3d 69 02 21 00 	lea    rdi,[rip+0x210269]        # 2132e0 <last_error>
    3077:	50                   	push   rax
    3078:	31 c0                	xor    eax,eax
    307a:	e8 81 fa ff ff       	call   2b00 <__snprintf_chk@plt>
    307f:	c7 05 e7 02 21 00 0b 	mov    DWORD PTR [rip+0x2102e7],0xb        # 213370 <result_parse>
    3086:	00 00 00 
    3089:	48 83 c4 28          	add    rsp,0x28
    308d:	c3                   	ret    
    308e:	66 90                	xchg   ax,ax

0000000000003090 <yytnamerr>:
    3090:	80 3e 22             	cmp    BYTE PTR [rsi],0x22
    3093:	74 1b                	je     30b0 <yytnamerr+0x20>
    3095:	48 85 ff             	test   rdi,rdi
    3098:	74 76                	je     3110 <yytnamerr+0x80>
    309a:	53                   	push   rbx
    309b:	48 89 fb             	mov    rbx,rdi
    309e:	e8 0d fb ff ff       	call   2bb0 <stpcpy@plt>
    30a3:	48 29 d8             	sub    rax,rbx
    30a6:	5b                   	pop    rbx
    30a7:	f3 c3                	repz ret 
    30a9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    30b0:	48 89 f1             	mov    rcx,rsi
    30b3:	31 c0                	xor    eax,eax
    30b5:	0f b6 51 01          	movzx  edx,BYTE PTR [rcx+0x1]
    30b9:	80 fa 27             	cmp    dl,0x27
    30bc:	74 d7                	je     3095 <yytnamerr+0x5>
    30be:	7e 30                	jle    30f0 <yytnamerr+0x60>
    30c0:	80 fa 2c             	cmp    dl,0x2c
    30c3:	74 d0                	je     3095 <yytnamerr+0x5>
    30c5:	80 fa 5c             	cmp    dl,0x5c
    30c8:	75 36                	jne    3100 <yytnamerr+0x70>
    30ca:	80 79 02 5c          	cmp    BYTE PTR [rcx+0x2],0x5c
    30ce:	48 8d 51 02          	lea    rdx,[rcx+0x2]
    30d2:	75 c1                	jne    3095 <yytnamerr+0x5>
    30d4:	48 89 d1             	mov    rcx,rdx
    30d7:	48 85 ff             	test   rdi,rdi
    30da:	74 06                	je     30e2 <yytnamerr+0x52>
    30dc:	0f b6 11             	movzx  edx,BYTE PTR [rcx]
    30df:	88 14 07             	mov    BYTE PTR [rdi+rax*1],dl
    30e2:	48 83 c0 01          	add    rax,0x1
    30e6:	eb cd                	jmp    30b5 <yytnamerr+0x25>
    30e8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    30ef:	00 
    30f0:	80 fa 22             	cmp    dl,0x22
    30f3:	75 0b                	jne    3100 <yytnamerr+0x70>
    30f5:	48 85 ff             	test   rdi,rdi
    30f8:	74 ad                	je     30a7 <yytnamerr+0x17>
    30fa:	c6 04 07 00          	mov    BYTE PTR [rdi+rax*1],0x0
    30fe:	c3                   	ret    
    30ff:	90                   	nop
    3100:	48 83 c1 01          	add    rcx,0x1
    3104:	eb d1                	jmp    30d7 <yytnamerr+0x47>
    3106:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    310d:	00 00 00 
    3110:	48 89 f7             	mov    rdi,rsi
    3113:	e9 a8 fa ff ff       	jmp    2bc0 <strlen@plt>
    3118:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    311f:	00 

0000000000003120 <yysyntax_error>:
    3120:	41 57                	push   r15
    3122:	41 56                	push   r14
    3124:	41 55                	push   r13
    3126:	41 54                	push   r12
    3128:	55                   	push   rbp
    3129:	53                   	push   rbx
    312a:	89 cb                	mov    ebx,ecx
    312c:	48 89 d5             	mov    rbp,rdx
    312f:	48 83 ec 58          	sub    rsp,0x58
    3133:	48 89 7c 24 10       	mov    QWORD PTR [rsp+0x10],rdi
    3138:	48 8d 3d 41 f5 20 00 	lea    rdi,[rip+0x20f541]        # 212680 <yytname>
    313f:	48 89 74 24 18       	mov    QWORD PTR [rsp+0x18],rsi
    3144:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    314b:	00 00 
    314d:	48 89 44 24 48       	mov    QWORD PTR [rsp+0x48],rax
    3152:	31 c0                	xor    eax,eax
    3154:	48 63 c1             	movsxd rax,ecx
    3157:	4c 8b 3c c7          	mov    r15,QWORD PTR [rdi+rax*8]
    315b:	31 ff                	xor    edi,edi
    315d:	4c 89 fe             	mov    rsi,r15
    3160:	e8 2b ff ff ff       	call   3090 <yytnamerr>
    3165:	83 fb fe             	cmp    ebx,0xfffffffe
    3168:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    316d:	0f 84 fd 00 00 00    	je     3270 <yysyntax_error+0x150>
    3173:	48 0f bf 55 00       	movsx  rdx,WORD PTR [rbp+0x0]
    3178:	49 89 c6             	mov    r14,rax
    317b:	48 8d 05 de c3 00 00 	lea    rax,[rip+0xc3de]        # f560 <yypact>
    3182:	4c 89 7c 24 20       	mov    QWORD PTR [rsp+0x20],r15
    3187:	0f bf 2c 50          	movsx  ebp,WORD PTR [rax+rdx*2]
    318b:	81 fd 74 ff ff ff    	cmp    ebp,0xffffff74
    3191:	0f 84 c9 01 00 00    	je     3360 <yysyntax_error+0x240>
    3197:	89 eb                	mov    ebx,ebp
    3199:	b8 00 00 00 00       	mov    eax,0x0
    319e:	41 b8 f9 00 00 00    	mov    r8d,0xf9
    31a4:	f7 db                	neg    ebx
    31a6:	85 ed                	test   ebp,ebp
    31a8:	0f 49 d8             	cmovns ebx,eax
    31ab:	41 29 e8             	sub    r8d,ebp
    31ae:	b8 3c 00 00 00       	mov    eax,0x3c
    31b3:	41 83 f8 3c          	cmp    r8d,0x3c
    31b7:	45 89 c4             	mov    r12d,r8d
    31ba:	44 0f 4f e0          	cmovg  r12d,eax
    31be:	44 39 e3             	cmp    ebx,r12d
    31c1:	0f 8d 99 01 00 00    	jge    3360 <yysyntax_error+0x240>
    31c7:	4c 8d 2d 92 bd 00 00 	lea    r13,[rip+0xbd92]        # ef60 <yycheck>
    31ce:	b9 01 00 00 00       	mov    ecx,0x1
    31d3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    31d8:	8d 54 1d 00          	lea    edx,[rbp+rbx*1+0x0]
    31dc:	48 63 d2             	movsxd rdx,edx
    31df:	41 0f bf 44 55 00    	movsx  eax,WORD PTR [r13+rdx*2+0x0]
    31e5:	39 d8                	cmp    eax,ebx
    31e7:	75 37                	jne    3220 <yysyntax_error+0x100>
    31e9:	83 fb 01             	cmp    ebx,0x1
    31ec:	74 32                	je     3220 <yysyntax_error+0x100>
    31ee:	83 f9 05             	cmp    ecx,0x5
    31f1:	0f 84 69 01 00 00    	je     3360 <yysyntax_error+0x240>
    31f7:	48 8d 3d 82 f4 20 00 	lea    rdi,[rip+0x20f482]        # 212680 <yytname>
    31fe:	48 63 c3             	movsxd rax,ebx
    3201:	44 8d 79 01          	lea    r15d,[rcx+0x1]
    3205:	48 8b 34 c7          	mov    rsi,QWORD PTR [rdi+rax*8]
    3209:	31 ff                	xor    edi,edi
    320b:	48 89 74 cc 20       	mov    QWORD PTR [rsp+rcx*8+0x20],rsi
    3210:	e8 7b fe ff ff       	call   3090 <yytnamerr>
    3215:	4c 01 f0             	add    rax,r14
    3218:	72 2e                	jb     3248 <yysyntax_error+0x128>
    321a:	49 63 cf             	movsxd rcx,r15d
    321d:	49 89 c6             	mov    r14,rax
    3220:	83 c3 01             	add    ebx,0x1
    3223:	41 39 dc             	cmp    r12d,ebx
    3226:	75 b0                	jne    31d8 <yysyntax_error+0xb8>
    3228:	83 f9 05             	cmp    ecx,0x5
    322b:	0f 87 71 01 00 00    	ja     33a2 <yysyntax_error+0x282>
    3231:	48 8d 05 e8 b8 00 00 	lea    rax,[rip+0xb8e8]        # eb20 <_fini+0x620>
    3238:	89 ca                	mov    edx,ecx
    323a:	48 63 14 90          	movsxd rdx,DWORD PTR [rax+rdx*4]
    323e:	48 01 d0             	add    rax,rdx
    3241:	ff e0                	jmp    rax
    3243:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    3248:	b8 02 00 00 00       	mov    eax,0x2
    324d:	48 8b 7c 24 48       	mov    rdi,QWORD PTR [rsp+0x48]
    3252:	64 48 33 3c 25 28 00 	xor    rdi,QWORD PTR fs:0x28
    3259:	00 00 
    325b:	0f 85 3c 01 00 00    	jne    339d <yysyntax_error+0x27d>
    3261:	48 83 c4 58          	add    rsp,0x58
    3265:	5b                   	pop    rbx
    3266:	5d                   	pop    rbp
    3267:	41 5c                	pop    r12
    3269:	41 5d                	pop    r13
    326b:	41 5e                	pop    r14
    326d:	41 5f                	pop    r15
    326f:	c3                   	ret    
    3270:	4c 8b 74 24 08       	mov    r14,QWORD PTR [rsp+0x8]
    3275:	48 8d 1d d5 b2 00 00 	lea    rbx,[rip+0xb2d5]        # e551 <_fini+0x51>
    327c:	b8 0c 00 00 00       	mov    eax,0xc
    3281:	31 c9                	xor    ecx,ecx
    3283:	4c 01 f0             	add    rax,r14
    3286:	49 89 c2             	mov    r10,rax
    3289:	72 bd                	jb     3248 <yysyntax_error+0x128>
    328b:	48 8b 7c 24 10       	mov    rdi,QWORD PTR [rsp+0x10]
    3290:	4c 3b 17             	cmp    r10,QWORD PTR [rdi]
    3293:	77 63                	ja     32f8 <yysyntax_error+0x1d8>
    3295:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
    329a:	31 d2                	xor    edx,edx
    329c:	48 8b 28             	mov    rbp,QWORD PTR [rax]
    329f:	0f b6 03             	movzx  eax,BYTE PTR [rbx]
    32a2:	eb 0c                	jmp    32b0 <yysyntax_error+0x190>
    32a4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    32a8:	48 83 c5 01          	add    rbp,0x1
    32ac:	48 83 c3 01          	add    rbx,0x1
    32b0:	84 c0                	test   al,al
    32b2:	88 45 00             	mov    BYTE PTR [rbp+0x0],al
    32b5:	0f 84 c5 00 00 00    	je     3380 <yysyntax_error+0x260>
    32bb:	3c 25                	cmp    al,0x25
    32bd:	0f b6 43 01          	movzx  eax,BYTE PTR [rbx+0x1]
    32c1:	75 e5                	jne    32a8 <yysyntax_error+0x188>
    32c3:	39 ca                	cmp    edx,ecx
    32c5:	7d e1                	jge    32a8 <yysyntax_error+0x188>
    32c7:	3c 73                	cmp    al,0x73
    32c9:	75 dd                	jne    32a8 <yysyntax_error+0x188>
    32cb:	48 8b 74 d4 20       	mov    rsi,QWORD PTR [rsp+rdx*8+0x20]
    32d0:	44 8d 62 01          	lea    r12d,[rdx+0x1]
    32d4:	48 89 ef             	mov    rdi,rbp
    32d7:	89 4c 24 08          	mov    DWORD PTR [rsp+0x8],ecx
    32db:	48 83 c3 02          	add    rbx,0x2
    32df:	e8 ac fd ff ff       	call   3090 <yytnamerr>
    32e4:	49 63 d4             	movsxd rdx,r12d
    32e7:	48 01 c5             	add    rbp,rax
    32ea:	8b 4c 24 08          	mov    ecx,DWORD PTR [rsp+0x8]
    32ee:	0f b6 03             	movzx  eax,BYTE PTR [rbx]
    32f1:	eb bd                	jmp    32b0 <yysyntax_error+0x190>
    32f3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    32f8:	4b 8d 04 12          	lea    rax,[r10+r10*1]
    32fc:	49 39 c2             	cmp    r10,rax
    32ff:	0f 87 82 00 00 00    	ja     3387 <yysyntax_error+0x267>
    3305:	48 89 07             	mov    QWORD PTR [rdi],rax
    3308:	b8 01 00 00 00       	mov    eax,0x1
    330d:	e9 3b ff ff ff       	jmp    324d <yysyntax_error+0x12d>
    3312:	b8 3b 00 00 00       	mov    eax,0x3b
    3317:	48 8d 1d 8a b7 00 00 	lea    rbx,[rip+0xb78a]        # eaa8 <_fini+0x5a8>
    331e:	e9 60 ff ff ff       	jmp    3283 <yysyntax_error+0x163>
    3323:	b8 2f 00 00 00       	mov    eax,0x2f
    3328:	48 8d 1d 11 b7 00 00 	lea    rbx,[rip+0xb711]        # ea40 <_fini+0x540>
    332f:	e9 4f ff ff ff       	jmp    3283 <yysyntax_error+0x163>
    3334:	b8 35 00 00 00       	mov    eax,0x35
    3339:	48 8d 1d 30 b7 00 00 	lea    rbx,[rip+0xb730]        # ea70 <_fini+0x570>
    3340:	e9 3e ff ff ff       	jmp    3283 <yysyntax_error+0x163>
    3345:	b8 29 00 00 00       	mov    eax,0x29
    334a:	48 8d 1d bf b6 00 00 	lea    rbx,[rip+0xb6bf]        # ea10 <_fini+0x510>
    3351:	e9 2d ff ff ff       	jmp    3283 <yysyntax_error+0x163>
    3356:	4c 89 74 24 08       	mov    QWORD PTR [rsp+0x8],r14
    335b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    3360:	4c 8b 74 24 08       	mov    r14,QWORD PTR [rsp+0x8]
    3365:	b8 1b 00 00 00       	mov    eax,0x1b
    336a:	b9 01 00 00 00       	mov    ecx,0x1
    336f:	48 8d 1d e8 b1 00 00 	lea    rbx,[rip+0xb1e8]        # e55e <_fini+0x5e>
    3376:	e9 08 ff ff ff       	jmp    3283 <yysyntax_error+0x163>
    337b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    3380:	31 c0                	xor    eax,eax
    3382:	e9 c6 fe ff ff       	jmp    324d <yysyntax_error+0x12d>
    3387:	48 8b 44 24 10       	mov    rax,QWORD PTR [rsp+0x10]
    338c:	48 c7 00 ff ff ff ff 	mov    QWORD PTR [rax],0xffffffffffffffff
    3393:	b8 01 00 00 00       	mov    eax,0x1
    3398:	e9 b0 fe ff ff       	jmp    324d <yysyntax_error+0x12d>
    339d:	e8 2e f8 ff ff       	call   2bd0 <__stack_chk_fail@plt>
    33a2:	b8 0c 00 00 00       	mov    eax,0xc
    33a7:	48 8d 1d a3 b1 00 00 	lea    rbx,[rip+0xb1a3]        # e551 <_fini+0x51>
    33ae:	e9 d0 fe ff ff       	jmp    3283 <yysyntax_error+0x163>
    33b3:	0f 1f 00             	nop    DWORD PTR [rax]
    33b6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    33bd:	00 00 00 

00000000000033c0 <_asn1_yyparse>:
    33c0:	41 57                	push   r15
    33c2:	41 56                	push   r14
    33c4:	41 55                	push   r13
    33c6:	41 54                	push   r12
    33c8:	45 31 e4             	xor    r12d,r12d
    33cb:	55                   	push   rbp
    33cc:	53                   	push   rbx
    33cd:	48 81 ec 78 3b 00 00 	sub    rsp,0x3b78
    33d4:	c7 05 22 fe 20 00 00 	mov    DWORD PTR [rip+0x20fe22],0x0        # 213200 <_asn1_yynerrs>
    33db:	00 00 00 
    33de:	c7 05 80 fe 20 00 fe 	mov    DWORD PTR [rip+0x20fe80],0xfffffffe        # 213268 <_asn1_yychar>
    33e5:	ff ff ff 
    33e8:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    33ef:	00 00 
    33f1:	48 89 84 24 68 3b 00 	mov    QWORD PTR [rsp+0x3b68],rax
    33f8:	00 
    33f9:	31 c0                	xor    eax,eax
    33fb:	48 8d 84 24 e0 3a 00 	lea    rax,[rsp+0x3ae0]
    3402:	00 
    3403:	4c 8d ac 24 50 02 00 	lea    r13,[rsp+0x250]
    340a:	00 
    340b:	48 c7 44 24 68 80 00 	mov    QWORD PTR [rsp+0x68],0x80
    3412:	00 00 
    3414:	48 c7 44 24 08 c8 00 	mov    QWORD PTR [rsp+0x8],0xc8
    341b:	00 00 
    341d:	c7 44 24 2c 00 00 00 	mov    DWORD PTR [rsp+0x2c],0x0
    3424:	00 
    3425:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
    342a:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
    342f:	48 8d 84 24 c0 00 00 	lea    rax,[rsp+0xc0]
    3436:	00 
    3437:	4c 89 6c 24 18       	mov    QWORD PTR [rsp+0x18],r13
    343c:	48 89 c3             	mov    rbx,rax
    343f:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
    3444:	49 89 c7             	mov    r15,rax
    3447:	48 8d 44 24 70       	lea    rax,[rsp+0x70]
    344c:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
    3451:	48 8d 44 24 60       	lea    rax,[rsp+0x60]
    3456:	48 89 44 24 40       	mov    QWORD PTR [rsp+0x40],rax
    345b:	48 8d 44 24 68       	lea    rax,[rsp+0x68]
    3460:	48 89 44 24 48       	mov    QWORD PTR [rsp+0x48],rax
    3465:	48 8d 84 24 90 3a 00 	lea    rax,[rsp+0x3a90]
    346c:	00 
    346d:	48 89 44 24 50       	mov    QWORD PTR [rsp+0x50],rax
    3472:	48 8b 74 24 08       	mov    rsi,QWORD PTR [rsp+0x8]
    3477:	66 45 89 27          	mov    WORD PTR [r15],r12w
    347b:	48 89 f0             	mov    rax,rsi
    347e:	48 01 c0             	add    rax,rax
    3481:	48 8d 54 03 fe       	lea    rdx,[rbx+rax*1-0x2]
    3486:	49 39 d7             	cmp    r15,rdx
    3489:	0f 82 d7 00 00 00    	jb     3566 <_asn1_yyparse+0x1a6>
    348f:	49 29 df             	sub    r15,rbx
    3492:	49 d1 ff             	sar    r15,1
    3495:	48 81 fe 0f 27 00 00 	cmp    rsi,0x270f
    349c:	49 8d 6f 01          	lea    rbp,[r15+0x1]
    34a0:	0f 87 e8 05 00 00    	ja     3a8e <_asn1_yyparse+0x6ce>
    34a6:	48 3d 10 27 00 00    	cmp    rax,0x2710
    34ac:	41 bd 10 27 00 00    	mov    r13d,0x2710
    34b2:	4c 0f 46 e8          	cmovbe r13,rax
    34b6:	4b 8d 44 ed 00       	lea    rax,[r13+r13*8+0x0]
    34bb:	4c 89 6c 24 08       	mov    QWORD PTR [rsp+0x8],r13
    34c0:	49 8d 44 85 00       	lea    rax,[r13+rax*4+0x0]
    34c5:	48 8d 7c 00 47       	lea    rdi,[rax+rax*1+0x47]
    34ca:	e8 41 f8 ff ff       	call   2d10 <malloc@plt>
    34cf:	48 85 c0             	test   rax,rax
    34d2:	49 89 c6             	mov    r14,rax
    34d5:	0f 84 b3 05 00 00    	je     3a8e <_asn1_yyparse+0x6ce>
    34db:	4c 8d 7c 2d 00       	lea    r15,[rbp+rbp*1+0x0]
    34e0:	48 89 de             	mov    rsi,rbx
    34e3:	48 89 c7             	mov    rdi,rax
    34e6:	48 8d 6c ed 00       	lea    rbp,[rbp+rbp*8+0x0]
    34eb:	4c 89 fa             	mov    rdx,r15
    34ee:	e8 fd f7 ff ff       	call   2cf0 <memcpy@plt>
    34f3:	4b 8d 44 2d 00       	lea    rax,[r13+r13*1+0x0]
    34f8:	48 ba 8f e3 38 8e e3 	movabs rdx,0xe38e38e38e38e38f
    34ff:	38 8e e3 
    3502:	4c 8d 2c ed 00 00 00 	lea    r13,[rbp*8+0x0]
    3509:	00 
    350a:	48 8b 74 24 18       	mov    rsi,QWORD PTR [rsp+0x18]
    350f:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
    3514:	48 83 c0 47          	add    rax,0x47
    3518:	48 f7 e2             	mul    rdx
    351b:	48 c1 ea 06          	shr    rdx,0x6
    351f:	48 8d 04 d2          	lea    rax,[rdx+rdx*8]
    3523:	4c 89 ea             	mov    rdx,r13
    3526:	49 8d 2c c6          	lea    rbp,[r14+rax*8]
    352a:	48 89 ef             	mov    rdi,rbp
    352d:	e8 be f7 ff ff       	call   2cf0 <memcpy@plt>
    3532:	48 3b 5c 24 20       	cmp    rbx,QWORD PTR [rsp+0x20]
    3537:	74 08                	je     3541 <_asn1_yyparse+0x181>
    3539:	48 89 df             	mov    rdi,rbx
    353c:	e8 cf f5 ff ff       	call   2b10 <free@plt>
    3541:	48 8b 44 24 10       	mov    rax,QWORD PTR [rsp+0x10]
    3546:	4f 8d 7c 3e fe       	lea    r15,[r14+r15*1-0x2]
    354b:	4e 8d 6c 2d b8       	lea    r13,[rbp+r13*1-0x48]
    3550:	49 8d 44 06 fe       	lea    rax,[r14+rax*1-0x2]
    3555:	49 39 c7             	cmp    r15,rax
    3558:	0f 83 a0 1b 00 00    	jae    50fe <_asn1_yyparse+0x1d3e>
    355e:	48 89 6c 24 18       	mov    QWORD PTR [rsp+0x18],rbp
    3563:	4c 89 f3             	mov    rbx,r14
    3566:	41 83 fc 05          	cmp    r12d,0x5
    356a:	0f 84 28 1b 00 00    	je     5098 <_asn1_yyparse+0x1cd8>
    3570:	48 8d 2d e9 bf 00 00 	lea    rbp,[rip+0xbfe9]        # f560 <yypact>
    3577:	4d 63 f4             	movsxd r14,r12d
    357a:	42 0f bf 44 75 00    	movsx  eax,WORD PTR [rbp+r14*2+0x0]
    3580:	3d 74 ff ff ff       	cmp    eax,0xffffff74
    3585:	89 44 24 10          	mov    DWORD PTR [rsp+0x10],eax
    3589:	74 53                	je     35de <_asn1_yyparse+0x21e>
    358b:	8b 05 d7 fc 20 00    	mov    eax,DWORD PTR [rip+0x20fcd7]        # 213268 <_asn1_yychar>
    3591:	83 f8 fe             	cmp    eax,0xfffffffe
    3594:	0f 84 12 01 00 00    	je     36ac <_asn1_yyparse+0x2ec>
    359a:	85 c0                	test   eax,eax
    359c:	0f 8e 16 05 00 00    	jle    3ab8 <_asn1_yyparse+0x6f8>
    35a2:	3d 2f 01 00 00       	cmp    eax,0x12f
    35a7:	ba 02 00 00 00       	mov    edx,0x2
    35ac:	7f 0d                	jg     35bb <_asn1_yyparse+0x1fb>
    35ae:	48 8d 15 8b c1 00 00 	lea    rdx,[rip+0xc18b]        # f740 <yytranslate>
    35b5:	48 98                	cdqe   
    35b7:	0f b6 14 02          	movzx  edx,BYTE PTR [rdx+rax*1]
    35bb:	8b 44 24 10          	mov    eax,DWORD PTR [rsp+0x10]
    35bf:	01 d0                	add    eax,edx
    35c1:	3d f8 00 00 00       	cmp    eax,0xf8
    35c6:	77 16                	ja     35de <_asn1_yyparse+0x21e>
    35c8:	48 63 c8             	movsxd rcx,eax
    35cb:	48 8d 05 8e b9 00 00 	lea    rax,[rip+0xb98e]        # ef60 <yycheck>
    35d2:	0f bf 04 48          	movsx  eax,WORD PTR [rax+rcx*2]
    35d6:	39 c2                	cmp    edx,eax
    35d8:	0f 84 22 05 00 00    	je     3b00 <_asn1_yyparse+0x740>
    35de:	48 8d 05 7b be 00 00 	lea    rax,[rip+0xbe7b]        # f460 <yydefact>
    35e5:	42 0f b6 14 30       	movzx  edx,BYTE PTR [rax+r14*1]
    35ea:	85 d2                	test   edx,edx
    35ec:	0f 84 be 02 00 00    	je     38b0 <_asn1_yyparse+0x4f0>
    35f2:	48 8d 05 27 b8 00 00 	lea    rax,[rip+0xb827]        # ee20 <yyr2>
    35f9:	4c 63 f2             	movsxd r14,edx
    35fc:	42 0f b6 0c 30       	movzx  ecx,BYTE PTR [rax+r14*1]
    3601:	b8 01 00 00 00       	mov    eax,0x1
    3606:	29 c8                	sub    eax,ecx
    3608:	49 89 cc             	mov    r12,rcx
    360b:	81 fa 89 00 00 00    	cmp    edx,0x89
    3611:	48 98                	cdqe   
    3613:	48 8d 04 c0          	lea    rax,[rax+rax*8]
    3617:	49 8d 44 c5 00       	lea    rax,[r13+rax*8+0x0]
    361c:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    361f:	48 89 4c 24 70       	mov    QWORD PTR [rsp+0x70],rcx
    3624:	48 8b 48 08          	mov    rcx,QWORD PTR [rax+0x8]
    3628:	48 89 4c 24 78       	mov    QWORD PTR [rsp+0x78],rcx
    362d:	48 8b 48 10          	mov    rcx,QWORD PTR [rax+0x10]
    3631:	48 89 8c 24 80 00 00 	mov    QWORD PTR [rsp+0x80],rcx
    3638:	00 
    3639:	48 8b 48 18          	mov    rcx,QWORD PTR [rax+0x18]
    363d:	48 89 8c 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rcx
    3644:	00 
    3645:	48 8b 48 20          	mov    rcx,QWORD PTR [rax+0x20]
    3649:	48 89 8c 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rcx
    3650:	00 
    3651:	48 8b 48 28          	mov    rcx,QWORD PTR [rax+0x28]
    3655:	48 89 8c 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rcx
    365c:	00 
    365d:	48 8b 48 30          	mov    rcx,QWORD PTR [rax+0x30]
    3661:	48 89 8c 24 a0 00 00 	mov    QWORD PTR [rsp+0xa0],rcx
    3668:	00 
    3669:	48 8b 48 38          	mov    rcx,QWORD PTR [rax+0x38]
    366d:	48 8b 40 40          	mov    rax,QWORD PTR [rax+0x40]
    3671:	48 89 8c 24 a8 00 00 	mov    QWORD PTR [rsp+0xa8],rcx
    3678:	00 
    3679:	48 89 84 24 b0 00 00 	mov    QWORD PTR [rsp+0xb0],rax
    3680:	00 
    3681:	0f 87 49 01 00 00    	ja     37d0 <_asn1_yyparse+0x410>
    3687:	48 8d 05 aa b4 00 00 	lea    rax,[rip+0xb4aa]        # eb38 <_fini+0x638>
    368e:	89 d2                	mov    edx,edx
    3690:	48 63 14 90          	movsxd rdx,DWORD PTR [rax+rdx*4]
    3694:	48 01 d0             	add    rax,rdx
    3697:	ff e0                	jmp    rax
    3699:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    36a0:	83 f8 0a             	cmp    eax,0xa
    36a3:	75 07                	jne    36ac <_asn1_yyparse+0x2ec>
    36a5:	83 05 b4 fc 20 00 01 	add    DWORD PTR [rip+0x20fcb4],0x1        # 213360 <line_number>
    36ac:	48 8b 3d c5 fc 20 00 	mov    rdi,QWORD PTR [rip+0x20fcc5]        # 213378 <file_asn1>
    36b3:	e8 a8 f5 ff ff       	call   2c60 <fgetc@plt>
    36b8:	83 f8 20             	cmp    eax,0x20
    36bb:	74 ef                	je     36ac <_asn1_yyparse+0x2ec>
    36bd:	8d 50 f7             	lea    edx,[rax-0x9]
    36c0:	83 fa 01             	cmp    edx,0x1
    36c3:	76 db                	jbe    36a0 <_asn1_yyparse+0x2e0>
    36c5:	83 f8 ff             	cmp    eax,0xffffffff
    36c8:	0f 84 02 04 00 00    	je     3ad0 <_asn1_yyparse+0x710>
    36ce:	83 f8 2e             	cmp    eax,0x2e
    36d1:	ba 01 00 00 00       	mov    edx,0x1
    36d6:	0f 86 8c 00 00 00    	jbe    3768 <_asn1_yyparse+0x3a8>
    36dc:	89 c1                	mov    ecx,eax
    36de:	83 e1 df             	and    ecx,0xffffffdf
    36e1:	83 f9 5b             	cmp    ecx,0x5b
    36e4:	40 0f 94 c6          	sete   sil
    36e8:	40 38 d6             	cmp    sil,dl
    36eb:	0f 83 f9 19 00 00    	jae    50ea <_asn1_yyparse+0x1d2a>
    36f1:	83 f9 5d             	cmp    ecx,0x5d
    36f4:	0f 84 f0 19 00 00    	je     50ea <_asn1_yyparse+0x1d2a>
    36fa:	83 f8 7c             	cmp    eax,0x7c
    36fd:	0f 84 08 1a 00 00    	je     510b <_asn1_yyparse+0x1d4b>
    3703:	83 f8 2d             	cmp    eax,0x2d
    3706:	0f 85 06 1a 00 00    	jne    5112 <_asn1_yyparse+0x1d52>
    370c:	48 8b 3d 65 fc 20 00 	mov    rdi,QWORD PTR [rip+0x20fc65]        # 213378 <file_asn1>
    3713:	e8 48 f5 ff ff       	call   2c60 <fgetc@plt>
    3718:	83 f8 2d             	cmp    eax,0x2d
    371b:	0f 85 43 1b 00 00    	jne    5264 <_asn1_yyparse+0x1ea4>
    3721:	45 31 e4             	xor    r12d,r12d
    3724:	eb 0d                	jmp    3733 <_asn1_yyparse+0x373>
    3726:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    372d:	00 00 00 
    3730:	41 89 c4             	mov    r12d,eax
    3733:	48 8b 3d 3e fc 20 00 	mov    rdi,QWORD PTR [rip+0x20fc3e]        # 213378 <file_asn1>
    373a:	e8 21 f5 ff ff       	call   2c60 <fgetc@plt>
    373f:	83 f8 ff             	cmp    eax,0xffffffff
    3742:	0f 84 88 03 00 00    	je     3ad0 <_asn1_yyparse+0x710>
    3748:	83 f8 0a             	cmp    eax,0xa
    374b:	0f 84 54 ff ff ff    	je     36a5 <_asn1_yyparse+0x2e5>
    3751:	41 83 fc 2d          	cmp    r12d,0x2d
    3755:	75 d9                	jne    3730 <_asn1_yyparse+0x370>
    3757:	83 f8 2d             	cmp    eax,0x2d
    375a:	75 d4                	jne    3730 <_asn1_yyparse+0x370>
    375c:	e9 4b ff ff ff       	jmp    36ac <_asn1_yyparse+0x2ec>
    3761:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    3768:	48 ba 00 00 00 00 00 	movabs rdx,0x5b0000000000
    376f:	5b 00 00 
    3772:	89 c1                	mov    ecx,eax
    3774:	48 d3 ea             	shr    rdx,cl
    3777:	83 e2 01             	and    edx,0x1
    377a:	48 83 f2 01          	xor    rdx,0x1
    377e:	83 e2 01             	and    edx,0x1
    3781:	e9 56 ff ff ff       	jmp    36dc <_asn1_yyparse+0x31c>
    3786:	49 8b 75 00          	mov    rsi,QWORD PTR [r13+0x0]
    378a:	48 85 f6             	test   rsi,rsi
    378d:	0f 84 81 1b 00 00    	je     5314 <_asn1_yyparse+0x1f54>
    3793:	81 4e 48 00 20 00 00 	or     DWORD PTR [rsi+0x48],0x2000
    379a:	48 89 74 24 70       	mov    QWORD PTR [rsp+0x70],rsi
    379f:	48 8b 76 60          	mov    rsi,QWORD PTR [rsi+0x60]
    37a3:	49 8b 7d b8          	mov    rdi,QWORD PTR [r13-0x48]
    37a7:	e8 14 80 00 00       	call   b7c0 <_asn1_set_right>
    37ac:	48 8b 54 24 70       	mov    rdx,QWORD PTR [rsp+0x70]
    37b1:	48 85 d2             	test   rdx,rdx
    37b4:	74 1a                	je     37d0 <_asn1_yyparse+0x410>
    37b6:	49 8b 45 b8          	mov    rax,QWORD PTR [r13-0x48]
    37ba:	48 85 c0             	test   rax,rax
    37bd:	48 89 42 60          	mov    QWORD PTR [rdx+0x60],rax
    37c1:	74 0d                	je     37d0 <_asn1_yyparse+0x410>
    37c3:	48 89 50 70          	mov    QWORD PTR [rax+0x70],rdx
    37c7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    37ce:	00 00 
    37d0:	4b 8d 04 e4          	lea    rax,[r12+r12*8]
    37d4:	48 8b 54 24 70       	mov    rdx,QWORD PTR [rsp+0x70]
    37d9:	4d 01 e4             	add    r12,r12
    37dc:	4d 29 e7             	sub    r15,r12
    37df:	48 c1 e0 03          	shl    rax,0x3
    37e3:	49 29 c5             	sub    r13,rax
    37e6:	4c 89 e8             	mov    rax,r13
    37e9:	4d 8d 6d 48          	lea    r13,[r13+0x48]
    37ed:	48 89 50 48          	mov    QWORD PTR [rax+0x48],rdx
    37f1:	48 8b 54 24 78       	mov    rdx,QWORD PTR [rsp+0x78]
    37f6:	48 89 50 50          	mov    QWORD PTR [rax+0x50],rdx
    37fa:	48 8b 94 24 80 00 00 	mov    rdx,QWORD PTR [rsp+0x80]
    3801:	00 
    3802:	48 89 50 58          	mov    QWORD PTR [rax+0x58],rdx
    3806:	48 8b 94 24 88 00 00 	mov    rdx,QWORD PTR [rsp+0x88]
    380d:	00 
    380e:	48 89 50 60          	mov    QWORD PTR [rax+0x60],rdx
    3812:	48 8b 94 24 90 00 00 	mov    rdx,QWORD PTR [rsp+0x90]
    3819:	00 
    381a:	48 89 50 68          	mov    QWORD PTR [rax+0x68],rdx
    381e:	48 8b 94 24 98 00 00 	mov    rdx,QWORD PTR [rsp+0x98]
    3825:	00 
    3826:	48 89 50 70          	mov    QWORD PTR [rax+0x70],rdx
    382a:	48 8b 94 24 a0 00 00 	mov    rdx,QWORD PTR [rsp+0xa0]
    3831:	00 
    3832:	48 89 50 78          	mov    QWORD PTR [rax+0x78],rdx
    3836:	48 8b 94 24 a8 00 00 	mov    rdx,QWORD PTR [rsp+0xa8]
    383d:	00 
    383e:	48 89 90 80 00 00 00 	mov    QWORD PTR [rax+0x80],rdx
    3845:	48 8b 94 24 b0 00 00 	mov    rdx,QWORD PTR [rsp+0xb0]
    384c:	00 
    384d:	48 89 90 88 00 00 00 	mov    QWORD PTR [rax+0x88],rdx
    3854:	48 8d 05 65 b6 00 00 	lea    rax,[rip+0xb665]        # eec0 <yyr1>
    385b:	48 8d 15 7e bb 00 00 	lea    rdx,[rip+0xbb7e]        # f3e0 <yypgoto>
    3862:	41 0f b7 0f          	movzx  ecx,WORD PTR [r15]
    3866:	42 0f b6 04 30       	movzx  eax,BYTE PTR [rax+r14*1]
    386b:	83 e8 3c             	sub    eax,0x3c
    386e:	48 98                	cdqe   
    3870:	0f bf 34 42          	movsx  esi,WORD PTR [rdx+rax*2]
    3874:	0f bf d1             	movsx  edx,cx
    3877:	01 f2                	add    edx,esi
    3879:	81 fa f8 00 00 00    	cmp    edx,0xf8
    387f:	77 14                	ja     3895 <_asn1_yyparse+0x4d5>
    3881:	48 8d 35 d8 b6 00 00 	lea    rsi,[rip+0xb6d8]        # ef60 <yycheck>
    3888:	48 63 d2             	movsxd rdx,edx
    388b:	66 3b 0c 56          	cmp    cx,WORD PTR [rsi+rdx*2]
    388f:	0f 84 09 03 00 00    	je     3b9e <_asn1_yyparse+0x7de>
    3895:	48 8d 15 c4 ba 00 00 	lea    rdx,[rip+0xbac4]        # f360 <yydefgoto>
    389c:	44 0f bf 24 42       	movsx  r12d,WORD PTR [rdx+rax*2]
    38a1:	49 83 c7 02          	add    r15,0x2
    38a5:	e9 c8 fb ff ff       	jmp    3472 <_asn1_yyparse+0xb2>
    38aa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    38b0:	8b 05 b2 f9 20 00    	mov    eax,DWORD PTR [rip+0x20f9b2]        # 213268 <_asn1_yychar>
    38b6:	41 bc fe ff ff ff    	mov    r12d,0xfffffffe
    38bc:	44 39 e0             	cmp    eax,r12d
    38bf:	74 11                	je     38d2 <_asn1_yyparse+0x512>
    38c1:	3d 2f 01 00 00       	cmp    eax,0x12f
    38c6:	41 bc 02 00 00 00    	mov    r12d,0x2
    38cc:	0f 86 4e 01 00 00    	jbe    3a20 <_asn1_yyparse+0x660>
    38d2:	8b 54 24 2c          	mov    edx,DWORD PTR [rsp+0x2c]
    38d6:	85 d2                	test   edx,edx
    38d8:	0f 84 5d 01 00 00    	je     3a3b <_asn1_yyparse+0x67b>
    38de:	83 7c 24 2c 03       	cmp    DWORD PTR [rsp+0x2c],0x3
    38e3:	75 38                	jne    391d <_asn1_yyparse+0x55d>
    38e5:	83 f8 00             	cmp    eax,0x0
    38e8:	0f 8e e2 02 00 00    	jle    3bd0 <_asn1_yyparse+0x810>
    38ee:	42 0f bf 44 75 00    	movsx  eax,WORD PTR [rbp+r14*2+0x0]
    38f4:	c7 05 6a f9 20 00 fe 	mov    DWORD PTR [rip+0x20f96a],0xfffffffe        # 213268 <_asn1_yychar>
    38fb:	ff ff ff 
    38fe:	3d 74 ff ff ff       	cmp    eax,0xffffff74
    3903:	75 25                	jne    392a <_asn1_yyparse+0x56a>
    3905:	0f 1f 00             	nop    DWORD PTR [rax]
    3908:	4c 39 fb             	cmp    rbx,r15
    390b:	0f 84 bf 00 00 00    	je     39d0 <_asn1_yyparse+0x610>
    3911:	49 83 ef 02          	sub    r15,0x2
    3915:	4d 0f bf 37          	movsx  r14,WORD PTR [r15]
    3919:	49 83 ed 48          	sub    r13,0x48
    391d:	42 0f bf 44 75 00    	movsx  eax,WORD PTR [rbp+r14*2+0x0]
    3923:	3d 74 ff ff ff       	cmp    eax,0xffffff74
    3928:	74 de                	je     3908 <_asn1_yyparse+0x548>
    392a:	83 c0 01             	add    eax,0x1
    392d:	3d f8 00 00 00       	cmp    eax,0xf8
    3932:	77 d4                	ja     3908 <_asn1_yyparse+0x548>
    3934:	48 8d 15 25 b6 00 00 	lea    rdx,[rip+0xb625]        # ef60 <yycheck>
    393b:	48 98                	cdqe   
    393d:	66 83 3c 42 01       	cmp    WORD PTR [rdx+rax*2],0x1
    3942:	75 c4                	jne    3908 <_asn1_yyparse+0x548>
    3944:	48 8d 15 15 b8 00 00 	lea    rdx,[rip+0xb815]        # f160 <yytable>
    394b:	44 0f bf 24 42       	movsx  r12d,WORD PTR [rdx+rax*2]
    3950:	45 85 e4             	test   r12d,r12d
    3953:	7e b3                	jle    3908 <_asn1_yyparse+0x548>
    3955:	48 8b 05 c4 f8 20 00 	mov    rax,QWORD PTR [rip+0x20f8c4]        # 213220 <_asn1_yylval>
    395c:	49 83 c5 48          	add    r13,0x48
    3960:	c7 44 24 2c 03 00 00 	mov    DWORD PTR [rsp+0x2c],0x3
    3967:	00 
    3968:	49 89 45 00          	mov    QWORD PTR [r13+0x0],rax
    396c:	48 8b 05 b5 f8 20 00 	mov    rax,QWORD PTR [rip+0x20f8b5]        # 213228 <_asn1_yylval+0x8>
    3973:	49 89 45 08          	mov    QWORD PTR [r13+0x8],rax
    3977:	48 8b 05 b2 f8 20 00 	mov    rax,QWORD PTR [rip+0x20f8b2]        # 213230 <_asn1_yylval+0x10>
    397e:	49 89 45 10          	mov    QWORD PTR [r13+0x10],rax
    3982:	48 8b 05 af f8 20 00 	mov    rax,QWORD PTR [rip+0x20f8af]        # 213238 <_asn1_yylval+0x18>
    3989:	49 89 45 18          	mov    QWORD PTR [r13+0x18],rax
    398d:	48 8b 05 ac f8 20 00 	mov    rax,QWORD PTR [rip+0x20f8ac]        # 213240 <_asn1_yylval+0x20>
    3994:	49 89 45 20          	mov    QWORD PTR [r13+0x20],rax
    3998:	48 8b 05 a9 f8 20 00 	mov    rax,QWORD PTR [rip+0x20f8a9]        # 213248 <_asn1_yylval+0x28>
    399f:	49 89 45 28          	mov    QWORD PTR [r13+0x28],rax
    39a3:	48 8b 05 a6 f8 20 00 	mov    rax,QWORD PTR [rip+0x20f8a6]        # 213250 <_asn1_yylval+0x30>
    39aa:	49 89 45 30          	mov    QWORD PTR [r13+0x30],rax
    39ae:	48 8b 05 a3 f8 20 00 	mov    rax,QWORD PTR [rip+0x20f8a3]        # 213258 <_asn1_yylval+0x38>
    39b5:	49 89 45 38          	mov    QWORD PTR [r13+0x38],rax
    39b9:	48 8b 05 a0 f8 20 00 	mov    rax,QWORD PTR [rip+0x20f8a0]        # 213260 <_asn1_yylval+0x40>
    39c0:	49 89 45 40          	mov    QWORD PTR [r13+0x40],rax
    39c4:	e9 d8 fe ff ff       	jmp    38a1 <_asn1_yyparse+0x4e1>
    39c9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    39d0:	bb 01 00 00 00       	mov    ebx,0x1
    39d5:	4c 3b 7c 24 20       	cmp    r15,QWORD PTR [rsp+0x20]
    39da:	74 08                	je     39e4 <_asn1_yyparse+0x624>
    39dc:	4c 89 ff             	mov    rdi,r15
    39df:	e8 2c f1 ff ff       	call   2b10 <free@plt>
    39e4:	48 8b 7c 24 60       	mov    rdi,QWORD PTR [rsp+0x60]
    39e9:	48 3b 7c 24 30       	cmp    rdi,QWORD PTR [rsp+0x30]
    39ee:	74 05                	je     39f5 <_asn1_yyparse+0x635>
    39f0:	e8 1b f1 ff ff       	call   2b10 <free@plt>
    39f5:	48 8b b4 24 68 3b 00 	mov    rsi,QWORD PTR [rsp+0x3b68]
    39fc:	00 
    39fd:	64 48 33 34 25 28 00 	xor    rsi,QWORD PTR fs:0x28
    3a04:	00 00 
    3a06:	89 d8                	mov    eax,ebx
    3a08:	0f 85 14 19 00 00    	jne    5322 <_asn1_yyparse+0x1f62>
    3a0e:	48 81 c4 78 3b 00 00 	add    rsp,0x3b78
    3a15:	5b                   	pop    rbx
    3a16:	5d                   	pop    rbp
    3a17:	41 5c                	pop    r12
    3a19:	41 5d                	pop    r13
    3a1b:	41 5e                	pop    r14
    3a1d:	41 5f                	pop    r15
    3a1f:	c3                   	ret    
    3a20:	48 8d 0d 19 bd 00 00 	lea    rcx,[rip+0xbd19]        # f740 <yytranslate>
    3a27:	48 63 d0             	movsxd rdx,eax
    3a2a:	44 0f b6 24 11       	movzx  r12d,BYTE PTR [rcx+rdx*1]
    3a2f:	8b 54 24 2c          	mov    edx,DWORD PTR [rsp+0x2c]
    3a33:	85 d2                	test   edx,edx
    3a35:	0f 85 a3 fe ff ff    	jne    38de <_asn1_yyparse+0x51e>
    3a3b:	48 8b 74 24 40       	mov    rsi,QWORD PTR [rsp+0x40]
    3a40:	48 8b 7c 24 48       	mov    rdi,QWORD PTR [rsp+0x48]
    3a45:	44 89 e1             	mov    ecx,r12d
    3a48:	4c 89 fa             	mov    rdx,r15
    3a4b:	83 05 ae f7 20 00 01 	add    DWORD PTR [rip+0x20f7ae],0x1        # 213200 <_asn1_yynerrs>
    3a52:	e8 c9 f6 ff ff       	call   3120 <yysyntax_error>
    3a57:	85 c0                	test   eax,eax
    3a59:	0f 84 50 01 00 00    	je     3baf <_asn1_yyparse+0x7ef>
    3a5f:	83 f8 01             	cmp    eax,0x1
    3a62:	48 8d 3d e8 aa 00 00 	lea    rdi,[rip+0xaae8]        # e551 <_fini+0x51>
    3a69:	0f 84 33 16 00 00    	je     50a2 <_asn1_yyparse+0x1ce2>
    3a6f:	83 3d fa f8 20 00 0f 	cmp    DWORD PTR [rip+0x20f8fa],0xf        # 213370 <result_parse>
    3a76:	74 0d                	je     3a85 <_asn1_yyparse+0x6c5>
    3a78:	89 44 24 10          	mov    DWORD PTR [rsp+0x10],eax
    3a7c:	e8 bf f5 ff ff       	call   3040 <_asn1_yyerror.part.1>
    3a81:	8b 44 24 10          	mov    eax,DWORD PTR [rsp+0x10]
    3a85:	83 f8 02             	cmp    eax,0x2
    3a88:	0f 85 8f fe ff ff    	jne    391d <_asn1_yyparse+0x55d>
    3a8e:	83 3d db f8 20 00 0f 	cmp    DWORD PTR [rip+0x20f8db],0xf        # 213370 <result_parse>
    3a95:	0f 84 4d 01 00 00    	je     3be8 <_asn1_yyparse+0x828>
    3a9b:	48 8d 3d f7 aa 00 00 	lea    rdi,[rip+0xaaf7]        # e599 <_fini+0x99>
    3aa2:	49 89 df             	mov    r15,rbx
    3aa5:	bb 02 00 00 00       	mov    ebx,0x2
    3aaa:	e8 91 f5 ff ff       	call   3040 <_asn1_yyerror.part.1>
    3aaf:	e9 21 ff ff ff       	jmp    39d5 <_asn1_yyparse+0x615>
    3ab4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    3ab8:	c7 05 a6 f7 20 00 00 	mov    DWORD PTR [rip+0x20f7a6],0x0        # 213268 <_asn1_yychar>
    3abf:	00 00 00 
    3ac2:	31 d2                	xor    edx,edx
    3ac4:	e9 f2 fa ff ff       	jmp    35bb <_asn1_yyparse+0x1fb>
    3ac9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    3ad0:	48 b8 45 6e 64 20 4f 	movabs rax,0x4620664f20646e45
    3ad7:	66 20 46 
    3ada:	c7 05 a4 f7 20 00 69 	mov    DWORD PTR [rip+0x20f7a4],0x656c69        # 213288 <last_token+0x8>
    3ae1:	6c 65 00 
    3ae4:	48 89 05 95 f7 20 00 	mov    QWORD PTR [rip+0x20f795],rax        # 213280 <last_token>
    3aeb:	31 c0                	xor    eax,eax
    3aed:	89 05 75 f7 20 00    	mov    DWORD PTR [rip+0x20f775],eax        # 213268 <_asn1_yychar>
    3af3:	e9 a2 fa ff ff       	jmp    359a <_asn1_yyparse+0x1da>
    3af8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    3aff:	00 
    3b00:	48 8d 05 59 b6 00 00 	lea    rax,[rip+0xb659]        # f160 <yytable>
    3b07:	44 0f bf 24 48       	movsx  r12d,WORD PTR [rax+rcx*2]
    3b0c:	44 89 e2             	mov    edx,r12d
    3b0f:	f7 da                	neg    edx
    3b11:	45 85 e4             	test   r12d,r12d
    3b14:	0f 8e d8 fa ff ff    	jle    35f2 <_asn1_yyparse+0x232>
    3b1a:	8b 44 24 2c          	mov    eax,DWORD PTR [rsp+0x2c]
    3b1e:	c7 05 40 f7 20 00 fe 	mov    DWORD PTR [rip+0x20f740],0xfffffffe        # 213268 <_asn1_yychar>
    3b25:	ff ff ff 
    3b28:	83 f8 01             	cmp    eax,0x1
    3b2b:	83 d0 ff             	adc    eax,0xffffffff
    3b2e:	49 83 c5 48          	add    r13,0x48
    3b32:	89 44 24 2c          	mov    DWORD PTR [rsp+0x2c],eax
    3b36:	48 8b 05 e3 f6 20 00 	mov    rax,QWORD PTR [rip+0x20f6e3]        # 213220 <_asn1_yylval>
    3b3d:	49 89 45 00          	mov    QWORD PTR [r13+0x0],rax
    3b41:	48 8b 05 e0 f6 20 00 	mov    rax,QWORD PTR [rip+0x20f6e0]        # 213228 <_asn1_yylval+0x8>
    3b48:	49 89 45 08          	mov    QWORD PTR [r13+0x8],rax
    3b4c:	48 8b 05 dd f6 20 00 	mov    rax,QWORD PTR [rip+0x20f6dd]        # 213230 <_asn1_yylval+0x10>
    3b53:	49 89 45 10          	mov    QWORD PTR [r13+0x10],rax
    3b57:	48 8b 05 da f6 20 00 	mov    rax,QWORD PTR [rip+0x20f6da]        # 213238 <_asn1_yylval+0x18>
    3b5e:	49 89 45 18          	mov    QWORD PTR [r13+0x18],rax
    3b62:	48 8b 05 d7 f6 20 00 	mov    rax,QWORD PTR [rip+0x20f6d7]        # 213240 <_asn1_yylval+0x20>
    3b69:	49 89 45 20          	mov    QWORD PTR [r13+0x20],rax
    3b6d:	48 8b 05 d4 f6 20 00 	mov    rax,QWORD PTR [rip+0x20f6d4]        # 213248 <_asn1_yylval+0x28>
    3b74:	49 89 45 28          	mov    QWORD PTR [r13+0x28],rax
    3b78:	48 8b 05 d1 f6 20 00 	mov    rax,QWORD PTR [rip+0x20f6d1]        # 213250 <_asn1_yylval+0x30>
    3b7f:	49 89 45 30          	mov    QWORD PTR [r13+0x30],rax
    3b83:	48 8b 05 ce f6 20 00 	mov    rax,QWORD PTR [rip+0x20f6ce]        # 213258 <_asn1_yylval+0x38>
    3b8a:	49 89 45 38          	mov    QWORD PTR [r13+0x38],rax
    3b8e:	48 8b 05 cb f6 20 00 	mov    rax,QWORD PTR [rip+0x20f6cb]        # 213260 <_asn1_yylval+0x40>
    3b95:	49 89 45 40          	mov    QWORD PTR [r13+0x40],rax
    3b99:	e9 03 fd ff ff       	jmp    38a1 <_asn1_yyparse+0x4e1>
    3b9e:	48 8d 05 bb b5 00 00 	lea    rax,[rip+0xb5bb]        # f160 <yytable>
    3ba5:	44 0f bf 24 50       	movsx  r12d,WORD PTR [rax+rdx*2]
    3baa:	e9 f2 fc ff ff       	jmp    38a1 <_asn1_yyparse+0x4e1>
    3baf:	83 3d ba f7 20 00 0f 	cmp    DWORD PTR [rip+0x20f7ba],0xf        # 213370 <result_parse>
    3bb6:	48 8b 7c 24 60       	mov    rdi,QWORD PTR [rsp+0x60]
    3bbb:	0f 84 5c fd ff ff    	je     391d <_asn1_yyparse+0x55d>
    3bc1:	e9 b2 fe ff ff       	jmp    3a78 <_asn1_yyparse+0x6b8>
    3bc6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    3bcd:	00 00 00 
    3bd0:	0f 85 47 fd ff ff    	jne    391d <_asn1_yyparse+0x55d>
    3bd6:	49 89 df             	mov    r15,rbx
    3bd9:	bb 01 00 00 00       	mov    ebx,0x1
    3bde:	e9 f2 fd ff ff       	jmp    39d5 <_asn1_yyparse+0x615>
    3be3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    3be8:	49 89 df             	mov    r15,rbx
    3beb:	bb 02 00 00 00       	mov    ebx,0x2
    3bf0:	e9 e0 fd ff ff       	jmp    39d5 <_asn1_yyparse+0x615>
    3bf5:	49 8b 85 28 ff ff ff 	mov    rax,QWORD PTR [r13-0xd8]
    3bfc:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    3c01:	e9 ca fb ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    3c06:	48 8d 3d 73 f7 20 00 	lea    rdi,[rip+0x20f773]        # 213380 <e_list>
    3c0d:	be 03 00 04 00       	mov    esi,0x40003
    3c12:	e8 39 75 00 00       	call   b150 <_asn1_add_static_node>
    3c17:	48 85 c0             	test   rax,rax
    3c1a:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    3c1f:	0f 84 ab fb ff ff    	je     37d0 <_asn1_yyparse+0x410>
    3c25:	49 8b 55 b8          	mov    rdx,QWORD PTR [r13-0x48]
    3c29:	48 85 d2             	test   rdx,rdx
    3c2c:	48 89 50 60          	mov    QWORD PTR [rax+0x60],rdx
    3c30:	0f 84 9a fb ff ff    	je     37d0 <_asn1_yyparse+0x410>
    3c36:	48 89 42 70          	mov    QWORD PTR [rdx+0x70],rax
    3c3a:	e9 91 fb ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    3c3f:	48 8d 3d 3a f7 20 00 	lea    rdi,[rip+0x20f73a]        # 213380 <e_list>
    3c46:	be 03 00 00 00       	mov    esi,0x3
    3c4b:	e8 00 75 00 00       	call   b150 <_asn1_add_static_node>
    3c50:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    3c55:	e9 76 fb ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    3c5a:	48 8d 3d 1f f7 20 00 	lea    rdi,[rip+0x20f71f]        # 213380 <e_list>
    3c61:	be 09 00 02 00       	mov    esi,0x20009
    3c66:	e8 e5 74 00 00       	call   b150 <_asn1_add_static_node>
    3c6b:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    3c70:	e9 5b fb ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    3c75:	48 8d 3d 04 f7 20 00 	lea    rdi,[rip+0x20f704]        # 213380 <e_list>
    3c7c:	be 09 00 01 00       	mov    esi,0x10009
    3c81:	e8 ca 74 00 00       	call   b150 <_asn1_add_static_node>
    3c86:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    3c8b:	e9 40 fb ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    3c90:	48 8d 3d e9 f6 20 00 	lea    rdi,[rip+0x20f6e9]        # 213380 <e_list>
    3c97:	be 09 00 00 00       	mov    esi,0x9
    3c9c:	e8 af 74 00 00       	call   b150 <_asn1_add_static_node>
    3ca1:	4c 89 ea             	mov    rdx,r13
    3ca4:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    3ca9:	8b 32                	mov    esi,DWORD PTR [rdx]
    3cab:	48 83 c2 04          	add    rdx,0x4
    3caf:	8d 8e ff fe fe fe    	lea    ecx,[rsi-0x1010101]
    3cb5:	f7 d6                	not    esi
    3cb7:	21 f1                	and    ecx,esi
    3cb9:	81 e1 80 80 80 80    	and    ecx,0x80808080
    3cbf:	74 e8                	je     3ca9 <_asn1_yyparse+0x8e9>
    3cc1:	89 ce                	mov    esi,ecx
    3cc3:	48 89 c7             	mov    rdi,rax
    3cc6:	c1 ee 10             	shr    esi,0x10
    3cc9:	f7 c1 80 80 00 00    	test   ecx,0x8080
    3ccf:	0f 44 ce             	cmove  ecx,esi
    3cd2:	48 8d 72 02          	lea    rsi,[rdx+0x2]
    3cd6:	48 0f 44 d6          	cmove  rdx,rsi
    3cda:	89 ce                	mov    esi,ecx
    3cdc:	40 00 ce             	add    sil,cl
    3cdf:	4c 89 ee             	mov    rsi,r13
    3ce2:	48 83 da 03          	sbb    rdx,0x3
    3ce6:	4c 29 ea             	sub    rdx,r13
    3ce9:	83 c2 01             	add    edx,0x1
    3cec:	e8 6f 77 00 00       	call   b460 <_asn1_set_value>
    3cf1:	e9 da fa ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    3cf6:	49 8b 45 b8          	mov    rax,QWORD PTR [r13-0x48]
    3cfa:	48 85 c0             	test   rax,rax
    3cfd:	74 07                	je     3d06 <_asn1_yyparse+0x946>
    3cff:	81 48 48 00 10 00 00 	or     DWORD PTR [rax+0x48],0x1000
    3d06:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    3d0b:	e9 c0 fa ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    3d10:	49 8b 45 b8          	mov    rax,QWORD PTR [r13-0x48]
    3d14:	48 85 c0             	test   rax,rax
    3d17:	74 07                	je     3d20 <_asn1_yyparse+0x960>
    3d19:	81 48 48 00 08 00 00 	or     DWORD PTR [rax+0x48],0x800
    3d20:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    3d25:	e9 a6 fa ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    3d2a:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    3d2e:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    3d33:	e9 98 fa ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    3d38:	41 8b b5 70 ff ff ff 	mov    esi,DWORD PTR [r13-0x90]
    3d3f:	48 8d 3d 3a f6 20 00 	lea    rdi,[rip+0x20f63a]        # 213380 <e_list>
    3d46:	83 ce 08             	or     esi,0x8
    3d49:	e8 02 74 00 00       	call   b150 <_asn1_add_static_node>
    3d4e:	49 8d 75 b8          	lea    rsi,[r13-0x48]
    3d52:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    3d57:	48 89 f2             	mov    rdx,rsi
    3d5a:	8b 3a                	mov    edi,DWORD PTR [rdx]
    3d5c:	48 83 c2 04          	add    rdx,0x4
    3d60:	8d 8f ff fe fe fe    	lea    ecx,[rdi-0x1010101]
    3d66:	f7 d7                	not    edi
    3d68:	21 f9                	and    ecx,edi
    3d6a:	81 e1 80 80 80 80    	and    ecx,0x80808080
    3d70:	74 e8                	je     3d5a <_asn1_yyparse+0x99a>
    3d72:	89 cf                	mov    edi,ecx
    3d74:	c1 ef 10             	shr    edi,0x10
    3d77:	f7 c1 80 80 00 00    	test   ecx,0x8080
    3d7d:	0f 44 cf             	cmove  ecx,edi
    3d80:	48 8d 7a 02          	lea    rdi,[rdx+0x2]
    3d84:	48 0f 44 d7          	cmove  rdx,rdi
    3d88:	89 cf                	mov    edi,ecx
    3d8a:	40 00 cf             	add    dil,cl
    3d8d:	48 89 c7             	mov    rdi,rax
    3d90:	48 83 da 03          	sbb    rdx,0x3
    3d94:	48 29 f2             	sub    rdx,rsi
    3d97:	83 c2 01             	add    edx,0x1
    3d9a:	e8 c1 76 00 00       	call   b460 <_asn1_set_value>
    3d9f:	e9 2c fa ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    3da4:	48 8d 3d d5 f5 20 00 	lea    rdi,[rip+0x20f5d5]        # 213380 <e_list>
    3dab:	be 08 00 00 00       	mov    esi,0x8
    3db0:	e8 9b 73 00 00       	call   b150 <_asn1_add_static_node>
    3db5:	49 8d 75 b8          	lea    rsi,[r13-0x48]
    3db9:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    3dbe:	48 89 f2             	mov    rdx,rsi
    3dc1:	8b 3a                	mov    edi,DWORD PTR [rdx]
    3dc3:	48 83 c2 04          	add    rdx,0x4
    3dc7:	8d 8f ff fe fe fe    	lea    ecx,[rdi-0x1010101]
    3dcd:	f7 d7                	not    edi
    3dcf:	21 f9                	and    ecx,edi
    3dd1:	81 e1 80 80 80 80    	and    ecx,0x80808080
    3dd7:	74 e8                	je     3dc1 <_asn1_yyparse+0xa01>
    3dd9:	89 cf                	mov    edi,ecx
    3ddb:	c1 ef 10             	shr    edi,0x10
    3dde:	f7 c1 80 80 00 00    	test   ecx,0x8080
    3de4:	0f 44 cf             	cmove  ecx,edi
    3de7:	48 8d 7a 02          	lea    rdi,[rdx+0x2]
    3deb:	48 0f 44 d7          	cmove  rdx,rdi
    3def:	89 cf                	mov    edi,ecx
    3df1:	40 00 cf             	add    dil,cl
    3df4:	48 89 c7             	mov    rdi,rax
    3df7:	48 83 da 03          	sbb    rdx,0x3
    3dfb:	48 29 f2             	sub    rdx,rsi
    3dfe:	83 c2 01             	add    edx,0x1
    3e01:	e8 5a 76 00 00       	call   b460 <_asn1_set_value>
    3e06:	e9 c5 f9 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    3e0b:	c7 44 24 70 00 04 00 	mov    DWORD PTR [rsp+0x70],0x400
    3e12:	00 
    3e13:	e9 b8 f9 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    3e18:	c7 44 24 70 00 02 00 	mov    DWORD PTR [rsp+0x70],0x200
    3e1f:	00 
    3e20:	e9 ab f9 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    3e25:	48 8b 05 cc f1 20 00 	mov    rax,QWORD PTR [rip+0x20f1cc]        # 212ff8 <_DYNAMIC+0x228>
    3e2c:	44 8b 05 2d f5 20 00 	mov    r8d,DWORD PTR [rip+0x20f52d]        # 213360 <line_number>
    3e33:	4d 8d 8d c0 fd ff ff 	lea    r9,[r13-0x240]
    3e3a:	48 8b 0d 2f f4 20 00 	mov    rcx,QWORD PTR [rip+0x20f42f]        # 213270 <file_name>
    3e41:	48 8d 15 a0 ac 00 00 	lea    rdx,[rip+0xaca0]        # eae8 <_fini+0x5e8>
    3e48:	be 01 00 00 00       	mov    esi,0x1
    3e4d:	48 8b 38             	mov    rdi,QWORD PTR [rax]
    3e50:	31 c0                	xor    eax,eax
    3e52:	e8 b9 ef ff ff       	call   2e10 <__fprintf_chk@plt>
    3e57:	e9 74 f9 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    3e5c:	48 8b 6c 24 38       	mov    rbp,QWORD PTR [rsp+0x38]
    3e61:	48 8d 0d 18 f4 20 00 	lea    rcx,[rip+0x20f418]        # 213280 <last_token>
    3e68:	48 8d 15 08 a7 00 00 	lea    rdx,[rip+0xa708]        # e577 <_fini+0x77>
    3e6f:	be 41 00 00 00       	mov    esi,0x41
    3e74:	31 c0                	xor    eax,eax
    3e76:	48 89 ef             	mov    rdi,rbp
    3e79:	e8 82 ed ff ff       	call   2c00 <snprintf@plt>
    3e7e:	48 89 e9             	mov    rcx,rbp
    3e81:	8b 31                	mov    esi,DWORD PTR [rcx]
    3e83:	48 83 c1 04          	add    rcx,0x4
    3e87:	8d 96 ff fe fe fe    	lea    edx,[rsi-0x1010101]
    3e8d:	f7 d6                	not    esi
    3e8f:	21 f2                	and    edx,esi
    3e91:	81 e2 80 80 80 80    	and    edx,0x80808080
    3e97:	74 e8                	je     3e81 <_asn1_yyparse+0xac1>
    3e99:	89 d6                	mov    esi,edx
    3e9b:	c1 ee 10             	shr    esi,0x10
    3e9e:	f7 c2 80 80 00 00    	test   edx,0x8080
    3ea4:	0f 44 d6             	cmove  edx,esi
    3ea7:	48 8d 71 02          	lea    rsi,[rcx+0x2]
    3eab:	48 0f 44 ce          	cmove  rcx,rsi
    3eaf:	89 d6                	mov    esi,edx
    3eb1:	40 00 d6             	add    sil,dl
    3eb4:	48 83 d9 03          	sbb    rcx,0x3
    3eb8:	48 2b 4c 24 38       	sub    rcx,QWORD PTR [rsp+0x38]
    3ebd:	39 c8                	cmp    eax,ecx
    3ebf:	0f 84 0b f9 ff ff    	je     37d0 <_asn1_yyparse+0x410>
    3ec5:	48 8b 05 2c f1 20 00 	mov    rax,QWORD PTR [rip+0x20f12c]        # 212ff8 <_DYNAMIC+0x228>
    3ecc:	44 8b 05 8d f4 20 00 	mov    r8d,DWORD PTR [rip+0x20f48d]        # 213360 <line_number>
    3ed3:	48 8d 15 a8 a6 00 00 	lea    rdx,[rip+0xa6a8]        # e582 <_fini+0x82>
    3eda:	48 8b 0d 8f f3 20 00 	mov    rcx,QWORD PTR [rip+0x20f38f]        # 213270 <file_name>
    3ee1:	be 01 00 00 00       	mov    esi,0x1
    3ee6:	48 8b 38             	mov    rdi,QWORD PTR [rax]
    3ee9:	31 c0                	xor    eax,eax
    3eeb:	e8 20 ef ff ff       	call   2e10 <__fprintf_chk@plt>
    3ef0:	bf 01 00 00 00       	mov    edi,0x1
    3ef5:	e8 e6 ee ff ff       	call   2de0 <exit@plt>
    3efa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    3f00:	48 8b 6c 24 38       	mov    rbp,QWORD PTR [rsp+0x38]
    3f05:	48 8d 0d 74 f3 20 00 	lea    rcx,[rip+0x20f374]        # 213280 <last_token>
    3f0c:	48 8d 15 64 a6 00 00 	lea    rdx,[rip+0xa664]        # e577 <_fini+0x77>
    3f13:	be 41 00 00 00       	mov    esi,0x41
    3f18:	31 c0                	xor    eax,eax
    3f1a:	48 89 ef             	mov    rdi,rbp
    3f1d:	e8 de ec ff ff       	call   2c00 <snprintf@plt>
    3f22:	48 89 e9             	mov    rcx,rbp
    3f25:	8b 31                	mov    esi,DWORD PTR [rcx]
    3f27:	48 83 c1 04          	add    rcx,0x4
    3f2b:	8d 96 ff fe fe fe    	lea    edx,[rsi-0x1010101]
    3f31:	f7 d6                	not    esi
    3f33:	21 f2                	and    edx,esi
    3f35:	81 e2 80 80 80 80    	and    edx,0x80808080
    3f3b:	74 e8                	je     3f25 <_asn1_yyparse+0xb65>
    3f3d:	e9 57 ff ff ff       	jmp    3e99 <_asn1_yyparse+0xad9>
    3f42:	48 8b 6c 24 38       	mov    rbp,QWORD PTR [rsp+0x38]
    3f47:	48 8d 0d 32 f3 20 00 	lea    rcx,[rip+0x20f332]        # 213280 <last_token>
    3f4e:	48 8d 15 22 a6 00 00 	lea    rdx,[rip+0xa622]        # e577 <_fini+0x77>
    3f55:	be 41 00 00 00       	mov    esi,0x41
    3f5a:	31 c0                	xor    eax,eax
    3f5c:	48 89 ef             	mov    rdi,rbp
    3f5f:	e8 9c ec ff ff       	call   2c00 <snprintf@plt>
    3f64:	48 89 e9             	mov    rcx,rbp
    3f67:	8b 31                	mov    esi,DWORD PTR [rcx]
    3f69:	48 83 c1 04          	add    rcx,0x4
    3f6d:	8d 96 ff fe fe fe    	lea    edx,[rsi-0x1010101]
    3f73:	f7 d6                	not    esi
    3f75:	21 f2                	and    edx,esi
    3f77:	81 e2 80 80 80 80    	and    edx,0x80808080
    3f7d:	74 e8                	je     3f67 <_asn1_yyparse+0xba7>
    3f7f:	e9 15 ff ff ff       	jmp    3e99 <_asn1_yyparse+0xad9>
    3f84:	48 8b 6c 24 38       	mov    rbp,QWORD PTR [rsp+0x38]
    3f89:	48 8d 0d f0 f2 20 00 	lea    rcx,[rip+0x20f2f0]        # 213280 <last_token>
    3f90:	48 8d 15 e0 a5 00 00 	lea    rdx,[rip+0xa5e0]        # e577 <_fini+0x77>
    3f97:	be 41 00 00 00       	mov    esi,0x41
    3f9c:	31 c0                	xor    eax,eax
    3f9e:	48 89 ef             	mov    rdi,rbp
    3fa1:	e8 5a ec ff ff       	call   2c00 <snprintf@plt>
    3fa6:	48 89 e9             	mov    rcx,rbp
    3fa9:	8b 31                	mov    esi,DWORD PTR [rcx]
    3fab:	48 83 c1 04          	add    rcx,0x4
    3faf:	8d 96 ff fe fe fe    	lea    edx,[rsi-0x1010101]
    3fb5:	f7 d6                	not    esi
    3fb7:	21 f2                	and    edx,esi
    3fb9:	81 e2 80 80 80 80    	and    edx,0x80808080
    3fbf:	74 e8                	je     3fa9 <_asn1_yyparse+0xbe9>
    3fc1:	e9 d3 fe ff ff       	jmp    3e99 <_asn1_yyparse+0xad9>
    3fc6:	48 8b 6c 24 38       	mov    rbp,QWORD PTR [rsp+0x38]
    3fcb:	48 8d 0d ae f2 20 00 	lea    rcx,[rip+0x20f2ae]        # 213280 <last_token>
    3fd2:	48 8d 15 9e a5 00 00 	lea    rdx,[rip+0xa59e]        # e577 <_fini+0x77>
    3fd9:	be 41 00 00 00       	mov    esi,0x41
    3fde:	31 c0                	xor    eax,eax
    3fe0:	48 89 ef             	mov    rdi,rbp
    3fe3:	e8 18 ec ff ff       	call   2c00 <snprintf@plt>
    3fe8:	48 89 e9             	mov    rcx,rbp
    3feb:	8b 31                	mov    esi,DWORD PTR [rcx]
    3fed:	48 83 c1 04          	add    rcx,0x4
    3ff1:	8d 96 ff fe fe fe    	lea    edx,[rsi-0x1010101]
    3ff7:	f7 d6                	not    esi
    3ff9:	21 f2                	and    edx,esi
    3ffb:	81 e2 80 80 80 80    	and    edx,0x80808080
    4001:	74 e8                	je     3feb <_asn1_yyparse+0xc2b>
    4003:	e9 91 fe ff ff       	jmp    3e99 <_asn1_yyparse+0xad9>
    4008:	48 8b 6c 24 38       	mov    rbp,QWORD PTR [rsp+0x38]
    400d:	48 8d 0d 6c f2 20 00 	lea    rcx,[rip+0x20f26c]        # 213280 <last_token>
    4014:	48 8d 15 5c a5 00 00 	lea    rdx,[rip+0xa55c]        # e577 <_fini+0x77>
    401b:	be 41 00 00 00       	mov    esi,0x41
    4020:	31 c0                	xor    eax,eax
    4022:	48 89 ef             	mov    rdi,rbp
    4025:	e8 d6 eb ff ff       	call   2c00 <snprintf@plt>
    402a:	48 89 e9             	mov    rcx,rbp
    402d:	8b 31                	mov    esi,DWORD PTR [rcx]
    402f:	48 83 c1 04          	add    rcx,0x4
    4033:	8d 96 ff fe fe fe    	lea    edx,[rsi-0x1010101]
    4039:	f7 d6                	not    esi
    403b:	21 f2                	and    edx,esi
    403d:	81 e2 80 80 80 80    	and    edx,0x80808080
    4043:	74 e8                	je     402d <_asn1_yyparse+0xc6d>
    4045:	e9 4f fe ff ff       	jmp    3e99 <_asn1_yyparse+0xad9>
    404a:	48 8b 6c 24 38       	mov    rbp,QWORD PTR [rsp+0x38]
    404f:	48 8d 0d 2a f2 20 00 	lea    rcx,[rip+0x20f22a]        # 213280 <last_token>
    4056:	48 8d 15 1a a5 00 00 	lea    rdx,[rip+0xa51a]        # e577 <_fini+0x77>
    405d:	be 41 00 00 00       	mov    esi,0x41
    4062:	31 c0                	xor    eax,eax
    4064:	48 89 ef             	mov    rdi,rbp
    4067:	e8 94 eb ff ff       	call   2c00 <snprintf@plt>
    406c:	48 89 e9             	mov    rcx,rbp
    406f:	8b 31                	mov    esi,DWORD PTR [rcx]
    4071:	48 83 c1 04          	add    rcx,0x4
    4075:	8d 96 ff fe fe fe    	lea    edx,[rsi-0x1010101]
    407b:	f7 d6                	not    esi
    407d:	21 f2                	and    edx,esi
    407f:	81 e2 80 80 80 80    	and    edx,0x80808080
    4085:	74 e8                	je     406f <_asn1_yyparse+0xcaf>
    4087:	e9 0d fe ff ff       	jmp    3e99 <_asn1_yyparse+0xad9>
    408c:	48 8b 6c 24 38       	mov    rbp,QWORD PTR [rsp+0x38]
    4091:	48 8d 0d e8 f1 20 00 	lea    rcx,[rip+0x20f1e8]        # 213280 <last_token>
    4098:	48 8d 15 d8 a4 00 00 	lea    rdx,[rip+0xa4d8]        # e577 <_fini+0x77>
    409f:	be 41 00 00 00       	mov    esi,0x41
    40a4:	31 c0                	xor    eax,eax
    40a6:	48 89 ef             	mov    rdi,rbp
    40a9:	e8 52 eb ff ff       	call   2c00 <snprintf@plt>
    40ae:	48 89 e9             	mov    rcx,rbp
    40b1:	8b 31                	mov    esi,DWORD PTR [rcx]
    40b3:	48 83 c1 04          	add    rcx,0x4
    40b7:	8d 96 ff fe fe fe    	lea    edx,[rsi-0x1010101]
    40bd:	f7 d6                	not    esi
    40bf:	21 f2                	and    edx,esi
    40c1:	81 e2 80 80 80 80    	and    edx,0x80808080
    40c7:	74 e8                	je     40b1 <_asn1_yyparse+0xcf1>
    40c9:	e9 cb fd ff ff       	jmp    3e99 <_asn1_yyparse+0xad9>
    40ce:	48 8d 3d ab f2 20 00 	lea    rdi,[rip+0x20f2ab]        # 213380 <e_list>
    40d5:	be 0d 00 40 00       	mov    esi,0x40000d
    40da:	e8 71 70 00 00       	call   b150 <_asn1_add_static_node>
    40df:	48 8d 3d 9a f2 20 00 	lea    rdi,[rip+0x20f29a]        # 213380 <e_list>
    40e6:	be 01 00 00 00       	mov    esi,0x1
    40eb:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    40f0:	e8 5b 70 00 00       	call   b150 <_asn1_add_static_node>
    40f5:	48 8b 54 24 70       	mov    rdx,QWORD PTR [rsp+0x70]
    40fa:	48 85 d2             	test   rdx,rdx
    40fd:	0f 84 fc 11 00 00    	je     52ff <_asn1_yyparse+0x1f3f>
    4103:	48 85 c0             	test   rax,rax
    4106:	48 89 42 60          	mov    QWORD PTR [rdx+0x60],rax
    410a:	74 04                	je     4110 <_asn1_yyparse+0xd50>
    410c:	48 89 50 70          	mov    QWORD PTR [rax+0x70],rdx
    4110:	4c 89 ee             	mov    rsi,r13
    4113:	48 89 c7             	mov    rdi,rax
    4116:	e8 f5 75 00 00       	call   b710 <_asn1_set_name>
    411b:	e9 b0 f6 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4120:	48 8d 3d 59 f2 20 00 	lea    rdi,[rip+0x20f259]        # 213380 <e_list>
    4127:	be 0d 00 00 00       	mov    esi,0xd
    412c:	e8 1f 70 00 00       	call   b150 <_asn1_add_static_node>
    4131:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4136:	e9 95 f6 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    413b:	48 8d 3d 3e f2 20 00 	lea    rdi,[rip+0x20f23e]        # 213380 <e_list>
    4142:	be 12 00 00 00       	mov    esi,0x12
    4147:	e8 04 70 00 00       	call   b150 <_asn1_add_static_node>
    414c:	48 85 c0             	test   rax,rax
    414f:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4154:	0f 84 76 f6 ff ff    	je     37d0 <_asn1_yyparse+0x410>
    415a:	49 8b 55 b8          	mov    rdx,QWORD PTR [r13-0x48]
    415e:	48 85 d2             	test   rdx,rdx
    4161:	48 89 50 60          	mov    QWORD PTR [rax+0x60],rdx
    4165:	0f 84 65 f6 ff ff    	je     37d0 <_asn1_yyparse+0x410>
    416b:	48 89 42 70          	mov    QWORD PTR [rdx+0x70],rax
    416f:	e9 5c f6 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4174:	48 8d 3d 05 f2 20 00 	lea    rdi,[rip+0x20f205]        # 213380 <e_list>
    417b:	be 0f 00 20 00       	mov    esi,0x20000f
    4180:	e8 cb 6f 00 00       	call   b150 <_asn1_add_static_node>
    4185:	48 85 c0             	test   rax,rax
    4188:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    418d:	0f 84 3d f6 ff ff    	je     37d0 <_asn1_yyparse+0x410>
    4193:	49 8b 55 00          	mov    rdx,QWORD PTR [r13+0x0]
    4197:	48 85 d2             	test   rdx,rdx
    419a:	48 89 50 60          	mov    QWORD PTR [rax+0x60],rdx
    419e:	0f 84 2c f6 ff ff    	je     37d0 <_asn1_yyparse+0x410>
    41a4:	48 89 42 70          	mov    QWORD PTR [rdx+0x70],rax
    41a8:	e9 23 f6 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    41ad:	48 8d 3d cc f1 20 00 	lea    rdi,[rip+0x20f1cc]        # 213380 <e_list>
    41b4:	be 0f 00 00 00       	mov    esi,0xf
    41b9:	e8 92 6f 00 00       	call   b150 <_asn1_add_static_node>
    41be:	48 85 c0             	test   rax,rax
    41c1:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    41c6:	0f 84 04 f6 ff ff    	je     37d0 <_asn1_yyparse+0x410>
    41cc:	49 8b 55 00          	mov    rdx,QWORD PTR [r13+0x0]
    41d0:	48 85 d2             	test   rdx,rdx
    41d3:	48 89 50 60          	mov    QWORD PTR [rax+0x60],rdx
    41d7:	0f 84 f3 f5 ff ff    	je     37d0 <_asn1_yyparse+0x410>
    41dd:	48 89 42 70          	mov    QWORD PTR [rdx+0x70],rax
    41e1:	e9 ea f5 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    41e6:	48 8d 3d 93 f1 20 00 	lea    rdi,[rip+0x20f193]        # 213380 <e_list>
    41ed:	be 0e 00 00 00       	mov    esi,0xe
    41f2:	e8 59 6f 00 00       	call   b150 <_asn1_add_static_node>
    41f7:	48 85 c0             	test   rax,rax
    41fa:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    41ff:	0f 84 cb f5 ff ff    	je     37d0 <_asn1_yyparse+0x410>
    4205:	49 8b 55 b8          	mov    rdx,QWORD PTR [r13-0x48]
    4209:	48 85 d2             	test   rdx,rdx
    420c:	48 89 50 60          	mov    QWORD PTR [rax+0x60],rdx
    4210:	0f 84 ba f5 ff ff    	je     37d0 <_asn1_yyparse+0x410>
    4216:	48 89 42 70          	mov    QWORD PTR [rdx+0x70],rax
    421a:	e9 b1 f5 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    421f:	48 8d 3d 5a f1 20 00 	lea    rdi,[rip+0x20f15a]        # 213380 <e_list>
    4226:	be 0b 00 20 00       	mov    esi,0x20000b
    422b:	e8 20 6f 00 00       	call   b150 <_asn1_add_static_node>
    4230:	48 85 c0             	test   rax,rax
    4233:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4238:	0f 84 92 f5 ff ff    	je     37d0 <_asn1_yyparse+0x410>
    423e:	49 8b 55 00          	mov    rdx,QWORD PTR [r13+0x0]
    4242:	48 85 d2             	test   rdx,rdx
    4245:	48 89 50 60          	mov    QWORD PTR [rax+0x60],rdx
    4249:	0f 84 81 f5 ff ff    	je     37d0 <_asn1_yyparse+0x410>
    424f:	48 89 42 70          	mov    QWORD PTR [rdx+0x70],rax
    4253:	e9 78 f5 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4258:	48 8d 3d 21 f1 20 00 	lea    rdi,[rip+0x20f121]        # 213380 <e_list>
    425f:	be 0b 00 00 00       	mov    esi,0xb
    4264:	e8 e7 6e 00 00       	call   b150 <_asn1_add_static_node>
    4269:	48 85 c0             	test   rax,rax
    426c:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4271:	0f 84 59 f5 ff ff    	je     37d0 <_asn1_yyparse+0x410>
    4277:	49 8b 55 00          	mov    rdx,QWORD PTR [r13+0x0]
    427b:	48 85 d2             	test   rdx,rdx
    427e:	48 89 50 60          	mov    QWORD PTR [rax+0x60],rdx
    4282:	0f 84 48 f5 ff ff    	je     37d0 <_asn1_yyparse+0x410>
    4288:	48 89 42 70          	mov    QWORD PTR [rdx+0x70],rax
    428c:	e9 3f f5 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4291:	48 8d 3d e8 f0 20 00 	lea    rdi,[rip+0x20f0e8]        # 213380 <e_list>
    4298:	be 05 00 00 00       	mov    esi,0x5
    429d:	e8 ae 6e 00 00       	call   b150 <_asn1_add_static_node>
    42a2:	48 85 c0             	test   rax,rax
    42a5:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    42aa:	0f 84 20 f5 ff ff    	je     37d0 <_asn1_yyparse+0x410>
    42b0:	49 8b 55 b8          	mov    rdx,QWORD PTR [r13-0x48]
    42b4:	48 85 d2             	test   rdx,rdx
    42b7:	48 89 50 60          	mov    QWORD PTR [rax+0x60],rdx
    42bb:	0f 84 0f f5 ff ff    	je     37d0 <_asn1_yyparse+0x410>
    42c1:	48 89 42 70          	mov    QWORD PTR [rdx+0x70],rax
    42c5:	e9 06 f5 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    42ca:	49 8b bd 70 ff ff ff 	mov    rdi,QWORD PTR [r13-0x90]
    42d1:	49 8b 6d 00          	mov    rbp,QWORD PTR [r13+0x0]
    42d5:	48 89 7c 24 70       	mov    QWORD PTR [rsp+0x70],rdi
    42da:	e8 01 75 00 00       	call   b7e0 <_asn1_get_last_right>
    42df:	48 89 ee             	mov    rsi,rbp
    42e2:	48 89 c7             	mov    rdi,rax
    42e5:	e8 d6 74 00 00       	call   b7c0 <_asn1_set_right>
    42ea:	e9 e1 f4 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    42ef:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    42f3:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    42f8:	e9 d3 f4 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    42fd:	49 8b 7d 00          	mov    rdi,QWORD PTR [r13+0x0]
    4301:	49 8d 75 b8          	lea    rsi,[r13-0x48]
    4305:	e8 06 74 00 00       	call   b710 <_asn1_set_name>
    430a:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    430f:	e9 bc f4 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4314:	49 8b 45 b8          	mov    rax,QWORD PTR [r13-0x48]
    4318:	48 85 c0             	test   rax,rax
    431b:	74 07                	je     4324 <_asn1_yyparse+0xf64>
    431d:	81 48 48 00 40 00 00 	or     DWORD PTR [rax+0x48],0x4000
    4324:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4329:	e9 a2 f4 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    432e:	49 8b 75 b8          	mov    rsi,QWORD PTR [r13-0x48]
    4332:	48 85 f6             	test   rsi,rsi
    4335:	0f 84 cb 0f 00 00    	je     5306 <_asn1_yyparse+0x1f46>
    433b:	81 4e 48 00 80 00 00 	or     DWORD PTR [rsi+0x48],0x8000
    4342:	48 89 74 24 70       	mov    QWORD PTR [rsp+0x70],rsi
    4347:	48 8b 76 60          	mov    rsi,QWORD PTR [rsi+0x60]
    434b:	49 8b 7d 00          	mov    rdi,QWORD PTR [r13+0x0]
    434f:	e8 6c 74 00 00       	call   b7c0 <_asn1_set_right>
    4354:	48 8b 54 24 70       	mov    rdx,QWORD PTR [rsp+0x70]
    4359:	48 85 d2             	test   rdx,rdx
    435c:	0f 84 6e f4 ff ff    	je     37d0 <_asn1_yyparse+0x410>
    4362:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    4366:	48 85 c0             	test   rax,rax
    4369:	48 89 42 60          	mov    QWORD PTR [rdx+0x60],rax
    436d:	0f 84 5d f4 ff ff    	je     37d0 <_asn1_yyparse+0x410>
    4373:	48 89 50 70          	mov    QWORD PTR [rax+0x70],rdx
    4377:	e9 54 f4 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    437c:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    4380:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4385:	e9 46 f4 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    438a:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    438e:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4393:	e9 38 f4 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4398:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    439c:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    43a1:	e9 2a f4 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    43a6:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    43aa:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    43af:	e9 1c f4 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    43b4:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    43b8:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    43bd:	e9 0e f4 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    43c2:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    43c6:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    43cb:	e9 00 f4 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    43d0:	48 8d 3d a9 ef 20 00 	lea    rdi,[rip+0x20efa9]        # 213380 <e_list>
    43d7:	be 14 00 00 00       	mov    esi,0x14
    43dc:	e8 6f 6d 00 00       	call   b150 <_asn1_add_static_node>
    43e1:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    43e6:	e9 e5 f3 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    43eb:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    43ef:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    43f4:	e9 d7 f3 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    43f9:	48 8d 3d 80 ef 20 00 	lea    rdi,[rip+0x20ef80]        # 213380 <e_list>
    4400:	be 02 00 00 00       	mov    esi,0x2
    4405:	e8 46 6d 00 00       	call   b150 <_asn1_add_static_node>
    440a:	4c 89 ea             	mov    rdx,r13
    440d:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4412:	8b 32                	mov    esi,DWORD PTR [rdx]
    4414:	48 83 c2 04          	add    rdx,0x4
    4418:	8d 8e ff fe fe fe    	lea    ecx,[rsi-0x1010101]
    441e:	f7 d6                	not    esi
    4420:	21 f1                	and    ecx,esi
    4422:	81 e1 80 80 80 80    	and    ecx,0x80808080
    4428:	74 e8                	je     4412 <_asn1_yyparse+0x1052>
    442a:	89 ce                	mov    esi,ecx
    442c:	48 89 c7             	mov    rdi,rax
    442f:	c1 ee 10             	shr    esi,0x10
    4432:	f7 c1 80 80 00 00    	test   ecx,0x8080
    4438:	0f 44 ce             	cmove  ecx,esi
    443b:	48 8d 72 02          	lea    rsi,[rdx+0x2]
    443f:	48 0f 44 d6          	cmove  rdx,rsi
    4443:	89 ce                	mov    esi,ecx
    4445:	40 00 ce             	add    sil,cl
    4448:	4c 89 ee             	mov    rsi,r13
    444b:	48 83 da 03          	sbb    rdx,0x3
    444f:	4c 29 ea             	sub    rdx,r13
    4452:	83 c2 01             	add    edx,0x1
    4455:	e8 06 70 00 00       	call   b460 <_asn1_set_value>
    445a:	e9 71 f3 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    445f:	48 8d 3d 1a ef 20 00 	lea    rdi,[rip+0x20ef1a]        # 213380 <e_list>
    4466:	be 0c 00 00 00       	mov    esi,0xc
    446b:	e8 e0 6c 00 00       	call   b150 <_asn1_add_static_node>
    4470:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4475:	e9 56 f3 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    447a:	48 8d 3d ff ee 20 00 	lea    rdi,[rip+0x20eeff]        # 213380 <e_list>
    4481:	be 15 00 04 00       	mov    esi,0x40015
    4486:	e8 c5 6c 00 00       	call   b150 <_asn1_add_static_node>
    448b:	48 85 c0             	test   rax,rax
    448e:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4493:	0f 84 37 f3 ff ff    	je     37d0 <_asn1_yyparse+0x410>
    4499:	49 8b 55 b8          	mov    rdx,QWORD PTR [r13-0x48]
    449d:	48 85 d2             	test   rdx,rdx
    44a0:	48 89 50 60          	mov    QWORD PTR [rax+0x60],rdx
    44a4:	0f 84 26 f3 ff ff    	je     37d0 <_asn1_yyparse+0x410>
    44aa:	48 89 42 70          	mov    QWORD PTR [rdx+0x70],rax
    44ae:	e9 1d f3 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    44b3:	48 8d 3d c6 ee 20 00 	lea    rdi,[rip+0x20eec6]        # 213380 <e_list>
    44ba:	be 06 00 04 00       	mov    esi,0x40006
    44bf:	e8 8c 6c 00 00       	call   b150 <_asn1_add_static_node>
    44c4:	48 85 c0             	test   rax,rax
    44c7:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    44cc:	0f 84 fe f2 ff ff    	je     37d0 <_asn1_yyparse+0x410>
    44d2:	49 8b 55 b8          	mov    rdx,QWORD PTR [r13-0x48]
    44d6:	48 85 d2             	test   rdx,rdx
    44d9:	48 89 50 60          	mov    QWORD PTR [rax+0x60],rdx
    44dd:	0f 84 ed f2 ff ff    	je     37d0 <_asn1_yyparse+0x410>
    44e3:	48 89 42 70          	mov    QWORD PTR [rdx+0x70],rax
    44e7:	e9 e4 f2 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    44ec:	48 8d 3d 8d ee 20 00 	lea    rdi,[rip+0x20ee8d]        # 213380 <e_list>
    44f3:	be 01 00 00 00       	mov    esi,0x1
    44f8:	e8 53 6c 00 00       	call   b150 <_asn1_add_static_node>
    44fd:	49 8d b5 28 ff ff ff 	lea    rsi,[r13-0xd8]
    4504:	48 89 c7             	mov    rdi,rax
    4507:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    450c:	e8 ff 71 00 00       	call   b710 <_asn1_set_name>
    4511:	49 8d 75 b8          	lea    rsi,[r13-0x48]
    4515:	48 89 f0             	mov    rax,rsi
    4518:	8b 08                	mov    ecx,DWORD PTR [rax]
    451a:	48 83 c0 04          	add    rax,0x4
    451e:	8d 91 ff fe fe fe    	lea    edx,[rcx-0x1010101]
    4524:	f7 d1                	not    ecx
    4526:	21 ca                	and    edx,ecx
    4528:	81 e2 80 80 80 80    	and    edx,0x80808080
    452e:	74 e8                	je     4518 <_asn1_yyparse+0x1158>
    4530:	89 d1                	mov    ecx,edx
    4532:	c1 e9 10             	shr    ecx,0x10
    4535:	f7 c2 80 80 00 00    	test   edx,0x8080
    453b:	0f 44 d1             	cmove  edx,ecx
    453e:	48 8d 48 02          	lea    rcx,[rax+0x2]
    4542:	89 d7                	mov    edi,edx
    4544:	48 0f 44 c1          	cmove  rax,rcx
    4548:	40 00 d7             	add    dil,dl
    454b:	48 8b 7c 24 70       	mov    rdi,QWORD PTR [rsp+0x70]
    4550:	48 83 d8 03          	sbb    rax,0x3
    4554:	48 29 f0             	sub    rax,rsi
    4557:	8d 50 01             	lea    edx,[rax+0x1]
    455a:	e8 01 6f 00 00       	call   b460 <_asn1_set_value>
    455f:	e9 6c f2 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4564:	48 8d 3d 15 ee 20 00 	lea    rdi,[rip+0x20ee15]        # 213380 <e_list>
    456b:	be 01 00 00 00       	mov    esi,0x1
    4570:	e8 db 6b 00 00       	call   b150 <_asn1_add_static_node>
    4575:	4c 89 ea             	mov    rdx,r13
    4578:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    457d:	8b 32                	mov    esi,DWORD PTR [rdx]
    457f:	48 83 c2 04          	add    rdx,0x4
    4583:	8d 8e ff fe fe fe    	lea    ecx,[rsi-0x1010101]
    4589:	f7 d6                	not    esi
    458b:	21 f1                	and    ecx,esi
    458d:	81 e1 80 80 80 80    	and    ecx,0x80808080
    4593:	74 e8                	je     457d <_asn1_yyparse+0x11bd>
    4595:	89 ce                	mov    esi,ecx
    4597:	48 89 c7             	mov    rdi,rax
    459a:	c1 ee 10             	shr    esi,0x10
    459d:	f7 c1 80 80 00 00    	test   ecx,0x8080
    45a3:	0f 44 ce             	cmove  ecx,esi
    45a6:	48 8d 72 02          	lea    rsi,[rdx+0x2]
    45aa:	48 0f 44 d6          	cmove  rdx,rsi
    45ae:	89 ce                	mov    esi,ecx
    45b0:	40 00 ce             	add    sil,cl
    45b3:	4c 89 ee             	mov    rsi,r13
    45b6:	48 83 da 03          	sbb    rdx,0x3
    45ba:	4c 29 ea             	sub    rdx,r13
    45bd:	83 c2 01             	add    edx,0x1
    45c0:	e8 9b 6e 00 00       	call   b460 <_asn1_set_value>
    45c5:	e9 06 f2 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    45ca:	49 8b bd 70 ff ff ff 	mov    rdi,QWORD PTR [r13-0x90]
    45d1:	49 8b 6d 00          	mov    rbp,QWORD PTR [r13+0x0]
    45d5:	48 89 7c 24 70       	mov    QWORD PTR [rsp+0x70],rdi
    45da:	e8 01 72 00 00       	call   b7e0 <_asn1_get_last_right>
    45df:	48 89 ee             	mov    rsi,rbp
    45e2:	48 89 c7             	mov    rdi,rax
    45e5:	e8 d6 71 00 00       	call   b7c0 <_asn1_set_right>
    45ea:	e9 e1 f1 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    45ef:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    45f3:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    45f8:	e9 d3 f1 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    45fd:	48 8d 3d 7c ed 20 00 	lea    rdi,[rip+0x20ed7c]        # 213380 <e_list>
    4604:	be 01 00 00 00       	mov    esi,0x1
    4609:	e8 42 6b 00 00       	call   b150 <_asn1_add_static_node>
    460e:	49 8d b5 28 ff ff ff 	lea    rsi,[r13-0xd8]
    4615:	48 89 c7             	mov    rdi,rax
    4618:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    461d:	e8 ee 70 00 00       	call   b710 <_asn1_set_name>
    4622:	49 8d 75 b8          	lea    rsi,[r13-0x48]
    4626:	48 89 f0             	mov    rax,rsi
    4629:	8b 08                	mov    ecx,DWORD PTR [rax]
    462b:	48 83 c0 04          	add    rax,0x4
    462f:	8d 91 ff fe fe fe    	lea    edx,[rcx-0x1010101]
    4635:	f7 d1                	not    ecx
    4637:	21 ca                	and    edx,ecx
    4639:	81 e2 80 80 80 80    	and    edx,0x80808080
    463f:	74 e8                	je     4629 <_asn1_yyparse+0x1269>
    4641:	89 d1                	mov    ecx,edx
    4643:	c1 e9 10             	shr    ecx,0x10
    4646:	f7 c2 80 80 00 00    	test   edx,0x8080
    464c:	0f 44 d1             	cmove  edx,ecx
    464f:	48 8d 48 02          	lea    rcx,[rax+0x2]
    4653:	89 d7                	mov    edi,edx
    4655:	48 0f 44 c1          	cmove  rax,rcx
    4659:	40 00 d7             	add    dil,dl
    465c:	48 8b 7c 24 70       	mov    rdi,QWORD PTR [rsp+0x70]
    4661:	48 83 d8 03          	sbb    rax,0x3
    4665:	48 29 f0             	sub    rax,rsi
    4668:	8d 50 01             	lea    edx,[rax+0x1]
    466b:	e8 f0 6d 00 00       	call   b460 <_asn1_set_value>
    4670:	e9 5b f1 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4675:	48 8d 3d 04 ed 20 00 	lea    rdi,[rip+0x20ed04]        # 213380 <e_list>
    467c:	be 01 00 00 00       	mov    esi,0x1
    4681:	e8 ca 6a 00 00       	call   b150 <_asn1_add_static_node>
    4686:	49 8d 75 b8          	lea    rsi,[r13-0x48]
    468a:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    468f:	48 89 f2             	mov    rdx,rsi
    4692:	8b 3a                	mov    edi,DWORD PTR [rdx]
    4694:	48 83 c2 04          	add    rdx,0x4
    4698:	8d 8f ff fe fe fe    	lea    ecx,[rdi-0x1010101]
    469e:	f7 d7                	not    edi
    46a0:	21 f9                	and    ecx,edi
    46a2:	81 e1 80 80 80 80    	and    ecx,0x80808080
    46a8:	74 e8                	je     4692 <_asn1_yyparse+0x12d2>
    46aa:	89 cf                	mov    edi,ecx
    46ac:	c1 ef 10             	shr    edi,0x10
    46af:	f7 c1 80 80 00 00    	test   ecx,0x8080
    46b5:	0f 44 cf             	cmove  ecx,edi
    46b8:	48 8d 7a 02          	lea    rdi,[rdx+0x2]
    46bc:	48 0f 44 d7          	cmove  rdx,rdi
    46c0:	89 cf                	mov    edi,ecx
    46c2:	40 00 cf             	add    dil,cl
    46c5:	48 89 c7             	mov    rdi,rax
    46c8:	48 83 da 03          	sbb    rdx,0x3
    46cc:	48 29 f2             	sub    rdx,rsi
    46cf:	83 c2 01             	add    edx,0x1
    46d2:	e8 89 6d 00 00       	call   b460 <_asn1_set_value>
    46d7:	e9 f4 f0 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    46dc:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
    46e1:	48 8d 15 8f 9e 00 00 	lea    rdx,[rip+0x9e8f]        # e577 <_fini+0x77>
    46e8:	4c 89 e9             	mov    rcx,r13
    46eb:	be 41 00 00 00       	mov    esi,0x41
    46f0:	31 c0                	xor    eax,eax
    46f2:	e8 09 e5 ff ff       	call   2c00 <snprintf@plt>
    46f7:	e9 d4 f0 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    46fc:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
    4701:	48 8d 15 6f 9e 00 00 	lea    rdx,[rip+0x9e6f]        # e577 <_fini+0x77>
    4708:	4c 89 e9             	mov    rcx,r13
    470b:	be 41 00 00 00       	mov    esi,0x41
    4710:	31 c0                	xor    eax,eax
    4712:	e8 e9 e4 ff ff       	call   2c00 <snprintf@plt>
    4717:	e9 b4 f0 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    471c:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
    4721:	48 8d 15 4f 9e 00 00 	lea    rdx,[rip+0x9e4f]        # e577 <_fini+0x77>
    4728:	4c 89 e9             	mov    rcx,r13
    472b:	be 41 00 00 00       	mov    esi,0x41
    4730:	31 c0                	xor    eax,eax
    4732:	e8 c9 e4 ff ff       	call   2c00 <snprintf@plt>
    4737:	e9 94 f0 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    473c:	48 8b 6c 24 38       	mov    rbp,QWORD PTR [rsp+0x38]
    4741:	4c 8d 05 36 9e 00 00 	lea    r8,[rip+0x9e36]        # e57e <_fini+0x7e>
    4748:	b9 41 00 00 00       	mov    ecx,0x41
    474d:	4d 89 e9             	mov    r9,r13
    4750:	ba 01 00 00 00       	mov    edx,0x1
    4755:	be 41 00 00 00       	mov    esi,0x41
    475a:	31 c0                	xor    eax,eax
    475c:	48 89 ef             	mov    rdi,rbp
    475f:	e8 9c e3 ff ff       	call   2b00 <__snprintf_chk@plt>
    4764:	48 89 e9             	mov    rcx,rbp
    4767:	8b 31                	mov    esi,DWORD PTR [rcx]
    4769:	48 83 c1 04          	add    rcx,0x4
    476d:	8d 96 ff fe fe fe    	lea    edx,[rsi-0x1010101]
    4773:	f7 d6                	not    esi
    4775:	21 f2                	and    edx,esi
    4777:	81 e2 80 80 80 80    	and    edx,0x80808080
    477d:	74 e8                	je     4767 <_asn1_yyparse+0x13a7>
    477f:	e9 15 f7 ff ff       	jmp    3e99 <_asn1_yyparse+0xad9>
    4784:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
    4789:	48 8d 15 e7 9d 00 00 	lea    rdx,[rip+0x9de7]        # e577 <_fini+0x77>
    4790:	4c 89 e9             	mov    rcx,r13
    4793:	be 41 00 00 00       	mov    esi,0x41
    4798:	31 c0                	xor    eax,eax
    479a:	e8 61 e4 ff ff       	call   2c00 <snprintf@plt>
    479f:	e9 2c f0 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    47a4:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
    47a9:	48 8d 15 c7 9d 00 00 	lea    rdx,[rip+0x9dc7]        # e577 <_fini+0x77>
    47b0:	4c 89 e9             	mov    rcx,r13
    47b3:	be 41 00 00 00       	mov    esi,0x41
    47b8:	31 c0                	xor    eax,eax
    47ba:	e8 41 e4 ff ff       	call   2c00 <snprintf@plt>
    47bf:	e9 0c f0 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    47c4:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    47c8:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    47cd:	e9 fe ef ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    47d2:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    47d6:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    47db:	e9 f0 ef ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    47e0:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    47e4:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    47e9:	e9 e2 ef ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    47ee:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    47f2:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    47f7:	e9 d4 ef ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    47fc:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    4800:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4805:	e9 c6 ef ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    480a:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    480e:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4813:	e9 b8 ef ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4818:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    481c:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4821:	e9 aa ef ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4826:	48 8d 3d 53 eb 20 00 	lea    rdi,[rip+0x20eb53]        # 213380 <e_list>
    482d:	be 02 00 20 00       	mov    esi,0x200002
    4832:	e8 19 69 00 00       	call   b150 <_asn1_add_static_node>
    4837:	49 8d 75 b8          	lea    rsi,[r13-0x48]
    483b:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4840:	48 89 f2             	mov    rdx,rsi
    4843:	8b 3a                	mov    edi,DWORD PTR [rdx]
    4845:	48 83 c2 04          	add    rdx,0x4
    4849:	8d 8f ff fe fe fe    	lea    ecx,[rdi-0x1010101]
    484f:	f7 d7                	not    edi
    4851:	21 f9                	and    ecx,edi
    4853:	81 e1 80 80 80 80    	and    ecx,0x80808080
    4859:	74 e8                	je     4843 <_asn1_yyparse+0x1483>
    485b:	89 cf                	mov    edi,ecx
    485d:	c1 ef 10             	shr    edi,0x10
    4860:	f7 c1 80 80 00 00    	test   ecx,0x8080
    4866:	0f 44 cf             	cmove  ecx,edi
    4869:	48 8d 7a 02          	lea    rdi,[rdx+0x2]
    486d:	48 0f 44 d7          	cmove  rdx,rdi
    4871:	89 cf                	mov    edi,ecx
    4873:	40 00 cf             	add    dil,cl
    4876:	48 89 c7             	mov    rdi,rax
    4879:	48 83 da 03          	sbb    rdx,0x3
    487d:	48 29 f2             	sub    rdx,rsi
    4880:	83 c2 01             	add    edx,0x1
    4883:	e8 d8 6b 00 00       	call   b460 <_asn1_set_value>
    4888:	e9 43 ef ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    488d:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    4891:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4896:	e9 35 ef ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    489b:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    489f:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    48a4:	e9 27 ef ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    48a9:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    48ad:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    48b2:	e9 19 ef ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    48b7:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    48bb:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    48c0:	e9 0b ef ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    48c5:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    48c9:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    48ce:	e9 fd ee ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    48d3:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    48d7:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    48dc:	e9 ef ee ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    48e1:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    48e5:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    48ea:	e9 e1 ee ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    48ef:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
    48f4:	48 8d 15 7c 9c 00 00 	lea    rdx,[rip+0x9c7c]        # e577 <_fini+0x77>
    48fb:	4c 89 e9             	mov    rcx,r13
    48fe:	be 41 00 00 00       	mov    esi,0x41
    4903:	31 c0                	xor    eax,eax
    4905:	e8 f6 e2 ff ff       	call   2c00 <snprintf@plt>
    490a:	e9 c1 ee ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    490f:	48 8d 3d 6a ea 20 00 	lea    rdi,[rip+0x20ea6a]        # 213380 <e_list>
    4916:	be 20 00 20 00       	mov    esi,0x200020
    491b:	e8 30 68 00 00       	call   b150 <_asn1_add_static_node>
    4920:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4925:	e9 a6 ee ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    492a:	48 8d 3d 4f ea 20 00 	lea    rdi,[rip+0x20ea4f]        # 213380 <e_list>
    4931:	be 20 00 00 00       	mov    esi,0x20
    4936:	e8 15 68 00 00       	call   b150 <_asn1_add_static_node>
    493b:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4940:	e9 8b ee ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4945:	48 8d 3d 34 ea 20 00 	lea    rdi,[rip+0x20ea34]        # 213380 <e_list>
    494c:	be 1f 00 20 00       	mov    esi,0x20001f
    4951:	e8 fa 67 00 00       	call   b150 <_asn1_add_static_node>
    4956:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    495b:	e9 70 ee ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4960:	48 8d 3d 19 ea 20 00 	lea    rdi,[rip+0x20ea19]        # 213380 <e_list>
    4967:	be 1f 00 00 00       	mov    esi,0x1f
    496c:	e8 df 67 00 00       	call   b150 <_asn1_add_static_node>
    4971:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4976:	e9 55 ee ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    497b:	48 8d 3d fe e9 20 00 	lea    rdi,[rip+0x20e9fe]        # 213380 <e_list>
    4982:	be 1e 00 20 00       	mov    esi,0x20001e
    4987:	e8 c4 67 00 00       	call   b150 <_asn1_add_static_node>
    498c:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4991:	e9 3a ee ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4996:	48 8d 3d e3 e9 20 00 	lea    rdi,[rip+0x20e9e3]        # 213380 <e_list>
    499d:	be 1e 00 00 00       	mov    esi,0x1e
    49a2:	e8 a9 67 00 00       	call   b150 <_asn1_add_static_node>
    49a7:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    49ac:	e9 1f ee ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    49b1:	48 8d 3d c8 e9 20 00 	lea    rdi,[rip+0x20e9c8]        # 213380 <e_list>
    49b8:	be 1d 00 20 00       	mov    esi,0x20001d
    49bd:	e8 8e 67 00 00       	call   b150 <_asn1_add_static_node>
    49c2:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    49c7:	e9 04 ee ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    49cc:	48 8d 3d ad e9 20 00 	lea    rdi,[rip+0x20e9ad]        # 213380 <e_list>
    49d3:	be 1d 00 00 00       	mov    esi,0x1d
    49d8:	e8 73 67 00 00       	call   b150 <_asn1_add_static_node>
    49dd:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    49e2:	e9 e9 ed ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    49e7:	48 8d 3d 92 e9 20 00 	lea    rdi,[rip+0x20e992]        # 213380 <e_list>
    49ee:	be 1c 00 20 00       	mov    esi,0x20001c
    49f3:	e8 58 67 00 00       	call   b150 <_asn1_add_static_node>
    49f8:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    49fd:	e9 ce ed ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4a02:	48 8d 3d 77 e9 20 00 	lea    rdi,[rip+0x20e977]        # 213380 <e_list>
    4a09:	be 1c 01 00 00       	mov    esi,0x11c
    4a0e:	e8 3d 67 00 00       	call   b150 <_asn1_add_static_node>
    4a13:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4a18:	e9 b3 ed ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4a1d:	48 8d 3d 5c e9 20 00 	lea    rdi,[rip+0x20e95c]        # 213380 <e_list>
    4a24:	be 1b 00 20 00       	mov    esi,0x20001b
    4a29:	e8 22 67 00 00       	call   b150 <_asn1_add_static_node>
    4a2e:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4a33:	e9 98 ed ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4a38:	48 8d 3d 41 e9 20 00 	lea    rdi,[rip+0x20e941]        # 213380 <e_list>
    4a3f:	be 1b 00 00 00       	mov    esi,0x1b
    4a44:	e8 07 67 00 00       	call   b150 <_asn1_add_static_node>
    4a49:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4a4e:	e9 7d ed ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4a53:	49 8b 45 b8          	mov    rax,QWORD PTR [r13-0x48]
    4a57:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4a5c:	e9 6f ed ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4a61:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    4a65:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4a6a:	e9 61 ed ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4a6f:	c7 44 24 70 00 10 00 	mov    DWORD PTR [rsp+0x70],0x1000
    4a76:	00 
    4a77:	e9 54 ed ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4a7c:	48 8d 3d fd e8 20 00 	lea    rdi,[rip+0x20e8fd]        # 213380 <e_list>
    4a83:	be 25 00 00 00       	mov    esi,0x25
    4a88:	e8 c3 66 00 00       	call   b150 <_asn1_add_static_node>
    4a8d:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4a92:	e9 39 ed ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4a97:	48 8d 3d e2 e8 20 00 	lea    rdi,[rip+0x20e8e2]        # 213380 <e_list>
    4a9e:	be 24 00 00 00       	mov    esi,0x24
    4aa3:	e8 a8 66 00 00       	call   b150 <_asn1_add_static_node>
    4aa8:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4aad:	e9 1e ed ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4ab2:	48 8d 3d c7 e8 20 00 	lea    rdi,[rip+0x20e8c7]        # 213380 <e_list>
    4ab9:	be 04 00 00 00       	mov    esi,0x4
    4abe:	e8 8d 66 00 00       	call   b150 <_asn1_add_static_node>
    4ac3:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4ac8:	e9 03 ed ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4acd:	49 8b 85 50 fe ff ff 	mov    rax,QWORD PTR [r13-0x1b0]
    4ad4:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4ad9:	e9 f2 ec ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4ade:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    4ae2:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4ae7:	e9 e4 ec ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4aec:	48 c7 44 24 70 00 00 	mov    QWORD PTR [rsp+0x70],0x0
    4af3:	00 00 
    4af5:	e9 d6 ec ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4afa:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    4afe:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4b03:	e9 c8 ec ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4b08:	48 8d 3d 71 e8 20 00 	lea    rdi,[rip+0x20e871]        # 213380 <e_list>
    4b0f:	be 03 00 00 10       	mov    esi,0x10000003
    4b14:	e8 37 66 00 00       	call   b150 <_asn1_add_static_node>
    4b19:	49 8d b5 28 ff ff ff 	lea    rsi,[r13-0xd8]
    4b20:	48 89 c7             	mov    rdi,rax
    4b23:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4b28:	e8 e3 6b 00 00       	call   b710 <_asn1_set_name>
    4b2d:	4c 89 e8             	mov    rax,r13
    4b30:	8b 08                	mov    ecx,DWORD PTR [rax]
    4b32:	48 83 c0 04          	add    rax,0x4
    4b36:	8d 91 ff fe fe fe    	lea    edx,[rcx-0x1010101]
    4b3c:	f7 d1                	not    ecx
    4b3e:	21 ca                	and    edx,ecx
    4b40:	81 e2 80 80 80 80    	and    edx,0x80808080
    4b46:	74 e8                	je     4b30 <_asn1_yyparse+0x1770>
    4b48:	89 d1                	mov    ecx,edx
    4b4a:	48 8b 7c 24 70       	mov    rdi,QWORD PTR [rsp+0x70]
    4b4f:	c1 e9 10             	shr    ecx,0x10
    4b52:	f7 c2 80 80 00 00    	test   edx,0x8080
    4b58:	0f 44 d1             	cmove  edx,ecx
    4b5b:	48 8d 48 02          	lea    rcx,[rax+0x2]
    4b5f:	89 d6                	mov    esi,edx
    4b61:	48 0f 44 c1          	cmove  rax,rcx
    4b65:	40 00 d6             	add    sil,dl
    4b68:	4c 89 ee             	mov    rsi,r13
    4b6b:	48 83 d8 03          	sbb    rax,0x3
    4b6f:	4c 29 e8             	sub    rax,r13
    4b72:	8d 50 01             	lea    edx,[rax+0x1]
    4b75:	e8 e6 68 00 00       	call   b460 <_asn1_set_value>
    4b7a:	e9 51 ec ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4b7f:	48 8d 3d fa e7 20 00 	lea    rdi,[rip+0x20e7fa]        # 213380 <e_list>
    4b86:	be 0c 00 10 10       	mov    esi,0x1010000c
    4b8b:	e8 c0 65 00 00       	call   b150 <_asn1_add_static_node>
    4b90:	49 8d b5 98 fe ff ff 	lea    rsi,[r13-0x168]
    4b97:	48 89 c7             	mov    rdi,rax
    4b9a:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4b9f:	e8 6c 6b 00 00       	call   b710 <_asn1_set_name>
    4ba4:	49 8d b5 e0 fe ff ff 	lea    rsi,[r13-0x120]
    4bab:	48 89 f0             	mov    rax,rsi
    4bae:	8b 08                	mov    ecx,DWORD PTR [rax]
    4bb0:	48 83 c0 04          	add    rax,0x4
    4bb4:	8d 91 ff fe fe fe    	lea    edx,[rcx-0x1010101]
    4bba:	f7 d1                	not    ecx
    4bbc:	21 ca                	and    edx,ecx
    4bbe:	81 e2 80 80 80 80    	and    edx,0x80808080
    4bc4:	74 e8                	je     4bae <_asn1_yyparse+0x17ee>
    4bc6:	89 d1                	mov    ecx,edx
    4bc8:	c1 e9 10             	shr    ecx,0x10
    4bcb:	f7 c2 80 80 00 00    	test   edx,0x8080
    4bd1:	0f 44 d1             	cmove  edx,ecx
    4bd4:	48 8d 48 02          	lea    rcx,[rax+0x2]
    4bd8:	89 d7                	mov    edi,edx
    4bda:	48 0f 44 c1          	cmove  rax,rcx
    4bde:	40 00 d7             	add    dil,dl
    4be1:	48 8b 7c 24 70       	mov    rdi,QWORD PTR [rsp+0x70]
    4be6:	48 83 d8 03          	sbb    rax,0x3
    4bea:	48 29 f0             	sub    rax,rsi
    4bed:	8d 50 01             	lea    edx,[rax+0x1]
    4bf0:	e8 6b 68 00 00       	call   b460 <_asn1_set_value>
    4bf5:	48 8b 54 24 70       	mov    rdx,QWORD PTR [rsp+0x70]
    4bfa:	48 85 d2             	test   rdx,rdx
    4bfd:	0f 84 cd eb ff ff    	je     37d0 <_asn1_yyparse+0x410>
    4c03:	49 8b 45 b8          	mov    rax,QWORD PTR [r13-0x48]
    4c07:	48 85 c0             	test   rax,rax
    4c0a:	48 89 42 60          	mov    QWORD PTR [rdx+0x60],rax
    4c0e:	0f 84 bc eb ff ff    	je     37d0 <_asn1_yyparse+0x410>
    4c14:	48 89 50 70          	mov    QWORD PTR [rax+0x70],rdx
    4c18:	e9 b3 eb ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4c1d:	48 8d 3d 5c e7 20 00 	lea    rdi,[rip+0x20e75c]        # 213380 <e_list>
    4c24:	be 0c 00 00 10       	mov    esi,0x1000000c
    4c29:	e8 22 65 00 00       	call   b150 <_asn1_add_static_node>
    4c2e:	49 8d b5 50 fe ff ff 	lea    rsi,[r13-0x1b0]
    4c35:	48 89 c7             	mov    rdi,rax
    4c38:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4c3d:	e8 ce 6a 00 00       	call   b710 <_asn1_set_name>
    4c42:	48 8b 54 24 70       	mov    rdx,QWORD PTR [rsp+0x70]
    4c47:	48 85 d2             	test   rdx,rdx
    4c4a:	0f 84 80 eb ff ff    	je     37d0 <_asn1_yyparse+0x410>
    4c50:	49 8b 45 b8          	mov    rax,QWORD PTR [r13-0x48]
    4c54:	48 85 c0             	test   rax,rax
    4c57:	48 89 42 60          	mov    QWORD PTR [rdx+0x60],rax
    4c5b:	0f 84 6f eb ff ff    	je     37d0 <_asn1_yyparse+0x410>
    4c61:	48 89 50 70          	mov    QWORD PTR [rax+0x70],rdx
    4c65:	e9 66 eb ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4c6a:	49 8b 7d 00          	mov    rdi,QWORD PTR [r13+0x0]
    4c6e:	49 8d b5 70 ff ff ff 	lea    rsi,[r13-0x90]
    4c75:	e8 96 6a 00 00       	call   b710 <_asn1_set_name>
    4c7a:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4c7f:	e9 4c eb ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4c84:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
    4c89:	48 8d 15 e7 98 00 00 	lea    rdx,[rip+0x98e7]        # e577 <_fini+0x77>
    4c90:	4c 89 e9             	mov    rcx,r13
    4c93:	be 41 00 00 00       	mov    esi,0x41
    4c98:	31 c0                	xor    eax,eax
    4c9a:	e8 61 df ff ff       	call   2c00 <snprintf@plt>
    4c9f:	e9 2c eb ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4ca4:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
    4ca9:	48 8d 15 c7 98 00 00 	lea    rdx,[rip+0x98c7]        # e577 <_fini+0x77>
    4cb0:	4c 89 e9             	mov    rcx,r13
    4cb3:	be 41 00 00 00       	mov    esi,0x41
    4cb8:	31 c0                	xor    eax,eax
    4cba:	e8 41 df ff ff       	call   2c00 <snprintf@plt>
    4cbf:	e9 0c eb ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4cc4:	48 8b 6c 24 38       	mov    rbp,QWORD PTR [rsp+0x38]
    4cc9:	4c 8d 05 ae 98 00 00 	lea    r8,[rip+0x98ae]        # e57e <_fini+0x7e>
    4cd0:	b9 41 00 00 00       	mov    ecx,0x41
    4cd5:	4d 89 e9             	mov    r9,r13
    4cd8:	ba 01 00 00 00       	mov    edx,0x1
    4cdd:	be 41 00 00 00       	mov    esi,0x41
    4ce2:	31 c0                	xor    eax,eax
    4ce4:	48 89 ef             	mov    rdi,rbp
    4ce7:	e8 14 de ff ff       	call   2b00 <__snprintf_chk@plt>
    4cec:	48 89 e9             	mov    rcx,rbp
    4cef:	8b 31                	mov    esi,DWORD PTR [rcx]
    4cf1:	48 83 c1 04          	add    rcx,0x4
    4cf5:	8d 96 ff fe fe fe    	lea    edx,[rsi-0x1010101]
    4cfb:	f7 d6                	not    esi
    4cfd:	21 f2                	and    edx,esi
    4cff:	81 e2 80 80 80 80    	and    edx,0x80808080
    4d05:	74 e8                	je     4cef <_asn1_yyparse+0x192f>
    4d07:	e9 8d f1 ff ff       	jmp    3e99 <_asn1_yyparse+0xad9>
    4d0c:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
    4d11:	48 8d 15 5f 98 00 00 	lea    rdx,[rip+0x985f]        # e577 <_fini+0x77>
    4d18:	4c 89 e9             	mov    rcx,r13
    4d1b:	be 41 00 00 00       	mov    esi,0x41
    4d20:	31 c0                	xor    eax,eax
    4d22:	e8 d9 de ff ff       	call   2c00 <snprintf@plt>
    4d27:	e9 a4 ea ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4d2c:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
    4d31:	48 8d 15 3f 98 00 00 	lea    rdx,[rip+0x983f]        # e577 <_fini+0x77>
    4d38:	4c 89 e9             	mov    rcx,r13
    4d3b:	be 41 00 00 00       	mov    esi,0x41
    4d40:	31 c0                	xor    eax,eax
    4d42:	e8 b9 de ff ff       	call   2c00 <snprintf@plt>
    4d47:	e9 84 ea ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4d4c:	41 8b b5 98 fe ff ff 	mov    esi,DWORD PTR [r13-0x168]
    4d53:	48 8d 3d 26 e6 20 00 	lea    rdi,[rip+0x20e626]        # 213380 <e_list>
    4d5a:	83 ce 10             	or     esi,0x10
    4d5d:	e8 ee 63 00 00       	call   b150 <_asn1_add_static_node>
    4d62:	49 8b b5 08 fe ff ff 	mov    rsi,QWORD PTR [r13-0x1f8]
    4d69:	48 89 c7             	mov    rdi,rax
    4d6c:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4d71:	e8 9a 69 00 00       	call   b710 <_asn1_set_name>
    4d76:	49 8b bd 08 fe ff ff 	mov    rdi,QWORD PTR [r13-0x1f8]
    4d7d:	48 8d 35 40 b2 00 00 	lea    rsi,[rip+0xb240]        # ffc4 <bit_mask+0x4d4>
    4d84:	e8 87 69 00 00       	call   b710 <_asn1_set_name>
    4d89:	49 8b 75 b8          	mov    rsi,QWORD PTR [r13-0x48]
    4d8d:	49 8b bd 08 fe ff ff 	mov    rdi,QWORD PTR [r13-0x1f8]
    4d94:	e8 27 6a 00 00       	call   b7c0 <_asn1_set_right>
    4d99:	48 8b 44 24 70       	mov    rax,QWORD PTR [rsp+0x70]
    4d9e:	48 85 c0             	test   rax,rax
    4da1:	74 14                	je     4db7 <_asn1_yyparse+0x19f7>
    4da3:	49 8b 95 08 fe ff ff 	mov    rdx,QWORD PTR [r13-0x1f8]
    4daa:	48 85 d2             	test   rdx,rdx
    4dad:	48 89 50 60          	mov    QWORD PTR [rax+0x60],rdx
    4db1:	74 04                	je     4db7 <_asn1_yyparse+0x19f7>
    4db3:	48 89 42 70          	mov    QWORD PTR [rdx+0x70],rax
    4db7:	48 89 05 aa e5 20 00 	mov    QWORD PTR [rip+0x20e5aa],rax        # 213368 <p_tree>
    4dbe:	e9 0d ea ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4dc3:	c7 44 24 70 00 01 00 	mov    DWORD PTR [rsp+0x70],0x100
    4dca:	00 
    4dcb:	e9 00 ea ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4dd0:	49 8b 7d b8          	mov    rdi,QWORD PTR [r13-0x48]
    4dd4:	49 8b 6d 00          	mov    rbp,QWORD PTR [r13+0x0]
    4dd8:	48 89 7c 24 70       	mov    QWORD PTR [rsp+0x70],rdi
    4ddd:	e8 fe 69 00 00       	call   b7e0 <_asn1_get_last_right>
    4de2:	48 89 ee             	mov    rsi,rbp
    4de5:	48 89 c7             	mov    rdi,rax
    4de8:	e8 d3 69 00 00       	call   b7c0 <_asn1_set_right>
    4ded:	e9 de e9 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4df2:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    4df6:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4dfb:	e9 d0 e9 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4e00:	48 8d 3d 79 e5 20 00 	lea    rdi,[rip+0x20e579]        # 213380 <e_list>
    4e07:	be 06 00 20 00       	mov    esi,0x200006
    4e0c:	e8 3f 63 00 00       	call   b150 <_asn1_add_static_node>
    4e11:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4e16:	e9 b5 e9 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4e1b:	48 8d 3d 5e e5 20 00 	lea    rdi,[rip+0x20e55e]        # 213380 <e_list>
    4e22:	be 06 00 00 00       	mov    esi,0x6
    4e27:	e8 24 63 00 00       	call   b150 <_asn1_add_static_node>
    4e2c:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4e31:	e9 9a e9 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4e36:	49 8b bd 70 ff ff ff 	mov    rdi,QWORD PTR [r13-0x90]
    4e3d:	49 8b 6d 00          	mov    rbp,QWORD PTR [r13+0x0]
    4e41:	48 89 7c 24 70       	mov    QWORD PTR [rsp+0x70],rdi
    4e46:	e8 95 69 00 00       	call   b7e0 <_asn1_get_last_right>
    4e4b:	48 89 ee             	mov    rsi,rbp
    4e4e:	48 89 c7             	mov    rdi,rax
    4e51:	e8 6a 69 00 00       	call   b7c0 <_asn1_set_right>
    4e56:	e9 75 e9 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4e5b:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    4e5f:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4e64:	e9 67 e9 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4e69:	48 8d 3d 10 e5 20 00 	lea    rdi,[rip+0x20e510]        # 213380 <e_list>
    4e70:	be 01 00 00 00       	mov    esi,0x1
    4e75:	e8 d6 62 00 00       	call   b150 <_asn1_add_static_node>
    4e7a:	49 8d b5 28 ff ff ff 	lea    rsi,[r13-0xd8]
    4e81:	48 89 c7             	mov    rdi,rax
    4e84:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4e89:	e8 82 68 00 00       	call   b710 <_asn1_set_name>
    4e8e:	49 8d 75 b8          	lea    rsi,[r13-0x48]
    4e92:	48 89 f0             	mov    rax,rsi
    4e95:	8b 08                	mov    ecx,DWORD PTR [rax]
    4e97:	48 83 c0 04          	add    rax,0x4
    4e9b:	8d 91 ff fe fe fe    	lea    edx,[rcx-0x1010101]
    4ea1:	f7 d1                	not    ecx
    4ea3:	21 ca                	and    edx,ecx
    4ea5:	81 e2 80 80 80 80    	and    edx,0x80808080
    4eab:	74 e8                	je     4e95 <_asn1_yyparse+0x1ad5>
    4ead:	89 d1                	mov    ecx,edx
    4eaf:	c1 e9 10             	shr    ecx,0x10
    4eb2:	f7 c2 80 80 00 00    	test   edx,0x8080
    4eb8:	0f 44 d1             	cmove  edx,ecx
    4ebb:	48 8d 48 02          	lea    rcx,[rax+0x2]
    4ebf:	89 d7                	mov    edi,edx
    4ec1:	48 0f 44 c1          	cmove  rax,rcx
    4ec5:	40 00 d7             	add    dil,dl
    4ec8:	48 8b 7c 24 70       	mov    rdi,QWORD PTR [rsp+0x70]
    4ecd:	48 83 d8 03          	sbb    rax,0x3
    4ed1:	48 29 f0             	sub    rax,rsi
    4ed4:	8d 50 01             	lea    edx,[rax+0x1]
    4ed7:	e8 84 65 00 00       	call   b460 <_asn1_set_value>
    4edc:	e9 ef e8 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4ee1:	48 8d 3d 98 e4 20 00 	lea    rdi,[rip+0x20e498]        # 213380 <e_list>
    4ee8:	be 07 00 20 00       	mov    esi,0x200007
    4eed:	e8 5e 62 00 00       	call   b150 <_asn1_add_static_node>
    4ef2:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4ef7:	e9 d4 e8 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4efc:	48 8d 3d 7d e4 20 00 	lea    rdi,[rip+0x20e47d]        # 213380 <e_list>
    4f03:	be 07 00 00 00       	mov    esi,0x7
    4f08:	e8 43 62 00 00       	call   b150 <_asn1_add_static_node>
    4f0d:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4f12:	e9 b9 e8 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4f17:	48 8d 3d 62 e4 20 00 	lea    rdi,[rip+0x20e462]        # 213380 <e_list>
    4f1e:	be 23 00 20 00       	mov    esi,0x200023
    4f23:	e8 28 62 00 00       	call   b150 <_asn1_add_static_node>
    4f28:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4f2d:	e9 9e e8 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4f32:	48 8d 3d 47 e4 20 00 	lea    rdi,[rip+0x20e447]        # 213380 <e_list>
    4f39:	be 23 00 00 00       	mov    esi,0x23
    4f3e:	e8 0d 62 00 00       	call   b150 <_asn1_add_static_node>
    4f43:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4f48:	e9 83 e8 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4f4d:	48 8d 3d 2c e4 20 00 	lea    rdi,[rip+0x20e42c]        # 213380 <e_list>
    4f54:	be 22 00 20 00       	mov    esi,0x200022
    4f59:	e8 f2 61 00 00       	call   b150 <_asn1_add_static_node>
    4f5e:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4f63:	e9 68 e8 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4f68:	48 8d 3d 11 e4 20 00 	lea    rdi,[rip+0x20e411]        # 213380 <e_list>
    4f6f:	be 22 00 00 00       	mov    esi,0x22
    4f74:	e8 d7 61 00 00       	call   b150 <_asn1_add_static_node>
    4f79:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4f7e:	e9 4d e8 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4f83:	48 8d 3d f6 e3 20 00 	lea    rdi,[rip+0x20e3f6]        # 213380 <e_list>
    4f8a:	be 21 00 20 00       	mov    esi,0x200021
    4f8f:	e8 bc 61 00 00       	call   b150 <_asn1_add_static_node>
    4f94:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4f99:	e9 32 e8 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4f9e:	48 8d 3d db e3 20 00 	lea    rdi,[rip+0x20e3db]        # 213380 <e_list>
    4fa5:	be 21 00 00 00       	mov    esi,0x21
    4faa:	e8 a1 61 00 00       	call   b150 <_asn1_add_static_node>
    4faf:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4fb4:	e9 17 e8 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4fb9:	48 8d 3d c0 e3 20 00 	lea    rdi,[rip+0x20e3c0]        # 213380 <e_list>
    4fc0:	be 0c 00 00 00       	mov    esi,0xc
    4fc5:	e8 86 61 00 00       	call   b150 <_asn1_add_static_node>
    4fca:	4c 89 ee             	mov    rsi,r13
    4fcd:	48 89 c7             	mov    rdi,rax
    4fd0:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4fd5:	e8 36 67 00 00       	call   b710 <_asn1_set_name>
    4fda:	e9 f1 e7 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    4fdf:	48 8d 3d 9a e3 20 00 	lea    rdi,[rip+0x20e39a]        # 213380 <e_list>
    4fe6:	be 0c 00 00 00       	mov    esi,0xc
    4feb:	e8 60 61 00 00       	call   b150 <_asn1_add_static_node>
    4ff0:	49 8d b5 70 ff ff ff 	lea    rsi,[r13-0x90]
    4ff7:	48 89 c7             	mov    rdi,rax
    4ffa:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    4fff:	e8 0c 67 00 00       	call   b710 <_asn1_set_name>
    5004:	e9 c7 e7 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    5009:	48 8d 3d 70 e3 20 00 	lea    rdi,[rip+0x20e370]        # 213380 <e_list>
    5010:	be 0c 00 00 00       	mov    esi,0xc
    5015:	e8 36 61 00 00       	call   b150 <_asn1_add_static_node>
    501a:	48 85 c0             	test   rax,rax
    501d:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    5022:	74 11                	je     5035 <_asn1_yyparse+0x1c75>
    5024:	49 8b 55 b8          	mov    rdx,QWORD PTR [r13-0x48]
    5028:	48 85 d2             	test   rdx,rdx
    502b:	48 89 50 60          	mov    QWORD PTR [rax+0x60],rdx
    502f:	74 04                	je     5035 <_asn1_yyparse+0x1c75>
    5031:	48 89 42 70          	mov    QWORD PTR [rdx+0x70],rax
    5035:	49 8d b5 28 ff ff ff 	lea    rsi,[r13-0xd8]
    503c:	48 89 c7             	mov    rdi,rax
    503f:	e8 cc 66 00 00       	call   b710 <_asn1_set_name>
    5044:	e9 87 e7 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    5049:	49 8b 7d b8          	mov    rdi,QWORD PTR [r13-0x48]
    504d:	48 85 ff             	test   rdi,rdi
    5050:	48 89 7c 24 70       	mov    QWORD PTR [rsp+0x70],rdi
    5055:	0f 84 75 e7 ff ff    	je     37d0 <_asn1_yyparse+0x410>
    505b:	49 8b 6d 00          	mov    rbp,QWORD PTR [r13+0x0]
    505f:	48 85 ed             	test   rbp,rbp
    5062:	0f 84 68 e7 ff ff    	je     37d0 <_asn1_yyparse+0x410>
    5068:	e8 73 67 00 00       	call   b7e0 <_asn1_get_last_right>
    506d:	48 89 ee             	mov    rsi,rbp
    5070:	48 89 c7             	mov    rdi,rax
    5073:	e8 48 67 00 00       	call   b7c0 <_asn1_set_right>
    5078:	e9 53 e7 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    507d:	49 8b 45 00          	mov    rax,QWORD PTR [r13+0x0]
    5081:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    5086:	e9 45 e7 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    508b:	c7 44 24 70 00 08 00 	mov    DWORD PTR [rsp+0x70],0x800
    5092:	00 
    5093:	e9 38 e7 ff ff       	jmp    37d0 <_asn1_yyparse+0x410>
    5098:	49 89 df             	mov    r15,rbx
    509b:	31 db                	xor    ebx,ebx
    509d:	e9 33 e9 ff ff       	jmp    39d5 <_asn1_yyparse+0x615>
    50a2:	48 8b 7c 24 60       	mov    rdi,QWORD PTR [rsp+0x60]
    50a7:	48 3b 7c 24 30       	cmp    rdi,QWORD PTR [rsp+0x30]
    50ac:	74 05                	je     50b3 <_asn1_yyparse+0x1cf3>
    50ae:	e8 5d da ff ff       	call   2b10 <free@plt>
    50b3:	48 8b 7c 24 68       	mov    rdi,QWORD PTR [rsp+0x68]
    50b8:	e8 53 dc ff ff       	call   2d10 <malloc@plt>
    50bd:	48 85 c0             	test   rax,rax
    50c0:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
    50c5:	0f 84 bf 01 00 00    	je     528a <_asn1_yyparse+0x1eca>
    50cb:	48 8b 7c 24 48       	mov    rdi,QWORD PTR [rsp+0x48]
    50d0:	48 8b 74 24 40       	mov    rsi,QWORD PTR [rsp+0x40]
    50d5:	44 89 e1             	mov    ecx,r12d
    50d8:	4c 89 fa             	mov    rdx,r15
    50db:	e8 40 e0 ff ff       	call   3120 <yysyntax_error>
    50e0:	48 8b 7c 24 60       	mov    rdi,QWORD PTR [rsp+0x60]
    50e5:	e9 85 e9 ff ff       	jmp    3a6f <_asn1_yyparse+0x6af>
    50ea:	89 c2                	mov    edx,eax
    50ec:	88 15 8e e1 20 00    	mov    BYTE PTR [rip+0x20e18e],dl        # 213280 <last_token>
    50f2:	c6 05 88 e1 20 00 00 	mov    BYTE PTR [rip+0x20e188],0x0        # 213281 <last_token+0x1>
    50f9:	e9 ef e9 ff ff       	jmp    3aed <_asn1_yyparse+0x72d>
    50fe:	4d 89 f7             	mov    r15,r14
    5101:	bb 01 00 00 00       	mov    ebx,0x1
    5106:	e9 ca e8 ff ff       	jmp    39d5 <_asn1_yyparse+0x615>
    510b:	ba 7c 00 00 00       	mov    edx,0x7c
    5110:	eb da                	jmp    50ec <_asn1_yyparse+0x1d2c>
    5112:	88 84 24 90 3a 00 00 	mov    BYTE PTR [rsp+0x3a90],al
    5119:	48 8b 44 24 50       	mov    rax,QWORD PTR [rsp+0x50]
    511e:	41 bc 01 00 00 00    	mov    r12d,0x1
    5124:	48 89 5c 24 58       	mov    QWORD PTR [rsp+0x58],rbx
    5129:	48 8d 50 01          	lea    rdx,[rax+0x1]
    512d:	48 89 d3             	mov    rbx,rdx
    5130:	eb 28                	jmp    515a <_asn1_yyparse+0x1d9a>
    5132:	89 c1                	mov    ecx,eax
    5134:	83 e1 df             	and    ecx,0xffffffdf
    5137:	83 f9 5b             	cmp    ecx,0x5b
    513a:	74 44                	je     5180 <_asn1_yyparse+0x1dc0>
    513c:	83 f9 5d             	cmp    ecx,0x5d
    513f:	74 3f                	je     5180 <_asn1_yyparse+0x1dc0>
    5141:	83 f8 2e             	cmp    eax,0x2e
    5144:	74 3a                	je     5180 <_asn1_yyparse+0x1dc0>
    5146:	41 83 fc 40          	cmp    r12d,0x40
    514a:	0f 84 6b 01 00 00    	je     52bb <_asn1_yyparse+0x1efb>
    5150:	88 03                	mov    BYTE PTR [rbx],al
    5152:	41 83 c4 01          	add    r12d,0x1
    5156:	48 83 c3 01          	add    rbx,0x1
    515a:	48 8b 3d 17 e2 20 00 	mov    rdi,QWORD PTR [rip+0x20e217]        # 213378 <file_asn1>
    5161:	e8 fa da ff ff       	call   2c60 <fgetc@plt>
    5166:	83 f8 ff             	cmp    eax,0xffffffff
    5169:	74 15                	je     5180 <_asn1_yyparse+0x1dc0>
    516b:	83 f8 2c             	cmp    eax,0x2c
    516e:	77 c2                	ja     5132 <_asn1_yyparse+0x1d72>
    5170:	48 be 00 06 00 00 01 	movabs rsi,0x130100000600
    5177:	13 00 00 
    517a:	48 0f a3 c6          	bt     rsi,rax
    517e:	73 b2                	jae    5132 <_asn1_yyparse+0x1d72>
    5180:	48 8b 35 f1 e1 20 00 	mov    rsi,QWORD PTR [rip+0x20e1f1]        # 213378 <file_asn1>
    5187:	89 c7                	mov    edi,eax
    5189:	48 8b 5c 24 58       	mov    rbx,QWORD PTR [rsp+0x58]
    518e:	e8 8d db ff ff       	call   2d20 <ungetc@plt>
    5193:	48 8b 4c 24 50       	mov    rcx,QWORD PTR [rsp+0x50]
    5198:	49 63 c4             	movsxd rax,r12d
    519b:	48 8d 15 d5 93 00 00 	lea    rdx,[rip+0x93d5]        # e577 <_fini+0x77>
    51a2:	48 8d 3d d7 e0 20 00 	lea    rdi,[rip+0x20e0d7]        # 213280 <last_token>
    51a9:	c6 84 04 90 3a 00 00 	mov    BYTE PTR [rsp+rax*1+0x3a90],0x0
    51b0:	00 
    51b1:	be 41 00 00 00       	mov    esi,0x41
    51b6:	31 c0                	xor    eax,eax
    51b8:	e8 43 da ff ff       	call   2c00 <snprintf@plt>
    51bd:	41 8d 54 24 ff       	lea    edx,[r12-0x1]
    51c2:	48 8b 7c 24 50       	mov    rdi,QWORD PTR [rsp+0x50]
    51c7:	31 c0                	xor    eax,eax
    51c9:	48 83 c2 01          	add    rdx,0x1
    51cd:	0f b6 0c 07          	movzx  ecx,BYTE PTR [rdi+rax*1]
    51d1:	83 e9 30             	sub    ecx,0x30
    51d4:	80 f9 09             	cmp    cl,0x9
    51d7:	76 59                	jbe    5232 <_asn1_yyparse+0x1e72>
    51d9:	41 39 c4             	cmp    r12d,eax
    51dc:	7e 5d                	jle    523b <_asn1_yyparse+0x1e7b>
    51de:	48 89 5c 24 58       	mov    QWORD PTR [rsp+0x58],rbx
    51e3:	48 8d 35 90 93 00 00 	lea    rsi,[rip+0x9390]        # e57a <_fini+0x7a>
    51ea:	45 31 e4             	xor    r12d,r12d
    51ed:	48 8b 5c 24 50       	mov    rbx,QWORD PTR [rsp+0x50]
    51f2:	eb 1d                	jmp    5211 <_asn1_yyparse+0x1e51>
    51f4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    51f8:	49 83 c4 01          	add    r12,0x1
    51fc:	49 83 fc 2d          	cmp    r12,0x2d
    5200:	0f 84 cb 00 00 00    	je     52d1 <_asn1_yyparse+0x1f11>
    5206:	48 8d 05 f3 d2 20 00 	lea    rax,[rip+0x20d2f3]        # 212500 <key_word>
    520d:	4a 8b 34 e0          	mov    rsi,QWORD PTR [rax+r12*8]
    5211:	48 89 df             	mov    rdi,rbx
    5214:	e8 a7 da ff ff       	call   2cc0 <strcmp@plt>
    5219:	85 c0                	test   eax,eax
    521b:	75 db                	jne    51f8 <_asn1_yyparse+0x1e38>
    521d:	48 8d 05 3c 9b 00 00 	lea    rax,[rip+0x9b3c]        # ed60 <key_word_token>
    5224:	48 8b 5c 24 58       	mov    rbx,QWORD PTR [rsp+0x58]
    5229:	42 8b 04 a0          	mov    eax,DWORD PTR [rax+r12*4]
    522d:	e9 bb e8 ff ff       	jmp    3aed <_asn1_yyparse+0x72d>
    5232:	48 83 c0 01          	add    rax,0x1
    5236:	48 39 d0             	cmp    rax,rdx
    5239:	75 92                	jne    51cd <_asn1_yyparse+0x1e0d>
    523b:	48 8b 4c 24 50       	mov    rcx,QWORD PTR [rsp+0x50]
    5240:	48 8d 15 30 93 00 00 	lea    rdx,[rip+0x9330]        # e577 <_fini+0x77>
    5247:	48 8d 3d d2 df 20 00 	lea    rdi,[rip+0x20dfd2]        # 213220 <_asn1_yylval>
    524e:	be 41 00 00 00       	mov    esi,0x41
    5253:	31 c0                	xor    eax,eax
    5255:	e8 a6 d9 ff ff       	call   2c00 <snprintf@plt>
    525a:	b8 03 01 00 00       	mov    eax,0x103
    525f:	e9 89 e8 ff ff       	jmp    3aed <_asn1_yyparse+0x72d>
    5264:	48 8b 35 0d e1 20 00 	mov    rsi,QWORD PTR [rip+0x20e10d]        # 213378 <file_asn1>
    526b:	89 c7                	mov    edi,eax
    526d:	e8 ae da ff ff       	call   2d20 <ungetc@plt>
    5272:	c6 05 07 e0 20 00 2d 	mov    BYTE PTR [rip+0x20e007],0x2d        # 213280 <last_token>
    5279:	c6 05 01 e0 20 00 00 	mov    BYTE PTR [rip+0x20e001],0x0        # 213281 <last_token+0x1>
    5280:	b8 2d 00 00 00       	mov    eax,0x2d
    5285:	e9 63 e8 ff ff       	jmp    3aed <_asn1_yyparse+0x72d>
    528a:	83 3d df e0 20 00 0f 	cmp    DWORD PTR [rip+0x20e0df],0xf        # 213370 <result_parse>
    5291:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
    5296:	48 c7 44 24 68 80 00 	mov    QWORD PTR [rsp+0x68],0x80
    529d:	00 00 
    529f:	48 89 44 24 60       	mov    QWORD PTR [rsp+0x60],rax
    52a4:	0f 84 e4 e7 ff ff    	je     3a8e <_asn1_yyparse+0x6ce>
    52aa:	b8 02 00 00 00       	mov    eax,0x2
    52af:	48 8d 3d 9b 92 00 00 	lea    rdi,[rip+0x929b]        # e551 <_fini+0x51>
    52b6:	e9 bd e7 ff ff       	jmp    3a78 <_asn1_yyparse+0x6b8>
    52bb:	48 8b 5c 24 58       	mov    rbx,QWORD PTR [rsp+0x58]
    52c0:	c7 05 a6 e0 20 00 0f 	mov    DWORD PTR [rip+0x20e0a6],0xf        # 213370 <result_parse>
    52c7:	00 00 00 
    52ca:	31 c0                	xor    eax,eax
    52cc:	e9 1c e8 ff ff       	jmp    3aed <_asn1_yyparse+0x72d>
    52d1:	48 8b 4c 24 50       	mov    rcx,QWORD PTR [rsp+0x50]
    52d6:	48 8d 15 9a 92 00 00 	lea    rdx,[rip+0x929a]        # e577 <_fini+0x77>
    52dd:	48 8d 3d 3c df 20 00 	lea    rdi,[rip+0x20df3c]        # 213220 <_asn1_yylval>
    52e4:	be 41 00 00 00       	mov    esi,0x41
    52e9:	31 c0                	xor    eax,eax
    52eb:	48 8b 5c 24 58       	mov    rbx,QWORD PTR [rsp+0x58]
    52f0:	e8 0b d9 ff ff       	call   2c00 <snprintf@plt>
    52f5:	b8 04 01 00 00       	mov    eax,0x104
    52fa:	e9 ee e7 ff ff       	jmp    3aed <_asn1_yyparse+0x72d>
    52ff:	31 c0                	xor    eax,eax
    5301:	e9 0a ee ff ff       	jmp    4110 <_asn1_yyparse+0xd50>
    5306:	48 c7 44 24 70 00 00 	mov    QWORD PTR [rsp+0x70],0x0
    530d:	00 00 
    530f:	e9 37 f0 ff ff       	jmp    434b <_asn1_yyparse+0xf8b>
    5314:	48 c7 44 24 70 00 00 	mov    QWORD PTR [rsp+0x70],0x0
    531b:	00 00 
    531d:	e9 81 e4 ff ff       	jmp    37a3 <_asn1_yyparse+0x3e3>
    5322:	e8 a9 d8 ff ff       	call   2bd0 <__stack_chk_fail@plt>
    5327:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    532e:	00 00 

0000000000005330 <asn1_parser2tree>:
    5330:	55                   	push   rbp
    5331:	53                   	push   rbx
    5332:	48 89 d5             	mov    rbp,rdx
    5335:	48 83 ec 08          	sub    rsp,0x8
    5339:	48 83 3e 00          	cmp    QWORD PTR [rsi],0x0
    533d:	74 51                	je     5390 <asn1_parser2tree+0x60>
    533f:	c7 05 27 e0 20 00 11 	mov    DWORD PTR [rip+0x20e027],0x11        # 213370 <result_parse>
    5346:	00 00 00 
    5349:	48 8b 3d 30 e0 20 00 	mov    rdi,QWORD PTR [rip+0x20e030]        # 213380 <e_list>
    5350:	e8 db 65 00 00       	call   b930 <_asn1_delete_list_and_nodes>
    5355:	8b 3d 15 e0 20 00    	mov    edi,DWORD PTR [rip+0x20e015]        # 213370 <result_parse>
    535b:	48 89 ee             	mov    rsi,rbp
    535e:	48 c7 05 17 e0 20 00 	mov    QWORD PTR [rip+0x20e017],0x0        # 213380 <e_list>
    5365:	00 00 00 00 
    5369:	48 c7 05 f4 df 20 00 	mov    QWORD PTR [rip+0x20dff4],0x0        # 213368 <p_tree>
    5370:	00 00 00 00 
    5374:	e8 d7 db ff ff       	call   2f50 <_asn1_create_errorDescription>
    5379:	8b 05 f1 df 20 00    	mov    eax,DWORD PTR [rip+0x20dff1]        # 213370 <result_parse>
    537f:	48 83 c4 08          	add    rsp,0x8
    5383:	5b                   	pop    rbx
    5384:	5d                   	pop    rbp
    5385:	c3                   	ret    
    5386:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    538d:	00 00 00 
    5390:	48 89 f3             	mov    rbx,rsi
    5393:	48 8d 35 d3 93 00 00 	lea    rsi,[rip+0x93d3]        # e76d <_fini+0x26d>
    539a:	48 89 3d cf de 20 00 	mov    QWORD PTR [rip+0x20decf],rdi        # 213270 <file_name>
    53a1:	e8 ea d9 ff ff       	call   2d90 <fopen@plt>
    53a6:	48 85 c0             	test   rax,rax
    53a9:	48 89 05 c8 df 20 00 	mov    QWORD PTR [rip+0x20dfc8],rax        # 213378 <file_asn1>
    53b0:	0f 84 d2 00 00 00    	je     5488 <asn1_parser2tree+0x158>
    53b6:	c7 05 b0 df 20 00 00 	mov    DWORD PTR [rip+0x20dfb0],0x0        # 213370 <result_parse>
    53bd:	00 00 00 
    53c0:	c7 05 96 df 20 00 01 	mov    DWORD PTR [rip+0x20df96],0x1        # 213360 <line_number>
    53c7:	00 00 00 
    53ca:	e8 f1 df ff ff       	call   33c0 <_asn1_yyparse>
    53cf:	48 8b 3d a2 df 20 00 	mov    rdi,QWORD PTR [rip+0x20dfa2]        # 213378 <file_asn1>
    53d6:	e8 c5 d7 ff ff       	call   2ba0 <fclose@plt>
    53db:	8b 05 8f df 20 00    	mov    eax,DWORD PTR [rip+0x20df8f]        # 213370 <result_parse>
    53e1:	85 c0                	test   eax,eax
    53e3:	0f 85 60 ff ff ff    	jne    5349 <asn1_parser2tree+0x19>
    53e9:	48 8b 3d 78 df 20 00 	mov    rdi,QWORD PTR [rip+0x20df78]        # 213368 <p_tree>
    53f0:	e8 6b 70 00 00       	call   c460 <_asn1_set_default_tag>
    53f5:	48 8b 3d 6c df 20 00 	mov    rdi,QWORD PTR [rip+0x20df6c]        # 213368 <p_tree>
    53fc:	e8 ff 6c 00 00       	call   c100 <_asn1_type_set_config>
    5401:	48 8b 3d 60 df 20 00 	mov    rdi,QWORD PTR [rip+0x20df60]        # 213368 <p_tree>
    5408:	e8 a3 6d 00 00       	call   c1b0 <_asn1_check_identifier>
    540d:	85 c0                	test   eax,eax
    540f:	89 05 5b df 20 00    	mov    DWORD PTR [rip+0x20df5b],eax        # 213370 <result_parse>
    5415:	0f 85 2e ff ff ff    	jne    5349 <asn1_parser2tree+0x19>
    541b:	48 8b 3d 46 df 20 00 	mov    rdi,QWORD PTR [rip+0x20df46]        # 213368 <p_tree>
    5422:	e8 19 66 00 00       	call   ba40 <_asn1_change_integer_value>
    5427:	48 8b 35 3a df 20 00 	mov    rsi,QWORD PTR [rip+0x20df3a]        # 213368 <p_tree>
    542e:	48 8d 3d 4b df 20 00 	lea    rdi,[rip+0x20df4b]        # 213380 <e_list>
    5435:	e8 36 67 00 00       	call   bb70 <_asn1_expand_object_id>
    543a:	85 c0                	test   eax,eax
    543c:	89 05 2e df 20 00    	mov    DWORD PTR [rip+0x20df2e],eax        # 213370 <result_parse>
    5442:	0f 85 01 ff ff ff    	jne    5349 <asn1_parser2tree+0x19>
    5448:	48 8b 05 19 df 20 00 	mov    rax,QWORD PTR [rip+0x20df19]        # 213368 <p_tree>
    544f:	48 89 03             	mov    QWORD PTR [rbx],rax
    5452:	48 8b 3d 27 df 20 00 	mov    rdi,QWORD PTR [rip+0x20df27]        # 213380 <e_list>
    5459:	e8 a2 64 00 00       	call   b900 <_asn1_delete_list>
    545e:	48 c7 05 17 df 20 00 	mov    QWORD PTR [rip+0x20df17],0x0        # 213380 <e_list>
    5465:	00 00 00 00 
    5469:	48 c7 05 f4 de 20 00 	mov    QWORD PTR [rip+0x20def4],0x0        # 213368 <p_tree>
    5470:	00 00 00 00 
    5474:	c6 45 00 00          	mov    BYTE PTR [rbp+0x0],0x0
    5478:	8b 05 f2 de 20 00    	mov    eax,DWORD PTR [rip+0x20def2]        # 213370 <result_parse>
    547e:	e9 fc fe ff ff       	jmp    537f <asn1_parser2tree+0x4f>
    5483:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    5488:	c7 05 de de 20 00 01 	mov    DWORD PTR [rip+0x20dede],0x1        # 213370 <result_parse>
    548f:	00 00 00 
    5492:	e9 b2 fe ff ff       	jmp    5349 <asn1_parser2tree+0x19>
    5497:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    549e:	00 00 

00000000000054a0 <asn1_parser2array>:
    54a0:	41 57                	push   r15
    54a2:	41 56                	push   r14
    54a4:	49 89 f7             	mov    r15,rsi
    54a7:	41 55                	push   r13
    54a9:	41 54                	push   r12
    54ab:	48 8d 35 bb 92 00 00 	lea    rsi,[rip+0x92bb]        # e76d <_fini+0x26d>
    54b2:	55                   	push   rbp
    54b3:	53                   	push   rbx
    54b4:	48 89 fd             	mov    rbp,rdi
    54b7:	49 89 d6             	mov    r14,rdx
    54ba:	49 89 cd             	mov    r13,rcx
    54bd:	48 83 ec 18          	sub    rsp,0x18
    54c1:	48 c7 05 9c de 20 00 	mov    QWORD PTR [rip+0x20de9c],0x0        # 213368 <p_tree>
    54c8:	00 00 00 00 
    54cc:	48 89 3d 9d dd 20 00 	mov    QWORD PTR [rip+0x20dd9d],rdi        # 213270 <file_name>
    54d3:	e8 b8 d8 ff ff       	call   2d90 <fopen@plt>
    54d8:	48 85 c0             	test   rax,rax
    54db:	48 89 05 96 de 20 00 	mov    QWORD PTR [rip+0x20de96],rax        # 213378 <file_asn1>
    54e2:	0f 84 38 01 00 00    	je     5620 <asn1_parser2array+0x180>
    54e8:	c7 05 7e de 20 00 00 	mov    DWORD PTR [rip+0x20de7e],0x0        # 213370 <result_parse>
    54ef:	00 00 00 
    54f2:	c7 05 64 de 20 00 01 	mov    DWORD PTR [rip+0x20de64],0x1        # 213360 <line_number>
    54f9:	00 00 00 
    54fc:	e8 bf de ff ff       	call   33c0 <_asn1_yyparse>
    5501:	48 8b 3d 70 de 20 00 	mov    rdi,QWORD PTR [rip+0x20de70]        # 213378 <file_asn1>
    5508:	e8 93 d6 ff ff       	call   2ba0 <fclose@plt>
    550d:	8b 35 5d de 20 00    	mov    esi,DWORD PTR [rip+0x20de5d]        # 213370 <result_parse>
    5513:	85 f6                	test   esi,esi
    5515:	0f 85 c5 00 00 00    	jne    55e0 <asn1_parser2array+0x140>
    551b:	48 8b 3d 46 de 20 00 	mov    rdi,QWORD PTR [rip+0x20de46]        # 213368 <p_tree>
    5522:	48 89 eb             	mov    rbx,rbp
    5525:	e8 36 6f 00 00       	call   c460 <_asn1_set_default_tag>
    552a:	48 8b 3d 37 de 20 00 	mov    rdi,QWORD PTR [rip+0x20de37]        # 213368 <p_tree>
    5531:	e8 ca 6b 00 00       	call   c100 <_asn1_type_set_config>
    5536:	48 8b 3d 2b de 20 00 	mov    rdi,QWORD PTR [rip+0x20de2b]        # 213368 <p_tree>
    553d:	e8 6e 6c 00 00       	call   c1b0 <_asn1_check_identifier>
    5542:	85 c0                	test   eax,eax
    5544:	89 c7                	mov    edi,eax
    5546:	89 05 24 de 20 00    	mov    DWORD PTR [rip+0x20de24],eax        # 213370 <result_parse>
    554c:	74 0e                	je     555c <asn1_parser2array+0xbc>
    554e:	e9 aa 00 00 00       	jmp    55fd <asn1_parser2array+0x15d>
    5553:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    5558:	48 8d 58 01          	lea    rbx,[rax+0x1]
    555c:	be 2f 00 00 00       	mov    esi,0x2f
    5561:	48 89 df             	mov    rdi,rbx
    5564:	e8 77 d6 ff ff       	call   2be0 <strchr@plt>
    5569:	48 85 c0             	test   rax,rax
    556c:	75 ea                	jne    5558 <asn1_parser2array+0xb8>
    556e:	48 89 ef             	mov    rdi,rbp
    5571:	e8 4a d6 ff ff       	call   2bc0 <strlen@plt>
    5576:	48 89 df             	mov    rdi,rbx
    5579:	4c 8d 64 05 00       	lea    r12,[rbp+rax*1+0x0]
    557e:	eb 07                	jmp    5587 <asn1_parser2array+0xe7>
    5580:	48 8d 78 01          	lea    rdi,[rax+0x1]
    5584:	49 89 c4             	mov    r12,rax
    5587:	be 2e 00 00 00       	mov    esi,0x2e
    558c:	e8 4f d6 ff ff       	call   2be0 <strchr@plt>
    5591:	48 85 c0             	test   rax,rax
    5594:	75 ea                	jne    5580 <asn1_parser2array+0xe0>
    5596:	4d 85 ff             	test   r15,r15
    5599:	0f 84 99 00 00 00    	je     5638 <asn1_parser2array+0x198>
    559f:	4c 89 ff             	mov    rdi,r15
    55a2:	e8 d9 d6 ff ff       	call   2c80 <__strdup@plt>
    55a7:	49 89 c7             	mov    r15,rax
    55aa:	4d 85 f6             	test   r14,r14
    55ad:	0f 84 0d 01 00 00    	je     56c0 <asn1_parser2array+0x220>
    55b3:	4c 89 f7             	mov    rdi,r14
    55b6:	e8 c5 d6 ff ff       	call   2c80 <__strdup@plt>
    55bb:	48 89 c5             	mov    rbp,rax
    55be:	48 8b 3d a3 dd 20 00 	mov    rdi,QWORD PTR [rip+0x20dda3]        # 213368 <p_tree>
    55c5:	48 89 ea             	mov    rdx,rbp
    55c8:	4c 89 fe             	mov    rsi,r15
    55cb:	e8 a0 6f 00 00       	call   c570 <_asn1_create_static_structure>
    55d0:	4c 89 ff             	mov    rdi,r15
    55d3:	e8 38 d5 ff ff       	call   2b10 <free@plt>
    55d8:	48 89 ef             	mov    rdi,rbp
    55db:	e8 30 d5 ff ff       	call   2b10 <free@plt>
    55e0:	48 8b 3d 99 dd 20 00 	mov    rdi,QWORD PTR [rip+0x20dd99]        # 213380 <e_list>
    55e7:	e8 44 63 00 00       	call   b930 <_asn1_delete_list_and_nodes>
    55ec:	8b 3d 7e dd 20 00    	mov    edi,DWORD PTR [rip+0x20dd7e]        # 213370 <result_parse>
    55f2:	48 c7 05 83 dd 20 00 	mov    QWORD PTR [rip+0x20dd83],0x0        # 213380 <e_list>
    55f9:	00 00 00 00 
    55fd:	4c 89 ee             	mov    rsi,r13
    5600:	e8 4b d9 ff ff       	call   2f50 <_asn1_create_errorDescription>
    5605:	8b 05 65 dd 20 00    	mov    eax,DWORD PTR [rip+0x20dd65]        # 213370 <result_parse>
    560b:	48 83 c4 18          	add    rsp,0x18
    560f:	5b                   	pop    rbx
    5610:	5d                   	pop    rbp
    5611:	41 5c                	pop    r12
    5613:	41 5d                	pop    r13
    5615:	41 5e                	pop    r14
    5617:	41 5f                	pop    r15
    5619:	c3                   	ret    
    561a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    5620:	c7 05 46 dd 20 00 01 	mov    DWORD PTR [rip+0x20dd46],0x1        # 213370 <result_parse>
    5627:	00 00 00 
    562a:	bf 01 00 00 00       	mov    edi,0x1
    562f:	eb cc                	jmp    55fd <asn1_parser2array+0x15d>
    5631:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    5638:	4c 89 e0             	mov    rax,r12
    563b:	48 29 e8             	sub    rax,rbp
    563e:	48 8d 78 0c          	lea    rdi,[rax+0xc]
    5642:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    5647:	e8 c4 d6 ff ff       	call   2d10 <malloc@plt>
    564c:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
    5651:	48 89 ee             	mov    rsi,rbp
    5654:	48 89 c7             	mov    rdi,rax
    5657:	49 89 c7             	mov    r15,rax
    565a:	e8 91 d6 ff ff       	call   2cf0 <memcpy@plt>
    565f:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
    5664:	4c 89 fa             	mov    rdx,r15
    5667:	41 c6 04 07 00       	mov    BYTE PTR [r15+rax*1],0x0
    566c:	8b 0a                	mov    ecx,DWORD PTR [rdx]
    566e:	48 83 c2 04          	add    rdx,0x4
    5672:	8d 81 ff fe fe fe    	lea    eax,[rcx-0x1010101]
    5678:	f7 d1                	not    ecx
    567a:	21 c8                	and    eax,ecx
    567c:	25 80 80 80 80       	and    eax,0x80808080
    5681:	74 e9                	je     566c <asn1_parser2array+0x1cc>
    5683:	89 c1                	mov    ecx,eax
    5685:	c1 e9 10             	shr    ecx,0x10
    5688:	a9 80 80 00 00       	test   eax,0x8080
    568d:	0f 44 c1             	cmove  eax,ecx
    5690:	48 8d 4a 02          	lea    rcx,[rdx+0x2]
    5694:	48 0f 44 d1          	cmove  rdx,rcx
    5698:	89 c1                	mov    ecx,eax
    569a:	00 c1                	add    cl,al
    569c:	48 b8 5f 61 73 6e 31 	movabs rax,0x61745f316e73615f
    56a3:	5f 74 61 
    56a6:	48 83 da 03          	sbb    rdx,0x3
    56aa:	48 89 02             	mov    QWORD PTR [rdx],rax
    56ad:	c7 42 08 62 2e 63 00 	mov    DWORD PTR [rdx+0x8],0x632e62
    56b4:	e9 f1 fe ff ff       	jmp    55aa <asn1_parser2array+0x10a>
    56b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    56c0:	49 29 dc             	sub    r12,rbx
    56c3:	49 8d 7c 24 0a       	lea    rdi,[r12+0xa]
    56c8:	e8 43 d6 ff ff       	call   2d10 <malloc@plt>
    56cd:	4c 89 e2             	mov    rdx,r12
    56d0:	48 89 c5             	mov    rbp,rax
    56d3:	48 89 de             	mov    rsi,rbx
    56d6:	48 89 c7             	mov    rdi,rax
    56d9:	e8 12 d6 ff ff       	call   2cf0 <memcpy@plt>
    56de:	42 c6 44 25 00 00    	mov    BYTE PTR [rbp+r12*1+0x0],0x0
    56e4:	48 89 e8             	mov    rax,rbp
    56e7:	8b 08                	mov    ecx,DWORD PTR [rax]
    56e9:	48 83 c0 04          	add    rax,0x4
    56ed:	8d 91 ff fe fe fe    	lea    edx,[rcx-0x1010101]
    56f3:	f7 d1                	not    ecx
    56f5:	21 ca                	and    edx,ecx
    56f7:	81 e2 80 80 80 80    	and    edx,0x80808080
    56fd:	74 e8                	je     56e7 <asn1_parser2array+0x247>
    56ff:	89 d1                	mov    ecx,edx
    5701:	c1 e9 10             	shr    ecx,0x10
    5704:	f7 c2 80 80 00 00    	test   edx,0x8080
    570a:	0f 44 d1             	cmove  edx,ecx
    570d:	48 8d 48 02          	lea    rcx,[rax+0x2]
    5711:	48 0f 44 c1          	cmove  rax,rcx
    5715:	89 d1                	mov    ecx,edx
    5717:	00 d1                	add    cl,dl
    5719:	48 b9 5f 61 73 6e 31 	movabs rcx,0x61745f316e73615f
    5720:	5f 74 61 
    5723:	48 83 d8 03          	sbb    rax,0x3
    5727:	48 29 e8             	sub    rax,rbp
    572a:	48 8d 54 05 00       	lea    rdx,[rbp+rax*1+0x0]
    572f:	48 89 0a             	mov    QWORD PTR [rdx],rcx
    5732:	b9 62 00 00 00       	mov    ecx,0x62
    5737:	66 89 4a 08          	mov    WORD PTR [rdx+0x8],cx
    573b:	48 8d 50 09          	lea    rdx,[rax+0x9]
    573f:	85 d2                	test   edx,edx
    5741:	0f 84 77 fe ff ff    	je     55be <asn1_parser2array+0x11e>
    5747:	83 ea 01             	sub    edx,0x1
    574a:	48 89 e8             	mov    rax,rbp
    574d:	48 8d 54 15 01       	lea    rdx,[rbp+rdx*1+0x1]
    5752:	eb 11                	jmp    5765 <asn1_parser2array+0x2c5>
    5754:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    5758:	48 83 c0 01          	add    rax,0x1
    575c:	48 39 d0             	cmp    rax,rdx
    575f:	0f 84 59 fe ff ff    	je     55be <asn1_parser2array+0x11e>
    5765:	80 38 2d             	cmp    BYTE PTR [rax],0x2d
    5768:	75 ee                	jne    5758 <asn1_parser2array+0x2b8>
    576a:	c6 00 5f             	mov    BYTE PTR [rax],0x5f
    576d:	eb e9                	jmp    5758 <asn1_parser2array+0x2b8>
    576f:	90                   	nop

0000000000005770 <encode_val>:
    5770:	49 89 ca             	mov    r10,rcx
    5773:	41 b8 08 00 00 00    	mov    r8d,0x8
    5779:	b9 38 00 00 00       	mov    ecx,0x38
    577e:	45 31 c9             	xor    r9d,r9d
    5781:	eb 1c                	jmp    579f <encode_val+0x2f>
    5783:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    5788:	45 85 c9             	test   r9d,r9d
    578b:	75 1d                	jne    57aa <encode_val+0x3a>
    578d:	45 85 c0             	test   r8d,r8d
    5790:	74 4b                	je     57dd <encode_val+0x6d>
    5792:	41 83 e8 01          	sub    r8d,0x1
    5796:	83 e9 07             	sub    ecx,0x7
    5799:	41 83 f8 ff          	cmp    r8d,0xffffffff
    579d:	74 3c                	je     57db <encode_val+0x6b>
    579f:	48 89 f8             	mov    rax,rdi
    57a2:	48 d3 e8             	shr    rax,cl
    57a5:	83 e0 7f             	and    eax,0x7f
    57a8:	74 de                	je     5788 <encode_val+0x18>
    57aa:	45 85 c0             	test   r8d,r8d
    57ad:	74 03                	je     57b2 <encode_val+0x42>
    57af:	83 c8 80             	or     eax,0xffffff80
    57b2:	4d 63 0a             	movsxd r9,DWORD PTR [r10]
    57b5:	41 39 d1             	cmp    r9d,edx
    57b8:	7d 07                	jge    57c1 <encode_val+0x51>
    57ba:	42 88 04 0e          	mov    BYTE PTR [rsi+r9*1],al
    57be:	45 8b 0a             	mov    r9d,DWORD PTR [r10]
    57c1:	41 83 e8 01          	sub    r8d,0x1
    57c5:	41 83 c1 01          	add    r9d,0x1
    57c9:	83 e9 07             	sub    ecx,0x7
    57cc:	41 83 f8 ff          	cmp    r8d,0xffffffff
    57d0:	45 89 0a             	mov    DWORD PTR [r10],r9d
    57d3:	41 b9 01 00 00 00    	mov    r9d,0x1
    57d9:	75 c4                	jne    579f <encode_val+0x2f>
    57db:	f3 c3                	repz ret 
    57dd:	31 c0                	xor    eax,eax
    57df:	eb d1                	jmp    57b2 <encode_val+0x42>
    57e1:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    57e6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    57ed:	00 00 00 

00000000000057f0 <setof_compar>:
    57f0:	55                   	push   rbp
    57f1:	53                   	push   rbx
    57f2:	48 83 ec 08          	sub    rsp,0x8
    57f6:	8b 6e 08             	mov    ebp,DWORD PTR [rsi+0x8]
    57f9:	8b 5f 08             	mov    ebx,DWORD PTR [rdi+0x8]
    57fc:	48 8b 36             	mov    rsi,QWORD PTR [rsi]
    57ff:	48 8b 3f             	mov    rdi,QWORD PTR [rdi]
    5802:	89 da                	mov    edx,ebx
    5804:	39 dd                	cmp    ebp,ebx
    5806:	48 0f 4e d5          	cmovle rdx,rbp
    580a:	e8 81 d4 ff ff       	call   2c90 <memcmp@plt>
    580f:	85 c0                	test   eax,eax
    5811:	75 13                	jne    5826 <setof_compar+0x36>
    5813:	39 dd                	cmp    ebp,ebx
    5815:	74 0f                	je     5826 <setof_compar+0x36>
    5817:	b8 01 00 00 00       	mov    eax,0x1
    581c:	7c 08                	jl     5826 <setof_compar+0x36>
    581e:	0f 9f c0             	setg   al
    5821:	0f b6 c0             	movzx  eax,al
    5824:	f7 d8                	neg    eax
    5826:	48 83 c4 08          	add    rsp,0x8
    582a:	5b                   	pop    rbx
    582b:	5d                   	pop    rbp
    582c:	c3                   	ret    
    582d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000005830 <_asn1_error_description_value_not_found>:
    5830:	48 85 f6             	test   rsi,rsi
    5833:	74 5b                	je     5890 <_asn1_error_description_value_not_found+0x60>
    5835:	55                   	push   rbp
    5836:	53                   	push   rbx
    5837:	48 8d 15 32 a0 00 00 	lea    rdx,[rip+0xa032]        # f870 <yytranslate+0x130>
    583e:	48 89 f3             	mov    rbx,rsi
    5841:	48 89 fd             	mov    rbp,rdi
    5844:	be 80 00 00 00       	mov    esi,0x80
    5849:	48 83 ec 08          	sub    rsp,0x8
    584d:	48 89 df             	mov    rdi,rbx
    5850:	e8 7b 58 00 00       	call   b0d0 <_asn1_str_cpy>
    5855:	48 89 df             	mov    rdi,rbx
    5858:	e8 63 d3 ff ff       	call   2bc0 <strlen@plt>
    585d:	48 8d 34 03          	lea    rsi,[rbx+rax*1]
    5861:	48 89 ef             	mov    rdi,rbp
    5864:	ba 58 00 00 00       	mov    edx,0x58
    5869:	e8 32 44 00 00       	call   9ca0 <_asn1_hierarchical_name>
    586e:	48 83 c4 08          	add    rsp,0x8
    5872:	48 89 df             	mov    rdi,rbx
    5875:	48 8d 15 0a a0 00 00 	lea    rdx,[rip+0xa00a]        # f886 <yytranslate+0x146>
    587c:	5b                   	pop    rbx
    587d:	5d                   	pop    rbp
    587e:	be 80 00 00 00       	mov    esi,0x80
    5883:	e9 c8 57 00 00       	jmp    b050 <_asn1_str_cat>
    5888:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    588f:	00 
    5890:	f3 c3                	repz ret 
    5892:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    5896:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    589d:	00 00 00 

00000000000058a0 <_asn1_tag_der.part.0>:
    58a0:	48 83 ec 18          	sub    rsp,0x18
    58a4:	83 cf 1f             	or     edi,0x1f
    58a7:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    58ae:	00 00 
    58b0:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    58b5:	31 c0                	xor    eax,eax
    58b7:	85 f6                	test   esi,esi
    58b9:	40 88 3a             	mov    BYTE PTR [rdx],dil
    58bc:	0f 84 9e 00 00 00    	je     5960 <_asn1_tag_der.part.0+0xc0>
    58c2:	89 f0                	mov    eax,esi
    58c4:	bf 01 00 00 00       	mov    edi,0x1
    58c9:	c1 ee 07             	shr    esi,0x7
    58cc:	83 e0 7f             	and    eax,0x7f
    58cf:	88 04 24             	mov    BYTE PTR [rsp],al
    58d2:	48 89 e0             	mov    rax,rsp
    58d5:	85 f6                	test   esi,esi
    58d7:	74 77                	je     5950 <_asn1_tag_der.part.0+0xb0>
    58d9:	41 89 f0             	mov    r8d,esi
    58dc:	83 c7 01             	add    edi,0x1
    58df:	c1 ee 07             	shr    esi,0x7
    58e2:	41 83 e0 7f          	and    r8d,0x7f
    58e6:	48 83 c0 01          	add    rax,0x1
    58ea:	44 88 00             	mov    BYTE PTR [rax],r8b
    58ed:	83 ff 04             	cmp    edi,0x4
    58f0:	75 e3                	jne    58d5 <_asn1_tag_der.part.0+0x35>
    58f2:	c7 01 05 00 00 00    	mov    DWORD PTR [rcx],0x5
    58f8:	b8 05 00 00 00       	mov    eax,0x5
    58fd:	be 03 00 00 00       	mov    esi,0x3
    5902:	48 63 fe             	movsxd rdi,esi
    5905:	83 e8 01             	sub    eax,0x1
    5908:	0f b6 3c 3c          	movzx  edi,BYTE PTR [rsp+rdi*1]
    590c:	29 f0                	sub    eax,esi
    590e:	83 ee 01             	sub    esi,0x1
    5911:	48 98                	cdqe   
    5913:	83 c7 80             	add    edi,0xffffff80
    5916:	83 fe ff             	cmp    esi,0xffffffff
    5919:	40 88 3c 02          	mov    BYTE PTR [rdx+rax*1],dil
    591d:	74 09                	je     5928 <_asn1_tag_der.part.0+0x88>
    591f:	8b 01                	mov    eax,DWORD PTR [rcx]
    5921:	eb df                	jmp    5902 <_asn1_tag_der.part.0+0x62>
    5923:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    5928:	48 63 01             	movsxd rax,DWORD PTR [rcx]
    592b:	48 83 e8 01          	sub    rax,0x1
    592f:	80 04 02 80          	add    BYTE PTR [rdx+rax*1],0x80
    5933:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
    5938:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
    593f:	00 00 
    5941:	75 27                	jne    596a <_asn1_tag_der.part.0+0xca>
    5943:	48 83 c4 18          	add    rsp,0x18
    5947:	c3                   	ret    
    5948:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    594f:	00 
    5950:	8d 47 01             	lea    eax,[rdi+0x1]
    5953:	8d 77 ff             	lea    esi,[rdi-0x1]
    5956:	89 01                	mov    DWORD PTR [rcx],eax
    5958:	eb a8                	jmp    5902 <_asn1_tag_der.part.0+0x62>
    595a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    5960:	c7 01 01 00 00 00    	mov    DWORD PTR [rcx],0x1
    5966:	31 c0                	xor    eax,eax
    5968:	eb c5                	jmp    592f <_asn1_tag_der.part.0+0x8f>
    596a:	e8 61 d2 ff ff       	call   2bd0 <__stack_chk_fail@plt>
    596f:	90                   	nop

0000000000005970 <asn1_length_der>:
    5970:	48 83 ec 28          	sub    rsp,0x28
    5974:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    597b:	00 00 
    597d:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
    5982:	31 c0                	xor    eax,eax
    5984:	48 83 ff 7f          	cmp    rdi,0x7f
    5988:	48 89 e1             	mov    rcx,rsp
    598b:	77 26                	ja     59b3 <asn1_length_der+0x43>
    598d:	48 85 f6             	test   rsi,rsi
    5990:	74 03                	je     5995 <asn1_length_der+0x25>
    5992:	40 88 3e             	mov    BYTE PTR [rsi],dil
    5995:	c7 02 01 00 00 00    	mov    DWORD PTR [rdx],0x1
    599b:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
    59a0:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
    59a7:	00 00 
    59a9:	75 54                	jne    59ff <asn1_length_der+0x8f>
    59ab:	48 83 c4 28          	add    rsp,0x28
    59af:	c3                   	ret    
    59b0:	44 89 c8             	mov    eax,r9d
    59b3:	40 88 39             	mov    BYTE PTR [rcx],dil
    59b6:	41 89 f8             	mov    r8d,edi
    59b9:	48 c1 ef 08          	shr    rdi,0x8
    59bd:	48 83 c1 01          	add    rcx,0x1
    59c1:	48 85 ff             	test   rdi,rdi
    59c4:	44 8d 48 01          	lea    r9d,[rax+0x1]
    59c8:	75 e6                	jne    59b0 <asn1_length_der+0x40>
    59ca:	8d 48 02             	lea    ecx,[rax+0x2]
    59cd:	48 85 f6             	test   rsi,rsi
    59d0:	89 0a                	mov    DWORD PTR [rdx],ecx
    59d2:	74 c7                	je     599b <asn1_length_der+0x2b>
    59d4:	41 83 c1 80          	add    r9d,0xffffff80
    59d8:	44 88 0e             	mov    BYTE PTR [rsi],r9b
    59db:	eb 0b                	jmp    59e8 <asn1_length_der+0x78>
    59dd:	0f 1f 00             	nop    DWORD PTR [rax]
    59e0:	48 63 c8             	movsxd rcx,eax
    59e3:	44 0f b6 04 0c       	movzx  r8d,BYTE PTR [rsp+rcx*1]
    59e8:	89 c1                	mov    ecx,eax
    59ea:	83 e8 01             	sub    eax,0x1
    59ed:	f7 d1                	not    ecx
    59ef:	03 0a                	add    ecx,DWORD PTR [rdx]
    59f1:	83 f8 ff             	cmp    eax,0xffffffff
    59f4:	48 63 c9             	movsxd rcx,ecx
    59f7:	44 88 04 0e          	mov    BYTE PTR [rsi+rcx*1],r8b
    59fb:	75 e3                	jne    59e0 <asn1_length_der+0x70>
    59fd:	eb 9c                	jmp    599b <asn1_length_der+0x2b>
    59ff:	e8 cc d1 ff ff       	call   2bd0 <__stack_chk_fail@plt>
    5a04:	66 90                	xchg   ax,ax
    5a06:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    5a0d:	00 00 00 

0000000000005a10 <_asn1_object_id_der>:
    5a10:	41 57                	push   r15
    5a12:	41 56                	push   r14
    5a14:	41 55                	push   r13
    5a16:	41 54                	push   r12
    5a18:	49 89 f4             	mov    r12,rsi
    5a1b:	55                   	push   rbp
    5a1c:	53                   	push   rbx
    5a1d:	48 89 d5             	mov    rbp,rdx
    5a20:	48 89 fb             	mov    rbx,rdi
    5a23:	48 83 ec 28          	sub    rsp,0x28
    5a27:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    5a2e:	00 00 
    5a30:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
    5a35:	31 c0                	xor    eax,eax
    5a37:	e8 84 d1 ff ff       	call   2bc0 <strlen@plt>
    5a3c:	4d 85 e4             	test   r12,r12
    5a3f:	44 8b 6d 00          	mov    r13d,DWORD PTR [rbp+0x0]
    5a43:	49 89 c6             	mov    r14,rax
    5a46:	c7 45 00 00 00 00 00 	mov    DWORD PTR [rbp+0x0],0x0
    5a4d:	75 31                	jne    5a80 <_asn1_object_id_der+0x70>
    5a4f:	45 85 ed             	test   r13d,r13d
    5a52:	b8 07 00 00 00       	mov    eax,0x7
    5a57:	7e 27                	jle    5a80 <_asn1_object_id_der+0x70>
    5a59:	48 8b 4c 24 18       	mov    rcx,QWORD PTR [rsp+0x18]
    5a5e:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
    5a65:	00 00 
    5a67:	0f 85 87 01 00 00    	jne    5bf4 <_asn1_object_id_der+0x1e4>
    5a6d:	48 83 c4 28          	add    rsp,0x28
    5a71:	5b                   	pop    rbx
    5a72:	5d                   	pop    rbp
    5a73:	41 5c                	pop    r12
    5a75:	41 5d                	pop    r13
    5a77:	41 5e                	pop    r14
    5a79:	41 5f                	pop    r15
    5a7b:	c3                   	ret    
    5a7c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    5a80:	41 8d 7e 02          	lea    edi,[r14+0x2]
    5a84:	48 63 ff             	movsxd rdi,edi
    5a87:	e8 84 d2 ff ff       	call   2d10 <malloc@plt>
    5a8c:	48 89 c1             	mov    rcx,rax
    5a8f:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    5a94:	b8 0d 00 00 00       	mov    eax,0xd
    5a99:	48 85 c9             	test   rcx,rcx
    5a9c:	74 bb                	je     5a59 <_asn1_object_id_der+0x49>
    5a9e:	4d 63 f6             	movsxd r14,r14d
    5aa1:	48 89 de             	mov    rsi,rbx
    5aa4:	48 89 cf             	mov    rdi,rcx
    5aa7:	48 89 cb             	mov    rbx,rcx
    5aaa:	4c 89 f2             	mov    rdx,r14
    5aad:	e8 3e d2 ff ff       	call   2cf0 <memcpy@plt>
    5ab2:	49 89 df             	mov    r15,rbx
    5ab5:	42 c6 04 33 2e       	mov    BYTE PTR [rbx+r14*1],0x2e
    5aba:	42 c6 44 33 01 00    	mov    BYTE PTR [rbx+r14*1+0x1],0x0
    5ac0:	48 c7 04 24 00 00 00 	mov    QWORD PTR [rsp],0x0
    5ac7:	00 
    5ac8:	31 db                	xor    ebx,ebx
    5aca:	eb 3e                	jmp    5b0a <_asn1_object_id_der+0xfa>
    5acc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    5ad0:	48 83 3c 24 02       	cmp    QWORD PTR [rsp],0x2
    5ad5:	0f 87 05 01 00 00    	ja     5be0 <_asn1_object_id_der+0x1d0>
    5adb:	48 83 3c 24 01       	cmp    QWORD PTR [rsp],0x1
    5ae0:	77 0a                	ja     5aec <_asn1_object_id_der+0xdc>
    5ae2:	48 83 f8 27          	cmp    rax,0x27
    5ae6:	0f 87 f4 00 00 00    	ja     5be0 <_asn1_object_id_der+0x1d0>
    5aec:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
    5af0:	4c 89 e6             	mov    rsi,r12
    5af3:	48 8d 14 89          	lea    rdx,[rcx+rcx*4]
    5af7:	48 89 e9             	mov    rcx,rbp
    5afa:	48 8d 3c d0          	lea    rdi,[rax+rdx*8]
    5afe:	44 89 ea             	mov    edx,r13d
    5b01:	e8 6a fc ff ff       	call   5770 <encode_val>
    5b06:	4d 8d 7e 01          	lea    r15,[r14+0x1]
    5b0a:	be 2e 00 00 00       	mov    esi,0x2e
    5b0f:	4c 89 ff             	mov    rdi,r15
    5b12:	e8 c9 d0 ff ff       	call   2be0 <strchr@plt>
    5b17:	48 85 c0             	test   rax,rax
    5b1a:	49 89 c6             	mov    r14,rax
    5b1d:	74 41                	je     5b60 <_asn1_object_id_der+0x150>
    5b1f:	31 f6                	xor    esi,esi
    5b21:	41 c6 06 00          	mov    BYTE PTR [r14],0x0
    5b25:	ba 0a 00 00 00       	mov    edx,0xa
    5b2a:	4c 89 ff             	mov    rdi,r15
    5b2d:	83 c3 01             	add    ebx,0x1
    5b30:	e8 7b d2 ff ff       	call   2db0 <strtoul@plt>
    5b35:	83 fb 01             	cmp    ebx,0x1
    5b38:	74 1e                	je     5b58 <_asn1_object_id_der+0x148>
    5b3a:	83 fb 02             	cmp    ebx,0x2
    5b3d:	74 91                	je     5ad0 <_asn1_object_id_der+0xc0>
    5b3f:	48 89 e9             	mov    rcx,rbp
    5b42:	44 89 ea             	mov    edx,r13d
    5b45:	4c 89 e6             	mov    rsi,r12
    5b48:	48 89 c7             	mov    rdi,rax
    5b4b:	e8 20 fc ff ff       	call   5770 <encode_val>
    5b50:	eb b4                	jmp    5b06 <_asn1_object_id_der+0xf6>
    5b52:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    5b58:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    5b5c:	eb a8                	jmp    5b06 <_asn1_object_id_der+0xf6>
    5b5e:	66 90                	xchg   ax,ax
    5b60:	48 63 7d 00          	movsxd rdi,DWORD PTR [rbp+0x0]
    5b64:	48 8d 5c 24 14       	lea    rbx,[rsp+0x14]
    5b69:	31 f6                	xor    esi,esi
    5b6b:	48 89 da             	mov    rdx,rbx
    5b6e:	e8 bd d2 ff ff       	call   2e30 <asn1_length_der@plt>
    5b73:	48 63 55 00          	movsxd rdx,DWORD PTR [rbp+0x0]
    5b77:	48 63 44 24 14       	movsxd rax,DWORD PTR [rsp+0x14]
    5b7c:	8d 0c 02             	lea    ecx,[rdx+rax*1]
    5b7f:	41 39 cd             	cmp    r13d,ecx
    5b82:	7d 17                	jge    5b9b <_asn1_object_id_der+0x18b>
    5b84:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    5b89:	89 4d 00             	mov    DWORD PTR [rbp+0x0],ecx
    5b8c:	e8 7f cf ff ff       	call   2b10 <free@plt>
    5b91:	b8 0c 00 00 00       	mov    eax,0xc
    5b96:	e9 be fe ff ff       	jmp    5a59 <_asn1_object_id_der+0x49>
    5b9b:	49 8d 3c 04          	lea    rdi,[r12+rax*1]
    5b9f:	4c 89 e6             	mov    rsi,r12
    5ba2:	e8 c9 d1 ff ff       	call   2d70 <memmove@plt>
    5ba7:	48 63 7d 00          	movsxd rdi,DWORD PTR [rbp+0x0]
    5bab:	48 89 da             	mov    rdx,rbx
    5bae:	4c 89 e6             	mov    rsi,r12
    5bb1:	e8 7a d2 ff ff       	call   2e30 <asn1_length_der@plt>
    5bb6:	8b 5c 24 14          	mov    ebx,DWORD PTR [rsp+0x14]
    5bba:	03 5d 00             	add    ebx,DWORD PTR [rbp+0x0]
    5bbd:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    5bc2:	89 5d 00             	mov    DWORD PTR [rbp+0x0],ebx
    5bc5:	e8 46 cf ff ff       	call   2b10 <free@plt>
    5bca:	41 39 dd             	cmp    r13d,ebx
    5bcd:	ba 0c 00 00 00       	mov    edx,0xc
    5bd2:	b8 00 00 00 00       	mov    eax,0x0
    5bd7:	0f 4c c2             	cmovl  eax,edx
    5bda:	e9 7a fe ff ff       	jmp    5a59 <_asn1_object_id_der+0x49>
    5bdf:	90                   	nop
    5be0:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    5be5:	e8 26 cf ff ff       	call   2b10 <free@plt>
    5bea:	b8 07 00 00 00       	mov    eax,0x7
    5bef:	e9 65 fe ff ff       	jmp    5a59 <_asn1_object_id_der+0x49>
    5bf4:	e8 d7 cf ff ff       	call   2bd0 <__stack_chk_fail@plt>
    5bf9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000005c00 <asn1_octet_der>:
    5c00:	41 56                	push   r14
    5c02:	41 55                	push   r13
    5c04:	41 54                	push   r12
    5c06:	55                   	push   rbp
    5c07:	53                   	push   rbx
    5c08:	48 83 ec 20          	sub    rsp,0x20
    5c0c:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    5c13:	00 00 
    5c15:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
    5c1a:	31 c0                	xor    eax,eax
    5c1c:	48 85 d2             	test   rdx,rdx
    5c1f:	74 0b                	je     5c2c <asn1_octet_der+0x2c>
    5c21:	89 f0                	mov    eax,esi
    5c23:	89 f5                	mov    ebp,esi
    5c25:	c1 e8 1f             	shr    eax,0x1f
    5c28:	84 c0                	test   al,al
    5c2a:	74 24                	je     5c50 <asn1_octet_der+0x50>
    5c2c:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
    5c31:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
    5c38:	00 00 
    5c3a:	75 54                	jne    5c90 <asn1_octet_der+0x90>
    5c3c:	48 83 c4 20          	add    rsp,0x20
    5c40:	5b                   	pop    rbx
    5c41:	5d                   	pop    rbp
    5c42:	41 5c                	pop    r12
    5c44:	41 5d                	pop    r13
    5c46:	41 5e                	pop    r14
    5c48:	c3                   	ret    
    5c49:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    5c50:	48 89 d3             	mov    rbx,rdx
    5c53:	4c 63 f6             	movsxd r14,esi
    5c56:	48 8d 54 24 14       	lea    rdx,[rsp+0x14]
    5c5b:	49 89 fc             	mov    r12,rdi
    5c5e:	48 89 de             	mov    rsi,rbx
    5c61:	4c 89 f7             	mov    rdi,r14
    5c64:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    5c69:	e8 c2 d1 ff ff       	call   2e30 <asn1_length_der@plt>
    5c6e:	48 63 7c 24 14       	movsxd rdi,DWORD PTR [rsp+0x14]
    5c73:	4c 89 f2             	mov    rdx,r14
    5c76:	4c 89 e6             	mov    rsi,r12
    5c79:	49 89 fd             	mov    r13,rdi
    5c7c:	48 01 df             	add    rdi,rbx
    5c7f:	e8 6c d0 ff ff       	call   2cf0 <memcpy@plt>
    5c84:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    5c89:	44 01 ed             	add    ebp,r13d
    5c8c:	89 29                	mov    DWORD PTR [rcx],ebp
    5c8e:	eb 9c                	jmp    5c2c <asn1_octet_der+0x2c>
    5c90:	e8 3b cf ff ff       	call   2bd0 <__stack_chk_fail@plt>
    5c95:	90                   	nop
    5c96:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    5c9d:	00 00 00 

0000000000005ca0 <asn1_encode_simple_der>:
    5ca0:	41 56                	push   r14
    5ca2:	41 55                	push   r13
    5ca4:	41 54                	push   r12
    5ca6:	55                   	push   rbp
    5ca7:	53                   	push   rbx
    5ca8:	48 83 ec 50          	sub    rsp,0x50
    5cac:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    5cb3:	00 00 
    5cb5:	48 89 44 24 48       	mov    QWORD PTR [rsp+0x48],rax
    5cba:	31 c0                	xor    eax,eax
    5cbc:	85 ff                	test   edi,edi
    5cbe:	0f 84 cc 00 00 00    	je     5d90 <asn1_encode_simple_der+0xf0>
    5cc4:	48 85 f6             	test   rsi,rsi
    5cc7:	0f 84 c3 00 00 00    	je     5d90 <asn1_encode_simple_der+0xf0>
    5ccd:	3b 3d f5 d4 20 00    	cmp    edi,DWORD PTR [rip+0x20d4f5]        # 2131c8 <_asn1_tags_size>
    5cd3:	0f 87 b7 00 00 00    	ja     5d90 <asn1_encode_simple_der+0xf0>
    5cd9:	89 ff                	mov    edi,edi
    5cdb:	48 8d 05 3e cd 20 00 	lea    rax,[rip+0x20cd3e]        # 212a20 <_asn1_tags>
    5ce2:	48 c1 e7 04          	shl    rdi,0x4
    5ce6:	48 01 f8             	add    rax,rdi
    5ce9:	48 83 78 08 00       	cmp    QWORD PTR [rax+0x8],0x0
    5cee:	0f 84 9c 00 00 00    	je     5d90 <asn1_encode_simple_der+0xf0>
    5cf4:	8b 70 04             	mov    esi,DWORD PTR [rax+0x4]
    5cf7:	85 f6                	test   esi,esi
    5cf9:	0f 85 91 00 00 00    	jne    5d90 <asn1_encode_simple_der+0xf0>
    5cff:	8b 30                	mov    esi,DWORD PTR [rax]
    5d01:	89 d3                	mov    ebx,edx
    5d03:	48 89 cd             	mov    rbp,rcx
    5d06:	83 fe 1e             	cmp    esi,0x1e
    5d09:	0f 87 a9 00 00 00    	ja     5db8 <asn1_encode_simple_der+0x118>
    5d0f:	40 88 74 24 20       	mov    BYTE PTR [rsp+0x20],sil
    5d14:	c7 44 24 18 01 00 00 	mov    DWORD PTR [rsp+0x18],0x1
    5d1b:	00 
    5d1c:	4c 8d 64 24 30       	lea    r12,[rsp+0x30]
    5d21:	48 8d 54 24 1c       	lea    rdx,[rsp+0x1c]
    5d26:	89 df                	mov    edi,ebx
    5d28:	4c 89 44 24 08       	mov    QWORD PTR [rsp+0x8],r8
    5d2d:	4c 89 e6             	mov    rsi,r12
    5d30:	e8 fb d0 ff ff       	call   2e30 <asn1_length_der@plt>
    5d35:	8b 54 24 18          	mov    edx,DWORD PTR [rsp+0x18]
    5d39:	85 d2                	test   edx,edx
    5d3b:	7e 53                	jle    5d90 <asn1_encode_simple_der+0xf0>
    5d3d:	44 8b 6c 24 1c       	mov    r13d,DWORD PTR [rsp+0x1c]
    5d42:	45 85 ed             	test   r13d,r13d
    5d45:	7e 49                	jle    5d90 <asn1_encode_simple_der+0xf0>
    5d47:	4c 8b 44 24 08       	mov    r8,QWORD PTR [rsp+0x8]
    5d4c:	46 8d 34 2a          	lea    r14d,[rdx+r13*1]
    5d50:	b8 0c 00 00 00       	mov    eax,0xc
    5d55:	45 3b 30             	cmp    r14d,DWORD PTR [r8]
    5d58:	77 3b                	ja     5d95 <asn1_encode_simple_der+0xf5>
    5d5a:	48 63 da             	movsxd rbx,edx
    5d5d:	48 8d 74 24 20       	lea    rsi,[rsp+0x20]
    5d62:	48 89 ef             	mov    rdi,rbp
    5d65:	48 89 da             	mov    rdx,rbx
    5d68:	e8 83 cf ff ff       	call   2cf0 <memcpy@plt>
    5d6d:	48 8d 7c 1d 00       	lea    rdi,[rbp+rbx*1+0x0]
    5d72:	49 63 d5             	movsxd rdx,r13d
    5d75:	4c 89 e6             	mov    rsi,r12
    5d78:	e8 73 cf ff ff       	call   2cf0 <memcpy@plt>
    5d7d:	4c 8b 44 24 08       	mov    r8,QWORD PTR [rsp+0x8]
    5d82:	31 c0                	xor    eax,eax
    5d84:	45 89 30             	mov    DWORD PTR [r8],r14d
    5d87:	eb 0c                	jmp    5d95 <asn1_encode_simple_der+0xf5>
    5d89:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    5d90:	b8 07 00 00 00       	mov    eax,0x7
    5d95:	48 8b 4c 24 48       	mov    rcx,QWORD PTR [rsp+0x48]
    5d9a:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
    5da1:	00 00 
    5da3:	75 33                	jne    5dd8 <asn1_encode_simple_der+0x138>
    5da5:	48 83 c4 50          	add    rsp,0x50
    5da9:	5b                   	pop    rbx
    5daa:	5d                   	pop    rbp
    5dab:	41 5c                	pop    r12
    5dad:	41 5d                	pop    r13
    5daf:	41 5e                	pop    r14
    5db1:	c3                   	ret    
    5db2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    5db8:	48 8d 4c 24 18       	lea    rcx,[rsp+0x18]
    5dbd:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
    5dc2:	31 ff                	xor    edi,edi
    5dc4:	4c 89 44 24 08       	mov    QWORD PTR [rsp+0x8],r8
    5dc9:	e8 d2 fa ff ff       	call   58a0 <_asn1_tag_der.part.0>
    5dce:	4c 8b 44 24 08       	mov    r8,QWORD PTR [rsp+0x8]
    5dd3:	e9 44 ff ff ff       	jmp    5d1c <asn1_encode_simple_der+0x7c>
    5dd8:	e8 f3 cd ff ff       	call   2bd0 <__stack_chk_fail@plt>
    5ddd:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000005de0 <asn1_object_id_der>:
    5de0:	53                   	push   rbx
    5de1:	48 89 d3             	mov    rbx,rdx
    5de4:	48 83 ec 10          	sub    rsp,0x10
    5de8:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    5def:	00 00 
    5df1:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    5df6:	31 c0                	xor    eax,eax
    5df8:	8b 02                	mov    eax,DWORD PTR [rdx]
    5dfa:	c7 02 00 00 00 00    	mov    DWORD PTR [rdx],0x0
    5e00:	83 f8 01             	cmp    eax,0x1
    5e03:	7e 03                	jle    5e08 <asn1_object_id_der+0x28>
    5e05:	c6 06 06             	mov    BYTE PTR [rsi],0x6
    5e08:	48 8d 54 24 04       	lea    rdx,[rsp+0x4]
    5e0d:	83 e8 01             	sub    eax,0x1
    5e10:	48 83 c6 01          	add    rsi,0x1
    5e14:	89 44 24 04          	mov    DWORD PTR [rsp+0x4],eax
    5e18:	e8 f3 fb ff ff       	call   5a10 <_asn1_object_id_der>
    5e1d:	83 f8 0c             	cmp    eax,0xc
    5e20:	74 1e                	je     5e40 <asn1_object_id_der+0x60>
    5e22:	85 c0                	test   eax,eax
    5e24:	74 1a                	je     5e40 <asn1_object_id_der+0x60>
    5e26:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    5e2b:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
    5e32:	00 00 
    5e34:	75 15                	jne    5e4b <asn1_object_id_der+0x6b>
    5e36:	48 83 c4 10          	add    rsp,0x10
    5e3a:	5b                   	pop    rbx
    5e3b:	c3                   	ret    
    5e3c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    5e40:	8b 4c 24 04          	mov    ecx,DWORD PTR [rsp+0x4]
    5e44:	8d 51 01             	lea    edx,[rcx+0x1]
    5e47:	89 13                	mov    DWORD PTR [rbx],edx
    5e49:	eb db                	jmp    5e26 <asn1_object_id_der+0x46>
    5e4b:	e8 80 cd ff ff       	call   2bd0 <__stack_chk_fail@plt>

0000000000005e50 <asn1_bit_der>:
    5e50:	41 57                	push   r15
    5e52:	41 56                	push   r14
    5e54:	41 55                	push   r13
    5e56:	41 54                	push   r12
    5e58:	55                   	push   rbp
    5e59:	53                   	push   rbx
    5e5a:	48 83 ec 28          	sub    rsp,0x28
    5e5e:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    5e65:	00 00 
    5e67:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
    5e6c:	31 c0                	xor    eax,eax
    5e6e:	48 85 d2             	test   rdx,rdx
    5e71:	0f 84 87 00 00 00    	je     5efe <asn1_bit_der+0xae>
    5e77:	41 89 f5             	mov    r13d,esi
    5e7a:	b8 08 00 00 00       	mov    eax,0x8
    5e7f:	83 e6 07             	and    esi,0x7
    5e82:	29 f0                	sub    eax,esi
    5e84:	41 c1 fd 03          	sar    r13d,0x3
    5e88:	49 89 ff             	mov    r15,rdi
    5e8b:	83 f8 08             	cmp    eax,0x8
    5e8e:	48 89 d5             	mov    rbp,rdx
    5e91:	49 89 cc             	mov    r12,rcx
    5e94:	0f 84 86 00 00 00    	je     5f20 <asn1_bit_der+0xd0>
    5e9a:	48 8d 15 4f 9c 00 00 	lea    rdx,[rip+0x9c4f]        # faf0 <bit_mask>
    5ea1:	89 c1                	mov    ecx,eax
    5ea3:	48 98                	cdqe   
    5ea5:	41 83 c5 01          	add    r13d,0x1
    5ea9:	44 0f b6 34 02       	movzx  r14d,BYTE PTR [rdx+rax*1]
    5eae:	41 8d 7d 01          	lea    edi,[r13+0x1]
    5eb2:	48 8d 54 24 14       	lea    rdx,[rsp+0x14]
    5eb7:	48 89 ee             	mov    rsi,rbp
    5eba:	88 4c 24 0f          	mov    BYTE PTR [rsp+0xf],cl
    5ebe:	48 63 ff             	movsxd rdi,edi
    5ec1:	e8 6a cf ff ff       	call   2e30 <asn1_length_der@plt>
    5ec6:	48 63 44 24 14       	movsxd rax,DWORD PTR [rsp+0x14]
    5ecb:	0f b6 4c 24 0f       	movzx  ecx,BYTE PTR [rsp+0xf]
    5ed0:	4d 85 ff             	test   r15,r15
    5ed3:	48 89 c3             	mov    rbx,rax
    5ed6:	88 4c 05 00          	mov    BYTE PTR [rbp+rax*1+0x0],cl
    5eda:	74 10                	je     5eec <asn1_bit_der+0x9c>
    5edc:	48 8d 7c 05 01       	lea    rdi,[rbp+rax*1+0x1]
    5ee1:	49 63 d5             	movsxd rdx,r13d
    5ee4:	4c 89 fe             	mov    rsi,r15
    5ee7:	e8 04 ce ff ff       	call   2cf0 <memcpy@plt>
    5eec:	44 01 eb             	add    ebx,r13d
    5eef:	48 63 c3             	movsxd rax,ebx
    5ef2:	83 c3 01             	add    ebx,0x1
    5ef5:	44 20 74 05 00       	and    BYTE PTR [rbp+rax*1+0x0],r14b
    5efa:	41 89 1c 24          	mov    DWORD PTR [r12],ebx
    5efe:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
    5f03:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
    5f0a:	00 00 
    5f0c:	75 1c                	jne    5f2a <asn1_bit_der+0xda>
    5f0e:	48 83 c4 28          	add    rsp,0x28
    5f12:	5b                   	pop    rbx
    5f13:	5d                   	pop    rbp
    5f14:	41 5c                	pop    r12
    5f16:	41 5d                	pop    r13
    5f18:	41 5e                	pop    r14
    5f1a:	41 5f                	pop    r15
    5f1c:	c3                   	ret    
    5f1d:	0f 1f 00             	nop    DWORD PTR [rax]
    5f20:	41 be ff ff ff ff    	mov    r14d,0xffffffff
    5f26:	31 c9                	xor    ecx,ecx
    5f28:	eb 84                	jmp    5eae <asn1_bit_der+0x5e>
    5f2a:	e8 a1 cc ff ff       	call   2bd0 <__stack_chk_fail@plt>
    5f2f:	90                   	nop

0000000000005f30 <asn1_der_coding>:
    5f30:	41 57                	push   r15
    5f32:	41 56                	push   r14
    5f34:	41 55                	push   r13
    5f36:	41 54                	push   r12
    5f38:	55                   	push   rbp
    5f39:	53                   	push   rbx
    5f3a:	48 81 ec 08 01 00 00 	sub    rsp,0x108
    5f41:	48 89 4c 24 18       	mov    QWORD PTR [rsp+0x18],rcx
    5f46:	48 89 14 24          	mov    QWORD PTR [rsp],rdx
    5f4a:	64 48 8b 0c 25 28 00 	mov    rcx,QWORD PTR fs:0x28
    5f51:	00 00 
    5f53:	48 89 8c 24 f8 00 00 	mov    QWORD PTR [rsp+0xf8],rcx
    5f5a:	00 
    5f5b:	31 c9                	xor    ecx,ecx
    5f5d:	4d 85 c0             	test   r8,r8
    5f60:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
    5f65:	74 04                	je     5f6b <asn1_der_coding+0x3b>
    5f67:	41 c6 00 00          	mov    BYTE PTR [r8],0x0
    5f6b:	e8 c0 cb ff ff       	call   2b30 <asn1_find_node@plt>
    5f70:	48 85 c0             	test   rax,rax
    5f73:	48 89 84 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rax
    5f7a:	00 
    5f7b:	0f 84 4f 02 00 00    	je     61d0 <asn1_der_coding+0x2a0>
    5f81:	48 89 c7             	mov    rdi,rax
    5f84:	e8 f7 6c 00 00       	call   cc80 <_asn1_copy_structure3>
    5f89:	48 85 c0             	test   rax,rax
    5f8c:	48 89 c5             	mov    rbp,rax
    5f8f:	48 89 84 24 90 00 00 	mov    QWORD PTR [rsp+0x90],rax
    5f96:	00 
    5f97:	0f 84 33 02 00 00    	je     61d0 <asn1_der_coding+0x2a0>
    5f9d:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
    5fa2:	48 83 3c 24 00       	cmp    QWORD PTR [rsp],0x0
    5fa7:	44 8b 38             	mov    r15d,DWORD PTR [rax]
    5faa:	0f 94 44 24 6b       	sete   BYTE PTR [rsp+0x6b]
    5faf:	0f b6 74 24 6b       	movzx  esi,BYTE PTR [rsp+0x6b]
    5fb4:	45 85 ff             	test   r15d,r15d
    5fb7:	7e 0e                	jle    5fc7 <asn1_der_coding+0x97>
    5fb9:	40 84 f6             	test   sil,sil
    5fbc:	b8 07 00 00 00       	mov    eax,0x7
    5fc1:	0f 85 0e 02 00 00    	jne    61d5 <asn1_der_coding+0x2a5>
    5fc7:	48 8d b4 24 98 00 00 	lea    rsi,[rsp+0x98]
    5fce:	00 
    5fcf:	8b 4d 48             	mov    ecx,DWORD PTR [rbp+0x48]
    5fd2:	45 31 f6             	xor    r14d,r14d
    5fd5:	b8 03 00 00 00       	mov    eax,0x3
    5fda:	44 89 f3             	mov    ebx,r14d
    5fdd:	48 89 74 24 40       	mov    QWORD PTR [rsp+0x40],rsi
    5fe2:	48 8d b4 24 8c 00 00 	lea    rsi,[rsp+0x8c]
    5fe9:	00 
    5fea:	48 89 74 24 48       	mov    QWORD PTR [rsp+0x48],rsi
    5fef:	48 8d 74 24 7f       	lea    rsi,[rsp+0x7f]
    5ff4:	48 89 74 24 50       	mov    QWORD PTR [rsp+0x50],rsi
    5ff9:	48 8d b4 24 88 00 00 	lea    rsi,[rsp+0x88]
    6000:	00 
    6001:	48 89 74 24 58       	mov    QWORD PTR [rsp+0x58],rsi
    6006:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    600d:	00 00 00 
    6010:	83 f8 01             	cmp    eax,0x1
    6013:	0f 84 f7 01 00 00    	je     6210 <asn1_der_coding+0x2e0>
    6019:	44 89 7c 24 08       	mov    DWORD PTR [rsp+0x8],r15d
    601e:	49 89 ef             	mov    r15,rbp
    6021:	f6 c5 20             	test   ch,0x20
    6024:	41 89 9f 8c 00 00 00 	mov    DWORD PTR [r15+0x8c],ebx
    602b:	0f 84 e7 07 00 00    	je     6818 <asn1_der_coding+0x8e8>
    6031:	49 8b 6f 60          	mov    rbp,QWORD PTR [r15+0x60]
    6035:	41 89 de             	mov    r14d,ebx
    6038:	44 8b 6c 24 08       	mov    r13d,DWORD PTR [rsp+0x8]
    603d:	48 85 ed             	test   rbp,rbp
    6040:	0f 84 da 07 00 00    	je     6820 <asn1_der_coding+0x8f0>
    6046:	48 8d 84 24 b0 00 00 	lea    rax,[rsp+0xb0]
    604d:	00 
    604e:	c6 44 24 10 00       	mov    BYTE PTR [rsp+0x10],0x0
    6053:	45 31 e4             	xor    r12d,r12d
    6056:	31 d2                	xor    edx,edx
    6058:	89 5c 24 30          	mov    DWORD PTR [rsp+0x30],ebx
    605c:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
    6061:	48 8d 84 24 a0 00 00 	lea    rax,[rsp+0xa0]
    6068:	00 
    6069:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
    606e:	eb 0d                	jmp    607d <asn1_der_coding+0x14d>
    6070:	48 8b 6d 68          	mov    rbp,QWORD PTR [rbp+0x68]
    6074:	48 85 ed             	test   rbp,rbp
    6077:	0f 84 c3 00 00 00    	je     6140 <asn1_der_coding+0x210>
    607d:	8b 45 48             	mov    eax,DWORD PTR [rbp+0x48]
    6080:	3c 08                	cmp    al,0x8
    6082:	75 ec                	jne    6070 <asn1_der_coding+0x140>
    6084:	f6 c4 04             	test   ah,0x4
    6087:	bb 40 00 00 00       	mov    ebx,0x40
    608c:	75 1a                	jne    60a8 <asn1_der_coding+0x178>
    608e:	31 db                	xor    ebx,ebx
    6090:	f6 c4 01             	test   ah,0x1
    6093:	75 13                	jne    60a8 <asn1_der_coding+0x178>
    6095:	89 c1                	mov    ecx,eax
    6097:	81 e1 00 02 00 00    	and    ecx,0x200
    609d:	83 f9 01             	cmp    ecx,0x1
    60a0:	19 db                	sbb    ebx,ebx
    60a2:	83 e3 c0             	and    ebx,0xffffffc0
    60a5:	83 eb 40             	sub    ebx,0x40
    60a8:	f6 c4 08             	test   ah,0x8
    60ab:	0f 84 2f 06 00 00    	je     66e0 <asn1_der_coding+0x7b0>
    60b1:	85 d2                	test   edx,edx
    60b3:	0f 84 a7 08 00 00    	je     6960 <asn1_der_coding+0xa30>
    60b9:	41 83 fc 1e          	cmp    r12d,0x1e
    60bd:	0f 87 1d 09 00 00    	ja     69e0 <asn1_der_coding+0xab0>
    60c3:	0f b6 54 24 10       	movzx  edx,BYTE PTR [rsp+0x10]
    60c8:	44 89 e0             	mov    eax,r12d
    60cb:	c7 84 24 98 00 00 00 	mov    DWORD PTR [rsp+0x98],0x1
    60d2:	01 00 00 00 
    60d6:	83 e0 1f             	and    eax,0x1f
    60d9:	bb 01 00 00 00       	mov    ebx,0x1
    60de:	83 e2 e0             	and    edx,0xffffffe0
    60e1:	01 d0                	add    eax,edx
    60e3:	88 84 24 a0 00 00 00 	mov    BYTE PTR [rsp+0xa0],al
    60ea:	41 29 dd             	sub    r13d,ebx
    60ed:	78 1c                	js     610b <asn1_der_coding+0x1db>
    60ef:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    60f3:	48 85 c0             	test   rax,rax
    60f6:	74 13                	je     610b <asn1_der_coding+0x1db>
    60f8:	48 8b 74 24 28       	mov    rsi,QWORD PTR [rsp+0x28]
    60fd:	49 63 fe             	movsxd rdi,r14d
    6100:	48 63 d3             	movsxd rdx,ebx
    6103:	48 01 c7             	add    rdi,rax
    6106:	e8 e5 cb ff ff       	call   2cf0 <memcpy@plt>
    610b:	41 01 de             	add    r14d,ebx
    610e:	48 8b 5c 24 20       	mov    rbx,QWORD PTR [rsp+0x20]
    6113:	49 63 fe             	movsxd rdi,r14d
    6116:	48 89 de             	mov    rsi,rbx
    6119:	e8 52 58 00 00       	call   b970 <_asn1_ltostr>
    611e:	48 89 ef             	mov    rdi,rbp
    6121:	48 89 de             	mov    rsi,rbx
    6124:	e8 e7 55 00 00       	call   b710 <_asn1_set_name>
    6129:	48 8b 6d 68          	mov    rbp,QWORD PTR [rbp+0x68]
    612d:	31 d2                	xor    edx,edx
    612f:	48 85 ed             	test   rbp,rbp
    6132:	0f 85 45 ff ff ff    	jne    607d <asn1_der_coding+0x14d>
    6138:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    613f:	00 
    6140:	85 d2                	test   edx,edx
    6142:	8b 5c 24 30          	mov    ebx,DWORD PTR [rsp+0x30]
    6146:	0f 84 d3 0e 00 00    	je     701f <asn1_der_coding+0x10ef>
    614c:	41 83 fc 1e          	cmp    r12d,0x1e
    6150:	0f 87 b2 08 00 00    	ja     6a08 <asn1_der_coding+0xad8>
    6156:	0f b6 44 24 10       	movzx  eax,BYTE PTR [rsp+0x10]
    615b:	41 83 e4 1f          	and    r12d,0x1f
    615f:	c7 84 24 98 00 00 00 	mov    DWORD PTR [rsp+0x98],0x1
    6166:	01 00 00 00 
    616a:	ba 01 00 00 00       	mov    edx,0x1
    616f:	83 e0 e0             	and    eax,0xffffffe0
    6172:	41 01 c4             	add    r12d,eax
    6175:	44 88 a4 24 a0 00 00 	mov    BYTE PTR [rsp+0xa0],r12b
    617c:	00 
    617d:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    6181:	41 29 d5             	sub    r13d,edx
    6184:	46 8d 24 32          	lea    r12d,[rdx+r14*1]
    6188:	48 85 c0             	test   rax,rax
    618b:	74 18                	je     61a5 <asn1_der_coding+0x275>
    618d:	45 85 ed             	test   r13d,r13d
    6190:	78 13                	js     61a5 <asn1_der_coding+0x275>
    6192:	49 63 fe             	movsxd rdi,r14d
    6195:	48 8d b4 24 a0 00 00 	lea    rsi,[rsp+0xa0]
    619c:	00 
    619d:	48 01 c7             	add    rdi,rax
    61a0:	e8 4b cb ff ff       	call   2cf0 <memcpy@plt>
    61a5:	41 8b 77 48          	mov    esi,DWORD PTR [r15+0x48]
    61a9:	40 0f b6 c6          	movzx  eax,sil
    61ad:	89 f1                	mov    ecx,esi
    61af:	83 e8 03             	sub    eax,0x3
    61b2:	83 f8 22             	cmp    eax,0x22
    61b5:	0f 87 7d 07 00 00    	ja     6938 <asn1_der_coding+0xa08>
    61bb:	48 8d 15 16 98 00 00 	lea    rdx,[rip+0x9816]        # f9d8 <yytranslate+0x298>
    61c2:	48 63 04 82          	movsxd rax,DWORD PTR [rdx+rax*4]
    61c6:	48 01 c2             	add    rdx,rax
    61c9:	ff e2                	jmp    rdx
    61cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    61d0:	b8 02 00 00 00       	mov    eax,0x2
    61d5:	48 8b b4 24 f8 00 00 	mov    rsi,QWORD PTR [rsp+0xf8]
    61dc:	00 
    61dd:	64 48 33 34 25 28 00 	xor    rsi,QWORD PTR fs:0x28
    61e4:	00 00 
    61e6:	0f 85 99 0c 00 00    	jne    6e85 <asn1_der_coding+0xf55>
    61ec:	48 81 c4 08 01 00 00 	add    rsp,0x108
    61f3:	5b                   	pop    rbx
    61f4:	5d                   	pop    rbp
    61f5:	41 5c                	pop    r12
    61f7:	41 5d                	pop    r13
    61f9:	41 5e                	pop    r14
    61fb:	41 5f                	pop    r15
    61fd:	c3                   	ret    
    61fe:	66 90                	xchg   ax,ax
    6200:	4c 89 cf             	mov    rdi,r9
    6203:	e8 98 56 00 00       	call   b8a0 <_asn1_find_up>
    6208:	8b 48 48             	mov    ecx,DWORD PTR [rax+0x48]
    620b:	48 89 c5             	mov    rbp,rax
    620e:	66 90                	xchg   ax,ax
    6210:	0f b6 f1             	movzx  esi,cl
    6213:	8d 46 fd             	lea    eax,[rsi-0x3]
    6216:	83 f8 22             	cmp    eax,0x22
    6219:	0f 87 89 04 00 00    	ja     66a8 <asn1_der_coding+0x778>
    621f:	48 8d 15 3e 98 00 00 	lea    rdx,[rip+0x983e]        # fa64 <yytranslate+0x324>
    6226:	48 63 04 82          	movsxd rax,DWORD PTR [rdx+rax*4]
    622a:	48 01 c2             	add    rdx,rax
    622d:	ff e2                	jmp    rdx
    622f:	90                   	nop
    6230:	41 89 dc             	mov    r12d,ebx
    6233:	4c 8b 6d 50          	mov    r13,QWORD PTR [rbp+0x50]
    6237:	4d 85 ed             	test   r13,r13
    623a:	0f 84 f9 07 00 00    	je     6a39 <asn1_der_coding+0xb09>
    6240:	49 63 c4             	movsxd rax,r12d
    6243:	48 03 04 24          	add    rax,QWORD PTR [rsp]
    6247:	44 89 bc 24 80 00 00 	mov    DWORD PTR [rsp+0x80],r15d
    624e:	00 
    624f:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    6254:	74 71                	je     62c7 <asn1_der_coding+0x397>
    6256:	45 85 ff             	test   r15d,r15d
    6259:	be 00 00 00 00       	mov    esi,0x0
    625e:	48 8b 54 24 40       	mov    rdx,QWORD PTR [rsp+0x40]
    6263:	48 0f 4f f0          	cmovg  rsi,rax
    6267:	48 63 45 58          	movsxd rax,DWORD PTR [rbp+0x58]
    626b:	48 89 c7             	mov    rdi,rax
    626e:	49 89 c6             	mov    r14,rax
    6271:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
    6276:	e8 b5 cb ff ff       	call   2e30 <asn1_length_der@plt>
    627b:	48 63 84 24 98 00 00 	movsxd rax,DWORD PTR [rsp+0x98]
    6282:	00 
    6283:	41 01 c6             	add    r14d,eax
    6286:	45 39 f7             	cmp    r15d,r14d
    6289:	0f 8d da 08 00 00    	jge    6b69 <asn1_der_coding+0xc39>
    628f:	44 89 b4 24 80 00 00 	mov    DWORD PTR [rsp+0x80],r14d
    6296:	00 
    6297:	45 29 f7             	sub    r15d,r14d
    629a:	45 01 e6             	add    r14d,r12d
    629d:	49 89 e9             	mov    r9,rbp
    62a0:	44 39 f3             	cmp    ebx,r14d
    62a3:	0f 84 07 04 00 00    	je     66b0 <asn1_der_coding+0x780>
    62a9:	41 8d 46 ff          	lea    eax,[r14-0x1]
    62ad:	45 85 ff             	test   r15d,r15d
    62b0:	89 85 90 00 00 00    	mov    DWORD PTR [rbp+0x90],eax
    62b6:	0f 8e 74 04 00 00    	jle    6730 <asn1_der_coding+0x800>
    62bc:	80 7c 24 6b 00       	cmp    BYTE PTR [rsp+0x6b],0x0
    62c1:	0f 84 69 04 00 00    	je     6730 <asn1_der_coding+0x800>
    62c7:	ba 07 00 00 00       	mov    edx,0x7
    62cc:	48 8d bc 24 90 00 00 	lea    rdi,[rsp+0x90]
    62d3:	00 
    62d4:	89 14 24             	mov    DWORD PTR [rsp],edx
    62d7:	e8 54 c9 ff ff       	call   2c30 <asn1_delete_structure@plt>
    62dc:	8b 14 24             	mov    edx,DWORD PTR [rsp]
    62df:	89 d0                	mov    eax,edx
    62e1:	e9 ef fe ff ff       	jmp    61d5 <asn1_der_coding+0x2a5>
    62e6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    62ed:	00 00 00 
    62f0:	41 89 dc             	mov    r12d,ebx
    62f3:	41 83 ef 01          	sub    r15d,0x1
    62f7:	78 10                	js     6309 <asn1_der_coding+0x3d9>
    62f9:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
    62fd:	48 85 c9             	test   rcx,rcx
    6300:	74 07                	je     6309 <asn1_der_coding+0x3d9>
    6302:	49 63 c4             	movsxd rax,r12d
    6305:	c6 04 01 00          	mov    BYTE PTR [rcx+rax*1],0x0
    6309:	45 8d 74 24 01       	lea    r14d,[r12+0x1]
    630e:	49 89 e9             	mov    r9,rbp
    6311:	eb 8d                	jmp    62a0 <asn1_der_coding+0x370>
    6313:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    6318:	41 89 dc             	mov    r12d,ebx
    631b:	48 8b 7d 50          	mov    rdi,QWORD PTR [rbp+0x50]
    631f:	48 85 ff             	test   rdi,rdi
    6322:	0f 84 11 07 00 00    	je     6a39 <asn1_der_coding+0xb09>
    6328:	8b 75 58             	mov    esi,DWORD PTR [rbp+0x58]
    632b:	48 8d 94 24 84 00 00 	lea    rdx,[rsp+0x84]
    6332:	00 
    6333:	e8 68 ca ff ff       	call   2da0 <asn1_get_length_der@plt>
    6338:	85 c0                	test   eax,eax
    633a:	49 89 c6             	mov    r14,rax
    633d:	89 84 24 80 00 00 00 	mov    DWORD PTR [rsp+0x80],eax
    6344:	0f 88 66 07 00 00    	js     6ab0 <asn1_der_coding+0xb80>
    634a:	41 29 c7             	sub    r15d,eax
    634d:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    6351:	48 85 c0             	test   rax,rax
    6354:	0f 84 40 ff ff ff    	je     629a <asn1_der_coding+0x36a>
    635a:	45 85 ff             	test   r15d,r15d
    635d:	0f 88 37 ff ff ff    	js     629a <asn1_der_coding+0x36a>
    6363:	48 63 b4 24 84 00 00 	movsxd rsi,DWORD PTR [rsp+0x84]
    636a:	00 
    636b:	49 63 fc             	movsxd rdi,r12d
    636e:	49 63 d6             	movsxd rdx,r14d
    6371:	48 03 75 50          	add    rsi,QWORD PTR [rbp+0x50]
    6375:	48 01 c7             	add    rdi,rax
    6378:	e8 73 c9 ff ff       	call   2cf0 <memcpy@plt>
    637d:	e9 18 ff ff ff       	jmp    629a <asn1_der_coding+0x36a>
    6382:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    6388:	41 89 dc             	mov    r12d,ebx
    638b:	45 89 fd             	mov    r13d,r15d
    638e:	80 e5 80             	and    ch,0x80
    6391:	48 8b 7d 50          	mov    rdi,QWORD PTR [rbp+0x50]
    6395:	0f 84 95 06 00 00    	je     6a30 <asn1_der_coding+0xb00>
    639b:	48 85 ff             	test   rdi,rdi
    639e:	0f 84 04 03 00 00    	je     66a8 <asn1_der_coding+0x778>
    63a4:	49 63 f4             	movsxd rsi,r12d
    63a7:	48 03 34 24          	add    rsi,QWORD PTR [rsp]
    63ab:	48 8d 94 24 80 00 00 	lea    rdx,[rsp+0x80]
    63b2:	00 
    63b3:	44 89 ac 24 80 00 00 	mov    DWORD PTR [rsp+0x80],r13d
    63ba:	00 
    63bb:	e8 50 f6 ff ff       	call   5a10 <_asn1_object_id_der>
    63c0:	85 c0                	test   eax,eax
    63c2:	74 09                	je     63cd <asn1_der_coding+0x49d>
    63c4:	83 f8 0c             	cmp    eax,0xc
    63c7:	0f 85 b1 0a 00 00    	jne    6e7e <asn1_der_coding+0xf4e>
    63cd:	44 8b b4 24 80 00 00 	mov    r14d,DWORD PTR [rsp+0x80]
    63d4:	00 
    63d5:	45 89 ef             	mov    r15d,r13d
    63d8:	49 89 e9             	mov    r9,rbp
    63db:	45 29 f7             	sub    r15d,r14d
    63de:	45 01 e6             	add    r14d,r12d
    63e1:	e9 ba fe ff ff       	jmp    62a0 <asn1_der_coding+0x370>
    63e6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    63ed:	00 00 00 
    63f0:	41 89 dc             	mov    r12d,ebx
    63f3:	48 8b 7d 50          	mov    rdi,QWORD PTR [rbp+0x50]
    63f7:	48 85 ff             	test   rdi,rdi
    63fa:	0f 84 39 06 00 00    	je     6a39 <asn1_der_coding+0xb09>
    6400:	8b 75 58             	mov    esi,DWORD PTR [rbp+0x58]
    6403:	48 8d 94 24 84 00 00 	lea    rdx,[rsp+0x84]
    640a:	00 
    640b:	e8 90 c9 ff ff       	call   2da0 <asn1_get_length_der@plt>
    6410:	85 c0                	test   eax,eax
    6412:	89 84 24 80 00 00 00 	mov    DWORD PTR [rsp+0x80],eax
    6419:	0f 88 91 06 00 00    	js     6ab0 <asn1_der_coding+0xb80>
    641f:	44 8b b4 24 84 00 00 	mov    r14d,DWORD PTR [rsp+0x84]
    6426:	00 
    6427:	41 01 c6             	add    r14d,eax
    642a:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    642e:	45 29 f7             	sub    r15d,r14d
    6431:	48 85 c0             	test   rax,rax
    6434:	0f 84 60 fe ff ff    	je     629a <asn1_der_coding+0x36a>
    643a:	45 85 ff             	test   r15d,r15d
    643d:	0f 88 57 fe ff ff    	js     629a <asn1_der_coding+0x36a>
    6443:	48 8b 75 50          	mov    rsi,QWORD PTR [rbp+0x50]
    6447:	49 63 fc             	movsxd rdi,r12d
    644a:	49 63 d6             	movsxd rdx,r14d
    644d:	48 01 c7             	add    rdi,rax
    6450:	e8 9b c8 ff ff       	call   2cf0 <memcpy@plt>
    6455:	e9 40 fe ff ff       	jmp    629a <asn1_der_coding+0x36a>
    645a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    6460:	41 89 dc             	mov    r12d,ebx
    6463:	45 89 fd             	mov    r13d,r15d
    6466:	80 e5 80             	and    ch,0x80
    6469:	0f 84 f1 05 00 00    	je     6a60 <asn1_der_coding+0xb30>
    646f:	48 83 7d 50 00       	cmp    QWORD PTR [rbp+0x50],0x0
    6474:	0f 84 2e 02 00 00    	je     66a8 <asn1_der_coding+0x778>
    647a:	48 8b 34 24          	mov    rsi,QWORD PTR [rsp]
    647e:	45 8d 7d fe          	lea    r15d,[r13-0x2]
    6482:	48 85 f6             	test   rsi,rsi
    6485:	0f 84 2f 06 00 00    	je     6aba <asn1_der_coding+0xb8a>
    648b:	45 85 ff             	test   r15d,r15d
    648e:	0f 88 26 06 00 00    	js     6aba <asn1_der_coding+0xb8a>
    6494:	49 63 d4             	movsxd rdx,r12d
    6497:	41 8d 44 24 01       	lea    eax,[r12+0x1]
    649c:	45 8d 74 24 02       	lea    r14d,[r12+0x2]
    64a1:	c6 04 16 01          	mov    BYTE PTR [rsi+rdx*1],0x1
    64a5:	48 8b 55 50          	mov    rdx,QWORD PTR [rbp+0x50]
    64a9:	48 98                	cdqe   
    64ab:	80 3a 46             	cmp    BYTE PTR [rdx],0x46
    64ae:	0f 84 6c 09 00 00    	je     6e20 <asn1_der_coding+0xef0>
    64b4:	48 8b 0c 24          	mov    rcx,QWORD PTR [rsp]
    64b8:	49 89 e9             	mov    r9,rbp
    64bb:	c6 04 01 ff          	mov    BYTE PTR [rcx+rax*1],0xff
    64bf:	e9 dc fd ff ff       	jmp    62a0 <asn1_der_coding+0x370>
    64c4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    64c8:	41 89 dc             	mov    r12d,ebx
    64cb:	45 89 fd             	mov    r13d,r15d
    64ce:	80 e5 80             	and    ch,0x80
    64d1:	48 8b 7d 50          	mov    rdi,QWORD PTR [rbp+0x50]
    64d5:	0f 84 75 05 00 00    	je     6a50 <asn1_der_coding+0xb20>
    64db:	48 85 ff             	test   rdi,rdi
    64de:	0f 84 c4 01 00 00    	je     66a8 <asn1_der_coding+0x778>
    64e4:	8b 75 58             	mov    esi,DWORD PTR [rbp+0x58]
    64e7:	48 8d 94 24 84 00 00 	lea    rdx,[rsp+0x84]
    64ee:	00 
    64ef:	e8 ac c8 ff ff       	call   2da0 <asn1_get_length_der@plt>
    64f4:	85 c0                	test   eax,eax
    64f6:	89 84 24 80 00 00 00 	mov    DWORD PTR [rsp+0x80],eax
    64fd:	0f 88 ad 05 00 00    	js     6ab0 <asn1_der_coding+0xb80>
    6503:	44 8b b4 24 84 00 00 	mov    r14d,DWORD PTR [rsp+0x84]
    650a:	00 
    650b:	45 89 ef             	mov    r15d,r13d
    650e:	41 01 c6             	add    r14d,eax
    6511:	45 29 f7             	sub    r15d,r14d
    6514:	0f 88 80 fd ff ff    	js     629a <asn1_der_coding+0x36a>
    651a:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    651e:	48 85 c0             	test   rax,rax
    6521:	0f 85 1c ff ff ff    	jne    6443 <asn1_der_coding+0x513>
    6527:	e9 6e fd ff ff       	jmp    629a <asn1_der_coding+0x36a>
    652c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    6530:	41 89 dc             	mov    r12d,ebx
    6533:	48 63 85 88 00 00 00 	movsxd rax,DWORD PTR [rbp+0x88]
    653a:	45 89 e5             	mov    r13d,r12d
    653d:	c7 85 88 00 00 00 00 	mov    DWORD PTR [rbp+0x88],0x0
    6544:	00 00 00 
    6547:	41 29 c5             	sub    r13d,eax
    654a:	80 7d 48 0f          	cmp    BYTE PTR [rbp+0x48],0xf
    654e:	89 84 24 80 00 00 00 	mov    DWORD PTR [rsp+0x80],eax
    6555:	0f 84 30 06 00 00    	je     6b8b <asn1_der_coding+0xc5b>
    655b:	48 8d 84 24 d0 00 00 	lea    rax,[rsp+0xd0]
    6562:	00 
    6563:	48 8d 94 24 84 00 00 	lea    rdx,[rsp+0x84]
    656a:	00 
    656b:	49 63 fd             	movsxd rdi,r13d
    656e:	48 89 c6             	mov    rsi,rax
    6571:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    6576:	e8 b5 c8 ff ff       	call   2e30 <asn1_length_der@plt>
    657b:	44 8b b4 24 84 00 00 	mov    r14d,DWORD PTR [rsp+0x84]
    6582:	00 
    6583:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
    6587:	45 29 f7             	sub    r15d,r14d
    658a:	48 85 ff             	test   rdi,rdi
    658d:	0f 84 07 fd ff ff    	je     629a <asn1_der_coding+0x36a>
    6593:	45 85 ff             	test   r15d,r15d
    6596:	0f 88 fe fc ff ff    	js     629a <asn1_der_coding+0x36a>
    659c:	48 63 84 24 80 00 00 	movsxd rax,DWORD PTR [rsp+0x80]
    65a3:	00 
    65a4:	49 63 ce             	movsxd rcx,r14d
    65a7:	45 89 e3             	mov    r11d,r12d
    65aa:	48 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],rcx
    65af:	4c 8d 2c 07          	lea    r13,[rdi+rax*1]
    65b3:	41 29 c3             	sub    r11d,eax
    65b6:	48 01 c8             	add    rax,rcx
    65b9:	48 8d 3c 07          	lea    rdi,[rdi+rax*1]
    65bd:	49 63 d3             	movsxd rdx,r11d
    65c0:	4c 89 ee             	mov    rsi,r13
    65c3:	e8 a8 c7 ff ff       	call   2d70 <memmove@plt>
    65c8:	48 8b 4c 24 10       	mov    rcx,QWORD PTR [rsp+0x10]
    65cd:	48 8b 74 24 08       	mov    rsi,QWORD PTR [rsp+0x8]
    65d2:	4c 89 ef             	mov    rdi,r13
    65d5:	48 89 ca             	mov    rdx,rcx
    65d8:	e8 13 c7 ff ff       	call   2cf0 <memcpy@plt>
    65dd:	e9 b8 fc ff ff       	jmp    629a <asn1_der_coding+0x36a>
    65e2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    65e8:	48 63 85 88 00 00 00 	movsxd rax,DWORD PTR [rbp+0x88]
    65ef:	83 fe 0e             	cmp    esi,0xe
    65f2:	c7 85 88 00 00 00 00 	mov    DWORD PTR [rbp+0x88],0x0
    65f9:	00 00 00 
    65fc:	89 84 24 80 00 00 00 	mov    DWORD PTR [rsp+0x80],eax
    6603:	0f 85 23 08 00 00    	jne    6e2c <asn1_der_coding+0xefc>
    6609:	45 85 ff             	test   r15d,r15d
    660c:	0f 88 1a 08 00 00    	js     6e2c <asn1_der_coding+0xefc>
    6612:	4c 8b 75 60          	mov    r14,QWORD PTR [rbp+0x60]
    6616:	89 d9                	mov    ecx,ebx
    6618:	29 c1                	sub    ecx,eax
    661a:	89 ce                	mov    esi,ecx
    661c:	4d 85 f6             	test   r14,r14
    661f:	0f 85 e8 06 00 00    	jne    6d0d <asn1_der_coding+0xddd>
    6625:	4c 8d ac 24 d0 00 00 	lea    r13,[rsp+0xd0]
    662c:	00 
    662d:	48 8d 94 24 84 00 00 	lea    rdx,[rsp+0x84]
    6634:	00 
    6635:	48 63 fe             	movsxd rdi,esi
    6638:	4c 89 ee             	mov    rsi,r13
    663b:	e8 f0 c7 ff ff       	call   2e30 <asn1_length_der@plt>
    6640:	44 8b b4 24 84 00 00 	mov    r14d,DWORD PTR [rsp+0x84]
    6647:	00 
    6648:	48 8b 34 24          	mov    rsi,QWORD PTR [rsp]
    664c:	45 29 f7             	sub    r15d,r14d
    664f:	48 85 f6             	test   rsi,rsi
    6652:	74 42                	je     6696 <asn1_der_coding+0x766>
    6654:	45 85 ff             	test   r15d,r15d
    6657:	78 3d                	js     6696 <asn1_der_coding+0x766>
    6659:	48 63 84 24 80 00 00 	movsxd rax,DWORD PTR [rsp+0x80]
    6660:	00 
    6661:	49 63 ce             	movsxd rcx,r14d
    6664:	89 df                	mov    edi,ebx
    6666:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    666b:	4c 8d 24 06          	lea    r12,[rsi+rax*1]
    666f:	29 c7                	sub    edi,eax
    6671:	48 01 c8             	add    rax,rcx
    6674:	48 63 d7             	movsxd rdx,edi
    6677:	48 8d 3c 06          	lea    rdi,[rsi+rax*1]
    667b:	4c 89 e6             	mov    rsi,r12
    667e:	e8 ed c6 ff ff       	call   2d70 <memmove@plt>
    6683:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    6688:	4c 89 ee             	mov    rsi,r13
    668b:	4c 89 e7             	mov    rdi,r12
    668e:	48 89 ca             	mov    rdx,rcx
    6691:	e8 5a c6 ff ff       	call   2cf0 <memcpy@plt>
    6696:	41 01 de             	add    r14d,ebx
    6699:	49 89 e9             	mov    r9,rbp
    669c:	e9 ff fb ff ff       	jmp    62a0 <asn1_der_coding+0x370>
    66a1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    66a8:	49 89 e9             	mov    r9,rbp
    66ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    66b0:	48 39 ac 24 90 00 00 	cmp    QWORD PTR [rsp+0x90],rbp
    66b7:	00 
    66b8:	0f 84 79 07 00 00    	je     6e37 <asn1_der_coding+0xf07>
    66be:	48 8b 6d 68          	mov    rbp,QWORD PTR [rbp+0x68]
    66c2:	b8 02 00 00 00       	mov    eax,0x2
    66c7:	48 85 ed             	test   rbp,rbp
    66ca:	0f 84 30 fb ff ff    	je     6200 <asn1_der_coding+0x2d0>
    66d0:	8b 4d 48             	mov    ecx,DWORD PTR [rbp+0x48]
    66d3:	e9 38 f9 ff ff       	jmp    6010 <asn1_der_coding+0xe0>
    66d8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    66df:	00 
    66e0:	85 d2                	test   edx,edx
    66e2:	0f 85 88 f9 ff ff    	jne    6070 <asn1_der_coding+0x140>
    66e8:	41 0f b6 4f 48       	movzx  ecx,BYTE PTR [r15+0x48]
    66ed:	83 f9 0f             	cmp    ecx,0xf
    66f0:	77 13                	ja     6705 <asn1_der_coding+0x7d5>
    66f2:	ba 20 c8 00 00       	mov    edx,0xc820
    66f7:	89 d8                	mov    eax,ebx
    66f9:	48 d3 ea             	shr    rdx,cl
    66fc:	83 c8 20             	or     eax,0x20
    66ff:	83 e2 01             	and    edx,0x1
    6702:	0f 45 d8             	cmovne ebx,eax
    6705:	48 8b 7d 50          	mov    rdi,QWORD PTR [rbp+0x50]
    6709:	ba 0a 00 00 00       	mov    edx,0xa
    670e:	31 f6                	xor    esi,esi
    6710:	e8 9b c6 ff ff       	call   2db0 <strtoul@plt>
    6715:	88 5c 24 10          	mov    BYTE PTR [rsp+0x10],bl
    6719:	49 89 c4             	mov    r12,rax
    671c:	ba 01 00 00 00       	mov    edx,0x1
    6721:	e9 4a f9 ff ff       	jmp    6070 <asn1_der_coding+0x140>
    6726:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    672d:	00 00 00 
    6730:	f6 45 49 20          	test   BYTE PTR [rbp+0x49],0x20
    6734:	0f 84 d1 00 00 00    	je     680b <asn1_der_coding+0x8db>
    673a:	48 8b 55 60          	mov    rdx,QWORD PTR [rbp+0x60]
    673e:	48 85 d2             	test   rdx,rdx
    6741:	0f 84 69 03 00 00    	je     6ab0 <asn1_der_coding+0xb80>
    6747:	49 89 d5             	mov    r13,rdx
    674a:	eb 07                	jmp    6753 <asn1_der_coding+0x823>
    674c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    6750:	49 89 c5             	mov    r13,rax
    6753:	49 8b 45 68          	mov    rax,QWORD PTR [r13+0x68]
    6757:	48 85 c0             	test   rax,rax
    675a:	75 f4                	jne    6750 <asn1_der_coding+0x820>
    675c:	4c 8d a4 24 b0 00 00 	lea    r12,[rsp+0xb0]
    6763:	00 
    6764:	48 89 d0             	mov    rax,rdx
    6767:	4c 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],r9
    676c:	4c 89 64 24 08       	mov    QWORD PTR [rsp+0x8],r12
    6771:	45 89 f4             	mov    r12d,r14d
    6774:	45 89 fe             	mov    r14d,r15d
    6777:	eb 14                	jmp    678d <asn1_der_coding+0x85d>
    6779:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    6780:	4d 8b 6d 70          	mov    r13,QWORD PTR [r13+0x70]
    6784:	4d 85 ed             	test   r13,r13
    6787:	74 77                	je     6800 <asn1_der_coding+0x8d0>
    6789:	48 8b 45 60          	mov    rax,QWORD PTR [rbp+0x60]
    678d:	4c 39 68 70          	cmp    QWORD PTR [rax+0x70],r13
    6791:	74 6d                	je     6800 <asn1_der_coding+0x8d0>
    6793:	41 8b 45 48          	mov    eax,DWORD PTR [r13+0x48]
    6797:	3c 08                	cmp    al,0x8
    6799:	75 e5                	jne    6780 <asn1_der_coding+0x850>
    679b:	f6 c4 08             	test   ah,0x8
    679e:	74 e0                	je     6780 <asn1_der_coding+0x850>
    67a0:	ba 0a 00 00 00       	mov    edx,0xa
    67a5:	31 f6                	xor    esi,esi
    67a7:	4c 89 ef             	mov    rdi,r13
    67aa:	e8 31 c5 ff ff       	call   2ce0 <strtol@plt>
    67af:	44 89 e3             	mov    ebx,r12d
    67b2:	31 f6                	xor    esi,esi
    67b4:	49 89 c7             	mov    r15,rax
    67b7:	4c 89 ef             	mov    rdi,r13
    67ba:	44 29 fb             	sub    ebx,r15d
    67bd:	e8 4e 4f 00 00       	call   b710 <_asn1_set_name>
    67c2:	48 8b 54 24 40       	mov    rdx,QWORD PTR [rsp+0x40]
    67c7:	48 8b 74 24 08       	mov    rsi,QWORD PTR [rsp+0x8]
    67cc:	48 63 db             	movsxd rbx,ebx
    67cf:	48 89 df             	mov    rdi,rbx
    67d2:	e8 59 c6 ff ff       	call   2e30 <asn1_length_der@plt>
    67d7:	8b 8c 24 98 00 00 00 	mov    ecx,DWORD PTR [rsp+0x98]
    67de:	44 39 f1             	cmp    ecx,r14d
    67e1:	0f 8e 31 03 00 00    	jle    6b18 <asn1_der_coding+0xbe8>
    67e7:	4d 8b 6d 70          	mov    r13,QWORD PTR [r13+0x70]
    67eb:	41 29 ce             	sub    r14d,ecx
    67ee:	41 01 cc             	add    r12d,ecx
    67f1:	4d 85 ed             	test   r13,r13
    67f4:	75 93                	jne    6789 <asn1_der_coding+0x859>
    67f6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    67fd:	00 00 00 
    6800:	4c 8b 4c 24 10       	mov    r9,QWORD PTR [rsp+0x10]
    6805:	45 89 f7             	mov    r15d,r14d
    6808:	45 89 e6             	mov    r14d,r12d
    680b:	44 89 f3             	mov    ebx,r14d
    680e:	e9 9d fe ff ff       	jmp    66b0 <asn1_der_coding+0x780>
    6813:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    6818:	44 8b 6c 24 08       	mov    r13d,DWORD PTR [rsp+0x8]
    681d:	41 89 de             	mov    r14d,ebx
    6820:	0f b6 c9             	movzx  ecx,cl
    6823:	83 f9 25             	cmp    ecx,0x25
    6826:	0f 86 7c 01 00 00    	jbe    69a8 <asn1_der_coding+0xa78>
    682c:	ba 06 00 00 00       	mov    edx,0x6
    6831:	e9 96 fa ff ff       	jmp    62cc <asn1_der_coding+0x39c>
    6836:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    683d:	00 00 00 
    6840:	49 8b 7f 60          	mov    rdi,QWORD PTR [r15+0x60]
    6844:	45 89 a7 88 00 00 00 	mov    DWORD PTR [r15+0x88],r12d
    684b:	8b 47 48             	mov    eax,DWORD PTR [rdi+0x48]
    684e:	25 fd 00 00 00       	and    eax,0xfd
    6853:	83 f8 08             	cmp    eax,0x8
    6856:	75 19                	jne    6871 <asn1_der_coding+0x941>
    6858:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    685f:	00 
    6860:	48 8b 7f 68          	mov    rdi,QWORD PTR [rdi+0x68]
    6864:	8b 47 48             	mov    eax,DWORD PTR [rdi+0x48]
    6867:	25 fd 00 00 00       	and    eax,0xfd
    686c:	83 f8 08             	cmp    eax,0x8
    686f:	74 ef                	je     6860 <asn1_der_coding+0x930>
    6871:	4c 8b 7f 68          	mov    r15,QWORD PTR [rdi+0x68]
    6875:	4d 85 ff             	test   r15,r15
    6878:	0f 84 f0 05 00 00    	je     6e6e <asn1_der_coding+0xf3e>
    687e:	41 8b 4f 48          	mov    ecx,DWORD PTR [r15+0x48]
    6882:	44 89 6c 24 08       	mov    DWORD PTR [rsp+0x8],r13d
    6887:	44 89 e3             	mov    ebx,r12d
    688a:	e9 92 f7 ff ff       	jmp    6021 <asn1_der_coding+0xf1>
    688f:	90                   	nop
    6890:	49 8b 47 60          	mov    rax,QWORD PTR [r15+0x60]
    6894:	45 89 a7 88 00 00 00 	mov    DWORD PTR [r15+0x88],r12d
    689b:	48 85 c0             	test   rax,rax
    689e:	74 15                	je     68b5 <asn1_der_coding+0x985>
    68a0:	8b 48 48             	mov    ecx,DWORD PTR [rax+0x48]
    68a3:	80 f9 08             	cmp    cl,0x8
    68a6:	0f 85 5c 02 00 00    	jne    6b08 <asn1_der_coding+0xbd8>
    68ac:	48 8b 40 68          	mov    rax,QWORD PTR [rax+0x68]
    68b0:	48 85 c0             	test   rax,rax
    68b3:	75 eb                	jne    68a0 <asn1_der_coding+0x970>
    68b5:	4c 89 fd             	mov    rbp,r15
    68b8:	89 f1                	mov    ecx,esi
    68ba:	45 89 ef             	mov    r15d,r13d
    68bd:	44 89 e3             	mov    ebx,r12d
    68c0:	e9 4b f9 ff ff       	jmp    6210 <asn1_der_coding+0x2e0>
    68c5:	0f 1f 00             	nop    DWORD PTR [rax]
    68c8:	4c 89 fd             	mov    rbp,r15
    68cb:	45 89 ef             	mov    r15d,r13d
    68ce:	e9 20 fb ff ff       	jmp    63f3 <asn1_der_coding+0x4c3>
    68d3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    68d8:	4c 89 fd             	mov    rbp,r15
    68db:	45 89 ef             	mov    r15d,r13d
    68de:	e9 50 f9 ff ff       	jmp    6233 <asn1_der_coding+0x303>
    68e3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    68e8:	4c 89 fd             	mov    rbp,r15
    68eb:	45 89 ef             	mov    r15d,r13d
    68ee:	e9 00 fa ff ff       	jmp    62f3 <asn1_der_coding+0x3c3>
    68f3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    68f8:	4c 89 fd             	mov    rbp,r15
    68fb:	45 89 ef             	mov    r15d,r13d
    68fe:	e9 18 fa ff ff       	jmp    631b <asn1_der_coding+0x3eb>
    6903:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    6908:	4c 89 fd             	mov    rbp,r15
    690b:	44 8b 7c 24 08       	mov    r15d,DWORD PTR [rsp+0x8]
    6910:	e9 79 fa ff ff       	jmp    638e <asn1_der_coding+0x45e>
    6915:	0f 1f 00             	nop    DWORD PTR [rax]
    6918:	4c 89 fd             	mov    rbp,r15
    691b:	44 8b 7c 24 08       	mov    r15d,DWORD PTR [rsp+0x8]
    6920:	e9 41 fb ff ff       	jmp    6466 <asn1_der_coding+0x536>
    6925:	0f 1f 00             	nop    DWORD PTR [rax]
    6928:	4c 89 fd             	mov    rbp,r15
    692b:	44 8b 7c 24 08       	mov    r15d,DWORD PTR [rsp+0x8]
    6930:	e9 99 fb ff ff       	jmp    64ce <asn1_der_coding+0x59e>
    6935:	0f 1f 00             	nop    DWORD PTR [rax]
    6938:	49 8b 47 60          	mov    rax,QWORD PTR [r15+0x60]
    693c:	4c 89 fd             	mov    rbp,r15
    693f:	48 85 c0             	test   rax,rax
    6942:	0f 84 88 01 00 00    	je     6ad0 <asn1_der_coding+0xba0>
    6948:	48 89 c5             	mov    rbp,rax
    694b:	44 89 e3             	mov    ebx,r12d
    694e:	45 89 ef             	mov    r15d,r13d
    6951:	b8 03 00 00 00       	mov    eax,0x3
    6956:	e9 75 fd ff ff       	jmp    66d0 <asn1_der_coding+0x7a0>
    695b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    6960:	48 8b 7d 50          	mov    rdi,QWORD PTR [rbp+0x50]
    6964:	31 f6                	xor    esi,esi
    6966:	ba 0a 00 00 00       	mov    edx,0xa
    696b:	e8 40 c4 ff ff       	call   2db0 <strtoul@plt>
    6970:	83 f8 1e             	cmp    eax,0x1e
    6973:	0f 87 67 01 00 00    	ja     6ae0 <asn1_der_coding+0xbb0>
    6979:	83 e3 e0             	and    ebx,0xffffffe0
    697c:	83 e0 1f             	and    eax,0x1f
    697f:	c7 84 24 98 00 00 00 	mov    DWORD PTR [rsp+0x98],0x1
    6986:	01 00 00 00 
    698a:	41 89 d9             	mov    r9d,ebx
    698d:	bb 01 00 00 00       	mov    ebx,0x1
    6992:	41 83 c9 20          	or     r9d,0x20
    6996:	44 01 c8             	add    eax,r9d
    6999:	88 84 24 a0 00 00 00 	mov    BYTE PTR [rsp+0xa0],al
    69a0:	e9 45 f7 ff ff       	jmp    60ea <asn1_der_coding+0x1ba>
    69a5:	0f 1f 00             	nop    DWORD PTR [rax]
    69a8:	b8 01 00 00 00       	mov    eax,0x1
    69ad:	48 ba f8 d8 30 f8 3f 	movabs rdx,0x3ff830d8f8
    69b4:	00 00 00 
    69b7:	48 d3 e0             	shl    rax,cl
    69ba:	48 85 d0             	test   rax,rdx
    69bd:	0f 85 ad 00 00 00    	jne    6a70 <asn1_der_coding+0xb40>
    69c3:	a9 00 21 04 00       	test   eax,0x42100
    69c8:	0f 84 5e fe ff ff    	je     682c <asn1_der_coding+0x8fc>
    69ce:	c7 84 24 98 00 00 00 	mov    DWORD PTR [rsp+0x98],0x0
    69d5:	00 00 00 00 
    69d9:	31 d2                	xor    edx,edx
    69db:	e9 9d f7 ff ff       	jmp    617d <asn1_der_coding+0x24d>
    69e0:	0f b6 7c 24 10       	movzx  edi,BYTE PTR [rsp+0x10]
    69e5:	48 8b 4c 24 40       	mov    rcx,QWORD PTR [rsp+0x40]
    69ea:	44 89 e6             	mov    esi,r12d
    69ed:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
    69f2:	e8 a9 ee ff ff       	call   58a0 <_asn1_tag_der.part.0>
    69f7:	8b 9c 24 98 00 00 00 	mov    ebx,DWORD PTR [rsp+0x98]
    69fe:	e9 e7 f6 ff ff       	jmp    60ea <asn1_der_coding+0x1ba>
    6a03:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    6a08:	0f b6 7c 24 10       	movzx  edi,BYTE PTR [rsp+0x10]
    6a0d:	48 8b 4c 24 40       	mov    rcx,QWORD PTR [rsp+0x40]
    6a12:	48 8d 94 24 a0 00 00 	lea    rdx,[rsp+0xa0]
    6a19:	00 
    6a1a:	44 89 e6             	mov    esi,r12d
    6a1d:	e8 7e ee ff ff       	call   58a0 <_asn1_tag_der.part.0>
    6a22:	48 63 94 24 98 00 00 	movsxd rdx,DWORD PTR [rsp+0x98]
    6a29:	00 
    6a2a:	e9 4e f7 ff ff       	jmp    617d <asn1_der_coding+0x24d>
    6a2f:	90                   	nop
    6a30:	48 85 ff             	test   rdi,rdi
    6a33:	0f 85 6b f9 ff ff    	jne    63a4 <asn1_der_coding+0x474>
    6a39:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
    6a3e:	48 89 ef             	mov    rdi,rbp
    6a41:	e8 ea ed ff ff       	call   5830 <_asn1_error_description_value_not_found>
    6a46:	ba 05 00 00 00       	mov    edx,0x5
    6a4b:	e9 7c f8 ff ff       	jmp    62cc <asn1_der_coding+0x39c>
    6a50:	48 85 ff             	test   rdi,rdi
    6a53:	0f 85 8b fa ff ff    	jne    64e4 <asn1_der_coding+0x5b4>
    6a59:	eb de                	jmp    6a39 <asn1_der_coding+0xb09>
    6a5b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    6a60:	48 83 7d 50 00       	cmp    QWORD PTR [rbp+0x50],0x0
    6a65:	0f 85 0f fa ff ff    	jne    647a <asn1_der_coding+0x54a>
    6a6b:	eb cc                	jmp    6a39 <asn1_der_coding+0xb09>
    6a6d:	0f 1f 00             	nop    DWORD PTR [rax]
    6a70:	48 8d 05 a9 bf 20 00 	lea    rax,[rip+0x20bfa9]        # 212a20 <_asn1_tags>
    6a77:	48 c1 e1 04          	shl    rcx,0x4
    6a7b:	48 01 c8             	add    rax,rcx
    6a7e:	8b 30                	mov    esi,DWORD PTR [rax]
    6a80:	8b 40 04             	mov    eax,DWORD PTR [rax+0x4]
    6a83:	83 fe 1e             	cmp    esi,0x1e
    6a86:	0f 87 c0 03 00 00    	ja     6e4c <asn1_der_coding+0xf1c>
    6a8c:	83 e0 e0             	and    eax,0xffffffe0
    6a8f:	c7 84 24 98 00 00 00 	mov    DWORD PTR [rsp+0x98],0x1
    6a96:	01 00 00 00 
    6a9a:	ba 01 00 00 00       	mov    edx,0x1
    6a9f:	01 c6                	add    esi,eax
    6aa1:	40 88 b4 24 a0 00 00 	mov    BYTE PTR [rsp+0xa0],sil
    6aa8:	00 
    6aa9:	e9 cf f6 ff ff       	jmp    617d <asn1_der_coding+0x24d>
    6aae:	66 90                	xchg   ax,ax
    6ab0:	ba 04 00 00 00       	mov    edx,0x4
    6ab5:	e9 12 f8 ff ff       	jmp    62cc <asn1_der_coding+0x39c>
    6aba:	45 8d 74 24 02       	lea    r14d,[r12+0x2]
    6abf:	49 89 e9             	mov    r9,rbp
    6ac2:	e9 d9 f7 ff ff       	jmp    62a0 <asn1_der_coding+0x370>
    6ac7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    6ace:	00 00 
    6ad0:	4d 89 f9             	mov    r9,r15
    6ad3:	44 89 e3             	mov    ebx,r12d
    6ad6:	45 89 ef             	mov    r15d,r13d
    6ad9:	e9 e0 fb ff ff       	jmp    66be <asn1_der_coding+0x78e>
    6ade:	66 90                	xchg   ax,ax
    6ae0:	48 8b 4c 24 40       	mov    rcx,QWORD PTR [rsp+0x40]
    6ae5:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
    6aea:	83 cb 20             	or     ebx,0x20
    6aed:	0f b6 fb             	movzx  edi,bl
    6af0:	89 c6                	mov    esi,eax
    6af2:	e8 a9 ed ff ff       	call   58a0 <_asn1_tag_der.part.0>
    6af7:	8b 9c 24 98 00 00 00 	mov    ebx,DWORD PTR [rsp+0x98]
    6afe:	e9 e7 f5 ff ff       	jmp    60ea <asn1_der_coding+0x1ba>
    6b03:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    6b08:	44 89 6c 24 08       	mov    DWORD PTR [rsp+0x8],r13d
    6b0d:	44 89 e3             	mov    ebx,r12d
    6b10:	49 89 c7             	mov    r15,rax
    6b13:	e9 09 f5 ff ff       	jmp    6021 <asn1_der_coding+0xf1>
    6b18:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    6b1c:	4c 63 d9             	movsxd r11,ecx
    6b1f:	4d 63 ff             	movsxd r15,r15d
    6b22:	48 89 da             	mov    rdx,rbx
    6b25:	89 4c 24 30          	mov    DWORD PTR [rsp+0x30],ecx
    6b29:	4c 89 5c 24 28       	mov    QWORD PTR [rsp+0x28],r11
    6b2e:	4e 8d 14 38          	lea    r10,[rax+r15*1]
    6b32:	4d 01 df             	add    r15,r11
    6b35:	4a 8d 3c 38          	lea    rdi,[rax+r15*1]
    6b39:	4c 89 d6             	mov    rsi,r10
    6b3c:	4c 89 54 24 20       	mov    QWORD PTR [rsp+0x20],r10
    6b41:	e8 2a c2 ff ff       	call   2d70 <memmove@plt>
    6b46:	4c 8b 5c 24 28       	mov    r11,QWORD PTR [rsp+0x28]
    6b4b:	4c 8b 54 24 20       	mov    r10,QWORD PTR [rsp+0x20]
    6b50:	48 8b 74 24 08       	mov    rsi,QWORD PTR [rsp+0x8]
    6b55:	4c 89 da             	mov    rdx,r11
    6b58:	4c 89 d7             	mov    rdi,r10
    6b5b:	e8 90 c1 ff ff       	call   2cf0 <memcpy@plt>
    6b60:	8b 4c 24 30          	mov    ecx,DWORD PTR [rsp+0x30]
    6b64:	e9 7e fc ff ff       	jmp    67e7 <asn1_der_coding+0x8b7>
    6b69:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    6b6e:	48 8b 54 24 10       	mov    rdx,QWORD PTR [rsp+0x10]
    6b73:	4c 89 ee             	mov    rsi,r13
    6b76:	48 01 c7             	add    rdi,rax
    6b79:	e8 72 c1 ff ff       	call   2cf0 <memcpy@plt>
    6b7e:	44 89 b4 24 80 00 00 	mov    DWORD PTR [rsp+0x80],r14d
    6b85:	00 
    6b86:	e9 0c f7 ff ff       	jmp    6297 <asn1_der_coding+0x367>
    6b8b:	45 85 ff             	test   r15d,r15d
    6b8e:	0f 88 c7 f9 ff ff    	js     655b <asn1_der_coding+0x62b>
    6b94:	45 85 ed             	test   r13d,r13d
    6b97:	0f 8e be f9 ff ff    	jle    655b <asn1_der_coding+0x62b>
    6b9d:	48 03 04 24          	add    rax,QWORD PTR [rsp]
    6ba1:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
    6ba6:	0f 84 1b f7 ff ff    	je     62c7 <asn1_der_coding+0x397>
    6bac:	48 8b 45 60          	mov    rax,QWORD PTR [rbp+0x60]
    6bb0:	48 85 c0             	test   rax,rax
    6bb3:	75 18                	jne    6bcd <asn1_der_coding+0xc9d>
    6bb5:	e9 0d f7 ff ff       	jmp    62c7 <asn1_der_coding+0x397>
    6bba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    6bc0:	48 8b 40 68          	mov    rax,QWORD PTR [rax+0x68]
    6bc4:	48 85 c0             	test   rax,rax
    6bc7:	0f 84 fa f6 ff ff    	je     62c7 <asn1_der_coding+0x397>
    6bcd:	8b 50 48             	mov    edx,DWORD PTR [rax+0x48]
    6bd0:	81 e2 fd 00 00 00    	and    edx,0xfd
    6bd6:	83 fa 08             	cmp    edx,0x8
    6bd9:	74 e5                	je     6bc0 <asn1_der_coding+0xc90>
    6bdb:	4c 8b 50 68          	mov    r10,QWORD PTR [rax+0x68]
    6bdf:	4d 85 d2             	test   r10,r10
    6be2:	0f 84 73 f9 ff ff    	je     655b <asn1_der_coding+0x62b>
    6be8:	49 83 7a 68 00       	cmp    QWORD PTR [r10+0x68],0x0
    6bed:	0f 84 68 f9 ff ff    	je     655b <asn1_der_coding+0x62b>
    6bf3:	45 31 f6             	xor    r14d,r14d
    6bf6:	48 89 6c 24 30       	mov    QWORD PTR [rsp+0x30],rbp
    6bfb:	45 31 c0             	xor    r8d,r8d
    6bfe:	44 89 f0             	mov    eax,r14d
    6c01:	31 d2                	xor    edx,edx
    6c03:	41 89 de             	mov    r14d,ebx
    6c06:	44 89 64 24 60       	mov    DWORD PTR [rsp+0x60],r12d
    6c0b:	4c 89 d5             	mov    rbp,r10
    6c0e:	89 c3                	mov    ebx,eax
    6c10:	e9 a2 00 00 00       	jmp    6cb7 <asn1_der_coding+0xd87>
    6c15:	0f 1f 00             	nop    DWORD PTR [rax]
    6c18:	44 8b 4c 24 6c       	mov    r9d,DWORD PTR [rsp+0x6c]
    6c1d:	48 63 fb             	movsxd rdi,ebx
    6c20:	48 03 7c 24 10       	add    rdi,QWORD PTR [rsp+0x10]
    6c25:	44 89 ee             	mov    esi,r13d
    6c28:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    6c2d:	29 de                	sub    esi,ebx
    6c2f:	49 c1 e1 04          	shl    r9,0x4
    6c33:	85 f6                	test   esi,esi
    6c35:	4e 8d 24 08          	lea    r12,[rax+r9*1]
    6c39:	49 89 3c 24          	mov    QWORD PTR [r12],rdi
    6c3d:	41 c7 44 24 08 00 00 	mov    DWORD PTR [r12+0x8],0x0
    6c44:	00 00 
    6c46:	0f 8e 1d 04 00 00    	jle    7069 <asn1_der_coding+0x1139>
    6c4c:	48 8b 4c 24 40       	mov    rcx,QWORD PTR [rsp+0x40]
    6c51:	48 8b 54 24 48       	mov    rdx,QWORD PTR [rsp+0x48]
    6c56:	45 31 c0             	xor    r8d,r8d
    6c59:	e8 32 bf ff ff       	call   2b90 <asn1_get_tag_der@plt>
    6c5e:	85 c0                	test   eax,eax
    6c60:	0f 85 1d 04 00 00    	jne    7083 <asn1_der_coding+0x1153>
    6c66:	8b 84 24 98 00 00 00 	mov    eax,DWORD PTR [rsp+0x98]
    6c6d:	41 01 44 24 08       	add    DWORD PTR [r12+0x8],eax
    6c72:	44 89 ee             	mov    esi,r13d
    6c75:	48 8b 54 24 40       	mov    rdx,QWORD PTR [rsp+0x40]
    6c7a:	01 c3                	add    ebx,eax
    6c7c:	48 63 fb             	movsxd rdi,ebx
    6c7f:	48 03 7c 24 10       	add    rdi,QWORD PTR [rsp+0x10]
    6c84:	29 de                	sub    esi,ebx
    6c86:	e8 15 c1 ff ff       	call   2da0 <asn1_get_length_der@plt>
    6c8b:	85 c0                	test   eax,eax
    6c8d:	0f 88 d6 03 00 00    	js     7069 <asn1_der_coding+0x1139>
    6c93:	03 84 24 98 00 00 00 	add    eax,DWORD PTR [rsp+0x98]
    6c9a:	48 8b 6d 68          	mov    rbp,QWORD PTR [rbp+0x68]
    6c9e:	41 01 44 24 08       	add    DWORD PTR [r12+0x8],eax
    6ca3:	8b 54 24 20          	mov    edx,DWORD PTR [rsp+0x20]
    6ca7:	4c 8b 44 24 08       	mov    r8,QWORD PTR [rsp+0x8]
    6cac:	01 c3                	add    ebx,eax
    6cae:	48 85 ed             	test   rbp,rbp
    6cb1:	0f 84 9e 03 00 00    	je     7055 <asn1_der_coding+0x1125>
    6cb7:	8d 4a 01             	lea    ecx,[rdx+0x1]
    6cba:	4c 89 c7             	mov    rdi,r8
    6cbd:	4c 89 44 24 08       	mov    QWORD PTR [rsp+0x8],r8
    6cc2:	89 54 24 6c          	mov    DWORD PTR [rsp+0x6c],edx
    6cc6:	89 4c 24 20          	mov    DWORD PTR [rsp+0x20],ecx
    6cca:	48 89 4c 24 28       	mov    QWORD PTR [rsp+0x28],rcx
    6ccf:	48 c1 e1 04          	shl    rcx,0x4
    6cd3:	48 89 ce             	mov    rsi,rcx
    6cd6:	e8 65 c0 ff ff       	call   2d40 <realloc@plt>
    6cdb:	48 85 c0             	test   rax,rax
    6cde:	4c 8b 44 24 08       	mov    r8,QWORD PTR [rsp+0x8]
    6ce3:	0f 85 2f ff ff ff    	jne    6c18 <asn1_der_coding+0xce8>
    6ce9:	4c 89 44 24 08       	mov    QWORD PTR [rsp+0x8],r8
    6cee:	ba 0d 00 00 00       	mov    edx,0xd
    6cf3:	e9 76 03 00 00       	jmp    706e <asn1_der_coding+0x113e>
    6cf8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    6cff:	00 
    6d00:	4d 8b 76 68          	mov    r14,QWORD PTR [r14+0x68]
    6d04:	4d 85 f6             	test   r14,r14
    6d07:	0f 84 18 f9 ff ff    	je     6625 <asn1_der_coding+0x6f5>
    6d0d:	41 8b 56 48          	mov    edx,DWORD PTR [r14+0x48]
    6d11:	81 e2 fd 00 00 00    	and    edx,0xfd
    6d17:	83 fa 08             	cmp    edx,0x8
    6d1a:	74 e4                	je     6d00 <asn1_der_coding+0xdd0>
    6d1c:	49 83 7e 68 00       	cmp    QWORD PTR [r14+0x68],0x0
    6d21:	0f 84 e8 02 00 00    	je     700f <asn1_der_coding+0x10df>
    6d27:	48 03 04 24          	add    rax,QWORD PTR [rsp]
    6d2b:	45 31 ed             	xor    r13d,r13d
    6d2e:	31 d2                	xor    edx,edx
    6d30:	48 89 6c 24 20       	mov    QWORD PTR [rsp+0x20],rbp
    6d35:	89 5c 24 30          	mov    DWORD PTR [rsp+0x30],ebx
    6d39:	44 89 ed             	mov    ebp,r13d
    6d3c:	48 c7 44 24 08 00 00 	mov    QWORD PTR [rsp+0x8],0x0
    6d43:	00 00 
    6d45:	44 89 7c 24 28       	mov    DWORD PTR [rsp+0x28],r15d
    6d4a:	89 f3                	mov    ebx,esi
    6d4c:	49 89 d5             	mov    r13,rdx
    6d4f:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
    6d54:	49 89 c4             	mov    r12,rax
    6d57:	e9 84 00 00 00       	jmp    6de0 <asn1_der_coding+0xeb0>
    6d5c:	49 89 45 10          	mov    QWORD PTR [r13+0x10],rax
    6d60:	4c 8b 44 24 40       	mov    r8,QWORD PTR [rsp+0x40]
    6d65:	48 8b 4c 24 48       	mov    rcx,QWORD PTR [rsp+0x48]
    6d6a:	89 de                	mov    esi,ebx
    6d6c:	48 8b 54 24 50       	mov    rdx,QWORD PTR [rsp+0x50]
    6d71:	48 63 fd             	movsxd rdi,ebp
    6d74:	29 ee                	sub    esi,ebp
    6d76:	4c 01 e7             	add    rdi,r12
    6d79:	e8 12 be ff ff       	call   2b90 <asn1_get_tag_der@plt>
    6d7e:	85 c0                	test   eax,eax
    6d80:	0f 85 6a 02 00 00    	jne    6ff0 <asn1_der_coding+0x10c0>
    6d86:	0f b6 44 24 7f       	movzx  eax,BYTE PTR [rsp+0x7f]
    6d8b:	03 ac 24 8c 00 00 00 	add    ebp,DWORD PTR [rsp+0x8c]
    6d92:	89 de                	mov    esi,ebx
    6d94:	48 8b 54 24 58       	mov    rdx,QWORD PTR [rsp+0x58]
    6d99:	c1 e0 18             	shl    eax,0x18
    6d9c:	48 0b 84 24 98 00 00 	or     rax,QWORD PTR [rsp+0x98]
    6da3:	00 
    6da4:	48 63 fd             	movsxd rdi,ebp
    6da7:	29 ee                	sub    esi,ebp
    6da9:	4c 01 e7             	add    rdi,r12
    6dac:	49 89 47 08          	mov    QWORD PTR [r15+0x8],rax
    6db0:	e8 eb bf ff ff       	call   2da0 <asn1_get_length_der@plt>
    6db5:	85 c0                	test   eax,eax
    6db7:	89 84 24 8c 00 00 00 	mov    DWORD PTR [rsp+0x8c],eax
    6dbe:	0f 88 1b 02 00 00    	js     6fdf <asn1_der_coding+0x10af>
    6dc4:	03 84 24 88 00 00 00 	add    eax,DWORD PTR [rsp+0x88]
    6dcb:	4d 8b 76 68          	mov    r14,QWORD PTR [r14+0x68]
    6dcf:	4d 89 fd             	mov    r13,r15
    6dd2:	01 c5                	add    ebp,eax
    6dd4:	4d 85 f6             	test   r14,r14
    6dd7:	41 89 2f             	mov    DWORD PTR [r15],ebp
    6dda:	0f 84 aa 00 00 00    	je     6e8a <asn1_der_coding+0xf5a>
    6de0:	bf 20 00 00 00       	mov    edi,0x20
    6de5:	e8 26 bf ff ff       	call   2d10 <malloc@plt>
    6dea:	48 85 c0             	test   rax,rax
    6ded:	49 89 c7             	mov    r15,rax
    6df0:	0f 84 32 02 00 00    	je     7028 <asn1_der_coding+0x10f8>
    6df6:	48 83 7c 24 08 00    	cmp    QWORD PTR [rsp+0x8],0x0
    6dfc:	48 c7 40 10 00 00 00 	mov    QWORD PTR [rax+0x10],0x0
    6e03:	00 
    6e04:	4c 89 68 18          	mov    QWORD PTR [rax+0x18],r13
    6e08:	0f 85 4e ff ff ff    	jne    6d5c <asn1_der_coding+0xe2c>
    6e0e:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    6e13:	e9 48 ff ff ff       	jmp    6d60 <asn1_der_coding+0xe30>
    6e18:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    6e1f:	00 
    6e20:	c6 04 06 00          	mov    BYTE PTR [rsi+rax*1],0x0
    6e24:	49 89 e9             	mov    r9,rbp
    6e27:	e9 74 f4 ff ff       	jmp    62a0 <asn1_der_coding+0x370>
    6e2c:	89 d9                	mov    ecx,ebx
    6e2e:	29 c1                	sub    ecx,eax
    6e30:	89 ce                	mov    esi,ecx
    6e32:	e9 ee f7 ff ff       	jmp    6625 <asn1_der_coding+0x6f5>
    6e37:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
    6e3c:	44 89 fa             	mov    edx,r15d
    6e3f:	c1 fa 1f             	sar    edx,0x1f
    6e42:	83 e2 0c             	and    edx,0xc
    6e45:	89 18                	mov    DWORD PTR [rax],ebx
    6e47:	e9 80 f4 ff ff       	jmp    62cc <asn1_der_coding+0x39c>
    6e4c:	48 8b 4c 24 40       	mov    rcx,QWORD PTR [rsp+0x40]
    6e51:	48 8d 94 24 a0 00 00 	lea    rdx,[rsp+0xa0]
    6e58:	00 
    6e59:	0f b6 f8             	movzx  edi,al
    6e5c:	e8 3f ea ff ff       	call   58a0 <_asn1_tag_der.part.0>
    6e61:	48 63 94 24 98 00 00 	movsxd rdx,DWORD PTR [rsp+0x98]
    6e68:	00 
    6e69:	e9 0f f3 ff ff       	jmp    617d <asn1_der_coding+0x24d>
    6e6e:	e8 2d 4a 00 00       	call   b8a0 <_asn1_find_up>
    6e73:	45 89 ef             	mov    r15d,r13d
    6e76:	48 89 c5             	mov    rbp,rax
    6e79:	e9 b5 f6 ff ff       	jmp    6533 <asn1_der_coding+0x603>
    6e7e:	89 c2                	mov    edx,eax
    6e80:	e9 47 f4 ff ff       	jmp    62cc <asn1_der_coding+0x39c>
    6e85:	e8 46 bd ff ff       	call   2bd0 <__stack_chk_fail@plt>
    6e8a:	8b 44 24 30          	mov    eax,DWORD PTR [rsp+0x30]
    6e8e:	44 8b 7c 24 28       	mov    r15d,DWORD PTR [rsp+0x28]
    6e93:	89 44 24 28          	mov    DWORD PTR [rsp+0x28],eax
    6e97:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
    6e9c:	48 8b 58 10          	mov    rbx,QWORD PTR [rax+0x10]
    6ea0:	48 85 db             	test   rbx,rbx
    6ea3:	0f 84 53 01 00 00    	je     6ffc <asn1_der_coding+0x10cc>
    6ea9:	49 89 c6             	mov    r14,rax
    6eac:	45 31 ed             	xor    r13d,r13d
    6eaf:	eb 1b                	jmp    6ecc <asn1_der_coding+0xf9c>
    6eb1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    6eb8:	45 8b 2e             	mov    r13d,DWORD PTR [r14]
    6ebb:	48 8b 5b 10          	mov    rbx,QWORD PTR [rbx+0x10]
    6ebf:	4d 8b 76 10          	mov    r14,QWORD PTR [r14+0x10]
    6ec3:	48 85 db             	test   rbx,rbx
    6ec6:	0f 84 c8 00 00 00    	je     6f94 <asn1_der_coding+0x1064>
    6ecc:	48 8b 43 08          	mov    rax,QWORD PTR [rbx+0x8]
    6ed0:	49 39 46 08          	cmp    QWORD PTR [r14+0x8],rax
    6ed4:	76 e2                	jbe    6eb8 <asn1_der_coding+0xf88>
    6ed6:	41 8b 2e             	mov    ebp,DWORD PTR [r14]
    6ed9:	89 ea                	mov    edx,ebp
    6edb:	44 29 ea             	sub    edx,r13d
    6ede:	48 63 d2             	movsxd rdx,edx
    6ee1:	48 89 d7             	mov    rdi,rdx
    6ee4:	48 89 54 24 30       	mov    QWORD PTR [rsp+0x30],rdx
    6ee9:	e8 22 be ff ff       	call   2d10 <malloc@plt>
    6eee:	48 85 c0             	test   rax,rax
    6ef1:	49 89 c4             	mov    r12,rax
    6ef4:	0f 84 be 00 00 00    	je     6fb8 <asn1_der_coding+0x1088>
    6efa:	48 8b 44 24 10       	mov    rax,QWORD PTR [rsp+0x10]
    6eff:	49 63 cd             	movsxd rcx,r13d
    6f02:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
    6f07:	4c 89 e7             	mov    rdi,r12
    6f0a:	48 89 4c 24 60       	mov    QWORD PTR [rsp+0x60],rcx
    6f0f:	4c 8d 0c 08          	lea    r9,[rax+rcx*1]
    6f13:	4c 89 ce             	mov    rsi,r9
    6f16:	4c 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],r9
    6f1b:	e8 d0 bd ff ff       	call   2cf0 <memcpy@plt>
    6f20:	8b 13                	mov    edx,DWORD PTR [rbx]
    6f22:	4c 8b 4c 24 30       	mov    r9,QWORD PTR [rsp+0x30]
    6f27:	48 63 f5             	movsxd rsi,ebp
    6f2a:	29 ea                	sub    edx,ebp
    6f2c:	48 8b 6c 24 10       	mov    rbp,QWORD PTR [rsp+0x10]
    6f31:	4c 89 cf             	mov    rdi,r9
    6f34:	48 63 d2             	movsxd rdx,edx
    6f37:	48 01 ee             	add    rsi,rbp
    6f3a:	e8 b1 bd ff ff       	call   2cf0 <memcpy@plt>
    6f3f:	49 63 16             	movsxd rdx,DWORD PTR [r14]
    6f42:	48 63 3b             	movsxd rdi,DWORD PTR [rbx]
    6f45:	4c 89 e6             	mov    rsi,r12
    6f48:	48 8b 4c 24 60       	mov    rcx,QWORD PTR [rsp+0x60]
    6f4d:	48 29 d7             	sub    rdi,rdx
    6f50:	48 89 d0             	mov    rax,rdx
    6f53:	48 01 f9             	add    rcx,rdi
    6f56:	44 29 e8             	sub    eax,r13d
    6f59:	48 8d 7c 0d 00       	lea    rdi,[rbp+rcx*1+0x0]
    6f5e:	48 63 d0             	movsxd rdx,eax
    6f61:	e8 8a bd ff ff       	call   2cf0 <memcpy@plt>
    6f66:	4c 89 e7             	mov    rdi,r12
    6f69:	e8 a2 bb ff ff       	call   2b10 <free@plt>
    6f6e:	49 8b 46 08          	mov    rax,QWORD PTR [r14+0x8]
    6f72:	45 2b 2e             	sub    r13d,DWORD PTR [r14]
    6f75:	44 03 2b             	add    r13d,DWORD PTR [rbx]
    6f78:	48 89 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],rax
    6f7f:	00 
    6f80:	48 8b 53 08          	mov    rdx,QWORD PTR [rbx+0x8]
    6f84:	49 89 56 08          	mov    QWORD PTR [r14+0x8],rdx
    6f88:	48 89 43 08          	mov    QWORD PTR [rbx+0x8],rax
    6f8c:	45 89 2e             	mov    DWORD PTR [r14],r13d
    6f8f:	e9 27 ff ff ff       	jmp    6ebb <asn1_der_coding+0xf8b>
    6f94:	4c 3b 74 24 08       	cmp    r14,QWORD PTR [rsp+0x8]
    6f99:	0f 84 a3 00 00 00    	je     7042 <asn1_der_coding+0x1112>
    6f9f:	49 8b 46 18          	mov    rax,QWORD PTR [r14+0x18]
    6fa3:	4c 89 f7             	mov    rdi,r14
    6fa6:	48 c7 40 10 00 00 00 	mov    QWORD PTR [rax+0x10],0x0
    6fad:	00 
    6fae:	e8 5d bb ff ff       	call   2b10 <free@plt>
    6fb3:	e9 df fe ff ff       	jmp    6e97 <asn1_der_coding+0xf67>
    6fb8:	48 8b 5c 24 08       	mov    rbx,QWORD PTR [rsp+0x8]
    6fbd:	ba 0d 00 00 00       	mov    edx,0xd
    6fc2:	89 d5                	mov    ebp,edx
    6fc4:	48 89 df             	mov    rdi,rbx
    6fc7:	48 8b 5f 10          	mov    rbx,QWORD PTR [rdi+0x10]
    6fcb:	e8 40 bb ff ff       	call   2b10 <free@plt>
    6fd0:	48 85 db             	test   rbx,rbx
    6fd3:	48 89 df             	mov    rdi,rbx
    6fd6:	75 ef                	jne    6fc7 <asn1_der_coding+0x1097>
    6fd8:	89 ea                	mov    edx,ebp
    6fda:	e9 ed f2 ff ff       	jmp    62cc <asn1_der_coding+0x39c>
    6fdf:	48 8b 5c 24 08       	mov    rbx,QWORD PTR [rsp+0x8]
    6fe4:	ba 04 00 00 00       	mov    edx,0x4
    6fe9:	89 d5                	mov    ebp,edx
    6feb:	48 89 df             	mov    rdi,rbx
    6fee:	eb d7                	jmp    6fc7 <asn1_der_coding+0x1097>
    6ff0:	48 8b 5c 24 08       	mov    rbx,QWORD PTR [rsp+0x8]
    6ff5:	89 c5                	mov    ebp,eax
    6ff7:	48 89 df             	mov    rdi,rbx
    6ffa:	eb cb                	jmp    6fc7 <asn1_der_coding+0x1097>
    6ffc:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    7001:	48 8b 6c 24 20       	mov    rbp,QWORD PTR [rsp+0x20]
    7006:	8b 5c 24 28          	mov    ebx,DWORD PTR [rsp+0x28]
    700a:	e8 01 bb ff ff       	call   2b10 <free@plt>
    700f:	89 d8                	mov    eax,ebx
    7011:	2b 84 24 80 00 00 00 	sub    eax,DWORD PTR [rsp+0x80]
    7018:	89 c6                	mov    esi,eax
    701a:	e9 06 f6 ff ff       	jmp    6625 <asn1_der_coding+0x6f5>
    701f:	41 8b 4f 48          	mov    ecx,DWORD PTR [r15+0x48]
    7023:	e9 f8 f7 ff ff       	jmp    6820 <asn1_der_coding+0x8f0>
    7028:	48 8b 5c 24 08       	mov    rbx,QWORD PTR [rsp+0x8]
    702d:	ba 0d 00 00 00       	mov    edx,0xd
    7032:	48 85 db             	test   rbx,rbx
    7035:	0f 84 91 f2 ff ff    	je     62cc <asn1_der_coding+0x39c>
    703b:	89 d5                	mov    ebp,edx
    703d:	48 89 df             	mov    rdi,rbx
    7040:	eb 85                	jmp    6fc7 <asn1_der_coding+0x1097>
    7042:	4c 89 f7             	mov    rdi,r14
    7045:	48 8b 6c 24 20       	mov    rbp,QWORD PTR [rsp+0x20]
    704a:	8b 5c 24 28          	mov    ebx,DWORD PTR [rsp+0x28]
    704e:	e8 bd ba ff ff       	call   2b10 <free@plt>
    7053:	eb ba                	jmp    700f <asn1_der_coding+0x10df>
    7055:	89 d8                	mov    eax,ebx
    7057:	48 8b 6c 24 30       	mov    rbp,QWORD PTR [rsp+0x30]
    705c:	44 8b 64 24 60       	mov    r12d,DWORD PTR [rsp+0x60]
    7061:	41 39 c5             	cmp    r13d,eax
    7064:	44 89 f3             	mov    ebx,r14d
    7067:	7d 1e                	jge    7087 <asn1_der_coding+0x1157>
    7069:	ba 04 00 00 00       	mov    edx,0x4
    706e:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    7073:	89 14 24             	mov    DWORD PTR [rsp],edx
    7076:	e8 95 ba ff ff       	call   2b10 <free@plt>
    707b:	8b 14 24             	mov    edx,DWORD PTR [rsp]
    707e:	e9 49 f2 ff ff       	jmp    62cc <asn1_der_coding+0x39c>
    7083:	89 c2                	mov    edx,eax
    7085:	eb e7                	jmp    706e <asn1_der_coding+0x113e>
    7087:	48 8b 74 24 28       	mov    rsi,QWORD PTR [rsp+0x28]
    708c:	48 8d 0d 5d e7 ff ff 	lea    rcx,[rip+0xffffffffffffe75d]        # 57f0 <setof_compar>
    7093:	4c 89 c7             	mov    rdi,r8
    7096:	ba 10 00 00 00       	mov    edx,0x10
    709b:	4c 89 44 24 30       	mov    QWORD PTR [rsp+0x30],r8
    70a0:	e8 cb ba ff ff       	call   2b70 <qsort@plt>
    70a5:	49 63 c5             	movsxd rax,r13d
    70a8:	48 89 c7             	mov    rdi,rax
    70ab:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
    70b0:	e8 5b bc ff ff       	call   2d10 <malloc@plt>
    70b5:	48 85 c0             	test   rax,rax
    70b8:	49 89 c5             	mov    r13,rax
    70bb:	0f 84 87 00 00 00    	je     7148 <asn1_der_coding+0x1218>
    70c1:	4c 8b 44 24 30       	mov    r8,QWORD PTR [rsp+0x30]
    70c6:	45 31 f6             	xor    r14d,r14d
    70c9:	31 c9                	xor    ecx,ecx
    70cb:	89 5c 24 30          	mov    DWORD PTR [rsp+0x30],ebx
    70cf:	49 83 c0 08          	add    r8,0x8
    70d3:	44 39 74 24 20       	cmp    DWORD PTR [rsp+0x20],r14d
    70d8:	74 36                	je     7110 <asn1_der_coding+0x11e0>
    70da:	49 63 10             	movsxd rdx,DWORD PTR [r8]
    70dd:	49 8b 70 f8          	mov    rsi,QWORD PTR [r8-0x8]
    70e1:	48 63 f9             	movsxd rdi,ecx
    70e4:	4c 01 ef             	add    rdi,r13
    70e7:	89 4c 24 6c          	mov    DWORD PTR [rsp+0x6c],ecx
    70eb:	4c 89 44 24 60       	mov    QWORD PTR [rsp+0x60],r8
    70f0:	41 83 c6 01          	add    r14d,0x1
    70f4:	48 89 d3             	mov    rbx,rdx
    70f7:	e8 f4 bb ff ff       	call   2cf0 <memcpy@plt>
    70fc:	8b 4c 24 6c          	mov    ecx,DWORD PTR [rsp+0x6c]
    7100:	4c 8b 44 24 60       	mov    r8,QWORD PTR [rsp+0x60]
    7105:	01 d9                	add    ecx,ebx
    7107:	49 83 c0 10          	add    r8,0x10
    710b:	eb c6                	jmp    70d3 <asn1_der_coding+0x11a3>
    710d:	0f 1f 00             	nop    DWORD PTR [rax]
    7110:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
    7115:	48 8b 7c 24 10       	mov    rdi,QWORD PTR [rsp+0x10]
    711a:	4c 89 ee             	mov    rsi,r13
    711d:	8b 5c 24 30          	mov    ebx,DWORD PTR [rsp+0x30]
    7121:	e8 ca bb ff ff       	call   2cf0 <memcpy@plt>
    7126:	4c 89 ef             	mov    rdi,r13
    7129:	45 89 e5             	mov    r13d,r12d
    712c:	e8 df b9 ff ff       	call   2b10 <free@plt>
    7131:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    7136:	e8 d5 b9 ff ff       	call   2b10 <free@plt>
    713b:	44 2b ac 24 80 00 00 	sub    r13d,DWORD PTR [rsp+0x80]
    7142:	00 
    7143:	e9 13 f4 ff ff       	jmp    655b <asn1_der_coding+0x62b>
    7148:	ba 0c 00 00 00       	mov    edx,0xc
    714d:	e9 1c ff ff ff       	jmp    706e <asn1_der_coding+0x113e>
    7152:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    7159:	00 00 00 
    715c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000007160 <append.part.1>:
    7160:	41 56                	push   r14
    7162:	49 89 d6             	mov    r14,rdx
    7165:	41 55                	push   r13
    7167:	41 54                	push   r12
    7169:	55                   	push   rbp
    716a:	48 89 f5             	mov    rbp,rsi
    716d:	53                   	push   rbx
    716e:	8b 16                	mov    edx,DWORD PTR [rsi]
    7170:	89 cb                	mov    ebx,ecx
    7172:	4c 8b 2f             	mov    r13,QWORD PTR [rdi]
    7175:	89 d6                	mov    esi,edx
    7177:	01 ce                	add    esi,ecx
    7179:	75 15                	jne    7190 <append.part.1+0x30>
    717b:	4d 85 ed             	test   r13,r13
    717e:	b8 0d 00 00 00       	mov    eax,0xd
    7183:	75 43                	jne    71c8 <append.part.1+0x68>
    7185:	5b                   	pop    rbx
    7186:	5d                   	pop    rbp
    7187:	41 5c                	pop    r12
    7189:	41 5d                	pop    r13
    718b:	41 5e                	pop    r14
    718d:	c3                   	ret    
    718e:	66 90                	xchg   ax,ax
    7190:	49 89 fc             	mov    r12,rdi
    7193:	89 f6                	mov    esi,esi
    7195:	4c 89 ef             	mov    rdi,r13
    7198:	e8 a3 bb ff ff       	call   2d40 <realloc@plt>
    719d:	48 85 c0             	test   rax,rax
    71a0:	74 2e                	je     71d0 <append.part.1+0x70>
    71a2:	8b 55 00             	mov    edx,DWORD PTR [rbp+0x0]
    71a5:	49 89 04 24          	mov    QWORD PTR [r12],rax
    71a9:	48 8d 3c 10          	lea    rdi,[rax+rdx*1]
    71ad:	4c 89 f6             	mov    rsi,r14
    71b0:	89 da                	mov    edx,ebx
    71b2:	e8 39 bb ff ff       	call   2cf0 <memcpy@plt>
    71b7:	01 5d 00             	add    DWORD PTR [rbp+0x0],ebx
    71ba:	31 c0                	xor    eax,eax
    71bc:	5b                   	pop    rbx
    71bd:	5d                   	pop    rbp
    71be:	41 5c                	pop    r12
    71c0:	41 5d                	pop    r13
    71c2:	41 5e                	pop    r14
    71c4:	c3                   	ret    
    71c5:	0f 1f 00             	nop    DWORD PTR [rax]
    71c8:	4c 89 e8             	mov    rax,r13
    71cb:	eb dc                	jmp    71a9 <append.part.1+0x49>
    71cd:	0f 1f 00             	nop    DWORD PTR [rax]
    71d0:	4c 89 ef             	mov    rdi,r13
    71d3:	e8 38 b9 ff ff       	call   2b10 <free@plt>
    71d8:	49 c7 04 24 00 00 00 	mov    QWORD PTR [r12],0x0
    71df:	00 
    71e0:	b8 0d 00 00 00       	mov    eax,0xd
    71e5:	eb 9e                	jmp    7185 <append.part.1+0x25>
    71e7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    71ee:	00 00 

00000000000071f0 <asn1_get_length_der>:
    71f0:	85 f6                	test   esi,esi
    71f2:	c7 02 00 00 00 00    	mov    DWORD PTR [rdx],0x0
    71f8:	0f 8e 8a 00 00 00    	jle    7288 <asn1_get_length_der+0x98>
    71fe:	0f b6 07             	movzx  eax,BYTE PTR [rdi]
    7201:	84 c0                	test   al,al
    7203:	78 2b                	js     7230 <asn1_get_length_der+0x40>
    7205:	c7 02 01 00 00 00    	mov    DWORD PTR [rdx],0x1
    720b:	0f b6 07             	movzx  eax,BYTE PTR [rdi]
    720e:	b9 01 00 00 00       	mov    ecx,0x1
    7213:	89 c2                	mov    edx,eax
    7215:	01 d1                	add    ecx,edx
    7217:	89 c0                	mov    eax,eax
    7219:	48 c7 c2 fc ff ff ff 	mov    rdx,0xfffffffffffffffc
    7220:	39 ce                	cmp    esi,ecx
    7222:	48 0f 4c c2          	cmovl  rax,rdx
    7226:	c3                   	ret    
    7227:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    722e:	00 00 
    7230:	83 e0 7f             	and    eax,0x7f
    7233:	84 c0                	test   al,al
    7235:	44 0f b6 c8          	movzx  r9d,al
    7239:	74 75                	je     72b0 <asn1_get_length_der+0xc0>
    723b:	83 fe 01             	cmp    esi,0x1
    723e:	7e 7e                	jle    72be <asn1_get_length_der+0xce>
    7240:	45 85 c9             	test   r9d,r9d
    7243:	74 79                	je     72be <asn1_get_length_der+0xce>
    7245:	0f b6 47 01          	movzx  eax,BYTE PTR [rdi+0x1]
    7249:	b9 01 00 00 00       	mov    ecx,0x1
    724e:	48 83 c7 02          	add    rdi,0x2
    7252:	eb 14                	jmp    7268 <asn1_get_length_der+0x78>
    7254:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    7258:	44 0f b6 07          	movzx  r8d,BYTE PTR [rdi]
    725c:	c1 e0 08             	shl    eax,0x8
    725f:	48 83 c7 01          	add    rdi,0x1
    7263:	44 01 c0             	add    eax,r8d
    7266:	72 13                	jb     727b <asn1_get_length_der+0x8b>
    7268:	83 c1 01             	add    ecx,0x1
    726b:	41 39 c9             	cmp    r9d,ecx
    726e:	7c 20                	jl     7290 <asn1_get_length_der+0xa0>
    7270:	39 ce                	cmp    esi,ecx
    7272:	7e 1c                	jle    7290 <asn1_get_length_der+0xa0>
    7274:	3d ff ff ff 00       	cmp    eax,0xffffff
    7279:	76 dd                	jbe    7258 <asn1_get_length_der+0x68>
    727b:	48 c7 c0 fe ff ff ff 	mov    rax,0xfffffffffffffffe
    7282:	c3                   	ret    
    7283:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    7288:	31 c0                	xor    eax,eax
    728a:	c3                   	ret    
    728b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    7290:	3d fe ff ff 7f       	cmp    eax,0x7ffffffe
    7295:	89 0a                	mov    DWORD PTR [rdx],ecx
    7297:	77 e2                	ja     727b <asn1_get_length_der+0x8b>
    7299:	89 c2                	mov    edx,eax
    729b:	bf ff ff ff 7f       	mov    edi,0x7fffffff
    72a0:	29 cf                	sub    edi,ecx
    72a2:	39 fa                	cmp    edx,edi
    72a4:	7f d5                	jg     727b <asn1_get_length_der+0x8b>
    72a6:	e9 6a ff ff ff       	jmp    7215 <asn1_get_length_der+0x25>
    72ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    72b0:	c7 02 01 00 00 00    	mov    DWORD PTR [rdx],0x1
    72b6:	48 c7 c0 ff ff ff ff 	mov    rax,0xffffffffffffffff
    72bd:	c3                   	ret    
    72be:	c7 02 01 00 00 00    	mov    DWORD PTR [rdx],0x1
    72c4:	b9 01 00 00 00       	mov    ecx,0x1
    72c9:	31 c0                	xor    eax,eax
    72cb:	31 d2                	xor    edx,edx
    72cd:	eb cc                	jmp    729b <asn1_get_length_der+0xab>
    72cf:	90                   	nop

00000000000072d0 <asn1_get_tag_der>:
    72d0:	83 fe 01             	cmp    esi,0x1
    72d3:	41 0f 9e c1          	setle  r9b
    72d7:	48 85 c9             	test   rcx,rcx
    72da:	0f 94 c0             	sete   al
    72dd:	41 08 c1             	or     r9b,al
    72e0:	75 36                	jne    7318 <asn1_get_tag_der+0x48>
    72e2:	48 85 ff             	test   rdi,rdi
    72e5:	74 31                	je     7318 <asn1_get_tag_der+0x48>
    72e7:	0f b6 07             	movzx  eax,BYTE PTR [rdi]
    72ea:	83 e0 e0             	and    eax,0xffffffe0
    72ed:	88 02                	mov    BYTE PTR [rdx],al
    72ef:	0f b6 07             	movzx  eax,BYTE PTR [rdi]
    72f2:	83 e0 1f             	and    eax,0x1f
    72f5:	3c 1f                	cmp    al,0x1f
    72f7:	74 27                	je     7320 <asn1_get_tag_der+0x50>
    72f9:	c7 01 01 00 00 00    	mov    DWORD PTR [rcx],0x1
    72ff:	0f b6 07             	movzx  eax,BYTE PTR [rdi]
    7302:	83 e0 1f             	and    eax,0x1f
    7305:	4d 85 c0             	test   r8,r8
    7308:	74 76                	je     7380 <asn1_get_tag_der+0xb0>
    730a:	89 c0                	mov    eax,eax
    730c:	49 89 00             	mov    QWORD PTR [r8],rax
    730f:	31 c0                	xor    eax,eax
    7311:	c3                   	ret    
    7312:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    7318:	b8 04 00 00 00       	mov    eax,0x4
    731d:	c3                   	ret    
    731e:	66 90                	xchg   ax,ax
    7320:	4c 8d 4f 01          	lea    r9,[rdi+0x1]
    7324:	41 ba 01 00 00 00    	mov    r10d,0x1
    732a:	31 c0                	xor    eax,eax
    732c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    7330:	41 0f b6 11          	movzx  edx,BYTE PTR [r9]
    7334:	84 d2                	test   dl,dl
    7336:	79 1e                	jns    7356 <asn1_get_tag_der+0x86>
    7338:	3d ff ff ff 01       	cmp    eax,0x1ffffff
    733d:	77 d9                	ja     7318 <asn1_get_tag_der+0x48>
    733f:	c1 e0 07             	shl    eax,0x7
    7342:	83 e2 7f             	and    edx,0x7f
    7345:	01 d0                	add    eax,edx
    7347:	72 cf                	jb     7318 <asn1_get_tag_der+0x48>
    7349:	41 83 c2 01          	add    r10d,0x1
    734d:	49 83 c1 01          	add    r9,0x1
    7351:	44 39 d6             	cmp    esi,r10d
    7354:	7f da                	jg     7330 <asn1_get_tag_der+0x60>
    7356:	41 39 f2             	cmp    r10d,esi
    7359:	7d bd                	jge    7318 <asn1_get_tag_der+0x48>
    735b:	3d ff ff ff 01       	cmp    eax,0x1ffffff
    7360:	77 b6                	ja     7318 <asn1_get_tag_der+0x48>
    7362:	49 63 d2             	movsxd rdx,r10d
    7365:	c1 e0 07             	shl    eax,0x7
    7368:	0f b6 14 17          	movzx  edx,BYTE PTR [rdi+rdx*1]
    736c:	83 e2 7f             	and    edx,0x7f
    736f:	01 d0                	add    eax,edx
    7371:	72 a5                	jb     7318 <asn1_get_tag_der+0x48>
    7373:	41 83 c2 01          	add    r10d,0x1
    7377:	44 89 11             	mov    DWORD PTR [rcx],r10d
    737a:	eb 89                	jmp    7305 <asn1_get_tag_der+0x35>
    737c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    7380:	31 c0                	xor    eax,eax
    7382:	c3                   	ret    
    7383:	0f 1f 00             	nop    DWORD PTR [rax]
    7386:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    738d:	00 00 00 

0000000000007390 <_asn1_get_indefinite_length_string>:
    7390:	41 57                	push   r15
    7392:	41 56                	push   r14
    7394:	45 31 ff             	xor    r15d,r15d
    7397:	41 55                	push   r13
    7399:	41 54                	push   r12
    739b:	41 89 f4             	mov    r12d,esi
    739e:	55                   	push   rbp
    739f:	53                   	push   rbx
    73a0:	31 ed                	xor    ebp,ebp
    73a2:	48 89 fb             	mov    rbx,rdi
    73a5:	48 83 ec 48          	sub    rsp,0x48
    73a9:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    73b0:	00 00 
    73b2:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
    73b7:	31 c0                	xor    eax,eax
    73b9:	48 8d 44 24 27       	lea    rax,[rsp+0x27]
    73be:	4c 8d 74 24 30       	lea    r14,[rsp+0x30]
    73c3:	4c 8d 6c 24 28       	lea    r13,[rsp+0x28]
    73c8:	48 89 54 24 18       	mov    QWORD PTR [rsp+0x18],rdx
    73cd:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    73d2:	48 8d 44 24 2c       	lea    rax,[rsp+0x2c]
    73d7:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
    73dc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    73e0:	41 83 fc 01          	cmp    r12d,0x1
    73e4:	7e 32                	jle    7418 <_asn1_get_indefinite_length_string+0x88>
    73e6:	49 63 c7             	movsxd rax,r15d
    73e9:	48 8d 3c 03          	lea    rdi,[rbx+rax*1]
    73ed:	80 3f 00             	cmp    BYTE PTR [rdi],0x0
    73f0:	75 2e                	jne    7420 <_asn1_get_indefinite_length_string+0x90>
    73f2:	80 7c 03 01 00       	cmp    BYTE PTR [rbx+rax*1+0x1],0x0
    73f7:	75 27                	jne    7420 <_asn1_get_indefinite_length_string+0x90>
    73f9:	83 ed 01             	sub    ebp,0x1
    73fc:	41 83 c7 02          	add    r15d,0x2
    7400:	85 ed                	test   ebp,ebp
    7402:	0f 8e b8 00 00 00    	jle    74c0 <_asn1_get_indefinite_length_string+0x130>
    7408:	41 83 ec 02          	sub    r12d,0x2
    740c:	41 83 fc 01          	cmp    r12d,0x1
    7410:	7f d4                	jg     73e6 <_asn1_get_indefinite_length_string+0x56>
    7412:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    7418:	49 63 ff             	movsxd rdi,r15d
    741b:	48 01 df             	add    rdi,rbx
    741e:	66 90                	xchg   ax,ax
    7420:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
    7425:	4d 89 f0             	mov    r8,r14
    7428:	4c 89 e9             	mov    rcx,r13
    742b:	44 89 e6             	mov    esi,r12d
    742e:	e8 5d b7 ff ff       	call   2b90 <asn1_get_tag_der@plt>
    7433:	85 c0                	test   eax,eax
    7435:	75 41                	jne    7478 <_asn1_get_indefinite_length_string+0xe8>
    7437:	8b 44 24 28          	mov    eax,DWORD PTR [rsp+0x28]
    743b:	41 29 c4             	sub    r12d,eax
    743e:	78 38                	js     7478 <_asn1_get_indefinite_length_string+0xe8>
    7440:	41 01 c7             	add    r15d,eax
    7443:	48 8b 54 24 10       	mov    rdx,QWORD PTR [rsp+0x10]
    7448:	44 89 e6             	mov    esi,r12d
    744b:	49 63 ff             	movsxd rdi,r15d
    744e:	48 01 df             	add    rdi,rbx
    7451:	e8 4a b9 ff ff       	call   2da0 <asn1_get_length_der@plt>
    7456:	83 f8 ff             	cmp    eax,0xffffffff
    7459:	89 44 24 28          	mov    DWORD PTR [rsp+0x28],eax
    745d:	7c 19                	jl     7478 <_asn1_get_indefinite_length_string+0xe8>
    745f:	74 3f                	je     74a0 <_asn1_get_indefinite_length_string+0x110>
    7461:	03 44 24 2c          	add    eax,DWORD PTR [rsp+0x2c]
    7465:	41 01 c7             	add    r15d,eax
    7468:	41 29 c4             	sub    r12d,eax
    746b:	0f 89 6f ff ff ff    	jns    73e0 <_asn1_get_indefinite_length_string+0x50>
    7471:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    7478:	b8 04 00 00 00       	mov    eax,0x4
    747d:	48 8b 4c 24 38       	mov    rcx,QWORD PTR [rsp+0x38]
    7482:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
    7489:	00 00 
    748b:	75 3f                	jne    74cc <_asn1_get_indefinite_length_string+0x13c>
    748d:	48 83 c4 48          	add    rsp,0x48
    7491:	5b                   	pop    rbx
    7492:	5d                   	pop    rbp
    7493:	41 5c                	pop    r12
    7495:	41 5d                	pop    r13
    7497:	41 5e                	pop    r14
    7499:	41 5f                	pop    r15
    749b:	c3                   	ret    
    749c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    74a0:	41 83 ec 01          	sub    r12d,0x1
    74a4:	83 c5 01             	add    ebp,0x1
    74a7:	41 83 c7 01          	add    r15d,0x1
    74ab:	41 83 fc ff          	cmp    r12d,0xffffffff
    74af:	0f 85 2b ff ff ff    	jne    73e0 <_asn1_get_indefinite_length_string+0x50>
    74b5:	eb c1                	jmp    7478 <_asn1_get_indefinite_length_string+0xe8>
    74b7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    74be:	00 00 
    74c0:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
    74c5:	44 89 38             	mov    DWORD PTR [rax],r15d
    74c8:	31 c0                	xor    eax,eax
    74ca:	eb b1                	jmp    747d <_asn1_get_indefinite_length_string+0xed>
    74cc:	e8 ff b6 ff ff       	call   2bd0 <__stack_chk_fail@plt>
    74d1:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    74d6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    74dd:	00 00 00 

00000000000074e0 <_asn1_decode_simple_der>:
    74e0:	41 57                	push   r15
    74e2:	41 56                	push   r14
    74e4:	41 89 d6             	mov    r14d,edx
    74e7:	41 55                	push   r13
    74e9:	41 54                	push   r12
    74eb:	55                   	push   rbp
    74ec:	53                   	push   rbx
    74ed:	89 d3                	mov    ebx,edx
    74ef:	48 83 ec 38          	sub    rsp,0x38
    74f3:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    74fa:	00 00 
    74fc:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
    7501:	31 c0                	xor    eax,eax
    7503:	48 85 f6             	test   rsi,rsi
    7506:	0f 94 c2             	sete   dl
    7509:	85 db                	test   ebx,ebx
    750b:	0f 94 c0             	sete   al
    750e:	09 d0                	or     eax,edx
    7510:	85 ff                	test   edi,edi
    7512:	0f 95 c2             	setne  dl
    7515:	38 d0                	cmp    al,dl
    7517:	73 3f                	jae    7558 <_asn1_decode_simple_der+0x78>
    7519:	48 8d 05 a8 bc 20 00 	lea    rax,[rip+0x20bca8]        # 2131c8 <_asn1_tags_size>
    7520:	3b 38                	cmp    edi,DWORD PTR [rax]
    7522:	77 34                	ja     7558 <_asn1_decode_simple_der+0x78>
    7524:	48 8d 05 f5 b4 20 00 	lea    rax,[rip+0x20b4f5]        # 212a20 <_asn1_tags>
    752b:	41 89 ff             	mov    r15d,edi
    752e:	4c 89 fa             	mov    rdx,r15
    7531:	48 c1 e2 04          	shl    rdx,0x4
    7535:	48 83 7c 10 08 00    	cmp    QWORD PTR [rax+rdx*1+0x8],0x0
    753b:	74 1b                	je     7558 <_asn1_decode_simple_der+0x78>
    753d:	8d 57 e5             	lea    edx,[rdi-0x1b]
    7540:	48 89 f5             	mov    rbp,rsi
    7543:	49 89 cc             	mov    r12,rcx
    7546:	4d 89 c5             	mov    r13,r8
    7549:	83 fa 08             	cmp    edx,0x8
    754c:	76 32                	jbe    7580 <_asn1_decode_simple_der+0xa0>
    754e:	83 ff 07             	cmp    edi,0x7
    7551:	74 2d                	je     7580 <_asn1_decode_simple_der+0xa0>
    7553:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    7558:	b8 07 00 00 00       	mov    eax,0x7
    755d:	48 8b 74 24 28       	mov    rsi,QWORD PTR [rsp+0x28]
    7562:	64 48 33 34 25 28 00 	xor    rsi,QWORD PTR fs:0x28
    7569:	00 00 
    756b:	0f 85 b1 00 00 00    	jne    7622 <_asn1_decode_simple_der+0x142>
    7571:	48 83 c4 38          	add    rsp,0x38
    7575:	5b                   	pop    rbx
    7576:	5d                   	pop    rbp
    7577:	41 5c                	pop    r12
    7579:	41 5d                	pop    r13
    757b:	41 5e                	pop    r14
    757d:	41 5f                	pop    r15
    757f:	c3                   	ret    
    7580:	49 c1 e7 04          	shl    r15,0x4
    7584:	49 01 c7             	add    r15,rax
    7587:	45 8b 57 04          	mov    r10d,DWORD PTR [r15+0x4]
    758b:	45 84 d2             	test   r10b,r10b
    758e:	44 88 54 24 17       	mov    BYTE PTR [rsp+0x17],r10b
    7593:	75 c3                	jne    7558 <_asn1_decode_simple_der+0x78>
    7595:	41 83 e1 01          	and    r9d,0x1
    7599:	44 89 54 24 0c       	mov    DWORD PTR [rsp+0xc],r10d
    759e:	74 4e                	je     75ee <_asn1_decode_simple_der+0x10e>
    75a0:	48 8d 4c 24 18       	lea    rcx,[rsp+0x18]
    75a5:	48 8d 54 24 17       	lea    rdx,[rsp+0x17]
    75aa:	4c 8d 44 24 20       	lea    r8,[rsp+0x20]
    75af:	89 de                	mov    esi,ebx
    75b1:	48 89 ef             	mov    rdi,rbp
    75b4:	e8 d7 b5 ff ff       	call   2b90 <asn1_get_tag_der@plt>
    75b9:	85 c0                	test   eax,eax
    75bb:	75 a0                	jne    755d <_asn1_decode_simple_der+0x7d>
    75bd:	0f b6 44 24 17       	movzx  eax,BYTE PTR [rsp+0x17]
    75c2:	44 8b 54 24 0c       	mov    r10d,DWORD PTR [rsp+0xc]
    75c7:	41 39 c2             	cmp    r10d,eax
    75ca:	74 07                	je     75d3 <_asn1_decode_simple_der+0xf3>
    75cc:	b8 04 00 00 00       	mov    eax,0x4
    75d1:	eb 8a                	jmp    755d <_asn1_decode_simple_der+0x7d>
    75d3:	41 8b 07             	mov    eax,DWORD PTR [r15]
    75d6:	48 3b 44 24 20       	cmp    rax,QWORD PTR [rsp+0x20]
    75db:	75 ef                	jne    75cc <_asn1_decode_simple_der+0xec>
    75dd:	48 63 54 24 18       	movsxd rdx,DWORD PTR [rsp+0x18]
    75e2:	29 d3                	sub    ebx,edx
    75e4:	48 01 d5             	add    rbp,rdx
    75e7:	85 db                	test   ebx,ebx
    75e9:	41 89 de             	mov    r14d,ebx
    75ec:	7e de                	jle    75cc <_asn1_decode_simple_der+0xec>
    75ee:	48 8d 54 24 1c       	lea    rdx,[rsp+0x1c]
    75f3:	44 89 f6             	mov    esi,r14d
    75f6:	48 89 ef             	mov    rdi,rbp
    75f9:	e8 a2 b7 ff ff       	call   2da0 <asn1_get_length_der@plt>
    75fe:	48 85 c0             	test   rax,rax
    7601:	78 c9                	js     75cc <_asn1_decode_simple_der+0xec>
    7603:	48 63 54 24 1c       	movsxd rdx,DWORD PTR [rsp+0x1c]
    7608:	41 29 d6             	sub    r14d,edx
    760b:	45 85 f6             	test   r14d,r14d
    760e:	7e bc                	jle    75cc <_asn1_decode_simple_der+0xec>
    7610:	48 01 d5             	add    rbp,rdx
    7613:	41 89 45 00          	mov    DWORD PTR [r13+0x0],eax
    7617:	31 c0                	xor    eax,eax
    7619:	49 89 2c 24          	mov    QWORD PTR [r12],rbp
    761d:	e9 3b ff ff ff       	jmp    755d <_asn1_decode_simple_der+0x7d>
    7622:	e8 a9 b5 ff ff       	call   2bd0 <__stack_chk_fail@plt>
    7627:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    762e:	00 00 

0000000000007630 <asn1_get_length_ber>:
    7630:	55                   	push   rbp
    7631:	53                   	push   rbx
    7632:	48 89 fd             	mov    rbp,rdi
    7635:	89 f3                	mov    ebx,esi
    7637:	48 83 ec 18          	sub    rsp,0x18
    763b:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    7642:	00 00 
    7644:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    7649:	31 c0                	xor    eax,eax
    764b:	e8 50 b7 ff ff       	call   2da0 <asn1_get_length_der@plt>
    7650:	83 f8 ff             	cmp    eax,0xffffffff
    7653:	89 c2                	mov    edx,eax
    7655:	89 44 24 04          	mov    DWORD PTR [rsp+0x4],eax
    7659:	75 05                	jne    7660 <asn1_get_length_ber+0x30>
    765b:	83 fb 01             	cmp    ebx,0x1
    765e:	7f 20                	jg     7680 <asn1_get_length_ber+0x50>
    7660:	48 63 c2             	movsxd rax,edx
    7663:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    7668:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
    766f:	00 00 
    7671:	75 36                	jne    76a9 <asn1_get_length_ber+0x79>
    7673:	48 83 c4 18          	add    rsp,0x18
    7677:	5b                   	pop    rbx
    7678:	5d                   	pop    rbp
    7679:	c3                   	ret    
    767a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    7680:	48 8d 54 24 04       	lea    rdx,[rsp+0x4]
    7685:	8d 73 ff             	lea    esi,[rbx-0x1]
    7688:	48 8d 7d 01          	lea    rdi,[rbp+0x1]
    768c:	e8 ff fc ff ff       	call   7390 <_asn1_get_indefinite_length_string>
    7691:	85 c0                	test   eax,eax
    7693:	75 0b                	jne    76a0 <asn1_get_length_ber+0x70>
    7695:	8b 54 24 04          	mov    edx,DWORD PTR [rsp+0x4]
    7699:	eb c5                	jmp    7660 <asn1_get_length_ber+0x30>
    769b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    76a0:	48 c7 c0 fd ff ff ff 	mov    rax,0xfffffffffffffffd
    76a7:	eb ba                	jmp    7663 <asn1_get_length_ber+0x33>
    76a9:	e8 22 b5 ff ff       	call   2bd0 <__stack_chk_fail@plt>
    76ae:	66 90                	xchg   ax,ax

00000000000076b0 <_asn1_extract_tag_der.isra.3.part.4>:
    76b0:	41 57                	push   r15
    76b2:	41 56                	push   r14
    76b4:	41 55                	push   r13
    76b6:	41 54                	push   r12
    76b8:	55                   	push   rbp
    76b9:	53                   	push   rbx
    76ba:	89 cd                	mov    ebp,ecx
    76bc:	48 83 ec 68          	sub    rsp,0x68
    76c0:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    76c7:	00 00 
    76c9:	48 89 44 24 58       	mov    QWORD PTR [rsp+0x58],rax
    76ce:	31 c0                	xor    eax,eax
    76d0:	8b 07                	mov    eax,DWORD PTR [rdi]
    76d2:	48 89 14 24          	mov    QWORD PTR [rsp],rdx
    76d6:	4c 89 44 24 38       	mov    QWORD PTR [rsp+0x38],r8
    76db:	4c 89 4c 24 30       	mov    QWORD PTR [rsp+0x30],r9
    76e0:	f6 c4 20             	test   ah,0x20
    76e3:	0f 84 97 01 00 00    	je     7880 <_asn1_extract_tag_der.isra.3.part.4+0x1d0>
    76e9:	4c 8b 36             	mov    r14,QWORD PTR [rsi]
    76ec:	4d 85 f6             	test   r14,r14
    76ef:	0f 84 8b 01 00 00    	je     7880 <_asn1_extract_tag_der.isra.3.part.4+0x1d0>
    76f5:	48 8d 44 24 50       	lea    rax,[rsp+0x50]
    76fa:	45 31 ff             	xor    r15d,r15d
    76fd:	4d 89 f5             	mov    r13,r14
    7700:	48 c7 44 24 10 00 00 	mov    QWORD PTR [rsp+0x10],0x0
    7707:	00 00 
    7709:	45 89 fe             	mov    r14d,r15d
    770c:	c6 44 24 2b 00       	mov    BYTE PTR [rsp+0x2b],0x0
    7711:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
    7716:	48 8d 44 24 4c       	lea    rax,[rsp+0x4c]
    771b:	31 db                	xor    ebx,ebx
    771d:	49 89 ff             	mov    r15,rdi
    7720:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    7725:	48 8d 44 24 4b       	lea    rax,[rsp+0x4b]
    772a:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
    772f:	8b 84 24 a0 00 00 00 	mov    eax,DWORD PTR [rsp+0xa0]
    7736:	83 e0 02             	and    eax,0x2
    7739:	89 44 24 2c          	mov    DWORD PTR [rsp+0x2c],eax
    773d:	eb 0e                	jmp    774d <_asn1_extract_tag_der.isra.3.part.4+0x9d>
    773f:	90                   	nop
    7740:	4d 8b 6d 68          	mov    r13,QWORD PTR [r13+0x68]
    7744:	4d 85 ed             	test   r13,r13
    7747:	0f 84 93 00 00 00    	je     77e0 <_asn1_extract_tag_der.isra.3.part.4+0x130>
    774d:	41 8b 45 48          	mov    eax,DWORD PTR [r13+0x48]
    7751:	3c 08                	cmp    al,0x8
    7753:	75 eb                	jne    7740 <_asn1_extract_tag_der.isra.3.part.4+0x90>
    7755:	f6 c4 04             	test   ah,0x4
    7758:	41 bc 40 00 00 00    	mov    r12d,0x40
    775e:	75 1e                	jne    777e <_asn1_extract_tag_der.isra.3.part.4+0xce>
    7760:	45 31 e4             	xor    r12d,r12d
    7763:	f6 c4 01             	test   ah,0x1
    7766:	75 16                	jne    777e <_asn1_extract_tag_der.isra.3.part.4+0xce>
    7768:	89 c2                	mov    edx,eax
    776a:	81 e2 00 02 00 00    	and    edx,0x200
    7770:	83 fa 01             	cmp    edx,0x1
    7773:	45 19 e4             	sbb    r12d,r12d
    7776:	41 83 e4 c0          	and    r12d,0xffffffc0
    777a:	41 83 ec 40          	sub    r12d,0x40
    777e:	f6 c4 08             	test   ah,0x8
    7781:	0f 85 81 01 00 00    	jne    7908 <_asn1_extract_tag_der.isra.3.part.4+0x258>
    7787:	45 85 f6             	test   r14d,r14d
    778a:	75 b4                	jne    7740 <_asn1_extract_tag_der.isra.3.part.4+0x90>
    778c:	41 0f b6 0f          	movzx  ecx,BYTE PTR [r15]
    7790:	83 f9 0f             	cmp    ecx,0xf
    7793:	77 14                	ja     77a9 <_asn1_extract_tag_der.isra.3.part.4+0xf9>
    7795:	b8 20 c8 00 00       	mov    eax,0xc820
    779a:	44 89 e2             	mov    edx,r12d
    779d:	48 d3 e8             	shr    rax,cl
    77a0:	83 ca 20             	or     edx,0x20
    77a3:	a8 01                	test   al,0x1
    77a5:	44 0f 45 e2          	cmovne r12d,edx
    77a9:	49 8b 7d 50          	mov    rdi,QWORD PTR [r13+0x50]
    77ad:	31 f6                	xor    esi,esi
    77af:	ba 0a 00 00 00       	mov    edx,0xa
    77b4:	41 be 01 00 00 00    	mov    r14d,0x1
    77ba:	e8 f1 b5 ff ff       	call   2db0 <strtoul@plt>
    77bf:	4d 8b 6d 68          	mov    r13,QWORD PTR [r13+0x68]
    77c3:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
    77c8:	44 88 64 24 2b       	mov    BYTE PTR [rsp+0x2b],r12b
    77cd:	4d 85 ed             	test   r13,r13
    77d0:	0f 85 77 ff ff ff    	jne    774d <_asn1_extract_tag_der.isra.3.part.4+0x9d>
    77d6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    77dd:	00 00 00 
    77e0:	45 85 f6             	test   r14d,r14d
    77e3:	4d 89 fd             	mov    r13,r15
    77e6:	0f 84 0e 02 00 00    	je     79fa <_asn1_extract_tag_der.isra.3.part.4+0x34a>
    77ec:	48 63 fb             	movsxd rdi,ebx
    77ef:	48 03 3c 24          	add    rdi,QWORD PTR [rsp]
    77f3:	48 8d 4c 24 4c       	lea    rcx,[rsp+0x4c]
    77f8:	48 8d 54 24 4b       	lea    rdx,[rsp+0x4b]
    77fd:	4c 8d 44 24 50       	lea    r8,[rsp+0x50]
    7802:	89 ee                	mov    esi,ebp
    7804:	e8 87 b3 ff ff       	call   2b90 <asn1_get_tag_der@plt>
    7809:	85 c0                	test   eax,eax
    780b:	0f 85 a0 00 00 00    	jne    78b1 <_asn1_extract_tag_der.isra.3.part.4+0x201>
    7811:	8b 54 24 4c          	mov    edx,DWORD PTR [rsp+0x4c]
    7815:	39 d5                	cmp    ebp,edx
    7817:	0f 88 94 00 00 00    	js     78b1 <_asn1_extract_tag_der.isra.3.part.4+0x201>
    781d:	0f b6 44 24 4b       	movzx  eax,BYTE PTR [rsp+0x4b]
    7822:	3a 44 24 2b          	cmp    al,BYTE PTR [rsp+0x2b]
    7826:	0f 84 34 02 00 00    	je     7a60 <_asn1_extract_tag_der.isra.3.part.4+0x3b0>
    782c:	41 80 7d 00 07       	cmp    BYTE PTR [r13+0x0],0x7
    7831:	0f 85 5b 01 00 00    	jne    7992 <_asn1_extract_tag_der.isra.3.part.4+0x2e2>
    7837:	44 0f b6 74 24 2b    	movzx  r14d,BYTE PTR [rsp+0x2b]
    783d:	41 83 ce 20          	or     r14d,0x20
    7841:	44 38 f0             	cmp    al,r14b
    7844:	0f 85 48 01 00 00    	jne    7992 <_asn1_extract_tag_der.isra.3.part.4+0x2e2>
    784a:	48 8b 44 24 10       	mov    rax,QWORD PTR [rsp+0x10]
    784f:	48 39 44 24 50       	cmp    QWORD PTR [rsp+0x50],rax
    7854:	0f 85 38 01 00 00    	jne    7992 <_asn1_extract_tag_der.isra.3.part.4+0x2e2>
    785a:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
    785f:	01 d3                	add    ebx,edx
    7861:	89 18                	mov    DWORD PTR [rax],ebx
    7863:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
    7868:	48 85 c0             	test   rax,rax
    786b:	0f 84 8d 00 00 00    	je     78fe <_asn1_extract_tag_der.isra.3.part.4+0x24e>
    7871:	89 10                	mov    DWORD PTR [rax],edx
    7873:	31 c0                	xor    eax,eax
    7875:	eb 3f                	jmp    78b6 <_asn1_extract_tag_der.isra.3.part.4+0x206>
    7877:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    787e:	00 00 
    7880:	31 db                	xor    ebx,ebx
    7882:	44 0f b6 e8          	movzx  r13d,al
    7886:	41 83 fd 08          	cmp    r13d,0x8
    788a:	74 54                	je     78e0 <_asn1_extract_tag_der.isra.3.part.4+0x230>
    788c:	48 63 fb             	movsxd rdi,ebx
    788f:	48 03 3c 24          	add    rdi,QWORD PTR [rsp]
    7893:	48 8d 4c 24 4c       	lea    rcx,[rsp+0x4c]
    7898:	48 8d 54 24 4b       	lea    rdx,[rsp+0x4b]
    789d:	4c 8d 44 24 50       	lea    r8,[rsp+0x50]
    78a2:	89 ee                	mov    esi,ebp
    78a4:	e8 e7 b2 ff ff       	call   2b90 <asn1_get_tag_der@plt>
    78a9:	85 c0                	test   eax,eax
    78ab:	0f 84 1e 01 00 00    	je     79cf <_asn1_extract_tag_der.isra.3.part.4+0x31f>
    78b1:	b8 04 00 00 00       	mov    eax,0x4
    78b6:	48 8b 74 24 58       	mov    rsi,QWORD PTR [rsp+0x58]
    78bb:	64 48 33 34 25 28 00 	xor    rsi,QWORD PTR fs:0x28
    78c2:	00 00 
    78c4:	0f 85 ab 01 00 00    	jne    7a75 <_asn1_extract_tag_der.isra.3.part.4+0x3c5>
    78ca:	48 83 c4 68          	add    rsp,0x68
    78ce:	5b                   	pop    rbx
    78cf:	5d                   	pop    rbp
    78d0:	41 5c                	pop    r12
    78d2:	41 5d                	pop    r13
    78d4:	41 5e                	pop    r14
    78d6:	41 5f                	pop    r15
    78d8:	c3                   	ret    
    78d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    78e0:	48 83 7c 24 30 00    	cmp    QWORD PTR [rsp+0x30],0x0
    78e6:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
    78eb:	c7 00 00 00 00 00    	mov    DWORD PTR [rax],0x0
    78f1:	74 0b                	je     78fe <_asn1_extract_tag_der.isra.3.part.4+0x24e>
    78f3:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
    78f8:	c7 00 00 00 00 00    	mov    DWORD PTR [rax],0x0
    78fe:	31 c0                	xor    eax,eax
    7900:	eb b4                	jmp    78b6 <_asn1_extract_tag_der.isra.3.part.4+0x206>
    7902:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    7908:	48 63 fb             	movsxd rdi,ebx
    790b:	48 03 3c 24          	add    rdi,QWORD PTR [rsp]
    790f:	4c 8b 44 24 18       	mov    r8,QWORD PTR [rsp+0x18]
    7914:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    7919:	48 8b 54 24 20       	mov    rdx,QWORD PTR [rsp+0x20]
    791e:	89 ee                	mov    esi,ebp
    7920:	e8 6b b2 ff ff       	call   2b90 <asn1_get_tag_der@plt>
    7925:	85 c0                	test   eax,eax
    7927:	75 88                	jne    78b1 <_asn1_extract_tag_der.isra.3.part.4+0x201>
    7929:	8b 44 24 4c          	mov    eax,DWORD PTR [rsp+0x4c]
    792d:	29 c5                	sub    ebp,eax
    792f:	78 80                	js     78b1 <_asn1_extract_tag_der.isra.3.part.4+0x201>
    7931:	01 c3                	add    ebx,eax
    7933:	8b 44 24 2c          	mov    eax,DWORD PTR [rsp+0x2c]
    7937:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
    793c:	48 63 fb             	movsxd rdi,ebx
    793f:	48 03 3c 24          	add    rdi,QWORD PTR [rsp]
    7943:	89 ee                	mov    esi,ebp
    7945:	85 c0                	test   eax,eax
    7947:	74 57                	je     79a0 <_asn1_extract_tag_der.isra.3.part.4+0x2f0>
    7949:	e8 52 b4 ff ff       	call   2da0 <asn1_get_length_der@plt>
    794e:	85 c0                	test   eax,eax
    7950:	0f 88 5b ff ff ff    	js     78b1 <_asn1_extract_tag_der.isra.3.part.4+0x201>
    7956:	8b 44 24 4c          	mov    eax,DWORD PTR [rsp+0x4c]
    795a:	29 c5                	sub    ebp,eax
    795c:	0f 88 4f ff ff ff    	js     78b1 <_asn1_extract_tag_der.isra.3.part.4+0x201>
    7962:	01 c3                	add    ebx,eax
    7964:	45 85 f6             	test   r14d,r14d
    7967:	75 47                	jne    79b0 <_asn1_extract_tag_der.isra.3.part.4+0x300>
    7969:	45 89 e2             	mov    r10d,r12d
    796c:	41 83 ca 20          	or     r10d,0x20
    7970:	44 3a 54 24 4b       	cmp    r10b,BYTE PTR [rsp+0x4b]
    7975:	75 1b                	jne    7992 <_asn1_extract_tag_der.isra.3.part.4+0x2e2>
    7977:	49 8b 7d 50          	mov    rdi,QWORD PTR [r13+0x50]
    797b:	31 f6                	xor    esi,esi
    797d:	ba 0a 00 00 00       	mov    edx,0xa
    7982:	e8 29 b4 ff ff       	call   2db0 <strtoul@plt>
    7987:	48 3b 44 24 50       	cmp    rax,QWORD PTR [rsp+0x50]
    798c:	0f 84 ae fd ff ff    	je     7740 <_asn1_extract_tag_der.isra.3.part.4+0x90>
    7992:	b8 08 00 00 00       	mov    eax,0x8
    7997:	e9 1a ff ff ff       	jmp    78b6 <_asn1_extract_tag_der.isra.3.part.4+0x206>
    799c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    79a0:	e8 4b b1 ff ff       	call   2af0 <asn1_get_length_ber@plt>
    79a5:	eb a7                	jmp    794e <_asn1_extract_tag_der.isra.3.part.4+0x29e>
    79a7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    79ae:	00 00 
    79b0:	0f b6 44 24 2b       	movzx  eax,BYTE PTR [rsp+0x2b]
    79b5:	38 44 24 4b          	cmp    BYTE PTR [rsp+0x4b],al
    79b9:	75 d7                	jne    7992 <_asn1_extract_tag_der.isra.3.part.4+0x2e2>
    79bb:	48 8b 44 24 10       	mov    rax,QWORD PTR [rsp+0x10]
    79c0:	48 39 44 24 50       	cmp    QWORD PTR [rsp+0x50],rax
    79c5:	75 cb                	jne    7992 <_asn1_extract_tag_der.isra.3.part.4+0x2e2>
    79c7:	45 31 f6             	xor    r14d,r14d
    79ca:	e9 71 fd ff ff       	jmp    7740 <_asn1_extract_tag_der.isra.3.part.4+0x90>
    79cf:	8b 54 24 4c          	mov    edx,DWORD PTR [rsp+0x4c]
    79d3:	39 d5                	cmp    ebp,edx
    79d5:	0f 88 d6 fe ff ff    	js     78b1 <_asn1_extract_tag_der.isra.3.part.4+0x201>
    79db:	41 8d 45 fd          	lea    eax,[r13-0x3]
    79df:	83 f8 22             	cmp    eax,0x22
    79e2:	0f 87 c9 fe ff ff    	ja     78b1 <_asn1_extract_tag_der.isra.3.part.4+0x201>
    79e8:	89 c1                	mov    ecx,eax
    79ea:	48 8d 05 07 81 00 00 	lea    rax,[rip+0x8107]        # faf8 <bit_mask+0x8>
    79f1:	48 63 0c 88          	movsxd rcx,DWORD PTR [rax+rcx*4]
    79f5:	48 01 c8             	add    rax,rcx
    79f8:	ff e0                	jmp    rax
    79fa:	41 8b 45 00          	mov    eax,DWORD PTR [r13+0x0]
    79fe:	e9 7f fe ff ff       	jmp    7882 <_asn1_extract_tag_der.isra.3.part.4+0x1d2>
    7a03:	29 d3                	sub    ebx,edx
    7a05:	e9 50 fe ff ff       	jmp    785a <_asn1_extract_tag_der.isra.3.part.4+0x1aa>
    7a0a:	f6 44 24 4b df       	test   BYTE PTR [rsp+0x4b],0xdf
    7a0f:	0f 85 9c fe ff ff    	jne    78b1 <_asn1_extract_tag_der.isra.3.part.4+0x201>
    7a15:	48 83 7c 24 50 04    	cmp    QWORD PTR [rsp+0x50],0x4
    7a1b:	0f 85 90 fe ff ff    	jne    78b1 <_asn1_extract_tag_der.isra.3.part.4+0x201>
    7a21:	e9 34 fe ff ff       	jmp    785a <_asn1_extract_tag_der.isra.3.part.4+0x1aa>
    7a26:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    7a2d:	00 00 00 
    7a30:	44 89 e8             	mov    eax,r13d
    7a33:	0f b6 4c 24 4b       	movzx  ecx,BYTE PTR [rsp+0x4b]
    7a38:	48 c1 e0 04          	shl    rax,0x4
    7a3c:	48 03 05 85 b5 20 00 	add    rax,QWORD PTR [rip+0x20b585]        # 212fc8 <_DYNAMIC+0x1f8>
    7a43:	3b 48 04             	cmp    ecx,DWORD PTR [rax+0x4]
    7a46:	0f 85 65 fe ff ff    	jne    78b1 <_asn1_extract_tag_der.isra.3.part.4+0x201>
    7a4c:	8b 00                	mov    eax,DWORD PTR [rax]
    7a4e:	48 3b 44 24 50       	cmp    rax,QWORD PTR [rsp+0x50]
    7a53:	0f 85 58 fe ff ff    	jne    78b1 <_asn1_extract_tag_der.isra.3.part.4+0x201>
    7a59:	e9 fc fd ff ff       	jmp    785a <_asn1_extract_tag_der.isra.3.part.4+0x1aa>
    7a5e:	66 90                	xchg   ax,ax
    7a60:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
    7a65:	48 39 74 24 50       	cmp    QWORD PTR [rsp+0x50],rsi
    7a6a:	0f 85 bc fd ff ff    	jne    782c <_asn1_extract_tag_der.isra.3.part.4+0x17c>
    7a70:	e9 e5 fd ff ff       	jmp    785a <_asn1_extract_tag_der.isra.3.part.4+0x1aa>
    7a75:	e8 56 b1 ff ff       	call   2bd0 <__stack_chk_fail@plt>
    7a7a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000007a80 <extract_tag_der_recursive>:
    7a80:	41 57                	push   r15
    7a82:	41 56                	push   r14
    7a84:	41 89 d7             	mov    r15d,edx
    7a87:	41 55                	push   r13
    7a89:	41 54                	push   r12
    7a8b:	4d 89 c5             	mov    r13,r8
    7a8e:	55                   	push   rbp
    7a8f:	53                   	push   rbx
    7a90:	49 89 f4             	mov    r12,rsi
    7a93:	48 89 cd             	mov    rbp,rcx
    7a96:	45 89 ce             	mov    r14d,r9d
    7a99:	48 83 ec 08          	sub    rsp,0x8
    7a9d:	80 7f 48 12          	cmp    BYTE PTR [rdi+0x48],0x12
    7aa1:	74 3d                	je     7ae0 <extract_tag_der_recursive+0x60>
    7aa3:	85 d2                	test   edx,edx
    7aa5:	b8 06 00 00 00       	mov    eax,0x6
    7aaa:	7e 20                	jle    7acc <extract_tag_der_recursive+0x4c>
    7aac:	48 83 ec 08          	sub    rsp,0x8
    7ab0:	48 8d 77 60          	lea    rsi,[rdi+0x60]
    7ab4:	48 83 c7 48          	add    rdi,0x48
    7ab8:	41 51                	push   r9
    7aba:	4d 89 c1             	mov    r9,r8
    7abd:	49 89 c8             	mov    r8,rcx
    7ac0:	89 d1                	mov    ecx,edx
    7ac2:	4c 89 e2             	mov    rdx,r12
    7ac5:	e8 e6 fb ff ff       	call   76b0 <_asn1_extract_tag_der.isra.3.part.4>
    7aca:	5a                   	pop    rdx
    7acb:	59                   	pop    rcx
    7acc:	48 83 c4 08          	add    rsp,0x8
    7ad0:	5b                   	pop    rbx
    7ad1:	5d                   	pop    rbp
    7ad2:	41 5c                	pop    r12
    7ad4:	41 5d                	pop    r13
    7ad6:	41 5e                	pop    r14
    7ad8:	41 5f                	pop    r15
    7ada:	c3                   	ret    
    7adb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    7ae0:	48 8b 5f 60          	mov    rbx,QWORD PTR [rdi+0x60]
    7ae4:	48 85 db             	test   rbx,rbx
    7ae7:	75 35                	jne    7b1e <extract_tag_der_recursive+0x9e>
    7ae9:	eb 5c                	jmp    7b47 <extract_tag_der_recursive+0xc7>
    7aeb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    7af0:	48 83 ec 08          	sub    rsp,0x8
    7af4:	48 8d 73 60          	lea    rsi,[rbx+0x60]
    7af8:	48 8d 7b 48          	lea    rdi,[rbx+0x48]
    7afc:	41 56                	push   r14
    7afe:	4d 89 e9             	mov    r9,r13
    7b01:	49 89 e8             	mov    r8,rbp
    7b04:	44 89 f9             	mov    ecx,r15d
    7b07:	4c 89 e2             	mov    rdx,r12
    7b0a:	e8 a1 fb ff ff       	call   76b0 <_asn1_extract_tag_der.isra.3.part.4>
    7b0f:	85 c0                	test   eax,eax
    7b11:	5e                   	pop    rsi
    7b12:	5f                   	pop    rdi
    7b13:	74 1c                	je     7b31 <extract_tag_der_recursive+0xb1>
    7b15:	48 8b 5b 68          	mov    rbx,QWORD PTR [rbx+0x68]
    7b19:	48 85 db             	test   rbx,rbx
    7b1c:	74 13                	je     7b31 <extract_tag_der_recursive+0xb1>
    7b1e:	45 85 ff             	test   r15d,r15d
    7b21:	7f cd                	jg     7af0 <extract_tag_der_recursive+0x70>
    7b23:	48 8b 5b 68          	mov    rbx,QWORD PTR [rbx+0x68]
    7b27:	b8 06 00 00 00       	mov    eax,0x6
    7b2c:	48 85 db             	test   rbx,rbx
    7b2f:	75 ed                	jne    7b1e <extract_tag_der_recursive+0x9e>
    7b31:	c7 45 00 00 00 00 00 	mov    DWORD PTR [rbp+0x0],0x0
    7b38:	48 83 c4 08          	add    rsp,0x8
    7b3c:	5b                   	pop    rbx
    7b3d:	5d                   	pop    rbp
    7b3e:	41 5c                	pop    r12
    7b40:	41 5d                	pop    r13
    7b42:	41 5e                	pop    r14
    7b44:	41 5f                	pop    r15
    7b46:	c3                   	ret    
    7b47:	b8 04 00 00 00       	mov    eax,0x4
    7b4c:	eb e3                	jmp    7b31 <extract_tag_der_recursive+0xb1>
    7b4e:	66 90                	xchg   ax,ax

0000000000007b50 <_asn1_decode_simple_ber>:
    7b50:	41 57                	push   r15
    7b52:	41 56                	push   r14
    7b54:	41 89 d7             	mov    r15d,edx
    7b57:	41 55                	push   r13
    7b59:	41 54                	push   r12
    7b5b:	49 89 f5             	mov    r13,rsi
    7b5e:	55                   	push   rbp
    7b5f:	53                   	push   rbx
    7b60:	89 fd                	mov    ebp,edi
    7b62:	49 89 ca             	mov    r10,rcx
    7b65:	4d 89 c3             	mov    r11,r8
    7b68:	4c 89 cb             	mov    rbx,r9
    7b6b:	48 81 ec 88 00 00 00 	sub    rsp,0x88
    7b72:	41 89 d4             	mov    r12d,edx
    7b75:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    7b7c:	00 00 
    7b7e:	48 89 44 24 78       	mov    QWORD PTR [rsp+0x78],rax
    7b83:	31 c0                	xor    eax,eax
    7b85:	4d 85 c9             	test   r9,r9
    7b88:	48 c7 44 24 58 00 00 	mov    QWORD PTR [rsp+0x58],0x0
    7b8f:	00 00 
    7b91:	c7 44 24 4c 00 00 00 	mov    DWORD PTR [rsp+0x4c],0x0
    7b98:	00 
    7b99:	48 c7 44 24 68 00 00 	mov    QWORD PTR [rsp+0x68],0x0
    7ba0:	00 00 
    7ba2:	48 c7 44 24 70 00 00 	mov    QWORD PTR [rsp+0x70],0x0
    7ba9:	00 00 
    7bab:	74 07                	je     7bb4 <_asn1_decode_simple_ber+0x64>
    7bad:	41 c7 01 00 00 00 00 	mov    DWORD PTR [r9],0x0
    7bb4:	4d 85 ed             	test   r13,r13
    7bb7:	0f 94 c2             	sete   dl
    7bba:	45 85 ff             	test   r15d,r15d
    7bbd:	0f 94 c0             	sete   al
    7bc0:	09 d0                	or     eax,edx
    7bc2:	85 ed                	test   ebp,ebp
    7bc4:	0f 95 c2             	setne  dl
    7bc7:	38 d0                	cmp    al,dl
    7bc9:	73 15                	jae    7be0 <_asn1_decode_simple_ber+0x90>
    7bcb:	48 8d 05 f6 b5 20 00 	lea    rax,[rip+0x20b5f6]        # 2131c8 <_asn1_tags_size>
    7bd2:	3b 28                	cmp    ebp,DWORD PTR [rax]
    7bd4:	76 3a                	jbe    7c10 <_asn1_decode_simple_ber+0xc0>
    7bd6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    7bdd:	00 00 00 
    7be0:	b8 07 00 00 00       	mov    eax,0x7
    7be5:	48 8b 74 24 78       	mov    rsi,QWORD PTR [rsp+0x78]
    7bea:	64 48 33 34 25 28 00 	xor    rsi,QWORD PTR fs:0x28
    7bf1:	00 00 
    7bf3:	0f 85 a9 04 00 00    	jne    80a2 <_asn1_decode_simple_ber+0x552>
    7bf9:	48 81 c4 88 00 00 00 	add    rsp,0x88
    7c00:	5b                   	pop    rbx
    7c01:	5d                   	pop    rbp
    7c02:	41 5c                	pop    r12
    7c04:	41 5d                	pop    r13
    7c06:	41 5e                	pop    r14
    7c08:	41 5f                	pop    r15
    7c0a:	c3                   	ret    
    7c0b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    7c10:	41 89 ee             	mov    r14d,ebp
    7c13:	49 c1 e6 04          	shl    r14,0x4
    7c17:	4c 03 35 aa b3 20 00 	add    r14,QWORD PTR [rip+0x20b3aa]        # 212fc8 <_DYNAMIC+0x1f8>
    7c1e:	49 83 7e 08 00       	cmp    QWORD PTR [r14+0x8],0x0
    7c23:	74 bb                	je     7be0 <_asn1_decode_simple_ber+0x90>
    7c25:	45 8b 4e 04          	mov    r9d,DWORD PTR [r14+0x4]
    7c29:	45 84 c9             	test   r9b,r9b
    7c2c:	41 0f b6 c1          	movzx  eax,r9b
    7c30:	44 88 4c 24 43       	mov    BYTE PTR [rsp+0x43],r9b
    7c35:	75 a9                	jne    7be0 <_asn1_decode_simple_ber+0x90>
    7c37:	f6 84 24 c0 00 00 00 	test   BYTE PTR [rsp+0xc0],0x1
    7c3e:	01 
    7c3f:	75 57                	jne    7c98 <_asn1_decode_simple_ber+0x148>
    7c41:	f6 84 24 c0 00 00 00 	test   BYTE PTR [rsp+0xc0],0x2
    7c48:	02 
    7c49:	4d 89 ee             	mov    r14,r13
    7c4c:	74 1a                	je     7c68 <_asn1_decode_simple_ber+0x118>
    7c4e:	8d 45 e5             	lea    eax,[rbp-0x1b]
    7c51:	83 f8 08             	cmp    eax,0x8
    7c54:	0f 86 d6 00 00 00    	jbe    7d30 <_asn1_decode_simple_ber+0x1e0>
    7c5a:	83 fd 07             	cmp    ebp,0x7
    7c5d:	0f 84 cd 00 00 00    	je     7d30 <_asn1_decode_simple_ber+0x1e0>
    7c63:	0f b6 44 24 43       	movzx  eax,BYTE PTR [rsp+0x43]
    7c68:	41 39 c1             	cmp    r9d,eax
    7c6b:	0f 84 3f 02 00 00    	je     7eb0 <_asn1_decode_simple_ber+0x360>
    7c71:	b8 04 00 00 00       	mov    eax,0x4
    7c76:	48 8b 7c 24 68       	mov    rdi,QWORD PTR [rsp+0x68]
    7c7b:	89 04 24             	mov    DWORD PTR [rsp],eax
    7c7e:	e8 8d ae ff ff       	call   2b10 <free@plt>
    7c83:	48 8b 7c 24 58       	mov    rdi,QWORD PTR [rsp+0x58]
    7c88:	e8 83 ae ff ff       	call   2b10 <free@plt>
    7c8d:	8b 04 24             	mov    eax,DWORD PTR [rsp]
    7c90:	e9 50 ff ff ff       	jmp    7be5 <_asn1_decode_simple_ber+0x95>
    7c95:	0f 1f 00             	nop    DWORD PTR [rax]
    7c98:	48 8d 4c 24 44       	lea    rcx,[rsp+0x44]
    7c9d:	48 8d 54 24 43       	lea    rdx,[rsp+0x43]
    7ca2:	4c 8d 44 24 60       	lea    r8,[rsp+0x60]
    7ca7:	44 89 fe             	mov    esi,r15d
    7caa:	4c 89 ef             	mov    rdi,r13
    7cad:	4c 89 5c 24 10       	mov    QWORD PTR [rsp+0x10],r11
    7cb2:	4c 89 54 24 08       	mov    QWORD PTR [rsp+0x8],r10
    7cb7:	44 89 0c 24          	mov    DWORD PTR [rsp],r9d
    7cbb:	e8 d0 ae ff ff       	call   2b90 <asn1_get_tag_der@plt>
    7cc0:	85 c0                	test   eax,eax
    7cc2:	0f 85 1d ff ff ff    	jne    7be5 <_asn1_decode_simple_ber+0x95>
    7cc8:	41 8b 16             	mov    edx,DWORD PTR [r14]
    7ccb:	b8 04 00 00 00       	mov    eax,0x4
    7cd0:	44 8b 0c 24          	mov    r9d,DWORD PTR [rsp]
    7cd4:	48 3b 54 24 60       	cmp    rdx,QWORD PTR [rsp+0x60]
    7cd9:	4c 8b 54 24 08       	mov    r10,QWORD PTR [rsp+0x8]
    7cde:	4c 8b 5c 24 10       	mov    r11,QWORD PTR [rsp+0x10]
    7ce3:	0f 85 fc fe ff ff    	jne    7be5 <_asn1_decode_simple_ber+0x95>
    7ce9:	4c 63 74 24 44       	movsxd r14,DWORD PTR [rsp+0x44]
    7cee:	45 89 fc             	mov    r12d,r15d
    7cf1:	4c 89 f0             	mov    rax,r14
    7cf4:	4d 01 ee             	add    r14,r13
    7cf7:	41 29 c4             	sub    r12d,eax
    7cfa:	0f 88 71 ff ff ff    	js     7c71 <_asn1_decode_simple_ber+0x121>
    7d00:	48 85 db             	test   rbx,rbx
    7d03:	74 02                	je     7d07 <_asn1_decode_simple_ber+0x1b7>
    7d05:	01 03                	add    DWORD PTR [rbx],eax
    7d07:	f6 84 24 c0 00 00 00 	test   BYTE PTR [rsp+0xc0],0x2
    7d0e:	02 
    7d0f:	0f 85 39 ff ff ff    	jne    7c4e <_asn1_decode_simple_ber+0xfe>
    7d15:	0f b6 44 24 43       	movzx  eax,BYTE PTR [rsp+0x43]
    7d1a:	3c 20                	cmp    al,0x20
    7d1c:	0f 84 2c ff ff ff    	je     7c4e <_asn1_decode_simple_ber+0xfe>
    7d22:	e9 41 ff ff ff       	jmp    7c68 <_asn1_decode_simple_ber+0x118>
    7d27:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    7d2e:	00 00 
    7d30:	f6 84 24 c0 00 00 00 	test   BYTE PTR [rsp+0xc0],0x10
    7d37:	10 
    7d38:	0f 85 25 ff ff ff    	jne    7c63 <_asn1_decode_simple_ber+0x113>
    7d3e:	41 83 fc 00          	cmp    r12d,0x0
    7d42:	0f 84 29 ff ff ff    	je     7c71 <_asn1_decode_simple_ber+0x121>
    7d48:	7e 0a                	jle    7d54 <_asn1_decode_simple_ber+0x204>
    7d4a:	41 80 3e 80          	cmp    BYTE PTR [r14],0x80
    7d4e:	0f 84 1e 02 00 00    	je     7f72 <_asn1_decode_simple_ber+0x422>
    7d54:	48 8d 54 24 48       	lea    rdx,[rsp+0x48]
    7d59:	44 89 e6             	mov    esi,r12d
    7d5c:	4c 89 f7             	mov    rdi,r14
    7d5f:	4c 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],r11
    7d64:	4c 89 14 24          	mov    QWORD PTR [rsp],r10
    7d68:	e8 83 ad ff ff       	call   2af0 <asn1_get_length_ber@plt>
    7d6d:	48 85 c0             	test   rax,rax
    7d70:	49 89 c5             	mov    r13,rax
    7d73:	0f 88 f8 fe ff ff    	js     7c71 <_asn1_decode_simple_ber+0x121>
    7d79:	8b 44 24 48          	mov    eax,DWORD PTR [rsp+0x48]
    7d7d:	41 29 c4             	sub    r12d,eax
    7d80:	0f 88 eb fe ff ff    	js     7c71 <_asn1_decode_simple_ber+0x121>
    7d86:	48 63 d0             	movsxd rdx,eax
    7d89:	4c 8b 14 24          	mov    r10,QWORD PTR [rsp]
    7d8d:	4c 8b 5c 24 08       	mov    r11,QWORD PTR [rsp+0x8]
    7d92:	49 01 d6             	add    r14,rdx
    7d95:	48 85 db             	test   rbx,rbx
    7d98:	74 02                	je     7d9c <_asn1_decode_simple_ber+0x24c>
    7d9a:	01 03                	add    DWORD PTR [rbx],eax
    7d9c:	4d 85 ed             	test   r13,r13
    7d9f:	0f 84 86 01 00 00    	je     7f2b <_asn1_decode_simple_ber+0x3db>
    7da5:	48 8d 44 24 54       	lea    rax,[rsp+0x54]
    7daa:	44 8b bc 24 c0 00 00 	mov    r15d,DWORD PTR [rsp+0xc0]
    7db1:	00 
    7db2:	4c 89 54 24 30       	mov    QWORD PTR [rsp+0x30],r10
    7db7:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    7dbc:	48 8d 44 24 50       	lea    rax,[rsp+0x50]
    7dc1:	4c 89 5c 24 38       	mov    QWORD PTR [rsp+0x38],r11
    7dc6:	41 83 e7 04          	and    r15d,0x4
    7dca:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    7dce:	48 8d 44 24 68       	lea    rax,[rsp+0x68]
    7dd3:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
    7dd8:	8b 84 24 c0 00 00 00 	mov    eax,DWORD PTR [rsp+0xc0]
    7ddf:	83 e0 08             	and    eax,0x8
    7de2:	89 44 24 1c          	mov    DWORD PTR [rsp+0x1c],eax
    7de6:	48 8d 44 24 4c       	lea    rax,[rsp+0x4c]
    7deb:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
    7df0:	48 8d 44 24 58       	lea    rax,[rsp+0x58]
    7df5:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
    7dfa:	eb 17                	jmp    7e13 <_asn1_decode_simple_ber+0x2c3>
    7dfc:	e8 0f ad ff ff       	call   2b10 <free@plt>
    7e01:	4d 85 ed             	test   r13,r13
    7e04:	48 c7 44 24 68 00 00 	mov    QWORD PTR [rsp+0x68],0x0
    7e0b:	00 00 
    7e0d:	0f 84 94 02 00 00    	je     80a7 <_asn1_decode_simple_ber+0x557>
    7e13:	45 85 ff             	test   r15d,r15d
    7e16:	b8 09 00 00 00       	mov    eax,0x9
    7e1b:	75 0d                	jne    7e2a <_asn1_decode_simple_ber+0x2da>
    7e1d:	83 7c 24 1c 01       	cmp    DWORD PTR [rsp+0x1c],0x1
    7e22:	19 c0                	sbb    eax,eax
    7e24:	83 e0 f4             	and    eax,0xfffffff4
    7e27:	83 c0 11             	add    eax,0x11
    7e2a:	48 83 ec 08          	sub    rsp,0x8
    7e2e:	44 89 e2             	mov    edx,r12d
    7e31:	4c 89 f6             	mov    rsi,r14
    7e34:	50                   	push   rax
    7e35:	4c 8b 4c 24 18       	mov    r9,QWORD PTR [rsp+0x18]
    7e3a:	89 ef                	mov    edi,ebp
    7e3c:	4c 8b 44 24 10       	mov    r8,QWORD PTR [rsp+0x10]
    7e41:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
    7e46:	e8 05 fd ff ff       	call   7b50 <_asn1_decode_simple_ber>
    7e4b:	48 98                	cdqe   
    7e4d:	48 85 c0             	test   rax,rax
    7e50:	5a                   	pop    rdx
    7e51:	59                   	pop    rcx
    7e52:	0f 85 1e fe ff ff    	jne    7c76 <_asn1_decode_simple_ber+0x126>
    7e58:	8b 54 24 54          	mov    edx,DWORD PTR [rsp+0x54]
    7e5c:	49 01 d6             	add    r14,rdx
    7e5f:	41 29 d4             	sub    r12d,edx
    7e62:	0f 88 d9 00 00 00    	js     7f41 <_asn1_decode_simple_ber+0x3f1>
    7e68:	49 29 d5             	sub    r13,rdx
    7e6b:	0f 88 d0 00 00 00    	js     7f41 <_asn1_decode_simple_ber+0x3f1>
    7e71:	48 85 db             	test   rbx,rbx
    7e74:	74 02                	je     7e78 <_asn1_decode_simple_ber+0x328>
    7e76:	01 13                	add    DWORD PTR [rbx],edx
    7e78:	8b 4c 24 50          	mov    ecx,DWORD PTR [rsp+0x50]
    7e7c:	48 8b 7c 24 68       	mov    rdi,QWORD PTR [rsp+0x68]
    7e81:	85 c9                	test   ecx,ecx
    7e83:	0f 84 73 ff ff ff    	je     7dfc <_asn1_decode_simple_ber+0x2ac>
    7e89:	48 89 fa             	mov    rdx,rdi
    7e8c:	48 8b 74 24 20       	mov    rsi,QWORD PTR [rsp+0x20]
    7e91:	48 8b 7c 24 28       	mov    rdi,QWORD PTR [rsp+0x28]
    7e96:	e8 c5 f2 ff ff       	call   7160 <append.part.1>
    7e9b:	48 98                	cdqe   
    7e9d:	48 85 c0             	test   rax,rax
    7ea0:	0f 85 d0 fd ff ff    	jne    7c76 <_asn1_decode_simple_ber+0x126>
    7ea6:	48 8b 7c 24 68       	mov    rdi,QWORD PTR [rsp+0x68]
    7eab:	e9 4c ff ff ff       	jmp    7dfc <_asn1_decode_simple_ber+0x2ac>
    7eb0:	48 85 db             	test   rbx,rbx
    7eb3:	74 35                	je     7eea <_asn1_decode_simple_ber+0x39a>
    7eb5:	48 8d 54 24 48       	lea    rdx,[rsp+0x48]
    7eba:	44 89 e6             	mov    esi,r12d
    7ebd:	4c 89 f7             	mov    rdi,r14
    7ec0:	4c 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],r11
    7ec5:	4c 89 14 24          	mov    QWORD PTR [rsp],r10
    7ec9:	e8 d2 ae ff ff       	call   2da0 <asn1_get_length_der@plt>
    7ece:	48 85 c0             	test   rax,rax
    7ed1:	0f 88 9a fd ff ff    	js     7c71 <_asn1_decode_simple_ber+0x121>
    7ed7:	8b 54 24 48          	mov    edx,DWORD PTR [rsp+0x48]
    7edb:	03 13                	add    edx,DWORD PTR [rbx]
    7edd:	4c 8b 5c 24 08       	mov    r11,QWORD PTR [rsp+0x8]
    7ee2:	4c 8b 14 24          	mov    r10,QWORD PTR [rsp]
    7ee6:	01 d0                	add    eax,edx
    7ee8:	89 03                	mov    DWORD PTR [rbx],eax
    7eea:	44 8b 8c 24 c0 00 00 	mov    r9d,DWORD PTR [rsp+0xc0]
    7ef1:	00 
    7ef2:	48 8d 4c 24 70       	lea    rcx,[rsp+0x70]
    7ef7:	4c 8d 44 24 50       	lea    r8,[rsp+0x50]
    7efc:	44 89 fa             	mov    edx,r15d
    7eff:	4c 89 ee             	mov    rsi,r13
    7f02:	89 ef                	mov    edi,ebp
    7f04:	4c 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],r11
    7f09:	4c 89 14 24          	mov    QWORD PTR [rsp],r10
    7f0d:	e8 ce f5 ff ff       	call   74e0 <_asn1_decode_simple_der>
    7f12:	85 c0                	test   eax,eax
    7f14:	0f 85 5c fd ff ff    	jne    7c76 <_asn1_decode_simple_ber+0x126>
    7f1a:	8b 4c 24 50          	mov    ecx,DWORD PTR [rsp+0x50]
    7f1e:	4c 8b 14 24          	mov    r10,QWORD PTR [rsp]
    7f22:	4c 8b 5c 24 08       	mov    r11,QWORD PTR [rsp+0x8]
    7f27:	85 c9                	test   ecx,ecx
    7f29:	75 20                	jne    7f4b <_asn1_decode_simple_ber+0x3fb>
    7f2b:	48 8b 44 24 58       	mov    rax,QWORD PTR [rsp+0x58]
    7f30:	49 89 02             	mov    QWORD PTR [r10],rax
    7f33:	8b 44 24 4c          	mov    eax,DWORD PTR [rsp+0x4c]
    7f37:	41 89 03             	mov    DWORD PTR [r11],eax
    7f3a:	31 c0                	xor    eax,eax
    7f3c:	e9 a4 fc ff ff       	jmp    7be5 <_asn1_decode_simple_ber+0x95>
    7f41:	b8 04 00 00 00       	mov    eax,0x4
    7f46:	e9 2b fd ff ff       	jmp    7c76 <_asn1_decode_simple_ber+0x126>
    7f4b:	48 8b 54 24 70       	mov    rdx,QWORD PTR [rsp+0x70]
    7f50:	48 8d 74 24 4c       	lea    rsi,[rsp+0x4c]
    7f55:	48 8d 7c 24 58       	lea    rdi,[rsp+0x58]
    7f5a:	e8 01 f2 ff ff       	call   7160 <append.part.1>
    7f5f:	85 c0                	test   eax,eax
    7f61:	4c 8b 14 24          	mov    r10,QWORD PTR [rsp]
    7f65:	4c 8b 5c 24 08       	mov    r11,QWORD PTR [rsp+0x8]
    7f6a:	0f 85 06 fd ff ff    	jne    7c76 <_asn1_decode_simple_ber+0x126>
    7f70:	eb b9                	jmp    7f2b <_asn1_decode_simple_ber+0x3db>
    7f72:	41 83 ec 01          	sub    r12d,0x1
    7f76:	48 85 db             	test   rbx,rbx
    7f79:	c7 44 24 48 01 00 00 	mov    DWORD PTR [rsp+0x48],0x1
    7f80:	00 
    7f81:	4d 8d 6e 01          	lea    r13,[r14+0x1]
    7f85:	74 03                	je     7f8a <_asn1_decode_simple_ber+0x43a>
    7f87:	83 03 01             	add    DWORD PTR [rbx],0x1
    7f8a:	48 8d 44 24 54       	lea    rax,[rsp+0x54]
    7f8f:	44 8b b4 24 c0 00 00 	mov    r14d,DWORD PTR [rsp+0xc0]
    7f96:	00 
    7f97:	4c 8d 7c 24 4c       	lea    r15,[rsp+0x4c]
    7f9c:	4c 89 54 24 28       	mov    QWORD PTR [rsp+0x28],r10
    7fa1:	4c 89 5c 24 30       	mov    QWORD PTR [rsp+0x30],r11
    7fa6:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    7fab:	48 8d 44 24 50       	lea    rax,[rsp+0x50]
    7fb0:	41 83 e6 04          	and    r14d,0x4
    7fb4:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    7fb8:	48 8d 44 24 68       	lea    rax,[rsp+0x68]
    7fbd:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
    7fc2:	8b 84 24 c0 00 00 00 	mov    eax,DWORD PTR [rsp+0xc0]
    7fc9:	83 e0 08             	and    eax,0x8
    7fcc:	89 44 24 1c          	mov    DWORD PTR [rsp+0x1c],eax
    7fd0:	48 8d 44 24 58       	lea    rax,[rsp+0x58]
    7fd5:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
    7fda:	eb 2a                	jmp    8006 <_asn1_decode_simple_ber+0x4b6>
    7fdc:	e8 2f ab ff ff       	call   2b10 <free@plt>
    7fe1:	48 c7 44 24 68 00 00 	mov    QWORD PTR [rsp+0x68],0x0
    7fe8:	00 00 
    7fea:	41 80 7d 00 00       	cmp    BYTE PTR [r13+0x0],0x0
    7fef:	75 0b                	jne    7ffc <_asn1_decode_simple_ber+0x4ac>
    7ff1:	41 80 7d 01 00       	cmp    BYTE PTR [r13+0x1],0x0
    7ff6:	0f 84 ba 00 00 00    	je     80b6 <_asn1_decode_simple_ber+0x566>
    7ffc:	41 83 fc 02          	cmp    r12d,0x2
    8000:	0f 84 3b ff ff ff    	je     7f41 <_asn1_decode_simple_ber+0x3f1>
    8006:	45 85 f6             	test   r14d,r14d
    8009:	b8 09 00 00 00       	mov    eax,0x9
    800e:	75 0d                	jne    801d <_asn1_decode_simple_ber+0x4cd>
    8010:	83 7c 24 1c 01       	cmp    DWORD PTR [rsp+0x1c],0x1
    8015:	19 c0                	sbb    eax,eax
    8017:	83 e0 f4             	and    eax,0xfffffff4
    801a:	83 c0 11             	add    eax,0x11
    801d:	48 83 ec 08          	sub    rsp,0x8
    8021:	4c 89 ee             	mov    rsi,r13
    8024:	89 ef                	mov    edi,ebp
    8026:	50                   	push   rax
    8027:	4c 8b 4c 24 18       	mov    r9,QWORD PTR [rsp+0x18]
    802c:	44 89 e2             	mov    edx,r12d
    802f:	4c 8b 44 24 10       	mov    r8,QWORD PTR [rsp+0x10]
    8034:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
    8039:	e8 12 fb ff ff       	call   7b50 <_asn1_decode_simple_ber>
    803e:	48 98                	cdqe   
    8040:	48 85 c0             	test   rax,rax
    8043:	5e                   	pop    rsi
    8044:	5f                   	pop    rdi
    8045:	0f 85 2b fc ff ff    	jne    7c76 <_asn1_decode_simple_ber+0x126>
    804b:	8b 54 24 54          	mov    edx,DWORD PTR [rsp+0x54]
    804f:	49 01 d5             	add    r13,rdx
    8052:	41 29 d4             	sub    r12d,edx
    8055:	0f 88 e6 fe ff ff    	js     7f41 <_asn1_decode_simple_ber+0x3f1>
    805b:	48 85 db             	test   rbx,rbx
    805e:	74 02                	je     8062 <_asn1_decode_simple_ber+0x512>
    8060:	01 13                	add    DWORD PTR [rbx],edx
    8062:	41 83 fc 01          	cmp    r12d,0x1
    8066:	0f 8e d5 fe ff ff    	jle    7f41 <_asn1_decode_simple_ber+0x3f1>
    806c:	8b 4c 24 50          	mov    ecx,DWORD PTR [rsp+0x50]
    8070:	48 8b 7c 24 68       	mov    rdi,QWORD PTR [rsp+0x68]
    8075:	85 c9                	test   ecx,ecx
    8077:	0f 84 5f ff ff ff    	je     7fdc <_asn1_decode_simple_ber+0x48c>
    807d:	48 89 fa             	mov    rdx,rdi
    8080:	48 8b 7c 24 20       	mov    rdi,QWORD PTR [rsp+0x20]
    8085:	4c 89 fe             	mov    rsi,r15
    8088:	e8 d3 f0 ff ff       	call   7160 <append.part.1>
    808d:	48 98                	cdqe   
    808f:	48 85 c0             	test   rax,rax
    8092:	0f 85 de fb ff ff    	jne    7c76 <_asn1_decode_simple_ber+0x126>
    8098:	48 8b 7c 24 68       	mov    rdi,QWORD PTR [rsp+0x68]
    809d:	e9 3a ff ff ff       	jmp    7fdc <_asn1_decode_simple_ber+0x48c>
    80a2:	e8 29 ab ff ff       	call   2bd0 <__stack_chk_fail@plt>
    80a7:	4c 8b 54 24 30       	mov    r10,QWORD PTR [rsp+0x30]
    80ac:	4c 8b 5c 24 38       	mov    r11,QWORD PTR [rsp+0x38]
    80b1:	e9 75 fe ff ff       	jmp    7f2b <_asn1_decode_simple_ber+0x3db>
    80b6:	48 85 db             	test   rbx,rbx
    80b9:	4c 8b 54 24 28       	mov    r10,QWORD PTR [rsp+0x28]
    80be:	4c 8b 5c 24 30       	mov    r11,QWORD PTR [rsp+0x30]
    80c3:	0f 84 62 fe ff ff    	je     7f2b <_asn1_decode_simple_ber+0x3db>
    80c9:	83 03 02             	add    DWORD PTR [rbx],0x2
    80cc:	e9 5a fe ff ff       	jmp    7f2b <_asn1_decode_simple_ber+0x3db>
    80d1:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    80d6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    80dd:	00 00 00 

00000000000080e0 <asn1_get_octet_der>:
    80e0:	55                   	push   rbp
    80e1:	53                   	push   rbx
    80e2:	48 83 ec 38          	sub    rsp,0x38
    80e6:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    80ed:	00 00 
    80ef:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
    80f4:	31 c0                	xor    eax,eax
    80f6:	85 f6                	test   esi,esi
    80f8:	c7 44 24 24 00 00 00 	mov    DWORD PTR [rsp+0x24],0x0
    80ff:	00 
    8100:	b8 06 00 00 00       	mov    eax,0x6
    8105:	7f 21                	jg     8128 <asn1_get_octet_der+0x48>
    8107:	48 8b 7c 24 28       	mov    rdi,QWORD PTR [rsp+0x28]
    810c:	64 48 33 3c 25 28 00 	xor    rdi,QWORD PTR fs:0x28
    8113:	00 00 
    8115:	0f 85 8c 00 00 00    	jne    81a7 <asn1_get_octet_der+0xc7>
    811b:	48 83 c4 38          	add    rsp,0x38
    811f:	5b                   	pop    rbx
    8120:	5d                   	pop    rbp
    8121:	c3                   	ret    
    8122:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    8128:	48 89 d5             	mov    rbp,rdx
    812b:	48 8d 54 24 24       	lea    rdx,[rsp+0x24]
    8130:	4c 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],r9
    8135:	48 89 fb             	mov    rbx,rdi
    8138:	44 89 44 24 1c       	mov    DWORD PTR [rsp+0x1c],r8d
    813d:	48 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],rcx
    8142:	e8 59 ac ff ff       	call   2da0 <asn1_get_length_der@plt>
    8147:	4c 8b 4c 24 08       	mov    r9,QWORD PTR [rsp+0x8]
    814c:	48 89 c2             	mov    rdx,rax
    814f:	85 d2                	test   edx,edx
    8151:	41 89 01             	mov    DWORD PTR [r9],eax
    8154:	b8 04 00 00 00       	mov    eax,0x4
    8159:	78 ac                	js     8107 <asn1_get_octet_der+0x27>
    815b:	48 63 74 24 24       	movsxd rsi,DWORD PTR [rsp+0x24]
    8160:	44 8b 44 24 1c       	mov    r8d,DWORD PTR [rsp+0x1c]
    8165:	b8 0c 00 00 00       	mov    eax,0xc
    816a:	48 8b 4c 24 10       	mov    rcx,QWORD PTR [rsp+0x10]
    816f:	01 f2                	add    edx,esi
    8171:	89 55 00             	mov    DWORD PTR [rbp+0x0],edx
    8174:	49 63 11             	movsxd rdx,DWORD PTR [r9]
    8177:	44 39 c2             	cmp    edx,r8d
    817a:	7f 8b                	jg     8107 <asn1_get_octet_der+0x27>
    817c:	48 85 c9             	test   rcx,rcx
    817f:	74 1f                	je     81a0 <asn1_get_octet_der+0xc0>
    8181:	85 d2                	test   edx,edx
    8183:	7e 1b                	jle    81a0 <asn1_get_octet_der+0xc0>
    8185:	48 01 de             	add    rsi,rbx
    8188:	48 89 cf             	mov    rdi,rcx
    818b:	e8 60 ab ff ff       	call   2cf0 <memcpy@plt>
    8190:	31 c0                	xor    eax,eax
    8192:	e9 70 ff ff ff       	jmp    8107 <asn1_get_octet_der+0x27>
    8197:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    819e:	00 00 
    81a0:	31 c0                	xor    eax,eax
    81a2:	e9 60 ff ff ff       	jmp    8107 <asn1_get_octet_der+0x27>
    81a7:	e8 24 aa ff ff       	call   2bd0 <__stack_chk_fail@plt>
    81ac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000000081b0 <asn1_get_object_id_der>:
    81b0:	41 57                	push   r15
    81b2:	41 56                	push   r14
    81b4:	41 55                	push   r13
    81b6:	41 54                	push   r12
    81b8:	49 89 fc             	mov    r12,rdi
    81bb:	55                   	push   rbp
    81bc:	53                   	push   rbx
    81bd:	89 f5                	mov    ebp,esi
    81bf:	48 89 d3             	mov    rbx,rdx
    81c2:	48 83 ec 58          	sub    rsp,0x58
    81c6:	c7 02 00 00 00 00    	mov    DWORD PTR [rdx],0x0
    81cc:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    81d3:	00 00 
    81d5:	48 89 44 24 48       	mov    QWORD PTR [rsp+0x48],rax
    81da:	31 c0                	xor    eax,eax
    81dc:	48 85 c9             	test   rcx,rcx
    81df:	74 08                	je     81e9 <asn1_get_object_id_der+0x39>
    81e1:	45 85 c0             	test   r8d,r8d
    81e4:	7e 03                	jle    81e9 <asn1_get_object_id_der+0x39>
    81e6:	c6 01 00             	mov    BYTE PTR [rcx],0x0
    81e9:	48 85 c9             	test   rcx,rcx
    81ec:	74 04                	je     81f2 <asn1_get_object_id_der+0x42>
    81ee:	85 ed                	test   ebp,ebp
    81f0:	7f 2e                	jg     8220 <asn1_get_object_id_der+0x70>
    81f2:	b8 06 00 00 00       	mov    eax,0x6
    81f7:	48 8b 7c 24 48       	mov    rdi,QWORD PTR [rsp+0x48]
    81fc:	64 48 33 3c 25 28 00 	xor    rdi,QWORD PTR fs:0x28
    8203:	00 00 
    8205:	0f 85 67 02 00 00    	jne    8472 <asn1_get_object_id_der+0x2c2>
    820b:	48 83 c4 58          	add    rsp,0x58
    820f:	5b                   	pop    rbx
    8210:	5d                   	pop    rbp
    8211:	41 5c                	pop    r12
    8213:	41 5d                	pop    r13
    8215:	41 5e                	pop    r14
    8217:	41 5f                	pop    r15
    8219:	c3                   	ret    
    821a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    8220:	48 8d 54 24 2c       	lea    rdx,[rsp+0x2c]
    8225:	89 ee                	mov    esi,ebp
    8227:	4c 89 e7             	mov    rdi,r12
    822a:	44 89 44 24 18       	mov    DWORD PTR [rsp+0x18],r8d
    822f:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    8234:	e8 67 ab ff ff       	call   2da0 <asn1_get_length_der@plt>
    8239:	85 c0                	test   eax,eax
    823b:	49 89 c5             	mov    r13,rax
    823e:	41 89 c2             	mov    r10d,eax
    8241:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    8246:	44 8b 44 24 18       	mov    r8d,DWORD PTR [rsp+0x18]
    824b:	7e 0d                	jle    825a <asn1_get_object_id_der+0xaa>
    824d:	48 63 44 24 2c       	movsxd rax,DWORD PTR [rsp+0x2c]
    8252:	42 8d 14 28          	lea    edx,[rax+r13*1]
    8256:	39 d5                	cmp    ebp,edx
    8258:	7d 0e                	jge    8268 <asn1_get_object_id_der+0xb8>
    825a:	b8 04 00 00 00       	mov    eax,0x4
    825f:	eb 96                	jmp    81f7 <asn1_get_object_id_der+0x47>
    8261:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    8268:	41 0f b6 14 04       	movzx  edx,BYTE PTR [r12+rax*1]
    826d:	80 fa 80             	cmp    dl,0x80
    8270:	74 e8                	je     825a <asn1_get_object_id_der+0xaa>
    8272:	49 89 d6             	mov    r14,rdx
    8275:	41 83 e6 7f          	and    r14d,0x7f
    8279:	84 d2                	test   dl,dl
    827b:	0f 89 e9 01 00 00    	jns    846a <asn1_get_object_id_der+0x2ba>
    8281:	41 83 fd 01          	cmp    r13d,0x1
    8285:	49 8d 44 04 01       	lea    rax,[r12+rax*1+0x1]
    828a:	41 bf 01 00 00 00    	mov    r15d,0x1
    8290:	48 bf ff ff ff ff ff 	movabs rdi,0x1ffffffffffffff
    8297:	ff ff 01 
    829a:	75 11                	jne    82ad <asn1_get_object_id_der+0xfd>
    829c:	e9 c1 01 00 00       	jmp    8462 <asn1_get_object_id_der+0x2b2>
    82a1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    82a8:	49 39 fe             	cmp    r14,rdi
    82ab:	77 ad                	ja     825a <asn1_get_object_id_der+0xaa>
    82ad:	0f b6 10             	movzx  edx,BYTE PTR [rax]
    82b0:	49 c1 e6 07          	shl    r14,0x7
    82b4:	48 89 d6             	mov    rsi,rdx
    82b7:	83 e6 7f             	and    esi,0x7f
    82ba:	49 09 f6             	or     r14,rsi
    82bd:	84 d2                	test   dl,dl
    82bf:	79 0d                	jns    82ce <asn1_get_object_id_der+0x11e>
    82c1:	41 83 c7 01          	add    r15d,0x1
    82c5:	48 83 c0 01          	add    rax,0x1
    82c9:	45 39 fa             	cmp    r10d,r15d
    82cc:	75 da                	jne    82a8 <asn1_get_object_id_der+0xf8>
    82ce:	41 83 c7 01          	add    r15d,0x1
    82d2:	31 ff                	xor    edi,edi
    82d4:	49 83 fe 27          	cmp    r14,0x27
    82d8:	76 17                	jbe    82f1 <asn1_get_object_id_der+0x141>
    82da:	49 8d 46 d8          	lea    rax,[r14-0x28]
    82de:	48 83 f8 27          	cmp    rax,0x27
    82e2:	0f 86 6d 01 00 00    	jbe    8455 <asn1_get_object_id_der+0x2a5>
    82e8:	49 83 ee 50          	sub    r14,0x50
    82ec:	bf 02 00 00 00       	mov    edi,0x2
    82f1:	48 8d 44 24 30       	lea    rax,[rsp+0x30]
    82f6:	44 89 54 24 18       	mov    DWORD PTR [rsp+0x18],r10d
    82fb:	44 89 44 24 1c       	mov    DWORD PTR [rsp+0x1c],r8d
    8300:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    8305:	48 89 c6             	mov    rsi,rax
    8308:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
    830d:	e8 5e 36 00 00       	call   b970 <_asn1_ltostr>
    8312:	48 63 6c 24 1c       	movsxd rbp,DWORD PTR [rsp+0x1c]
    8317:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    831c:	48 89 c2             	mov    rdx,rax
    831f:	48 89 cf             	mov    rdi,rcx
    8322:	48 89 ee             	mov    rsi,rbp
    8325:	e8 a6 2d 00 00       	call   b0d0 <_asn1_str_cpy>
    832a:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    832f:	48 8d 15 66 79 00 00 	lea    rdx,[rip+0x7966]        # fc9c <bit_mask+0x1ac>
    8336:	48 89 ee             	mov    rsi,rbp
    8339:	48 89 cf             	mov    rdi,rcx
    833c:	e8 0f 2d 00 00       	call   b050 <_asn1_str_cat>
    8341:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
    8346:	4c 89 f7             	mov    rdi,r14
    8349:	45 31 f6             	xor    r14d,r14d
    834c:	e8 1f 36 00 00       	call   b970 <_asn1_ltostr>
    8351:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    8356:	48 89 ee             	mov    rsi,rbp
    8359:	48 89 c2             	mov    rdx,rax
    835c:	48 89 cf             	mov    rdi,rcx
    835f:	e8 ec 2c 00 00       	call   b050 <_asn1_str_cat>
    8364:	45 39 fd             	cmp    r13d,r15d
    8367:	be 01 00 00 00       	mov    esi,0x1
    836c:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    8371:	44 8b 54 24 18       	mov    r10d,DWORD PTR [rsp+0x18]
    8376:	0f 8e b3 00 00 00    	jle    842f <asn1_get_object_id_der+0x27f>
    837c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    8380:	85 f6                	test   esi,esi
    8382:	74 15                	je     8399 <asn1_get_object_id_der+0x1e9>
    8384:	8b 54 24 2c          	mov    edx,DWORD PTR [rsp+0x2c]
    8388:	44 01 fa             	add    edx,r15d
    838b:	48 63 d2             	movsxd rdx,edx
    838e:	41 80 3c 14 80       	cmp    BYTE PTR [r12+rdx*1],0x80
    8393:	0f 84 c1 fe ff ff    	je     825a <asn1_get_object_id_der+0xaa>
    8399:	48 b8 ff ff ff ff ff 	movabs rax,0x1ffffffffffffff
    83a0:	ff ff 01 
    83a3:	49 39 c6             	cmp    r14,rax
    83a6:	0f 87 ae fe ff ff    	ja     825a <asn1_get_object_id_der+0xaa>
    83ac:	8b 54 24 2c          	mov    edx,DWORD PTR [rsp+0x2c]
    83b0:	4c 89 f0             	mov    rax,r14
    83b3:	48 c1 e0 07          	shl    rax,0x7
    83b7:	44 01 fa             	add    edx,r15d
    83ba:	48 63 d2             	movsxd rdx,edx
    83bd:	41 0f b6 14 14       	movzx  edx,BYTE PTR [r12+rdx*1]
    83c2:	48 89 d6             	mov    rsi,rdx
    83c5:	83 e6 7f             	and    esi,0x7f
    83c8:	48 09 c6             	or     rsi,rax
    83cb:	49 89 f6             	mov    r14,rsi
    83ce:	31 f6                	xor    esi,esi
    83d0:	84 d2                	test   dl,dl
    83d2:	78 4e                	js     8422 <asn1_get_object_id_der+0x272>
    83d4:	48 8d 15 c1 78 00 00 	lea    rdx,[rip+0x78c1]        # fc9c <bit_mask+0x1ac>
    83db:	48 89 cf             	mov    rdi,rcx
    83de:	48 89 ee             	mov    rsi,rbp
    83e1:	44 89 54 24 18       	mov    DWORD PTR [rsp+0x18],r10d
    83e6:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    83eb:	e8 60 2c 00 00       	call   b050 <_asn1_str_cat>
    83f0:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
    83f5:	4c 89 f7             	mov    rdi,r14
    83f8:	45 31 f6             	xor    r14d,r14d
    83fb:	e8 70 35 00 00       	call   b970 <_asn1_ltostr>
    8400:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    8405:	48 89 ee             	mov    rsi,rbp
    8408:	48 89 c2             	mov    rdx,rax
    840b:	48 89 cf             	mov    rdi,rcx
    840e:	e8 3d 2c 00 00       	call   b050 <_asn1_str_cat>
    8413:	44 8b 54 24 18       	mov    r10d,DWORD PTR [rsp+0x18]
    8418:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    841d:	be 01 00 00 00       	mov    esi,0x1
    8422:	41 83 c7 01          	add    r15d,0x1
    8426:	45 39 fa             	cmp    r10d,r15d
    8429:	0f 85 51 ff ff ff    	jne    8380 <asn1_get_object_id_der+0x1d0>
    842f:	8b 44 24 2c          	mov    eax,DWORD PTR [rsp+0x2c]
    8433:	85 c0                	test   eax,eax
    8435:	78 10                	js     8447 <asn1_get_object_id_der+0x297>
    8437:	ba ff ff ff 7f       	mov    edx,0x7fffffff
    843c:	29 c2                	sub    edx,eax
    843e:	41 39 d5             	cmp    r13d,edx
    8441:	0f 8f 13 fe ff ff    	jg     825a <asn1_get_object_id_der+0xaa>
    8447:	46 8d 0c 28          	lea    r9d,[rax+r13*1]
    844b:	31 c0                	xor    eax,eax
    844d:	44 89 0b             	mov    DWORD PTR [rbx],r9d
    8450:	e9 a2 fd ff ff       	jmp    81f7 <asn1_get_object_id_der+0x47>
    8455:	49 89 c6             	mov    r14,rax
    8458:	bf 01 00 00 00       	mov    edi,0x1
    845d:	e9 8f fe ff ff       	jmp    82f1 <asn1_get_object_id_der+0x141>
    8462:	45 89 ef             	mov    r15d,r13d
    8465:	e9 64 fe ff ff       	jmp    82ce <asn1_get_object_id_der+0x11e>
    846a:	45 31 ff             	xor    r15d,r15d
    846d:	e9 5c fe ff ff       	jmp    82ce <asn1_get_object_id_der+0x11e>
    8472:	e8 59 a7 ff ff       	call   2bd0 <__stack_chk_fail@plt>
    8477:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    847e:	00 00 

0000000000008480 <asn1_get_bit_der>:
    8480:	55                   	push   rbp
    8481:	53                   	push   rbx
    8482:	48 83 ec 38          	sub    rsp,0x38
    8486:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    848d:	00 00 
    848f:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
    8494:	31 c0                	xor    eax,eax
    8496:	85 f6                	test   esi,esi
    8498:	c7 44 24 24 00 00 00 	mov    DWORD PTR [rsp+0x24],0x0
    849f:	00 
    84a0:	b8 06 00 00 00       	mov    eax,0x6
    84a5:	7f 21                	jg     84c8 <asn1_get_bit_der+0x48>
    84a7:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
    84ac:	64 48 33 1c 25 28 00 	xor    rbx,QWORD PTR fs:0x28
    84b3:	00 00 
    84b5:	0f 85 ac 00 00 00    	jne    8567 <asn1_get_bit_der+0xe7>
    84bb:	48 83 c4 38          	add    rsp,0x38
    84bf:	5b                   	pop    rbx
    84c0:	5d                   	pop    rbp
    84c1:	c3                   	ret    
    84c2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    84c8:	48 89 d5             	mov    rbp,rdx
    84cb:	48 8d 54 24 24       	lea    rdx,[rsp+0x24]
    84d0:	4c 89 4c 24 18       	mov    QWORD PTR [rsp+0x18],r9
    84d5:	44 89 44 24 14       	mov    DWORD PTR [rsp+0x14],r8d
    84da:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
    84df:	48 89 fb             	mov    rbx,rdi
    84e2:	e8 b9 a8 ff ff       	call   2da0 <asn1_get_length_der@plt>
    84e7:	89 c2                	mov    edx,eax
    84e9:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    84ee:	44 8b 44 24 14       	mov    r8d,DWORD PTR [rsp+0x14]
    84f3:	83 ea 01             	sub    edx,0x1
    84f6:	4c 8b 4c 24 18       	mov    r9,QWORD PTR [rsp+0x18]
    84fb:	78 53                	js     8550 <asn1_get_bit_der+0xd0>
    84fd:	8b 44 24 24          	mov    eax,DWORD PTR [rsp+0x24]
    8501:	8d 74 02 01          	lea    esi,[rdx+rax*1+0x1]
    8505:	89 75 00             	mov    DWORD PTR [rbp+0x0],esi
    8508:	48 63 f0             	movsxd rsi,eax
    850b:	8d 04 d5 00 00 00 00 	lea    eax,[rdx*8+0x0]
    8512:	0f b6 3c 33          	movzx  edi,BYTE PTR [rbx+rsi*1]
    8516:	29 f8                	sub    eax,edi
    8518:	85 c0                	test   eax,eax
    851a:	41 89 01             	mov    DWORD PTR [r9],eax
    851d:	78 31                	js     8550 <asn1_get_bit_der+0xd0>
    851f:	44 39 c2             	cmp    edx,r8d
    8522:	b8 0c 00 00 00       	mov    eax,0xc
    8527:	0f 8f 7a ff ff ff    	jg     84a7 <asn1_get_bit_der+0x27>
    852d:	85 d2                	test   edx,edx
    852f:	7e 2f                	jle    8560 <asn1_get_bit_der+0xe0>
    8531:	48 85 c9             	test   rcx,rcx
    8534:	74 2a                	je     8560 <asn1_get_bit_der+0xe0>
    8536:	48 8d 74 33 01       	lea    rsi,[rbx+rsi*1+0x1]
    853b:	48 63 d2             	movsxd rdx,edx
    853e:	48 89 cf             	mov    rdi,rcx
    8541:	e8 aa a7 ff ff       	call   2cf0 <memcpy@plt>
    8546:	31 c0                	xor    eax,eax
    8548:	e9 5a ff ff ff       	jmp    84a7 <asn1_get_bit_der+0x27>
    854d:	0f 1f 00             	nop    DWORD PTR [rax]
    8550:	b8 04 00 00 00       	mov    eax,0x4
    8555:	e9 4d ff ff ff       	jmp    84a7 <asn1_get_bit_der+0x27>
    855a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    8560:	31 c0                	xor    eax,eax
    8562:	e9 40 ff ff ff       	jmp    84a7 <asn1_get_bit_der+0x27>
    8567:	e8 64 a6 ff ff       	call   2bd0 <__stack_chk_fail@plt>
    856c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000008570 <asn1_der_decoding2>:
    8570:	41 57                	push   r15
    8572:	41 56                	push   r14
    8574:	41 55                	push   r13
    8576:	41 54                	push   r12
    8578:	55                   	push   rbp
    8579:	53                   	push   rbx
    857a:	48 81 ec 38 01 00 00 	sub    rsp,0x138
    8581:	64 48 8b 1c 25 28 00 	mov    rbx,QWORD PTR fs:0x28
    8588:	00 00 
    858a:	48 89 9c 24 28 01 00 	mov    QWORD PTR [rsp+0x128],rbx
    8591:	00 
    8592:	31 db                	xor    ebx,ebx
    8594:	48 89 34 24          	mov    QWORD PTR [rsp],rsi
    8598:	48 8b 1f             	mov    rbx,QWORD PTR [rdi]
    859b:	4d 85 c0             	test   r8,r8
    859e:	8b 32                	mov    esi,DWORD PTR [rdx]
    85a0:	48 89 7c 24 18       	mov    QWORD PTR [rsp+0x18],rdi
    85a5:	48 89 54 24 28       	mov    QWORD PTR [rsp+0x28],rdx
    85aa:	89 4c 24 40          	mov    DWORD PTR [rsp+0x40],ecx
    85ae:	4c 89 44 24 30       	mov    QWORD PTR [rsp+0x30],r8
    85b3:	48 c7 84 24 90 00 00 	mov    QWORD PTR [rsp+0x90],0x0
    85ba:	00 00 00 00 00 
    85bf:	48 c7 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],0x0
    85c6:	00 00 00 00 00 
    85cb:	89 74 24 0c          	mov    DWORD PTR [rsp+0xc],esi
    85cf:	48 89 5c 24 10       	mov    QWORD PTR [rsp+0x10],rbx
    85d4:	74 04                	je     85da <asn1_der_decoding2+0x6a>
    85d6:	41 c6 00 00          	mov    BYTE PTR [r8],0x0
    85da:	48 8b 5c 24 10       	mov    rbx,QWORD PTR [rsp+0x10]
    85df:	b8 02 00 00 00       	mov    eax,0x2
    85e4:	48 85 db             	test   rbx,rbx
    85e7:	0f 84 16 03 00 00    	je     8903 <asn1_der_decoding2+0x393>
    85ed:	8b 43 48             	mov    eax,DWORD PTR [rbx+0x48]
    85f0:	f6 c4 40             	test   ah,0x40
    85f3:	0f 85 c7 08 00 00    	jne    8ec0 <asn1_der_decoding2+0x950>
    85f9:	48 8d b4 24 90 00 00 	lea    rsi,[rsp+0x90]
    8600:	00 
    8601:	8b 54 24 40          	mov    edx,DWORD PTR [rsp+0x40]
    8605:	48 89 5c 24 68       	mov    QWORD PTR [rsp+0x68],rbx
    860a:	49 89 dd             	mov    r13,rbx
    860d:	8b 5c 24 0c          	mov    ebx,DWORD PTR [rsp+0xc]
    8611:	41 bc 03 00 00 00    	mov    r12d,0x3
    8617:	48 89 74 24 48       	mov    QWORD PTR [rsp+0x48],rsi
    861c:	48 8d 74 24 78       	lea    rsi,[rsp+0x78]
    8621:	31 ed                	xor    ebp,ebp
    8623:	d1 ea                	shr    edx,1
    8625:	48 89 74 24 38       	mov    QWORD PTR [rsp+0x38],rsi
    862a:	89 d6                	mov    esi,edx
    862c:	83 e6 01             	and    esi,0x1
    862f:	40 88 74 24 47       	mov    BYTE PTR [rsp+0x47],sil
    8634:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    8638:	41 83 fc 01          	cmp    r12d,0x1
    863c:	c7 44 24 5c 00 00 00 	mov    DWORD PTR [rsp+0x5c],0x0
    8643:	00 
    8644:	c7 44 24 60 00 00 00 	mov    DWORD PTR [rsp+0x60],0x0
    864b:	00 
    864c:	0f 84 1e 01 00 00    	je     8770 <asn1_der_decoding2+0x200>
    8652:	a9 00 00 00 08       	test   eax,0x8000000
    8657:	0f 85 d3 01 00 00    	jne    8830 <asn1_der_decoding2+0x2c0>
    865d:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
    8661:	41 89 ad 8c 00 00 00 	mov    DWORD PTR [r13+0x8c],ebp
    8668:	83 e8 01             	sub    eax,0x1
    866b:	41 89 85 90 00 00 00 	mov    DWORD PTR [r13+0x90],eax
    8672:	41 8b 45 48          	mov    eax,DWORD PTR [r13+0x48]
    8676:	f6 c4 c0             	test   ah,0xc0
    8679:	0f 85 b1 02 00 00    	jne    8930 <asn1_der_decoding2+0x3c0>
    867f:	3c 12                	cmp    al,0x12
    8681:	0f 84 69 03 00 00    	je     89f0 <asn1_der_decoding2+0x480>
    8687:	48 63 f5             	movsxd rsi,ebp
    868a:	48 03 34 24          	add    rsi,QWORD PTR [rsp]
    868e:	44 8b 4c 24 40       	mov    r9d,DWORD PTR [rsp+0x40]
    8693:	48 8d 4c 24 5c       	lea    rcx,[rsp+0x5c]
    8698:	4c 8d 44 24 60       	lea    r8,[rsp+0x60]
    869d:	89 da                	mov    edx,ebx
    869f:	4c 89 ef             	mov    rdi,r13
    86a2:	e8 d9 f3 ff ff       	call   7a80 <extract_tag_der_recursive>
    86a7:	85 c0                	test   eax,eax
    86a9:	0f 85 21 0e 00 00    	jne    94d0 <asn1_der_decoding2+0xf60>
    86af:	8b 44 24 5c          	mov    eax,DWORD PTR [rsp+0x5c]
    86b3:	29 c3                	sub    ebx,eax
    86b5:	0f 88 35 02 00 00    	js     88f0 <asn1_der_decoding2+0x380>
    86bb:	4c 8b 6c 24 68       	mov    r13,QWORD PTR [rsp+0x68]
    86c0:	01 c5                	add    ebp,eax
    86c2:	41 8b 45 48          	mov    eax,DWORD PTR [r13+0x48]
    86c6:	4c 89 e9             	mov    rcx,r13
    86c9:	44 0f b6 f8          	movzx  r15d,al
    86cd:	41 8d 57 fd          	lea    edx,[r15-0x3]
    86d1:	83 fa 22             	cmp    edx,0x22
    86d4:	77 67                	ja     873d <asn1_der_decoding2+0x1cd>
    86d6:	48 8d 35 a7 74 00 00 	lea    rsi,[rip+0x74a7]        # fb84 <bit_mask+0x94>
    86dd:	48 63 14 96          	movsxd rdx,DWORD PTR [rsi+rdx*4]
    86e1:	48 01 d6             	add    rsi,rdx
    86e4:	ff e6                	jmp    rsi
    86e6:	48 63 fd             	movsxd rdi,ebp
    86e9:	48 03 3c 24          	add    rdi,QWORD PTR [rsp]
    86ed:	4c 8d 64 24 54       	lea    r12,[rsp+0x54]
    86f2:	89 de                	mov    esi,ebx
    86f4:	4c 89 e2             	mov    rdx,r12
    86f7:	e8 a4 a6 ff ff       	call   2da0 <asn1_get_length_der@plt>
    86fc:	83 f8 ff             	cmp    eax,0xffffffff
    86ff:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
    8703:	0f 8c e7 01 00 00    	jl     88f0 <asn1_der_decoding2+0x380>
    8709:	80 7c 24 47 00       	cmp    BYTE PTR [rsp+0x47],0x0
    870e:	74 09                	je     8719 <asn1_der_decoding2+0x1a9>
    8710:	83 f8 ff             	cmp    eax,0xffffffff
    8713:	0f 84 d7 01 00 00    	je     88f0 <asn1_der_decoding2+0x380>
    8719:	8b 54 24 54          	mov    edx,DWORD PTR [rsp+0x54]
    871d:	29 d3                	sub    ebx,edx
    871f:	0f 88 cb 01 00 00    	js     88f0 <asn1_der_decoding2+0x380>
    8725:	01 d5                	add    ebp,edx
    8727:	83 f8 00             	cmp    eax,0x0
    872a:	0f 8e 80 0a 00 00    	jle    91b0 <asn1_der_decoding2+0xc40>
    8730:	48 8b 4c 24 68       	mov    rcx,QWORD PTR [rsp+0x68]
    8735:	01 e8                	add    eax,ebp
    8737:	89 81 88 00 00 00    	mov    DWORD PTR [rcx+0x88],eax
    873d:	4c 8b 69 60          	mov    r13,QWORD PTR [rcx+0x60]
    8741:	8d 45 ff             	lea    eax,[rbp-0x1]
    8744:	89 81 90 00 00 00    	mov    DWORD PTR [rcx+0x90],eax
    874a:	4d 85 ed             	test   r13,r13
    874d:	0f 84 dd 08 00 00    	je     9030 <asn1_der_decoding2+0xac0>
    8753:	4c 89 6c 24 68       	mov    QWORD PTR [rsp+0x68],r13
    8758:	41 8b 45 48          	mov    eax,DWORD PTR [r13+0x48]
    875c:	41 bc 03 00 00 00    	mov    r12d,0x3
    8762:	e9 d1 fe ff ff       	jmp    8638 <asn1_der_decoding2+0xc8>
    8767:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    876e:	00 00 
    8770:	44 0f b6 f8          	movzx  r15d,al
    8774:	41 8d 57 fd          	lea    edx,[r15-0x3]
    8778:	83 fa 22             	cmp    edx,0x22
    877b:	77 63                	ja     87e0 <asn1_der_decoding2+0x270>
    877d:	48 8d 0d 8c 74 00 00 	lea    rcx,[rip+0x748c]        # fc10 <bit_mask+0x120>
    8784:	48 63 14 91          	movsxd rdx,DWORD PTR [rcx+rdx*4]
    8788:	48 01 d1             	add    rcx,rdx
    878b:	ff e1                	jmp    rcx
    878d:	83 fb 01             	cmp    ebx,0x1
    8790:	0f 8e b5 09 00 00    	jle    914b <asn1_der_decoding2+0xbdb>
    8796:	48 8b 34 24          	mov    rsi,QWORD PTR [rsp]
    879a:	48 63 c5             	movsxd rax,ebp
    879d:	80 3c 06 00          	cmp    BYTE PTR [rsi+rax*1],0x0
    87a1:	0f 85 a4 09 00 00    	jne    914b <asn1_der_decoding2+0xbdb>
    87a7:	80 7c 06 01 00       	cmp    BYTE PTR [rsi+rax*1+0x1],0x0
    87ac:	0f 85 99 09 00 00    	jne    914b <asn1_der_decoding2+0xbdb>
    87b2:	41 c7 85 88 00 00 00 	mov    DWORD PTR [r13+0x88],0x0
    87b9:	00 00 00 00 
    87bd:	48 c7 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],0x0
    87c4:	00 00 00 00 00 
    87c9:	83 eb 02             	sub    ebx,0x2
    87cc:	48 c7 84 24 90 00 00 	mov    QWORD PTR [rsp+0x90],0x0
    87d3:	00 00 00 00 00 
    87d8:	83 c5 02             	add    ebp,0x2
    87db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    87e0:	4c 3b 6c 24 10       	cmp    r13,QWORD PTR [rsp+0x10]
    87e5:	8d 45 ff             	lea    eax,[rbp-0x1]
    87e8:	41 89 85 90 00 00 00 	mov    DWORD PTR [r13+0x90],eax
    87ef:	0f 84 7a 0a 00 00    	je     926f <asn1_der_decoding2+0xcff>
    87f5:	4c 8b 6c 24 68       	mov    r13,QWORD PTR [rsp+0x68]
    87fa:	41 8b 45 48          	mov    eax,DWORD PTR [r13+0x48]
    87fe:	a9 00 00 00 08       	test   eax,0x8000000
    8803:	75 18                	jne    881d <asn1_der_decoding2+0x2ad>
    8805:	49 8b 55 68          	mov    rdx,QWORD PTR [r13+0x68]
    8809:	48 85 d2             	test   rdx,rdx
    880c:	0f 84 c7 02 00 00    	je     8ad9 <asn1_der_decoding2+0x569>
    8812:	8b 42 48             	mov    eax,DWORD PTR [rdx+0x48]
    8815:	48 89 54 24 68       	mov    QWORD PTR [rsp+0x68],rdx
    881a:	49 89 d5             	mov    r13,rdx
    881d:	41 bc 02 00 00 00    	mov    r12d,0x2
    8823:	e9 10 fe ff ff       	jmp    8638 <asn1_der_decoding2+0xc8>
    8828:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    882f:	00 
    8830:	4c 89 ef             	mov    rdi,r13
    8833:	e8 68 30 00 00       	call   b8a0 <_asn1_find_up>
    8838:	49 89 c5             	mov    r13,rax
    883b:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    8840:	8b 80 88 00 00 00    	mov    eax,DWORD PTR [rax+0x88]
    8846:	83 f8 ff             	cmp    eax,0xffffffff
    8849:	89 44 24 54          	mov    DWORD PTR [rsp+0x54],eax
    884d:	0f 84 bd 05 00 00    	je     8e10 <asn1_der_decoding2+0x8a0>
    8853:	39 c5                	cmp    ebp,eax
    8855:	0f 84 89 02 00 00    	je     8ae4 <asn1_der_decoding2+0x574>
    885b:	0f 8f 8f 00 00 00    	jg     88f0 <asn1_der_decoding2+0x380>
    8861:	49 8b 7d 60          	mov    rdi,QWORD PTR [r13+0x60]
    8865:	48 85 ff             	test   rdi,rdi
    8868:	48 89 7c 24 70       	mov    QWORD PTR [rsp+0x70],rdi
    886d:	0f 84 7d 00 00 00    	je     88f0 <asn1_der_decoding2+0x380>
    8873:	4c 63 e5             	movsxd r12,ebp
    8876:	4c 8d 6c 24 54       	lea    r13,[rsp+0x54]
    887b:	4c 03 24 24          	add    r12,QWORD PTR [rsp]
    887f:	44 8b 74 24 40       	mov    r14d,DWORD PTR [rsp+0x40]
    8884:	eb 1d                	jmp    88a3 <asn1_der_decoding2+0x333>
    8886:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    888d:	00 00 00 
    8890:	48 8b 44 24 70       	mov    rax,QWORD PTR [rsp+0x70]
    8895:	48 8b 78 68          	mov    rdi,QWORD PTR [rax+0x68]
    8899:	48 85 ff             	test   rdi,rdi
    889c:	48 89 7c 24 70       	mov    QWORD PTR [rsp+0x70],rdi
    88a1:	74 4d                	je     88f0 <asn1_der_decoding2+0x380>
    88a3:	8b 47 48             	mov    eax,DWORD PTR [rdi+0x48]
    88a6:	25 00 00 00 0c       	and    eax,0xc000000
    88ab:	3d 00 00 00 0c       	cmp    eax,0xc000000
    88b0:	75 de                	jne    8890 <asn1_der_decoding2+0x320>
    88b2:	45 31 c0             	xor    r8d,r8d
    88b5:	45 89 f1             	mov    r9d,r14d
    88b8:	4c 89 e9             	mov    rcx,r13
    88bb:	89 da                	mov    edx,ebx
    88bd:	4c 89 e6             	mov    rsi,r12
    88c0:	e8 bb f1 ff ff       	call   7a80 <extract_tag_der_recursive>
    88c5:	85 c0                	test   eax,eax
    88c7:	75 c7                	jne    8890 <asn1_der_decoding2+0x320>
    88c9:	4c 8b 6c 24 70       	mov    r13,QWORD PTR [rsp+0x70]
    88ce:	41 81 65 48 ff ff ff 	and    DWORD PTR [r13+0x48],0xfbffffff
    88d5:	fb 
    88d6:	4c 89 6c 24 68       	mov    QWORD PTR [rsp+0x68],r13
    88db:	e9 7d fd ff ff       	jmp    865d <asn1_der_decoding2+0xed>
    88e0:	85 db                	test   ebx,ebx
    88e2:	0f 8f e2 07 00 00    	jg     90ca <asn1_der_decoding2+0xb5a>
    88e8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    88ef:	00 
    88f0:	41 bc 04 00 00 00    	mov    r12d,0x4
    88f6:	48 8b 7c 24 18       	mov    rdi,QWORD PTR [rsp+0x18]
    88fb:	e8 30 a3 ff ff       	call   2c30 <asn1_delete_structure@plt>
    8900:	44 89 e0             	mov    eax,r12d
    8903:	48 8b 9c 24 28 01 00 	mov    rbx,QWORD PTR [rsp+0x128]
    890a:	00 
    890b:	64 48 33 1c 25 28 00 	xor    rbx,QWORD PTR fs:0x28
    8912:	00 00 
    8914:	0f 85 b1 0b 00 00    	jne    94cb <asn1_der_decoding2+0xf5b>
    891a:	48 81 c4 38 01 00 00 	add    rsp,0x138
    8921:	5b                   	pop    rbx
    8922:	5d                   	pop    rbp
    8923:	41 5c                	pop    r12
    8925:	41 5d                	pop    r13
    8927:	41 5e                	pop    r14
    8929:	41 5f                	pop    r15
    892b:	c3                   	ret    
    892c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    8930:	4c 89 ef             	mov    rdi,r13
    8933:	e8 68 2f 00 00       	call   b8a0 <_asn1_find_up>
    8938:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    893d:	8b 80 88 00 00 00    	mov    eax,DWORD PTR [rax+0x88]
    8943:	39 c5                	cmp    ebp,eax
    8945:	89 44 24 54          	mov    DWORD PTR [rsp+0x54],eax
    8949:	0f 84 11 05 00 00    	je     8e60 <asn1_der_decoding2+0x8f0>
    894f:	4c 8b 6c 24 68       	mov    r13,QWORD PTR [rsp+0x68]
    8954:	45 31 f6             	xor    r14d,r14d
    8957:	41 80 7d 48 12       	cmp    BYTE PTR [r13+0x48],0x12
    895c:	0f 84 8e 00 00 00    	je     89f0 <asn1_der_decoding2+0x480>
    8962:	41 f7 45 48 00 c0 00 	test   DWORD PTR [r13+0x48],0xc000
    8969:	00 
    896a:	74 44                	je     89b0 <asn1_der_decoding2+0x440>
    896c:	4c 89 ef             	mov    rdi,r13
    896f:	e8 2c 2f 00 00       	call   b8a0 <_asn1_find_up>
    8974:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    8979:	8b 80 88 00 00 00    	mov    eax,DWORD PTR [rax+0x88]
    897f:	4c 8b 6c 24 68       	mov    r13,QWORD PTR [rsp+0x68]
    8984:	39 c5                	cmp    ebp,eax
    8986:	89 44 24 54          	mov    DWORD PTR [rsp+0x54],eax
    898a:	7e 24                	jle    89b0 <asn1_der_decoding2+0x440>
    898c:	83 f8 ff             	cmp    eax,0xffffffff
    898f:	74 1f                	je     89b0 <asn1_der_decoding2+0x440>
    8991:	41 8b 45 48          	mov    eax,DWORD PTR [r13+0x48]
    8995:	f6 c4 40             	test   ah,0x40
    8998:	74 28                	je     89c2 <asn1_der_decoding2+0x452>
    899a:	0d 00 00 00 04       	or     eax,0x4000000
    899f:	41 89 45 48          	mov    DWORD PTR [r13+0x48],eax
    89a3:	e9 38 fe ff ff       	jmp    87e0 <asn1_der_decoding2+0x270>
    89a8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    89af:	00 
    89b0:	45 85 f6             	test   r14d,r14d
    89b3:	0f 84 ce fc ff ff    	je     8687 <asn1_der_decoding2+0x117>
    89b9:	41 8b 45 48          	mov    eax,DWORD PTR [r13+0x48]
    89bd:	f6 c4 40             	test   ah,0x40
    89c0:	75 d8                	jne    899a <asn1_der_decoding2+0x42a>
    89c2:	f6 c4 80             	test   ah,0x80
    89c5:	0f 84 36 08 00 00    	je     9201 <asn1_der_decoding2+0xc91>
    89cb:	4c 89 ef             	mov    rdi,r13
    89ce:	31 d2                	xor    edx,edx
    89d0:	31 f6                	xor    esi,esi
    89d2:	e8 89 2a 00 00       	call   b460 <_asn1_set_value>
    89d7:	4c 8b 6c 24 68       	mov    r13,QWORD PTR [rsp+0x68]
    89dc:	4d 85 ed             	test   r13,r13
    89df:	0f 85 fb fd ff ff    	jne    87e0 <asn1_der_decoding2+0x270>
    89e5:	e9 10 fe ff ff       	jmp    87fa <asn1_der_decoding2+0x28a>
    89ea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    89f0:	49 8b 7d 60          	mov    rdi,QWORD PTR [r13+0x60]
    89f4:	48 85 ff             	test   rdi,rdi
    89f7:	0f 84 7b 07 00 00    	je     9178 <asn1_der_decoding2+0xc08>
    89fd:	4c 63 ed             	movsxd r13,ebp
    8a00:	4c 8d 64 24 54       	lea    r12,[rsp+0x54]
    8a05:	4c 03 2c 24          	add    r13,QWORD PTR [rsp]
    8a09:	4c 8d 7c 24 70       	lea    r15,[rsp+0x70]
    8a0e:	89 6c 24 20          	mov    DWORD PTR [rsp+0x20],ebp
    8a12:	44 8b 74 24 40       	mov    r14d,DWORD PTR [rsp+0x40]
    8a17:	eb 38                	jmp    8a51 <asn1_der_decoding2+0x4e1>
    8a19:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    8a20:	83 f8 0a             	cmp    eax,0xa
    8a23:	0f 84 27 04 00 00    	je     8e50 <asn1_der_decoding2+0x8e0>
    8a29:	48 8b 44 24 68       	mov    rax,QWORD PTR [rsp+0x68]
    8a2e:	4c 89 ff             	mov    rdi,r15
    8a31:	48 8b 40 60          	mov    rax,QWORD PTR [rax+0x60]
    8a35:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    8a3a:	e8 f1 a1 ff ff       	call   2c30 <asn1_delete_structure@plt>
    8a3f:	48 8b 4c 24 68       	mov    rcx,QWORD PTR [rsp+0x68]
    8a44:	48 8b 79 60          	mov    rdi,QWORD PTR [rcx+0x60]
    8a48:	48 85 ff             	test   rdi,rdi
    8a4b:	0f 84 4f 04 00 00    	je     8ea0 <asn1_der_decoding2+0x930>
    8a51:	45 31 c0             	xor    r8d,r8d
    8a54:	45 89 f1             	mov    r9d,r14d
    8a57:	4c 89 e1             	mov    rcx,r12
    8a5a:	89 da                	mov    edx,ebx
    8a5c:	4c 89 ee             	mov    rsi,r13
    8a5f:	e8 1c f0 ff ff       	call   7a80 <extract_tag_der_recursive>
    8a64:	85 c0                	test   eax,eax
    8a66:	89 c5                	mov    ebp,eax
    8a68:	75 b6                	jne    8a20 <asn1_der_decoding2+0x4b0>
    8a6a:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
    8a6f:	41 89 c6             	mov    r14d,eax
    8a72:	8b 6c 24 20          	mov    ebp,DWORD PTR [rsp+0x20]
    8a76:	4c 8b 6e 60          	mov    r13,QWORD PTR [rsi+0x60]
    8a7a:	49 8b 45 68          	mov    rax,QWORD PTR [r13+0x68]
    8a7e:	48 85 c0             	test   rax,rax
    8a81:	74 3b                	je     8abe <asn1_der_decoding2+0x54e>
    8a83:	4c 8d a4 24 88 00 00 	lea    r12,[rsp+0x88]
    8a8a:	00 
    8a8b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    8a90:	4c 89 e7             	mov    rdi,r12
    8a93:	48 89 84 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rax
    8a9a:	00 
    8a9b:	e8 90 a1 ff ff       	call   2c30 <asn1_delete_structure@plt>
    8aa0:	49 8b 45 68          	mov    rax,QWORD PTR [r13+0x68]
    8aa4:	48 85 c0             	test   rax,rax
    8aa7:	75 e7                	jne    8a90 <asn1_der_decoding2+0x520>
    8aa9:	48 8b 4c 24 68       	mov    rcx,QWORD PTR [rsp+0x68]
    8aae:	4c 8b 69 60          	mov    r13,QWORD PTR [rcx+0x60]
    8ab2:	48 89 ce             	mov    rsi,rcx
    8ab5:	4d 85 ed             	test   r13,r13
    8ab8:	0f 84 e9 03 00 00    	je     8ea7 <asn1_der_decoding2+0x937>
    8abe:	80 7e 48 12          	cmp    BYTE PTR [rsi+0x48],0x12
    8ac2:	0f 84 70 05 00 00    	je     9038 <asn1_der_decoding2+0xac8>
    8ac8:	4c 89 6c 24 68       	mov    QWORD PTR [rsp+0x68],r13
    8acd:	41 89 ad 8c 00 00 00 	mov    DWORD PTR [r13+0x8c],ebp
    8ad4:	e9 89 fe ff ff       	jmp    8962 <asn1_der_decoding2+0x3f2>
    8ad9:	4c 89 ef             	mov    rdi,r13
    8adc:	e8 bf 2d 00 00       	call   b8a0 <_asn1_find_up>
    8ae1:	49 89 c5             	mov    r13,rax
    8ae4:	4c 89 6c 24 68       	mov    QWORD PTR [rsp+0x68],r13
    8ae9:	41 8b 45 48          	mov    eax,DWORD PTR [r13+0x48]
    8aed:	41 bc 01 00 00 00    	mov    r12d,0x1
    8af3:	e9 40 fb ff ff       	jmp    8638 <asn1_der_decoding2+0xc8>
    8af8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    8aff:	00 
    8b00:	4c 63 e5             	movsxd r12,ebp
    8b03:	4c 03 24 24          	add    r12,QWORD PTR [rsp]
    8b07:	48 8d 54 24 58       	lea    rdx,[rsp+0x58]
    8b0c:	89 de                	mov    esi,ebx
    8b0e:	4c 89 e7             	mov    rdi,r12
    8b11:	e8 8a a2 ff ff       	call   2da0 <asn1_get_length_der@plt>
    8b16:	85 c0                	test   eax,eax
    8b18:	89 44 24 54          	mov    DWORD PTR [rsp+0x54],eax
    8b1c:	0f 88 ce fd ff ff    	js     88f0 <asn1_der_decoding2+0x380>
    8b22:	8b 54 24 58          	mov    edx,DWORD PTR [rsp+0x58]
    8b26:	01 c2                	add    edx,eax
    8b28:	29 d3                	sub    ebx,edx
    8b2a:	0f 88 c0 fd ff ff    	js     88f0 <asn1_der_decoding2+0x380>
    8b30:	48 8b 7c 24 68       	mov    rdi,QWORD PTR [rsp+0x68]
    8b35:	4c 89 e6             	mov    rsi,r12
    8b38:	e8 23 29 00 00       	call   b460 <_asn1_set_value>
    8b3d:	8b 44 24 54          	mov    eax,DWORD PTR [rsp+0x54]
    8b41:	03 44 24 58          	add    eax,DWORD PTR [rsp+0x58]
    8b45:	4c 8b 6c 24 68       	mov    r13,QWORD PTR [rsp+0x68]
    8b4a:	01 c5                	add    ebp,eax
    8b4c:	e9 8b fe ff ff       	jmp    89dc <asn1_der_decoding2+0x46c>
    8b51:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    8b58:	48 63 fd             	movsxd rdi,ebp
    8b5b:	48 03 3c 24          	add    rdi,QWORD PTR [rsp]
    8b5f:	4c 8d bc 24 a0 00 00 	lea    r15,[rsp+0xa0]
    8b66:	00 
    8b67:	4c 8d 64 24 54       	lea    r12,[rsp+0x54]
    8b6c:	41 b8 80 00 00 00    	mov    r8d,0x80
    8b72:	89 de                	mov    esi,ebx
    8b74:	4c 89 f9             	mov    rcx,r15
    8b77:	4c 89 e2             	mov    rdx,r12
    8b7a:	e8 a1 a0 ff ff       	call   2c20 <asn1_get_object_id_der@plt>
    8b7f:	85 c0                	test   eax,eax
    8b81:	0f 85 b1 05 00 00    	jne    9138 <asn1_der_decoding2+0xbc8>
    8b87:	8b 74 24 54          	mov    esi,DWORD PTR [rsp+0x54]
    8b8b:	29 f3                	sub    ebx,esi
    8b8d:	0f 88 5d fd ff ff    	js     88f0 <asn1_der_decoding2+0x380>
    8b93:	4c 89 f8             	mov    rax,r15
    8b96:	8b 08                	mov    ecx,DWORD PTR [rax]
    8b98:	48 83 c0 04          	add    rax,0x4
    8b9c:	8d 91 ff fe fe fe    	lea    edx,[rcx-0x1010101]
    8ba2:	f7 d1                	not    ecx
    8ba4:	21 ca                	and    edx,ecx
    8ba6:	81 e2 80 80 80 80    	and    edx,0x80808080
    8bac:	74 e8                	je     8b96 <asn1_der_decoding2+0x626>
    8bae:	89 d1                	mov    ecx,edx
    8bb0:	c1 e9 10             	shr    ecx,0x10
    8bb3:	f7 c2 80 80 00 00    	test   edx,0x8080
    8bb9:	0f 44 d1             	cmove  edx,ecx
    8bbc:	48 8d 48 02          	lea    rcx,[rax+0x2]
    8bc0:	48 0f 44 c1          	cmove  rax,rcx
    8bc4:	89 d1                	mov    ecx,edx
    8bc6:	00 d1                	add    cl,dl
    8bc8:	48 83 d8 03          	sbb    rax,0x3
    8bcc:	4c 29 f8             	sub    rax,r15
    8bcf:	85 c0                	test   eax,eax
    8bd1:	7e 14                	jle    8be7 <asn1_der_decoding2+0x677>
    8bd3:	48 8b 7c 24 68       	mov    rdi,QWORD PTR [rsp+0x68]
    8bd8:	8d 50 01             	lea    edx,[rax+0x1]
    8bdb:	4c 89 fe             	mov    rsi,r15
    8bde:	e8 7d 28 00 00       	call   b460 <_asn1_set_value>
    8be3:	8b 74 24 54          	mov    esi,DWORD PTR [rsp+0x54]
    8be7:	01 f5                	add    ebp,esi
    8be9:	4c 8b 6c 24 68       	mov    r13,QWORD PTR [rsp+0x68]
    8bee:	e9 e9 fd ff ff       	jmp    89dc <asn1_der_decoding2+0x46c>
    8bf3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    8bf8:	83 eb 01             	sub    ebx,0x1
    8bfb:	0f 88 ef fc ff ff    	js     88f0 <asn1_der_decoding2+0x380>
    8c01:	48 8b 34 24          	mov    rsi,QWORD PTR [rsp]
    8c05:	48 63 c5             	movsxd rax,ebp
    8c08:	80 3c 06 00          	cmp    BYTE PTR [rsi+rax*1],0x0
    8c0c:	0f 85 de fc ff ff    	jne    88f0 <asn1_der_decoding2+0x380>
    8c12:	83 c5 01             	add    ebp,0x1
    8c15:	e9 c6 fb ff ff       	jmp    87e0 <asn1_der_decoding2+0x270>
    8c1a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    8c20:	8b 74 24 40          	mov    esi,DWORD PTR [rsp+0x40]
    8c24:	83 e6 02             	and    esi,0x2
    8c27:	89 74 24 20          	mov    DWORD PTR [rsp+0x20],esi
    8c2b:	0f 84 c7 03 00 00    	je     8ff8 <asn1_der_decoding2+0xa88>
    8c31:	4c 63 f5             	movsxd r14,ebp
    8c34:	45 31 ff             	xor    r15d,r15d
    8c37:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    8c3b:	4c 8d 64 24 54       	lea    r12,[rsp+0x54]
    8c40:	4c 8b 44 24 38       	mov    r8,QWORD PTR [rsp+0x38]
    8c45:	48 8d 54 24 53       	lea    rdx,[rsp+0x53]
    8c4a:	89 de                	mov    esi,ebx
    8c4c:	4c 89 e1             	mov    rcx,r12
    8c4f:	4e 8d 2c 30          	lea    r13,[rax+r14*1]
    8c53:	4c 89 ef             	mov    rdi,r13
    8c56:	e8 35 9f ff ff       	call   2b90 <asn1_get_tag_der@plt>
    8c5b:	85 c0                	test   eax,eax
    8c5d:	0f 85 8d fc ff ff    	jne    88f0 <asn1_der_decoding2+0x380>
    8c63:	8b 44 24 54          	mov    eax,DWORD PTR [rsp+0x54]
    8c67:	29 c3                	sub    ebx,eax
    8c69:	0f 88 81 fc ff ff    	js     88f0 <asn1_der_decoding2+0x380>
    8c6f:	48 63 f8             	movsxd rdi,eax
    8c72:	48 8d 54 24 58       	lea    rdx,[rsp+0x58]
    8c77:	89 de                	mov    esi,ebx
    8c79:	4c 01 f7             	add    rdi,r14
    8c7c:	48 03 3c 24          	add    rdi,QWORD PTR [rsp]
    8c80:	e8 1b a1 ff ff       	call   2da0 <asn1_get_length_der@plt>
    8c85:	83 f8 ff             	cmp    eax,0xffffffff
    8c88:	0f 8c 62 fc ff ff    	jl     88f0 <asn1_der_decoding2+0x380>
    8c8e:	8b 54 24 20          	mov    edx,DWORD PTR [rsp+0x20]
    8c92:	85 d2                	test   edx,edx
    8c94:	0f 84 d5 03 00 00    	je     906f <asn1_der_decoding2+0xaff>
    8c9a:	83 f8 ff             	cmp    eax,0xffffffff
    8c9d:	0f 84 4d fc ff ff    	je     88f0 <asn1_der_decoding2+0x380>
    8ca3:	8b 4c 24 54          	mov    ecx,DWORD PTR [rsp+0x54]
    8ca7:	8b 54 24 58          	mov    edx,DWORD PTR [rsp+0x58]
    8cab:	01 c1                	add    ecx,eax
    8cad:	01 d0                	add    eax,edx
    8caf:	29 c3                	sub    ebx,eax
    8cb1:	89 4c 24 54          	mov    DWORD PTR [rsp+0x54],ecx
    8cb5:	0f 88 35 fc ff ff    	js     88f0 <asn1_der_decoding2+0x380>
    8cbb:	48 8b 7c 24 68       	mov    rdi,QWORD PTR [rsp+0x68]
    8cc0:	01 ca                	add    edx,ecx
    8cc2:	4c 89 ee             	mov    rsi,r13
    8cc5:	e8 86 28 00 00       	call   b550 <_asn1_set_value_lv>
    8cca:	8b 44 24 58          	mov    eax,DWORD PTR [rsp+0x58]
    8cce:	03 44 24 54          	add    eax,DWORD PTR [rsp+0x54]
    8cd2:	01 c5                	add    ebp,eax
    8cd4:	45 85 ff             	test   r15d,r15d
    8cd7:	74 28                	je     8d01 <asn1_der_decoding2+0x791>
    8cd9:	83 eb 02             	sub    ebx,0x2
    8cdc:	0f 88 0e fc ff ff    	js     88f0 <asn1_der_decoding2+0x380>
    8ce2:	48 8b 34 24          	mov    rsi,QWORD PTR [rsp]
    8ce6:	48 63 c5             	movsxd rax,ebp
    8ce9:	80 3c 06 00          	cmp    BYTE PTR [rsi+rax*1],0x0
    8ced:	0f 85 fd fb ff ff    	jne    88f0 <asn1_der_decoding2+0x380>
    8cf3:	80 7c 06 01 00       	cmp    BYTE PTR [rsi+rax*1+0x1],0x0
    8cf8:	0f 85 f2 fb ff ff    	jne    88f0 <asn1_der_decoding2+0x380>
    8cfe:	83 c5 02             	add    ebp,0x2
    8d01:	4c 8b 6c 24 68       	mov    r13,QWORD PTR [rsp+0x68]
    8d06:	e9 d1 fc ff ff       	jmp    89dc <asn1_der_decoding2+0x46c>
    8d0b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    8d10:	48 63 54 24 60       	movsxd rdx,DWORD PTR [rsp+0x60]
    8d15:	39 ea                	cmp    edx,ebp
    8d17:	0f 8f d3 fb ff ff    	jg     88f0 <asn1_der_decoding2+0x380>
    8d1d:	48 63 c5             	movsxd rax,ebp
    8d20:	48 89 c6             	mov    rsi,rax
    8d23:	48 29 d6             	sub    rsi,rdx
    8d26:	48 89 f2             	mov    rdx,rsi
    8d29:	48 03 14 24          	add    rdx,QWORD PTR [rsp]
    8d2d:	f6 44 24 40 02       	test   BYTE PTR [rsp+0x40],0x2
    8d32:	0f 85 08 03 00 00    	jne    9040 <asn1_der_decoding2+0xad0>
    8d38:	f6 02 20             	test   BYTE PTR [rdx],0x20
    8d3b:	0f 84 08 03 00 00    	je     9049 <asn1_der_decoding2+0xad9>
    8d41:	48 8b 34 24          	mov    rsi,QWORD PTR [rsp]
    8d45:	48 8d 8c 24 80 00 00 	lea    rcx,[rsp+0x80]
    8d4c:	00 
    8d4d:	48 83 ec 08          	sub    rsp,0x8
    8d51:	6a 02                	push   0x2
    8d53:	89 da                	mov    edx,ebx
    8d55:	bf 07 00 00 00       	mov    edi,0x7
    8d5a:	4c 8d 8c 24 98 00 00 	lea    r9,[rsp+0x98]
    8d61:	00 
    8d62:	4c 8d 44 24 74       	lea    r8,[rsp+0x74]
    8d67:	48 01 c6             	add    rsi,rax
    8d6a:	e8 e1 ed ff ff       	call   7b50 <_asn1_decode_simple_ber>
    8d6f:	85 c0                	test   eax,eax
    8d71:	59                   	pop    rcx
    8d72:	5e                   	pop    rsi
    8d73:	0f 85 bf 03 00 00    	jne    9138 <asn1_der_decoding2+0xbc8>
    8d79:	2b 9c 24 88 00 00 00 	sub    ebx,DWORD PTR [rsp+0x88]
    8d80:	0f 88 6a fb ff ff    	js     88f0 <asn1_der_decoding2+0x380>
    8d86:	8b 54 24 64          	mov    edx,DWORD PTR [rsp+0x64]
    8d8a:	48 8b b4 24 80 00 00 	mov    rsi,QWORD PTR [rsp+0x80]
    8d91:	00 
    8d92:	48 8b 7c 24 68       	mov    rdi,QWORD PTR [rsp+0x68]
    8d97:	e8 b4 27 00 00       	call   b550 <_asn1_set_value_lv>
    8d9c:	48 8b bc 24 80 00 00 	mov    rdi,QWORD PTR [rsp+0x80]
    8da3:	00 
    8da4:	03 ac 24 88 00 00 00 	add    ebp,DWORD PTR [rsp+0x88]
    8dab:	e8 60 9d ff ff       	call   2b10 <free@plt>
    8db0:	4c 8b 6c 24 68       	mov    r13,QWORD PTR [rsp+0x68]
    8db5:	e9 22 fc ff ff       	jmp    89dc <asn1_der_decoding2+0x46c>
    8dba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    8dc0:	83 eb 02             	sub    ebx,0x2
    8dc3:	0f 88 27 fb ff ff    	js     88f0 <asn1_der_decoding2+0x380>
    8dc9:	48 8b 34 24          	mov    rsi,QWORD PTR [rsp]
    8dcd:	48 63 d5             	movsxd rdx,ebp
    8dd0:	8d 45 01             	lea    eax,[rbp+0x1]
    8dd3:	80 3c 16 01          	cmp    BYTE PTR [rsi+rdx*1],0x1
    8dd7:	0f 85 13 fb ff ff    	jne    88f0 <asn1_der_decoding2+0x380>
    8ddd:	48 98                	cdqe   
    8ddf:	83 c5 02             	add    ebp,0x2
    8de2:	ba 01 00 00 00       	mov    edx,0x1
    8de7:	80 3c 06 00          	cmp    BYTE PTR [rsi+rax*1],0x0
    8deb:	0f 85 65 02 00 00    	jne    9056 <asn1_der_decoding2+0xae6>
    8df1:	48 8d 35 e6 6a 00 00 	lea    rsi,[rip+0x6ae6]        # f8de <yytranslate+0x19e>
    8df8:	4c 89 ef             	mov    rdi,r13
    8dfb:	e8 60 26 00 00       	call   b460 <_asn1_set_value>
    8e00:	4c 8b 6c 24 68       	mov    r13,QWORD PTR [rsp+0x68]
    8e05:	e9 d2 fb ff ff       	jmp    89dc <asn1_der_decoding2+0x46c>
    8e0a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    8e10:	83 fb 01             	cmp    ebx,0x1
    8e13:	0f 8e 48 fa ff ff    	jle    8861 <asn1_der_decoding2+0x2f1>
    8e19:	48 8b 34 24          	mov    rsi,QWORD PTR [rsp]
    8e1d:	48 63 c5             	movsxd rax,ebp
    8e20:	80 3c 06 00          	cmp    BYTE PTR [rsi+rax*1],0x0
    8e24:	0f 85 37 fa ff ff    	jne    8861 <asn1_der_decoding2+0x2f1>
    8e2a:	80 7c 06 01 00       	cmp    BYTE PTR [rsi+rax*1+0x1],0x0
    8e2f:	0f 85 2c fa ff ff    	jne    8861 <asn1_der_decoding2+0x2f1>
    8e35:	4c 89 6c 24 68       	mov    QWORD PTR [rsp+0x68],r13
    8e3a:	83 c5 02             	add    ebp,0x2
    8e3d:	83 eb 02             	sub    ebx,0x2
    8e40:	41 8b 45 48          	mov    eax,DWORD PTR [r13+0x48]
    8e44:	41 bc 01 00 00 00    	mov    r12d,0x1
    8e4a:	e9 e9 f7 ff ff       	jmp    8638 <asn1_der_decoding2+0xc8>
    8e4f:	90                   	nop
    8e50:	41 bc 0a 00 00 00    	mov    r12d,0xa
    8e56:	e9 9b fa ff ff       	jmp    88f6 <asn1_der_decoding2+0x386>
    8e5b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    8e60:	48 8b 44 24 68       	mov    rax,QWORD PTR [rsp+0x68]
    8e65:	48 8b 50 68          	mov    rdx,QWORD PTR [rax+0x68]
    8e69:	48 85 d2             	test   rdx,rdx
    8e6c:	0f 84 ce 02 00 00    	je     9140 <asn1_der_decoding2+0xbd0>
    8e72:	48 89 54 24 70       	mov    QWORD PTR [rsp+0x70],rdx
    8e77:	41 bc 02 00 00 00    	mov    r12d,0x2
    8e7d:	f6 40 49 40          	test   BYTE PTR [rax+0x49],0x40
    8e81:	0f 85 34 02 00 00    	jne    90bb <asn1_der_decoding2+0xb4b>
    8e87:	4c 8b 6c 24 70       	mov    r13,QWORD PTR [rsp+0x70]
    8e8c:	4c 89 6c 24 68       	mov    QWORD PTR [rsp+0x68],r13
    8e91:	41 8b 45 48          	mov    eax,DWORD PTR [r13+0x48]
    8e95:	e9 9e f7 ff ff       	jmp    8638 <asn1_der_decoding2+0xc8>
    8e9a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    8ea0:	41 89 ee             	mov    r14d,ebp
    8ea3:	8b 6c 24 20          	mov    ebp,DWORD PTR [rsp+0x20]
    8ea7:	f6 41 49 40          	test   BYTE PTR [rcx+0x49],0x40
    8eab:	0f 84 3f fa ff ff    	je     88f0 <asn1_der_decoding2+0x380>
    8eb1:	49 89 cd             	mov    r13,rcx
    8eb4:	e9 14 fc ff ff       	jmp    8acd <asn1_der_decoding2+0x55d>
    8eb9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    8ec0:	41 bc 06 00 00 00    	mov    r12d,0x6
    8ec6:	e9 2b fa ff ff       	jmp    88f6 <asn1_der_decoding2+0x386>
    8ecb:	41 8b 85 88 00 00 00 	mov    eax,DWORD PTR [r13+0x88]
    8ed2:	83 f8 ff             	cmp    eax,0xffffffff
    8ed5:	89 44 24 54          	mov    DWORD PTR [rsp+0x54],eax
    8ed9:	0f 84 ae f8 ff ff    	je     878d <asn1_der_decoding2+0x21d>
    8edf:	39 c5                	cmp    ebp,eax
    8ee1:	0f 8c 64 02 00 00    	jl     914b <asn1_der_decoding2+0xbdb>
    8ee7:	41 c7 85 88 00 00 00 	mov    DWORD PTR [r13+0x88],0x0
    8eee:	00 00 00 00 
    8ef2:	48 c7 84 24 98 00 00 	mov    QWORD PTR [rsp+0x98],0x0
    8ef9:	00 00 00 00 00 
    8efe:	48 c7 84 24 90 00 00 	mov    QWORD PTR [rsp+0x90],0x0
    8f05:	00 00 00 00 00 
    8f0a:	0f 84 d0 f8 ff ff    	je     87e0 <asn1_der_decoding2+0x270>
    8f10:	e9 db f9 ff ff       	jmp    88f0 <asn1_der_decoding2+0x380>
    8f15:	0f 1f 00             	nop    DWORD PTR [rax]
    8f18:	41 8b 85 88 00 00 00 	mov    eax,DWORD PTR [r13+0x88]
    8f1f:	41 c7 85 88 00 00 00 	mov    DWORD PTR [r13+0x88],0x0
    8f26:	00 00 00 00 
    8f2a:	83 f8 ff             	cmp    eax,0xffffffff
    8f2d:	89 44 24 54          	mov    DWORD PTR [rsp+0x54],eax
    8f31:	0f 84 4e 02 00 00    	je     9185 <asn1_der_decoding2+0xc15>
    8f37:	39 c5                	cmp    ebp,eax
    8f39:	0f 84 a1 f8 ff ff    	je     87e0 <asn1_der_decoding2+0x270>
    8f3f:	e9 ac f9 ff ff       	jmp    88f0 <asn1_der_decoding2+0x380>
    8f44:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    8f48:	48 63 fd             	movsxd rdi,ebp
    8f4b:	48 03 3c 24          	add    rdi,QWORD PTR [rsp]
    8f4f:	4c 8d 64 24 54       	lea    r12,[rsp+0x54]
    8f54:	89 de                	mov    esi,ebx
    8f56:	4c 89 e2             	mov    rdx,r12
    8f59:	e8 42 9e ff ff       	call   2da0 <asn1_get_length_der@plt>
    8f5e:	83 f8 ff             	cmp    eax,0xffffffff
    8f61:	89 44 24 58          	mov    DWORD PTR [rsp+0x58],eax
    8f65:	0f 8c 85 f9 ff ff    	jl     88f0 <asn1_der_decoding2+0x380>
    8f6b:	80 7c 24 47 00       	cmp    BYTE PTR [rsp+0x47],0x0
    8f70:	74 09                	je     8f7b <asn1_der_decoding2+0xa0b>
    8f72:	83 f8 ff             	cmp    eax,0xffffffff
    8f75:	0f 84 75 f9 ff ff    	je     88f0 <asn1_der_decoding2+0x380>
    8f7b:	8b 54 24 54          	mov    edx,DWORD PTR [rsp+0x54]
    8f7f:	29 d3                	sub    ebx,edx
    8f81:	0f 88 69 f9 ff ff    	js     88f0 <asn1_der_decoding2+0x380>
    8f87:	01 d5                	add    ebp,edx
    8f89:	83 f8 00             	cmp    eax,0x0
    8f8c:	0f 84 6f fd ff ff    	je     8d01 <asn1_der_decoding2+0x791>
    8f92:	48 8b 7c 24 68       	mov    rdi,QWORD PTR [rsp+0x68]
    8f97:	0f 8e 7a 01 00 00    	jle    9117 <asn1_der_decoding2+0xba7>
    8f9d:	01 e8                	add    eax,ebp
    8f9f:	89 87 88 00 00 00    	mov    DWORD PTR [rdi+0x88],eax
    8fa5:	48 8b 57 60          	mov    rdx,QWORD PTR [rdi+0x60]
    8fa9:	48 85 d2             	test   rdx,rdx
    8fac:	48 89 54 24 70       	mov    QWORD PTR [rsp+0x70],rdx
    8fb1:	0f 84 39 f9 ff ff    	je     88f0 <asn1_der_decoding2+0x380>
    8fb7:	8b 42 48             	mov    eax,DWORD PTR [rdx+0x48]
    8fba:	25 fd 00 00 00       	and    eax,0xfd
    8fbf:	83 f8 08             	cmp    eax,0x8
    8fc2:	75 1a                	jne    8fde <asn1_der_decoding2+0xa6e>
    8fc4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    8fc8:	48 8b 52 68          	mov    rdx,QWORD PTR [rdx+0x68]
    8fcc:	8b 42 48             	mov    eax,DWORD PTR [rdx+0x48]
    8fcf:	25 fd 00 00 00       	and    eax,0xfd
    8fd4:	83 f8 08             	cmp    eax,0x8
    8fd7:	74 ef                	je     8fc8 <asn1_der_decoding2+0xa58>
    8fd9:	48 89 54 24 70       	mov    QWORD PTR [rsp+0x70],rdx
    8fde:	48 83 7a 68 00       	cmp    QWORD PTR [rdx+0x68],0x0
    8fe3:	0f 84 3d 01 00 00    	je     9126 <asn1_der_decoding2+0xbb6>
    8fe9:	4c 8b 6c 24 70       	mov    r13,QWORD PTR [rsp+0x70]
    8fee:	4c 89 6c 24 68       	mov    QWORD PTR [rsp+0x68],r13
    8ff3:	e9 e4 f9 ff ff       	jmp    89dc <asn1_der_decoding2+0x46c>
    8ff8:	f6 c4 20             	test   ah,0x20
    8ffb:	0f 84 30 fc ff ff    	je     8c31 <asn1_der_decoding2+0x6c1>
    9001:	83 7c 24 5c 02       	cmp    DWORD PTR [rsp+0x5c],0x2
    9006:	4c 63 f5             	movsxd r14,ebp
    9009:	0f 85 25 fc ff ff    	jne    8c34 <asn1_der_decoding2+0x6c4>
    900f:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    9013:	41 bf 01 00 00 00    	mov    r15d,0x1
    9019:	42 80 7c 30 ff 80    	cmp    BYTE PTR [rax+r14*1-0x1],0x80
    901f:	0f 85 0f fc ff ff    	jne    8c34 <asn1_der_decoding2+0x6c4>
    9025:	e9 0d fc ff ff       	jmp    8c37 <asn1_der_decoding2+0x6c7>
    902a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    9030:	49 89 cd             	mov    r13,rcx
    9033:	e9 c2 f7 ff ff       	jmp    87fa <asn1_der_decoding2+0x28a>
    9038:	49 89 f5             	mov    r13,rsi
    903b:	e9 8d fa ff ff       	jmp    8acd <asn1_der_decoding2+0x55d>
    9040:	f6 02 20             	test   BYTE PTR [rdx],0x20
    9043:	0f 85 a7 f8 ff ff    	jne    88f0 <asn1_der_decoding2+0x380>
    9049:	48 8b 34 24          	mov    rsi,QWORD PTR [rsp]
    904d:	4c 8d 24 06          	lea    r12,[rsi+rax*1]
    9051:	e9 b1 fa ff ff       	jmp    8b07 <asn1_der_decoding2+0x597>
    9056:	48 8d 35 77 55 00 00 	lea    rsi,[rip+0x5577]        # e5d4 <_fini+0xd4>
    905d:	4c 89 ef             	mov    rdi,r13
    9060:	e8 fb 23 00 00       	call   b460 <_asn1_set_value>
    9065:	4c 8b 6c 24 68       	mov    r13,QWORD PTR [rsp+0x68]
    906a:	e9 6d f9 ff ff       	jmp    89dc <asn1_der_decoding2+0x46c>
    906f:	83 f8 ff             	cmp    eax,0xffffffff
    9072:	0f 85 2b fc ff ff    	jne    8ca3 <asn1_der_decoding2+0x733>
    9078:	03 5c 24 54          	add    ebx,DWORD PTR [rsp+0x54]
    907c:	85 ed                	test   ebp,ebp
    907e:	0f 84 6c f8 ff ff    	je     88f0 <asn1_der_decoding2+0x380>
    9084:	4c 89 e2             	mov    rdx,r12
    9087:	89 de                	mov    esi,ebx
    9089:	4c 89 ef             	mov    rdi,r13
    908c:	e8 ff e2 ff ff       	call   7390 <_asn1_get_indefinite_length_string>
    9091:	85 c0                	test   eax,eax
    9093:	0f 85 9f 00 00 00    	jne    9138 <asn1_der_decoding2+0xbc8>
    9099:	8b 54 24 54          	mov    edx,DWORD PTR [rsp+0x54]
    909d:	29 d3                	sub    ebx,edx
    909f:	0f 88 4b f8 ff ff    	js     88f0 <asn1_der_decoding2+0x380>
    90a5:	48 8b 7c 24 68       	mov    rdi,QWORD PTR [rsp+0x68]
    90aa:	4c 89 ee             	mov    rsi,r13
    90ad:	e8 9e 24 00 00       	call   b550 <_asn1_set_value_lv>
    90b2:	03 6c 24 54          	add    ebp,DWORD PTR [rsp+0x54]
    90b6:	e9 19 fc ff ff       	jmp    8cd4 <asn1_der_decoding2+0x764>
    90bb:	48 8d 7c 24 68       	lea    rdi,[rsp+0x68]
    90c0:	e8 6b 9b ff ff       	call   2c30 <asn1_delete_structure@plt>
    90c5:	e9 bd fd ff ff       	jmp    8e87 <asn1_der_decoding2+0x917>
    90ca:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    90ce:	48 63 f5             	movsxd rsi,ebp
    90d1:	4c 8d a4 24 88 00 00 	lea    r12,[rsp+0x88]
    90d8:	00 
    90d9:	4c 89 e2             	mov    rdx,r12
    90dc:	48 8d 0c 30          	lea    rcx,[rax+rsi*1]
    90e0:	89 de                	mov    esi,ebx
    90e2:	48 89 cf             	mov    rdi,rcx
    90e5:	48 89 4c 24 20       	mov    QWORD PTR [rsp+0x20],rcx
    90ea:	e8 b1 9c ff ff       	call   2da0 <asn1_get_length_der@plt>
    90ef:	8d 78 ff             	lea    edi,[rax-0x1]
    90f2:	49 89 c4             	mov    r12,rax
    90f5:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
    90fa:	83 ff 7e             	cmp    edi,0x7e
    90fd:	0f 87 ed f7 ff ff    	ja     88f0 <asn1_der_decoding2+0x380>
    9103:	83 f8 07             	cmp    eax,0x7
    9106:	0f 8f 44 02 00 00    	jg     9350 <asn1_der_decoding2+0xde0>
    910c:	41 bc 12 00 00 00    	mov    r12d,0x12
    9112:	e9 df f7 ff ff       	jmp    88f6 <asn1_der_decoding2+0x386>
    9117:	c7 87 88 00 00 00 ff 	mov    DWORD PTR [rdi+0x88],0xffffffff
    911e:	ff ff ff 
    9121:	e9 7f fe ff ff       	jmp    8fa5 <asn1_der_decoding2+0xa35>
    9126:	48 8b 74 24 48       	mov    rsi,QWORD PTR [rsp+0x48]
    912b:	e8 60 0d 00 00       	call   9e90 <_asn1_append_sequence_set>
    9130:	85 c0                	test   eax,eax
    9132:	0f 84 b1 fe ff ff    	je     8fe9 <asn1_der_decoding2+0xa79>
    9138:	41 89 c4             	mov    r12d,eax
    913b:	e9 b6 f7 ff ff       	jmp    88f6 <asn1_der_decoding2+0x386>
    9140:	41 bc 01 00 00 00    	mov    r12d,0x1
    9146:	e9 32 fd ff ff       	jmp    8e7d <asn1_der_decoding2+0x90d>
    914b:	48 8b 74 24 48       	mov    rsi,QWORD PTR [rsp+0x48]
    9150:	4c 89 ef             	mov    rdi,r13
    9153:	e8 38 0d 00 00       	call   9e90 <_asn1_append_sequence_set>
    9158:	85 c0                	test   eax,eax
    915a:	75 dc                	jne    9138 <asn1_der_decoding2+0xbc8>
    915c:	4c 8b ac 24 98 00 00 	mov    r13,QWORD PTR [rsp+0x98]
    9163:	00 
    9164:	41 bc 02 00 00 00    	mov    r12d,0x2
    916a:	4c 89 6c 24 68       	mov    QWORD PTR [rsp+0x68],r13
    916f:	41 8b 45 48          	mov    eax,DWORD PTR [r13+0x48]
    9173:	e9 c0 f4 ff ff       	jmp    8638 <asn1_der_decoding2+0xc8>
    9178:	48 8b 4c 24 68       	mov    rcx,QWORD PTR [rsp+0x68]
    917d:	45 31 f6             	xor    r14d,r14d
    9180:	e9 22 fd ff ff       	jmp    8ea7 <asn1_der_decoding2+0x937>
    9185:	83 eb 02             	sub    ebx,0x2
    9188:	0f 88 62 f7 ff ff    	js     88f0 <asn1_der_decoding2+0x380>
    918e:	48 8b 34 24          	mov    rsi,QWORD PTR [rsp]
    9192:	48 63 c5             	movsxd rax,ebp
    9195:	80 3c 06 00          	cmp    BYTE PTR [rsi+rax*1],0x0
    9199:	0f 85 51 f7 ff ff    	jne    88f0 <asn1_der_decoding2+0x380>
    919f:	80 7c 06 01 00       	cmp    BYTE PTR [rsi+rax*1+0x1],0x0
    91a4:	0f 84 2e f6 ff ff    	je     87d8 <asn1_der_decoding2+0x268>
    91aa:	e9 41 f7 ff ff       	jmp    88f0 <asn1_der_decoding2+0x380>
    91af:	90                   	nop
    91b0:	0f 85 a5 00 00 00    	jne    925b <asn1_der_decoding2+0xceb>
    91b6:	48 8b 44 24 68       	mov    rax,QWORD PTR [rsp+0x68]
    91bb:	4c 8d 64 24 70       	lea    r12,[rsp+0x70]
    91c0:	48 8b 40 60          	mov    rax,QWORD PTR [rax+0x60]
    91c4:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    91c9:	48 85 c0             	test   rax,rax
    91cc:	0f 84 2f fb ff ff    	je     8d01 <asn1_der_decoding2+0x791>
    91d2:	80 78 48 08          	cmp    BYTE PTR [rax+0x48],0x8
    91d6:	74 1e                	je     91f6 <asn1_der_decoding2+0xc86>
    91d8:	4c 8b 68 68          	mov    r13,QWORD PTR [rax+0x68]
    91dc:	4c 89 e7             	mov    rdi,r12
    91df:	e8 4c 9a ff ff       	call   2c30 <asn1_delete_structure@plt>
    91e4:	4c 89 e8             	mov    rax,r13
    91e7:	4c 89 6c 24 70       	mov    QWORD PTR [rsp+0x70],r13
    91ec:	48 85 c0             	test   rax,rax
    91ef:	75 e1                	jne    91d2 <asn1_der_decoding2+0xc62>
    91f1:	e9 0b fb ff ff       	jmp    8d01 <asn1_der_decoding2+0x791>
    91f6:	48 8b 40 68          	mov    rax,QWORD PTR [rax+0x68]
    91fa:	48 89 44 24 70       	mov    QWORD PTR [rsp+0x70],rax
    91ff:	eb c8                	jmp    91c9 <asn1_der_decoding2+0xc59>
    9201:	48 8b 5c 24 30       	mov    rbx,QWORD PTR [rsp+0x30]
    9206:	41 bc 08 00 00 00    	mov    r12d,0x8
    920c:	48 85 db             	test   rbx,rbx
    920f:	0f 84 e1 f6 ff ff    	je     88f6 <asn1_der_decoding2+0x386>
    9215:	48 8d 15 82 6a 00 00 	lea    rdx,[rip+0x6a82]        # fc9e <bit_mask+0x1ae>
    921c:	be 80 00 00 00       	mov    esi,0x80
    9221:	48 89 df             	mov    rdi,rbx
    9224:	e8 a7 1e 00 00       	call   b0d0 <_asn1_str_cpy>
    9229:	48 89 df             	mov    rdi,rbx
    922c:	e8 8f 99 ff ff       	call   2bc0 <strlen@plt>
    9231:	48 8d 34 03          	lea    rsi,[rbx+rax*1]
    9235:	4c 89 ef             	mov    rdi,r13
    9238:	ba 58 00 00 00       	mov    edx,0x58
    923d:	e8 5e 0a 00 00       	call   9ca0 <_asn1_hierarchical_name>
    9242:	48 8d 15 cc 6d 00 00 	lea    rdx,[rip+0x6dcc]        # 10015 <bit_mask+0x525>
    9249:	be 80 00 00 00       	mov    esi,0x80
    924e:	48 89 df             	mov    rdi,rbx
    9251:	e8 fa 1d 00 00       	call   b050 <_asn1_str_cat>
    9256:	e9 9b f6 ff ff       	jmp    88f6 <asn1_der_decoding2+0x386>
    925b:	48 8b 4c 24 68       	mov    rcx,QWORD PTR [rsp+0x68]
    9260:	c7 81 88 00 00 00 ff 	mov    DWORD PTR [rcx+0x88],0xffffffff
    9267:	ff ff ff 
    926a:	e9 ce f4 ff ff       	jmp    873d <asn1_der_decoding2+0x1cd>
    926f:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
    9274:	48 8b 28             	mov    rbp,QWORD PTR [rax]
    9277:	48 85 ed             	test   rbp,rbp
    927a:	74 6c                	je     92e8 <asn1_der_decoding2+0xd78>
    927c:	48 89 ac 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rbp
    9283:	00 
    9284:	48 89 ef             	mov    rdi,rbp
    9287:	4c 8d a4 24 88 00 00 	lea    r12,[rsp+0x88]
    928e:	00 
    928f:	eb 3a                	jmp    92cb <asn1_der_decoding2+0xd5b>
    9291:	48 39 fd             	cmp    rbp,rdi
    9294:	74 45                	je     92db <asn1_der_decoding2+0xd6b>
    9296:	e8 a5 32 00 00       	call   c540 <_asn1_find_left>
    929b:	48 85 c0             	test   rax,rax
    929e:	49 89 c5             	mov    r13,rax
    92a1:	0f 84 d1 01 00 00    	je     9478 <asn1_der_decoding2+0xf08>
    92a7:	4c 89 e7             	mov    rdi,r12
    92aa:	e8 81 99 ff ff       	call   2c30 <asn1_delete_structure@plt>
    92af:	4c 89 ac 24 88 00 00 	mov    QWORD PTR [rsp+0x88],r13
    92b6:	00 
    92b7:	4c 89 e8             	mov    rax,r13
    92ba:	48 8b 78 60          	mov    rdi,QWORD PTR [rax+0x60]
    92be:	48 85 ff             	test   rdi,rdi
    92c1:	74 50                	je     9313 <asn1_der_decoding2+0xda3>
    92c3:	48 89 bc 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rdi
    92ca:	00 
    92cb:	f6 47 4b 04          	test   BYTE PTR [rdi+0x4b],0x4
    92cf:	75 c0                	jne    9291 <asn1_der_decoding2+0xd21>
    92d1:	48 8b 84 24 88 00 00 	mov    rax,QWORD PTR [rsp+0x88]
    92d8:	00 
    92d9:	eb df                	jmp    92ba <asn1_der_decoding2+0xd4a>
    92db:	48 8d bc 24 88 00 00 	lea    rdi,[rsp+0x88]
    92e2:	00 
    92e3:	e8 48 99 ff ff       	call   2c30 <asn1_delete_structure@plt>
    92e8:	85 db                	test   ebx,ebx
    92ea:	0f 88 00 f6 ff ff    	js     88f0 <asn1_der_decoding2+0x380>
    92f0:	f6 44 24 40 01       	test   BYTE PTR [rsp+0x40],0x1
    92f5:	75 08                	jne    92ff <asn1_der_decoding2+0xd8f>
    92f7:	85 db                	test   ebx,ebx
    92f9:	0f 85 f1 f5 ff ff    	jne    88f0 <asn1_der_decoding2+0x380>
    92ff:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
    9303:	29 d8                	sub    eax,ebx
    9305:	48 8b 5c 24 28       	mov    rbx,QWORD PTR [rsp+0x28]
    930a:	89 03                	mov    DWORD PTR [rbx],eax
    930c:	31 c0                	xor    eax,eax
    930e:	e9 f0 f5 ff ff       	jmp    8903 <asn1_der_decoding2+0x393>
    9313:	48 39 c5             	cmp    rbp,rax
    9316:	74 d0                	je     92e8 <asn1_der_decoding2+0xd78>
    9318:	48 8b 78 68          	mov    rdi,QWORD PTR [rax+0x68]
    931c:	48 85 ff             	test   rdi,rdi
    931f:	75 a2                	jne    92c3 <asn1_der_decoding2+0xd53>
    9321:	48 8b 84 24 88 00 00 	mov    rax,QWORD PTR [rsp+0x88]
    9328:	00 
    9329:	eb 0e                	jmp    9339 <asn1_der_decoding2+0xdc9>
    932b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    9330:	48 8b 78 68          	mov    rdi,QWORD PTR [rax+0x68]
    9334:	48 85 ff             	test   rdi,rdi
    9337:	75 8a                	jne    92c3 <asn1_der_decoding2+0xd53>
    9339:	48 89 c7             	mov    rdi,rax
    933c:	e8 5f 25 00 00       	call   b8a0 <_asn1_find_up>
    9341:	48 39 c5             	cmp    rbp,rax
    9344:	48 89 84 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rax
    934b:	00 
    934c:	75 e2                	jne    9330 <asn1_der_decoding2+0xdc0>
    934e:	eb 98                	jmp    92e8 <asn1_der_decoding2+0xd78>
    9350:	8b 44 24 40          	mov    eax,DWORD PTR [rsp+0x40]
    9354:	83 e0 06             	and    eax,0x6
    9357:	83 f8 02             	cmp    eax,0x2
    935a:	0f 84 a1 00 00 00    	je     9401 <asn1_der_decoding2+0xe91>
    9360:	48 63 b4 24 88 00 00 	movsxd rsi,DWORD PTR [rsp+0x88]
    9367:	00 
    9368:	4d 63 f4             	movsxd r14,r12d
    936b:	49 89 f5             	mov    r13,rsi
    936e:	48 01 ce             	add    rsi,rcx
    9371:	4c 8d bc 24 a0 00 00 	lea    r15,[rsp+0xa0]
    9378:	00 
    9379:	45 01 ec             	add    r12d,r13d
    937c:	b9 80 00 00 00       	mov    ecx,0x80
    9381:	4c 89 f2             	mov    rdx,r14
    9384:	4c 89 ff             	mov    rdi,r15
    9387:	e8 44 99 ff ff       	call   2cd0 <__memcpy_chk@plt>
    938c:	44 29 e3             	sub    ebx,r12d
    938f:	42 c6 84 34 a0 00 00 	mov    BYTE PTR [rsp+r14*1+0xa0],0x0
    9396:	00 00 
    9398:	44 89 64 24 54       	mov    DWORD PTR [rsp+0x54],r12d
    939d:	0f 88 4d f5 ff ff    	js     88f0 <asn1_der_decoding2+0x380>
    93a3:	4c 89 fa             	mov    rdx,r15
    93a6:	8b 0a                	mov    ecx,DWORD PTR [rdx]
    93a8:	48 83 c2 04          	add    rdx,0x4
    93ac:	8d 81 ff fe fe fe    	lea    eax,[rcx-0x1010101]
    93b2:	f7 d1                	not    ecx
    93b4:	21 c8                	and    eax,ecx
    93b6:	25 80 80 80 80       	and    eax,0x80808080
    93bb:	74 e9                	je     93a6 <asn1_der_decoding2+0xe36>
    93bd:	89 c1                	mov    ecx,eax
    93bf:	c1 e9 10             	shr    ecx,0x10
    93c2:	a9 80 80 00 00       	test   eax,0x8080
    93c7:	0f 44 c1             	cmove  eax,ecx
    93ca:	48 8d 4a 02          	lea    rcx,[rdx+0x2]
    93ce:	89 c6                	mov    esi,eax
    93d0:	48 0f 44 d1          	cmove  rdx,rcx
    93d4:	40 00 c6             	add    sil,al
    93d7:	48 83 da 03          	sbb    rdx,0x3
    93db:	4c 29 fa             	sub    rdx,r15
    93de:	85 d2                	test   edx,edx
    93e0:	7e 12                	jle    93f4 <asn1_der_decoding2+0xe84>
    93e2:	48 8b 7c 24 68       	mov    rdi,QWORD PTR [rsp+0x68]
    93e7:	4c 89 fe             	mov    rsi,r15
    93ea:	e8 71 20 00 00       	call   b460 <_asn1_set_value>
    93ef:	44 8b 64 24 54       	mov    r12d,DWORD PTR [rsp+0x54]
    93f4:	44 01 e5             	add    ebp,r12d
    93f7:	4c 8b 6c 24 68       	mov    r13,QWORD PTR [rsp+0x68]
    93fc:	e9 db f5 ff ff       	jmp    89dc <asn1_der_decoding2+0x46c>
    9401:	48 63 b4 24 88 00 00 	movsxd rsi,DWORD PTR [rsp+0x88]
    9408:	00 
    9409:	44 8b 4c 24 40       	mov    r9d,DWORD PTR [rsp+0x40]
    940e:	31 d2                	xor    edx,edx
    9410:	45 31 c0             	xor    r8d,r8d
    9413:	41 83 e1 02          	and    r9d,0x2
    9417:	49 89 f5             	mov    r13,rsi
    941a:	48 01 ce             	add    rsi,rcx
    941d:	31 c9                	xor    ecx,ecx
    941f:	eb 12                	jmp    9433 <asn1_der_decoding2+0xec3>
    9421:	3c 2e                	cmp    al,0x2e
    9423:	75 2b                	jne    9450 <asn1_der_decoding2+0xee0>
    9425:	41 b8 01 00 00 00    	mov    r8d,0x1
    942b:	48 83 c2 01          	add    rdx,0x1
    942f:	39 d7                	cmp    edi,edx
    9431:	76 76                	jbe    94a9 <asn1_der_decoding2+0xf39>
    9433:	0f b6 04 16          	movzx  eax,BYTE PTR [rsi+rdx*1]
    9437:	44 8d 50 d0          	lea    r10d,[rax-0x30]
    943b:	41 80 fa 09          	cmp    r10b,0x9
    943f:	76 ea                	jbe    942b <asn1_der_decoding2+0xebb>
    9441:	41 83 ff 25          	cmp    r15d,0x25
    9445:	0f 85 c1 fc ff ff    	jne    910c <asn1_der_decoding2+0xb9c>
    944b:	45 85 c0             	test   r8d,r8d
    944e:	74 d1                	je     9421 <asn1_der_decoding2+0xeb1>
    9450:	45 85 c9             	test   r9d,r9d
    9453:	0f 85 b3 fc ff ff    	jne    910c <asn1_der_decoding2+0xb9c>
    9459:	83 e8 2b             	sub    eax,0x2b
    945c:	a8 fd                	test   al,0xfd
    945e:	0f 85 a8 fc ff ff    	jne    910c <asn1_der_decoding2+0xb9c>
    9464:	85 c9                	test   ecx,ecx
    9466:	0f 85 a0 fc ff ff    	jne    910c <asn1_der_decoding2+0xb9c>
    946c:	b9 01 00 00 00       	mov    ecx,0x1
    9471:	eb b8                	jmp    942b <asn1_der_decoding2+0xebb>
    9473:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    9478:	48 8b bc 24 88 00 00 	mov    rdi,QWORD PTR [rsp+0x88]
    947f:	00 
    9480:	e8 1b 24 00 00       	call   b8a0 <_asn1_find_up>
    9485:	4c 89 e7             	mov    rdi,r12
    9488:	49 89 c5             	mov    r13,rax
    948b:	e8 a0 97 ff ff       	call   2c30 <asn1_delete_structure@plt>
    9490:	4d 85 ed             	test   r13,r13
    9493:	4c 89 ac 24 88 00 00 	mov    QWORD PTR [rsp+0x88],r13
    949a:	00 
    949b:	0f 84 47 fe ff ff    	je     92e8 <asn1_der_decoding2+0xd78>
    94a1:	4c 89 e8             	mov    rax,r13
    94a4:	e9 11 fe ff ff       	jmp    92ba <asn1_der_decoding2+0xd4a>
    94a9:	85 c9                	test   ecx,ecx
    94ab:	4d 63 f4             	movsxd r14,r12d
    94ae:	0f 85 bd fe ff ff    	jne    9371 <asn1_der_decoding2+0xe01>
    94b4:	4d 63 c4             	movsxd r8,r12d
    94b7:	42 80 7c 06 ff 5a    	cmp    BYTE PTR [rsi+r8*1-0x1],0x5a
    94bd:	0f 85 49 fc ff ff    	jne    910c <asn1_der_decoding2+0xb9c>
    94c3:	4d 89 c6             	mov    r14,r8
    94c6:	e9 a6 fe ff ff       	jmp    9371 <asn1_der_decoding2+0xe01>
    94cb:	e8 00 97 ff ff       	call   2bd0 <__stack_chk_fail@plt>
    94d0:	4c 8b 6c 24 68       	mov    r13,QWORD PTR [rsp+0x68]
    94d5:	e9 b7 f4 ff ff       	jmp    8991 <asn1_der_decoding2+0x421>
    94da:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000094e0 <asn1_der_decoding>:
    94e0:	48 83 ec 18          	sub    rsp,0x18
    94e4:	49 89 c8             	mov    r8,rcx
    94e7:	31 c9                	xor    ecx,ecx
    94e9:	89 54 24 0c          	mov    DWORD PTR [rsp+0xc],edx
    94ed:	48 8d 54 24 0c       	lea    rdx,[rsp+0xc]
    94f2:	e8 09 99 ff ff       	call   2e00 <asn1_der_decoding2@plt>
    94f7:	48 83 c4 18          	add    rsp,0x18
    94fb:	c3                   	ret    
    94fc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000009500 <asn1_der_decoding_element>:
    9500:	48 89 d6             	mov    rsi,rdx
    9503:	89 ca                	mov    edx,ecx
    9505:	4c 89 c1             	mov    rcx,r8
    9508:	e9 23 98 ff ff       	jmp    2d30 <asn1_der_decoding@plt>
    950d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000009510 <asn1_der_decoding_startEnd>:
    9510:	41 56                	push   r14
    9512:	41 55                	push   r13
    9514:	41 54                	push   r12
    9516:	55                   	push   rbp
    9517:	53                   	push   rbx
    9518:	48 83 ec 10          	sub    rsp,0x10
    951c:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    9523:	00 00 
    9525:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    952a:	31 c0                	xor    eax,eax
    952c:	48 85 ff             	test   rdi,rdi
    952f:	48 89 3c 24          	mov    QWORD PTR [rsp],rdi
    9533:	0f 84 8f 00 00 00    	je     95c8 <asn1_der_decoding_startEnd+0xb8>
    9539:	49 89 f5             	mov    r13,rsi
    953c:	48 89 ce             	mov    rsi,rcx
    953f:	41 89 d6             	mov    r14d,edx
    9542:	48 89 cd             	mov    rbp,rcx
    9545:	4c 89 c3             	mov    rbx,r8
    9548:	4d 89 cc             	mov    r12,r9
    954b:	e8 e0 95 ff ff       	call   2b30 <asn1_find_node@plt>
    9550:	48 85 c0             	test   rax,rax
    9553:	74 73                	je     95c8 <asn1_der_decoding_startEnd+0xb8>
    9555:	8b 90 8c 00 00 00    	mov    edx,DWORD PTR [rax+0x8c]
    955b:	89 13                	mov    DWORD PTR [rbx],edx
    955d:	8b 80 90 00 00 00    	mov    eax,DWORD PTR [rax+0x90]
    9563:	41 89 04 24          	mov    DWORD PTR [r12],eax
    9567:	8b 0b                	mov    ecx,DWORD PTR [rbx]
    9569:	89 c2                	mov    edx,eax
    956b:	09 ca                	or     edx,ecx
    956d:	75 49                	jne    95b8 <asn1_der_decoding_startEnd+0xa8>
    956f:	4d 85 ed             	test   r13,r13
    9572:	74 48                	je     95bc <asn1_der_decoding_startEnd+0xac>
    9574:	45 85 f6             	test   r14d,r14d
    9577:	74 43                	je     95bc <asn1_der_decoding_startEnd+0xac>
    9579:	31 c9                	xor    ecx,ecx
    957b:	48 89 e7             	mov    rdi,rsp
    957e:	44 89 f2             	mov    edx,r14d
    9581:	4c 89 ee             	mov    rsi,r13
    9584:	e8 a7 97 ff ff       	call   2d30 <asn1_der_decoding@plt>
    9589:	85 c0                	test   eax,eax
    958b:	75 40                	jne    95cd <asn1_der_decoding_startEnd+0xbd>
    958d:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
    9591:	48 89 ee             	mov    rsi,rbp
    9594:	e8 97 95 ff ff       	call   2b30 <asn1_find_node@plt>
    9599:	48 85 c0             	test   rax,rax
    959c:	74 2a                	je     95c8 <asn1_der_decoding_startEnd+0xb8>
    959e:	8b 90 8c 00 00 00    	mov    edx,DWORD PTR [rax+0x8c]
    95a4:	89 13                	mov    DWORD PTR [rbx],edx
    95a6:	8b 80 90 00 00 00    	mov    eax,DWORD PTR [rax+0x90]
    95ac:	41 89 04 24          	mov    DWORD PTR [r12],eax
    95b0:	8b 0b                	mov    ecx,DWORD PTR [rbx]
    95b2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    95b8:	39 c1                	cmp    ecx,eax
    95ba:	7e 34                	jle    95f0 <asn1_der_decoding_startEnd+0xe0>
    95bc:	b8 06 00 00 00       	mov    eax,0x6
    95c1:	eb 0a                	jmp    95cd <asn1_der_decoding_startEnd+0xbd>
    95c3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    95c8:	b8 02 00 00 00       	mov    eax,0x2
    95cd:	48 8b 74 24 08       	mov    rsi,QWORD PTR [rsp+0x8]
    95d2:	64 48 33 34 25 28 00 	xor    rsi,QWORD PTR fs:0x28
    95d9:	00 00 
    95db:	75 17                	jne    95f4 <asn1_der_decoding_startEnd+0xe4>
    95dd:	48 83 c4 10          	add    rsp,0x10
    95e1:	5b                   	pop    rbx
    95e2:	5d                   	pop    rbp
    95e3:	41 5c                	pop    r12
    95e5:	41 5d                	pop    r13
    95e7:	41 5e                	pop    r14
    95e9:	c3                   	ret    
    95ea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    95f0:	31 c0                	xor    eax,eax
    95f2:	eb d9                	jmp    95cd <asn1_der_decoding_startEnd+0xbd>
    95f4:	e8 d7 95 ff ff       	call   2bd0 <__stack_chk_fail@plt>
    95f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000009600 <asn1_expand_any_defined_by>:
    9600:	41 57                	push   r15
    9602:	41 56                	push   r14
    9604:	41 55                	push   r13
    9606:	41 54                	push   r12
    9608:	55                   	push   rbp
    9609:	53                   	push   rbx
    960a:	48 81 ec 98 01 00 00 	sub    rsp,0x198
    9611:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    9618:	00 00 
    961a:	48 89 84 24 88 01 00 	mov    QWORD PTR [rsp+0x188],rax
    9621:	00 
    9622:	31 c0                	xor    eax,eax
    9624:	48 85 ff             	test   rdi,rdi
    9627:	48 c7 44 24 38 00 00 	mov    QWORD PTR [rsp+0x38],0x0
    962e:	00 00 
    9630:	b8 02 00 00 00       	mov    eax,0x2
    9635:	0f 84 35 01 00 00    	je     9770 <asn1_expand_any_defined_by+0x170>
    963b:	49 89 fc             	mov    r12,rdi
    963e:	48 8b 3e             	mov    rdi,QWORD PTR [rsi]
    9641:	48 89 f5             	mov    rbp,rsi
    9644:	48 85 ff             	test   rdi,rdi
    9647:	0f 84 23 01 00 00    	je     9770 <asn1_expand_any_defined_by+0x170>
    964d:	48 8d 44 24 28       	lea    rax,[rsp+0x28]
    9652:	4c 8d ac 24 00 01 00 	lea    r13,[rsp+0x100]
    9659:	00 
    965a:	48 89 7c 24 30       	mov    QWORD PTR [rsp+0x30],rdi
    965f:	31 db                	xor    ebx,ebx
    9661:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
    9666:	48 8d 44 24 40       	lea    rax,[rsp+0x40]
    966b:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    9670:	48 8d 44 24 38       	lea    rax,[rsp+0x38]
    9675:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
    967a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    9680:	8b 47 48             	mov    eax,DWORD PTR [rdi+0x48]
    9683:	3c 0d                	cmp    al,0xd
    9685:	0f 85 15 01 00 00    	jne    97a0 <asn1_expand_any_defined_by+0x1a0>
    968b:	a9 00 00 40 00       	test   eax,0x400000
    9690:	0f 84 0a 01 00 00    	je     97a0 <asn1_expand_any_defined_by+0x1a0>
    9696:	48 83 7f 50 00       	cmp    QWORD PTR [rdi+0x50],0x0
    969b:	0f 84 ff 00 00 00    	je     97a0 <asn1_expand_any_defined_by+0x1a0>
    96a1:	4c 8b 77 60          	mov    r14,QWORD PTR [rdi+0x60]
    96a5:	4d 85 f6             	test   r14,r14
    96a8:	75 13                	jne    96bd <asn1_expand_any_defined_by+0xbd>
    96aa:	e9 86 02 00 00       	jmp    9935 <asn1_expand_any_defined_by+0x335>
    96af:	90                   	nop
    96b0:	4d 8b 76 68          	mov    r14,QWORD PTR [r14+0x68]
    96b4:	4d 85 f6             	test   r14,r14
    96b7:	0f 84 13 01 00 00    	je     97d0 <asn1_expand_any_defined_by+0x1d0>
    96bd:	41 80 7e 48 01       	cmp    BYTE PTR [r14+0x48],0x1
    96c2:	75 ec                	jne    96b0 <asn1_expand_any_defined_by+0xb0>
    96c4:	e8 d7 21 00 00       	call   b8a0 <_asn1_find_up>
    96c9:	48 85 c0             	test   rax,rax
    96cc:	74 7d                	je     974b <asn1_expand_any_defined_by+0x14b>
    96ce:	4c 8b 78 60          	mov    r15,QWORD PTR [rax+0x60]
    96d2:	4d 85 ff             	test   r15,r15
    96d5:	75 12                	jne    96e9 <asn1_expand_any_defined_by+0xe9>
    96d7:	eb 2a                	jmp    9703 <asn1_expand_any_defined_by+0x103>
    96d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    96e0:	4d 8b 7f 68          	mov    r15,QWORD PTR [r15+0x68]
    96e4:	4d 85 ff             	test   r15,r15
    96e7:	74 1a                	je     9703 <asn1_expand_any_defined_by+0x103>
    96e9:	4c 89 f6             	mov    rsi,r14
    96ec:	4c 89 ff             	mov    rdi,r15
    96ef:	e8 cc 95 ff ff       	call   2cc0 <strcmp@plt>
    96f4:	85 c0                	test   eax,eax
    96f6:	75 e8                	jne    96e0 <asn1_expand_any_defined_by+0xe0>
    96f8:	41 80 7f 48 0c       	cmp    BYTE PTR [r15+0x48],0xc
    96fd:	0f 84 dd 00 00 00    	je     97e0 <asn1_expand_any_defined_by+0x1e0>
    9703:	48 8b 7c 24 30       	mov    rdi,QWORD PTR [rsp+0x30]
    9708:	e8 93 21 00 00       	call   b8a0 <_asn1_find_up>
    970d:	48 89 c7             	mov    rdi,rax
    9710:	e8 8b 21 00 00       	call   b8a0 <_asn1_find_up>
    9715:	48 85 c0             	test   rax,rax
    9718:	74 31                	je     974b <asn1_expand_any_defined_by+0x14b>
    971a:	4c 8b 78 60          	mov    r15,QWORD PTR [rax+0x60]
    971e:	4d 85 ff             	test   r15,r15
    9721:	75 0e                	jne    9731 <asn1_expand_any_defined_by+0x131>
    9723:	eb 26                	jmp    974b <asn1_expand_any_defined_by+0x14b>
    9725:	0f 1f 00             	nop    DWORD PTR [rax]
    9728:	4d 8b 7f 68          	mov    r15,QWORD PTR [r15+0x68]
    972c:	4d 85 ff             	test   r15,r15
    972f:	74 1a                	je     974b <asn1_expand_any_defined_by+0x14b>
    9731:	4c 89 f6             	mov    rsi,r14
    9734:	4c 89 ff             	mov    rdi,r15
    9737:	e8 84 95 ff ff       	call   2cc0 <strcmp@plt>
    973c:	85 c0                	test   eax,eax
    973e:	75 e8                	jne    9728 <asn1_expand_any_defined_by+0x128>
    9740:	41 80 7f 48 0c       	cmp    BYTE PTR [r15+0x48],0xc
    9745:	0f 84 da 01 00 00    	je     9925 <asn1_expand_any_defined_by+0x325>
    974b:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
    9750:	bb 0a 00 00 00       	mov    ebx,0xa
    9755:	48 8b 7a 60          	mov    rdi,QWORD PTR [rdx+0x60]
    9759:	48 85 ff             	test   rdi,rdi
    975c:	74 50                	je     97ae <asn1_expand_any_defined_by+0x1ae>
    975e:	66 90                	xchg   ax,ax
    9760:	48 85 ff             	test   rdi,rdi
    9763:	48 89 7c 24 30       	mov    QWORD PTR [rsp+0x30],rdi
    9768:	0f 85 12 ff ff ff    	jne    9680 <asn1_expand_any_defined_by+0x80>
    976e:	89 d8                	mov    eax,ebx
    9770:	48 8b 8c 24 88 01 00 	mov    rcx,QWORD PTR [rsp+0x188]
    9777:	00 
    9778:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
    977f:	00 00 
    9781:	0f 85 5f 02 00 00    	jne    99e6 <asn1_expand_any_defined_by+0x3e6>
    9787:	48 81 c4 98 01 00 00 	add    rsp,0x198
    978e:	5b                   	pop    rbx
    978f:	5d                   	pop    rbp
    9790:	41 5c                	pop    r12
    9792:	41 5d                	pop    r13
    9794:	41 5e                	pop    r14
    9796:	41 5f                	pop    r15
    9798:	c3                   	ret    
    9799:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    97a0:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
    97a5:	48 8b 7a 60          	mov    rdi,QWORD PTR [rdx+0x60]
    97a9:	48 85 ff             	test   rdi,rdi
    97ac:	75 b2                	jne    9760 <asn1_expand_any_defined_by+0x160>
    97ae:	48 39 55 00          	cmp    QWORD PTR [rbp+0x0],rdx
    97b2:	74 ba                	je     976e <asn1_expand_any_defined_by+0x16e>
    97b4:	48 8b 7a 68          	mov    rdi,QWORD PTR [rdx+0x68]
    97b8:	48 85 ff             	test   rdi,rdi
    97bb:	0f 84 2f 01 00 00    	je     98f0 <asn1_expand_any_defined_by+0x2f0>
    97c1:	48 89 7c 24 30       	mov    QWORD PTR [rsp+0x30],rdi
    97c6:	e9 b5 fe ff ff       	jmp    9680 <asn1_expand_any_defined_by+0x80>
    97cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    97d0:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
    97d5:	bb 0a 00 00 00       	mov    ebx,0xa
    97da:	48 8b 78 60          	mov    rdi,QWORD PTR [rax+0x60]
    97de:	eb 80                	jmp    9760 <asn1_expand_any_defined_by+0x160>
    97e0:	49 83 7f 50 00       	cmp    QWORD PTR [r15+0x50],0x0
    97e5:	0f 84 18 ff ff ff    	je     9703 <asn1_expand_any_defined_by+0x103>
    97eb:	4d 8b 74 24 60       	mov    r14,QWORD PTR [r12+0x60]
    97f0:	4d 85 f6             	test   r14,r14
    97f3:	75 18                	jne    980d <asn1_expand_any_defined_by+0x20d>
    97f5:	e9 51 ff ff ff       	jmp    974b <asn1_expand_any_defined_by+0x14b>
    97fa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    9800:	4d 8b 76 68          	mov    r14,QWORD PTR [r14+0x68]
    9804:	4d 85 f6             	test   r14,r14
    9807:	0f 84 3e ff ff ff    	je     974b <asn1_expand_any_defined_by+0x14b>
    980d:	41 8b 46 48          	mov    eax,DWORD PTR [r14+0x48]
    9811:	3c 0c                	cmp    al,0xc
    9813:	75 eb                	jne    9800 <asn1_expand_any_defined_by+0x200>
    9815:	a9 00 00 00 10       	test   eax,0x10000000
    981a:	74 e4                	je     9800 <asn1_expand_any_defined_by+0x200>
    981c:	48 83 ec 08          	sub    rsp,0x8
    9820:	4c 8d 05 93 64 00 00 	lea    r8,[rip+0x6493]        # fcba <bit_mask+0x1ca>
    9827:	4d 89 e1             	mov    r9,r12
    982a:	41 56                	push   r14
    982c:	b9 82 00 00 00       	mov    ecx,0x82
    9831:	ba 01 00 00 00       	mov    edx,0x1
    9836:	be 82 00 00 00       	mov    esi,0x82
    983b:	4c 89 ef             	mov    rdi,r13
    983e:	31 c0                	xor    eax,eax
    9840:	e8 bb 92 ff ff       	call   2b00 <__snprintf_chk@plt>
    9845:	48 8b 4c 24 20       	mov    rcx,QWORD PTR [rsp+0x20]
    984a:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
    984f:	4c 89 ee             	mov    rsi,r13
    9852:	4c 89 e7             	mov    rdi,r12
    9855:	c7 44 24 38 40 00 00 	mov    DWORD PTR [rsp+0x38],0x40
    985c:	00 
    985d:	e8 fe 94 ff ff       	call   2d60 <asn1_read_value@plt>
    9862:	85 c0                	test   eax,eax
    9864:	5e                   	pop    rsi
    9865:	5f                   	pop    rdi
    9866:	75 98                	jne    9800 <asn1_expand_any_defined_by+0x200>
    9868:	49 8b 7f 50          	mov    rdi,QWORD PTR [r15+0x50]
    986c:	48 8b 74 24 08       	mov    rsi,QWORD PTR [rsp+0x8]
    9871:	e8 4a 94 ff ff       	call   2cc0 <strcmp@plt>
    9876:	85 c0                	test   eax,eax
    9878:	75 86                	jne    9800 <asn1_expand_any_defined_by+0x200>
    987a:	49 8b 46 68          	mov    rax,QWORD PTR [r14+0x68]
    987e:	48 85 c0             	test   rax,rax
    9881:	75 1a                	jne    989d <asn1_expand_any_defined_by+0x29d>
    9883:	e9 c3 fe ff ff       	jmp    974b <asn1_expand_any_defined_by+0x14b>
    9888:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    988f:	00 
    9890:	48 8b 40 68          	mov    rax,QWORD PTR [rax+0x68]
    9894:	48 85 c0             	test   rax,rax
    9897:	0f 84 ae fe ff ff    	je     974b <asn1_expand_any_defined_by+0x14b>
    989d:	f6 40 4b 10          	test   BYTE PTR [rax+0x4b],0x10
    98a1:	75 ed                	jne    9890 <asn1_expand_any_defined_by+0x290>
    98a3:	48 83 ec 08          	sub    rsp,0x8
    98a7:	4c 8d 05 0c 64 00 00 	lea    r8,[rip+0x640c]        # fcba <bit_mask+0x1ca>
    98ae:	b9 82 00 00 00       	mov    ecx,0x82
    98b3:	50                   	push   rax
    98b4:	4d 89 e1             	mov    r9,r12
    98b7:	ba 01 00 00 00       	mov    edx,0x1
    98bc:	be 82 00 00 00       	mov    esi,0x82
    98c1:	4c 89 ef             	mov    rdi,r13
    98c4:	31 c0                	xor    eax,eax
    98c6:	e8 35 92 ff ff       	call   2b00 <__snprintf_chk@plt>
    98cb:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
    98d0:	4c 89 ee             	mov    rsi,r13
    98d3:	4c 89 e7             	mov    rdi,r12
    98d6:	e8 15 93 ff ff       	call   2bf0 <asn1_create_element@plt>
    98db:	85 c0                	test   eax,eax
    98dd:	5a                   	pop    rdx
    98de:	59                   	pop    rcx
    98df:	74 63                	je     9944 <asn1_expand_any_defined_by+0x344>
    98e1:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
    98e6:	89 c3                	mov    ebx,eax
    98e8:	e9 68 fe ff ff       	jmp    9755 <asn1_expand_any_defined_by+0x155>
    98ed:	0f 1f 00             	nop    DWORD PTR [rax]
    98f0:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
    98f5:	eb 16                	jmp    990d <asn1_expand_any_defined_by+0x30d>
    98f7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    98fe:	00 00 
    9900:	48 8b 78 68          	mov    rdi,QWORD PTR [rax+0x68]
    9904:	48 85 ff             	test   rdi,rdi
    9907:	0f 85 b4 fe ff ff    	jne    97c1 <asn1_expand_any_defined_by+0x1c1>
    990d:	48 89 c7             	mov    rdi,rax
    9910:	e8 8b 1f 00 00       	call   b8a0 <_asn1_find_up>
    9915:	48 3b 45 00          	cmp    rax,QWORD PTR [rbp+0x0]
    9919:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
    991e:	75 e0                	jne    9900 <asn1_expand_any_defined_by+0x300>
    9920:	e9 49 fe ff ff       	jmp    976e <asn1_expand_any_defined_by+0x16e>
    9925:	49 83 7f 50 00       	cmp    QWORD PTR [r15+0x50],0x0
    992a:	0f 85 bb fe ff ff    	jne    97eb <asn1_expand_any_defined_by+0x1eb>
    9930:	e9 16 fe ff ff       	jmp    974b <asn1_expand_any_defined_by+0x14b>
    9935:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
    993a:	bb 0a 00 00 00       	mov    ebx,0xa
    993f:	e9 6a fe ff ff       	jmp    97ae <asn1_expand_any_defined_by+0x1ae>
    9944:	48 8b 74 24 30       	mov    rsi,QWORD PTR [rsp+0x30]
    9949:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
    994e:	e8 1d 1e 00 00       	call   b770 <_asn1_cpy_name>
    9953:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
    9958:	48 8d 54 24 2c       	lea    rdx,[rsp+0x2c]
    995d:	8b 70 58             	mov    esi,DWORD PTR [rax+0x58]
    9960:	48 8b 78 50          	mov    rdi,QWORD PTR [rax+0x50]
    9964:	e8 37 94 ff ff       	call   2da0 <asn1_get_length_der@plt>
    9969:	85 c0                	test   eax,eax
    996b:	0f 88 91 00 00 00    	js     9a02 <asn1_expand_any_defined_by+0x402>
    9971:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
    9976:	48 63 74 24 2c       	movsxd rsi,DWORD PTR [rsp+0x2c]
    997b:	48 8d 8c 24 80 00 00 	lea    rcx,[rsp+0x80]
    9982:	00 
    9983:	48 8b 7c 24 18       	mov    rdi,QWORD PTR [rsp+0x18]
    9988:	48 03 72 50          	add    rsi,QWORD PTR [rdx+0x50]
    998c:	89 c2                	mov    edx,eax
    998e:	e8 9d 93 ff ff       	call   2d30 <asn1_der_decoding@plt>
    9993:	85 c0                	test   eax,eax
    9995:	0f 85 46 ff ff ff    	jne    98e1 <asn1_expand_any_defined_by+0x2e1>
    999b:	48 8b 44 24 30       	mov    rax,QWORD PTR [rsp+0x30]
    99a0:	48 8b 7c 24 38       	mov    rdi,QWORD PTR [rsp+0x38]
    99a5:	48 8b 70 68          	mov    rsi,QWORD PTR [rax+0x68]
    99a9:	e8 12 1e 00 00       	call   b7c0 <_asn1_set_right>
    99ae:	48 8b 74 24 38       	mov    rsi,QWORD PTR [rsp+0x38]
    99b3:	48 8b 7c 24 30       	mov    rdi,QWORD PTR [rsp+0x30]
    99b8:	e8 03 1e 00 00       	call   b7c0 <_asn1_set_right>
    99bd:	48 8d 7c 24 30       	lea    rdi,[rsp+0x30]
    99c2:	e8 69 92 ff ff       	call   2c30 <asn1_delete_structure@plt>
    99c7:	85 c0                	test   eax,eax
    99c9:	41 89 c6             	mov    r14d,eax
    99cc:	75 1d                	jne    99eb <asn1_expand_any_defined_by+0x3eb>
    99ce:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
    99d3:	48 c7 44 24 38 00 00 	mov    QWORD PTR [rsp+0x38],0x0
    99da:	00 00 
    99dc:	48 89 54 24 30       	mov    QWORD PTR [rsp+0x30],rdx
    99e1:	e9 6f fd ff ff       	jmp    9755 <asn1_expand_any_defined_by+0x155>
    99e6:	e8 e5 91 ff ff       	call   2bd0 <__stack_chk_fail@plt>
    99eb:	48 8b 7c 24 18       	mov    rdi,QWORD PTR [rsp+0x18]
    99f0:	44 89 f3             	mov    ebx,r14d
    99f3:	e8 38 92 ff ff       	call   2c30 <asn1_delete_structure@plt>
    99f8:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
    99fd:	e9 53 fd ff ff       	jmp    9755 <asn1_expand_any_defined_by+0x155>
    9a02:	b8 04 00 00 00       	mov    eax,0x4
    9a07:	e9 64 fd ff ff       	jmp    9770 <asn1_expand_any_defined_by+0x170>
    9a0c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000009a10 <asn1_expand_octet_string>:
    9a10:	41 57                	push   r15
    9a12:	41 56                	push   r14
    9a14:	41 55                	push   r13
    9a16:	41 54                	push   r12
    9a18:	55                   	push   rbp
    9a19:	53                   	push   rbx
    9a1a:	48 81 ec 78 01 00 00 	sub    rsp,0x178
    9a21:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    9a28:	00 00 
    9a2a:	48 89 84 24 68 01 00 	mov    QWORD PTR [rsp+0x168],rax
    9a31:	00 
    9a32:	31 c0                	xor    eax,eax
    9a34:	48 85 ff             	test   rdi,rdi
    9a37:	48 c7 44 24 10 00 00 	mov    QWORD PTR [rsp+0x10],0x0
    9a3e:	00 00 
    9a40:	48 c7 44 24 18 00 00 	mov    QWORD PTR [rsp+0x18],0x0
    9a47:	00 00 
    9a49:	74 29                	je     9a74 <asn1_expand_octet_string+0x64>
    9a4b:	48 89 fb             	mov    rbx,rdi
    9a4e:	48 8b 3e             	mov    rdi,QWORD PTR [rsi]
    9a51:	48 89 f5             	mov    rbp,rsi
    9a54:	48 85 ff             	test   rdi,rdi
    9a57:	74 1b                	je     9a74 <asn1_expand_octet_string+0x64>
    9a59:	48 89 d6             	mov    rsi,rdx
    9a5c:	49 89 cc             	mov    r12,rcx
    9a5f:	e8 cc 90 ff ff       	call   2b30 <asn1_find_node@plt>
    9a64:	48 85 c0             	test   rax,rax
    9a67:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
    9a6c:	74 06                	je     9a74 <asn1_expand_octet_string+0x64>
    9a6e:	80 78 48 07          	cmp    BYTE PTR [rax+0x48],0x7
    9a72:	74 34                	je     9aa8 <asn1_expand_octet_string+0x98>
    9a74:	b8 02 00 00 00       	mov    eax,0x2
    9a79:	48 8b 8c 24 68 01 00 	mov    rcx,QWORD PTR [rsp+0x168]
    9a80:	00 
    9a81:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
    9a88:	00 00 
    9a8a:	0f 85 02 01 00 00    	jne    9b92 <asn1_expand_octet_string+0x182>
    9a90:	48 81 c4 78 01 00 00 	add    rsp,0x178
    9a97:	5b                   	pop    rbx
    9a98:	5d                   	pop    rbp
    9a99:	41 5c                	pop    r12
    9a9b:	41 5d                	pop    r13
    9a9d:	41 5e                	pop    r14
    9a9f:	41 5f                	pop    r15
    9aa1:	c3                   	ret    
    9aa2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    9aa8:	48 83 78 50 00       	cmp    QWORD PTR [rax+0x50],0x0
    9aad:	0f 84 d5 00 00 00    	je     9b88 <asn1_expand_octet_string+0x178>
    9ab3:	48 8b 7d 00          	mov    rdi,QWORD PTR [rbp+0x0]
    9ab7:	4c 89 e6             	mov    rsi,r12
    9aba:	e8 71 90 ff ff       	call   2b30 <asn1_find_node@plt>
    9abf:	48 85 c0             	test   rax,rax
    9ac2:	49 89 c7             	mov    r15,rax
    9ac5:	74 ad                	je     9a74 <asn1_expand_octet_string+0x64>
    9ac7:	80 78 48 0c          	cmp    BYTE PTR [rax+0x48],0xc
    9acb:	75 a7                	jne    9a74 <asn1_expand_octet_string+0x64>
    9acd:	48 83 78 50 00       	cmp    QWORD PTR [rax+0x50],0x0
    9ad2:	0f 84 b0 00 00 00    	je     9b88 <asn1_expand_octet_string+0x178>
    9ad8:	48 8b 6b 60          	mov    rbp,QWORD PTR [rbx+0x60]
    9adc:	48 85 ed             	test   rbp,rbp
    9adf:	0f 84 94 00 00 00    	je     9b79 <asn1_expand_octet_string+0x169>
    9ae5:	4c 8d a4 24 e0 00 00 	lea    r12,[rsp+0xe0]
    9aec:	00 
    9aed:	4c 8d 74 24 08       	lea    r14,[rsp+0x8]
    9af2:	4c 8d 6c 24 20       	lea    r13,[rsp+0x20]
    9af7:	eb 10                	jmp    9b09 <asn1_expand_octet_string+0xf9>
    9af9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    9b00:	48 8b 6d 68          	mov    rbp,QWORD PTR [rbp+0x68]
    9b04:	48 85 ed             	test   rbp,rbp
    9b07:	74 70                	je     9b79 <asn1_expand_octet_string+0x169>
    9b09:	8b 45 48             	mov    eax,DWORD PTR [rbp+0x48]
    9b0c:	3c 0c                	cmp    al,0xc
    9b0e:	75 f0                	jne    9b00 <asn1_expand_octet_string+0xf0>
    9b10:	a9 00 00 00 10       	test   eax,0x10000000
    9b15:	74 e9                	je     9b00 <asn1_expand_octet_string+0xf0>
    9b17:	ba 81 00 00 00       	mov    edx,0x81
    9b1c:	48 89 de             	mov    rsi,rbx
    9b1f:	4c 89 e7             	mov    rdi,r12
    9b22:	e8 d9 91 ff ff       	call   2d00 <__stpcpy_chk@plt>
    9b27:	48 8d 78 01          	lea    rdi,[rax+0x1]
    9b2b:	ba 81 00 00 00       	mov    edx,0x81
    9b30:	48 89 ee             	mov    rsi,rbp
    9b33:	c6 00 2e             	mov    BYTE PTR [rax],0x2e
    9b36:	e8 15 92 ff ff       	call   2d50 <__strcpy_chk@plt>
    9b3b:	4c 89 f1             	mov    rcx,r14
    9b3e:	4c 89 ea             	mov    rdx,r13
    9b41:	4c 89 e6             	mov    rsi,r12
    9b44:	48 89 df             	mov    rdi,rbx
    9b47:	c7 44 24 08 40 00 00 	mov    DWORD PTR [rsp+0x8],0x40
    9b4e:	00 
    9b4f:	e8 0c 92 ff ff       	call   2d60 <asn1_read_value@plt>
    9b54:	85 c0                	test   eax,eax
    9b56:	75 a8                	jne    9b00 <asn1_expand_octet_string+0xf0>
    9b58:	49 8b 7f 50          	mov    rdi,QWORD PTR [r15+0x50]
    9b5c:	4c 89 ee             	mov    rsi,r13
    9b5f:	e8 5c 91 ff ff       	call   2cc0 <strcmp@plt>
    9b64:	85 c0                	test   eax,eax
    9b66:	75 98                	jne    9b00 <asn1_expand_octet_string+0xf0>
    9b68:	eb 06                	jmp    9b70 <asn1_expand_octet_string+0x160>
    9b6a:	f6 45 4b 10          	test   BYTE PTR [rbp+0x4b],0x10
    9b6e:	74 27                	je     9b97 <asn1_expand_octet_string+0x187>
    9b70:	48 8b 6d 68          	mov    rbp,QWORD PTR [rbp+0x68]
    9b74:	48 85 ed             	test   rbp,rbp
    9b77:	75 f1                	jne    9b6a <asn1_expand_octet_string+0x15a>
    9b79:	b8 07 00 00 00       	mov    eax,0x7
    9b7e:	e9 f6 fe ff ff       	jmp    9a79 <asn1_expand_octet_string+0x69>
    9b83:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    9b88:	b8 05 00 00 00       	mov    eax,0x5
    9b8d:	e9 e7 fe ff ff       	jmp    9a79 <asn1_expand_octet_string+0x69>
    9b92:	e8 39 90 ff ff       	call   2bd0 <__stack_chk_fail@plt>
    9b97:	48 89 de             	mov    rsi,rbx
    9b9a:	ba 81 00 00 00       	mov    edx,0x81
    9b9f:	4c 89 e7             	mov    rdi,r12
    9ba2:	e8 59 91 ff ff       	call   2d00 <__stpcpy_chk@plt>
    9ba7:	48 89 ee             	mov    rsi,rbp
    9baa:	48 8d 78 01          	lea    rdi,[rax+0x1]
    9bae:	48 8d 6c 24 10       	lea    rbp,[rsp+0x10]
    9bb3:	ba 81 00 00 00       	mov    edx,0x81
    9bb8:	c6 00 2e             	mov    BYTE PTR [rax],0x2e
    9bbb:	e8 90 91 ff ff       	call   2d50 <__strcpy_chk@plt>
    9bc0:	48 89 df             	mov    rdi,rbx
    9bc3:	48 89 ea             	mov    rdx,rbp
    9bc6:	4c 89 e6             	mov    rsi,r12
    9bc9:	e8 22 90 ff ff       	call   2bf0 <asn1_create_element@plt>
    9bce:	85 c0                	test   eax,eax
    9bd0:	89 c3                	mov    ebx,eax
    9bd2:	74 07                	je     9bdb <asn1_expand_octet_string+0x1cb>
    9bd4:	89 d8                	mov    eax,ebx
    9bd6:	e9 9e fe ff ff       	jmp    9a79 <asn1_expand_octet_string+0x69>
    9bdb:	48 8b 74 24 18       	mov    rsi,QWORD PTR [rsp+0x18]
    9be0:	48 8b 7c 24 10       	mov    rdi,QWORD PTR [rsp+0x10]
    9be5:	e8 86 1b 00 00       	call   b770 <_asn1_cpy_name>
    9bea:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
    9bef:	48 8d 54 24 0c       	lea    rdx,[rsp+0xc]
    9bf4:	8b 70 58             	mov    esi,DWORD PTR [rax+0x58]
    9bf7:	48 8b 78 50          	mov    rdi,QWORD PTR [rax+0x50]
    9bfb:	e8 a0 91 ff ff       	call   2da0 <asn1_get_length_der@plt>
    9c00:	48 89 c2             	mov    rdx,rax
    9c03:	b8 04 00 00 00       	mov    eax,0x4
    9c08:	85 d2                	test   edx,edx
    9c0a:	0f 88 69 fe ff ff    	js     9a79 <asn1_expand_octet_string+0x69>
    9c10:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
    9c15:	48 63 74 24 0c       	movsxd rsi,DWORD PTR [rsp+0xc]
    9c1a:	48 8d 4c 24 60       	lea    rcx,[rsp+0x60]
    9c1f:	48 89 ef             	mov    rdi,rbp
    9c22:	48 03 70 50          	add    rsi,QWORD PTR [rax+0x50]
    9c26:	e8 05 91 ff ff       	call   2d30 <asn1_der_decoding@plt>
    9c2b:	85 c0                	test   eax,eax
    9c2d:	89 c3                	mov    ebx,eax
    9c2f:	75 a3                	jne    9bd4 <asn1_expand_octet_string+0x1c4>
    9c31:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
    9c36:	48 8b 7c 24 10       	mov    rdi,QWORD PTR [rsp+0x10]
    9c3b:	48 8b 70 68          	mov    rsi,QWORD PTR [rax+0x68]
    9c3f:	e8 7c 1b 00 00       	call   b7c0 <_asn1_set_right>
    9c44:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
    9c49:	48 8b 7c 24 18       	mov    rdi,QWORD PTR [rsp+0x18]
    9c4e:	e8 6d 1b 00 00       	call   b7c0 <_asn1_set_right>
    9c53:	48 8d 7c 24 18       	lea    rdi,[rsp+0x18]
    9c58:	e8 d3 8f ff ff       	call   2c30 <asn1_delete_structure@plt>
    9c5d:	85 c0                	test   eax,eax
    9c5f:	89 c3                	mov    ebx,eax
    9c61:	0f 84 6d ff ff ff    	je     9bd4 <asn1_expand_octet_string+0x1c4>
    9c67:	48 89 ef             	mov    rdi,rbp
    9c6a:	e8 c1 8f ff ff       	call   2c30 <asn1_delete_structure@plt>
    9c6f:	89 d8                	mov    eax,ebx
    9c71:	e9 03 fe ff ff       	jmp    9a79 <asn1_expand_octet_string+0x69>
    9c76:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    9c7d:	00 00 00 

0000000000009c80 <asn1_decode_simple_der>:
    9c80:	41 b9 01 00 00 00    	mov    r9d,0x1
    9c86:	e9 55 d8 ff ff       	jmp    74e0 <_asn1_decode_simple_der>
    9c8b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000009c90 <asn1_decode_simple_ber>:
    9c90:	48 83 ec 10          	sub    rsp,0x10
    9c94:	6a 01                	push   0x1
    9c96:	e8 b5 de ff ff       	call   7b50 <_asn1_decode_simple_ber>
    9c9b:	48 83 c4 18          	add    rsp,0x18
    9c9f:	c3                   	ret    

0000000000009ca0 <_asn1_hierarchical_name>:
    9ca0:	41 56                	push   r14
    9ca2:	41 55                	push   r13
    9ca4:	41 54                	push   r12
    9ca6:	55                   	push   rbp
    9ca7:	4c 63 e2             	movsxd r12,edx
    9caa:	53                   	push   rbx
    9cab:	48 89 f5             	mov    rbp,rsi
    9cae:	4d 89 e6             	mov    r14,r12
    9cb1:	48 89 fb             	mov    rbx,rdi
    9cb4:	48 83 ec 50          	sub    rsp,0x50
    9cb8:	c6 06 00             	mov    BYTE PTR [rsi],0x0
    9cbb:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    9cc2:	00 00 
    9cc4:	48 89 44 24 48       	mov    QWORD PTR [rsp+0x48],rax
    9cc9:	31 c0                	xor    eax,eax
    9ccb:	48 85 ff             	test   rdi,rdi
    9cce:	49 89 e5             	mov    r13,rsp
    9cd1:	75 1d                	jne    9cf0 <_asn1_hierarchical_name+0x50>
    9cd3:	e9 98 00 00 00       	jmp    9d70 <_asn1_hierarchical_name+0xd0>
    9cd8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    9cdf:	00 
    9ce0:	48 89 df             	mov    rdi,rbx
    9ce3:	e8 b8 1b 00 00       	call   b8a0 <_asn1_find_up>
    9ce8:	48 85 c0             	test   rax,rax
    9ceb:	48 89 c3             	mov    rbx,rax
    9cee:	74 53                	je     9d43 <_asn1_hierarchical_name+0xa3>
    9cf0:	80 3b 00             	cmp    BYTE PTR [rbx],0x0
    9cf3:	74 eb                	je     9ce0 <_asn1_hierarchical_name+0x40>
    9cf5:	48 89 ea             	mov    rdx,rbp
    9cf8:	be 40 00 00 00       	mov    esi,0x40
    9cfd:	4c 89 ef             	mov    rdi,r13
    9d00:	e8 cb 13 00 00       	call   b0d0 <_asn1_str_cpy>
    9d05:	48 89 da             	mov    rdx,rbx
    9d08:	4c 89 e6             	mov    rsi,r12
    9d0b:	48 89 ef             	mov    rdi,rbp
    9d0e:	e8 bd 13 00 00       	call   b0d0 <_asn1_str_cpy>
    9d13:	48 8d 15 82 5f 00 00 	lea    rdx,[rip+0x5f82]        # fc9c <bit_mask+0x1ac>
    9d1a:	4c 89 e6             	mov    rsi,r12
    9d1d:	48 89 ef             	mov    rdi,rbp
    9d20:	e8 2b 13 00 00       	call   b050 <_asn1_str_cat>
    9d25:	4c 89 ea             	mov    rdx,r13
    9d28:	4c 89 e6             	mov    rsi,r12
    9d2b:	48 89 ef             	mov    rdi,rbp
    9d2e:	e8 1d 13 00 00       	call   b050 <_asn1_str_cat>
    9d33:	48 89 df             	mov    rdi,rbx
    9d36:	e8 65 1b 00 00       	call   b8a0 <_asn1_find_up>
    9d3b:	48 85 c0             	test   rax,rax
    9d3e:	48 89 c3             	mov    rbx,rax
    9d41:	75 ad                	jne    9cf0 <_asn1_hierarchical_name+0x50>
    9d43:	80 7d 00 00          	cmp    BYTE PTR [rbp+0x0],0x0
    9d47:	74 27                	je     9d70 <_asn1_hierarchical_name+0xd0>
    9d49:	48 8b 44 24 48       	mov    rax,QWORD PTR [rsp+0x48]
    9d4e:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
    9d55:	00 00 
    9d57:	75 2b                	jne    9d84 <_asn1_hierarchical_name+0xe4>
    9d59:	48 83 c4 50          	add    rsp,0x50
    9d5d:	5b                   	pop    rbx
    9d5e:	5d                   	pop    rbp
    9d5f:	41 5c                	pop    r12
    9d61:	41 5d                	pop    r13
    9d63:	41 5e                	pop    r14
    9d65:	c3                   	ret    
    9d66:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    9d6d:	00 00 00 
    9d70:	48 8d 15 49 5f 00 00 	lea    rdx,[rip+0x5f49]        # fcc0 <bit_mask+0x1d0>
    9d77:	49 63 f6             	movsxd rsi,r14d
    9d7a:	48 89 ef             	mov    rdi,rbp
    9d7d:	e8 4e 13 00 00       	call   b0d0 <_asn1_str_cpy>
    9d82:	eb c5                	jmp    9d49 <_asn1_hierarchical_name+0xa9>
    9d84:	e8 47 8e ff ff       	call   2bd0 <__stack_chk_fail@plt>
    9d89:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000009d90 <_asn1_convert_integer>:
    9d90:	41 54                	push   r12
    9d92:	55                   	push   rbp
    9d93:	89 d5                	mov    ebp,edx
    9d95:	53                   	push   rbx
    9d96:	ba 0a 00 00 00       	mov    edx,0xa
    9d9b:	48 89 f3             	mov    rbx,rsi
    9d9e:	31 f6                	xor    esi,esi
    9da0:	49 89 cc             	mov    r12,rcx
    9da3:	48 83 ec 10          	sub    rsp,0x10
    9da7:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    9dae:	00 00 
    9db0:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    9db5:	31 c0                	xor    eax,eax
    9db7:	e8 24 8f ff ff       	call   2ce0 <strtol@plt>
    9dbc:	48 89 e7             	mov    rdi,rsp
    9dbf:	48 89 e2             	mov    rdx,rsp
    9dc2:	31 c9                	xor    ecx,ecx
    9dc4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    9dc8:	48 89 c6             	mov    rsi,rax
    9dcb:	48 83 ea 01          	sub    rdx,0x1
    9dcf:	48 d3 fe             	sar    rsi,cl
    9dd2:	83 c1 08             	add    ecx,0x8
    9dd5:	40 88 72 08          	mov    BYTE PTR [rdx+0x8],sil
    9dd9:	83 f9 40             	cmp    ecx,0x40
    9ddc:	75 ea                	jne    9dc8 <_asn1_convert_integer+0x38>
    9dde:	0f b6 0c 24          	movzx  ecx,BYTE PTR [rsp]
    9de2:	31 c0                	xor    eax,eax
    9de4:	89 ce                	mov    esi,ecx
    9de6:	eb 1b                	jmp    9e03 <_asn1_convert_integer+0x73>
    9de8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    9def:	00 
    9df0:	80 f9 ff             	cmp    cl,0xff
    9df3:	75 62                	jne    9e57 <_asn1_convert_integer+0xc7>
    9df5:	48 83 c0 01          	add    rax,0x1
    9df9:	48 83 f8 07          	cmp    rax,0x7
    9dfd:	74 49                	je     9e48 <_asn1_convert_integer+0xb8>
    9dff:	0f b6 0c 07          	movzx  ecx,BYTE PTR [rdi+rax*1]
    9e03:	40 84 f6             	test   sil,sil
    9e06:	89 c2                	mov    edx,eax
    9e08:	78 e6                	js     9df0 <_asn1_convert_integer+0x60>
    9e0a:	84 c9                	test   cl,cl
    9e0c:	74 e7                	je     9df5 <_asn1_convert_integer+0x65>
    9e0e:	66 90                	xchg   ax,ax
    9e10:	84 c9                	test   cl,cl
    9e12:	78 47                	js     9e5b <_asn1_convert_integer+0xcb>
    9e14:	b9 08 00 00 00       	mov    ecx,0x8
    9e19:	b8 0c 00 00 00       	mov    eax,0xc
    9e1e:	29 d1                	sub    ecx,edx
    9e20:	39 e9                	cmp    ecx,ebp
    9e22:	41 89 0c 24          	mov    DWORD PTR [r12],ecx
    9e26:	7e 38                	jle    9e60 <_asn1_convert_integer+0xd0>
    9e28:	48 8b 5c 24 08       	mov    rbx,QWORD PTR [rsp+0x8]
    9e2d:	64 48 33 1c 25 28 00 	xor    rbx,QWORD PTR fs:0x28
    9e34:	00 00 
    9e36:	75 4a                	jne    9e82 <_asn1_convert_integer+0xf2>
    9e38:	48 83 c4 10          	add    rsp,0x10
    9e3c:	5b                   	pop    rbx
    9e3d:	5d                   	pop    rbp
    9e3e:	41 5c                	pop    r12
    9e40:	c3                   	ret    
    9e41:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    9e48:	40 84 f6             	test   sil,sil
    9e4b:	0f b6 4c 24 07       	movzx  ecx,BYTE PTR [rsp+0x7]
    9e50:	ba 07 00 00 00       	mov    edx,0x7
    9e55:	79 b9                	jns    9e10 <_asn1_convert_integer+0x80>
    9e57:	84 c9                	test   cl,cl
    9e59:	78 b9                	js     9e14 <_asn1_convert_integer+0x84>
    9e5b:	83 ea 01             	sub    edx,0x1
    9e5e:	eb b4                	jmp    9e14 <_asn1_convert_integer+0x84>
    9e60:	48 85 db             	test   rbx,rbx
    9e63:	74 19                	je     9e7e <_asn1_convert_integer+0xee>
    9e65:	0f 1f 00             	nop    DWORD PTR [rax]
    9e68:	48 63 c2             	movsxd rax,edx
    9e6b:	83 c2 01             	add    edx,0x1
    9e6e:	48 83 c3 01          	add    rbx,0x1
    9e72:	0f b6 04 04          	movzx  eax,BYTE PTR [rsp+rax*1]
    9e76:	88 43 ff             	mov    BYTE PTR [rbx-0x1],al
    9e79:	83 fa 08             	cmp    edx,0x8
    9e7c:	75 ea                	jne    9e68 <_asn1_convert_integer+0xd8>
    9e7e:	31 c0                	xor    eax,eax
    9e80:	eb a6                	jmp    9e28 <_asn1_convert_integer+0x98>
    9e82:	e8 49 8d ff ff       	call   2bd0 <__stack_chk_fail@plt>
    9e87:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    9e8e:	00 00 

0000000000009e90 <_asn1_append_sequence_set>:
    9e90:	41 56                	push   r14
    9e92:	41 55                	push   r13
    9e94:	41 54                	push   r12
    9e96:	55                   	push   rbp
    9e97:	53                   	push   rbx
    9e98:	48 83 ec 20          	sub    rsp,0x20
    9e9c:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    9ea3:	00 00 
    9ea5:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
    9eaa:	31 c0                	xor    eax,eax
    9eac:	48 85 ff             	test   rdi,rdi
    9eaf:	0f 84 bb 00 00 00    	je     9f70 <_asn1_append_sequence_set+0xe0>
    9eb5:	48 8b 5f 60          	mov    rbx,QWORD PTR [rdi+0x60]
    9eb9:	48 89 fd             	mov    rbp,rdi
    9ebc:	48 85 db             	test   rbx,rbx
    9ebf:	0f 84 ab 00 00 00    	je     9f70 <_asn1_append_sequence_set+0xe0>
    9ec5:	8b 43 48             	mov    eax,DWORD PTR [rbx+0x48]
    9ec8:	49 89 f4             	mov    r12,rsi
    9ecb:	25 fd 00 00 00       	and    eax,0xfd
    9ed0:	83 f8 08             	cmp    eax,0x8
    9ed3:	75 14                	jne    9ee9 <_asn1_append_sequence_set+0x59>
    9ed5:	0f 1f 00             	nop    DWORD PTR [rax]
    9ed8:	48 8b 5b 68          	mov    rbx,QWORD PTR [rbx+0x68]
    9edc:	8b 43 48             	mov    eax,DWORD PTR [rbx+0x48]
    9edf:	25 fd 00 00 00       	and    eax,0xfd
    9ee4:	83 f8 08             	cmp    eax,0x8
    9ee7:	74 ef                	je     9ed8 <_asn1_append_sequence_set+0x48>
    9ee9:	48 89 df             	mov    rdi,rbx
    9eec:	e8 8f 2d 00 00       	call   cc80 <_asn1_copy_structure3>
    9ef1:	48 85 c0             	test   rax,rax
    9ef4:	49 89 c5             	mov    r13,rax
    9ef7:	74 77                	je     9f70 <_asn1_append_sequence_set+0xe0>
    9ef9:	4d 85 e4             	test   r12,r12
    9efc:	74 1d                	je     9f1b <_asn1_append_sequence_set+0x8b>
    9efe:	4d 8b 74 24 08       	mov    r14,QWORD PTR [r12+0x8]
    9f03:	4d 85 f6             	test   r14,r14
    9f06:	74 13                	je     9f1b <_asn1_append_sequence_set+0x8b>
    9f08:	49 3b 2c 24          	cmp    rbp,QWORD PTR [r12]
    9f0c:	75 0d                	jne    9f1b <_asn1_append_sequence_set+0x8b>
    9f0e:	e9 a9 00 00 00       	jmp    9fbc <_asn1_append_sequence_set+0x12c>
    9f13:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    9f18:	48 89 c3             	mov    rbx,rax
    9f1b:	48 8b 43 68          	mov    rax,QWORD PTR [rbx+0x68]
    9f1f:	48 85 c0             	test   rax,rax
    9f22:	75 f4                	jne    9f18 <_asn1_append_sequence_set+0x88>
    9f24:	4c 89 ee             	mov    rsi,r13
    9f27:	48 89 df             	mov    rdi,rbx
    9f2a:	e8 91 18 00 00       	call   b7c0 <_asn1_set_right>
    9f2f:	4d 85 e4             	test   r12,r12
    9f32:	74 09                	je     9f3d <_asn1_append_sequence_set+0xad>
    9f34:	49 89 2c 24          	mov    QWORD PTR [r12],rbp
    9f38:	4d 89 6c 24 08       	mov    QWORD PTR [r12+0x8],r13
    9f3d:	80 3b 00             	cmp    BYTE PTR [rbx],0x0
    9f40:	75 56                	jne    9f98 <_asn1_append_sequence_set+0x108>
    9f42:	48 8d 15 7c 5d 00 00 	lea    rdx,[rip+0x5d7c]        # fcc5 <bit_mask+0x1d5>
    9f49:	be 16 00 00 00       	mov    esi,0x16
    9f4e:	48 89 e7             	mov    rdi,rsp
    9f51:	48 89 e3             	mov    rbx,rsp
    9f54:	e8 77 11 00 00       	call   b0d0 <_asn1_str_cpy>
    9f59:	48 89 de             	mov    rsi,rbx
    9f5c:	4c 89 ef             	mov    rdi,r13
    9f5f:	e8 ac 17 00 00       	call   b710 <_asn1_set_name>
    9f64:	31 c0                	xor    eax,eax
    9f66:	eb 0d                	jmp    9f75 <_asn1_append_sequence_set+0xe5>
    9f68:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    9f6f:	00 
    9f70:	b8 06 00 00 00       	mov    eax,0x6
    9f75:	48 8b 4c 24 18       	mov    rcx,QWORD PTR [rsp+0x18]
    9f7a:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
    9f81:	00 00 
    9f83:	75 4a                	jne    9fcf <_asn1_append_sequence_set+0x13f>
    9f85:	48 83 c4 20          	add    rsp,0x20
    9f89:	5b                   	pop    rbx
    9f8a:	5d                   	pop    rbp
    9f8b:	41 5c                	pop    r12
    9f8d:	41 5d                	pop    r13
    9f8f:	41 5e                	pop    r14
    9f91:	c3                   	ret    
    9f92:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    9f98:	48 8d 7b 01          	lea    rdi,[rbx+0x1]
    9f9c:	31 f6                	xor    esi,esi
    9f9e:	31 d2                	xor    edx,edx
    9fa0:	48 89 e3             	mov    rbx,rsp
    9fa3:	e8 38 8d ff ff       	call   2ce0 <strtol@plt>
    9fa8:	48 8d 74 24 01       	lea    rsi,[rsp+0x1]
    9fad:	48 8d 78 01          	lea    rdi,[rax+0x1]
    9fb1:	c6 04 24 3f          	mov    BYTE PTR [rsp],0x3f
    9fb5:	e8 b6 19 00 00       	call   b970 <_asn1_ltostr>
    9fba:	eb 9d                	jmp    9f59 <_asn1_append_sequence_set+0xc9>
    9fbc:	48 89 c6             	mov    rsi,rax
    9fbf:	4c 89 f7             	mov    rdi,r14
    9fc2:	4c 89 f3             	mov    rbx,r14
    9fc5:	e8 f6 17 00 00       	call   b7c0 <_asn1_set_right>
    9fca:	e9 65 ff ff ff       	jmp    9f34 <_asn1_append_sequence_set+0xa4>
    9fcf:	e8 fc 8b ff ff       	call   2bd0 <__stack_chk_fail@plt>
    9fd4:	66 90                	xchg   ax,ax
    9fd6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    9fdd:	00 00 00 

0000000000009fe0 <asn1_write_value>:
    9fe0:	41 57                	push   r15
    9fe2:	41 56                	push   r14
    9fe4:	41 55                	push   r13
    9fe6:	41 54                	push   r12
    9fe8:	49 89 d4             	mov    r12,rdx
    9feb:	55                   	push   rbp
    9fec:	53                   	push   rbx
    9fed:	bd 02 00 00 00       	mov    ebp,0x2
    9ff2:	48 83 ec 38          	sub    rsp,0x38
    9ff6:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    9ffd:	00 00 
    9fff:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
    a004:	31 c0                	xor    eax,eax
    a006:	89 4c 24 0c          	mov    DWORD PTR [rsp+0xc],ecx
    a00a:	e8 21 8b ff ff       	call   2b30 <asn1_find_node@plt>
    a00f:	48 85 c0             	test   rax,rax
    a012:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
    a017:	0f 84 93 01 00 00    	je     a1b0 <asn1_write_value+0x1d0>
    a01d:	44 8b 68 48          	mov    r13d,DWORD PTR [rax+0x48]
    a021:	48 89 c3             	mov    rbx,rax
    a024:	41 f7 c5 00 40 00 00 	test   r13d,0x4000
    a02b:	0f 84 a7 01 00 00    	je     a1d8 <asn1_write_value+0x1f8>
    a031:	8b 4c 24 0c          	mov    ecx,DWORD PTR [rsp+0xc]
    a035:	85 c9                	test   ecx,ecx
    a037:	75 09                	jne    a042 <asn1_write_value+0x62>
    a039:	4d 85 e4             	test   r12,r12
    a03c:	0f 84 9e 02 00 00    	je     a2e0 <asn1_write_value+0x300>
    a042:	41 0f b6 c5          	movzx  eax,r13b
    a046:	4d 85 e4             	test   r12,r12
    a049:	0f 84 81 02 00 00    	je     a2d0 <asn1_write_value+0x2f0>
    a04f:	83 e8 03             	sub    eax,0x3
    a052:	83 f8 22             	cmp    eax,0x22
    a055:	0f 87 95 05 00 00    	ja     a5f0 <asn1_write_value+0x610>
    a05b:	48 8d 15 66 5c 00 00 	lea    rdx,[rip+0x5c66]        # fcc8 <bit_mask+0x1d8>
    a062:	48 63 04 82          	movsxd rax,DWORD PTR [rdx+rax*4]
    a066:	48 01 c2             	add    rdx,rax
    a069:	ff e2                	jmp    rdx
    a06b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    a070:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
    a074:	85 c0                	test   eax,eax
    a076:	0f 85 92 06 00 00    	jne    a70e <asn1_write_value+0x72e>
    a07c:	41 0f b6 04 24       	movzx  eax,BYTE PTR [r12]
    a081:	8d 50 d0             	lea    edx,[rax-0x30]
    a084:	80 fa 09             	cmp    dl,0x9
    a087:	0f 87 85 05 00 00    	ja     a612 <asn1_write_value+0x632>
    a08d:	bf 08 00 00 00       	mov    edi,0x8
    a092:	e8 79 8c ff ff       	call   2d10 <malloc@plt>
    a097:	48 85 c0             	test   rax,rax
    a09a:	49 89 c5             	mov    r13,rax
    a09d:	0f 84 65 05 00 00    	je     a608 <asn1_write_value+0x628>
    a0a3:	48 8d 4c 24 0c       	lea    rcx,[rsp+0xc]
    a0a8:	ba 08 00 00 00       	mov    edx,0x8
    a0ad:	48 89 c6             	mov    rsi,rax
    a0b0:	4c 89 e7             	mov    rdi,r12
    a0b3:	e8 d8 fc ff ff       	call   9d90 <_asn1_convert_integer>
    a0b8:	48 8b 5c 24 18       	mov    rbx,QWORD PTR [rsp+0x18]
    a0bd:	41 80 7d 00 00       	cmp    BYTE PTR [r13+0x0],0x0
    a0c2:	0f 88 f8 06 00 00    	js     a7c0 <asn1_write_value+0x7e0>
    a0c8:	8b 54 24 0c          	mov    edx,DWORD PTR [rsp+0xc]
    a0cc:	31 f6                	xor    esi,esi
    a0ce:	8d 4a ff             	lea    ecx,[rdx-0x1]
    a0d1:	85 c9                	test   ecx,ecx
    a0d3:	0f 8e 21 08 00 00    	jle    a8fa <asn1_write_value+0x91a>
    a0d9:	4c 89 e8             	mov    rax,r13
    a0dc:	31 ed                	xor    ebp,ebp
    a0de:	eb 19                	jmp    a0f9 <asn1_write_value+0x119>
    a0e0:	40 80 ff ff          	cmp    dil,0xff
    a0e4:	0f 85 0c 07 00 00    	jne    a7f6 <asn1_write_value+0x816>
    a0ea:	83 c5 01             	add    ebp,0x1
    a0ed:	48 83 c0 01          	add    rax,0x1
    a0f1:	39 cd                	cmp    ebp,ecx
    a0f3:	0f 8d ea 06 00 00    	jge    a7e3 <asn1_write_value+0x803>
    a0f9:	85 f6                	test   esi,esi
    a0fb:	49 89 c4             	mov    r12,rax
    a0fe:	0f b6 38             	movzx  edi,BYTE PTR [rax]
    a101:	75 dd                	jne    a0e0 <asn1_write_value+0x100>
    a103:	40 84 ff             	test   dil,dil
    a106:	74 e2                	je     a0ea <asn1_write_value+0x10a>
    a108:	40 84 ff             	test   dil,dil
    a10b:	0f 88 ee 06 00 00    	js     a7ff <asn1_write_value+0x81f>
    a111:	29 ea                	sub    edx,ebp
    a113:	4c 89 e6             	mov    rsi,r12
    a116:	48 89 df             	mov    rdi,rbx
    a119:	e8 32 14 00 00       	call   b550 <_asn1_set_value_lv>
    a11e:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
    a123:	8b 48 48             	mov    ecx,DWORD PTR [rax+0x48]
    a126:	f6 c5 80             	test   ch,0x80
    a129:	74 77                	je     a1a2 <asn1_write_value+0x1c2>
    a12b:	48 8b 58 60          	mov    rbx,QWORD PTR [rax+0x60]
    a12f:	0f b6 53 48          	movzx  edx,BYTE PTR [rbx+0x48]
    a133:	48 89 d8             	mov    rax,rbx
    a136:	83 fa 09             	cmp    edx,0x9
    a139:	74 0f                	je     a14a <asn1_write_value+0x16a>
    a13b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    a140:	48 8b 40 68          	mov    rax,QWORD PTR [rax+0x68]
    a144:	80 78 48 09          	cmp    BYTE PTR [rax+0x48],0x9
    a148:	75 f6                	jne    a140 <asn1_write_value+0x160>
    a14a:	4c 8b 70 50          	mov    r14,QWORD PTR [rax+0x50]
    a14e:	41 0f b6 06          	movzx  eax,BYTE PTR [r14]
    a152:	8d 70 d0             	lea    esi,[rax-0x30]
    a155:	40 80 fe 09          	cmp    sil,0x9
    a159:	0f 87 ef 00 00 00    	ja     a24e <asn1_write_value+0x26e>
    a15f:	bf 08 00 00 00       	mov    edi,0x8
    a164:	e8 a7 8b ff ff       	call   2d10 <malloc@plt>
    a169:	48 85 c0             	test   rax,rax
    a16c:	49 89 c7             	mov    r15,rax
    a16f:	0f 84 85 04 00 00    	je     a5fa <asn1_write_value+0x61a>
    a175:	48 8d 4c 24 14       	lea    rcx,[rsp+0x14]
    a17a:	ba 08 00 00 00       	mov    edx,0x8
    a17f:	48 89 c6             	mov    rsi,rax
    a182:	4c 89 f7             	mov    rdi,r14
    a185:	e8 06 fc ff ff       	call   9d90 <_asn1_convert_integer>
    a18a:	8b 4c 24 0c          	mov    ecx,DWORD PTR [rsp+0xc]
    a18e:	29 e9                	sub    ecx,ebp
    a190:	3b 4c 24 14          	cmp    ecx,DWORD PTR [rsp+0x14]
    a194:	0f 84 0c 07 00 00    	je     a8a6 <asn1_write_value+0x8c6>
    a19a:	4c 89 ff             	mov    rdi,r15
    a19d:	e8 6e 89 ff ff       	call   2b10 <free@plt>
    a1a2:	4c 89 ef             	mov    rdi,r13
    a1a5:	31 ed                	xor    ebp,ebp
    a1a7:	e8 64 89 ff ff       	call   2b10 <free@plt>
    a1ac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    a1b0:	48 8b 4c 24 28       	mov    rcx,QWORD PTR [rsp+0x28]
    a1b5:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
    a1bc:	00 00 
    a1be:	89 e8                	mov    eax,ebp
    a1c0:	0f 85 2f 07 00 00    	jne    a8f5 <asn1_write_value+0x915>
    a1c6:	48 83 c4 38          	add    rsp,0x38
    a1ca:	5b                   	pop    rbx
    a1cb:	5d                   	pop    rbp
    a1cc:	41 5c                	pop    r12
    a1ce:	41 5d                	pop    r13
    a1d0:	41 5e                	pop    r14
    a1d2:	41 5f                	pop    r15
    a1d4:	c3                   	ret    
    a1d5:	0f 1f 00             	nop    DWORD PTR [rax]
    a1d8:	44 89 ea             	mov    edx,r13d
    a1db:	41 0f b6 c5          	movzx  eax,r13b
    a1df:	81 e2 fb 00 00 00    	and    edx,0xfb
    a1e5:	83 fa 0b             	cmp    edx,0xb
    a1e8:	0f 85 58 fe ff ff    	jne    a046 <asn1_write_value+0x66>
    a1ee:	8b 54 24 0c          	mov    edx,DWORD PTR [rsp+0xc]
    a1f2:	85 d2                	test   edx,edx
    a1f4:	0f 85 4c fe ff ff    	jne    a046 <asn1_write_value+0x66>
    a1fa:	4d 85 e4             	test   r12,r12
    a1fd:	0f 85 43 fe ff ff    	jne    a046 <asn1_write_value+0x66>
    a203:	48 8b 5b 60          	mov    rbx,QWORD PTR [rbx+0x60]
    a207:	8b 43 48             	mov    eax,DWORD PTR [rbx+0x48]
    a20a:	25 fd 00 00 00       	and    eax,0xfd
    a20f:	83 f8 08             	cmp    eax,0x8
    a212:	75 15                	jne    a229 <asn1_write_value+0x249>
    a214:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    a218:	48 8b 5b 68          	mov    rbx,QWORD PTR [rbx+0x68]
    a21c:	8b 43 48             	mov    eax,DWORD PTR [rbx+0x48]
    a21f:	25 fd 00 00 00       	and    eax,0xfd
    a224:	83 f8 08             	cmp    eax,0x8
    a227:	74 ef                	je     a218 <asn1_write_value+0x238>
    a229:	48 83 7b 68 00       	cmp    QWORD PTR [rbx+0x68],0x0
    a22e:	48 8d 6b 68          	lea    rbp,[rbx+0x68]
    a232:	74 13                	je     a247 <asn1_write_value+0x267>
    a234:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    a238:	48 89 ef             	mov    rdi,rbp
    a23b:	e8 f0 89 ff ff       	call   2c30 <asn1_delete_structure@plt>
    a240:	48 83 7b 68 00       	cmp    QWORD PTR [rbx+0x68],0x0
    a245:	75 f1                	jne    a238 <asn1_write_value+0x258>
    a247:	31 ed                	xor    ebp,ebp
    a249:	e9 62 ff ff ff       	jmp    a1b0 <asn1_write_value+0x1d0>
    a24e:	3c 2d                	cmp    al,0x2d
    a250:	0f 84 09 ff ff ff    	je     a15f <asn1_write_value+0x17f>
    a256:	81 e1 00 00 04 00    	and    ecx,0x40000
    a25c:	74 68                	je     a2c6 <asn1_write_value+0x2e6>
    a25e:	48 89 5c 24 20       	mov    QWORD PTR [rsp+0x20],rbx
    a263:	eb 15                	jmp    a27a <asn1_write_value+0x29a>
    a265:	0f 1f 00             	nop    DWORD PTR [rax]
    a268:	48 8b 5b 68          	mov    rbx,QWORD PTR [rbx+0x68]
    a26c:	48 85 db             	test   rbx,rbx
    a26f:	48 89 5c 24 20       	mov    QWORD PTR [rsp+0x20],rbx
    a274:	74 50                	je     a2c6 <asn1_write_value+0x2e6>
    a276:	0f b6 53 48          	movzx  edx,BYTE PTR [rbx+0x48]
    a27a:	83 fa 01             	cmp    edx,0x1
    a27d:	75 e9                	jne    a268 <asn1_write_value+0x288>
    a27f:	4c 89 f6             	mov    rsi,r14
    a282:	48 89 df             	mov    rdi,rbx
    a285:	e8 36 8a ff ff       	call   2cc0 <strcmp@plt>
    a28a:	85 c0                	test   eax,eax
    a28c:	75 da                	jne    a268 <asn1_write_value+0x288>
    a28e:	bf 08 00 00 00       	mov    edi,0x8
    a293:	e8 78 8a ff ff       	call   2d10 <malloc@plt>
    a298:	48 85 c0             	test   rax,rax
    a29b:	49 89 c7             	mov    r15,rax
    a29e:	0f 84 56 03 00 00    	je     a5fa <asn1_write_value+0x61a>
    a2a4:	48 8b 7b 50          	mov    rdi,QWORD PTR [rbx+0x50]
    a2a8:	48 8d 4c 24 14       	lea    rcx,[rsp+0x14]
    a2ad:	ba 08 00 00 00       	mov    edx,0x8
    a2b2:	48 89 c6             	mov    rsi,rax
    a2b5:	e8 d6 fa ff ff       	call   9d90 <_asn1_convert_integer>
    a2ba:	48 83 7c 24 20 00    	cmp    QWORD PTR [rsp+0x20],0x0
    a2c0:	0f 85 c4 fe ff ff    	jne    a18a <asn1_write_value+0x1aa>
    a2c6:	4c 89 ef             	mov    rdi,r13
    a2c9:	e8 42 88 ff ff       	call   2b10 <free@plt>
    a2ce:	66 90                	xchg   ax,ax
    a2d0:	bd 07 00 00 00       	mov    ebp,0x7
    a2d5:	e9 d6 fe ff ff       	jmp    a1b0 <asn1_write_value+0x1d0>
    a2da:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    a2e0:	48 8d 7c 24 18       	lea    rdi,[rsp+0x18]
    a2e5:	31 ed                	xor    ebp,ebp
    a2e7:	e8 44 89 ff ff       	call   2c30 <asn1_delete_structure@plt>
    a2ec:	e9 bf fe ff ff       	jmp    a1b0 <asn1_write_value+0x1d0>
    a2f1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    a2f8:	4c 89 e7             	mov    rdi,r12
    a2fb:	e8 c0 88 ff ff       	call   2bc0 <strlen@plt>
    a300:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
    a304:	89 c2                	mov    edx,eax
    a306:	4c 89 e6             	mov    rsi,r12
    a309:	48 89 df             	mov    rdi,rbx
    a30c:	e8 4f 11 00 00       	call   b460 <_asn1_set_value>
    a311:	31 ed                	xor    ebp,ebp
    a313:	e9 98 fe ff ff       	jmp    a1b0 <asn1_write_value+0x1d0>
    a318:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    a31f:	00 
    a320:	48 8d 3d 6b 5d 00 00 	lea    rdi,[rip+0x5d6b]        # 10092 <bit_mask+0x5a2>
    a327:	b9 05 00 00 00       	mov    ecx,0x5
    a32c:	4c 89 e6             	mov    rsi,r12
    a32f:	f3 a6                	repz cmps BYTE PTR ds:[rsi],BYTE PTR es:[rdi]
    a331:	40 0f 97 c5          	seta   bpl
    a335:	0f 92 c0             	setb   al
    a338:	29 c5                	sub    ebp,eax
    a33a:	40 0f be ed          	movsx  ebp,bpl
    a33e:	85 ed                	test   ebp,ebp
    a340:	0f 85 4a 03 00 00    	jne    a690 <asn1_write_value+0x6b0>
    a346:	41 81 e5 00 80 00 00 	and    r13d,0x8000
    a34d:	74 29                	je     a378 <asn1_write_value+0x398>
    a34f:	48 8b 43 60          	mov    rax,QWORD PTR [rbx+0x60]
    a353:	8b 50 48             	mov    edx,DWORD PTR [rax+0x48]
    a356:	80 fa 09             	cmp    dl,0x9
    a359:	74 11                	je     a36c <asn1_write_value+0x38c>
    a35b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    a360:	48 8b 40 68          	mov    rax,QWORD PTR [rax+0x68]
    a364:	8b 50 48             	mov    edx,DWORD PTR [rax+0x48]
    a367:	80 fa 09             	cmp    dl,0x9
    a36a:	75 f4                	jne    a360 <asn1_write_value+0x380>
    a36c:	81 e2 00 00 01 00    	and    edx,0x10000
    a372:	0f 85 85 03 00 00    	jne    a6fd <asn1_write_value+0x71d>
    a378:	48 8d 35 55 42 00 00 	lea    rsi,[rip+0x4255]        # e5d4 <_fini+0xd4>
    a37f:	ba 01 00 00 00       	mov    edx,0x1
    a384:	48 89 df             	mov    rdi,rbx
    a387:	e8 d4 10 00 00       	call   b460 <_asn1_set_value>
    a38c:	e9 1f fe ff ff       	jmp    a1b0 <asn1_write_value+0x1d0>
    a391:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    a398:	8b 54 24 0c          	mov    edx,DWORD PTR [rsp+0xc]
    a39c:	85 d2                	test   edx,edx
    a39e:	75 0e                	jne    a3ae <asn1_write_value+0x3ce>
    a3a0:	4c 89 e7             	mov    rdi,r12
    a3a3:	e8 18 88 ff ff       	call   2bc0 <strlen@plt>
    a3a8:	89 c2                	mov    edx,eax
    a3aa:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
    a3ae:	4c 89 e6             	mov    rsi,r12
    a3b1:	48 89 df             	mov    rdi,rbx
    a3b4:	31 ed                	xor    ebp,ebp
    a3b6:	e8 95 11 00 00       	call   b550 <_asn1_set_value_lv>
    a3bb:	e9 f0 fd ff ff       	jmp    a1b0 <asn1_write_value+0x1d0>
    a3c0:	41 80 3c 24 4e       	cmp    BYTE PTR [r12],0x4e
    a3c5:	0f 85 05 ff ff ff    	jne    a2d0 <asn1_write_value+0x2f0>
    a3cb:	41 80 7c 24 01 45    	cmp    BYTE PTR [r12+0x1],0x45
    a3d1:	0f 85 f9 fe ff ff    	jne    a2d0 <asn1_write_value+0x2f0>
    a3d7:	41 80 7c 24 02 57    	cmp    BYTE PTR [r12+0x2],0x57
    a3dd:	0f 85 ed fe ff ff    	jne    a2d0 <asn1_write_value+0x2f0>
    a3e3:	41 80 7c 24 03 00    	cmp    BYTE PTR [r12+0x3],0x0
    a3e9:	0f 85 e1 fe ff ff    	jne    a2d0 <asn1_write_value+0x2f0>
    a3ef:	31 f6                	xor    esi,esi
    a3f1:	48 89 df             	mov    rdi,rbx
    a3f4:	31 ed                	xor    ebp,ebp
    a3f6:	e8 95 fa ff ff       	call   9e90 <_asn1_append_sequence_set>
    a3fb:	e9 b0 fd ff ff       	jmp    a1b0 <asn1_write_value+0x1d0>
    a400:	4c 89 e7             	mov    rdi,r12
    a403:	e8 b8 87 ff ff       	call   2bc0 <strlen@plt>
    a408:	49 89 c6             	mov    r14,rax
    a40b:	4c 89 e0             	mov    rax,r12
    a40e:	4b 8d 34 34          	lea    rsi,[r12+r14*1]
    a412:	eb 21                	jmp    a435 <asn1_write_value+0x455>
    a414:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    a418:	0f b6 10             	movzx  edx,BYTE PTR [rax]
    a41b:	8d 4a d0             	lea    ecx,[rdx-0x30]
    a41e:	80 f9 09             	cmp    cl,0x9
    a421:	76 0e                	jbe    a431 <asn1_write_value+0x451>
    a423:	80 fa 2b             	cmp    dl,0x2b
    a426:	74 09                	je     a431 <asn1_write_value+0x451>
    a428:	80 fa 2e             	cmp    dl,0x2e
    a42b:	0f 85 9f fe ff ff    	jne    a2d0 <asn1_write_value+0x2f0>
    a431:	48 83 c0 01          	add    rax,0x1
    a435:	48 39 f0             	cmp    rax,rsi
    a438:	75 de                	jne    a418 <asn1_write_value+0x438>
    a43a:	41 81 e5 00 80 00 00 	and    r13d,0x8000
    a441:	74 2d                	je     a470 <asn1_write_value+0x490>
    a443:	48 8b 43 60          	mov    rax,QWORD PTR [rbx+0x60]
    a447:	80 78 48 09          	cmp    BYTE PTR [rax+0x48],0x9
    a44b:	74 0d                	je     a45a <asn1_write_value+0x47a>
    a44d:	0f 1f 00             	nop    DWORD PTR [rax]
    a450:	48 8b 40 68          	mov    rax,QWORD PTR [rax+0x68]
    a454:	80 78 48 09          	cmp    BYTE PTR [rax+0x48],0x9
    a458:	75 f6                	jne    a450 <asn1_write_value+0x470>
    a45a:	48 8b 70 50          	mov    rsi,QWORD PTR [rax+0x50]
    a45e:	4c 89 e7             	mov    rdi,r12
    a461:	e8 5a 88 ff ff       	call   2cc0 <strcmp@plt>
    a466:	85 c0                	test   eax,eax
    a468:	89 c5                	mov    ebp,eax
    a46a:	0f 84 8d 02 00 00    	je     a6fd <asn1_write_value+0x71d>
    a470:	41 8d 56 01          	lea    edx,[r14+0x1]
    a474:	4c 89 e6             	mov    rsi,r12
    a477:	48 89 df             	mov    rdi,rbx
    a47a:	31 ed                	xor    ebp,ebp
    a47c:	e8 df 0f 00 00       	call   b460 <_asn1_set_value>
    a481:	e9 2a fd ff ff       	jmp    a1b0 <asn1_write_value+0x1d0>
    a486:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    a48d:	00 00 00 
    a490:	8b 54 24 0c          	mov    edx,DWORD PTR [rsp+0xc]
    a494:	4c 89 e6             	mov    rsi,r12
    a497:	48 89 df             	mov    rdi,rbx
    a49a:	31 ed                	xor    ebp,ebp
    a49c:	e8 af 10 00 00       	call   b550 <_asn1_set_value_lv>
    a4a1:	e9 0a fd ff ff       	jmp    a1b0 <asn1_write_value+0x1d0>
    a4a6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    a4ad:	00 00 00 
    a4b0:	4c 8b 6b 60          	mov    r13,QWORD PTR [rbx+0x60]
    a4b4:	4d 85 ed             	test   r13,r13
    a4b7:	0f 84 33 01 00 00    	je     a5f0 <asn1_write_value+0x610>
    a4bd:	4c 89 eb             	mov    rbx,r13
    a4c0:	eb 13                	jmp    a4d5 <asn1_write_value+0x4f5>
    a4c2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    a4c8:	48 8b 5b 68          	mov    rbx,QWORD PTR [rbx+0x68]
    a4cc:	48 85 db             	test   rbx,rbx
    a4cf:	0f 84 1b 01 00 00    	je     a5f0 <asn1_write_value+0x610>
    a4d5:	4c 89 e6             	mov    rsi,r12
    a4d8:	48 89 df             	mov    rdi,rbx
    a4db:	e8 e0 87 ff ff       	call   2cc0 <strcmp@plt>
    a4e0:	85 c0                	test   eax,eax
    a4e2:	89 c5                	mov    ebp,eax
    a4e4:	75 e2                	jne    a4c8 <asn1_write_value+0x4e8>
    a4e6:	4c 89 6c 24 20       	mov    QWORD PTR [rsp+0x20],r13
    a4eb:	4c 89 e8             	mov    rax,r13
    a4ee:	4c 8d 64 24 20       	lea    r12,[rsp+0x20]
    a4f3:	eb 22                	jmp    a517 <asn1_write_value+0x537>
    a4f5:	0f 1f 00             	nop    DWORD PTR [rax]
    a4f8:	4c 89 e7             	mov    rdi,r12
    a4fb:	e8 30 87 ff ff       	call   2c30 <asn1_delete_structure@plt>
    a500:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
    a505:	48 8b 40 60          	mov    rax,QWORD PTR [rax+0x60]
    a509:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
    a50e:	48 85 c0             	test   rax,rax
    a511:	0f 84 99 fc ff ff    	je     a1b0 <asn1_write_value+0x1d0>
    a517:	48 39 c3             	cmp    rbx,rax
    a51a:	75 dc                	jne    a4f8 <asn1_write_value+0x518>
    a51c:	48 8b 43 68          	mov    rax,QWORD PTR [rbx+0x68]
    a520:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
    a525:	eb e7                	jmp    a50e <asn1_write_value+0x52e>
    a527:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    a52e:	00 00 
    a530:	4c 89 e7             	mov    rdi,r12
    a533:	e8 88 86 ff ff       	call   2bc0 <strlen@plt>
    a538:	83 f8 0a             	cmp    eax,0xa
    a53b:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
    a53f:	0f 8e 8b fd ff ff    	jle    a2d0 <asn1_write_value+0x2f0>
    a545:	4c 89 e1             	mov    rcx,r12
    a548:	49 8d 54 24 0a       	lea    rdx,[r12+0xa]
    a54d:	eb 0e                	jmp    a55d <asn1_write_value+0x57d>
    a54f:	90                   	nop
    a550:	48 83 c1 01          	add    rcx,0x1
    a554:	48 39 ca             	cmp    rdx,rcx
    a557:	0f 84 da 01 00 00    	je     a737 <asn1_write_value+0x757>
    a55d:	0f b6 31             	movzx  esi,BYTE PTR [rcx]
    a560:	83 ee 30             	sub    esi,0x30
    a563:	40 80 fe 09          	cmp    sil,0x9
    a567:	0f 87 63 fd ff ff    	ja     a2d0 <asn1_write_value+0x2f0>
    a56d:	eb e1                	jmp    a550 <asn1_write_value+0x570>
    a56f:	90                   	nop
    a570:	8b 54 24 0c          	mov    edx,DWORD PTR [rsp+0xc]
    a574:	85 d2                	test   edx,edx
    a576:	75 0e                	jne    a586 <asn1_write_value+0x5a6>
    a578:	4c 89 e7             	mov    rdi,r12
    a57b:	e8 40 86 ff ff       	call   2bc0 <strlen@plt>
    a580:	89 c2                	mov    edx,eax
    a582:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
    a586:	c1 fa 03             	sar    edx,0x3
    a589:	48 8d 6c 24 14       	lea    rbp,[rsp+0x14]
    a58e:	31 f6                	xor    esi,esi
    a590:	8d 7a 02             	lea    edi,[rdx+0x2]
    a593:	48 89 ea             	mov    rdx,rbp
    a596:	48 63 ff             	movsxd rdi,edi
    a599:	e8 92 88 ff ff       	call   2e30 <asn1_length_der@plt>
    a59e:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
    a5a2:	8b 54 24 14          	mov    edx,DWORD PTR [rsp+0x14]
    a5a6:	c1 f8 03             	sar    eax,0x3
    a5a9:	8d 7c 10 02          	lea    edi,[rax+rdx*1+0x2]
    a5ad:	48 63 ff             	movsxd rdi,edi
    a5b0:	e8 5b 87 ff ff       	call   2d10 <malloc@plt>
    a5b5:	48 85 c0             	test   rax,rax
    a5b8:	48 89 c3             	mov    rbx,rax
    a5bb:	74 4b                	je     a608 <asn1_write_value+0x628>
    a5bd:	8b 74 24 0c          	mov    esi,DWORD PTR [rsp+0xc]
    a5c1:	48 89 e9             	mov    rcx,rbp
    a5c4:	48 89 c2             	mov    rdx,rax
    a5c7:	4c 89 e7             	mov    rdi,r12
    a5ca:	31 ed                	xor    ebp,ebp
    a5cc:	e8 af 85 ff ff       	call   2b80 <asn1_bit_der@plt>
    a5d1:	8b 54 24 14          	mov    edx,DWORD PTR [rsp+0x14]
    a5d5:	48 8b 7c 24 18       	mov    rdi,QWORD PTR [rsp+0x18]
    a5da:	48 89 de             	mov    rsi,rbx
    a5dd:	e8 1e 0f 00 00       	call   b500 <_asn1_set_value_m>
    a5e2:	e9 c9 fb ff ff       	jmp    a1b0 <asn1_write_value+0x1d0>
    a5e7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    a5ee:	00 00 
    a5f0:	bd 02 00 00 00       	mov    ebp,0x2
    a5f5:	e9 b6 fb ff ff       	jmp    a1b0 <asn1_write_value+0x1d0>
    a5fa:	4c 89 ef             	mov    rdi,r13
    a5fd:	e8 0e 85 ff ff       	call   2b10 <free@plt>
    a602:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    a608:	bd 0d 00 00 00       	mov    ebp,0xd
    a60d:	e9 9e fb ff ff       	jmp    a1b0 <asn1_write_value+0x1d0>
    a612:	3c 2d                	cmp    al,0x2d
    a614:	0f 84 73 fa ff ff    	je     a08d <asn1_write_value+0xad>
    a61a:	41 81 e5 00 00 04 00 	and    r13d,0x40000
    a621:	0f 84 a9 fc ff ff    	je     a2d0 <asn1_write_value+0x2f0>
    a627:	48 8b 5b 60          	mov    rbx,QWORD PTR [rbx+0x60]
    a62b:	48 85 db             	test   rbx,rbx
    a62e:	75 15                	jne    a645 <asn1_write_value+0x665>
    a630:	e9 9b fc ff ff       	jmp    a2d0 <asn1_write_value+0x2f0>
    a635:	0f 1f 00             	nop    DWORD PTR [rax]
    a638:	48 8b 5b 68          	mov    rbx,QWORD PTR [rbx+0x68]
    a63c:	48 85 db             	test   rbx,rbx
    a63f:	0f 84 8b fc ff ff    	je     a2d0 <asn1_write_value+0x2f0>
    a645:	80 7b 48 01          	cmp    BYTE PTR [rbx+0x48],0x1
    a649:	75 ed                	jne    a638 <asn1_write_value+0x658>
    a64b:	4c 89 e6             	mov    rsi,r12
    a64e:	48 89 df             	mov    rdi,rbx
    a651:	e8 6a 86 ff ff       	call   2cc0 <strcmp@plt>
    a656:	85 c0                	test   eax,eax
    a658:	75 de                	jne    a638 <asn1_write_value+0x658>
    a65a:	bf 08 00 00 00       	mov    edi,0x8
    a65f:	e8 ac 86 ff ff       	call   2d10 <malloc@plt>
    a664:	48 85 c0             	test   rax,rax
    a667:	49 89 c5             	mov    r13,rax
    a66a:	74 9c                	je     a608 <asn1_write_value+0x628>
    a66c:	48 8b 7b 50          	mov    rdi,QWORD PTR [rbx+0x50]
    a670:	48 8d 4c 24 0c       	lea    rcx,[rsp+0xc]
    a675:	ba 08 00 00 00       	mov    edx,0x8
    a67a:	48 89 c6             	mov    rsi,rax
    a67d:	e8 0e f7 ff ff       	call   9d90 <_asn1_convert_integer>
    a682:	48 8b 5c 24 18       	mov    rbx,QWORD PTR [rsp+0x18]
    a687:	e9 31 fa ff ff       	jmp    a0bd <asn1_write_value+0xdd>
    a68c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    a690:	48 8d 3d 08 5a 00 00 	lea    rdi,[rip+0x5a08]        # 1009f <bit_mask+0x5af>
    a697:	b9 06 00 00 00       	mov    ecx,0x6
    a69c:	4c 89 e6             	mov    rsi,r12
    a69f:	f3 a6                	repz cmps BYTE PTR ds:[rsi],BYTE PTR es:[rdi]
    a6a1:	40 0f 97 c5          	seta   bpl
    a6a5:	0f 92 c0             	setb   al
    a6a8:	29 c5                	sub    ebp,eax
    a6aa:	40 0f be ed          	movsx  ebp,bpl
    a6ae:	85 ed                	test   ebp,ebp
    a6b0:	0f 85 1a fc ff ff    	jne    a2d0 <asn1_write_value+0x2f0>
    a6b6:	41 81 e5 00 80 00 00 	and    r13d,0x8000
    a6bd:	74 25                	je     a6e4 <asn1_write_value+0x704>
    a6bf:	48 8b 43 60          	mov    rax,QWORD PTR [rbx+0x60]
    a6c3:	8b 50 48             	mov    edx,DWORD PTR [rax+0x48]
    a6c6:	80 fa 09             	cmp    dl,0x9
    a6c9:	74 11                	je     a6dc <asn1_write_value+0x6fc>
    a6cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    a6d0:	48 8b 40 68          	mov    rax,QWORD PTR [rax+0x68]
    a6d4:	8b 50 48             	mov    edx,DWORD PTR [rax+0x48]
    a6d7:	80 fa 09             	cmp    dl,0x9
    a6da:	75 f4                	jne    a6d0 <asn1_write_value+0x6f0>
    a6dc:	81 e2 00 00 02 00    	and    edx,0x20000
    a6e2:	75 19                	jne    a6fd <asn1_write_value+0x71d>
    a6e4:	48 8d 35 f3 51 00 00 	lea    rsi,[rip+0x51f3]        # f8de <yytranslate+0x19e>
    a6eb:	ba 01 00 00 00       	mov    edx,0x1
    a6f0:	48 89 df             	mov    rdi,rbx
    a6f3:	e8 68 0d 00 00       	call   b460 <_asn1_set_value>
    a6f8:	e9 b3 fa ff ff       	jmp    a1b0 <asn1_write_value+0x1d0>
    a6fd:	31 d2                	xor    edx,edx
    a6ff:	31 f6                	xor    esi,esi
    a701:	48 89 df             	mov    rdi,rbx
    a704:	e8 57 0d 00 00       	call   b460 <_asn1_set_value>
    a709:	e9 a2 fa ff ff       	jmp    a1b0 <asn1_write_value+0x1d0>
    a70e:	48 63 f8             	movsxd rdi,eax
    a711:	e8 fa 85 ff ff       	call   2d10 <malloc@plt>
    a716:	48 85 c0             	test   rax,rax
    a719:	49 89 c5             	mov    r13,rax
    a71c:	0f 84 e6 fe ff ff    	je     a608 <asn1_write_value+0x628>
    a722:	48 63 54 24 0c       	movsxd rdx,DWORD PTR [rsp+0xc]
    a727:	4c 89 e6             	mov    rsi,r12
    a72a:	48 89 c7             	mov    rdi,rax
    a72d:	e8 be 85 ff ff       	call   2cf0 <memcpy@plt>
    a732:	e9 86 f9 ff ff       	jmp    a0bd <asn1_write_value+0xdd>
    a737:	83 f8 0d             	cmp    eax,0xd
    a73a:	0f 84 e3 00 00 00    	je     a823 <asn1_write_value+0x843>
    a740:	0f 8e c7 00 00 00    	jle    a80d <asn1_write_value+0x82d>
    a746:	83 f8 0f             	cmp    eax,0xf
    a749:	0f 84 1b 01 00 00    	je     a86a <asn1_write_value+0x88a>
    a74f:	83 f8 11             	cmp    eax,0x11
    a752:	0f 85 08 01 00 00    	jne    a860 <asn1_write_value+0x880>
    a758:	41 0f b6 4c 24 0a    	movzx  ecx,BYTE PTR [r12+0xa]
    a75e:	bd 07 00 00 00       	mov    ebp,0x7
    a763:	8d 51 d0             	lea    edx,[rcx-0x30]
    a766:	80 fa 09             	cmp    dl,0x9
    a769:	0f 87 41 fa ff ff    	ja     a1b0 <asn1_write_value+0x1d0>
    a76f:	41 0f b6 4c 24 0b    	movzx  ecx,BYTE PTR [r12+0xb]
    a775:	8d 51 d0             	lea    edx,[rcx-0x30]
    a778:	80 fa 09             	cmp    dl,0x9
    a77b:	0f 87 2f fa ff ff    	ja     a1b0 <asn1_write_value+0x1d0>
    a781:	41 0f b6 4c 24 0c    	movzx  ecx,BYTE PTR [r12+0xc]
    a787:	8d 51 d5             	lea    edx,[rcx-0x2b]
    a78a:	80 e2 fd             	and    dl,0xfd
    a78d:	0f 85 3d fb ff ff    	jne    a2d0 <asn1_write_value+0x2f0>
    a793:	31 d2                	xor    edx,edx
    a795:	eb 0e                	jmp    a7a5 <asn1_write_value+0x7c5>
    a797:	48 83 c2 01          	add    rdx,0x1
    a79b:	48 83 fa 04          	cmp    rdx,0x4
    a79f:	0f 84 5f fb ff ff    	je     a304 <asn1_write_value+0x324>
    a7a5:	41 0f b6 4c 14 0d    	movzx  ecx,BYTE PTR [r12+rdx*1+0xd]
    a7ab:	83 e9 30             	sub    ecx,0x30
    a7ae:	80 f9 09             	cmp    cl,0x9
    a7b1:	0f 87 19 fb ff ff    	ja     a2d0 <asn1_write_value+0x2f0>
    a7b7:	eb de                	jmp    a797 <asn1_write_value+0x7b7>
    a7b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    a7c0:	80 7b 48 15          	cmp    BYTE PTR [rbx+0x48],0x15
    a7c4:	0f 84 fc fa ff ff    	je     a2c6 <asn1_write_value+0x2e6>
    a7ca:	8b 54 24 0c          	mov    edx,DWORD PTR [rsp+0xc]
    a7ce:	8d 4a ff             	lea    ecx,[rdx-0x1]
    a7d1:	85 c9                	test   ecx,ecx
    a7d3:	0f 8e 21 01 00 00    	jle    a8fa <asn1_write_value+0x91a>
    a7d9:	be 01 00 00 00       	mov    esi,0x1
    a7de:	e9 f6 f8 ff ff       	jmp    a0d9 <asn1_write_value+0xf9>
    a7e3:	4c 63 e5             	movsxd r12,ebp
    a7e6:	4d 01 ec             	add    r12,r13
    a7e9:	85 f6                	test   esi,esi
    a7eb:	41 0f b6 3c 24       	movzx  edi,BYTE PTR [r12]
    a7f0:	0f 84 12 f9 ff ff    	je     a108 <asn1_write_value+0x128>
    a7f6:	40 84 ff             	test   dil,dil
    a7f9:	0f 88 12 f9 ff ff    	js     a111 <asn1_write_value+0x131>
    a7ff:	83 ed 01             	sub    ebp,0x1
    a802:	4c 63 e5             	movsxd r12,ebp
    a805:	4d 01 ec             	add    r12,r13
    a808:	e9 04 f9 ff ff       	jmp    a111 <asn1_write_value+0x131>
    a80d:	83 f8 0b             	cmp    eax,0xb
    a810:	75 4e                	jne    a860 <asn1_write_value+0x880>
    a812:	41 80 7c 24 0a 5a    	cmp    BYTE PTR [r12+0xa],0x5a
    a818:	0f 85 b2 fa ff ff    	jne    a2d0 <asn1_write_value+0x2f0>
    a81e:	e9 e1 fa ff ff       	jmp    a304 <asn1_write_value+0x324>
    a823:	41 0f b6 4c 24 0a    	movzx  ecx,BYTE PTR [r12+0xa]
    a829:	bd 07 00 00 00       	mov    ebp,0x7
    a82e:	8d 51 d0             	lea    edx,[rcx-0x30]
    a831:	80 fa 09             	cmp    dl,0x9
    a834:	0f 87 76 f9 ff ff    	ja     a1b0 <asn1_write_value+0x1d0>
    a83a:	41 0f b6 4c 24 0b    	movzx  ecx,BYTE PTR [r12+0xb]
    a840:	8d 51 d0             	lea    edx,[rcx-0x30]
    a843:	80 fa 09             	cmp    dl,0x9
    a846:	0f 87 64 f9 ff ff    	ja     a1b0 <asn1_write_value+0x1d0>
    a84c:	41 80 7c 24 0c 5a    	cmp    BYTE PTR [r12+0xc],0x5a
    a852:	0f 85 78 fa ff ff    	jne    a2d0 <asn1_write_value+0x2f0>
    a858:	e9 a7 fa ff ff       	jmp    a304 <asn1_write_value+0x324>
    a85d:	0f 1f 00             	nop    DWORD PTR [rax]
    a860:	bd 05 00 00 00       	mov    ebp,0x5
    a865:	e9 46 f9 ff ff       	jmp    a1b0 <asn1_write_value+0x1d0>
    a86a:	41 0f b6 4c 24 0a    	movzx  ecx,BYTE PTR [r12+0xa]
    a870:	8d 51 d5             	lea    edx,[rcx-0x2b]
    a873:	81 e2 fd 00 00 00    	and    edx,0xfd
    a879:	0f 85 51 fa ff ff    	jne    a2d0 <asn1_write_value+0x2f0>
    a87f:	49 8d 54 24 0b       	lea    rdx,[r12+0xb]
    a884:	49 8d 74 24 0f       	lea    rsi,[r12+0xf]
    a889:	0f b6 0a             	movzx  ecx,BYTE PTR [rdx]
    a88c:	83 e9 30             	sub    ecx,0x30
    a88f:	80 f9 09             	cmp    cl,0x9
    a892:	0f 87 38 fa ff ff    	ja     a2d0 <asn1_write_value+0x2f0>
    a898:	48 83 c2 01          	add    rdx,0x1
    a89c:	48 39 f2             	cmp    rdx,rsi
    a89f:	75 e8                	jne    a889 <asn1_write_value+0x8a9>
    a8a1:	e9 5e fa ff ff       	jmp    a304 <asn1_write_value+0x324>
    a8a6:	83 f9 00             	cmp    ecx,0x0
    a8a9:	7e 59                	jle    a904 <asn1_write_value+0x924>
    a8ab:	41 0f b6 04 24       	movzx  eax,BYTE PTR [r12]
    a8b0:	41 38 07             	cmp    BYTE PTR [r15],al
    a8b3:	0f 85 e1 f8 ff ff    	jne    a19a <asn1_write_value+0x1ba>
    a8b9:	48 63 fd             	movsxd rdi,ebp
    a8bc:	31 c0                	xor    eax,eax
    a8be:	31 d2                	xor    edx,edx
    a8c0:	4c 01 ef             	add    rdi,r13
    a8c3:	eb 16                	jmp    a8db <asn1_write_value+0x8fb>
    a8c5:	0f 1f 00             	nop    DWORD PTR [rax]
    a8c8:	0f b6 74 07 01       	movzx  esi,BYTE PTR [rdi+rax*1+0x1]
    a8cd:	48 83 c0 01          	add    rax,0x1
    a8d1:	41 3a 34 07          	cmp    sil,BYTE PTR [r15+rax*1]
    a8d5:	0f 85 bf f8 ff ff    	jne    a19a <asn1_write_value+0x1ba>
    a8db:	83 c2 01             	add    edx,0x1
    a8de:	39 d1                	cmp    ecx,edx
    a8e0:	75 e6                	jne    a8c8 <asn1_write_value+0x8e8>
    a8e2:	48 8b 7c 24 18       	mov    rdi,QWORD PTR [rsp+0x18]
    a8e7:	31 d2                	xor    edx,edx
    a8e9:	31 f6                	xor    esi,esi
    a8eb:	e8 70 0b 00 00       	call   b460 <_asn1_set_value>
    a8f0:	e9 a5 f8 ff ff       	jmp    a19a <asn1_write_value+0x1ba>
    a8f5:	e8 d6 82 ff ff       	call   2bd0 <__stack_chk_fail@plt>
    a8fa:	4d 89 ec             	mov    r12,r13
    a8fd:	31 ed                	xor    ebp,ebp
    a8ff:	e9 0d f8 ff ff       	jmp    a111 <asn1_write_value+0x131>
    a904:	0f 85 90 f8 ff ff    	jne    a19a <asn1_write_value+0x1ba>
    a90a:	eb d6                	jmp    a8e2 <asn1_write_value+0x902>
    a90c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

000000000000a910 <asn1_read_value_type>:
    a910:	41 57                	push   r15
    a912:	41 56                	push   r14
    a914:	4d 89 c6             	mov    r14,r8
    a917:	41 55                	push   r13
    a919:	41 54                	push   r12
    a91b:	49 89 cd             	mov    r13,rcx
    a91e:	55                   	push   rbp
    a91f:	53                   	push   rbx
    a920:	48 89 d5             	mov    rbp,rdx
    a923:	48 83 ec 18          	sub    rsp,0x18
    a927:	44 8b 21             	mov    r12d,DWORD PTR [rcx]
    a92a:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    a931:	00 00 
    a933:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    a938:	31 c0                	xor    eax,eax
    a93a:	e8 f1 81 ff ff       	call   2b30 <asn1_find_node@plt>
    a93f:	48 89 c3             	mov    rbx,rax
    a942:	b8 02 00 00 00       	mov    eax,0x2
    a947:	48 85 db             	test   rbx,rbx
    a94a:	0f 84 90 00 00 00    	je     a9e0 <asn1_read_value_type+0xd0>
    a950:	8b 43 48             	mov    eax,DWORD PTR [rbx+0x48]
    a953:	0f b6 d0             	movzx  edx,al
    a956:	8d 4a ee             	lea    ecx,[rdx-0x12]
    a959:	83 e1 fd             	and    ecx,0xfffffffd
    a95c:	0f 85 a6 00 00 00    	jne    aa08 <asn1_read_value_type+0xf8>
    a962:	4d 85 f6             	test   r14,r14
    a965:	74 03                	je     a96a <asn1_read_value_type+0x5a>
    a967:	41 89 16             	mov    DWORD PTR [r14],edx
    a96a:	83 ea 03             	sub    edx,0x3
    a96d:	83 fa 22             	cmp    edx,0x22
    a970:	0f 87 7a 03 00 00    	ja     acf0 <asn1_read_value_type+0x3e0>
    a976:	48 8d 05 d7 53 00 00 	lea    rax,[rip+0x53d7]        # fd54 <bit_mask+0x264>
    a97d:	48 63 14 90          	movsxd rdx,DWORD PTR [rax+rdx*4]
    a981:	48 01 d0             	add    rax,rdx
    a984:	ff e0                	jmp    rax
    a986:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    a98d:	00 00 00 
    a990:	8b 43 48             	mov    eax,DWORD PTR [rbx+0x48]
    a993:	a9 00 00 00 10       	test   eax,0x10000000
    a998:	0f 85 62 03 00 00    	jne    ad00 <asn1_read_value_type+0x3f0>
    a99e:	f6 c4 80             	test   ah,0x80
    a9a1:	4c 8b 73 50          	mov    r14,QWORD PTR [rbx+0x50]
    a9a5:	74 09                	je     a9b0 <asn1_read_value_type+0xa0>
    a9a7:	4d 85 f6             	test   r14,r14
    a9aa:	0f 84 7d 04 00 00    	je     ae2d <asn1_read_value_type+0x51d>
    a9b0:	4c 89 f7             	mov    rdi,r14
    a9b3:	e8 08 82 ff ff       	call   2bc0 <strlen@plt>
    a9b8:	83 c0 01             	add    eax,0x1
    a9bb:	41 39 c4             	cmp    r12d,eax
    a9be:	41 89 45 00          	mov    DWORD PTR [r13+0x0],eax
    a9c2:	0f 8c 30 02 00 00    	jl     abf8 <asn1_read_value_type+0x2e8>
    a9c8:	48 85 ed             	test   rbp,rbp
    a9cb:	0f 84 4f 01 00 00    	je     ab20 <asn1_read_value_type+0x210>
    a9d1:	4c 89 f6             	mov    rsi,r14
    a9d4:	48 89 ef             	mov    rdi,rbp
    a9d7:	e8 74 81 ff ff       	call   2b50 <strcpy@plt>
    a9dc:	31 c0                	xor    eax,eax
    a9de:	66 90                	xchg   ax,ax
    a9e0:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    a9e5:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
    a9ec:	00 00 
    a9ee:	0f 85 5f 04 00 00    	jne    ae53 <asn1_read_value_type+0x543>
    a9f4:	48 83 c4 18          	add    rsp,0x18
    a9f8:	5b                   	pop    rbx
    a9f9:	5d                   	pop    rbp
    a9fa:	41 5c                	pop    r12
    a9fc:	41 5d                	pop    r13
    a9fe:	41 5e                	pop    r14
    aa00:	41 5f                	pop    r15
    aa02:	c3                   	ret    
    aa03:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    aa08:	a9 00 80 00 10       	test   eax,0x10008000
    aa0d:	0f 85 4f ff ff ff    	jne    a962 <asn1_read_value_type+0x52>
    aa13:	48 83 7b 50 00       	cmp    QWORD PTR [rbx+0x50],0x0
    aa18:	b8 05 00 00 00       	mov    eax,0x5
    aa1d:	0f 85 3f ff ff ff    	jne    a962 <asn1_read_value_type+0x52>
    aa23:	eb bb                	jmp    a9e0 <asn1_read_value_type+0xd0>
    aa25:	0f 1f 00             	nop    DWORD PTR [rax]
    aa28:	f6 43 49 80          	test   BYTE PTR [rbx+0x49],0x80
    aa2c:	48 8b 7b 50          	mov    rdi,QWORD PTR [rbx+0x50]
    aa30:	0f 84 92 02 00 00    	je     acc8 <asn1_read_value_type+0x3b8>
    aa36:	48 85 ff             	test   rdi,rdi
    aa39:	0f 85 89 02 00 00    	jne    acc8 <asn1_read_value_type+0x3b8>
    aa3f:	48 8b 5b 60          	mov    rbx,QWORD PTR [rbx+0x60]
    aa43:	0f b6 53 48          	movzx  edx,BYTE PTR [rbx+0x48]
    aa47:	48 89 d8             	mov    rax,rbx
    aa4a:	83 fa 09             	cmp    edx,0x9
    aa4d:	74 0b                	je     aa5a <asn1_read_value_type+0x14a>
    aa4f:	90                   	nop
    aa50:	48 8b 40 68          	mov    rax,QWORD PTR [rax+0x68]
    aa54:	80 78 48 09          	cmp    BYTE PTR [rax+0x48],0x9
    aa58:	75 f6                	jne    aa50 <asn1_read_value_type+0x140>
    aa5a:	4c 8b 70 50          	mov    r14,QWORD PTR [rax+0x50]
    aa5e:	41 0f b6 06          	movzx  eax,BYTE PTR [r14]
    aa62:	8d 48 d0             	lea    ecx,[rax-0x30]
    aa65:	80 f9 09             	cmp    cl,0x9
    aa68:	0f 86 a9 03 00 00    	jbe    ae17 <asn1_read_value_type+0x507>
    aa6e:	83 e8 2b             	sub    eax,0x2b
    aa71:	a8 fd                	test   al,0xfd
    aa73:	75 1c                	jne    aa91 <asn1_read_value_type+0x181>
    aa75:	e9 9d 03 00 00       	jmp    ae17 <asn1_read_value_type+0x507>
    aa7a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    aa80:	48 8b 5b 68          	mov    rbx,QWORD PTR [rbx+0x68]
    aa84:	48 85 db             	test   rbx,rbx
    aa87:	0f 84 93 00 00 00    	je     ab20 <asn1_read_value_type+0x210>
    aa8d:	0f b6 53 48          	movzx  edx,BYTE PTR [rbx+0x48]
    aa91:	83 fa 01             	cmp    edx,0x1
    aa94:	75 ea                	jne    aa80 <asn1_read_value_type+0x170>
    aa96:	4c 89 f6             	mov    rsi,r14
    aa99:	48 89 df             	mov    rdi,rbx
    aa9c:	e8 1f 82 ff ff       	call   2cc0 <strcmp@plt>
    aaa1:	85 c0                	test   eax,eax
    aaa3:	75 db                	jne    aa80 <asn1_read_value_type+0x170>
    aaa5:	48 8b 7b 50          	mov    rdi,QWORD PTR [rbx+0x50]
    aaa9:	4c 89 e9             	mov    rcx,r13
    aaac:	44 89 e2             	mov    edx,r12d
    aaaf:	48 89 ee             	mov    rsi,rbp
    aab2:	e8 d9 f2 ff ff       	call   9d90 <_asn1_convert_integer>
    aab7:	e9 24 ff ff ff       	jmp    a9e0 <asn1_read_value_type+0xd0>
    aabc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    aac0:	f6 43 49 80          	test   BYTE PTR [rbx+0x49],0x80
    aac4:	48 8b 43 50          	mov    rax,QWORD PTR [rbx+0x50]
    aac8:	0f 84 ba 01 00 00    	je     ac88 <asn1_read_value_type+0x378>
    aace:	48 85 c0             	test   rax,rax
    aad1:	0f 85 b1 01 00 00    	jne    ac88 <asn1_read_value_type+0x378>
    aad7:	48 8b 43 60          	mov    rax,QWORD PTR [rbx+0x60]
    aadb:	8b 50 48             	mov    edx,DWORD PTR [rax+0x48]
    aade:	80 fa 09             	cmp    dl,0x9
    aae1:	74 11                	je     aaf4 <asn1_read_value_type+0x1e4>
    aae3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    aae8:	48 8b 40 68          	mov    rax,QWORD PTR [rax+0x68]
    aaec:	8b 50 48             	mov    edx,DWORD PTR [rax+0x48]
    aaef:	80 fa 09             	cmp    dl,0x9
    aaf2:	75 f4                	jne    aae8 <asn1_read_value_type+0x1d8>
    aaf4:	81 e2 00 00 01 00    	and    edx,0x10000
    aafa:	0f 84 91 01 00 00    	je     ac91 <asn1_read_value_type+0x381>
    ab00:	41 83 fc 04          	cmp    r12d,0x4
    ab04:	41 c7 45 00 05 00 00 	mov    DWORD PTR [r13+0x0],0x5
    ab0b:	00 
    ab0c:	0f 8e e6 00 00 00    	jle    abf8 <asn1_read_value_type+0x2e8>
    ab12:	48 85 ed             	test   rbp,rbp
    ab15:	0f 85 ea 02 00 00    	jne    ae05 <asn1_read_value_type+0x4f5>
    ab1b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    ab20:	31 c0                	xor    eax,eax
    ab22:	e9 b9 fe ff ff       	jmp    a9e0 <asn1_read_value_type+0xd0>
    ab27:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    ab2e:	00 00 
    ab30:	8b 73 58             	mov    esi,DWORD PTR [rbx+0x58]
    ab33:	48 8b 7b 50          	mov    rdi,QWORD PTR [rbx+0x50]
    ab37:	48 8d 54 24 04       	lea    rdx,[rsp+0x4]
    ab3c:	c7 44 24 04 ff ff ff 	mov    DWORD PTR [rsp+0x4],0xffffffff
    ab43:	ff 
    ab44:	e8 57 82 ff ff       	call   2da0 <asn1_get_length_der@plt>
    ab49:	48 89 c2             	mov    rdx,rax
    ab4c:	89 04 24             	mov    DWORD PTR [rsp],eax
    ab4f:	b8 04 00 00 00       	mov    eax,0x4
    ab54:	85 d2                	test   edx,edx
    ab56:	0f 88 84 fe ff ff    	js     a9e0 <asn1_read_value_type+0xd0>
    ab5c:	41 39 d4             	cmp    r12d,edx
    ab5f:	41 89 55 00          	mov    DWORD PTR [r13+0x0],edx
    ab63:	0f 8c 8f 00 00 00    	jl     abf8 <asn1_read_value_type+0x2e8>
    ab69:	85 d2                	test   edx,edx
    ab6b:	7e b3                	jle    ab20 <asn1_read_value_type+0x210>
    ab6d:	48 85 ed             	test   rbp,rbp
    ab70:	74 ae                	je     ab20 <asn1_read_value_type+0x210>
    ab72:	48 63 74 24 04       	movsxd rsi,DWORD PTR [rsp+0x4]
    ab77:	48 63 d2             	movsxd rdx,edx
    ab7a:	48 89 ef             	mov    rdi,rbp
    ab7d:	48 03 73 50          	add    rsi,QWORD PTR [rbx+0x50]
    ab81:	e8 6a 81 ff ff       	call   2cf0 <memcpy@plt>
    ab86:	31 c0                	xor    eax,eax
    ab88:	e9 53 fe ff ff       	jmp    a9e0 <asn1_read_value_type+0xd0>
    ab8d:	0f 1f 00             	nop    DWORD PTR [rax]
    ab90:	8b 73 58             	mov    esi,DWORD PTR [rbx+0x58]
    ab93:	48 8b 7b 50          	mov    rdi,QWORD PTR [rbx+0x50]
    ab97:	48 89 e2             	mov    rdx,rsp
    ab9a:	4d 89 e9             	mov    r9,r13
    ab9d:	45 89 e0             	mov    r8d,r12d
    aba0:	48 89 e9             	mov    rcx,rbp
    aba3:	c7 04 24 ff ff ff ff 	mov    DWORD PTR [rsp],0xffffffff
    abaa:	e8 71 82 ff ff       	call   2e20 <asn1_get_octet_der@plt>
    abaf:	e9 2c fe ff ff       	jmp    a9e0 <asn1_read_value_type+0xd0>
    abb4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    abb8:	8b 73 58             	mov    esi,DWORD PTR [rbx+0x58]
    abbb:	48 8b 7b 50          	mov    rdi,QWORD PTR [rbx+0x50]
    abbf:	48 89 e2             	mov    rdx,rsp
    abc2:	4d 89 e9             	mov    r9,r13
    abc5:	45 89 e0             	mov    r8d,r12d
    abc8:	48 89 e9             	mov    rcx,rbp
    abcb:	c7 04 24 ff ff ff ff 	mov    DWORD PTR [rsp],0xffffffff
    abd2:	e8 a9 81 ff ff       	call   2d80 <asn1_get_bit_der@plt>
    abd7:	e9 04 fe ff ff       	jmp    a9e0 <asn1_read_value_type+0xd0>
    abdc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    abe0:	41 83 fc 04          	cmp    r12d,0x4
    abe4:	41 c7 45 00 05 00 00 	mov    DWORD PTR [r13+0x0],0x5
    abeb:	00 
    abec:	0f 8f be 01 00 00    	jg     adb0 <asn1_read_value_type+0x4a0>
    abf2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    abf8:	b8 0c 00 00 00       	mov    eax,0xc
    abfd:	e9 de fd ff ff       	jmp    a9e0 <asn1_read_value_type+0xd0>
    ac02:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    ac08:	8b 43 58             	mov    eax,DWORD PTR [rbx+0x58]
    ac0b:	83 c0 01             	add    eax,0x1
    ac0e:	41 39 c4             	cmp    r12d,eax
    ac11:	41 89 45 00          	mov    DWORD PTR [r13+0x0],eax
    ac15:	7c e1                	jl     abf8 <asn1_read_value_type+0x2e8>
    ac17:	48 85 ed             	test   rbp,rbp
    ac1a:	0f 84 00 ff ff ff    	je     ab20 <asn1_read_value_type+0x210>
    ac20:	48 63 43 58          	movsxd rax,DWORD PTR [rbx+0x58]
    ac24:	85 c0                	test   eax,eax
    ac26:	7e 13                	jle    ac3b <asn1_read_value_type+0x32b>
    ac28:	48 8b 73 50          	mov    rsi,QWORD PTR [rbx+0x50]
    ac2c:	48 63 d0             	movsxd rdx,eax
    ac2f:	48 89 ef             	mov    rdi,rbp
    ac32:	e8 b9 80 ff ff       	call   2cf0 <memcpy@plt>
    ac37:	48 63 43 58          	movsxd rax,DWORD PTR [rbx+0x58]
    ac3b:	c6 44 05 00 00       	mov    BYTE PTR [rbp+rax*1+0x0],0x0
    ac40:	31 c0                	xor    eax,eax
    ac42:	e9 99 fd ff ff       	jmp    a9e0 <asn1_read_value_type+0xd0>
    ac47:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    ac4e:	00 00 
    ac50:	48 8b 5b 60          	mov    rbx,QWORD PTR [rbx+0x60]
    ac54:	48 89 df             	mov    rdi,rbx
    ac57:	e8 64 7f ff ff       	call   2bc0 <strlen@plt>
    ac5c:	83 c0 01             	add    eax,0x1
    ac5f:	41 39 c4             	cmp    r12d,eax
    ac62:	41 89 45 00          	mov    DWORD PTR [r13+0x0],eax
    ac66:	7c 90                	jl     abf8 <asn1_read_value_type+0x2e8>
    ac68:	48 85 ed             	test   rbp,rbp
    ac6b:	0f 84 af fe ff ff    	je     ab20 <asn1_read_value_type+0x210>
    ac71:	48 89 de             	mov    rsi,rbx
    ac74:	48 89 ef             	mov    rdi,rbp
    ac77:	e8 d4 7e ff ff       	call   2b50 <strcpy@plt>
    ac7c:	31 c0                	xor    eax,eax
    ac7e:	e9 5d fd ff ff       	jmp    a9e0 <asn1_read_value_type+0xd0>
    ac83:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    ac88:	80 38 54             	cmp    BYTE PTR [rax],0x54
    ac8b:	0f 84 6f fe ff ff    	je     ab00 <asn1_read_value_type+0x1f0>
    ac91:	41 83 fc 05          	cmp    r12d,0x5
    ac95:	41 c7 45 00 06 00 00 	mov    DWORD PTR [r13+0x0],0x6
    ac9c:	00 
    ac9d:	0f 8e 55 ff ff ff    	jle    abf8 <asn1_read_value_type+0x2e8>
    aca3:	48 85 ed             	test   rbp,rbp
    aca6:	0f 84 74 fe ff ff    	je     ab20 <asn1_read_value_type+0x210>
    acac:	b9 45 00 00 00       	mov    ecx,0x45
    acb1:	c7 45 00 46 41 4c 53 	mov    DWORD PTR [rbp+0x0],0x534c4146
    acb8:	31 c0                	xor    eax,eax
    acba:	66 89 4d 04          	mov    WORD PTR [rbp+0x4],cx
    acbe:	e9 1d fd ff ff       	jmp    a9e0 <asn1_read_value_type+0xd0>
    acc3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    acc8:	8b 73 58             	mov    esi,DWORD PTR [rbx+0x58]
    accb:	48 89 e2             	mov    rdx,rsp
    acce:	4d 89 e9             	mov    r9,r13
    acd1:	45 89 e0             	mov    r8d,r12d
    acd4:	48 89 e9             	mov    rcx,rbp
    acd7:	c7 04 24 ff ff ff ff 	mov    DWORD PTR [rsp],0xffffffff
    acde:	e8 3d 81 ff ff       	call   2e20 <asn1_get_octet_der@plt>
    ace3:	e9 f8 fc ff ff       	jmp    a9e0 <asn1_read_value_type+0xd0>
    ace8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    acef:	00 
    acf0:	b8 02 00 00 00       	mov    eax,0x2
    acf5:	e9 e6 fc ff ff       	jmp    a9e0 <asn1_read_value_type+0xd0>
    acfa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    ad00:	48 85 ed             	test   rbp,rbp
    ad03:	41 c7 45 00 00 00 00 	mov    DWORD PTR [r13+0x0],0x0
    ad0a:	00 
    ad0b:	0f 84 ec 00 00 00    	je     adfd <asn1_read_value_type+0x4ed>
    ad11:	c6 45 00 00          	mov    BYTE PTR [rbp+0x0],0x0
    ad15:	45 8b 75 00          	mov    r14d,DWORD PTR [r13+0x0]
    ad19:	48 8b 5b 60          	mov    rbx,QWORD PTR [rbx+0x60]
    ad1d:	48 85 db             	test   rbx,rbx
    ad20:	75 1b                	jne    ad3d <asn1_read_value_type+0x42d>
    ad22:	e9 b9 00 00 00       	jmp    ade0 <asn1_read_value_type+0x4d0>
    ad27:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    ad2e:	00 00 
    ad30:	48 8b 5b 68          	mov    rbx,QWORD PTR [rbx+0x68]
    ad34:	48 85 db             	test   rbx,rbx
    ad37:	0f 84 a3 00 00 00    	je     ade0 <asn1_read_value_type+0x4d0>
    ad3d:	80 7b 48 01          	cmp    BYTE PTR [rbx+0x48],0x1
    ad41:	75 ed                	jne    ad30 <asn1_read_value_type+0x420>
    ad43:	4c 8b 7b 50          	mov    r15,QWORD PTR [rbx+0x50]
    ad47:	4c 89 ff             	mov    rdi,r15
    ad4a:	e8 71 7e ff ff       	call   2bc0 <strlen@plt>
    ad4f:	41 01 c6             	add    r14d,eax
    ad52:	45 39 f4             	cmp    r12d,r14d
    ad55:	45 89 75 00          	mov    DWORD PTR [r13+0x0],r14d
    ad59:	0f 8c 91 00 00 00    	jl     adf0 <asn1_read_value_type+0x4e0>
    ad5f:	48 85 ed             	test   rbp,rbp
    ad62:	74 0f                	je     ad73 <asn1_read_value_type+0x463>
    ad64:	4c 89 fe             	mov    rsi,r15
    ad67:	48 89 ef             	mov    rdi,rbp
    ad6a:	e8 51 80 ff ff       	call   2dc0 <strcat@plt>
    ad6f:	45 8b 75 00          	mov    r14d,DWORD PTR [r13+0x0]
    ad73:	48 8b 43 68          	mov    rax,QWORD PTR [rbx+0x68]
    ad77:	48 85 c0             	test   rax,rax
    ad7a:	74 64                	je     ade0 <asn1_read_value_type+0x4d0>
    ad7c:	41 83 c6 01          	add    r14d,0x1
    ad80:	45 39 f4             	cmp    r12d,r14d
    ad83:	45 89 75 00          	mov    DWORD PTR [r13+0x0],r14d
    ad87:	7c 67                	jl     adf0 <asn1_read_value_type+0x4e0>
    ad89:	48 85 ed             	test   rbp,rbp
    ad8c:	74 42                	je     add0 <asn1_read_value_type+0x4c0>
    ad8e:	48 89 ef             	mov    rdi,rbp
    ad91:	e8 2a 7e ff ff       	call   2bc0 <strlen@plt>
    ad96:	ba 2e 00 00 00       	mov    edx,0x2e
    ad9b:	66 89 54 05 00       	mov    WORD PTR [rbp+rax*1+0x0],dx
    ada0:	45 8b 75 00          	mov    r14d,DWORD PTR [r13+0x0]
    ada4:	eb 8a                	jmp    ad30 <asn1_read_value_type+0x420>
    ada6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    adad:	00 00 00 
    adb0:	48 85 ed             	test   rbp,rbp
    adb3:	0f 84 67 fd ff ff    	je     ab20 <asn1_read_value_type+0x210>
    adb9:	c7 45 00 4e 55 4c 4c 	mov    DWORD PTR [rbp+0x0],0x4c4c554e
    adc0:	c6 45 04 00          	mov    BYTE PTR [rbp+0x4],0x0
    adc4:	31 c0                	xor    eax,eax
    adc6:	e9 15 fc ff ff       	jmp    a9e0 <asn1_read_value_type+0xd0>
    adcb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    add0:	48 89 c3             	mov    rbx,rax
    add3:	e9 65 ff ff ff       	jmp    ad3d <asn1_read_value_type+0x42d>
    add8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    addf:	00 
    ade0:	41 83 c6 01          	add    r14d,0x1
    ade4:	31 c0                	xor    eax,eax
    ade6:	45 89 75 00          	mov    DWORD PTR [r13+0x0],r14d
    adea:	e9 f1 fb ff ff       	jmp    a9e0 <asn1_read_value_type+0xd0>
    adef:	90                   	nop
    adf0:	41 83 c6 01          	add    r14d,0x1
    adf4:	45 89 75 00          	mov    DWORD PTR [r13+0x0],r14d
    adf8:	e9 fb fd ff ff       	jmp    abf8 <asn1_read_value_type+0x2e8>
    adfd:	45 31 f6             	xor    r14d,r14d
    ae00:	e9 14 ff ff ff       	jmp    ad19 <asn1_read_value_type+0x409>
    ae05:	c7 45 00 54 52 55 45 	mov    DWORD PTR [rbp+0x0],0x45555254
    ae0c:	c6 45 04 00          	mov    BYTE PTR [rbp+0x4],0x0
    ae10:	31 c0                	xor    eax,eax
    ae12:	e9 c9 fb ff ff       	jmp    a9e0 <asn1_read_value_type+0xd0>
    ae17:	4c 89 e9             	mov    rcx,r13
    ae1a:	44 89 e2             	mov    edx,r12d
    ae1d:	48 89 ee             	mov    rsi,rbp
    ae20:	4c 89 f7             	mov    rdi,r14
    ae23:	e8 68 ef ff ff       	call   9d90 <_asn1_convert_integer>
    ae28:	e9 b3 fb ff ff       	jmp    a9e0 <asn1_read_value_type+0xd0>
    ae2d:	48 8b 43 60          	mov    rax,QWORD PTR [rbx+0x60]
    ae31:	80 78 48 09          	cmp    BYTE PTR [rax+0x48],0x9
    ae35:	74 13                	je     ae4a <asn1_read_value_type+0x53a>
    ae37:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    ae3e:	00 00 
    ae40:	48 8b 40 68          	mov    rax,QWORD PTR [rax+0x68]
    ae44:	80 78 48 09          	cmp    BYTE PTR [rax+0x48],0x9
    ae48:	75 f6                	jne    ae40 <asn1_read_value_type+0x530>
    ae4a:	48 8b 58 50          	mov    rbx,QWORD PTR [rax+0x50]
    ae4e:	e9 01 fe ff ff       	jmp    ac54 <asn1_read_value_type+0x344>
    ae53:	e8 78 7d ff ff       	call   2bd0 <__stack_chk_fail@plt>
    ae58:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    ae5f:	00 

000000000000ae60 <asn1_read_value>:
    ae60:	45 31 c0             	xor    r8d,r8d
    ae63:	e9 68 7f ff ff       	jmp    2dd0 <asn1_read_value_type@plt>
    ae68:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    ae6f:	00 

000000000000ae70 <asn1_read_tag>:
    ae70:	41 54                	push   r12
    ae72:	55                   	push   rbp
    ae73:	49 89 d4             	mov    r12,rdx
    ae76:	53                   	push   rbx
    ae77:	48 89 cd             	mov    rbp,rcx
    ae7a:	e8 b1 7c ff ff       	call   2b30 <asn1_find_node@plt>
    ae7f:	48 89 c2             	mov    rdx,rax
    ae82:	b8 02 00 00 00       	mov    eax,0x2
    ae87:	48 85 d2             	test   rdx,rdx
    ae8a:	74 7f                	je     af0b <asn1_read_tag+0x9b>
    ae8c:	8b 4a 48             	mov    ecx,DWORD PTR [rdx+0x48]
    ae8f:	f6 c5 20             	test   ch,0x20
    ae92:	74 7c                	je     af10 <asn1_read_tag+0xa0>
    ae94:	48 8b 42 60          	mov    rax,QWORD PTR [rdx+0x60]
    ae98:	48 85 c0             	test   rax,rax
    ae9b:	74 73                	je     af10 <asn1_read_tag+0xa0>
    ae9d:	31 db                	xor    ebx,ebx
    ae9f:	31 f6                	xor    esi,esi
    aea1:	eb 0e                	jmp    aeb1 <asn1_read_tag+0x41>
    aea3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    aea8:	48 8b 40 68          	mov    rax,QWORD PTR [rax+0x68]
    aeac:	48 85 c0             	test   rax,rax
    aeaf:	74 26                	je     aed7 <asn1_read_tag+0x67>
    aeb1:	8b 50 48             	mov    edx,DWORD PTR [rax+0x48]
    aeb4:	80 fa 08             	cmp    dl,0x8
    aeb7:	75 ef                	jne    aea8 <asn1_read_tag+0x38>
    aeb9:	f6 c6 10             	test   dh,0x10
    aebc:	74 09                	je     aec7 <asn1_read_tag+0x57>
    aebe:	48 85 db             	test   rbx,rbx
    aec1:	0f 84 a9 00 00 00    	je     af70 <asn1_read_tag+0x100>
    aec7:	48 8b 40 68          	mov    rax,QWORD PTR [rax+0x68]
    aecb:	80 e6 08             	and    dh,0x8
    aece:	48 0f 45 de          	cmovne rbx,rsi
    aed2:	48 85 c0             	test   rax,rax
    aed5:	75 da                	jne    aeb1 <asn1_read_tag+0x41>
    aed7:	48 85 db             	test   rbx,rbx
    aeda:	74 34                	je     af10 <asn1_read_tag+0xa0>
    aedc:	48 8b 7b 50          	mov    rdi,QWORD PTR [rbx+0x50]
    aee0:	31 f6                	xor    esi,esi
    aee2:	ba 0a 00 00 00       	mov    edx,0xa
    aee7:	e8 c4 7e ff ff       	call   2db0 <strtoul@plt>
    aeec:	41 89 04 24          	mov    DWORD PTR [r12],eax
    aef0:	8b 43 48             	mov    eax,DWORD PTR [rbx+0x48]
    aef3:	f6 c4 04             	test   ah,0x4
    aef6:	75 58                	jne    af50 <asn1_read_tag+0xe0>
    aef8:	f6 c4 01             	test   ah,0x1
    aefb:	75 63                	jne    af60 <asn1_read_tag+0xf0>
    aefd:	f6 c4 02             	test   ah,0x2
    af00:	74 7e                	je     af80 <asn1_read_tag+0x110>
    af02:	c7 45 00 c0 00 00 00 	mov    DWORD PTR [rbp+0x0],0xc0
    af09:	31 c0                	xor    eax,eax
    af0b:	5b                   	pop    rbx
    af0c:	5d                   	pop    rbp
    af0d:	41 5c                	pop    r12
    af0f:	c3                   	ret    
    af10:	0f b6 c9             	movzx  ecx,cl
    af13:	31 c0                	xor    eax,eax
    af15:	c7 45 00 00 00 00 00 	mov    DWORD PTR [rbp+0x0],0x0
    af1c:	83 f9 25             	cmp    ecx,0x25
    af1f:	77 ea                	ja     af0b <asn1_read_tag+0x9b>
    af21:	ba 01 00 00 00       	mov    edx,0x1
    af26:	48 be f8 d8 30 f8 3f 	movabs rsi,0x3ff830d8f8
    af2d:	00 00 00 
    af30:	48 d3 e2             	shl    rdx,cl
    af33:	48 85 f2             	test   rdx,rsi
    af36:	75 58                	jne    af90 <asn1_read_tag+0x120>
    af38:	f7 c2 00 21 04 00    	test   edx,0x42100
    af3e:	74 cb                	je     af0b <asn1_read_tag+0x9b>
    af40:	41 c7 04 24 ff ff ff 	mov    DWORD PTR [r12],0xffffffff
    af47:	ff 
    af48:	eb c1                	jmp    af0b <asn1_read_tag+0x9b>
    af4a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    af50:	c7 45 00 40 00 00 00 	mov    DWORD PTR [rbp+0x0],0x40
    af57:	31 c0                	xor    eax,eax
    af59:	5b                   	pop    rbx
    af5a:	5d                   	pop    rbp
    af5b:	41 5c                	pop    r12
    af5d:	c3                   	ret    
    af5e:	66 90                	xchg   ax,ax
    af60:	c7 45 00 00 00 00 00 	mov    DWORD PTR [rbp+0x0],0x0
    af67:	31 c0                	xor    eax,eax
    af69:	5b                   	pop    rbx
    af6a:	5d                   	pop    rbp
    af6b:	41 5c                	pop    r12
    af6d:	c3                   	ret    
    af6e:	66 90                	xchg   ax,ax
    af70:	48 89 c3             	mov    rbx,rax
    af73:	e9 30 ff ff ff       	jmp    aea8 <asn1_read_tag+0x38>
    af78:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    af7f:	00 
    af80:	c7 45 00 80 00 00 00 	mov    DWORD PTR [rbp+0x0],0x80
    af87:	31 c0                	xor    eax,eax
    af89:	e9 7d ff ff ff       	jmp    af0b <asn1_read_tag+0x9b>
    af8e:	66 90                	xchg   ax,ax
    af90:	48 c1 e1 04          	shl    rcx,0x4
    af94:	48 03 0d 2d 80 20 00 	add    rcx,QWORD PTR [rip+0x20802d]        # 212fc8 <_DYNAMIC+0x1f8>
    af9b:	8b 11                	mov    edx,DWORD PTR [rcx]
    af9d:	41 89 14 24          	mov    DWORD PTR [r12],edx
    afa1:	e9 65 ff ff ff       	jmp    af0b <asn1_read_tag+0x9b>
    afa6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    afad:	00 00 00 

000000000000afb0 <asn1_read_node_value>:
    afb0:	48 8b 47 50          	mov    rax,QWORD PTR [rdi+0x50]
    afb4:	48 89 3e             	mov    QWORD PTR [rsi],rdi
    afb7:	48 89 46 08          	mov    QWORD PTR [rsi+0x8],rax
    afbb:	8b 47 58             	mov    eax,DWORD PTR [rdi+0x58]
    afbe:	89 46 10             	mov    DWORD PTR [rsi+0x10],eax
    afc1:	0f b6 47 48          	movzx  eax,BYTE PTR [rdi+0x48]
    afc5:	89 46 14             	mov    DWORD PTR [rsi+0x14],eax
    afc8:	31 c0                	xor    eax,eax
    afca:	c3                   	ret    
    afcb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

000000000000afd0 <asn1_strerror>:
    afd0:	85 ff                	test   edi,edi
    afd2:	74 28                	je     affc <asn1_strerror+0x2c>
    afd4:	48 8d 05 05 4e 00 00 	lea    rax,[rip+0x4e05]        # fde0 <bit_mask+0x2f0>
    afdb:	48 8d 15 9e 7c 20 00 	lea    rdx,[rip+0x207c9e]        # 212c80 <error_algorithms>
    afe2:	eb 0d                	jmp    aff1 <asn1_strerror+0x21>
    afe4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    afe8:	39 7a 08             	cmp    DWORD PTR [rdx+0x8],edi
    afeb:	74 16                	je     b003 <asn1_strerror+0x33>
    afed:	48 8b 42 10          	mov    rax,QWORD PTR [rdx+0x10]
    aff1:	48 83 c2 10          	add    rdx,0x10
    aff5:	48 85 c0             	test   rax,rax
    aff8:	75 ee                	jne    afe8 <asn1_strerror+0x18>
    affa:	f3 c3                	repz ret 
    affc:	48 8d 05 f1 4d 00 00 	lea    rax,[rip+0x4df1]        # fdf4 <bit_mask+0x304>
    b003:	48 83 c0 05          	add    rax,0x5
    b007:	c3                   	ret    
    b008:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    b00f:	00 

000000000000b010 <asn1_perror>:
    b010:	48 83 ec 08          	sub    rsp,0x8
    b014:	e8 87 7c ff ff       	call   2ca0 <asn1_strerror@plt>
    b019:	48 8d 0d e1 4d 00 00 	lea    rcx,[rip+0x4de1]        # fe01 <bit_mask+0x311>
    b020:	48 85 c0             	test   rax,rax
    b023:	48 8d 15 de 4d 00 00 	lea    rdx,[rip+0x4dde]        # fe08 <bit_mask+0x318>
    b02a:	be 01 00 00 00       	mov    esi,0x1
    b02f:	48 0f 45 c8          	cmovne rcx,rax
    b033:	48 8b 05 be 7f 20 00 	mov    rax,QWORD PTR [rip+0x207fbe]        # 212ff8 <_DYNAMIC+0x228>
    b03a:	48 8b 38             	mov    rdi,QWORD PTR [rax]
    b03d:	31 c0                	xor    eax,eax
    b03f:	48 83 c4 08          	add    rsp,0x8
    b043:	e9 c8 7d ff ff       	jmp    2e10 <__fprintf_chk@plt>
    b048:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    b04f:	00 

000000000000b050 <_asn1_str_cat>:
    b050:	41 55                	push   r13
    b052:	41 54                	push   r12
    b054:	49 89 d5             	mov    r13,rdx
    b057:	55                   	push   rbp
    b058:	53                   	push   rbx
    b059:	48 89 fd             	mov    rbp,rdi
    b05c:	48 89 d7             	mov    rdi,rdx
    b05f:	48 89 f3             	mov    rbx,rsi
    b062:	48 83 ec 08          	sub    rsp,0x8
    b066:	e8 55 7b ff ff       	call   2bc0 <strlen@plt>
    b06b:	48 89 ef             	mov    rdi,rbp
    b06e:	49 89 c4             	mov    r12,rax
    b071:	e8 4a 7b ff ff       	call   2bc0 <strlen@plt>
    b076:	48 89 da             	mov    rdx,rbx
    b079:	48 29 c2             	sub    rdx,rax
    b07c:	49 39 d4             	cmp    r12,rdx
    b07f:	72 27                	jb     b0a8 <_asn1_str_cat+0x58>
    b081:	48 39 d8             	cmp    rax,rbx
    b084:	74 14                	je     b09a <_asn1_str_cat+0x4a>
    b086:	48 83 ea 01          	sub    rdx,0x1
    b08a:	4c 89 ee             	mov    rsi,r13
    b08d:	48 89 ef             	mov    rdi,rbp
    b090:	e8 bb 7b ff ff       	call   2c50 <strncat@plt>
    b095:	c6 44 1d ff 00       	mov    BYTE PTR [rbp+rbx*1-0x1],0x0
    b09a:	48 83 c4 08          	add    rsp,0x8
    b09e:	5b                   	pop    rbx
    b09f:	5d                   	pop    rbp
    b0a0:	41 5c                	pop    r12
    b0a2:	41 5d                	pop    r13
    b0a4:	c3                   	ret    
    b0a5:	0f 1f 00             	nop    DWORD PTR [rax]
    b0a8:	48 83 c4 08          	add    rsp,0x8
    b0ac:	48 8d 7c 05 00       	lea    rdi,[rbp+rax*1+0x0]
    b0b1:	49 8d 54 24 01       	lea    rdx,[r12+0x1]
    b0b6:	5b                   	pop    rbx
    b0b7:	4c 89 ee             	mov    rsi,r13
    b0ba:	5d                   	pop    rbp
    b0bb:	41 5c                	pop    r12
    b0bd:	41 5d                	pop    r13
    b0bf:	e9 2c 7c ff ff       	jmp    2cf0 <memcpy@plt>
    b0c4:	66 90                	xchg   ax,ax
    b0c6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    b0cd:	00 00 00 

000000000000b0d0 <_asn1_str_cpy>:
    b0d0:	41 55                	push   r13
    b0d2:	41 54                	push   r12
    b0d4:	49 89 fd             	mov    r13,rdi
    b0d7:	55                   	push   rbp
    b0d8:	53                   	push   rbx
    b0d9:	48 89 f5             	mov    rbp,rsi
    b0dc:	48 89 d7             	mov    rdi,rdx
    b0df:	49 89 d4             	mov    r12,rdx
    b0e2:	48 83 ec 08          	sub    rsp,0x8
    b0e6:	e8 d5 7a ff ff       	call   2bc0 <strlen@plt>
    b0eb:	48 39 e8             	cmp    rax,rbp
    b0ee:	72 40                	jb     b130 <_asn1_str_cpy+0x60>
    b0f0:	31 c0                	xor    eax,eax
    b0f2:	48 85 ed             	test   rbp,rbp
    b0f5:	75 11                	jne    b108 <_asn1_str_cpy+0x38>
    b0f7:	48 83 c4 08          	add    rsp,0x8
    b0fb:	5b                   	pop    rbx
    b0fc:	5d                   	pop    rbp
    b0fd:	41 5c                	pop    r12
    b0ff:	41 5d                	pop    r13
    b101:	c3                   	ret    
    b102:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    b108:	48 8d 5d ff          	lea    rbx,[rbp-0x1]
    b10c:	4c 89 e6             	mov    rsi,r12
    b10f:	4c 89 ef             	mov    rdi,r13
    b112:	48 89 da             	mov    rdx,rbx
    b115:	e8 d6 7b ff ff       	call   2cf0 <memcpy@plt>
    b11a:	41 c6 44 2d ff 00    	mov    BYTE PTR [r13+rbp*1-0x1],0x0
    b120:	48 83 c4 08          	add    rsp,0x8
    b124:	89 d8                	mov    eax,ebx
    b126:	5b                   	pop    rbx
    b127:	5d                   	pop    rbp
    b128:	41 5c                	pop    r12
    b12a:	41 5d                	pop    r13
    b12c:	c3                   	ret    
    b12d:	0f 1f 00             	nop    DWORD PTR [rax]
    b130:	48 8d 50 01          	lea    rdx,[rax+0x1]
    b134:	4c 89 e6             	mov    rsi,r12
    b137:	4c 89 ef             	mov    rdi,r13
    b13a:	48 89 c3             	mov    rbx,rax
    b13d:	e8 ae 7b ff ff       	call   2cf0 <memcpy@plt>
    b142:	48 83 c4 08          	add    rsp,0x8
    b146:	89 d8                	mov    eax,ebx
    b148:	5b                   	pop    rbx
    b149:	5d                   	pop    rbp
    b14a:	41 5c                	pop    r12
    b14c:	41 5d                	pop    r13
    b14e:	c3                   	ret    
    b14f:	90                   	nop

000000000000b150 <_asn1_add_static_node>:
    b150:	41 54                	push   r12
    b152:	55                   	push   rbp
    b153:	41 89 f4             	mov    r12d,esi
    b156:	53                   	push   rbx
    b157:	48 89 fd             	mov    rbp,rdi
    b15a:	be 98 00 00 00       	mov    esi,0x98
    b15f:	bf 01 00 00 00       	mov    edi,0x1
    b164:	e8 47 7b ff ff       	call   2cb0 <calloc@plt>
    b169:	48 85 c0             	test   rax,rax
    b16c:	74 32                	je     b1a0 <_asn1_add_static_node+0x50>
    b16e:	bf 10 00 00 00       	mov    edi,0x10
    b173:	48 89 c3             	mov    rbx,rax
    b176:	e8 95 7b ff ff       	call   2d10 <malloc@plt>
    b17b:	48 85 c0             	test   rax,rax
    b17e:	74 24                	je     b1a4 <_asn1_add_static_node+0x54>
    b180:	48 8b 55 00          	mov    rdx,QWORD PTR [rbp+0x0]
    b184:	48 89 18             	mov    QWORD PTR [rax],rbx
    b187:	48 89 45 00          	mov    QWORD PTR [rbp+0x0],rax
    b18b:	44 89 63 48          	mov    DWORD PTR [rbx+0x48],r12d
    b18f:	48 89 50 08          	mov    QWORD PTR [rax+0x8],rdx
    b193:	48 89 d8             	mov    rax,rbx
    b196:	5b                   	pop    rbx
    b197:	5d                   	pop    rbp
    b198:	41 5c                	pop    r12
    b19a:	c3                   	ret    
    b19b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    b1a0:	31 c0                	xor    eax,eax
    b1a2:	eb f2                	jmp    b196 <_asn1_add_static_node+0x46>
    b1a4:	48 89 df             	mov    rdi,rbx
    b1a7:	e8 64 79 ff ff       	call   2b10 <free@plt>
    b1ac:	31 c0                	xor    eax,eax
    b1ae:	eb e6                	jmp    b196 <_asn1_add_static_node+0x46>

000000000000b1b0 <asn1_find_node>:
    b1b0:	41 56                	push   r14
    b1b2:	41 55                	push   r13
    b1b4:	41 54                	push   r12
    b1b6:	55                   	push   rbp
    b1b7:	53                   	push   rbx
    b1b8:	48 83 ec 50          	sub    rsp,0x50
    b1bc:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    b1c3:	00 00 
    b1c5:	48 89 44 24 48       	mov    QWORD PTR [rsp+0x48],rax
    b1ca:	31 c0                	xor    eax,eax
    b1cc:	48 85 ff             	test   rdi,rdi
    b1cf:	0f 84 73 01 00 00    	je     b348 <asn1_find_node+0x198>
    b1d5:	48 85 f6             	test   rsi,rsi
    b1d8:	49 89 f5             	mov    r13,rsi
    b1db:	0f 84 67 01 00 00    	je     b348 <asn1_find_node+0x198>
    b1e1:	0f b6 16             	movzx  edx,BYTE PTR [rsi]
    b1e4:	48 89 fb             	mov    rbx,rdi
    b1e7:	80 fa 3f             	cmp    dl,0x3f
    b1ea:	0f 84 f8 01 00 00    	je     b3e8 <asn1_find_node+0x238>
    b1f0:	80 3f 00             	cmp    BYTE PTR [rdi],0x0
    b1f3:	0f 84 72 01 00 00    	je     b36b <asn1_find_node+0x1bb>
    b1f9:	be 2e 00 00 00       	mov    esi,0x2e
    b1fe:	4c 89 ef             	mov    rdi,r13
    b201:	e8 da 79 ff ff       	call   2be0 <strchr@plt>
    b206:	48 85 c0             	test   rax,rax
    b209:	49 89 c6             	mov    r14,rax
    b20c:	0f 84 0f 02 00 00    	je     b421 <asn1_find_node+0x271>
    b212:	4c 29 e8             	sub    rax,r13
    b215:	83 f8 40             	cmp    eax,0x40
    b218:	0f 87 2a 01 00 00    	ja     b348 <asn1_find_node+0x198>
    b21e:	89 c5                	mov    ebp,eax
    b220:	4c 89 ee             	mov    rsi,r13
    b223:	b9 41 00 00 00       	mov    ecx,0x41
    b228:	48 89 ea             	mov    rdx,rbp
    b22b:	48 89 e7             	mov    rdi,rsp
    b22e:	49 89 e4             	mov    r12,rsp
    b231:	e8 9a 7a ff ff       	call   2cd0 <__memcpy_chk@plt>
    b236:	c6 04 2c 00          	mov    BYTE PTR [rsp+rbp*1],0x0
    b23a:	0f b6 04 24          	movzx  eax,BYTE PTR [rsp]
    b23e:	31 ed                	xor    ebp,ebp
    b240:	4d 8d 6e 01          	lea    r13,[r14+0x1]
    b244:	84 c0                	test   al,al
    b246:	74 2d                	je     b275 <asn1_find_node+0xc5>
    b248:	48 89 e2             	mov    rdx,rsp
    b24b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    b250:	48 83 c2 01          	add    rdx,0x1
    b254:	c1 c5 09             	rol    ebp,0x9
    b257:	01 c5                	add    ebp,eax
    b259:	0f b6 02             	movzx  eax,BYTE PTR [rdx]
    b25c:	84 c0                	test   al,al
    b25e:	75 f0                	jne    b250 <asn1_find_node+0xa0>
    b260:	39 6b 44             	cmp    DWORD PTR [rbx+0x44],ebp
    b263:	74 15                	je     b27a <asn1_find_node+0xca>
    b265:	0f 1f 00             	nop    DWORD PTR [rax]
    b268:	48 8b 5b 68          	mov    rbx,QWORD PTR [rbx+0x68]
    b26c:	48 85 db             	test   rbx,rbx
    b26f:	0f 84 d3 00 00 00    	je     b348 <asn1_find_node+0x198>
    b275:	39 6b 44             	cmp    DWORD PTR [rbx+0x44],ebp
    b278:	75 ee                	jne    b268 <asn1_find_node+0xb8>
    b27a:	4c 89 e6             	mov    rsi,r12
    b27d:	48 89 df             	mov    rdi,rbx
    b280:	e8 3b 7a ff ff       	call   2cc0 <strcmp@plt>
    b285:	85 c0                	test   eax,eax
    b287:	75 df                	jne    b268 <asn1_find_node+0xb8>
    b289:	4d 85 ed             	test   r13,r13
    b28c:	0f 84 ac 00 00 00    	je     b33e <asn1_find_node+0x18e>
    b292:	49 89 e4             	mov    r12,rsp
    b295:	0f 1f 00             	nop    DWORD PTR [rax]
    b298:	be 2e 00 00 00       	mov    esi,0x2e
    b29d:	4c 89 ef             	mov    rdi,r13
    b2a0:	e8 3b 79 ff ff       	call   2be0 <strchr@plt>
    b2a5:	48 85 c0             	test   rax,rax
    b2a8:	49 89 c6             	mov    r14,rax
    b2ab:	0f 84 ff 00 00 00    	je     b3b0 <asn1_find_node+0x200>
    b2b1:	48 89 c2             	mov    rdx,rax
    b2b4:	4c 29 ea             	sub    rdx,r13
    b2b7:	83 fa 40             	cmp    edx,0x40
    b2ba:	0f 87 88 00 00 00    	ja     b348 <asn1_find_node+0x198>
    b2c0:	89 d5                	mov    ebp,edx
    b2c2:	4c 89 ee             	mov    rsi,r13
    b2c5:	b9 41 00 00 00       	mov    ecx,0x41
    b2ca:	48 89 ea             	mov    rdx,rbp
    b2cd:	4c 89 e7             	mov    rdi,r12
    b2d0:	4d 8d 6e 01          	lea    r13,[r14+0x1]
    b2d4:	e8 f7 79 ff ff       	call   2cd0 <__memcpy_chk@plt>
    b2d9:	c6 04 2c 00          	mov    BYTE PTR [rsp+rbp*1],0x0
    b2dd:	0f b6 04 24          	movzx  eax,BYTE PTR [rsp]
    b2e1:	31 ed                	xor    ebp,ebp
    b2e3:	84 c0                	test   al,al
    b2e5:	74 19                	je     b300 <asn1_find_node+0x150>
    b2e7:	4c 89 e2             	mov    rdx,r12
    b2ea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    b2f0:	48 83 c2 01          	add    rdx,0x1
    b2f4:	c1 c5 09             	rol    ebp,0x9
    b2f7:	01 c5                	add    ebp,eax
    b2f9:	0f b6 02             	movzx  eax,BYTE PTR [rdx]
    b2fc:	84 c0                	test   al,al
    b2fe:	75 f0                	jne    b2f0 <asn1_find_node+0x140>
    b300:	48 8b 5b 60          	mov    rbx,QWORD PTR [rbx+0x60]
    b304:	48 85 db             	test   rbx,rbx
    b307:	74 3f                	je     b348 <asn1_find_node+0x198>
    b309:	80 3c 24 3f          	cmp    BYTE PTR [rsp],0x3f
    b30d:	75 12                	jne    b321 <asn1_find_node+0x171>
    b30f:	eb 6f                	jmp    b380 <asn1_find_node+0x1d0>
    b311:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    b318:	48 8b 5b 68          	mov    rbx,QWORD PTR [rbx+0x68]
    b31c:	48 85 db             	test   rbx,rbx
    b31f:	74 27                	je     b348 <asn1_find_node+0x198>
    b321:	39 6b 44             	cmp    DWORD PTR [rbx+0x44],ebp
    b324:	75 f2                	jne    b318 <asn1_find_node+0x168>
    b326:	4c 89 e6             	mov    rsi,r12
    b329:	48 89 df             	mov    rdi,rbx
    b32c:	e8 8f 79 ff ff       	call   2cc0 <strcmp@plt>
    b331:	85 c0                	test   eax,eax
    b333:	75 e3                	jne    b318 <asn1_find_node+0x168>
    b335:	4d 85 ed             	test   r13,r13
    b338:	0f 85 5a ff ff ff    	jne    b298 <asn1_find_node+0xe8>
    b33e:	48 89 d8             	mov    rax,rbx
    b341:	eb 07                	jmp    b34a <asn1_find_node+0x19a>
    b343:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    b348:	31 c0                	xor    eax,eax
    b34a:	48 8b 4c 24 48       	mov    rcx,QWORD PTR [rsp+0x48]
    b34f:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
    b356:	00 00 
    b358:	0f 85 fb 00 00 00    	jne    b459 <asn1_find_node+0x2a9>
    b35e:	48 83 c4 50          	add    rsp,0x50
    b362:	5b                   	pop    rbx
    b363:	5d                   	pop    rbp
    b364:	41 5c                	pop    r12
    b366:	41 5d                	pop    r13
    b368:	41 5e                	pop    r14
    b36a:	c3                   	ret    
    b36b:	84 d2                	test   dl,dl
    b36d:	48 89 f8             	mov    rax,rdi
    b370:	74 d8                	je     b34a <asn1_find_node+0x19a>
    b372:	e9 1b ff ff ff       	jmp    b292 <asn1_find_node+0xe2>
    b377:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    b37e:	00 00 
    b380:	80 7c 24 01 4c       	cmp    BYTE PTR [rsp+0x1],0x4c
    b385:	75 9a                	jne    b321 <asn1_find_node+0x171>
    b387:	eb 0a                	jmp    b393 <asn1_find_node+0x1e3>
    b389:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    b390:	48 89 c3             	mov    rbx,rax
    b393:	48 8b 43 68          	mov    rax,QWORD PTR [rbx+0x68]
    b397:	48 85 c0             	test   rax,rax
    b39a:	75 f4                	jne    b390 <asn1_find_node+0x1e0>
    b39c:	4d 85 ed             	test   r13,r13
    b39f:	0f 85 f3 fe ff ff    	jne    b298 <asn1_find_node+0xe8>
    b3a5:	eb 97                	jmp    b33e <asn1_find_node+0x18e>
    b3a7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    b3ae:	00 00 
    b3b0:	4c 89 ea             	mov    rdx,r13
    b3b3:	be 41 00 00 00       	mov    esi,0x41
    b3b8:	4c 89 e7             	mov    rdi,r12
    b3bb:	e8 10 fd ff ff       	call   b0d0 <_asn1_str_cpy>
    b3c0:	0f b6 04 24          	movzx  eax,BYTE PTR [rsp]
    b3c4:	31 ed                	xor    ebp,ebp
    b3c6:	84 c0                	test   al,al
    b3c8:	74 16                	je     b3e0 <asn1_find_node+0x230>
    b3ca:	4c 89 e2             	mov    rdx,r12
    b3cd:	0f 1f 00             	nop    DWORD PTR [rax]
    b3d0:	48 83 c2 01          	add    rdx,0x1
    b3d4:	c1 c5 09             	rol    ebp,0x9
    b3d7:	01 c5                	add    ebp,eax
    b3d9:	0f b6 02             	movzx  eax,BYTE PTR [rdx]
    b3dc:	84 c0                	test   al,al
    b3de:	75 f0                	jne    b3d0 <asn1_find_node+0x220>
    b3e0:	45 31 ed             	xor    r13d,r13d
    b3e3:	e9 18 ff ff ff       	jmp    b300 <asn1_find_node+0x150>
    b3e8:	80 7e 01 43          	cmp    BYTE PTR [rsi+0x1],0x43
    b3ec:	0f b6 07             	movzx  eax,BYTE PTR [rdi]
    b3ef:	74 0d                	je     b3fe <asn1_find_node+0x24e>
    b3f1:	84 c0                	test   al,al
    b3f3:	0f 85 00 fe ff ff    	jne    b1f9 <asn1_find_node+0x49>
    b3f9:	e9 94 fe ff ff       	jmp    b292 <asn1_find_node+0xe2>
    b3fe:	3c 3f                	cmp    al,0x3f
    b400:	75 ef                	jne    b3f1 <asn1_find_node+0x241>
    b402:	be 2e 00 00 00       	mov    esi,0x2e
    b407:	4c 89 ef             	mov    rdi,r13
    b40a:	e8 d1 77 ff ff       	call   2be0 <strchr@plt>
    b40f:	48 85 c0             	test   rax,rax
    b412:	0f 84 26 ff ff ff    	je     b33e <asn1_find_node+0x18e>
    b418:	4c 8d 68 01          	lea    r13,[rax+0x1]
    b41c:	e9 68 fe ff ff       	jmp    b289 <asn1_find_node+0xd9>
    b421:	4c 89 ea             	mov    rdx,r13
    b424:	be 41 00 00 00       	mov    esi,0x41
    b429:	48 89 e7             	mov    rdi,rsp
    b42c:	e8 9f fc ff ff       	call   b0d0 <_asn1_str_cpy>
    b431:	0f b6 04 24          	movzx  eax,BYTE PTR [rsp]
    b435:	31 ed                	xor    ebp,ebp
    b437:	49 89 e4             	mov    r12,rsp
    b43a:	84 c0                	test   al,al
    b43c:	74 13                	je     b451 <asn1_find_node+0x2a1>
    b43e:	48 89 e2             	mov    rdx,rsp
    b441:	48 83 c2 01          	add    rdx,0x1
    b445:	c1 c5 09             	rol    ebp,0x9
    b448:	01 c5                	add    ebp,eax
    b44a:	0f b6 02             	movzx  eax,BYTE PTR [rdx]
    b44d:	84 c0                	test   al,al
    b44f:	75 f0                	jne    b441 <asn1_find_node+0x291>
    b451:	45 31 ed             	xor    r13d,r13d
    b454:	e9 1c fe ff ff       	jmp    b275 <asn1_find_node+0xc5>
    b459:	e8 72 77 ff ff       	call   2bd0 <__stack_chk_fail@plt>
    b45e:	66 90                	xchg   ax,ax

000000000000b460 <_asn1_set_value>:
    b460:	48 85 ff             	test   rdi,rdi
    b463:	0f 84 8f 00 00 00    	je     b4f8 <_asn1_set_value+0x98>
    b469:	41 54                	push   r12
    b46b:	55                   	push   rbp
    b46c:	49 89 f4             	mov    r12,rsi
    b46f:	53                   	push   rbx
    b470:	48 89 fb             	mov    rbx,rdi
    b473:	89 d5                	mov    ebp,edx
    b475:	48 83 ec 10          	sub    rsp,0x10
    b479:	48 8b 7f 50          	mov    rdi,QWORD PTR [rdi+0x50]
    b47d:	48 85 ff             	test   rdi,rdi
    b480:	74 1d                	je     b49f <_asn1_set_value+0x3f>
    b482:	48 8d 43 78          	lea    rax,[rbx+0x78]
    b486:	48 39 c7             	cmp    rdi,rax
    b489:	74 05                	je     b490 <_asn1_set_value+0x30>
    b48b:	e8 80 76 ff ff       	call   2b10 <free@plt>
    b490:	48 c7 43 50 00 00 00 	mov    QWORD PTR [rbx+0x50],0x0
    b497:	00 
    b498:	c7 43 58 00 00 00 00 	mov    DWORD PTR [rbx+0x58],0x0
    b49f:	85 ed                	test   ebp,ebp
    b4a1:	48 89 d8             	mov    rax,rbx
    b4a4:	74 1d                	je     b4c3 <_asn1_set_value+0x63>
    b4a6:	83 fd 0f             	cmp    ebp,0xf
    b4a9:	77 25                	ja     b4d0 <_asn1_set_value+0x70>
    b4ab:	48 8d 7b 78          	lea    rdi,[rbx+0x78]
    b4af:	89 ea                	mov    edx,ebp
    b4b1:	48 89 7b 50          	mov    QWORD PTR [rbx+0x50],rdi
    b4b5:	89 6b 58             	mov    DWORD PTR [rbx+0x58],ebp
    b4b8:	4c 89 e6             	mov    rsi,r12
    b4bb:	e8 30 78 ff ff       	call   2cf0 <memcpy@plt>
    b4c0:	48 89 d8             	mov    rax,rbx
    b4c3:	48 83 c4 10          	add    rsp,0x10
    b4c7:	5b                   	pop    rbx
    b4c8:	5d                   	pop    rbp
    b4c9:	41 5c                	pop    r12
    b4cb:	c3                   	ret    
    b4cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    b4d0:	89 ea                	mov    edx,ebp
    b4d2:	48 89 d7             	mov    rdi,rdx
    b4d5:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
    b4da:	e8 31 78 ff ff       	call   2d10 <malloc@plt>
    b4df:	48 85 c0             	test   rax,rax
    b4e2:	48 89 43 50          	mov    QWORD PTR [rbx+0x50],rax
    b4e6:	74 13                	je     b4fb <_asn1_set_value+0x9b>
    b4e8:	48 89 c7             	mov    rdi,rax
    b4eb:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
    b4f0:	eb c3                	jmp    b4b5 <_asn1_set_value+0x55>
    b4f2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    b4f8:	31 c0                	xor    eax,eax
    b4fa:	c3                   	ret    
    b4fb:	31 c0                	xor    eax,eax
    b4fd:	eb c4                	jmp    b4c3 <_asn1_set_value+0x63>
    b4ff:	90                   	nop

000000000000b500 <_asn1_set_value_m>:
    b500:	48 85 ff             	test   rdi,rdi
    b503:	41 54                	push   r12
    b505:	55                   	push   rbp
    b506:	53                   	push   rbx
    b507:	48 89 fb             	mov    rbx,rdi
    b50a:	74 36                	je     b542 <_asn1_set_value_m+0x42>
    b50c:	48 8b 7f 50          	mov    rdi,QWORD PTR [rdi+0x50]
    b510:	49 89 f4             	mov    r12,rsi
    b513:	89 d5                	mov    ebp,edx
    b515:	48 85 ff             	test   rdi,rdi
    b518:	74 1d                	je     b537 <_asn1_set_value_m+0x37>
    b51a:	48 8d 43 78          	lea    rax,[rbx+0x78]
    b51e:	48 39 c7             	cmp    rdi,rax
    b521:	74 05                	je     b528 <_asn1_set_value_m+0x28>
    b523:	e8 e8 75 ff ff       	call   2b10 <free@plt>
    b528:	48 c7 43 50 00 00 00 	mov    QWORD PTR [rbx+0x50],0x0
    b52f:	00 
    b530:	c7 43 58 00 00 00 00 	mov    DWORD PTR [rbx+0x58],0x0
    b537:	85 ed                	test   ebp,ebp
    b539:	74 07                	je     b542 <_asn1_set_value_m+0x42>
    b53b:	4c 89 63 50          	mov    QWORD PTR [rbx+0x50],r12
    b53f:	89 6b 58             	mov    DWORD PTR [rbx+0x58],ebp
    b542:	48 89 d8             	mov    rax,rbx
    b545:	5b                   	pop    rbx
    b546:	5d                   	pop    rbp
    b547:	41 5c                	pop    r12
    b549:	c3                   	ret    
    b54a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

000000000000b550 <_asn1_set_value_lv>:
    b550:	41 56                	push   r14
    b552:	41 55                	push   r13
    b554:	41 54                	push   r12
    b556:	55                   	push   rbp
    b557:	53                   	push   rbx
    b558:	48 83 ec 10          	sub    rsp,0x10
    b55c:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    b563:	00 00 
    b565:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    b56a:	31 c0                	xor    eax,eax
    b56c:	48 85 ff             	test   rdi,rdi
    b56f:	74 6f                	je     b5e0 <_asn1_set_value_lv+0x90>
    b571:	4c 8d 74 24 04       	lea    r14,[rsp+0x4]
    b576:	89 d3                	mov    ebx,edx
    b578:	49 89 fc             	mov    r12,rdi
    b57b:	49 89 f5             	mov    r13,rsi
    b57e:	89 d7                	mov    edi,edx
    b580:	31 f6                	xor    esi,esi
    b582:	4c 89 f2             	mov    rdx,r14
    b585:	e8 a6 78 ff ff       	call   2e30 <asn1_length_der@plt>
    b58a:	89 df                	mov    edi,ebx
    b58c:	03 7c 24 04          	add    edi,DWORD PTR [rsp+0x4]
    b590:	e8 7b 77 ff ff       	call   2d10 <malloc@plt>
    b595:	48 85 c0             	test   rax,rax
    b598:	48 89 c5             	mov    rbp,rax
    b59b:	74 43                	je     b5e0 <_asn1_set_value_lv+0x90>
    b59d:	48 89 c2             	mov    rdx,rax
    b5a0:	89 de                	mov    esi,ebx
    b5a2:	4c 89 ef             	mov    rdi,r13
    b5a5:	4c 89 f1             	mov    rcx,r14
    b5a8:	e8 73 75 ff ff       	call   2b20 <asn1_octet_der@plt>
    b5ad:	8b 54 24 04          	mov    edx,DWORD PTR [rsp+0x4]
    b5b1:	48 89 ee             	mov    rsi,rbp
    b5b4:	4c 89 e7             	mov    rdi,r12
    b5b7:	e8 44 ff ff ff       	call   b500 <_asn1_set_value_m>
    b5bc:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    b5c1:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
    b5c8:	00 00 
    b5ca:	75 18                	jne    b5e4 <_asn1_set_value_lv+0x94>
    b5cc:	48 83 c4 10          	add    rsp,0x10
    b5d0:	5b                   	pop    rbx
    b5d1:	5d                   	pop    rbp
    b5d2:	41 5c                	pop    r12
    b5d4:	41 5d                	pop    r13
    b5d6:	41 5e                	pop    r14
    b5d8:	c3                   	ret    
    b5d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    b5e0:	31 c0                	xor    eax,eax
    b5e2:	eb d8                	jmp    b5bc <_asn1_set_value_lv+0x6c>
    b5e4:	e8 e7 75 ff ff       	call   2bd0 <__stack_chk_fail@plt>
    b5e9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

000000000000b5f0 <_asn1_append_value>:
    b5f0:	41 57                	push   r15
    b5f2:	41 56                	push   r14
    b5f4:	41 55                	push   r13
    b5f6:	41 54                	push   r12
    b5f8:	55                   	push   rbp
    b5f9:	53                   	push   rbx
    b5fa:	48 83 ec 08          	sub    rsp,0x8
    b5fe:	48 85 ff             	test   rdi,rdi
    b601:	0f 84 d9 00 00 00    	je     b6e0 <_asn1_append_value+0xf0>
    b607:	4c 8b 6f 50          	mov    r13,QWORD PTR [rdi+0x50]
    b60b:	4d 85 ed             	test   r13,r13
    b60e:	0f 84 dc 00 00 00    	je     b6f0 <_asn1_append_value+0x100>
    b614:	85 d2                	test   edx,edx
    b616:	48 89 fd             	mov    rbp,rdi
    b619:	74 3e                	je     b659 <_asn1_append_value+0x69>
    b61b:	48 8d 47 78          	lea    rax,[rdi+0x78]
    b61f:	41 89 d6             	mov    r14d,edx
    b622:	49 89 f7             	mov    r15,rsi
    b625:	48 89 fb             	mov    rbx,rdi
    b628:	4c 63 67 58          	movsxd r12,DWORD PTR [rdi+0x58]
    b62c:	49 39 c5             	cmp    r13,rax
    b62f:	74 3f                	je     b670 <_asn1_append_value+0x80>
    b631:	41 8d 34 14          	lea    esi,[r12+rdx*1]
    b635:	4c 89 e8             	mov    rax,r13
    b638:	89 77 58             	mov    DWORD PTR [rdi+0x58],esi
    b63b:	48 63 f6             	movsxd rsi,esi
    b63e:	48 85 f6             	test   rsi,rsi
    b641:	75 75                	jne    b6b8 <_asn1_append_value+0xc8>
    b643:	4a 8d 3c 20          	lea    rdi,[rax+r12*1]
    b647:	48 89 43 50          	mov    QWORD PTR [rbx+0x50],rax
    b64b:	44 89 f2             	mov    edx,r14d
    b64e:	4c 89 fe             	mov    rsi,r15
    b651:	48 89 dd             	mov    rbp,rbx
    b654:	e8 97 76 ff ff       	call   2cf0 <memcpy@plt>
    b659:	48 83 c4 08          	add    rsp,0x8
    b65d:	48 89 e8             	mov    rax,rbp
    b660:	5b                   	pop    rbx
    b661:	5d                   	pop    rbp
    b662:	41 5c                	pop    r12
    b664:	41 5d                	pop    r13
    b666:	41 5e                	pop    r14
    b668:	41 5f                	pop    r15
    b66a:	c3                   	ret    
    b66b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    b670:	41 8d 3c 14          	lea    edi,[r12+rdx*1]
    b674:	89 7d 58             	mov    DWORD PTR [rbp+0x58],edi
    b677:	48 63 ff             	movsxd rdi,edi
    b67a:	e8 91 76 ff ff       	call   2d10 <malloc@plt>
    b67f:	48 85 c0             	test   rax,rax
    b682:	48 89 c1             	mov    rcx,rax
    b685:	48 89 45 50          	mov    QWORD PTR [rbp+0x50],rax
    b689:	74 4e                	je     b6d9 <_asn1_append_value+0xe9>
    b68b:	45 85 e4             	test   r12d,r12d
    b68e:	7e 11                	jle    b6a1 <_asn1_append_value+0xb1>
    b690:	4c 89 e2             	mov    rdx,r12
    b693:	4c 89 ee             	mov    rsi,r13
    b696:	48 89 c7             	mov    rdi,rax
    b699:	e8 52 76 ff ff       	call   2cf0 <memcpy@plt>
    b69e:	48 89 c1             	mov    rcx,rax
    b6a1:	4a 8d 3c 21          	lea    rdi,[rcx+r12*1]
    b6a5:	44 89 f2             	mov    edx,r14d
    b6a8:	4c 89 fe             	mov    rsi,r15
    b6ab:	48 89 dd             	mov    rbp,rbx
    b6ae:	e8 3d 76 ff ff       	call   2cf0 <memcpy@plt>
    b6b3:	eb a4                	jmp    b659 <_asn1_append_value+0x69>
    b6b5:	0f 1f 00             	nop    DWORD PTR [rax]
    b6b8:	4c 89 ef             	mov    rdi,r13
    b6bb:	e8 80 76 ff ff       	call   2d40 <realloc@plt>
    b6c0:	48 85 c0             	test   rax,rax
    b6c3:	0f 85 7a ff ff ff    	jne    b643 <_asn1_append_value+0x53>
    b6c9:	4c 89 ef             	mov    rdi,r13
    b6cc:	e8 3f 74 ff ff       	call   2b10 <free@plt>
    b6d1:	48 c7 45 50 00 00 00 	mov    QWORD PTR [rbp+0x50],0x0
    b6d8:	00 
    b6d9:	c7 45 58 00 00 00 00 	mov    DWORD PTR [rbp+0x58],0x0
    b6e0:	31 ed                	xor    ebp,ebp
    b6e2:	e9 72 ff ff ff       	jmp    b659 <_asn1_append_value+0x69>
    b6e7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    b6ee:	00 00 
    b6f0:	48 83 c4 08          	add    rsp,0x8
    b6f4:	5b                   	pop    rbx
    b6f5:	5d                   	pop    rbp
    b6f6:	41 5c                	pop    r12
    b6f8:	41 5d                	pop    r13
    b6fa:	41 5e                	pop    r14
    b6fc:	41 5f                	pop    r15
    b6fe:	e9 5d fd ff ff       	jmp    b460 <_asn1_set_value>
    b703:	0f 1f 00             	nop    DWORD PTR [rax]
    b706:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    b70d:	00 00 00 

000000000000b710 <_asn1_set_name>:
    b710:	55                   	push   rbp
    b711:	53                   	push   rbx
    b712:	48 89 fd             	mov    rbp,rdi
    b715:	48 83 ec 08          	sub    rsp,0x8
    b719:	48 85 ff             	test   rdi,rdi
    b71c:	74 3d                	je     b75b <_asn1_set_name+0x4b>
    b71e:	48 8d 15 9f 48 00 00 	lea    rdx,[rip+0x489f]        # ffc4 <bit_mask+0x4d4>
    b725:	48 85 f6             	test   rsi,rsi
    b728:	48 89 fb             	mov    rbx,rdi
    b72b:	48 0f 45 d6          	cmovne rdx,rsi
    b72f:	be 41 00 00 00       	mov    esi,0x41
    b734:	e8 97 f9 ff ff       	call   b0d0 <_asn1_str_cpy>
    b739:	0f b6 45 00          	movzx  eax,BYTE PTR [rbp+0x0]
    b73d:	31 d2                	xor    edx,edx
    b73f:	84 c0                	test   al,al
    b741:	74 15                	je     b758 <_asn1_set_name+0x48>
    b743:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    b748:	48 83 c3 01          	add    rbx,0x1
    b74c:	c1 c2 09             	rol    edx,0x9
    b74f:	01 c2                	add    edx,eax
    b751:	0f b6 03             	movzx  eax,BYTE PTR [rbx]
    b754:	84 c0                	test   al,al
    b756:	75 f0                	jne    b748 <_asn1_set_name+0x38>
    b758:	89 55 44             	mov    DWORD PTR [rbp+0x44],edx
    b75b:	48 83 c4 08          	add    rsp,0x8
    b75f:	48 89 e8             	mov    rax,rbp
    b762:	5b                   	pop    rbx
    b763:	5d                   	pop    rbp
    b764:	c3                   	ret    
    b765:	90                   	nop
    b766:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    b76d:	00 00 00 

000000000000b770 <_asn1_cpy_name>:
    b770:	55                   	push   rbp
    b771:	53                   	push   rbx
    b772:	48 89 fb             	mov    rbx,rdi
    b775:	48 83 ec 08          	sub    rsp,0x8
    b779:	48 85 ff             	test   rdi,rdi
    b77c:	74 1b                	je     b799 <_asn1_cpy_name+0x29>
    b77e:	48 85 f6             	test   rsi,rsi
    b781:	48 89 f5             	mov    rbp,rsi
    b784:	74 22                	je     b7a8 <_asn1_cpy_name+0x38>
    b786:	48 89 f2             	mov    rdx,rsi
    b789:	be 41 00 00 00       	mov    esi,0x41
    b78e:	e8 3d f9 ff ff       	call   b0d0 <_asn1_str_cpy>
    b793:	8b 45 44             	mov    eax,DWORD PTR [rbp+0x44]
    b796:	89 43 44             	mov    DWORD PTR [rbx+0x44],eax
    b799:	48 83 c4 08          	add    rsp,0x8
    b79d:	48 89 d8             	mov    rax,rbx
    b7a0:	5b                   	pop    rbx
    b7a1:	5d                   	pop    rbp
    b7a2:	c3                   	ret    
    b7a3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    b7a8:	c6 07 00             	mov    BYTE PTR [rdi],0x0
    b7ab:	c7 47 44 00 00 00 00 	mov    DWORD PTR [rdi+0x44],0x0
    b7b2:	48 83 c4 08          	add    rsp,0x8
    b7b6:	48 89 d8             	mov    rax,rbx
    b7b9:	5b                   	pop    rbx
    b7ba:	5d                   	pop    rbp
    b7bb:	c3                   	ret    
    b7bc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

000000000000b7c0 <_asn1_set_right>:
    b7c0:	48 85 ff             	test   rdi,rdi
    b7c3:	48 89 f8             	mov    rax,rdi
    b7c6:	74 0d                	je     b7d5 <_asn1_set_right+0x15>
    b7c8:	48 85 f6             	test   rsi,rsi
    b7cb:	48 89 77 68          	mov    QWORD PTR [rdi+0x68],rsi
    b7cf:	74 04                	je     b7d5 <_asn1_set_right+0x15>
    b7d1:	48 89 7e 70          	mov    QWORD PTR [rsi+0x70],rdi
    b7d5:	f3 c3                	repz ret 
    b7d7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    b7de:	00 00 

000000000000b7e0 <_asn1_get_last_right>:
    b7e0:	48 85 ff             	test   rdi,rdi
    b7e3:	75 0e                	jne    b7f3 <_asn1_get_last_right+0x13>
    b7e5:	eb 19                	jmp    b800 <_asn1_get_last_right+0x20>
    b7e7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    b7ee:	00 00 
    b7f0:	48 89 d7             	mov    rdi,rdx
    b7f3:	48 8b 57 68          	mov    rdx,QWORD PTR [rdi+0x68]
    b7f7:	48 85 d2             	test   rdx,rdx
    b7fa:	75 f4                	jne    b7f0 <_asn1_get_last_right+0x10>
    b7fc:	48 89 f8             	mov    rax,rdi
    b7ff:	c3                   	ret    
    b800:	31 c0                	xor    eax,eax
    b802:	c3                   	ret    
    b803:	0f 1f 00             	nop    DWORD PTR [rax]
    b806:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    b80d:	00 00 00 

000000000000b810 <_asn1_remove_node>:
    b810:	48 85 ff             	test   rdi,rdi
    b813:	74 3a                	je     b84f <_asn1_remove_node+0x3f>
    b815:	41 54                	push   r12
    b817:	55                   	push   rbp
    b818:	53                   	push   rbx
    b819:	48 89 fb             	mov    rbx,rdi
    b81c:	48 83 ec 10          	sub    rsp,0x10
    b820:	48 8b 6f 50          	mov    rbp,QWORD PTR [rdi+0x50]
    b824:	48 85 ed             	test   rbp,rbp
    b827:	74 16                	je     b83f <_asn1_remove_node+0x2f>
    b829:	83 e6 01             	and    esi,0x1
    b82c:	75 2a                	jne    b858 <_asn1_remove_node+0x48>
    b82e:	48 8d 43 78          	lea    rax,[rbx+0x78]
    b832:	48 39 c5             	cmp    rbp,rax
    b835:	74 08                	je     b83f <_asn1_remove_node+0x2f>
    b837:	48 89 ef             	mov    rdi,rbp
    b83a:	e8 d1 72 ff ff       	call   2b10 <free@plt>
    b83f:	48 89 df             	mov    rdi,rbx
    b842:	e8 c9 72 ff ff       	call   2b10 <free@plt>
    b847:	48 83 c4 10          	add    rsp,0x10
    b84b:	5b                   	pop    rbx
    b84c:	5d                   	pop    rbp
    b84d:	41 5c                	pop    r12
    b84f:	f3 c3                	repz ret 
    b851:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    b858:	4c 63 67 58          	movsxd r12,DWORD PTR [rdi+0x58]
    b85c:	c7 44 24 0c 00 00 00 	mov    DWORD PTR [rsp+0xc],0x0
    b863:	00 
    b864:	4d 85 e4             	test   r12,r12
    b867:	74 c5                	je     b82e <_asn1_remove_node+0x1e>
    b869:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    b870:	31 f6                	xor    esi,esi
    b872:	4c 89 e2             	mov    rdx,r12
    b875:	48 89 ef             	mov    rdi,rbp
    b878:	e8 c3 73 ff ff       	call   2c40 <memset@plt>
    b87d:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
    b881:	48 01 e8             	add    rax,rbp
    b884:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    b887:	84 c0                	test   al,al
    b889:	75 e5                	jne    b870 <_asn1_remove_node+0x60>
    b88b:	48 8b 6b 50          	mov    rbp,QWORD PTR [rbx+0x50]
    b88f:	eb 9d                	jmp    b82e <_asn1_remove_node+0x1e>
    b891:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    b896:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    b89d:	00 00 00 

000000000000b8a0 <_asn1_find_up>:
    b8a0:	48 85 ff             	test   rdi,rdi
    b8a3:	75 14                	jne    b8b9 <_asn1_find_up+0x19>
    b8a5:	eb 1b                	jmp    b8c2 <_asn1_find_up+0x22>
    b8a7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    b8ae:	00 00 
    b8b0:	48 3b 78 68          	cmp    rdi,QWORD PTR [rax+0x68]
    b8b4:	75 12                	jne    b8c8 <_asn1_find_up+0x28>
    b8b6:	48 89 c7             	mov    rdi,rax
    b8b9:	48 8b 47 70          	mov    rax,QWORD PTR [rdi+0x70]
    b8bd:	48 85 c0             	test   rax,rax
    b8c0:	75 ee                	jne    b8b0 <_asn1_find_up+0x10>
    b8c2:	31 c0                	xor    eax,eax
    b8c4:	c3                   	ret    
    b8c5:	0f 1f 00             	nop    DWORD PTR [rax]
    b8c8:	f3 c3                	repz ret
    b8ca:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

000000000000b8d0 <_asn1_delete_node_from_list>:
    b8d0:	eb 0a                	jmp    b8dc <_asn1_delete_node_from_list+0xc>
    b8d2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    b8d8:	48 8b 7f 08          	mov    rdi,QWORD PTR [rdi+0x8]
    b8dc:	48 85 ff             	test   rdi,rdi
    b8df:	74 0f                	je     b8f0 <_asn1_delete_node_from_list+0x20>
    b8e1:	48 39 37             	cmp    QWORD PTR [rdi],rsi
    b8e4:	75 f2                	jne    b8d8 <_asn1_delete_node_from_list+0x8>
    b8e6:	48 c7 07 00 00 00 00 	mov    QWORD PTR [rdi],0x0
    b8ed:	eb e9                	jmp    b8d8 <_asn1_delete_node_from_list+0x8>
    b8ef:	90                   	nop
    b8f0:	f3 c3                	repz ret 
    b8f2:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    b8f6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    b8fd:	00 00 00 

000000000000b900 <_asn1_delete_list>:
    b900:	48 85 ff             	test   rdi,rdi
    b903:	74 1d                	je     b922 <_asn1_delete_list+0x22>
    b905:	53                   	push   rbx
    b906:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    b90d:	00 00 00 
    b910:	48 8b 5f 08          	mov    rbx,QWORD PTR [rdi+0x8]
    b914:	e8 f7 71 ff ff       	call   2b10 <free@plt>
    b919:	48 85 db             	test   rbx,rbx
    b91c:	48 89 df             	mov    rdi,rbx
    b91f:	75 ef                	jne    b910 <_asn1_delete_list+0x10>
    b921:	5b                   	pop    rbx
    b922:	f3 c3                	repz ret 
    b924:	66 90                	xchg   ax,ax
    b926:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    b92d:	00 00 00 

000000000000b930 <_asn1_delete_list_and_nodes>:
    b930:	48 85 ff             	test   rdi,rdi
    b933:	74 2f                	je     b964 <_asn1_delete_list_and_nodes+0x34>
    b935:	55                   	push   rbp
    b936:	53                   	push   rbx
    b937:	48 89 fb             	mov    rbx,rdi
    b93a:	48 83 ec 08          	sub    rsp,0x8
    b93e:	66 90                	xchg   ax,ax
    b940:	48 8b 3b             	mov    rdi,QWORD PTR [rbx]
    b943:	48 8b 6b 08          	mov    rbp,QWORD PTR [rbx+0x8]
    b947:	31 f6                	xor    esi,esi
    b949:	e8 c2 fe ff ff       	call   b810 <_asn1_remove_node>
    b94e:	48 89 df             	mov    rdi,rbx
    b951:	48 89 eb             	mov    rbx,rbp
    b954:	e8 b7 71 ff ff       	call   2b10 <free@plt>
    b959:	48 85 ed             	test   rbp,rbp
    b95c:	75 e2                	jne    b940 <_asn1_delete_list_and_nodes+0x10>
    b95e:	48 83 c4 08          	add    rsp,0x8
    b962:	5b                   	pop    rbx
    b963:	5d                   	pop    rbp
    b964:	f3 c3                	repz ret 
    b966:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    b96d:	00 00 00 

000000000000b970 <_asn1_ltostr>:
    b970:	48 83 ec 28          	sub    rsp,0x28
    b974:	31 c9                	xor    ecx,ecx
    b976:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    b97d:	00 00 
    b97f:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
    b984:	31 c0                	xor    eax,eax
    b986:	48 85 ff             	test   rdi,rdi
    b989:	0f 88 99 00 00 00    	js     ba28 <_asn1_ltostr+0xb8>
    b98f:	44 8d 41 01          	lea    r8d,[rcx+0x1]
    b993:	49 ba cd cc cc cc cc 	movabs r10,0xcccccccccccccccd
    b99a:	cc cc cc 
    b99d:	eb 11                	jmp    b9b0 <_asn1_ltostr+0x40>
    b99f:	90                   	nop
    b9a0:	45 89 c1             	mov    r9d,r8d
    b9a3:	41 83 c0 01          	add    r8d,0x1
    b9a7:	48 89 d7             	mov    rdi,rdx
    b9aa:	41 83 f8 16          	cmp    r8d,0x16
    b9ae:	74 30                	je     b9e0 <_asn1_ltostr+0x70>
    b9b0:	48 89 f8             	mov    rax,rdi
    b9b3:	45 89 c3             	mov    r11d,r8d
    b9b6:	49 f7 e2             	mul    r10
    b9b9:	41 8d 40 ff          	lea    eax,[r8-0x1]
    b9bd:	41 29 cb             	sub    r11d,ecx
    b9c0:	48 98                	cdqe   
    b9c2:	48 c1 ea 03          	shr    rdx,0x3
    b9c6:	4c 8d 0c 92          	lea    r9,[rdx+rdx*4]
    b9ca:	4d 01 c9             	add    r9,r9
    b9cd:	4c 29 cf             	sub    rdi,r9
    b9d0:	83 c7 30             	add    edi,0x30
    b9d3:	48 85 d2             	test   rdx,rdx
    b9d6:	40 88 3c 04          	mov    BYTE PTR [rsp+rax*1],dil
    b9da:	75 c4                	jne    b9a0 <_asn1_ltostr+0x30>
    b9dc:	46 8d 0c 19          	lea    r9d,[rcx+r11*1]
    b9e0:	41 8d 41 ff          	lea    eax,[r9-0x1]
    b9e4:	48 63 d1             	movsxd rdx,ecx
    b9e7:	48 01 f2             	add    rdx,rsi
    b9ea:	89 c7                	mov    edi,eax
    b9ec:	44 29 df             	sub    edi,r11d
    b9ef:	90                   	nop
    b9f0:	48 63 c8             	movsxd rcx,eax
    b9f3:	83 e8 01             	sub    eax,0x1
    b9f6:	48 83 c2 01          	add    rdx,0x1
    b9fa:	0f b6 0c 0c          	movzx  ecx,BYTE PTR [rsp+rcx*1]
    b9fe:	88 4a ff             	mov    BYTE PTR [rdx-0x1],cl
    ba01:	39 c7                	cmp    edi,eax
    ba03:	75 eb                	jne    b9f0 <_asn1_ltostr+0x80>
    ba05:	4d 63 c9             	movsxd r9,r9d
    ba08:	48 89 f0             	mov    rax,rsi
    ba0b:	42 c6 04 0e 00       	mov    BYTE PTR [rsi+r9*1],0x0
    ba10:	48 8b 74 24 18       	mov    rsi,QWORD PTR [rsp+0x18]
    ba15:	64 48 33 34 25 28 00 	xor    rsi,QWORD PTR fs:0x28
    ba1c:	00 00 
    ba1e:	75 18                	jne    ba38 <_asn1_ltostr+0xc8>
    ba20:	48 83 c4 28          	add    rsp,0x28
    ba24:	c3                   	ret    
    ba25:	0f 1f 00             	nop    DWORD PTR [rax]
    ba28:	c6 06 2d             	mov    BYTE PTR [rsi],0x2d
    ba2b:	48 f7 df             	neg    rdi
    ba2e:	b9 01 00 00 00       	mov    ecx,0x1
    ba33:	e9 57 ff ff ff       	jmp    b98f <_asn1_ltostr+0x1f>
    ba38:	e8 93 71 ff ff       	call   2bd0 <__stack_chk_fail@plt>
    ba3d:	0f 1f 00             	nop    DWORD PTR [rax]

000000000000ba40 <_asn1_change_integer_value>:
    ba40:	41 56                	push   r14
    ba42:	41 55                	push   r13
    ba44:	41 54                	push   r12
    ba46:	55                   	push   rbp
    ba47:	53                   	push   rbx
    ba48:	48 83 ec 40          	sub    rsp,0x40
    ba4c:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    ba53:	00 00 
    ba55:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
    ba5a:	31 c0                	xor    eax,eax
    ba5c:	48 85 ff             	test   rdi,rdi
    ba5f:	b8 02 00 00 00       	mov    eax,0x2
    ba64:	0f 84 c8 00 00 00    	je     bb32 <_asn1_change_integer_value+0xf2>
    ba6a:	49 89 fe             	mov    r14,rdi
    ba6d:	48 89 fb             	mov    rbx,rdi
    ba70:	4c 8d 6c 24 0c       	lea    r13,[rsp+0xc]
    ba75:	4c 8d 64 24 10       	lea    r12,[rsp+0x10]
    ba7a:	48 8d 6c 24 20       	lea    rbp,[rsp+0x20]
    ba7f:	eb 13                	jmp    ba94 <_asn1_change_integer_value+0x54>
    ba81:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    ba88:	48 8b 43 60          	mov    rax,QWORD PTR [rbx+0x60]
    ba8c:	48 85 c0             	test   rax,rax
    ba8f:	74 57                	je     bae8 <_asn1_change_integer_value+0xa8>
    ba91:	48 89 c3             	mov    rbx,rax
    ba94:	8b 43 48             	mov    eax,DWORD PTR [rbx+0x48]
    ba97:	3c 03                	cmp    al,0x3
    ba99:	75 ed                	jne    ba88 <_asn1_change_integer_value+0x48>
    ba9b:	a9 00 00 00 10       	test   eax,0x10000000
    baa0:	74 e6                	je     ba88 <_asn1_change_integer_value+0x48>
    baa2:	48 8b 7b 50          	mov    rdi,QWORD PTR [rbx+0x50]
    baa6:	48 85 ff             	test   rdi,rdi
    baa9:	74 dd                	je     ba88 <_asn1_change_integer_value+0x48>
    baab:	4c 89 e9             	mov    rcx,r13
    baae:	ba 08 00 00 00       	mov    edx,0x8
    bab3:	4c 89 e6             	mov    rsi,r12
    bab6:	e8 d5 e2 ff ff       	call   9d90 <_asn1_convert_integer>
    babb:	8b 74 24 0c          	mov    esi,DWORD PTR [rsp+0xc]
    babf:	4c 89 e9             	mov    rcx,r13
    bac2:	48 89 ea             	mov    rdx,rbp
    bac5:	4c 89 e7             	mov    rdi,r12
    bac8:	e8 53 70 ff ff       	call   2b20 <asn1_octet_der@plt>
    bacd:	8b 54 24 0c          	mov    edx,DWORD PTR [rsp+0xc]
    bad1:	48 89 ee             	mov    rsi,rbp
    bad4:	48 89 df             	mov    rdi,rbx
    bad7:	e8 84 f9 ff ff       	call   b460 <_asn1_set_value>
    badc:	48 8b 43 60          	mov    rax,QWORD PTR [rbx+0x60]
    bae0:	48 85 c0             	test   rax,rax
    bae3:	75 ac                	jne    ba91 <_asn1_change_integer_value+0x51>
    bae5:	0f 1f 00             	nop    DWORD PTR [rax]
    bae8:	49 39 de             	cmp    r14,rbx
    baeb:	74 43                	je     bb30 <_asn1_change_integer_value+0xf0>
    baed:	48 8b 43 68          	mov    rax,QWORD PTR [rbx+0x68]
    baf1:	48 85 c0             	test   rax,rax
    baf4:	75 9b                	jne    ba91 <_asn1_change_integer_value+0x51>
    baf6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    bafd:	00 00 00 
    bb00:	48 85 db             	test   rbx,rbx
    bb03:	75 14                	jne    bb19 <_asn1_change_integer_value+0xd9>
    bb05:	eb 1e                	jmp    bb25 <_asn1_change_integer_value+0xe5>
    bb07:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    bb0e:	00 00 
    bb10:	48 8b 43 68          	mov    rax,QWORD PTR [rbx+0x68]
    bb14:	48 39 c2             	cmp    rdx,rax
    bb17:	75 37                	jne    bb50 <_asn1_change_integer_value+0x110>
    bb19:	48 89 da             	mov    rdx,rbx
    bb1c:	48 8b 5b 70          	mov    rbx,QWORD PTR [rbx+0x70]
    bb20:	48 85 db             	test   rbx,rbx
    bb23:	75 eb                	jne    bb10 <_asn1_change_integer_value+0xd0>
    bb25:	eb fe                	jmp    bb25 <_asn1_change_integer_value+0xe5>
    bb27:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    bb2e:	00 00 
    bb30:	31 c0                	xor    eax,eax
    bb32:	48 8b 4c 24 38       	mov    rcx,QWORD PTR [rsp+0x38]
    bb37:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
    bb3e:	00 00 
    bb40:	75 1d                	jne    bb5f <_asn1_change_integer_value+0x11f>
    bb42:	48 83 c4 40          	add    rsp,0x40
    bb46:	5b                   	pop    rbx
    bb47:	5d                   	pop    rbp
    bb48:	41 5c                	pop    r12
    bb4a:	41 5d                	pop    r13
    bb4c:	41 5e                	pop    r14
    bb4e:	c3                   	ret    
    bb4f:	90                   	nop
    bb50:	49 39 de             	cmp    r14,rbx
    bb53:	74 db                	je     bb30 <_asn1_change_integer_value+0xf0>
    bb55:	48 85 c0             	test   rax,rax
    bb58:	74 a6                	je     bb00 <_asn1_change_integer_value+0xc0>
    bb5a:	e9 32 ff ff ff       	jmp    ba91 <_asn1_change_integer_value+0x51>
    bb5f:	e8 6c 70 ff ff       	call   2bd0 <__stack_chk_fail@plt>
    bb64:	66 90                	xchg   ax,ax
    bb66:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    bb6d:	00 00 00 

000000000000bb70 <_asn1_expand_object_id>:
    bb70:	41 57                	push   r15
    bb72:	41 56                	push   r14
    bb74:	41 55                	push   r13
    bb76:	41 54                	push   r12
    bb78:	55                   	push   rbp
    bb79:	53                   	push   rbx
    bb7a:	48 81 ec 08 01 00 00 	sub    rsp,0x108
    bb81:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    bb88:	00 00 
    bb8a:	48 89 84 24 f8 00 00 	mov    QWORD PTR [rsp+0xf8],rax
    bb91:	00 
    bb92:	31 c0                	xor    eax,eax
    bb94:	48 85 f6             	test   rsi,rsi
    bb97:	0f 84 ab 02 00 00    	je     be48 <_asn1_expand_object_id+0x2d8>
    bb9d:	49 89 fc             	mov    r12,rdi
    bba0:	48 8d 7c 24 30       	lea    rdi,[rsp+0x30]
    bba5:	48 89 f5             	mov    rbp,rsi
    bba8:	48 89 f2             	mov    rdx,rsi
    bbab:	be 40 00 00 00       	mov    esi,0x40
    bbb0:	48 89 eb             	mov    rbx,rbp
    bbb3:	48 89 7c 24 18       	mov    QWORD PTR [rsp+0x18],rdi
    bbb8:	45 31 ed             	xor    r13d,r13d
    bbbb:	e8 10 f5 ff ff       	call   b0d0 <_asn1_str_cpy>
    bbc0:	48 8d 44 24 70       	lea    rax,[rsp+0x70]
    bbc5:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
    bbca:	eb 18                	jmp    bbe4 <_asn1_expand_object_id+0x74>
    bbcc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    bbd0:	48 8b 43 60          	mov    rax,QWORD PTR [rbx+0x60]
    bbd4:	48 85 c0             	test   rax,rax
    bbd7:	74 37                	je     bc10 <_asn1_expand_object_id+0xa0>
    bbd9:	48 89 c3             	mov    rbx,rax
    bbdc:	48 39 dd             	cmp    rbp,rbx
    bbdf:	74 40                	je     bc21 <_asn1_expand_object_id+0xb1>
    bbe1:	45 31 ed             	xor    r13d,r13d
    bbe4:	8b 43 48             	mov    eax,DWORD PTR [rbx+0x48]
    bbe7:	3c 0c                	cmp    al,0xc
    bbe9:	75 e5                	jne    bbd0 <_asn1_expand_object_id+0x60>
    bbeb:	a9 00 00 00 10       	test   eax,0x10000000
    bbf0:	74 de                	je     bbd0 <_asn1_expand_object_id+0x60>
    bbf2:	4c 8b 73 60          	mov    r14,QWORD PTR [rbx+0x60]
    bbf6:	4d 85 f6             	test   r14,r14
    bbf9:	74 15                	je     bc10 <_asn1_expand_object_id+0xa0>
    bbfb:	41 80 7e 48 01       	cmp    BYTE PTR [r14+0x48],0x1
    bc00:	0f 84 52 02 00 00    	je     be58 <_asn1_expand_object_id+0x2e8>
    bc06:	4c 89 f3             	mov    rbx,r14
    bc09:	eb d1                	jmp    bbdc <_asn1_expand_object_id+0x6c>
    bc0b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    bc10:	48 89 d8             	mov    rax,rbx
    bc13:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    bc18:	48 39 c5             	cmp    rbp,rax
    bc1b:	0f 85 9f 01 00 00    	jne    bdc0 <_asn1_expand_object_id+0x250>
    bc21:	4c 8d 64 24 70       	lea    r12,[rsp+0x70]
    bc26:	48 89 eb             	mov    rbx,rbp
    bc29:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    bc30:	8b 43 48             	mov    eax,DWORD PTR [rbx+0x48]
    bc33:	3c 0c                	cmp    al,0xc
    bc35:	74 20                	je     bc57 <_asn1_expand_object_id+0xe7>
    bc37:	4c 8b 6b 60          	mov    r13,QWORD PTR [rbx+0x60]
    bc3b:	4d 85 ed             	test   r13,r13
    bc3e:	0f 84 44 01 00 00    	je     bd88 <_asn1_expand_object_id+0x218>
    bc44:	4c 39 ed             	cmp    rbp,r13
    bc47:	0f 84 43 01 00 00    	je     bd90 <_asn1_expand_object_id+0x220>
    bc4d:	4c 89 eb             	mov    rbx,r13
    bc50:	8b 43 48             	mov    eax,DWORD PTR [rbx+0x48]
    bc53:	3c 0c                	cmp    al,0xc
    bc55:	75 e0                	jne    bc37 <_asn1_expand_object_id+0xc7>
    bc57:	f6 c4 80             	test   ah,0x80
    bc5a:	74 db                	je     bc37 <_asn1_expand_object_id+0xc7>
    bc5c:	4c 8b 6b 60          	mov    r13,QWORD PTR [rbx+0x60]
    bc60:	4d 85 ed             	test   r13,r13
    bc63:	0f 84 1f 01 00 00    	je     bd88 <_asn1_expand_object_id+0x218>
    bc69:	41 80 7d 48 09       	cmp    BYTE PTR [r13+0x48],0x9
    bc6e:	75 d4                	jne    bc44 <_asn1_expand_object_id+0xd4>
    bc70:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
    bc75:	be 81 00 00 00       	mov    esi,0x81
    bc7a:	4c 89 e7             	mov    rdi,r12
    bc7d:	e8 4e f4 ff ff       	call   b0d0 <_asn1_str_cpy>
    bc82:	48 8d 15 13 40 00 00 	lea    rdx,[rip+0x4013]        # fc9c <bit_mask+0x1ac>
    bc89:	be 81 00 00 00       	mov    esi,0x81
    bc8e:	4c 89 e7             	mov    rdi,r12
    bc91:	e8 ba f3 ff ff       	call   b050 <_asn1_str_cat>
    bc96:	49 8b 55 50          	mov    rdx,QWORD PTR [r13+0x50]
    bc9a:	48 85 d2             	test   rdx,rdx
    bc9d:	74 0d                	je     bcac <_asn1_expand_object_id+0x13c>
    bc9f:	be 81 00 00 00       	mov    esi,0x81
    bca4:	4c 89 e7             	mov    rdi,r12
    bca7:	e8 a4 f3 ff ff       	call   b050 <_asn1_str_cat>
    bcac:	4c 89 e6             	mov    rsi,r12
    bcaf:	48 89 ef             	mov    rdi,rbp
    bcb2:	e8 79 6e ff ff       	call   2b30 <asn1_find_node@plt>
    bcb7:	48 85 c0             	test   rax,rax
    bcba:	0f 84 88 01 00 00    	je     be48 <_asn1_expand_object_id+0x2d8>
    bcc0:	8b 50 48             	mov    edx,DWORD PTR [rax+0x48]
    bcc3:	80 fa 0c             	cmp    dl,0xc
    bcc6:	0f 85 7c 01 00 00    	jne    be48 <_asn1_expand_object_id+0x2d8>
    bccc:	81 e2 00 00 00 10    	and    edx,0x10000000
    bcd2:	0f 84 70 01 00 00    	je     be48 <_asn1_expand_object_id+0x2d8>
    bcd8:	4c 8b 70 60          	mov    r14,QWORD PTR [rax+0x60]
    bcdc:	c6 44 24 70 00       	mov    BYTE PTR [rsp+0x70],0x0
    bce1:	4d 85 f6             	test   r14,r14
    bce4:	75 13                	jne    bcf9 <_asn1_expand_object_id+0x189>
    bce6:	eb 46                	jmp    bd2e <_asn1_expand_object_id+0x1be>
    bce8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    bcef:	00 
    bcf0:	4d 8b 76 68          	mov    r14,QWORD PTR [r14+0x68]
    bcf4:	4d 85 f6             	test   r14,r14
    bcf7:	74 35                	je     bd2e <_asn1_expand_object_id+0x1be>
    bcf9:	41 80 7e 48 01       	cmp    BYTE PTR [r14+0x48],0x1
    bcfe:	75 f0                	jne    bcf0 <_asn1_expand_object_id+0x180>
    bd00:	49 8b 56 50          	mov    rdx,QWORD PTR [r14+0x50]
    bd04:	48 85 d2             	test   rdx,rdx
    bd07:	0f 84 c6 03 00 00    	je     c0d3 <_asn1_expand_object_id+0x563>
    bd0d:	80 7c 24 70 00       	cmp    BYTE PTR [rsp+0x70],0x0
    bd12:	0f 85 43 03 00 00    	jne    c05b <_asn1_expand_object_id+0x4eb>
    bd18:	be 81 00 00 00       	mov    esi,0x81
    bd1d:	4c 89 e7             	mov    rdi,r12
    bd20:	e8 2b f3 ff ff       	call   b050 <_asn1_str_cat>
    bd25:	4d 8b 76 68          	mov    r14,QWORD PTR [r14+0x68]
    bd29:	4d 85 f6             	test   r14,r14
    bd2c:	75 cb                	jne    bcf9 <_asn1_expand_object_id+0x189>
    bd2e:	4c 89 e2             	mov    rdx,r12
    bd31:	8b 32                	mov    esi,DWORD PTR [rdx]
    bd33:	48 83 c2 04          	add    rdx,0x4
    bd37:	8d 86 ff fe fe fe    	lea    eax,[rsi-0x1010101]
    bd3d:	f7 d6                	not    esi
    bd3f:	21 f0                	and    eax,esi
    bd41:	25 80 80 80 80       	and    eax,0x80808080
    bd46:	74 e9                	je     bd31 <_asn1_expand_object_id+0x1c1>
    bd48:	89 c6                	mov    esi,eax
    bd4a:	c1 ee 10             	shr    esi,0x10
    bd4d:	a9 80 80 00 00       	test   eax,0x8080
    bd52:	0f 44 c6             	cmove  eax,esi
    bd55:	48 8d 72 02          	lea    rsi,[rdx+0x2]
    bd59:	89 c1                	mov    ecx,eax
    bd5b:	48 0f 44 d6          	cmove  rdx,rsi
    bd5f:	00 c1                	add    cl,al
    bd61:	48 83 da 03          	sbb    rdx,0x3
    bd65:	4c 29 e2             	sub    rdx,r12
    bd68:	85 d2                	test   edx,edx
    bd6a:	0f 8e c7 fe ff ff    	jle    bc37 <_asn1_expand_object_id+0xc7>
    bd70:	83 c2 01             	add    edx,0x1
    bd73:	4c 89 e6             	mov    rsi,r12
    bd76:	4c 89 ef             	mov    rdi,r13
    bd79:	e8 e2 f6 ff ff       	call   b460 <_asn1_set_value>
    bd7e:	e9 b4 fe ff ff       	jmp    bc37 <_asn1_expand_object_id+0xc7>
    bd83:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    bd88:	48 89 d8             	mov    rax,rbx
    bd8b:	48 39 c5             	cmp    rbp,rax
    bd8e:	75 78                	jne    be08 <_asn1_expand_object_id+0x298>
    bd90:	31 c0                	xor    eax,eax
    bd92:	48 8b 8c 24 f8 00 00 	mov    rcx,QWORD PTR [rsp+0xf8]
    bd99:	00 
    bd9a:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
    bda1:	00 00 
    bda3:	0f 85 4a 03 00 00    	jne    c0f3 <_asn1_expand_object_id+0x583>
    bda9:	48 81 c4 08 01 00 00 	add    rsp,0x108
    bdb0:	5b                   	pop    rbx
    bdb1:	5d                   	pop    rbp
    bdb2:	41 5c                	pop    r12
    bdb4:	41 5d                	pop    r13
    bdb6:	41 5e                	pop    r14
    bdb8:	41 5f                	pop    r15
    bdba:	c3                   	ret    
    bdbb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    bdc0:	48 85 c0             	test   rax,rax
    bdc3:	0f 84 4f fe ff ff    	je     bc18 <_asn1_expand_object_id+0xa8>
    bdc9:	48 8b 58 68          	mov    rbx,QWORD PTR [rax+0x68]
    bdcd:	48 85 db             	test   rbx,rbx
    bdd0:	0f 85 0b fe ff ff    	jne    bbe1 <_asn1_expand_object_id+0x71>
    bdd6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    bddd:	00 00 00 
    bde0:	48 89 c2             	mov    rdx,rax
    bde3:	48 8b 40 70          	mov    rax,QWORD PTR [rax+0x70]
    bde7:	48 85 c0             	test   rax,rax
    bdea:	0f 84 28 fe ff ff    	je     bc18 <_asn1_expand_object_id+0xa8>
    bdf0:	48 39 50 68          	cmp    QWORD PTR [rax+0x68],rdx
    bdf4:	74 ea                	je     bde0 <_asn1_expand_object_id+0x270>
    bdf6:	48 39 c5             	cmp    rbp,rax
    bdf9:	0f 85 19 fe ff ff    	jne    bc18 <_asn1_expand_object_id+0xa8>
    bdff:	e9 1d fe ff ff       	jmp    bc21 <_asn1_expand_object_id+0xb1>
    be04:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    be08:	48 85 c0             	test   rax,rax
    be0b:	0f 84 7a ff ff ff    	je     bd8b <_asn1_expand_object_id+0x21b>
    be11:	48 8b 58 68          	mov    rbx,QWORD PTR [rax+0x68]
    be15:	48 85 db             	test   rbx,rbx
    be18:	0f 85 12 fe ff ff    	jne    bc30 <_asn1_expand_object_id+0xc0>
    be1e:	66 90                	xchg   ax,ax
    be20:	48 89 c2             	mov    rdx,rax
    be23:	48 8b 40 70          	mov    rax,QWORD PTR [rax+0x70]
    be27:	48 85 c0             	test   rax,rax
    be2a:	0f 84 5b ff ff ff    	je     bd8b <_asn1_expand_object_id+0x21b>
    be30:	48 3b 50 68          	cmp    rdx,QWORD PTR [rax+0x68]
    be34:	74 ea                	je     be20 <_asn1_expand_object_id+0x2b0>
    be36:	48 39 c5             	cmp    rbp,rax
    be39:	0f 85 4c ff ff ff    	jne    bd8b <_asn1_expand_object_id+0x21b>
    be3f:	e9 4c ff ff ff       	jmp    bd90 <_asn1_expand_object_id+0x220>
    be44:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    be48:	b8 02 00 00 00       	mov    eax,0x2
    be4d:	e9 40 ff ff ff       	jmp    bd92 <_asn1_expand_object_id+0x222>
    be52:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    be58:	49 8b 46 50          	mov    rax,QWORD PTR [r14+0x50]
    be5c:	48 85 c0             	test   rax,rax
    be5f:	0f 84 a1 fd ff ff    	je     bc06 <_asn1_expand_object_id+0x96>
    be65:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    be68:	83 e8 30             	sub    eax,0x30
    be6b:	3c 09                	cmp    al,0x9
    be6d:	0f 86 93 fd ff ff    	jbe    bc06 <_asn1_expand_object_id+0x96>
    be73:	4c 8b 7c 24 20       	mov    r15,QWORD PTR [rsp+0x20]
    be78:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
    be7d:	be 81 00 00 00       	mov    esi,0x81
    be82:	4c 89 ff             	mov    rdi,r15
    be85:	e8 46 f2 ff ff       	call   b0d0 <_asn1_str_cpy>
    be8a:	48 8d 15 0b 3e 00 00 	lea    rdx,[rip+0x3e0b]        # fc9c <bit_mask+0x1ac>
    be91:	4c 89 ff             	mov    rdi,r15
    be94:	be 81 00 00 00       	mov    esi,0x81
    be99:	e8 b2 f1 ff ff       	call   b050 <_asn1_str_cat>
    be9e:	49 8b 56 50          	mov    rdx,QWORD PTR [r14+0x50]
    bea2:	4c 89 ff             	mov    rdi,r15
    bea5:	be 81 00 00 00       	mov    esi,0x81
    beaa:	e8 a1 f1 ff ff       	call   b050 <_asn1_str_cat>
    beaf:	4c 89 fe             	mov    rsi,r15
    beb2:	48 89 ef             	mov    rdi,rbp
    beb5:	e8 76 6c ff ff       	call   2b30 <asn1_find_node@plt>
    beba:	48 85 c0             	test   rax,rax
    bebd:	49 89 c7             	mov    r15,rax
    bec0:	74 86                	je     be48 <_asn1_expand_object_id+0x2d8>
    bec2:	48 89 c6             	mov    rsi,rax
    bec5:	48 89 f2             	mov    rdx,rsi
    bec8:	eb 13                	jmp    bedd <_asn1_expand_object_id+0x36d>
    beca:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    bed0:	48 3b 50 68          	cmp    rdx,QWORD PTR [rax+0x68]
    bed4:	0f 85 67 01 00 00    	jne    c041 <_asn1_expand_object_id+0x4d1>
    beda:	48 89 c2             	mov    rdx,rax
    bedd:	48 8b 42 70          	mov    rax,QWORD PTR [rdx+0x70]
    bee1:	48 85 c0             	test   rax,rax
    bee4:	75 ea                	jne    bed0 <_asn1_expand_object_id+0x360>
    bee6:	41 8b 47 48          	mov    eax,DWORD PTR [r15+0x48]
    beea:	3c 0c                	cmp    al,0xc
    beec:	0f 85 56 ff ff ff    	jne    be48 <_asn1_expand_object_id+0x2d8>
    bef2:	a9 00 00 00 10       	test   eax,0x10000000
    bef7:	0f 84 4b ff ff ff    	je     be48 <_asn1_expand_object_id+0x2d8>
    befd:	49 8b 46 68          	mov    rax,QWORD PTR [r14+0x68]
    bf01:	48 85 c0             	test   rax,rax
    bf04:	48 89 43 60          	mov    QWORD PTR [rbx+0x60],rax
    bf08:	74 04                	je     bf0e <_asn1_expand_object_id+0x39e>
    bf0a:	48 89 58 70          	mov    QWORD PTR [rax+0x70],rbx
    bf0e:	49 83 7e 60 00       	cmp    QWORD PTR [r14+0x60],0x0
    bf13:	74 0f                	je     bf24 <_asn1_expand_object_id+0x3b4>
    bf15:	49 8b 3c 24          	mov    rdi,QWORD PTR [r12]
    bf19:	49 8d 76 60          	lea    rsi,[r14+0x60]
    bf1d:	31 d2                	xor    edx,edx
    bf1f:	e8 5c 08 00 00       	call   c780 <_asn1_delete_structure>
    bf24:	49 8b 04 24          	mov    rax,QWORD PTR [r12]
    bf28:	48 85 c0             	test   rax,rax
    bf2b:	75 0c                	jne    bf39 <_asn1_expand_object_id+0x3c9>
    bf2d:	eb 1f                	jmp    bf4e <_asn1_expand_object_id+0x3de>
    bf2f:	90                   	nop
    bf30:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
    bf34:	48 85 c0             	test   rax,rax
    bf37:	74 15                	je     bf4e <_asn1_expand_object_id+0x3de>
    bf39:	4c 3b 30             	cmp    r14,QWORD PTR [rax]
    bf3c:	75 f2                	jne    bf30 <_asn1_expand_object_id+0x3c0>
    bf3e:	48 c7 00 00 00 00 00 	mov    QWORD PTR [rax],0x0
    bf45:	48 8b 40 08          	mov    rax,QWORD PTR [rax+0x8]
    bf49:	48 85 c0             	test   rax,rax
    bf4c:	75 eb                	jne    bf39 <_asn1_expand_object_id+0x3c9>
    bf4e:	31 f6                	xor    esi,esi
    bf50:	4c 89 f7             	mov    rdi,r14
    bf53:	e8 b8 f8 ff ff       	call   b810 <_asn1_remove_node>
    bf58:	4d 8b 7f 60          	mov    r15,QWORD PTR [r15+0x60]
    bf5c:	48 89 5c 24 08       	mov    QWORD PTR [rsp+0x8],rbx
    bf61:	c7 44 24 14 00 00 00 	mov    DWORD PTR [rsp+0x14],0x0
    bf68:	00 
    bf69:	4d 85 ff             	test   r15,r15
    bf6c:	75 17                	jne    bf85 <_asn1_expand_object_id+0x415>
    bf6e:	e9 05 01 00 00       	jmp    c078 <_asn1_expand_object_id+0x508>
    bf73:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    bf78:	4d 8b 7f 68          	mov    r15,QWORD PTR [r15+0x68]
    bf7c:	4d 85 ff             	test   r15,r15
    bf7f:	0f 84 f3 00 00 00    	je     c078 <_asn1_expand_object_id+0x508>
    bf85:	41 80 7f 48 01       	cmp    BYTE PTR [r15+0x48],0x1
    bf8a:	75 ec                	jne    bf78 <_asn1_expand_object_id+0x408>
    bf8c:	83 44 24 14 01       	add    DWORD PTR [rsp+0x14],0x1
    bf91:	8b 44 24 14          	mov    eax,DWORD PTR [rsp+0x14]
    bf95:	3d 00 04 00 00       	cmp    eax,0x400
    bf9a:	0f 84 e6 00 00 00    	je     c086 <_asn1_expand_object_id+0x516>
    bfa0:	bf 01 00 00 00       	mov    edi,0x1
    bfa5:	e8 76 05 00 00       	call   c520 <_asn1_add_single_node>
    bfaa:	4c 89 fe             	mov    rsi,r15
    bfad:	48 89 c7             	mov    rdi,rax
    bfb0:	49 89 c6             	mov    r14,rax
    bfb3:	e8 58 f7 ff ff       	call   b710 <_asn1_set_name>
    bfb8:	49 8b 77 50          	mov    rsi,QWORD PTR [r15+0x50]
    bfbc:	48 85 f6             	test   rsi,rsi
    bfbf:	74 21                	je     bfe2 <_asn1_expand_object_id+0x472>
    bfc1:	48 89 f7             	mov    rdi,rsi
    bfc4:	48 89 74 24 28       	mov    QWORD PTR [rsp+0x28],rsi
    bfc9:	e8 f2 6b ff ff       	call   2bc0 <strlen@plt>
    bfce:	85 c0                	test   eax,eax
    bfd0:	7e 10                	jle    bfe2 <_asn1_expand_object_id+0x472>
    bfd2:	48 8b 74 24 28       	mov    rsi,QWORD PTR [rsp+0x28]
    bfd7:	8d 50 01             	lea    edx,[rax+0x1]
    bfda:	4c 89 f7             	mov    rdi,r14
    bfdd:	e8 7e f4 ff ff       	call   b460 <_asn1_set_value>
    bfe2:	bf 10 00 00 00       	mov    edi,0x10
    bfe7:	e8 24 6d ff ff       	call   2d10 <malloc@plt>
    bfec:	48 85 c0             	test   rax,rax
    bfef:	74 0f                	je     c000 <_asn1_expand_object_id+0x490>
    bff1:	49 8b 14 24          	mov    rdx,QWORD PTR [r12]
    bff5:	4c 89 30             	mov    QWORD PTR [rax],r14
    bff8:	49 89 04 24          	mov    QWORD PTR [r12],rax
    bffc:	48 89 50 08          	mov    QWORD PTR [rax+0x8],rdx
    c000:	48 3b 5c 24 08       	cmp    rbx,QWORD PTR [rsp+0x8]
    c005:	0f 84 85 00 00 00    	je     c090 <_asn1_expand_object_id+0x520>
    c00b:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
    c010:	4d 85 f6             	test   r14,r14
    c013:	48 8b 40 68          	mov    rax,QWORD PTR [rax+0x68]
    c017:	0f 84 9b 00 00 00    	je     c0b8 <_asn1_expand_object_id+0x548>
    c01d:	48 85 c0             	test   rax,rax
    c020:	49 89 46 68          	mov    QWORD PTR [r14+0x68],rax
    c024:	74 04                	je     c02a <_asn1_expand_object_id+0x4ba>
    c026:	4c 89 70 70          	mov    QWORD PTR [rax+0x70],r14
    c02a:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
    c02f:	4c 89 74 24 08       	mov    QWORD PTR [rsp+0x8],r14
    c034:	4c 89 70 68          	mov    QWORD PTR [rax+0x68],r14
    c038:	49 89 46 70          	mov    QWORD PTR [r14+0x70],rax
    c03c:	e9 37 ff ff ff       	jmp    bf78 <_asn1_expand_object_id+0x408>
    c041:	48 39 f0             	cmp    rax,rsi
    c044:	0f 84 9c fe ff ff    	je     bee6 <_asn1_expand_object_id+0x376>
    c04a:	49 39 c6             	cmp    r14,rax
    c04d:	0f 84 f5 fd ff ff    	je     be48 <_asn1_expand_object_id+0x2d8>
    c053:	48 89 c6             	mov    rsi,rax
    c056:	e9 6a fe ff ff       	jmp    bec5 <_asn1_expand_object_id+0x355>
    c05b:	48 8d 15 3a 3c 00 00 	lea    rdx,[rip+0x3c3a]        # fc9c <bit_mask+0x1ac>
    c062:	be 81 00 00 00       	mov    esi,0x81
    c067:	4c 89 e7             	mov    rdi,r12
    c06a:	e8 e1 ef ff ff       	call   b050 <_asn1_str_cat>
    c06f:	49 8b 56 50          	mov    rdx,QWORD PTR [r14+0x50]
    c073:	e9 a0 fc ff ff       	jmp    bd18 <_asn1_expand_object_id+0x1a8>
    c078:	41 83 c5 01          	add    r13d,0x1
    c07c:	41 83 fd 0f          	cmp    r13d,0xf
    c080:	0f 8e 5e fb ff ff    	jle    bbe4 <_asn1_expand_object_id+0x74>
    c086:	b8 13 00 00 00       	mov    eax,0x13
    c08b:	e9 02 fd ff ff       	jmp    bd92 <_asn1_expand_object_id+0x222>
    c090:	4d 85 f6             	test   r14,r14
    c093:	48 8b 43 60          	mov    rax,QWORD PTR [rbx+0x60]
    c097:	74 44                	je     c0dd <_asn1_expand_object_id+0x56d>
    c099:	48 85 c0             	test   rax,rax
    c09c:	49 89 46 68          	mov    QWORD PTR [r14+0x68],rax
    c0a0:	74 04                	je     c0a6 <_asn1_expand_object_id+0x536>
    c0a2:	4c 89 70 70          	mov    QWORD PTR [rax+0x70],r14
    c0a6:	4c 89 73 60          	mov    QWORD PTR [rbx+0x60],r14
    c0aa:	4c 89 74 24 08       	mov    QWORD PTR [rsp+0x8],r14
    c0af:	49 89 5e 70          	mov    QWORD PTR [r14+0x70],rbx
    c0b3:	e9 c0 fe ff ff       	jmp    bf78 <_asn1_expand_object_id+0x408>
    c0b8:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
    c0bd:	48 c7 44 24 08 00 00 	mov    QWORD PTR [rsp+0x8],0x0
    c0c4:	00 00 
    c0c6:	48 c7 40 68 00 00 00 	mov    QWORD PTR [rax+0x68],0x0
    c0cd:	00 
    c0ce:	e9 a5 fe ff ff       	jmp    bf78 <_asn1_expand_object_id+0x408>
    c0d3:	b8 05 00 00 00       	mov    eax,0x5
    c0d8:	e9 b5 fc ff ff       	jmp    bd92 <_asn1_expand_object_id+0x222>
    c0dd:	48 c7 43 60 00 00 00 	mov    QWORD PTR [rbx+0x60],0x0
    c0e4:	00 
    c0e5:	48 c7 44 24 08 00 00 	mov    QWORD PTR [rsp+0x8],0x0
    c0ec:	00 00 
    c0ee:	e9 85 fe ff ff       	jmp    bf78 <_asn1_expand_object_id+0x408>
    c0f3:	e8 d8 6a ff ff       	call   2bd0 <__stack_chk_fail@plt>
    c0f8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    c0ff:	00 

000000000000c100 <_asn1_type_set_config>:
    c100:	48 85 ff             	test   rdi,rdi
    c103:	b8 02 00 00 00       	mov    eax,0x2
    c108:	0f 84 94 00 00 00    	je     c1a2 <_asn1_type_set_config+0xa2>
    c10e:	48 89 fa             	mov    rdx,rdi
    c111:	80 7a 48 0e          	cmp    BYTE PTR [rdx+0x48],0xe
    c115:	48 8b 4a 60          	mov    rcx,QWORD PTR [rdx+0x60]
    c119:	74 17                	je     c132 <_asn1_type_set_config+0x32>
    c11b:	48 85 c9             	test   rcx,rcx
    c11e:	74 40                	je     c160 <_asn1_type_set_config+0x60>
    c120:	48 39 cf             	cmp    rdi,rcx
    c123:	74 7b                	je     c1a0 <_asn1_type_set_config+0xa0>
    c125:	48 89 ca             	mov    rdx,rcx
    c128:	80 7a 48 0e          	cmp    BYTE PTR [rdx+0x48],0xe
    c12c:	48 8b 4a 60          	mov    rcx,QWORD PTR [rdx+0x60]
    c130:	75 e9                	jne    c11b <_asn1_type_set_config+0x1b>
    c132:	48 85 c9             	test   rcx,rcx
    c135:	74 29                	je     c160 <_asn1_type_set_config+0x60>
    c137:	48 89 c8             	mov    rax,rcx
    c13a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    c140:	8b 50 48             	mov    edx,DWORD PTR [rax+0x48]
    c143:	80 fa 08             	cmp    dl,0x8
    c146:	74 09                	je     c151 <_asn1_type_set_config+0x51>
    c148:	81 ca 00 00 00 0c    	or     edx,0xc000000
    c14e:	89 50 48             	mov    DWORD PTR [rax+0x48],edx
    c151:	48 8b 40 68          	mov    rax,QWORD PTR [rax+0x68]
    c155:	48 85 c0             	test   rax,rax
    c158:	75 e6                	jne    c140 <_asn1_type_set_config+0x40>
    c15a:	eb c4                	jmp    c120 <_asn1_type_set_config+0x20>
    c15c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    c160:	48 89 d0             	mov    rax,rdx
    c163:	48 39 c7             	cmp    rdi,rax
    c166:	74 38                	je     c1a0 <_asn1_type_set_config+0xa0>
    c168:	48 85 c0             	test   rax,rax
    c16b:	74 f6                	je     c163 <_asn1_type_set_config+0x63>
    c16d:	48 8b 50 68          	mov    rdx,QWORD PTR [rax+0x68]
    c171:	48 85 d2             	test   rdx,rdx
    c174:	75 9b                	jne    c111 <_asn1_type_set_config+0x11>
    c176:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    c17d:	00 00 00 
    c180:	48 89 c2             	mov    rdx,rax
    c183:	48 8b 40 70          	mov    rax,QWORD PTR [rax+0x70]
    c187:	48 85 c0             	test   rax,rax
    c18a:	74 d7                	je     c163 <_asn1_type_set_config+0x63>
    c18c:	48 3b 50 68          	cmp    rdx,QWORD PTR [rax+0x68]
    c190:	74 ee                	je     c180 <_asn1_type_set_config+0x80>
    c192:	48 39 c7             	cmp    rdi,rax
    c195:	75 cc                	jne    c163 <_asn1_type_set_config+0x63>
    c197:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    c19e:	00 00 
    c1a0:	31 c0                	xor    eax,eax
    c1a2:	f3 c3                	repz ret 
    c1a4:	66 90                	xchg   ax,ax
    c1a6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    c1ad:	00 00 00 

000000000000c1b0 <_asn1_check_identifier>:
    c1b0:	41 55                	push   r13
    c1b2:	41 54                	push   r12
    c1b4:	55                   	push   rbp
    c1b5:	53                   	push   rbx
    c1b6:	48 81 ec 98 00 00 00 	sub    rsp,0x98
    c1bd:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    c1c4:	00 00 
    c1c6:	48 89 84 24 88 00 00 	mov    QWORD PTR [rsp+0x88],rax
    c1cd:	00 
    c1ce:	31 c0                	xor    eax,eax
    c1d0:	48 85 ff             	test   rdi,rdi
    c1d3:	b8 02 00 00 00       	mov    eax,0x2
    c1d8:	0f 84 75 01 00 00    	je     c353 <_asn1_check_identifier+0x1a3>
    c1de:	49 89 fd             	mov    r13,rdi
    c1e1:	48 89 fb             	mov    rbx,rdi
    c1e4:	49 89 e4             	mov    r12,rsp
    c1e7:	eb 17                	jmp    c200 <_asn1_check_identifier+0x50>
    c1e9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    c1f0:	48 8b 6b 60          	mov    rbp,QWORD PTR [rbx+0x60]
    c1f4:	48 85 ed             	test   rbp,rbp
    c1f7:	0f 84 1b 01 00 00    	je     c318 <_asn1_check_identifier+0x168>
    c1fd:	48 89 eb             	mov    rbx,rbp
    c200:	48 83 7b 50 00       	cmp    QWORD PTR [rbx+0x50],0x0
    c205:	8b 53 48             	mov    edx,DWORD PTR [rbx+0x48]
    c208:	0f b6 c2             	movzx  eax,dl
    c20b:	74 09                	je     c216 <_asn1_check_identifier+0x66>
    c20d:	83 f8 02             	cmp    eax,0x2
    c210:	0f 84 6a 01 00 00    	je     c380 <_asn1_check_identifier+0x1d0>
    c216:	83 f8 0c             	cmp    eax,0xc
    c219:	75 d5                	jne    c1f0 <_asn1_check_identifier+0x40>
    c21b:	f6 c6 80             	test   dh,0x80
    c21e:	48 8b 6b 60          	mov    rbp,QWORD PTR [rbx+0x60]
    c222:	0f 84 a0 00 00 00    	je     c2c8 <_asn1_check_identifier+0x118>
    c228:	48 85 ed             	test   rbp,rbp
    c22b:	0f 84 e7 00 00 00    	je     c318 <_asn1_check_identifier+0x168>
    c231:	80 7d 48 09          	cmp    BYTE PTR [rbp+0x48],0x9
    c235:	75 c6                	jne    c1fd <_asn1_check_identifier+0x4d>
    c237:	4c 89 ea             	mov    rdx,r13
    c23a:	be 82 00 00 00       	mov    esi,0x82
    c23f:	4c 89 e7             	mov    rdi,r12
    c242:	e8 89 ee ff ff       	call   b0d0 <_asn1_str_cpy>
    c247:	48 83 7d 50 00       	cmp    QWORD PTR [rbp+0x50],0x0
    c24c:	0f 84 b5 01 00 00    	je     c407 <_asn1_check_identifier+0x257>
    c252:	48 8d 15 43 3a 00 00 	lea    rdx,[rip+0x3a43]        # fc9c <bit_mask+0x1ac>
    c259:	be 82 00 00 00       	mov    esi,0x82
    c25e:	4c 89 e7             	mov    rdi,r12
    c261:	e8 ea ed ff ff       	call   b050 <_asn1_str_cat>
    c266:	48 8b 55 50          	mov    rdx,QWORD PTR [rbp+0x50]
    c26a:	be 82 00 00 00       	mov    esi,0x82
    c26f:	4c 89 e7             	mov    rdi,r12
    c272:	e8 d9 ed ff ff       	call   b050 <_asn1_str_cat>
    c277:	48 8b 55 50          	mov    rdx,QWORD PTR [rbp+0x50]
    c27b:	48 8d 3d 1e 71 20 00 	lea    rdi,[rip+0x20711e]        # 2133a0 <_asn1_identifierMissing>
    c282:	be 41 00 00 00       	mov    esi,0x41
    c287:	e8 44 ee ff ff       	call   b0d0 <_asn1_str_cpy>
    c28c:	4c 89 e6             	mov    rsi,r12
    c28f:	4c 89 ef             	mov    rdi,r13
    c292:	e8 99 68 ff ff       	call   2b30 <asn1_find_node@plt>
    c297:	48 85 c0             	test   rax,rax
    c29a:	0f 84 89 01 00 00    	je     c429 <_asn1_check_identifier+0x279>
    c2a0:	8b 40 48             	mov    eax,DWORD PTR [rax+0x48]
    c2a3:	3c 0c                	cmp    al,0xc
    c2a5:	0f 85 7e 01 00 00    	jne    c429 <_asn1_check_identifier+0x279>
    c2ab:	a9 00 00 00 10       	test   eax,0x10000000
    c2b0:	0f 84 73 01 00 00    	je     c429 <_asn1_check_identifier+0x279>
    c2b6:	c6 05 e3 70 20 00 00 	mov    BYTE PTR [rip+0x2070e3],0x0        # 2133a0 <_asn1_identifierMissing>
    c2bd:	e9 2e ff ff ff       	jmp    c1f0 <_asn1_check_identifier+0x40>
    c2c2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    c2c8:	81 e2 00 00 00 10    	and    edx,0x10000000
    c2ce:	0f 84 20 ff ff ff    	je     c1f4 <_asn1_check_identifier+0x44>
    c2d4:	48 85 ed             	test   rbp,rbp
    c2d7:	74 3f                	je     c318 <_asn1_check_identifier+0x168>
    c2d9:	80 7d 48 01          	cmp    BYTE PTR [rbp+0x48],0x1
    c2dd:	0f 85 1a ff ff ff    	jne    c1fd <_asn1_check_identifier+0x4d>
    c2e3:	48 8b 45 50          	mov    rax,QWORD PTR [rbp+0x50]
    c2e7:	48 85 c0             	test   rax,rax
    c2ea:	0f 84 0d ff ff ff    	je     c1fd <_asn1_check_identifier+0x4d>
    c2f0:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    c2f3:	83 e8 30             	sub    eax,0x30
    c2f6:	3c 09                	cmp    al,0x9
    c2f8:	0f 86 ff fe ff ff    	jbe    c1fd <_asn1_check_identifier+0x4d>
    c2fe:	4c 89 ea             	mov    rdx,r13
    c301:	be 82 00 00 00       	mov    esi,0x82
    c306:	4c 89 e7             	mov    rdi,r12
    c309:	e8 c2 ed ff ff       	call   b0d0 <_asn1_str_cpy>
    c30e:	e9 3f ff ff ff       	jmp    c252 <_asn1_check_identifier+0xa2>
    c313:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    c318:	48 8b 6b 68          	mov    rbp,QWORD PTR [rbx+0x68]
    c31c:	48 85 ed             	test   rbp,rbp
    c31f:	0f 85 d8 fe ff ff    	jne    c1fd <_asn1_check_identifier+0x4d>
    c325:	48 89 d8             	mov    rax,rbx
    c328:	48 8b 5b 70          	mov    rbx,QWORD PTR [rbx+0x70]
    c32c:	48 85 db             	test   rbx,rbx
    c32f:	74 20                	je     c351 <_asn1_check_identifier+0x1a1>
    c331:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    c338:	48 8b 6b 68          	mov    rbp,QWORD PTR [rbx+0x68]
    c33c:	48 39 e8             	cmp    rax,rbp
    c33f:	0f 85 ab 00 00 00    	jne    c3f0 <_asn1_check_identifier+0x240>
    c345:	48 89 d8             	mov    rax,rbx
    c348:	48 8b 5b 70          	mov    rbx,QWORD PTR [rbx+0x70]
    c34c:	48 85 db             	test   rbx,rbx
    c34f:	75 e7                	jne    c338 <_asn1_check_identifier+0x188>
    c351:	31 c0                	xor    eax,eax
    c353:	48 8b 8c 24 88 00 00 	mov    rcx,QWORD PTR [rsp+0x88]
    c35a:	00 
    c35b:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
    c362:	00 00 
    c364:	0f 85 f0 00 00 00    	jne    c45a <_asn1_check_identifier+0x2aa>
    c36a:	48 81 c4 98 00 00 00 	add    rsp,0x98
    c371:	5b                   	pop    rbx
    c372:	5d                   	pop    rbp
    c373:	41 5c                	pop    r12
    c375:	41 5d                	pop    r13
    c377:	c3                   	ret    
    c378:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    c37f:	00 
    c380:	4c 89 ea             	mov    rdx,r13
    c383:	be 82 00 00 00       	mov    esi,0x82
    c388:	4c 89 e7             	mov    rdi,r12
    c38b:	e8 40 ed ff ff       	call   b0d0 <_asn1_str_cpy>
    c390:	48 8d 15 05 39 00 00 	lea    rdx,[rip+0x3905]        # fc9c <bit_mask+0x1ac>
    c397:	be 82 00 00 00       	mov    esi,0x82
    c39c:	4c 89 e7             	mov    rdi,r12
    c39f:	e8 ac ec ff ff       	call   b050 <_asn1_str_cat>
    c3a4:	48 8b 53 50          	mov    rdx,QWORD PTR [rbx+0x50]
    c3a8:	be 82 00 00 00       	mov    esi,0x82
    c3ad:	4c 89 e7             	mov    rdi,r12
    c3b0:	e8 9b ec ff ff       	call   b050 <_asn1_str_cat>
    c3b5:	4c 89 e6             	mov    rsi,r12
    c3b8:	4c 89 ef             	mov    rdi,r13
    c3bb:	e8 70 67 ff ff       	call   2b30 <asn1_find_node@plt>
    c3c0:	48 85 c0             	test   rax,rax
    c3c3:	0f 85 27 fe ff ff    	jne    c1f0 <_asn1_check_identifier+0x40>
    c3c9:	48 8b 53 50          	mov    rdx,QWORD PTR [rbx+0x50]
    c3cd:	48 85 d2             	test   rdx,rdx
    c3d0:	74 61                	je     c433 <_asn1_check_identifier+0x283>
    c3d2:	48 8d 3d c7 6f 20 00 	lea    rdi,[rip+0x206fc7]        # 2133a0 <_asn1_identifierMissing>
    c3d9:	be 41 00 00 00       	mov    esi,0x41
    c3de:	e8 ed ec ff ff       	call   b0d0 <_asn1_str_cpy>
    c3e3:	b8 03 00 00 00       	mov    eax,0x3
    c3e8:	e9 66 ff ff ff       	jmp    c353 <_asn1_check_identifier+0x1a3>
    c3ed:	0f 1f 00             	nop    DWORD PTR [rax]
    c3f0:	49 39 dd             	cmp    r13,rbx
    c3f3:	0f 84 58 ff ff ff    	je     c351 <_asn1_check_identifier+0x1a1>
    c3f9:	48 85 ed             	test   rbp,rbp
    c3fc:	0f 84 43 ff ff ff    	je     c345 <_asn1_check_identifier+0x195>
    c402:	e9 f6 fd ff ff       	jmp    c1fd <_asn1_check_identifier+0x4d>
    c407:	b8 6c 29 00 00       	mov    eax,0x296c
    c40c:	c7 05 8a 6f 20 00 28 	mov    DWORD PTR [rip+0x206f8a],0x6c756e28        # 2133a0 <_asn1_identifierMissing>
    c413:	6e 75 6c 
    c416:	c6 05 89 6f 20 00 00 	mov    BYTE PTR [rip+0x206f89],0x0        # 2133a6 <_asn1_identifierMissing+0x6>
    c41d:	66 89 05 80 6f 20 00 	mov    WORD PTR [rip+0x206f80],ax        # 2133a4 <_asn1_identifierMissing+0x4>
    c424:	e9 63 fe ff ff       	jmp    c28c <_asn1_check_identifier+0xdc>
    c429:	b8 03 00 00 00       	mov    eax,0x3
    c42e:	e9 20 ff ff ff       	jmp    c353 <_asn1_check_identifier+0x1a3>
    c433:	ba 6c 29 00 00       	mov    edx,0x296c
    c438:	c7 05 5e 6f 20 00 28 	mov    DWORD PTR [rip+0x206f5e],0x6c756e28        # 2133a0 <_asn1_identifierMissing>
    c43f:	6e 75 6c 
    c442:	c6 05 5d 6f 20 00 00 	mov    BYTE PTR [rip+0x206f5d],0x0        # 2133a6 <_asn1_identifierMissing+0x6>
    c449:	66 89 15 54 6f 20 00 	mov    WORD PTR [rip+0x206f54],dx        # 2133a4 <_asn1_identifierMissing+0x4>
    c450:	b8 03 00 00 00       	mov    eax,0x3
    c455:	e9 f9 fe ff ff       	jmp    c353 <_asn1_check_identifier+0x1a3>
    c45a:	e8 71 67 ff ff       	call   2bd0 <__stack_chk_fail@plt>
    c45f:	90                   	nop

000000000000c460 <_asn1_set_default_tag>:
    c460:	48 85 ff             	test   rdi,rdi
    c463:	b8 02 00 00 00       	mov    eax,0x2
    c468:	74 0b                	je     c475 <_asn1_set_default_tag+0x15>
    c46a:	8b 4f 48             	mov    ecx,DWORD PTR [rdi+0x48]
    c46d:	0f b6 d1             	movzx  edx,cl
    c470:	83 fa 10             	cmp    edx,0x10
    c473:	74 0b                	je     c480 <_asn1_set_default_tag+0x20>
    c475:	f3 c3                	repz ret 
    c477:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    c47e:	00 00 
    c480:	48 89 f8             	mov    rax,rdi
    c483:	eb 15                	jmp    c49a <_asn1_set_default_tag+0x3a>
    c485:	0f 1f 00             	nop    DWORD PTR [rax]
    c488:	48 8b 50 60          	mov    rdx,QWORD PTR [rax+0x60]
    c48c:	48 85 d2             	test   rdx,rdx
    c48f:	74 2f                	je     c4c0 <_asn1_set_default_tag+0x60>
    c491:	8b 4a 48             	mov    ecx,DWORD PTR [rdx+0x48]
    c494:	48 89 d0             	mov    rax,rdx
    c497:	0f b6 d1             	movzx  edx,cl
    c49a:	83 fa 08             	cmp    edx,0x8
    c49d:	75 e9                	jne    c488 <_asn1_set_default_tag+0x28>
    c49f:	f7 40 48 00 18 00 00 	test   DWORD PTR [rax+0x48],0x1800
    c4a6:	75 e0                	jne    c488 <_asn1_set_default_tag+0x28>
    c4a8:	f6 47 49 08          	test   BYTE PTR [rdi+0x49],0x8
    c4ac:	74 62                	je     c510 <_asn1_set_default_tag+0xb0>
    c4ae:	80 cd 08             	or     ch,0x8
    c4b1:	89 48 48             	mov    DWORD PTR [rax+0x48],ecx
    c4b4:	eb d2                	jmp    c488 <_asn1_set_default_tag+0x28>
    c4b6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    c4bd:	00 00 00 
    c4c0:	48 8b 50 68          	mov    rdx,QWORD PTR [rax+0x68]
    c4c4:	48 85 d2             	test   rdx,rdx
    c4c7:	75 c8                	jne    c491 <_asn1_set_default_tag+0x31>
    c4c9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    c4d0:	48 85 c0             	test   rax,rax
    c4d3:	75 14                	jne    c4e9 <_asn1_set_default_tag+0x89>
    c4d5:	eb 1e                	jmp    c4f5 <_asn1_set_default_tag+0x95>
    c4d7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    c4de:	00 00 
    c4e0:	48 8b 50 68          	mov    rdx,QWORD PTR [rax+0x68]
    c4e4:	48 39 d1             	cmp    rcx,rdx
    c4e7:	75 17                	jne    c500 <_asn1_set_default_tag+0xa0>
    c4e9:	48 89 c1             	mov    rcx,rax
    c4ec:	48 8b 40 70          	mov    rax,QWORD PTR [rax+0x70]
    c4f0:	48 85 c0             	test   rax,rax
    c4f3:	75 eb                	jne    c4e0 <_asn1_set_default_tag+0x80>
    c4f5:	eb fe                	jmp    c4f5 <_asn1_set_default_tag+0x95>
    c4f7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    c4fe:	00 00 
    c500:	48 39 c7             	cmp    rdi,rax
    c503:	74 16                	je     c51b <_asn1_set_default_tag+0xbb>
    c505:	48 85 d2             	test   rdx,rdx
    c508:	74 c6                	je     c4d0 <_asn1_set_default_tag+0x70>
    c50a:	eb 85                	jmp    c491 <_asn1_set_default_tag+0x31>
    c50c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    c510:	80 cd 10             	or     ch,0x10
    c513:	89 48 48             	mov    DWORD PTR [rax+0x48],ecx
    c516:	e9 6d ff ff ff       	jmp    c488 <_asn1_set_default_tag+0x28>
    c51b:	31 c0                	xor    eax,eax
    c51d:	c3                   	ret    
    c51e:	66 90                	xchg   ax,ax

000000000000c520 <_asn1_add_single_node>:
    c520:	53                   	push   rbx
    c521:	be 98 00 00 00       	mov    esi,0x98
    c526:	89 fb                	mov    ebx,edi
    c528:	bf 01 00 00 00       	mov    edi,0x1
    c52d:	e8 7e 67 ff ff       	call   2cb0 <calloc@plt>
    c532:	48 85 c0             	test   rax,rax
    c535:	74 03                	je     c53a <_asn1_add_single_node+0x1a>
    c537:	89 58 48             	mov    DWORD PTR [rax+0x48],ebx
    c53a:	5b                   	pop    rbx
    c53b:	c3                   	ret    
    c53c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

000000000000c540 <_asn1_find_left>:
    c540:	48 85 ff             	test   rdi,rdi
    c543:	74 1b                	je     c560 <_asn1_find_left+0x20>
    c545:	48 8b 47 70          	mov    rax,QWORD PTR [rdi+0x70]
    c549:	48 85 c0             	test   rax,rax
    c54c:	74 14                	je     c562 <_asn1_find_left+0x22>
    c54e:	48 3b 78 60          	cmp    rdi,QWORD PTR [rax+0x60]
    c552:	ba 00 00 00 00       	mov    edx,0x0
    c557:	48 0f 44 c2          	cmove  rax,rdx
    c55b:	c3                   	ret    
    c55c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    c560:	31 c0                	xor    eax,eax
    c562:	f3 c3                	repz ret 
    c564:	66 90                	xchg   ax,ax
    c566:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    c56d:	00 00 00 

000000000000c570 <_asn1_create_static_structure>:
    c570:	41 54                	push   r12
    c572:	49 89 fc             	mov    r12,rdi
    c575:	55                   	push   rbp
    c576:	48 89 f7             	mov    rdi,rsi
    c579:	53                   	push   rbx
    c57a:	48 8d 35 f8 39 00 00 	lea    rsi,[rip+0x39f8]        # ff79 <bit_mask+0x489>
    c581:	48 89 d3             	mov    rbx,rdx
    c584:	e8 07 68 ff ff       	call   2d90 <fopen@plt>
    c589:	48 89 c5             	mov    rbp,rax
    c58c:	b8 01 00 00 00       	mov    eax,0x1
    c591:	48 85 ed             	test   rbp,rbp
    c594:	0f 84 ba 01 00 00    	je     c754 <_asn1_create_static_structure+0x1e4>
    c59a:	48 8d 3d da 39 00 00 	lea    rdi,[rip+0x39da]        # ff7b <bit_mask+0x48b>
    c5a1:	48 89 e9             	mov    rcx,rbp
    c5a4:	ba 12 00 00 00       	mov    edx,0x12
    c5a9:	be 01 00 00 00       	mov    esi,0x1
    c5ae:	e8 3d 68 ff ff       	call   2df0 <fwrite@plt>
    c5b3:	48 8d 3d d4 39 00 00 	lea    rdi,[rip+0x39d4]        # ff8e <bit_mask+0x49e>
    c5ba:	48 89 e9             	mov    rcx,rbp
    c5bd:	ba 15 00 00 00       	mov    edx,0x15
    c5c2:	be 01 00 00 00       	mov    esi,0x1
    c5c7:	e8 24 68 ff ff       	call   2df0 <fwrite@plt>
    c5cc:	48 8d 3d d1 39 00 00 	lea    rdi,[rip+0x39d1]        # ffa4 <bit_mask+0x4b4>
    c5d3:	48 89 e9             	mov    rcx,rbp
    c5d6:	ba 08 00 00 00       	mov    edx,0x8
    c5db:	be 01 00 00 00       	mov    esi,0x1
    c5e0:	e8 0b 68 ff ff       	call   2df0 <fwrite@plt>
    c5e5:	48 8d 3d c1 39 00 00 	lea    rdi,[rip+0x39c1]        # ffad <bit_mask+0x4bd>
    c5ec:	48 89 e9             	mov    rcx,rbp
    c5ef:	ba 17 00 00 00       	mov    edx,0x17
    c5f4:	be 01 00 00 00       	mov    esi,0x1
    c5f9:	e8 f2 67 ff ff       	call   2df0 <fwrite@plt>
    c5fe:	48 8d 15 8b 3b 00 00 	lea    rdx,[rip+0x3b8b]        # 10190 <bit_mask+0x6a0>
    c605:	31 c0                	xor    eax,eax
    c607:	48 89 d9             	mov    rcx,rbx
    c60a:	be 01 00 00 00       	mov    esi,0x1
    c60f:	48 89 ef             	mov    rdi,rbp
    c612:	e8 f9 67 ff ff       	call   2e10 <__fprintf_chk@plt>
    c617:	4d 85 e4             	test   r12,r12
    c61a:	0f 84 11 01 00 00    	je     c731 <_asn1_create_static_structure+0x1c1>
    c620:	4c 89 e3             	mov    rbx,r12
    c623:	e9 8d 00 00 00       	jmp    c6b5 <_asn1_create_static_structure+0x145>
    c628:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    c62f:	00 
    c630:	48 8d 15 93 39 00 00 	lea    rdx,[rip+0x3993]        # ffca <bit_mask+0x4da>
    c637:	48 89 d9             	mov    rcx,rbx
    c63a:	be 01 00 00 00       	mov    esi,0x1
    c63f:	48 89 ef             	mov    rdi,rbp
    c642:	31 c0                	xor    eax,eax
    c644:	e8 c7 67 ff ff       	call   2e10 <__fprintf_chk@plt>
    c649:	8b 43 48             	mov    eax,DWORD PTR [rbx+0x48]
    c64c:	48 8d 15 85 39 00 00 	lea    rdx,[rip+0x3985]        # ffd8 <bit_mask+0x4e8>
    c653:	be 01 00 00 00       	mov    esi,0x1
    c658:	48 89 ef             	mov    rdi,rbp
    c65b:	48 89 c1             	mov    rcx,rax
    c65e:	81 c9 00 00 00 20    	or     ecx,0x20000000
    c664:	48 83 7b 60 00       	cmp    QWORD PTR [rbx+0x60],0x0
    c669:	48 0f 44 c8          	cmove  rcx,rax
    c66d:	48 89 c8             	mov    rax,rcx
    c670:	48 0d 00 00 00 40    	or     rax,0x40000000
    c676:	48 83 7b 68 00       	cmp    QWORD PTR [rbx+0x68],0x0
    c67b:	48 0f 45 c8          	cmovne rcx,rax
    c67f:	31 c0                	xor    eax,eax
    c681:	e8 8a 67 ff ff       	call   2e10 <__fprintf_chk@plt>
    c686:	48 8b 4b 50          	mov    rcx,QWORD PTR [rbx+0x50]
    c68a:	48 85 c9             	test   rcx,rcx
    c68d:	0f 84 cd 00 00 00    	je     c760 <_asn1_create_static_structure+0x1f0>
    c693:	48 8d 15 44 39 00 00 	lea    rdx,[rip+0x3944]        # ffde <bit_mask+0x4ee>
    c69a:	be 01 00 00 00       	mov    esi,0x1
    c69f:	48 89 ef             	mov    rdi,rbp
    c6a2:	31 c0                	xor    eax,eax
    c6a4:	e8 67 67 ff ff       	call   2e10 <__fprintf_chk@plt>
    c6a9:	48 8b 43 60          	mov    rax,QWORD PTR [rbx+0x60]
    c6ad:	48 85 c0             	test   rax,rax
    c6b0:	74 46                	je     c6f8 <_asn1_create_static_structure+0x188>
    c6b2:	48 89 c3             	mov    rbx,rax
    c6b5:	48 8d 3d 09 39 00 00 	lea    rdi,[rip+0x3909]        # ffc5 <bit_mask+0x4d5>
    c6bc:	48 89 e9             	mov    rcx,rbp
    c6bf:	ba 04 00 00 00       	mov    edx,0x4
    c6c4:	be 01 00 00 00       	mov    esi,0x1
    c6c9:	e8 22 67 ff ff       	call   2df0 <fwrite@plt>
    c6ce:	80 3b 00             	cmp    BYTE PTR [rbx],0x0
    c6d1:	0f 85 59 ff ff ff    	jne    c630 <_asn1_create_static_structure+0xc0>
    c6d7:	48 8d 3d f3 38 00 00 	lea    rdi,[rip+0x38f3]        # ffd1 <bit_mask+0x4e1>
    c6de:	48 89 e9             	mov    rcx,rbp
    c6e1:	ba 06 00 00 00       	mov    edx,0x6
    c6e6:	be 01 00 00 00       	mov    esi,0x1
    c6eb:	e8 00 67 ff ff       	call   2df0 <fwrite@plt>
    c6f0:	e9 54 ff ff ff       	jmp    c649 <_asn1_create_static_structure+0xd9>
    c6f5:	0f 1f 00             	nop    DWORD PTR [rax]
    c6f8:	48 8b 43 68          	mov    rax,QWORD PTR [rbx+0x68]
    c6fc:	48 85 c0             	test   rax,rax
    c6ff:	75 b1                	jne    c6b2 <_asn1_create_static_structure+0x142>
    c701:	48 89 df             	mov    rdi,rbx
    c704:	e8 97 f1 ff ff       	call   b8a0 <_asn1_find_up>
    c709:	49 39 c4             	cmp    r12,rax
    c70c:	48 89 c3             	mov    rbx,rax
    c70f:	74 20                	je     c731 <_asn1_create_static_structure+0x1c1>
    c711:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    c718:	48 8b 40 68          	mov    rax,QWORD PTR [rax+0x68]
    c71c:	48 85 c0             	test   rax,rax
    c71f:	75 91                	jne    c6b2 <_asn1_create_static_structure+0x142>
    c721:	48 89 df             	mov    rdi,rbx
    c724:	e8 77 f1 ff ff       	call   b8a0 <_asn1_find_up>
    c729:	49 39 c4             	cmp    r12,rax
    c72c:	48 89 c3             	mov    rbx,rax
    c72f:	75 e7                	jne    c718 <_asn1_create_static_structure+0x1a8>
    c731:	48 8d 3d b7 38 00 00 	lea    rdi,[rip+0x38b7]        # ffef <bit_mask+0x4ff>
    c738:	48 89 e9             	mov    rcx,rbp
    c73b:	ba 17 00 00 00       	mov    edx,0x17
    c740:	be 01 00 00 00       	mov    esi,0x1
    c745:	e8 a6 66 ff ff       	call   2df0 <fwrite@plt>
    c74a:	48 89 ef             	mov    rdi,rbp
    c74d:	e8 4e 64 ff ff       	call   2ba0 <fclose@plt>
    c752:	31 c0                	xor    eax,eax
    c754:	5b                   	pop    rbx
    c755:	5d                   	pop    rbp
    c756:	41 5c                	pop    r12
    c758:	c3                   	ret    
    c759:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    c760:	48 8d 3d 7f 38 00 00 	lea    rdi,[rip+0x387f]        # ffe6 <bit_mask+0x4f6>
    c767:	48 89 e9             	mov    rcx,rbp
    c76a:	ba 08 00 00 00       	mov    edx,0x8
    c76f:	be 01 00 00 00       	mov    esi,0x1
    c774:	e8 77 66 ff ff       	call   2df0 <fwrite@plt>
    c779:	e9 2b ff ff ff       	jmp    c6a9 <_asn1_create_static_structure+0x139>
    c77e:	66 90                	xchg   ax,ax

000000000000c780 <_asn1_delete_structure>:
    c780:	41 57                	push   r15
    c782:	41 56                	push   r14
    c784:	b8 02 00 00 00       	mov    eax,0x2
    c789:	41 55                	push   r13
    c78b:	41 54                	push   r12
    c78d:	55                   	push   rbp
    c78e:	53                   	push   rbx
    c78f:	48 83 ec 18          	sub    rsp,0x18
    c793:	48 8b 2e             	mov    rbp,QWORD PTR [rsi]
    c796:	48 85 ed             	test   rbp,rbp
    c799:	0f 84 c2 00 00 00    	je     c861 <_asn1_delete_structure+0xe1>
    c79f:	49 89 fd             	mov    r13,rdi
    c7a2:	49 89 f4             	mov    r12,rsi
    c7a5:	41 89 d6             	mov    r14d,edx
    c7a8:	49 89 ef             	mov    r15,rbp
    c7ab:	49 8b 5f 60          	mov    rbx,QWORD PTR [r15+0x60]
    c7af:	48 85 db             	test   rbx,rbx
    c7b2:	75 0f                	jne    c7c3 <_asn1_delete_structure+0x43>
    c7b4:	e9 dd 00 00 00       	jmp    c896 <_asn1_delete_structure+0x116>
    c7b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    c7c0:	48 89 c3             	mov    rbx,rax
    c7c3:	48 8b 43 60          	mov    rax,QWORD PTR [rbx+0x60]
    c7c7:	48 85 c0             	test   rax,rax
    c7ca:	75 f4                	jne    c7c0 <_asn1_delete_structure+0x40>
    c7cc:	48 39 dd             	cmp    rbp,rbx
    c7cf:	48 8b 73 68          	mov    rsi,QWORD PTR [rbx+0x68]
    c7d3:	74 53                	je     c828 <_asn1_delete_structure+0xa8>
    c7d5:	48 89 df             	mov    rdi,rbx
    c7d8:	48 89 74 24 08       	mov    QWORD PTR [rsp+0x8],rsi
    c7dd:	e8 be f0 ff ff       	call   b8a0 <_asn1_find_up>
    c7e2:	48 85 c0             	test   rax,rax
    c7e5:	49 89 c7             	mov    r15,rax
    c7e8:	74 12                	je     c7fc <_asn1_delete_structure+0x7c>
    c7ea:	48 8b 74 24 08       	mov    rsi,QWORD PTR [rsp+0x8]
    c7ef:	48 85 f6             	test   rsi,rsi
    c7f2:	48 89 70 60          	mov    QWORD PTR [rax+0x60],rsi
    c7f6:	74 04                	je     c7fc <_asn1_delete_structure+0x7c>
    c7f8:	48 89 46 70          	mov    QWORD PTR [rsi+0x70],rax
    c7fc:	4d 85 ed             	test   r13,r13
    c7ff:	74 0b                	je     c80c <_asn1_delete_structure+0x8c>
    c801:	48 89 de             	mov    rsi,rbx
    c804:	4c 89 ef             	mov    rdi,r13
    c807:	e8 c4 f0 ff ff       	call   b8d0 <_asn1_delete_node_from_list>
    c80c:	44 89 f6             	mov    esi,r14d
    c80f:	48 89 df             	mov    rdi,rbx
    c812:	e8 f9 ef ff ff       	call   b810 <_asn1_remove_node>
    c817:	4d 85 ff             	test   r15,r15
    c81a:	74 3b                	je     c857 <_asn1_delete_structure+0xd7>
    c81c:	49 8b 2c 24          	mov    rbp,QWORD PTR [r12]
    c820:	eb 89                	jmp    c7ab <_asn1_delete_structure+0x2b>
    c822:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    c828:	48 8b 7d 70          	mov    rdi,QWORD PTR [rbp+0x70]
    c82c:	48 85 ff             	test   rdi,rdi
    c82f:	74 3f                	je     c870 <_asn1_delete_structure+0xf0>
    c831:	48 3b 6f 60          	cmp    rbp,QWORD PTR [rdi+0x60]
    c835:	74 39                	je     c870 <_asn1_delete_structure+0xf0>
    c837:	e8 84 ef ff ff       	call   b7c0 <_asn1_set_right>
    c83c:	4d 85 ed             	test   r13,r13
    c83f:	74 0b                	je     c84c <_asn1_delete_structure+0xcc>
    c841:	48 89 ee             	mov    rsi,rbp
    c844:	4c 89 ef             	mov    rdi,r13
    c847:	e8 84 f0 ff ff       	call   b8d0 <_asn1_delete_node_from_list>
    c84c:	44 89 f6             	mov    esi,r14d
    c84f:	48 89 ef             	mov    rdi,rbp
    c852:	e8 b9 ef ff ff       	call   b810 <_asn1_remove_node>
    c857:	49 c7 04 24 00 00 00 	mov    QWORD PTR [r12],0x0
    c85e:	00 
    c85f:	31 c0                	xor    eax,eax
    c861:	48 83 c4 18          	add    rsp,0x18
    c865:	5b                   	pop    rbx
    c866:	5d                   	pop    rbp
    c867:	41 5c                	pop    r12
    c869:	41 5d                	pop    r13
    c86b:	41 5e                	pop    r14
    c86d:	41 5f                	pop    r15
    c86f:	c3                   	ret    
    c870:	48 89 ef             	mov    rdi,rbp
    c873:	48 89 74 24 08       	mov    QWORD PTR [rsp+0x8],rsi
    c878:	e8 23 f0 ff ff       	call   b8a0 <_asn1_find_up>
    c87d:	48 85 c0             	test   rax,rax
    c880:	48 8b 74 24 08       	mov    rsi,QWORD PTR [rsp+0x8]
    c885:	74 17                	je     c89e <_asn1_delete_structure+0x11e>
    c887:	48 85 f6             	test   rsi,rsi
    c88a:	48 89 70 60          	mov    QWORD PTR [rax+0x60],rsi
    c88e:	74 ac                	je     c83c <_asn1_delete_structure+0xbc>
    c890:	48 89 46 70          	mov    QWORD PTR [rsi+0x70],rax
    c894:	eb a6                	jmp    c83c <_asn1_delete_structure+0xbc>
    c896:	4c 89 fb             	mov    rbx,r15
    c899:	e9 2e ff ff ff       	jmp    c7cc <_asn1_delete_structure+0x4c>
    c89e:	48 8b 45 68          	mov    rax,QWORD PTR [rbp+0x68]
    c8a2:	48 85 c0             	test   rax,rax
    c8a5:	74 95                	je     c83c <_asn1_delete_structure+0xbc>
    c8a7:	48 c7 40 70 00 00 00 	mov    QWORD PTR [rax+0x70],0x0
    c8ae:	00 
    c8af:	eb 8b                	jmp    c83c <_asn1_delete_structure+0xbc>
    c8b1:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    c8b6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    c8bd:	00 00 00 

000000000000c8c0 <asn1_array2tree>:
    c8c0:	41 57                	push   r15
    c8c2:	41 56                	push   r14
    c8c4:	41 55                	push   r13
    c8c6:	41 54                	push   r12
    c8c8:	49 89 f4             	mov    r12,rsi
    c8cb:	55                   	push   rbp
    c8cc:	53                   	push   rbx
    c8cd:	48 83 ec 38          	sub    rsp,0x38
    c8d1:	64 48 8b 0c 25 28 00 	mov    rcx,QWORD PTR fs:0x28
    c8d8:	00 00 
    c8da:	48 89 4c 24 28       	mov    QWORD PTR [rsp+0x28],rcx
    c8df:	31 c9                	xor    ecx,ecx
    c8e1:	48 85 d2             	test   rdx,rdx
    c8e4:	48 89 54 24 18       	mov    QWORD PTR [rsp+0x18],rdx
    c8e9:	48 c7 44 24 20 00 00 	mov    QWORD PTR [rsp+0x20],0x0
    c8f0:	00 00 
    c8f2:	74 03                	je     c8f7 <asn1_array2tree+0x37>
    c8f4:	c6 02 00             	mov    BYTE PTR [rdx],0x0
    c8f7:	49 83 3c 24 00       	cmp    QWORD PTR [r12],0x0
    c8fc:	b8 11 00 00 00       	mov    eax,0x11
    c901:	74 23                	je     c926 <asn1_array2tree+0x66>
    c903:	48 8b 4c 24 28       	mov    rcx,QWORD PTR [rsp+0x28]
    c908:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
    c90f:	00 00 
    c911:	0f 85 8d 02 00 00    	jne    cba4 <asn1_array2tree+0x2e4>
    c917:	48 83 c4 38          	add    rsp,0x38
    c91b:	5b                   	pop    rbx
    c91c:	5d                   	pop    rbp
    c91d:	41 5c                	pop    r12
    c91f:	41 5d                	pop    r13
    c921:	41 5e                	pop    r14
    c923:	41 5f                	pop    r15
    c925:	c3                   	ret    
    c926:	48 8d 44 24 20       	lea    rax,[rsp+0x20]
    c92b:	48 8d 5f 10          	lea    rbx,[rdi+0x10]
    c92f:	41 be 01 00 00 00    	mov    r14d,0x1
    c935:	45 31 ed             	xor    r13d,r13d
    c938:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
    c93d:	eb 1a                	jmp    c959 <asn1_array2tree+0x99>
    c93f:	90                   	nop
    c940:	81 e5 00 00 00 40    	and    ebp,0x40000000
    c946:	0f 84 a4 00 00 00    	je     c9f0 <asn1_array2tree+0x130>
    c94c:	41 be 02 00 00 00    	mov    r14d,0x2
    c952:	48 83 c3 18          	add    rbx,0x18
    c956:	4d 89 fd             	mov    r13,r15
    c959:	48 83 3b 00          	cmp    QWORD PTR [rbx],0x0
    c95d:	8b 6b f8             	mov    ebp,DWORD PTR [rbx-0x8]
    c960:	0f 84 4a 01 00 00    	je     cab0 <asn1_array2tree+0x1f0>
    c966:	40 80 fd 11          	cmp    bpl,0x11
    c96a:	0f 84 f0 00 00 00    	je     ca60 <asn1_array2tree+0x1a0>
    c970:	48 8b 7c 24 10       	mov    rdi,QWORD PTR [rsp+0x10]
    c975:	89 ee                	mov    esi,ebp
    c977:	81 e6 ff ff ff df    	and    esi,0xdfffffff
    c97d:	e8 ce e7 ff ff       	call   b150 <_asn1_add_static_node>
    c982:	48 8b 73 f0          	mov    rsi,QWORD PTR [rbx-0x10]
    c986:	49 89 c7             	mov    r15,rax
    c989:	48 85 f6             	test   rsi,rsi
    c98c:	74 08                	je     c996 <asn1_array2tree+0xd6>
    c98e:	48 89 c7             	mov    rdi,rax
    c991:	e8 7a ed ff ff       	call   b710 <_asn1_set_name>
    c996:	48 8b 33             	mov    rsi,QWORD PTR [rbx]
    c999:	48 85 f6             	test   rsi,rsi
    c99c:	74 1d                	je     c9bb <asn1_array2tree+0xfb>
    c99e:	48 89 f7             	mov    rdi,rsi
    c9a1:	48 89 74 24 08       	mov    QWORD PTR [rsp+0x8],rsi
    c9a6:	e8 15 62 ff ff       	call   2bc0 <strlen@plt>
    c9ab:	48 8b 74 24 08       	mov    rsi,QWORD PTR [rsp+0x8]
    c9b0:	8d 50 01             	lea    edx,[rax+0x1]
    c9b3:	4c 89 ff             	mov    rdi,r15
    c9b6:	e8 a5 ea ff ff       	call   b460 <_asn1_set_value>
    c9bb:	49 83 3c 24 00       	cmp    QWORD PTR [r12],0x0
    c9c0:	0f 84 3a 01 00 00    	je     cb00 <asn1_array2tree+0x240>
    c9c6:	41 83 fe 03          	cmp    r14d,0x3
    c9ca:	74 64                	je     ca30 <asn1_array2tree+0x170>
    c9cc:	41 83 fe 02          	cmp    r14d,0x2
    c9d0:	0f 84 aa 00 00 00    	je     ca80 <asn1_array2tree+0x1c0>
    c9d6:	f7 c5 00 00 00 20    	test   ebp,0x20000000
    c9dc:	0f 84 5e ff ff ff    	je     c940 <asn1_array2tree+0x80>
    c9e2:	41 be 03 00 00 00    	mov    r14d,0x3
    c9e8:	e9 65 ff ff ff       	jmp    c952 <asn1_array2tree+0x92>
    c9ed:	0f 1f 00             	nop    DWORD PTR [rax]
	
    c9f0:	4d 3b 3c 24          	cmp    r15,QWORD PTR [r12]
    c9f4:	0f 84 58 ff ff ff    	je     c952 <asn1_array2tree+0x92>
    c9fa:	4c 89 ff             	mov    rdi,r15
    c9fd:	e8 9e ee ff ff       	call   b8a0 <_asn1_find_up>
    ca02:	48 85 c0             	test   rax,rax
    ca05:	49 89 c7             	mov    r15,rax
    ca08:	0f 84 44 ff ff ff    	je     c952 <asn1_array2tree+0x92>
    ca0e:	8b 40 48             	mov    eax,DWORD PTR [rax+0x48]
    ca11:	a9 00 00 00 40       	test   eax,0x40000000
    ca16:	74 d8                	je     c9f0 <asn1_array2tree+0x130>
	
    ca18:	25 ff ff ff bf       	and    eax,0xbfffffff
    ca1d:	41 be 02 00 00 00    	mov    r14d,0x2
    ca23:	41 89 47 48          	mov    DWORD PTR [r15+0x48],eax
    ca27:	e9 26 ff ff ff       	jmp    c952 <asn1_array2tree+0x92>
    ca2c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    ca30:	4d 85 ed             	test   r13,r13
    ca33:	74 a1                	je     c9d6 <asn1_array2tree+0x116>
    ca35:	49 83 7d 60 00       	cmp    QWORD PTR [r13+0x60],0x0
    ca3a:	74 10                	je     ca4c <asn1_array2tree+0x18c>
    ca3c:	48 8b 7c 24 20       	mov    rdi,QWORD PTR [rsp+0x20]
    ca41:	49 8d 75 60          	lea    rsi,[r13+0x60]
    ca45:	31 d2                	xor    edx,edx
    ca47:	e8 34 fd ff ff       	call   c780 <_asn1_delete_structure>
    ca4c:	4d 85 ff             	test   r15,r15
    ca4f:	4d 89 7d 60          	mov    QWORD PTR [r13+0x60],r15
    ca53:	74 81                	je     c9d6 <asn1_array2tree+0x116>
    ca55:	4d 89 6f 70          	mov    QWORD PTR [r15+0x70],r13
    ca59:	e9 78 ff ff ff       	jmp    c9d6 <asn1_array2tree+0x116>
    ca5e:	66 90                	xchg   ax,ax
    ca60:	89 e8                	mov    eax,ebp
    ca62:	81 e5 00 ff 7f fe    	and    ebp,0xfe7fff00
    ca68:	c1 e0 07             	shl    eax,0x7
    ca6b:	c1 f8 1f             	sar    eax,0x1f
    ca6e:	83 c0 25             	add    eax,0x25
    ca71:	09 c5                	or     ebp,eax
    ca73:	e9 f8 fe ff ff       	jmp    c970 <asn1_array2tree+0xb0>
    ca78:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    ca7f:	00 
    ca80:	4d 85 ed             	test   r13,r13
    ca83:	74 17                	je     ca9c <asn1_array2tree+0x1dc>
    ca85:	49 83 7d 68 00       	cmp    QWORD PTR [r13+0x68],0x0
    ca8a:	74 10                	je     ca9c <asn1_array2tree+0x1dc>
    ca8c:	48 8b 7c 24 20       	mov    rdi,QWORD PTR [rsp+0x20]
    ca91:	49 8d 75 68          	lea    rsi,[r13+0x68]
    ca95:	31 d2                	xor    edx,edx
    ca97:	e8 e4 fc ff ff       	call   c780 <_asn1_delete_structure>
    ca9c:	4c 89 fe             	mov    rsi,r15
    ca9f:	4c 89 ef             	mov    rdi,r13
    caa2:	e8 19 ed ff ff       	call   b7c0 <_asn1_set_right>
    caa7:	e9 2a ff ff ff       	jmp    c9d6 <asn1_array2tree+0x116>
    caac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    cab0:	85 ed                	test   ebp,ebp
    cab2:	0f 85 ae fe ff ff    	jne    c966 <asn1_array2tree+0xa6>
    cab8:	48 83 7b f0 00       	cmp    QWORD PTR [rbx-0x10],0x0
    cabd:	0f 85 ad fe ff ff    	jne    c970 <asn1_array2tree+0xb0>
    cac3:	4d 3b 2c 24          	cmp    r13,QWORD PTR [r12]
    cac7:	74 40                	je     cb09 <asn1_array2tree+0x249>
    cac9:	48 83 7c 24 18 00    	cmp    QWORD PTR [rsp+0x18],0x0
    cacf:	bb 10 00 00 00       	mov    ebx,0x10
    cad4:	0f 84 8b 00 00 00    	je     cb65 <asn1_array2tree+0x2a5>
    cada:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
    cadf:	c6 00 00             	mov    BYTE PTR [rax],0x0
    cae2:	85 db                	test   ebx,ebx
    cae4:	75 7f                	jne    cb65 <asn1_array2tree+0x2a5>
    cae6:	48 8b 7c 24 20       	mov    rdi,QWORD PTR [rsp+0x20]
    caeb:	e8 10 ee ff ff       	call   b900 <_asn1_delete_list>
    caf0:	31 c0                	xor    eax,eax
    caf2:	e9 0c fe ff ff       	jmp    c903 <asn1_array2tree+0x43>
    caf7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    cafe:	00 00 
    cb00:	4d 89 3c 24          	mov    QWORD PTR [r12],r15
    cb04:	e9 bd fe ff ff       	jmp    c9c6 <asn1_array2tree+0x106>
    cb09:	4c 89 ef             	mov    rdi,r13
    cb0c:	e8 9f f6 ff ff       	call   c1b0 <_asn1_check_identifier>
    cb11:	85 c0                	test   eax,eax
    cb13:	89 c3                	mov    ebx,eax
    cb15:	74 67                	je     cb7e <asn1_array2tree+0x2be>
    cb17:	48 83 7c 24 18 00    	cmp    QWORD PTR [rsp+0x18],0x0
    cb1d:	74 46                	je     cb65 <asn1_array2tree+0x2a5>
    cb1f:	83 fb 03             	cmp    ebx,0x3
    cb22:	75 b6                	jne    cada <asn1_array2tree+0x21a>
    cb24:	4c 8b 74 24 18       	mov    r14,QWORD PTR [rsp+0x18]
    cb29:	48 8d 15 d7 34 00 00 	lea    rdx,[rip+0x34d7]        # 10007 <bit_mask+0x517>
    cb30:	be 80 00 00 00       	mov    esi,0x80
    cb35:	4c 89 f7             	mov    rdi,r14
    cb38:	e8 93 e5 ff ff       	call   b0d0 <_asn1_str_cpy>
    cb3d:	48 8d 15 5c 68 20 00 	lea    rdx,[rip+0x20685c]        # 2133a0 <_asn1_identifierMissing>
    cb44:	be 80 00 00 00       	mov    esi,0x80
    cb49:	4c 89 f7             	mov    rdi,r14
    cb4c:	e8 ff e4 ff ff       	call   b050 <_asn1_str_cat>
    cb51:	48 8d 15 2e 2d 00 00 	lea    rdx,[rip+0x2d2e]        # f886 <yytranslate+0x146>
    cb58:	be 80 00 00 00       	mov    esi,0x80
    cb5d:	4c 89 f7             	mov    rdi,r14
    cb60:	e8 eb e4 ff ff       	call   b050 <_asn1_str_cat>
    cb65:	48 8b 7c 24 20       	mov    rdi,QWORD PTR [rsp+0x20]
    cb6a:	e8 c1 ed ff ff       	call   b930 <_asn1_delete_list_and_nodes>
    cb6f:	49 c7 04 24 00 00 00 	mov    QWORD PTR [r12],0x0
    cb76:	00 
    cb77:	89 d8                	mov    eax,ebx
    cb79:	e9 85 fd ff ff       	jmp    c903 <asn1_array2tree+0x43>
    cb7e:	49 8b 3c 24          	mov    rdi,QWORD PTR [r12]
    cb82:	e8 b9 ee ff ff       	call   ba40 <_asn1_change_integer_value>
    cb87:	49 8b 34 24          	mov    rsi,QWORD PTR [r12]
    cb8b:	48 8d 7c 24 20       	lea    rdi,[rsp+0x20]
    cb90:	e8 db ef ff ff       	call   bb70 <_asn1_expand_object_id>
    cb95:	48 83 7c 24 18 00    	cmp    QWORD PTR [rsp+0x18],0x0
    cb9b:	89 c3                	mov    ebx,eax
    cb9d:	75 80                	jne    cb1f <asn1_array2tree+0x25f>
    cb9f:	e9 3e ff ff ff       	jmp    cae2 <asn1_array2tree+0x222>
    cba4:	e8 27 60 ff ff       	call   2bd0 <__stack_chk_fail@plt>
    cba9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

000000000000cbb0 <asn1_delete_structure>:
    cbb0:	48 89 fe             	mov    rsi,rdi
    cbb3:	31 d2                	xor    edx,edx
    cbb5:	31 ff                	xor    edi,edi
    cbb7:	e9 c4 fb ff ff       	jmp    c780 <_asn1_delete_structure>
    cbbc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

000000000000cbc0 <asn1_delete_structure2>:
    cbc0:	89 f2                	mov    edx,esi
    cbc2:	48 89 fe             	mov    rsi,rdi
    cbc5:	31 ff                	xor    edi,edi
    cbc7:	e9 b4 fb ff ff       	jmp    c780 <_asn1_delete_structure>
    cbcc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

000000000000cbd0 <asn1_delete_element>:
    cbd0:	53                   	push   rbx
    cbd1:	48 83 ec 10          	sub    rsp,0x10
    cbd5:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    cbdc:	00 00 
    cbde:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    cbe3:	31 c0                	xor    eax,eax
    cbe5:	e8 46 5f ff ff       	call   2b30 <asn1_find_node@plt>
    cbea:	48 89 c2             	mov    rdx,rax
    cbed:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    cbf1:	b8 02 00 00 00       	mov    eax,0x2
    cbf6:	48 85 d2             	test   rdx,rdx
    cbf9:	74 23                	je     cc1e <asn1_delete_element+0x4e>
    cbfb:	48 8b 7a 70          	mov    rdi,QWORD PTR [rdx+0x70]
    cbff:	48 8b 5a 68          	mov    rbx,QWORD PTR [rdx+0x68]
    cc03:	48 85 ff             	test   rdi,rdi
    cc06:	74 30                	je     cc38 <asn1_delete_element+0x68>
    cc08:	48 3b 57 60          	cmp    rdx,QWORD PTR [rdi+0x60]
    cc0c:	74 2a                	je     cc38 <asn1_delete_element+0x68>
    cc0e:	48 89 de             	mov    rsi,rbx
    cc11:	e8 aa eb ff ff       	call   b7c0 <_asn1_set_right>
    cc16:	48 89 e7             	mov    rdi,rsp
    cc19:	e8 12 60 ff ff       	call   2c30 <asn1_delete_structure@plt>
    cc1e:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    cc23:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
    cc2a:	00 00 
    cc2c:	75 41                	jne    cc6f <asn1_delete_element+0x9f>
    cc2e:	48 83 c4 10          	add    rsp,0x10
    cc32:	5b                   	pop    rbx
    cc33:	c3                   	ret    
    cc34:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    cc38:	48 89 d7             	mov    rdi,rdx
    cc3b:	e8 60 ec ff ff       	call   b8a0 <_asn1_find_up>
    cc40:	48 85 c0             	test   rax,rax
    cc43:	74 13                	je     cc58 <asn1_delete_element+0x88>
    cc45:	48 85 db             	test   rbx,rbx
    cc48:	48 89 58 60          	mov    QWORD PTR [rax+0x60],rbx
    cc4c:	74 c8                	je     cc16 <asn1_delete_element+0x46>
    cc4e:	48 89 43 70          	mov    QWORD PTR [rbx+0x70],rax
    cc52:	eb c2                	jmp    cc16 <asn1_delete_element+0x46>
    cc54:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    cc58:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    cc5c:	48 8b 40 68          	mov    rax,QWORD PTR [rax+0x68]
    cc60:	48 85 c0             	test   rax,rax
    cc63:	74 b1                	je     cc16 <asn1_delete_element+0x46>
    cc65:	48 c7 40 70 00 00 00 	mov    QWORD PTR [rax+0x70],0x0
    cc6c:	00 
    cc6d:	eb a7                	jmp    cc16 <asn1_delete_element+0x46>
    cc6f:	e8 5c 5f ff ff       	call   2bd0 <__stack_chk_fail@plt>
    cc74:	66 90                	xchg   ax,ax
    cc76:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    cc7d:	00 00 00 

000000000000cc80 <_asn1_copy_structure3>:
    cc80:	48 85 ff             	test   rdi,rdi
    cc83:	0f 84 87 01 00 00    	je     ce10 <_asn1_copy_structure3+0x190>
    cc89:	41 57                	push   r15
    cc8b:	41 56                	push   r14
    cc8d:	be 98 00 00 00       	mov    esi,0x98
    cc92:	41 55                	push   r13
    cc94:	41 54                	push   r12
    cc96:	49 89 fc             	mov    r12,rdi
    cc99:	55                   	push   rbp
    cc9a:	53                   	push   rbx
    cc9b:	48 83 ec 08          	sub    rsp,0x8
    cc9f:	8b 5f 48             	mov    ebx,DWORD PTR [rdi+0x48]
    cca2:	bf 01 00 00 00       	mov    edi,0x1
    cca7:	e8 04 60 ff ff       	call   2cb0 <calloc@plt>
    ccac:	48 85 c0             	test   rax,rax
    ccaf:	49 89 c6             	mov    r14,rax
    ccb2:	74 03                	je     ccb7 <_asn1_copy_structure3+0x37>
    ccb4:	89 58 48             	mov    DWORD PTR [rax+0x48],ebx
    ccb7:	4c 89 f5             	mov    rbp,r14
    ccba:	4c 89 e3             	mov    rbx,r12
    ccbd:	41 bd 03 00 00 00    	mov    r13d,0x3
    ccc3:	eb 64                	jmp    cd29 <_asn1_copy_structure3+0xa9>
    ccc5:	0f 1f 00             	nop    DWORD PTR [rax]
    ccc8:	80 3b 00             	cmp    BYTE PTR [rbx],0x0
    cccb:	0f 85 df 00 00 00    	jne    cdb0 <_asn1_copy_structure3+0x130>
    ccd1:	48 8b 73 50          	mov    rsi,QWORD PTR [rbx+0x50]
    ccd5:	48 85 f6             	test   rsi,rsi
    ccd8:	74 0b                	je     cce5 <_asn1_copy_structure3+0x65>
    ccda:	8b 53 58             	mov    edx,DWORD PTR [rbx+0x58]
    ccdd:	48 89 ef             	mov    rdi,rbp
    cce0:	e8 7b e7 ff ff       	call   b460 <_asn1_set_value>
    cce5:	4c 8b 7b 60          	mov    r15,QWORD PTR [rbx+0x60]
    cce9:	4d 85 ff             	test   r15,r15
    ccec:	0f 84 9e 00 00 00    	je     cd90 <_asn1_copy_structure3+0x110>
    ccf2:	be 98 00 00 00       	mov    esi,0x98
    ccf7:	bf 01 00 00 00       	mov    edi,0x1
    ccfc:	41 8b 5f 48          	mov    ebx,DWORD PTR [r15+0x48]
    cd00:	e8 ab 5f ff ff       	call   2cb0 <calloc@plt>
    cd05:	48 85 c0             	test   rax,rax
    cd08:	0f 84 b2 00 00 00    	je     cdc0 <_asn1_copy_structure3+0x140>
    cd0e:	48 85 ed             	test   rbp,rbp
    cd11:	89 58 48             	mov    DWORD PTR [rax+0x48],ebx
    cd14:	74 08                	je     cd1e <_asn1_copy_structure3+0x9e>
    cd16:	48 89 45 60          	mov    QWORD PTR [rbp+0x60],rax
    cd1a:	48 89 68 70          	mov    QWORD PTR [rax+0x70],rbp
    cd1e:	48 89 c5             	mov    rbp,rax
    cd21:	4c 89 fb             	mov    rbx,r15
    cd24:	4c 39 e3             	cmp    rbx,r12
    cd27:	74 53                	je     cd7c <_asn1_copy_structure3+0xfc>
    cd29:	41 83 fd 01          	cmp    r13d,0x1
    cd2d:	75 99                	jne    ccc8 <_asn1_copy_structure3+0x48>
    cd2f:	4c 39 e3             	cmp    rbx,r12
    cd32:	74 48                	je     cd7c <_asn1_copy_structure3+0xfc>
    cd34:	4c 8b 6b 68          	mov    r13,QWORD PTR [rbx+0x68]
    cd38:	4d 85 ed             	test   r13,r13
    cd3b:	0f 84 9f 00 00 00    	je     cde0 <_asn1_copy_structure3+0x160>
    cd41:	be 98 00 00 00       	mov    esi,0x98
    cd46:	bf 01 00 00 00       	mov    edi,0x1
    cd4b:	45 8b 7d 48          	mov    r15d,DWORD PTR [r13+0x48]
    cd4f:	e8 5c 5f ff ff       	call   2cb0 <calloc@plt>
    cd54:	48 85 c0             	test   rax,rax
    cd57:	48 89 c3             	mov    rbx,rax
    cd5a:	74 04                	je     cd60 <_asn1_copy_structure3+0xe0>
    cd5c:	44 89 78 48          	mov    DWORD PTR [rax+0x48],r15d
    cd60:	48 89 de             	mov    rsi,rbx
    cd63:	48 89 ef             	mov    rdi,rbp
    cd66:	48 89 dd             	mov    rbp,rbx
    cd69:	4c 89 eb             	mov    rbx,r13
    cd6c:	41 bd 02 00 00 00    	mov    r13d,0x2
    cd72:	e8 49 ea ff ff       	call   b7c0 <_asn1_set_right>
    cd77:	4c 39 e3             	cmp    rbx,r12
    cd7a:	75 ad                	jne    cd29 <_asn1_copy_structure3+0xa9>
    cd7c:	48 83 c4 08          	add    rsp,0x8
    cd80:	4c 89 f0             	mov    rax,r14
    cd83:	5b                   	pop    rbx
    cd84:	5d                   	pop    rbp
    cd85:	41 5c                	pop    r12
    cd87:	41 5d                	pop    r13
    cd89:	41 5e                	pop    r14
    cd8b:	41 5f                	pop    r15
    cd8d:	c3                   	ret    
    cd8e:	66 90                	xchg   ax,ax
    cd90:	8b 83 8c 00 00 00    	mov    eax,DWORD PTR [rbx+0x8c]
    cd96:	89 85 8c 00 00 00    	mov    DWORD PTR [rbp+0x8c],eax
    cd9c:	8b 83 90 00 00 00    	mov    eax,DWORD PTR [rbx+0x90]
    cda2:	89 85 90 00 00 00    	mov    DWORD PTR [rbp+0x90],eax
    cda8:	eb 85                	jmp    cd2f <_asn1_copy_structure3+0xaf>
    cdaa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    cdb0:	48 89 de             	mov    rsi,rbx
    cdb3:	48 89 ef             	mov    rdi,rbp
    cdb6:	e8 b5 e9 ff ff       	call   b770 <_asn1_cpy_name>
    cdbb:	e9 11 ff ff ff       	jmp    ccd1 <_asn1_copy_structure3+0x51>
    cdc0:	48 85 ed             	test   rbp,rbp
    cdc3:	74 43                	je     ce08 <_asn1_copy_structure3+0x188>
    cdc5:	48 c7 45 60 00 00 00 	mov    QWORD PTR [rbp+0x60],0x0
    cdcc:	00 
    cdcd:	4c 89 fb             	mov    rbx,r15
    cdd0:	31 ed                	xor    ebp,ebp
    cdd2:	e9 4d ff ff ff       	jmp    cd24 <_asn1_copy_structure3+0xa4>
    cdd7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    cdde:	00 00 
    cde0:	48 89 df             	mov    rdi,rbx
    cde3:	41 bd 01 00 00 00    	mov    r13d,0x1
    cde9:	e8 b2 ea ff ff       	call   b8a0 <_asn1_find_up>
    cdee:	48 89 ef             	mov    rdi,rbp
    cdf1:	48 89 c3             	mov    rbx,rax
    cdf4:	e8 a7 ea ff ff       	call   b8a0 <_asn1_find_up>
    cdf9:	48 89 c5             	mov    rbp,rax
    cdfc:	e9 23 ff ff ff       	jmp    cd24 <_asn1_copy_structure3+0xa4>
    ce01:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    ce08:	4c 89 fb             	mov    rbx,r15
    ce0b:	e9 14 ff ff ff       	jmp    cd24 <_asn1_copy_structure3+0xa4>
    ce10:	31 c0                	xor    eax,eax
    ce12:	c3                   	ret    
    ce13:	0f 1f 00             	nop    DWORD PTR [rax]
    ce16:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    ce1d:	00 00 00 

000000000000ce20 <asn1_create_element>:
    ce20:	41 57                	push   r15
    ce22:	41 56                	push   r14
    ce24:	41 55                	push   r13
    ce26:	41 54                	push   r12
    ce28:	49 89 fc             	mov    r12,rdi
    ce2b:	55                   	push   rbp
    ce2c:	53                   	push   rbx
    ce2d:	41 bd 02 00 00 00    	mov    r13d,0x2
    ce33:	48 83 ec 78          	sub    rsp,0x78
    ce37:	48 89 14 24          	mov    QWORD PTR [rsp],rdx
    ce3b:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    ce42:	00 00 
    ce44:	48 89 44 24 68       	mov    QWORD PTR [rsp+0x68],rax
    ce49:	31 c0                	xor    eax,eax
    ce4b:	e8 e0 5c ff ff       	call   2b30 <asn1_find_node@plt>
    ce50:	48 89 c7             	mov    rdi,rax
    ce53:	e8 28 fe ff ff       	call   cc80 <_asn1_copy_structure3>
    ce58:	48 85 c0             	test   rax,rax
    ce5b:	0f 84 bf 00 00 00    	je     cf20 <asn1_create_element+0x100>
    ce61:	48 8d 35 5c 31 00 00 	lea    rsi,[rip+0x315c]        # ffc4 <bit_mask+0x4d4>
    ce68:	48 89 c5             	mov    rbp,rax
    ce6b:	48 89 c7             	mov    rdi,rax
    ce6e:	4c 8d 6c 24 20       	lea    r13,[rsp+0x20]
    ce73:	48 89 eb             	mov    rbx,rbp
    ce76:	e8 95 e8 ff ff       	call   b710 <_asn1_set_name>
    ce7b:	b8 03 00 00 00       	mov    eax,0x3
    ce80:	48 39 dd             	cmp    rbp,rbx
    ce83:	74 2e                	je     ceb3 <asn1_create_element+0x93>
    ce85:	83 f8 01             	cmp    eax,0x1
    ce88:	74 46                	je     ced0 <asn1_create_element+0xb0>
    ce8a:	80 7b 48 02          	cmp    BYTE PTR [rbx+0x48],0x2
    ce8e:	0f 84 bc 00 00 00    	je     cf50 <asn1_create_element+0x130>
    ce94:	48 8b 43 60          	mov    rax,QWORD PTR [rbx+0x60]
    ce98:	48 85 c0             	test   rax,rax
    ce9b:	74 23                	je     cec0 <asn1_create_element+0xa0>
    ce9d:	48 39 c5             	cmp    rbp,rax
    cea0:	0f 84 ea 03 00 00    	je     d290 <asn1_create_element+0x470>
    cea6:	48 89 c3             	mov    rbx,rax
    cea9:	b8 03 00 00 00       	mov    eax,0x3
    ceae:	48 39 dd             	cmp    rbp,rbx
    ceb1:	75 d2                	jne    ce85 <asn1_create_element+0x65>
    ceb3:	83 f8 01             	cmp    eax,0x1
    ceb6:	75 d2                	jne    ce8a <asn1_create_element+0x6a>
    ceb8:	45 31 ed             	xor    r13d,r13d
    cebb:	e9 16 02 00 00       	jmp    d0d6 <asn1_create_element+0x2b6>
    cec0:	48 39 dd             	cmp    rbp,rbx
    cec3:	75 0b                	jne    ced0 <asn1_create_element+0xb0>
    cec5:	b8 01 00 00 00       	mov    eax,0x1
    ceca:	eb b4                	jmp    ce80 <asn1_create_element+0x60>
    cecc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    ced0:	48 8b 43 68          	mov    rax,QWORD PTR [rbx+0x68]
    ced4:	48 85 c0             	test   rax,rax
    ced7:	74 0f                	je     cee8 <asn1_create_element+0xc8>
    ced9:	48 89 c3             	mov    rbx,rax
    cedc:	b8 02 00 00 00       	mov    eax,0x2
    cee1:	eb 9d                	jmp    ce80 <asn1_create_element+0x60>
    cee3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    cee8:	48 89 df             	mov    rdi,rbx
    ceeb:	e8 b0 e9 ff ff       	call   b8a0 <_asn1_find_up>
    cef0:	48 89 c3             	mov    rbx,rax
    cef3:	b8 01 00 00 00       	mov    eax,0x1
    cef8:	eb 86                	jmp    ce80 <asn1_create_element+0x60>
    cefa:	80 e6 df             	and    dh,0xdf
    cefd:	48 c7 44 24 18 00 00 	mov    QWORD PTR [rsp+0x18],0x0
    cf04:	00 00 
    cf06:	41 89 54 24 48       	mov    DWORD PTR [r12+0x48],edx
    cf0b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    cf10:	4c 39 e5             	cmp    rbp,r12
    cf13:	0f 85 5a 03 00 00    	jne    d273 <asn1_create_element+0x453>
    cf19:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    cf1d:	48 89 28             	mov    QWORD PTR [rax],rbp
    cf20:	48 8b 4c 24 68       	mov    rcx,QWORD PTR [rsp+0x68]
    cf25:	64 48 33 0c 25 28 00 	xor    rcx,QWORD PTR fs:0x28
    cf2c:	00 00 
    cf2e:	44 89 e8             	mov    eax,r13d
    cf31:	0f 85 61 03 00 00    	jne    d298 <asn1_create_element+0x478>
    cf37:	48 83 c4 78          	add    rsp,0x78
    cf3b:	5b                   	pop    rbx
    cf3c:	5d                   	pop    rbp
    cf3d:	41 5c                	pop    r12
    cf3f:	41 5d                	pop    r13
    cf41:	41 5e                	pop    r14
    cf43:	41 5f                	pop    r15
    cf45:	c3                   	ret    
    cf46:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    cf4d:	00 00 00 
    cf50:	48 83 ec 08          	sub    rsp,0x8
    cf54:	4c 8d 05 5f 2d 00 00 	lea    r8,[rip+0x2d5f]        # fcba <bit_mask+0x1ca>
    cf5b:	ff 73 50             	push   QWORD PTR [rbx+0x50]
    cf5e:	ba 01 00 00 00       	mov    edx,0x1
    cf63:	4d 89 e1             	mov    r9,r12
    cf66:	b9 42 00 00 00       	mov    ecx,0x42
    cf6b:	be 42 00 00 00       	mov    esi,0x42
    cf70:	4c 89 ef             	mov    rdi,r13
    cf73:	31 c0                	xor    eax,eax
    cf75:	e8 86 5b ff ff       	call   2b00 <__snprintf_chk@plt>
    cf7a:	4c 89 ee             	mov    rsi,r13
    cf7d:	4c 89 e7             	mov    rdi,r12
    cf80:	e8 ab 5b ff ff       	call   2b30 <asn1_find_node@plt>
    cf85:	48 89 c7             	mov    rdi,rax
    cf88:	e8 f3 fc ff ff       	call   cc80 <_asn1_copy_structure3>
    cf8d:	49 89 c7             	mov    r15,rax
    cf90:	4d 85 ff             	test   r15,r15
    cf93:	58                   	pop    rax
    cf94:	5a                   	pop    rdx
    cf95:	0f 84 35 01 00 00    	je     d0d0 <asn1_create_element+0x2b0>
    cf9b:	48 89 de             	mov    rsi,rbx
    cf9e:	4c 89 ff             	mov    rdi,r15
    cfa1:	e8 ca e7 ff ff       	call   b770 <_asn1_cpy_name>
    cfa6:	48 8b 43 68          	mov    rax,QWORD PTR [rbx+0x68]
    cfaa:	49 89 47 68          	mov    QWORD PTR [r15+0x68],rax
    cfae:	48 8b 43 70          	mov    rax,QWORD PTR [rbx+0x70]
    cfb2:	49 89 47 70          	mov    QWORD PTR [r15+0x70],rax
    cfb6:	48 8b 43 68          	mov    rax,QWORD PTR [rbx+0x68]
    cfba:	48 85 c0             	test   rax,rax
    cfbd:	74 04                	je     cfc3 <asn1_create_element+0x1a3>
    cfbf:	4c 89 78 70          	mov    QWORD PTR [rax+0x70],r15
    cfc3:	48 8b 7b 60          	mov    rdi,QWORD PTR [rbx+0x60]
    cfc7:	48 85 ff             	test   rdi,rdi
    cfca:	0f 85 ab 00 00 00    	jne    d07b <asn1_create_element+0x25b>
    cfd0:	48 8b 7b 70          	mov    rdi,QWORD PTR [rbx+0x70]
    cfd4:	48 85 ff             	test   rdi,rdi
    cfd7:	0f 84 d2 00 00 00    	je     d0af <asn1_create_element+0x28f>
    cfdd:	48 3b 5f 60          	cmp    rbx,QWORD PTR [rdi+0x60]
    cfe1:	0f 84 c8 00 00 00    	je     d0af <asn1_create_element+0x28f>
    cfe7:	4c 89 fe             	mov    rsi,r15
    cfea:	e8 d1 e7 ff ff       	call   b7c0 <_asn1_set_right>
    cfef:	8b 43 48             	mov    eax,DWORD PTR [rbx+0x48]
    cff2:	a9 00 00 20 00       	test   eax,0x200000
    cff7:	74 0b                	je     d004 <asn1_create_element+0x1e4>
    cff9:	41 81 4f 48 00 00 20 	or     DWORD PTR [r15+0x48],0x200000
    d000:	00 
    d001:	8b 43 48             	mov    eax,DWORD PTR [rbx+0x48]
    d004:	f6 c4 20             	test   ah,0x20
    d007:	74 0b                	je     d014 <asn1_create_element+0x1f4>
    d009:	41 81 4f 48 00 20 00 	or     DWORD PTR [r15+0x48],0x2000
    d010:	00 
    d011:	8b 43 48             	mov    eax,DWORD PTR [rbx+0x48]
    d014:	f6 c4 40             	test   ah,0x40
    d017:	74 0b                	je     d024 <asn1_create_element+0x204>
    d019:	41 81 4f 48 00 40 00 	or     DWORD PTR [r15+0x48],0x4000
    d020:	00 
    d021:	8b 43 48             	mov    eax,DWORD PTR [rbx+0x48]
    d024:	f6 c4 80             	test   ah,0x80
    d027:	74 0b                	je     d034 <asn1_create_element+0x214>
    d029:	41 81 4f 48 00 80 00 	or     DWORD PTR [r15+0x48],0x8000
    d030:	00 
    d031:	8b 43 48             	mov    eax,DWORD PTR [rbx+0x48]
    d034:	a9 00 00 00 08       	test   eax,0x8000000
    d039:	74 0b                	je     d046 <asn1_create_element+0x226>
    d03b:	41 81 4f 48 00 00 00 	or     DWORD PTR [r15+0x48],0x8000000
    d042:	08 
    d043:	8b 43 48             	mov    eax,DWORD PTR [rbx+0x48]
    d046:	a9 00 00 00 04       	test   eax,0x4000000
    d04b:	74 08                	je     d055 <asn1_create_element+0x235>
    d04d:	41 81 4f 48 00 00 00 	or     DWORD PTR [r15+0x48],0x4000000
    d054:	04 
    d055:	48 39 dd             	cmp    rbp,rbx
    d058:	48 89 df             	mov    rdi,rbx
    d05b:	4c 89 fb             	mov    rbx,r15
    d05e:	49 0f 44 ef          	cmove  rbp,r15
    d062:	31 f6                	xor    esi,esi
    d064:	e8 a7 e7 ff ff       	call   b810 <_asn1_remove_node>
    d069:	b8 03 00 00 00       	mov    eax,0x3
    d06e:	e9 0d fe ff ff       	jmp    ce80 <asn1_create_element+0x60>
    d073:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    d078:	48 89 c7             	mov    rdi,rax
    d07b:	48 8b 47 68          	mov    rax,QWORD PTR [rdi+0x68]
    d07f:	48 85 c0             	test   rax,rax
    d082:	75 f4                	jne    d078 <asn1_create_element+0x258>
    d084:	49 8b 77 60          	mov    rsi,QWORD PTR [r15+0x60]
    d088:	e8 33 e7 ff ff       	call   b7c0 <_asn1_set_right>
    d08d:	48 8b 43 60          	mov    rax,QWORD PTR [rbx+0x60]
    d091:	48 85 c0             	test   rax,rax
    d094:	49 89 47 60          	mov    QWORD PTR [r15+0x60],rax
    d098:	0f 84 32 ff ff ff    	je     cfd0 <asn1_create_element+0x1b0>
    d09e:	4c 89 78 70          	mov    QWORD PTR [rax+0x70],r15
    d0a2:	48 8b 7b 70          	mov    rdi,QWORD PTR [rbx+0x70]
    d0a6:	48 85 ff             	test   rdi,rdi
    d0a9:	0f 85 2e ff ff ff    	jne    cfdd <asn1_create_element+0x1bd>
    d0af:	48 89 df             	mov    rdi,rbx
    d0b2:	e8 e9 e7 ff ff       	call   b8a0 <_asn1_find_up>
    d0b7:	48 85 c0             	test   rax,rax
    d0ba:	0f 84 c3 01 00 00    	je     d283 <asn1_create_element+0x463>
    d0c0:	4c 89 78 60          	mov    QWORD PTR [rax+0x60],r15
    d0c4:	49 89 47 70          	mov    QWORD PTR [r15+0x70],rax
    d0c8:	e9 22 ff ff ff       	jmp    cfef <asn1_create_element+0x1cf>
    d0cd:	0f 1f 00             	nop    DWORD PTR [rax]
    d0d0:	41 bd 03 00 00 00    	mov    r13d,0x3
    d0d6:	48 85 ed             	test   rbp,rbp
    d0d9:	0f 84 3a fe ff ff    	je     cf19 <asn1_create_element+0xf9>
    d0df:	49 89 ec             	mov    r12,rbp
    d0e2:	48 8d 44 24 18       	lea    rax,[rsp+0x18]
    d0e7:	41 8b 54 24 48       	mov    edx,DWORD PTR [r12+0x48]
    d0ec:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    d0f1:	80 fa 12             	cmp    dl,0x12
    d0f4:	74 2e                	je     d124 <asn1_create_element+0x304>
    d0f6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    d0fd:	00 00 00 
    d100:	49 8b 44 24 60       	mov    rax,QWORD PTR [r12+0x60]
    d105:	48 85 c0             	test   rax,rax
    d108:	0f 84 02 fe ff ff    	je     cf10 <asn1_create_element+0xf0>
    d10e:	48 39 c5             	cmp    rbp,rax
    d111:	0f 84 02 fe ff ff    	je     cf19 <asn1_create_element+0xf9>
    d117:	49 89 c4             	mov    r12,rax
    d11a:	41 8b 54 24 48       	mov    edx,DWORD PTR [r12+0x48]
    d11f:	80 fa 12             	cmp    dl,0x12
    d122:	75 dc                	jne    d100 <asn1_create_element+0x2e0>
    d124:	f6 c6 20             	test   dh,0x20
    d127:	74 d7                	je     d100 <asn1_create_element+0x2e0>
    d129:	49 8b 44 24 60       	mov    rax,QWORD PTR [r12+0x60]
    d12e:	48 85 c0             	test   rax,rax
    d131:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
    d136:	0f 84 be fd ff ff    	je     cefa <asn1_create_element+0xda>
    d13c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    d140:	8b 50 48             	mov    edx,DWORD PTR [rax+0x48]
    d143:	80 fa 08             	cmp    dl,0x8
    d146:	0f 84 b4 00 00 00    	je     d200 <asn1_create_element+0x3e0>
    d14c:	48 8b 58 70          	mov    rbx,QWORD PTR [rax+0x70]
    d150:	80 ce 20             	or     dh,0x20
    d153:	89 50 48             	mov    DWORD PTR [rax+0x48],edx
    d156:	48 85 db             	test   rbx,rbx
    d159:	0f 84 a1 00 00 00    	je     d200 <asn1_create_element+0x3e0>
    d15f:	48 39 43 60          	cmp    QWORD PTR [rbx+0x60],rax
    d163:	0f 84 97 00 00 00    	je     d200 <asn1_create_element+0x3e0>
    d169:	44 8b 73 48          	mov    r14d,DWORD PTR [rbx+0x48]
    d16d:	41 80 fe 08          	cmp    r14b,0x8
    d171:	74 20                	je     d193 <asn1_create_element+0x373>
    d173:	48 8b 43 70          	mov    rax,QWORD PTR [rbx+0x70]
    d177:	48 85 c0             	test   rax,rax
    d17a:	0f 84 80 00 00 00    	je     d200 <asn1_create_element+0x3e0>
    d180:	48 39 58 60          	cmp    QWORD PTR [rax+0x60],rbx
    d184:	74 7a                	je     d200 <asn1_create_element+0x3e0>
    d186:	48 89 c3             	mov    rbx,rax
    d189:	44 8b 73 48          	mov    r14d,DWORD PTR [rbx+0x48]
    d18d:	41 80 fe 08          	cmp    r14b,0x8
    d191:	75 e0                	jne    d173 <asn1_create_element+0x353>
    d193:	be 98 00 00 00       	mov    esi,0x98
    d198:	bf 01 00 00 00       	mov    edi,0x1
    d19d:	e8 0e 5b ff ff       	call   2cb0 <calloc@plt>
    d1a2:	48 85 c0             	test   rax,rax
    d1a5:	49 89 c7             	mov    r15,rax
    d1a8:	74 04                	je     d1ae <asn1_create_element+0x38e>
    d1aa:	44 89 70 48          	mov    DWORD PTR [rax+0x48],r14d
    d1ae:	4c 8b 73 50          	mov    r14,QWORD PTR [rbx+0x50]
    d1b2:	4c 89 f7             	mov    rdi,r14
    d1b5:	e8 06 5a ff ff       	call   2bc0 <strlen@plt>
    d1ba:	85 c0                	test   eax,eax
    d1bc:	7e 0e                	jle    d1cc <asn1_create_element+0x3ac>
    d1be:	8d 50 01             	lea    edx,[rax+0x1]
    d1c1:	4c 89 f6             	mov    rsi,r14
    d1c4:	4c 89 ff             	mov    rdi,r15
    d1c7:	e8 94 e2 ff ff       	call   b460 <_asn1_set_value>
    d1cc:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
    d1d1:	4c 89 ff             	mov    rdi,r15
    d1d4:	48 8b 70 60          	mov    rsi,QWORD PTR [rax+0x60]
    d1d8:	e8 e3 e5 ff ff       	call   b7c0 <_asn1_set_right>
    d1dd:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
    d1e2:	48 85 c0             	test   rax,rax
    d1e5:	74 8c                	je     d173 <asn1_create_element+0x353>
    d1e7:	4d 85 ff             	test   r15,r15
    d1ea:	4c 89 78 60          	mov    QWORD PTR [rax+0x60],r15
    d1ee:	74 83                	je     d173 <asn1_create_element+0x353>
    d1f0:	49 89 47 70          	mov    QWORD PTR [r15+0x70],rax
    d1f4:	48 8b 43 70          	mov    rax,QWORD PTR [rbx+0x70]
    d1f8:	48 85 c0             	test   rax,rax
    d1fb:	75 83                	jne    d180 <asn1_create_element+0x360>
    d1fd:	0f 1f 00             	nop    DWORD PTR [rax]
    d200:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
    d205:	48 8b 40 68          	mov    rax,QWORD PTR [rax+0x68]
    d209:	48 85 c0             	test   rax,rax
    d20c:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
    d211:	0f 85 29 ff ff ff    	jne    d140 <asn1_create_element+0x320>
    d217:	49 8b 44 24 60       	mov    rax,QWORD PTR [r12+0x60]
    d21c:	41 81 64 24 48 ff df 	and    DWORD PTR [r12+0x48],0xffffdfff
    d223:	ff ff 
    d225:	48 85 c0             	test   rax,rax
    d228:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
    d22d:	75 1a                	jne    d249 <asn1_create_element+0x429>
    d22f:	e9 dc fc ff ff       	jmp    cf10 <asn1_create_element+0xf0>
    d234:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    d238:	48 85 db             	test   rbx,rbx
    d23b:	48 89 5c 24 18       	mov    QWORD PTR [rsp+0x18],rbx
    d240:	48 89 d8             	mov    rax,rbx
    d243:	0f 84 b7 fe ff ff    	je     d100 <asn1_create_element+0x2e0>
    d249:	80 78 48 08          	cmp    BYTE PTR [rax+0x48],0x8
    d24d:	48 8b 58 68          	mov    rbx,QWORD PTR [rax+0x68]
    d251:	75 e5                	jne    d238 <asn1_create_element+0x418>
    d253:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    d258:	e8 d3 59 ff ff       	call   2c30 <asn1_delete_structure@plt>
    d25d:	eb d9                	jmp    d238 <asn1_create_element+0x418>
    d25f:	4c 89 e7             	mov    rdi,r12
    d262:	e8 39 e6 ff ff       	call   b8a0 <_asn1_find_up>
    d267:	48 39 c5             	cmp    rbp,rax
    d26a:	49 89 c4             	mov    r12,rax
    d26d:	0f 84 a6 fc ff ff    	je     cf19 <asn1_create_element+0xf9>
    d273:	49 8b 44 24 68       	mov    rax,QWORD PTR [r12+0x68]
    d278:	48 85 c0             	test   rax,rax
    d27b:	0f 85 96 fe ff ff    	jne    d117 <asn1_create_element+0x2f7>
    d281:	eb dc                	jmp    d25f <asn1_create_element+0x43f>
    d283:	49 c7 47 70 00 00 00 	mov    QWORD PTR [r15+0x70],0x0
    d28a:	00 
    d28b:	e9 5f fd ff ff       	jmp    cfef <asn1_create_element+0x1cf>
    d290:	48 89 eb             	mov    rbx,rbp
    d293:	e9 2d fc ff ff       	jmp    cec5 <asn1_create_element+0xa5>
    d298:	e8 33 59 ff ff       	call   2bd0 <__stack_chk_fail@plt>
    d29d:	0f 1f 00             	nop    DWORD PTR [rax]

000000000000d2a0 <asn1_print_structure>:
    d2a0:	41 57                	push   r15
    d2a2:	41 56                	push   r14
    d2a4:	41 55                	push   r13
    d2a6:	41 54                	push   r12
    d2a8:	55                   	push   rbp
    d2a9:	53                   	push   rbx
    d2aa:	48 89 fb             	mov    rbx,rdi
    d2ad:	48 83 ec 48          	sub    rsp,0x48
    d2b1:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    d2b8:	00 00 
    d2ba:	48 89 44 24 38       	mov    QWORD PTR [rsp+0x38],rax
    d2bf:	31 c0                	xor    eax,eax
    d2c1:	48 85 ff             	test   rdi,rdi
    d2c4:	0f 84 0f 05 00 00    	je     d7d9 <asn1_print_structure+0x539>
    d2ca:	48 89 f7             	mov    rdi,rsi
    d2cd:	48 89 d6             	mov    rsi,rdx
    d2d0:	41 89 cd             	mov    r13d,ecx
    d2d3:	e8 58 58 ff ff       	call   2b30 <asn1_find_node@plt>
    d2d8:	48 85 c0             	test   rax,rax
    d2db:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    d2e0:	0f 84 f3 04 00 00    	je     d7d9 <asn1_print_structure+0x539>
    d2e6:	49 89 c4             	mov    r12,rax
    d2e9:	48 8d 44 24 34       	lea    rax,[rsp+0x34]
    d2ee:	45 8d 75 fd          	lea    r14d,[r13-0x3]
    d2f2:	31 ed                	xor    ebp,ebp
    d2f4:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
    d2f9:	48 8d 44 24 30       	lea    rax,[rsp+0x30]
    d2fe:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
    d303:	41 83 fd 04          	cmp    r13d,0x4
    d307:	0f 84 90 00 00 00    	je     d39d <asn1_print_structure+0xfd>
    d30d:	0f 1f 00             	nop    DWORD PTR [rax]
    d310:	41 8b 44 24 48       	mov    eax,DWORD PTR [r12+0x48]
    d315:	0f b6 c8             	movzx  ecx,al
    d318:	89 c2                	mov    edx,eax
    d31a:	83 f9 0a             	cmp    ecx,0xa
    d31d:	0f 87 8d 03 00 00    	ja     d6b0 <asn1_print_structure+0x410>
    d323:	be 01 00 00 00       	mov    esi,0x1
    d328:	48 d3 e6             	shl    rsi,cl
    d32b:	f7 c6 02 05 00 00    	test   esi,0x502
    d331:	0f 84 79 03 00 00    	je     d6b0 <asn1_print_structure+0x410>
    d337:	41 83 fd 01          	cmp    r13d,0x1
    d33b:	0f 84 eb 03 00 00    	je     d72c <asn1_print_structure+0x48c>
    d341:	83 f9 25             	cmp    ecx,0x25
    d344:	0f 87 fe 00 00 00    	ja     d448 <asn1_print_structure+0x1a8>
    d34a:	48 8d 35 67 2e 00 00 	lea    rsi,[rip+0x2e67]        # 101b8 <bit_mask+0x6c8>
    d351:	89 cf                	mov    edi,ecx
    d353:	4c 63 04 be          	movsxd r8,DWORD PTR [rsi+rdi*4]
    d357:	4c 01 c6             	add    rsi,r8
    d35a:	ff e6                	jmp    rsi
    d35c:	41 83 fd 04          	cmp    r13d,0x4
    d360:	0f 84 60 0c 00 00    	je     dfc6 <asn1_print_structure+0xd26>
    d366:	0f b6 c8             	movzx  ecx,al
    d369:	83 f9 0a             	cmp    ecx,0xa
    d36c:	0f 86 ba 03 00 00    	jbe    d72c <asn1_print_structure+0x48c>
    d372:	48 89 de             	mov    rsi,rbx
    d375:	bf 0a 00 00 00       	mov    edi,0xa
    d37a:	e8 f1 58 ff ff       	call   2c70 <fputc@plt>
    d37f:	49 8b 44 24 60       	mov    rax,QWORD PTR [r12+0x60]
    d384:	48 85 c0             	test   rax,rax
    d387:	0f 84 c3 03 00 00    	je     d750 <asn1_print_structure+0x4b0>
    d38d:	83 c5 02             	add    ebp,0x2
    d390:	41 83 fd 04          	cmp    r13d,0x4
    d394:	49 89 c4             	mov    r12,rax
    d397:	0f 85 73 ff ff ff    	jne    d310 <asn1_print_structure+0x70>
    d39d:	45 31 ff             	xor    r15d,r15d
    d3a0:	85 ed                	test   ebp,ebp
    d3a2:	7e 1a                	jle    d3be <asn1_print_structure+0x11e>
    d3a4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    d3a8:	48 89 de             	mov    rsi,rbx
    d3ab:	bf 20 00 00 00       	mov    edi,0x20
    d3b0:	41 83 c7 01          	add    r15d,0x1
    d3b4:	e8 b7 58 ff ff       	call   2c70 <fputc@plt>
    d3b9:	41 39 ef             	cmp    r15d,ebp
    d3bc:	75 ea                	jne    d3a8 <asn1_print_structure+0x108>
    d3be:	48 8d 3d 52 2c 00 00 	lea    rdi,[rip+0x2c52]        # 10017 <bit_mask+0x527>
    d3c5:	48 89 d9             	mov    rcx,rbx
    d3c8:	ba 05 00 00 00       	mov    edx,0x5
    d3cd:	be 01 00 00 00       	mov    esi,0x1
    d3d2:	e8 19 5a ff ff       	call   2df0 <fwrite@plt>
    d3d7:	41 80 3c 24 00       	cmp    BYTE PTR [r12],0x0
    d3dc:	0f 84 b6 03 00 00    	je     d798 <asn1_print_structure+0x4f8>
    d3e2:	48 8d 15 34 2c 00 00 	lea    rdx,[rip+0x2c34]        # 1001d <bit_mask+0x52d>
    d3e9:	4c 89 e1             	mov    rcx,r12
    d3ec:	be 01 00 00 00       	mov    esi,0x1
    d3f1:	48 89 df             	mov    rdi,rbx
    d3f4:	31 c0                	xor    eax,eax
    d3f6:	e8 15 5a ff ff       	call   2e10 <__fprintf_chk@plt>
    d3fb:	41 8b 44 24 48       	mov    eax,DWORD PTR [r12+0x48]
    d400:	0f b6 c8             	movzx  ecx,al
    d403:	89 c2                	mov    edx,eax
    d405:	83 f9 25             	cmp    ecx,0x25
    d408:	0f 87 8c 01 00 00    	ja     d59a <asn1_print_structure+0x2fa>
    d40e:	48 8d 35 3b 2e 00 00 	lea    rsi,[rip+0x2e3b]        # 10250 <bit_mask+0x760>
    d415:	89 cf                	mov    edi,ecx
    d417:	4c 63 04 be          	movsxd r8,DWORD PTR [rsi+rdi*4]
    d41b:	4c 01 c6             	add    rsi,r8
    d41e:	ff e6                	jmp    rsi
    d420:	48 8d 3d 3b 2c 00 00 	lea    rdi,[rip+0x2c3b]        # 10062 <bit_mask+0x572>
    d427:	48 89 d9             	mov    rcx,rbx
    d42a:	ba 0b 00 00 00       	mov    edx,0xb
    d42f:	be 01 00 00 00       	mov    esi,0x1
    d434:	e8 b7 59 ff ff       	call   2df0 <fwrite@plt>
    d439:	41 8b 44 24 48       	mov    eax,DWORD PTR [r12+0x48]
    d43e:	89 c2                	mov    edx,eax
    d440:	0f b6 c8             	movzx  ecx,al
    d443:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    d448:	41 83 fe 01          	cmp    r14d,0x1
    d44c:	0f 87 17 ff ff ff    	ja     d369 <asn1_print_structure+0xc9>
    d452:	83 f9 25             	cmp    ecx,0x25
    d455:	0f 87 35 01 00 00    	ja     d590 <asn1_print_structure+0x2f0>
    d45b:	48 8d 3d 86 2e 00 00 	lea    rdi,[rip+0x2e86]        # 102e8 <bit_mask+0x7f8>
    d462:	48 63 0c 8f          	movsxd rcx,DWORD PTR [rdi+rcx*4]
    d466:	48 01 f9             	add    rcx,rdi
    d469:	ff e1                	jmp    rcx
    d46b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    d470:	48 8d 3d e2 2b 00 00 	lea    rdi,[rip+0x2be2]        # 10059 <bit_mask+0x569>
    d477:	48 89 d9             	mov    rcx,rbx
    d47a:	ba 08 00 00 00       	mov    edx,0x8
    d47f:	be 01 00 00 00       	mov    esi,0x1
    d484:	e8 67 59 ff ff       	call   2df0 <fwrite@plt>
    d489:	41 8b 44 24 48       	mov    eax,DWORD PTR [r12+0x48]
    d48e:	89 c2                	mov    edx,eax
    d490:	0f b6 c8             	movzx  ecx,al
    d493:	eb b3                	jmp    d448 <asn1_print_structure+0x1a8>
    d495:	0f 1f 00             	nop    DWORD PTR [rax]
    d498:	48 8d 3d cf 2b 00 00 	lea    rdi,[rip+0x2bcf]        # 1006e <bit_mask+0x57e>
    d49f:	48 89 d9             	mov    rcx,rbx
    d4a2:	ba 10 00 00 00       	mov    edx,0x10
    d4a7:	be 01 00 00 00       	mov    esi,0x1
    d4ac:	e8 3f 59 ff ff       	call   2df0 <fwrite@plt>
    d4b1:	41 8b 44 24 48       	mov    eax,DWORD PTR [r12+0x48]
    d4b6:	89 c2                	mov    edx,eax
    d4b8:	0f b6 c8             	movzx  ecx,al
    d4bb:	eb 8b                	jmp    d448 <asn1_print_structure+0x1a8>
    d4bd:	0f 1f 00             	nop    DWORD PTR [rax]
    d4c0:	48 c1 e7 04          	shl    rdi,0x4
    d4c4:	48 89 de             	mov    rsi,rbx
    d4c7:	48 89 f8             	mov    rax,rdi
    d4ca:	48 03 05 f7 5a 20 00 	add    rax,QWORD PTR [rip+0x205af7]        # 212fc8 <_DYNAMIC+0x1f8>
    d4d1:	48 8b 78 08          	mov    rdi,QWORD PTR [rax+0x8]
    d4d5:	e8 36 57 ff ff       	call   2c10 <fputs@plt>
    d4da:	41 8b 44 24 48       	mov    eax,DWORD PTR [r12+0x48]
    d4df:	89 c2                	mov    edx,eax
    d4e1:	0f b6 c8             	movzx  ecx,al
    d4e4:	e9 5f ff ff ff       	jmp    d448 <asn1_print_structure+0x1a8>
    d4e9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    d4f0:	48 8d 3d 52 2b 00 00 	lea    rdi,[rip+0x2b52]        # 10049 <bit_mask+0x559>
    d4f7:	48 89 d9             	mov    rcx,rbx
    d4fa:	ba 0f 00 00 00       	mov    edx,0xf
    d4ff:	be 01 00 00 00       	mov    esi,0x1
    d504:	e8 e7 58 ff ff       	call   2df0 <fwrite@plt>
    d509:	41 8b 44 24 48       	mov    eax,DWORD PTR [r12+0x48]
    d50e:	89 c2                	mov    edx,eax
    d510:	0f b6 c8             	movzx  ecx,al
    d513:	e9 30 ff ff ff       	jmp    d448 <asn1_print_structure+0x1a8>
    d518:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    d51f:	00 
    d520:	48 8d 3d 15 2b 00 00 	lea    rdi,[rip+0x2b15]        # 1003c <bit_mask+0x54c>
    d527:	48 89 d9             	mov    rcx,rbx
    d52a:	ba 0c 00 00 00       	mov    edx,0xc
    d52f:	be 01 00 00 00       	mov    esi,0x1
    d534:	e8 b7 58 ff ff       	call   2df0 <fwrite@plt>
    d539:	41 8b 44 24 48       	mov    eax,DWORD PTR [r12+0x48]
    d53e:	89 c2                	mov    edx,eax
    d540:	0f b6 c8             	movzx  ecx,al
    d543:	e9 00 ff ff ff       	jmp    d448 <asn1_print_structure+0x1a8>
    d548:	49 8b 4c 24 50       	mov    rcx,QWORD PTR [r12+0x50]
    d54d:	48 85 c9             	test   rcx,rcx
    d550:	0f 85 e6 02 00 00    	jne    d83c <asn1_print_structure+0x59c>
    d556:	a9 00 00 01 00       	test   eax,0x10000
    d55b:	0f 85 a1 0a 00 00    	jne    e002 <asn1_print_structure+0xd62>
    d561:	a9 00 00 02 00       	test   eax,0x20000
    d566:	0f 84 0b 05 00 00    	je     da77 <asn1_print_structure+0x7d7>
    d56c:	48 8d 3d 24 2b 00 00 	lea    rdi,[rip+0x2b24]        # 10097 <bit_mask+0x5a7>
    d573:	ba 0d 00 00 00       	mov    edx,0xd
    d578:	48 89 d9             	mov    rcx,rbx
    d57b:	be 01 00 00 00       	mov    esi,0x1
    d580:	e8 6b 58 ff ff       	call   2df0 <fwrite@plt>
    d585:	41 8b 54 24 48       	mov    edx,DWORD PTR [r12+0x48]
    d58a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    d590:	41 83 fd 04          	cmp    r13d,0x4
    d594:	0f 85 90 0a 00 00    	jne    e02a <asn1_print_structure+0xd8a>
    d59a:	81 e2 00 ff ff 1f    	and    edx,0x1fffff00
    d5a0:	0f 84 cc fd ff ff    	je     d372 <asn1_print_structure+0xd2>
    d5a6:	48 8d 3d 1e 2b 00 00 	lea    rdi,[rip+0x2b1e]        # 100cb <bit_mask+0x5db>
    d5ad:	48 89 d9             	mov    rcx,rbx
    d5b0:	ba 07 00 00 00       	mov    edx,0x7
    d5b5:	be 01 00 00 00       	mov    esi,0x1
    d5ba:	e8 31 58 ff ff       	call   2df0 <fwrite@plt>
    d5bf:	41 8b 44 24 48       	mov    eax,DWORD PTR [r12+0x48]
    d5c4:	f6 c4 01             	test   ah,0x1
    d5c7:	0f 85 d6 09 00 00    	jne    dfa3 <asn1_print_structure+0xd03>
    d5cd:	f6 c4 02             	test   ah,0x2
    d5d0:	0f 85 aa 09 00 00    	jne    df80 <asn1_print_structure+0xce0>
    d5d6:	f6 c4 04             	test   ah,0x4
    d5d9:	0f 85 7e 09 00 00    	jne    df5d <asn1_print_structure+0xcbd>
    d5df:	f6 c4 08             	test   ah,0x8
    d5e2:	0f 85 f3 06 00 00    	jne    dcdb <asn1_print_structure+0xa3b>
    d5e8:	f6 c4 10             	test   ah,0x10
    d5eb:	0f 85 11 07 00 00    	jne    dd02 <asn1_print_structure+0xa62>
    d5f1:	f6 c4 20             	test   ah,0x20
    d5f4:	0f 85 2f 07 00 00    	jne    dd29 <asn1_print_structure+0xa89>
    d5fa:	f6 c4 80             	test   ah,0x80
    d5fd:	0f 85 4d 07 00 00    	jne    dd50 <asn1_print_structure+0xab0>
    d603:	a9 00 00 01 00       	test   eax,0x10000
    d608:	0f 85 6b 07 00 00    	jne    dd79 <asn1_print_structure+0xad9>
    d60e:	a9 00 00 02 00       	test   eax,0x20000
    d613:	0f 85 89 07 00 00    	jne    dda2 <asn1_print_structure+0xb02>
    d619:	a9 00 00 04 00       	test   eax,0x40000
    d61e:	0f 85 a7 07 00 00    	jne    ddcb <asn1_print_structure+0xb2b>
    d624:	a9 00 00 08 00       	test   eax,0x80000
    d629:	0f 85 c5 07 00 00    	jne    ddf4 <asn1_print_structure+0xb54>
    d62f:	f6 c4 40             	test   ah,0x40
    d632:	0f 85 e3 07 00 00    	jne    de1b <asn1_print_structure+0xb7b>
    d638:	a9 00 00 10 00       	test   eax,0x100000
    d63d:	0f 85 01 08 00 00    	jne    de44 <asn1_print_structure+0xba4>
    d643:	a9 00 00 20 00       	test   eax,0x200000
    d648:	0f 85 1f 08 00 00    	jne    de6d <asn1_print_structure+0xbcd>
    d64e:	a9 00 00 40 00       	test   eax,0x400000
    d653:	0f 85 3d 08 00 00    	jne    de96 <asn1_print_structure+0xbf6>
    d659:	a9 00 00 80 00       	test   eax,0x800000
    d65e:	0f 85 5b 08 00 00    	jne    debf <asn1_print_structure+0xc1f>
    d664:	a9 00 00 00 01       	test   eax,0x1000000
    d669:	0f 85 79 08 00 00    	jne    dee8 <asn1_print_structure+0xc48>
    d66f:	a9 00 00 00 08       	test   eax,0x8000000
    d674:	0f 85 97 08 00 00    	jne    df11 <asn1_print_structure+0xc71>
    d67a:	a9 00 00 00 04       	test   eax,0x4000000
    d67f:	0f 85 b5 08 00 00    	jne    df3a <asn1_print_structure+0xc9a>
    d685:	a9 00 00 00 10       	test   eax,0x10000000
    d68a:	0f 84 e2 fc ff ff    	je     d372 <asn1_print_structure+0xd2>
    d690:	48 8d 3d db 2a 00 00 	lea    rdi,[rip+0x2adb]        # 10172 <bit_mask+0x682>
    d697:	48 89 d9             	mov    rcx,rbx
    d69a:	ba 0b 00 00 00       	mov    edx,0xb
    d69f:	be 01 00 00 00       	mov    esi,0x1
    d6a4:	e8 47 57 ff ff       	call   2df0 <fwrite@plt>
    d6a9:	e9 c4 fc ff ff       	jmp    d372 <asn1_print_structure+0xd2>
    d6ae:	66 90                	xchg   ax,ax
    d6b0:	45 31 ff             	xor    r15d,r15d
    d6b3:	85 ed                	test   ebp,ebp
    d6b5:	7e 1f                	jle    d6d6 <asn1_print_structure+0x436>
    d6b7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    d6be:	00 00 
    d6c0:	48 89 de             	mov    rsi,rbx
    d6c3:	bf 20 00 00 00       	mov    edi,0x20
    d6c8:	41 83 c7 01          	add    r15d,0x1
    d6cc:	e8 9f 55 ff ff       	call   2c70 <fputc@plt>
    d6d1:	41 39 ef             	cmp    r15d,ebp
    d6d4:	75 ea                	jne    d6c0 <asn1_print_structure+0x420>
    d6d6:	48 8d 3d 3a 29 00 00 	lea    rdi,[rip+0x293a]        # 10017 <bit_mask+0x527>
    d6dd:	48 89 d9             	mov    rcx,rbx
    d6e0:	ba 05 00 00 00       	mov    edx,0x5
    d6e5:	be 01 00 00 00       	mov    esi,0x1
    d6ea:	e8 01 57 ff ff       	call   2df0 <fwrite@plt>
    d6ef:	41 80 3c 24 00       	cmp    BYTE PTR [r12],0x0
    d6f4:	74 7a                	je     d770 <asn1_print_structure+0x4d0>
    d6f6:	48 8d 15 20 29 00 00 	lea    rdx,[rip+0x2920]        # 1001d <bit_mask+0x52d>
    d6fd:	4c 89 e1             	mov    rcx,r12
    d700:	be 01 00 00 00       	mov    esi,0x1
    d705:	48 89 df             	mov    rdi,rbx
    d708:	31 c0                	xor    eax,eax
    d70a:	e8 01 57 ff ff       	call   2e10 <__fprintf_chk@plt>
    d70f:	41 8b 44 24 48       	mov    eax,DWORD PTR [r12+0x48]
    d714:	89 c2                	mov    edx,eax
    d716:	0f b6 c8             	movzx  ecx,al
    d719:	41 83 fd 01          	cmp    r13d,0x1
    d71d:	0f 85 1e fc ff ff    	jne    d341 <asn1_print_structure+0xa1>
    d723:	83 f9 0a             	cmp    ecx,0xa
    d726:	0f 87 46 fc ff ff    	ja     d372 <asn1_print_structure+0xd2>
    d72c:	b8 01 00 00 00       	mov    eax,0x1
    d731:	48 d3 e0             	shl    rax,cl
    d734:	a9 02 05 00 00       	test   eax,0x502
    d739:	0f 84 33 fc ff ff    	je     d372 <asn1_print_structure+0xd2>
    d73f:	49 8b 44 24 60       	mov    rax,QWORD PTR [r12+0x60]
    d744:	48 85 c0             	test   rax,rax
    d747:	0f 85 40 fc ff ff    	jne    d38d <asn1_print_structure+0xed>
    d74d:	0f 1f 00             	nop    DWORD PTR [rax]
    d750:	4c 39 64 24 08       	cmp    QWORD PTR [rsp+0x8],r12
    d755:	0f 84 7e 00 00 00    	je     d7d9 <asn1_print_structure+0x539>
    d75b:	49 8b 44 24 68       	mov    rax,QWORD PTR [r12+0x68]
    d760:	48 85 c0             	test   rax,rax
    d763:	74 51                	je     d7b6 <asn1_print_structure+0x516>
    d765:	49 89 c4             	mov    r12,rax
    d768:	e9 96 fb ff ff       	jmp    d303 <asn1_print_structure+0x63>
    d76d:	0f 1f 00             	nop    DWORD PTR [rax]
    d770:	48 8d 3d ab 28 00 00 	lea    rdi,[rip+0x28ab]        # 10022 <bit_mask+0x532>
    d777:	48 89 d9             	mov    rcx,rbx
    d77a:	ba 06 00 00 00       	mov    edx,0x6
    d77f:	be 01 00 00 00       	mov    esi,0x1
    d784:	e8 67 56 ff ff       	call   2df0 <fwrite@plt>
    d789:	41 8b 44 24 48       	mov    eax,DWORD PTR [r12+0x48]
    d78e:	89 c2                	mov    edx,eax
    d790:	0f b6 c8             	movzx  ecx,al
    d793:	eb 84                	jmp    d719 <asn1_print_structure+0x479>
    d795:	0f 1f 00             	nop    DWORD PTR [rax]
    d798:	48 8d 3d 83 28 00 00 	lea    rdi,[rip+0x2883]        # 10022 <bit_mask+0x532>
    d79f:	48 89 d9             	mov    rcx,rbx
    d7a2:	ba 06 00 00 00       	mov    edx,0x6
    d7a7:	be 01 00 00 00       	mov    esi,0x1
    d7ac:	e8 3f 56 ff ff       	call   2df0 <fwrite@plt>
    d7b1:	e9 45 fc ff ff       	jmp    d3fb <asn1_print_structure+0x15b>
    d7b6:	4c 89 e7             	mov    rdi,r12
    d7b9:	4c 8b 64 24 08       	mov    r12,QWORD PTR [rsp+0x8]
    d7be:	eb 0c                	jmp    d7cc <asn1_print_structure+0x52c>
    d7c0:	48 8b 40 68          	mov    rax,QWORD PTR [rax+0x68]
    d7c4:	83 ed 02             	sub    ebp,0x2
    d7c7:	48 85 c0             	test   rax,rax
    d7ca:	75 99                	jne    d765 <asn1_print_structure+0x4c5>
    d7cc:	e8 cf e0 ff ff       	call   b8a0 <_asn1_find_up>
    d7d1:	49 39 c4             	cmp    r12,rax
    d7d4:	48 89 c7             	mov    rdi,rax
    d7d7:	75 e7                	jne    d7c0 <asn1_print_structure+0x520>
    d7d9:	48 8b 44 24 38       	mov    rax,QWORD PTR [rsp+0x38]
    d7de:	64 48 33 04 25 28 00 	xor    rax,QWORD PTR fs:0x28
    d7e5:	00 00 
    d7e7:	0f 85 38 08 00 00    	jne    e025 <asn1_print_structure+0xd85>
    d7ed:	48 83 c4 48          	add    rsp,0x48
    d7f1:	5b                   	pop    rbx
    d7f2:	5d                   	pop    rbp
    d7f3:	41 5c                	pop    r12
    d7f5:	41 5d                	pop    r13
    d7f7:	41 5e                	pop    r14
    d7f9:	41 5f                	pop    r15
    d7fb:	c3                   	ret    
    d7fc:	41 83 fd 04          	cmp    r13d,0x4
    d800:	0f 85 60 fb ff ff    	jne    d366 <asn1_print_structure+0xc6>
    d806:	48 8d 3d 25 28 00 00 	lea    rdi,[rip+0x2825]        # 10032 <bit_mask+0x542>
    d80d:	48 89 d9             	mov    rcx,rbx
    d810:	ba 09 00 00 00       	mov    edx,0x9
    d815:	be 01 00 00 00       	mov    esi,0x1
    d81a:	e8 d1 55 ff ff       	call   2df0 <fwrite@plt>
    d81f:	41 8b 44 24 48       	mov    eax,DWORD PTR [r12+0x48]
    d824:	89 c2                	mov    edx,eax
    d826:	0f b6 c8             	movzx  ecx,al
    d829:	e9 24 fc ff ff       	jmp    d452 <asn1_print_structure+0x1b2>
    d82e:	49 8b 4c 24 50       	mov    rcx,QWORD PTR [r12+0x50]
    d833:	48 85 c9             	test   rcx,rcx
    d836:	0f 84 3b 02 00 00    	je     da77 <asn1_print_structure+0x7d7>
    d83c:	48 8d 15 3c 28 00 00 	lea    rdx,[rip+0x283c]        # 1007f <bit_mask+0x58f>
    d843:	be 01 00 00 00       	mov    esi,0x1
    d848:	48 89 df             	mov    rdi,rbx
    d84b:	31 c0                	xor    eax,eax
    d84d:	e8 be 55 ff ff       	call   2e10 <__fprintf_chk@plt>
    d852:	41 8b 54 24 48       	mov    edx,DWORD PTR [r12+0x48]
    d857:	e9 34 fd ff ff       	jmp    d590 <asn1_print_structure+0x2f0>
    d85c:	49 8b 7c 24 50       	mov    rdi,QWORD PTR [r12+0x50]
    d861:	48 85 ff             	test   rdi,rdi
    d864:	0f 84 0d 02 00 00    	je     da77 <asn1_print_structure+0x7d7>
    d86a:	41 8b 74 24 58       	mov    esi,DWORD PTR [r12+0x58]
    d86f:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
    d874:	45 31 ff             	xor    r15d,r15d
    d877:	c7 44 24 34 ff ff ff 	mov    DWORD PTR [rsp+0x34],0xffffffff
    d87e:	ff 
    d87f:	e8 1c 55 ff ff       	call   2da0 <asn1_get_length_der@plt>
    d884:	48 8d 3d 37 28 00 00 	lea    rdi,[rip+0x2837]        # 100c2 <bit_mask+0x5d2>
    d88b:	48 89 d9             	mov    rcx,rbx
    d88e:	ba 08 00 00 00       	mov    edx,0x8
    d893:	be 01 00 00 00       	mov    esi,0x1
    d898:	89 44 24 30          	mov    DWORD PTR [rsp+0x30],eax
    d89c:	e8 4f 55 ff ff       	call   2df0 <fwrite@plt>
    d8a1:	8b 44 24 30          	mov    eax,DWORD PTR [rsp+0x30]
    d8a5:	85 c0                	test   eax,eax
    d8a7:	7e 3a                	jle    d8e3 <asn1_print_structure+0x643>
    d8a9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    d8b0:	8b 44 24 34          	mov    eax,DWORD PTR [rsp+0x34]
    d8b4:	49 8b 54 24 50       	mov    rdx,QWORD PTR [r12+0x50]
    d8b9:	be 01 00 00 00       	mov    esi,0x1
    d8be:	48 89 df             	mov    rdi,rbx
    d8c1:	44 01 f8             	add    eax,r15d
    d8c4:	41 83 c7 01          	add    r15d,0x1
    d8c8:	48 98                	cdqe   
    d8ca:	0f b6 0c 02          	movzx  ecx,BYTE PTR [rdx+rax*1]
    d8ce:	48 8d 15 db 27 00 00 	lea    rdx,[rip+0x27db]        # 100b0 <bit_mask+0x5c0>
    d8d5:	31 c0                	xor    eax,eax
    d8d7:	e8 34 55 ff ff       	call   2e10 <__fprintf_chk@plt>
    d8dc:	44 39 7c 24 30       	cmp    DWORD PTR [rsp+0x30],r15d
    d8e1:	7f cd                	jg     d8b0 <asn1_print_structure+0x610>
    d8e3:	41 8b 54 24 48       	mov    edx,DWORD PTR [r12+0x48]
    d8e8:	e9 a3 fc ff ff       	jmp    d590 <asn1_print_structure+0x2f0>
    d8ed:	49 8b 7c 24 50       	mov    rdi,QWORD PTR [r12+0x50]
    d8f2:	48 85 ff             	test   rdi,rdi
    d8f5:	0f 84 95 fc ff ff    	je     d590 <asn1_print_structure+0x2f0>
    d8fb:	41 8b 74 24 58       	mov    esi,DWORD PTR [r12+0x58]
    d900:	48 8b 54 24 10       	mov    rdx,QWORD PTR [rsp+0x10]
    d905:	45 31 ff             	xor    r15d,r15d
    d908:	c7 44 24 30 ff ff ff 	mov    DWORD PTR [rsp+0x30],0xffffffff
    d90f:	ff 
    d910:	e8 8b 54 ff ff       	call   2da0 <asn1_get_length_der@plt>
    d915:	48 8d 3d a6 27 00 00 	lea    rdi,[rip+0x27a6]        # 100c2 <bit_mask+0x5d2>
    d91c:	48 89 d9             	mov    rcx,rbx
    d91f:	ba 08 00 00 00       	mov    edx,0x8
    d924:	be 01 00 00 00       	mov    esi,0x1
    d929:	89 44 24 28          	mov    DWORD PTR [rsp+0x28],eax
    d92d:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
    d932:	e8 b9 54 ff ff       	call   2df0 <fwrite@plt>
    d937:	4c 8b 4c 24 20       	mov    r9,QWORD PTR [rsp+0x20]
    d93c:	45 85 c9             	test   r9d,r9d
    d93f:	7e a2                	jle    d8e3 <asn1_print_structure+0x643>
    d941:	89 6c 24 20          	mov    DWORD PTR [rsp+0x20],ebp
    d945:	48 89 dd             	mov    rbp,rbx
    d948:	8b 5c 24 28          	mov    ebx,DWORD PTR [rsp+0x28]
    d94c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    d950:	8b 44 24 30          	mov    eax,DWORD PTR [rsp+0x30]
    d954:	49 8b 54 24 50       	mov    rdx,QWORD PTR [r12+0x50]
    d959:	be 01 00 00 00       	mov    esi,0x1
    d95e:	48 89 ef             	mov    rdi,rbp
    d961:	44 01 f8             	add    eax,r15d
    d964:	41 83 c7 01          	add    r15d,0x1
    d968:	48 98                	cdqe   
    d96a:	0f b6 0c 02          	movzx  ecx,BYTE PTR [rdx+rax*1]
    d96e:	48 8d 15 3b 27 00 00 	lea    rdx,[rip+0x273b]        # 100b0 <bit_mask+0x5c0>
    d975:	31 c0                	xor    eax,eax
    d977:	e8 94 54 ff ff       	call   2e10 <__fprintf_chk@plt>
    d97c:	44 39 fb             	cmp    ebx,r15d
    d97f:	75 cf                	jne    d950 <asn1_print_structure+0x6b0>
    d981:	48 89 eb             	mov    rbx,rbp
    d984:	41 8b 54 24 48       	mov    edx,DWORD PTR [r12+0x48]
    d989:	8b 6c 24 20          	mov    ebp,DWORD PTR [rsp+0x20]
    d98d:	e9 fe fb ff ff       	jmp    d590 <asn1_print_structure+0x2f0>
    d992:	49 8b 7c 24 50       	mov    rdi,QWORD PTR [r12+0x50]
    d997:	48 85 ff             	test   rdi,rdi
    d99a:	0f 84 d7 00 00 00    	je     da77 <asn1_print_structure+0x7d7>
    d9a0:	41 8b 74 24 58       	mov    esi,DWORD PTR [r12+0x58]
    d9a5:	48 8b 54 24 10       	mov    rdx,QWORD PTR [rsp+0x10]
    d9aa:	c7 44 24 30 ff ff ff 	mov    DWORD PTR [rsp+0x30],0xffffffff
    d9b1:	ff 
    d9b2:	e8 e9 53 ff ff       	call   2da0 <asn1_get_length_der@plt>
    d9b7:	85 c0                	test   eax,eax
    d9b9:	89 44 24 20          	mov    DWORD PTR [rsp+0x20],eax
    d9bd:	0f 8e 20 ff ff ff    	jle    d8e3 <asn1_print_structure+0x643>
    d9c3:	8d 0c c5 f8 ff ff ff 	lea    ecx,[rax*8-0x8]
    d9ca:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
    d9cf:	48 63 44 24 30       	movsxd rax,DWORD PTR [rsp+0x30]
    d9d4:	49 8b 54 24 50       	mov    rdx,QWORD PTR [r12+0x50]
    d9d9:	be 01 00 00 00       	mov    esi,0x1
    d9de:	48 89 df             	mov    rdi,rbx
    d9e1:	41 bf 01 00 00 00    	mov    r15d,0x1
    d9e7:	0f b6 04 02          	movzx  eax,BYTE PTR [rdx+rax*1]
    d9eb:	48 8d 15 c3 26 00 00 	lea    rdx,[rip+0x26c3]        # 100b5 <bit_mask+0x5c5>
    d9f2:	29 c1                	sub    ecx,eax
    d9f4:	31 c0                	xor    eax,eax
    d9f6:	e8 15 54 ff ff       	call   2e10 <__fprintf_chk@plt>
    d9fb:	4c 8b 4c 24 28       	mov    r9,QWORD PTR [rsp+0x28]
    da00:	41 83 f9 01          	cmp    r9d,0x1
    da04:	0f 84 d9 fe ff ff    	je     d8e3 <asn1_print_structure+0x643>
    da0a:	89 6c 24 28          	mov    DWORD PTR [rsp+0x28],ebp
    da0e:	48 89 dd             	mov    rbp,rbx
    da11:	8b 5c 24 20          	mov    ebx,DWORD PTR [rsp+0x20]
    da15:	0f 1f 00             	nop    DWORD PTR [rax]
    da18:	8b 44 24 30          	mov    eax,DWORD PTR [rsp+0x30]
    da1c:	49 8b 54 24 50       	mov    rdx,QWORD PTR [r12+0x50]
    da21:	be 01 00 00 00       	mov    esi,0x1
    da26:	48 89 ef             	mov    rdi,rbp
    da29:	44 01 f8             	add    eax,r15d
    da2c:	41 83 c7 01          	add    r15d,0x1
    da30:	48 98                	cdqe   
    da32:	0f b6 0c 02          	movzx  ecx,BYTE PTR [rdx+rax*1]
    da36:	48 8d 15 73 26 00 00 	lea    rdx,[rip+0x2673]        # 100b0 <bit_mask+0x5c0>
    da3d:	31 c0                	xor    eax,eax
    da3f:	e8 cc 53 ff ff       	call   2e10 <__fprintf_chk@plt>
    da44:	44 39 fb             	cmp    ebx,r15d
    da47:	75 cf                	jne    da18 <asn1_print_structure+0x778>
    da49:	48 89 eb             	mov    rbx,rbp
    da4c:	41 8b 54 24 48       	mov    edx,DWORD PTR [r12+0x48]
    da51:	8b 6c 24 28          	mov    ebp,DWORD PTR [rsp+0x28]
    da55:	e9 36 fb ff ff       	jmp    d590 <asn1_print_structure+0x2f0>
    da5a:	49 8b 44 24 50       	mov    rax,QWORD PTR [r12+0x50]
    da5f:	48 85 c0             	test   rax,rax
    da62:	74 13                	je     da77 <asn1_print_structure+0x7d7>
    da64:	0f b6 00             	movzx  eax,BYTE PTR [rax]
    da67:	3c 54                	cmp    al,0x54
    da69:	0f 84 93 05 00 00    	je     e002 <asn1_print_structure+0xd62>
    da6f:	3c 46                	cmp    al,0x46
    da71:	0f 84 f5 fa ff ff    	je     d56c <asn1_print_structure+0x2cc>
    da77:	41 83 fd 04          	cmp    r13d,0x4
    da7b:	0f 84 19 fb ff ff    	je     d59a <asn1_print_structure+0x2fa>
    da81:	e9 ec f8 ff ff       	jmp    d372 <asn1_print_structure+0xd2>
    da86:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    da8d:	00 00 00 
    da90:	49 8b 7c 24 50       	mov    rdi,QWORD PTR [r12+0x50]
    da95:	48 85 ff             	test   rdi,rdi
    da98:	74 dd                	je     da77 <asn1_print_structure+0x7d7>
    da9a:	41 8b 74 24 58       	mov    esi,DWORD PTR [r12+0x58]
    da9f:	48 8b 54 24 10       	mov    rdx,QWORD PTR [rsp+0x10]
    daa4:	45 31 ff             	xor    r15d,r15d
    daa7:	c7 44 24 30 ff ff ff 	mov    DWORD PTR [rsp+0x30],0xffffffff
    daae:	ff 
    daaf:	e8 ec 52 ff ff       	call   2da0 <asn1_get_length_der@plt>
    dab4:	48 8d 3d ea 25 00 00 	lea    rdi,[rip+0x25ea]        # 100a5 <bit_mask+0x5b5>
    dabb:	48 89 d9             	mov    rcx,rbx
    dabe:	ba 0a 00 00 00       	mov    edx,0xa
    dac3:	be 01 00 00 00       	mov    esi,0x1
    dac8:	89 44 24 28          	mov    DWORD PTR [rsp+0x28],eax
    dacc:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
    dad1:	e8 1a 53 ff ff       	call   2df0 <fwrite@plt>
    dad6:	4c 8b 4c 24 20       	mov    r9,QWORD PTR [rsp+0x20]
    dadb:	45 85 c9             	test   r9d,r9d
    dade:	0f 8e ff fd ff ff    	jle    d8e3 <asn1_print_structure+0x643>
    dae4:	89 6c 24 20          	mov    DWORD PTR [rsp+0x20],ebp
    dae8:	48 89 dd             	mov    rbp,rbx
    daeb:	8b 5c 24 28          	mov    ebx,DWORD PTR [rsp+0x28]
    daef:	90                   	nop
    daf0:	8b 44 24 30          	mov    eax,DWORD PTR [rsp+0x30]
    daf4:	49 8b 54 24 50       	mov    rdx,QWORD PTR [r12+0x50]
    daf9:	be 01 00 00 00       	mov    esi,0x1
    dafe:	48 89 ef             	mov    rdi,rbp
    db01:	44 01 f8             	add    eax,r15d
    db04:	41 83 c7 01          	add    r15d,0x1
    db08:	48 98                	cdqe   
    db0a:	0f b6 0c 02          	movzx  ecx,BYTE PTR [rdx+rax*1]
    db0e:	48 8d 15 9b 25 00 00 	lea    rdx,[rip+0x259b]        # 100b0 <bit_mask+0x5c0>
    db15:	31 c0                	xor    eax,eax
    db17:	e8 f4 52 ff ff       	call   2e10 <__fprintf_chk@plt>
    db1c:	44 39 fb             	cmp    ebx,r15d
    db1f:	75 cf                	jne    daf0 <asn1_print_structure+0x850>
    db21:	48 89 eb             	mov    rbx,rbp
    db24:	41 8b 54 24 48       	mov    edx,DWORD PTR [r12+0x48]
    db29:	8b 6c 24 20          	mov    ebp,DWORD PTR [rsp+0x20]
    db2d:	e9 5e fa ff ff       	jmp    d590 <asn1_print_structure+0x2f0>
    db32:	49 8b 7c 24 50       	mov    rdi,QWORD PTR [r12+0x50]
    db37:	48 85 ff             	test   rdi,rdi
    db3a:	0f 84 50 fa ff ff    	je     d590 <asn1_print_structure+0x2f0>
    db40:	41 8b 74 24 58       	mov    esi,DWORD PTR [r12+0x58]
    db45:	48 8b 54 24 10       	mov    rdx,QWORD PTR [rsp+0x10]
    db4a:	45 31 ff             	xor    r15d,r15d
    db4d:	c7 44 24 30 ff ff ff 	mov    DWORD PTR [rsp+0x30],0xffffffff
    db54:	ff 
    db55:	e8 46 52 ff ff       	call   2da0 <asn1_get_length_der@plt>
    db5a:	48 8d 3d 61 25 00 00 	lea    rdi,[rip+0x2561]        # 100c2 <bit_mask+0x5d2>
    db61:	48 89 d9             	mov    rcx,rbx
    db64:	ba 08 00 00 00       	mov    edx,0x8
    db69:	be 01 00 00 00       	mov    esi,0x1
    db6e:	89 44 24 28          	mov    DWORD PTR [rsp+0x28],eax
    db72:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
    db77:	e8 74 52 ff ff       	call   2df0 <fwrite@plt>
    db7c:	4c 8b 44 24 20       	mov    r8,QWORD PTR [rsp+0x20]
    db81:	45 85 c0             	test   r8d,r8d
    db84:	0f 8e 59 fd ff ff    	jle    d8e3 <asn1_print_structure+0x643>
    db8a:	89 6c 24 20          	mov    DWORD PTR [rsp+0x20],ebp
    db8e:	48 89 dd             	mov    rbp,rbx
    db91:	8b 5c 24 28          	mov    ebx,DWORD PTR [rsp+0x28]
    db95:	0f 1f 00             	nop    DWORD PTR [rax]
    db98:	8b 44 24 30          	mov    eax,DWORD PTR [rsp+0x30]
    db9c:	49 8b 54 24 50       	mov    rdx,QWORD PTR [r12+0x50]
    dba1:	48 89 ee             	mov    rsi,rbp
    dba4:	44 01 f8             	add    eax,r15d
    dba7:	41 83 c7 01          	add    r15d,0x1
    dbab:	48 98                	cdqe   
    dbad:	0f b6 3c 02          	movzx  edi,BYTE PTR [rdx+rax*1]
    dbb1:	e8 ba 50 ff ff       	call   2c70 <fputc@plt>
    dbb6:	44 39 fb             	cmp    ebx,r15d
    dbb9:	75 dd                	jne    db98 <asn1_print_structure+0x8f8>
    dbbb:	48 89 eb             	mov    rbx,rbp
    dbbe:	41 8b 54 24 48       	mov    edx,DWORD PTR [r12+0x48]
    dbc3:	8b 6c 24 20          	mov    ebp,DWORD PTR [rsp+0x20]
    dbc7:	e9 c4 f9 ff ff       	jmp    d590 <asn1_print_structure+0x2f0>
    dbcc:	49 8b 7c 24 50       	mov    rdi,QWORD PTR [r12+0x50]
    dbd1:	48 85 ff             	test   rdi,rdi
    dbd4:	0f 84 9d fe ff ff    	je     da77 <asn1_print_structure+0x7d7>
    dbda:	41 8b 74 24 58       	mov    esi,DWORD PTR [r12+0x58]
    dbdf:	48 8b 54 24 10       	mov    rdx,QWORD PTR [rsp+0x10]
    dbe4:	45 31 ff             	xor    r15d,r15d
    dbe7:	c7 44 24 30 ff ff ff 	mov    DWORD PTR [rsp+0x30],0xffffffff
    dbee:	ff 
    dbef:	e8 ac 51 ff ff       	call   2da0 <asn1_get_length_der@plt>
    dbf4:	48 8d 3d aa 24 00 00 	lea    rdi,[rip+0x24aa]        # 100a5 <bit_mask+0x5b5>
    dbfb:	48 89 d9             	mov    rcx,rbx
    dbfe:	ba 0a 00 00 00       	mov    edx,0xa
    dc03:	be 01 00 00 00       	mov    esi,0x1
    dc08:	89 44 24 28          	mov    DWORD PTR [rsp+0x28],eax
    dc0c:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
    dc11:	e8 da 51 ff ff       	call   2df0 <fwrite@plt>
    dc16:	4c 8b 4c 24 20       	mov    r9,QWORD PTR [rsp+0x20]
    dc1b:	45 85 c9             	test   r9d,r9d
    dc1e:	0f 8e bf fc ff ff    	jle    d8e3 <asn1_print_structure+0x643>
    dc24:	89 6c 24 20          	mov    DWORD PTR [rsp+0x20],ebp
    dc28:	48 89 dd             	mov    rbp,rbx
    dc2b:	8b 5c 24 28          	mov    ebx,DWORD PTR [rsp+0x28]
    dc2f:	90                   	nop
    dc30:	8b 44 24 30          	mov    eax,DWORD PTR [rsp+0x30]
    dc34:	49 8b 54 24 50       	mov    rdx,QWORD PTR [r12+0x50]
    dc39:	be 01 00 00 00       	mov    esi,0x1
    dc3e:	48 89 ef             	mov    rdi,rbp
    dc41:	44 01 f8             	add    eax,r15d
    dc44:	41 83 c7 01          	add    r15d,0x1
    dc48:	48 98                	cdqe   
    dc4a:	0f b6 0c 02          	movzx  ecx,BYTE PTR [rdx+rax*1]
    dc4e:	48 8d 15 5b 24 00 00 	lea    rdx,[rip+0x245b]        # 100b0 <bit_mask+0x5c0>
    dc55:	31 c0                	xor    eax,eax
    dc57:	e8 b4 51 ff ff       	call   2e10 <__fprintf_chk@plt>
    dc5c:	44 39 fb             	cmp    ebx,r15d
    dc5f:	75 cf                	jne    dc30 <asn1_print_structure+0x990>
    dc61:	48 89 eb             	mov    rbx,rbp
    dc64:	41 8b 54 24 48       	mov    edx,DWORD PTR [r12+0x48]
    dc69:	8b 6c 24 20          	mov    ebp,DWORD PTR [rsp+0x20]
    dc6d:	e9 1e f9 ff ff       	jmp    d590 <asn1_print_structure+0x2f0>
    dc72:	49 83 7c 24 50 00    	cmp    QWORD PTR [r12+0x50],0x0
    dc78:	0f 84 12 f9 ff ff    	je     d590 <asn1_print_structure+0x2f0>
    dc7e:	48 8d 3d 3d 24 00 00 	lea    rdi,[rip+0x243d]        # 100c2 <bit_mask+0x5d2>
    dc85:	ba 08 00 00 00       	mov    edx,0x8
    dc8a:	48 89 d9             	mov    rcx,rbx
    dc8d:	be 01 00 00 00       	mov    esi,0x1
    dc92:	45 31 ff             	xor    r15d,r15d
    dc95:	e8 56 51 ff ff       	call   2df0 <fwrite@plt>
    dc9a:	41 8b 54 24 58       	mov    edx,DWORD PTR [r12+0x58]
    dc9f:	85 d2                	test   edx,edx
    dca1:	0f 8e 3c fc ff ff    	jle    d8e3 <asn1_print_structure+0x643>
    dca7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    dcae:	00 00 
    dcb0:	49 8b 44 24 50       	mov    rax,QWORD PTR [r12+0x50]
    dcb5:	48 89 de             	mov    rsi,rbx
    dcb8:	42 0f b6 3c 38       	movzx  edi,BYTE PTR [rax+r15*1]
    dcbd:	e8 ae 4f ff ff       	call   2c70 <fputc@plt>
    dcc2:	41 8d 47 01          	lea    eax,[r15+0x1]
    dcc6:	49 83 c7 01          	add    r15,0x1
    dcca:	41 39 44 24 58       	cmp    DWORD PTR [r12+0x58],eax
    dccf:	7f df                	jg     dcb0 <asn1_print_structure+0xa10>
    dcd1:	41 8b 54 24 48       	mov    edx,DWORD PTR [r12+0x48]
    dcd6:	e9 b5 f8 ff ff       	jmp    d590 <asn1_print_structure+0x2f0>
    dcdb:	48 8d 3d 12 24 00 00 	lea    rdi,[rip+0x2412]        # 100f4 <bit_mask+0x604>
    dce2:	48 89 d9             	mov    rcx,rbx
    dce5:	ba 09 00 00 00       	mov    edx,0x9
    dcea:	be 01 00 00 00       	mov    esi,0x1
    dcef:	e8 fc 50 ff ff       	call   2df0 <fwrite@plt>
    dcf4:	41 8b 44 24 48       	mov    eax,DWORD PTR [r12+0x48]
    dcf9:	f6 c4 10             	test   ah,0x10
    dcfc:	0f 84 ef f8 ff ff    	je     d5f1 <asn1_print_structure+0x351>
    dd02:	48 8d 3d f5 23 00 00 	lea    rdi,[rip+0x23f5]        # 100fe <bit_mask+0x60e>
    dd09:	48 89 d9             	mov    rcx,rbx
    dd0c:	ba 09 00 00 00       	mov    edx,0x9
    dd11:	be 01 00 00 00       	mov    esi,0x1
    dd16:	e8 d5 50 ff ff       	call   2df0 <fwrite@plt>
    dd1b:	41 8b 44 24 48       	mov    eax,DWORD PTR [r12+0x48]
    dd20:	f6 c4 20             	test   ah,0x20
    dd23:	0f 84 d1 f8 ff ff    	je     d5fa <asn1_print_structure+0x35a>
    dd29:	48 8d 3d d8 23 00 00 	lea    rdi,[rip+0x23d8]        # 10108 <bit_mask+0x618>
    dd30:	48 89 d9             	mov    rcx,rbx
    dd33:	ba 04 00 00 00       	mov    edx,0x4
    dd38:	be 01 00 00 00       	mov    esi,0x1
    dd3d:	e8 ae 50 ff ff       	call   2df0 <fwrite@plt>
    dd42:	41 8b 44 24 48       	mov    eax,DWORD PTR [r12+0x48]
    dd47:	f6 c4 80             	test   ah,0x80
    dd4a:	0f 84 b3 f8 ff ff    	je     d603 <asn1_print_structure+0x363>
    dd50:	48 8d 3d b6 23 00 00 	lea    rdi,[rip+0x23b6]        # 1010d <bit_mask+0x61d>
    dd57:	48 89 d9             	mov    rcx,rbx
    dd5a:	ba 08 00 00 00       	mov    edx,0x8
    dd5f:	be 01 00 00 00       	mov    esi,0x1
    dd64:	e8 87 50 ff ff       	call   2df0 <fwrite@plt>
    dd69:	41 8b 44 24 48       	mov    eax,DWORD PTR [r12+0x48]
    dd6e:	a9 00 00 01 00       	test   eax,0x10000
    dd73:	0f 84 95 f8 ff ff    	je     d60e <asn1_print_structure+0x36e>
    dd79:	48 8d 3d 96 23 00 00 	lea    rdi,[rip+0x2396]        # 10116 <bit_mask+0x626>
    dd80:	48 89 d9             	mov    rcx,rbx
    dd83:	ba 05 00 00 00       	mov    edx,0x5
    dd88:	be 01 00 00 00       	mov    esi,0x1
    dd8d:	e8 5e 50 ff ff       	call   2df0 <fwrite@plt>
    dd92:	41 8b 44 24 48       	mov    eax,DWORD PTR [r12+0x48]
    dd97:	a9 00 00 02 00       	test   eax,0x20000
    dd9c:	0f 84 77 f8 ff ff    	je     d619 <asn1_print_structure+0x379>
    dda2:	48 8d 3d 73 23 00 00 	lea    rdi,[rip+0x2373]        # 1011c <bit_mask+0x62c>
    dda9:	48 89 d9             	mov    rcx,rbx
    ddac:	ba 06 00 00 00       	mov    edx,0x6
    ddb1:	be 01 00 00 00       	mov    esi,0x1
    ddb6:	e8 35 50 ff ff       	call   2df0 <fwrite@plt>
    ddbb:	41 8b 44 24 48       	mov    eax,DWORD PTR [r12+0x48]
    ddc0:	a9 00 00 04 00       	test   eax,0x40000
    ddc5:	0f 84 59 f8 ff ff    	je     d624 <asn1_print_structure+0x384>
    ddcb:	48 8d 3d 51 23 00 00 	lea    rdi,[rip+0x2351]        # 10123 <bit_mask+0x633>
    ddd2:	48 89 d9             	mov    rcx,rbx
    ddd5:	ba 05 00 00 00       	mov    edx,0x5
    ddda:	be 01 00 00 00       	mov    esi,0x1
    dddf:	e8 0c 50 ff ff       	call   2df0 <fwrite@plt>
    dde4:	41 8b 44 24 48       	mov    eax,DWORD PTR [r12+0x48]
    dde9:	a9 00 00 08 00       	test   eax,0x80000
    ddee:	0f 84 3b f8 ff ff    	je     d62f <asn1_print_structure+0x38f>
    ddf4:	48 8d 3d 2e 23 00 00 	lea    rdi,[rip+0x232e]        # 10129 <bit_mask+0x639>
    ddfb:	48 89 d9             	mov    rcx,rbx
    ddfe:	ba 08 00 00 00       	mov    edx,0x8
    de03:	be 01 00 00 00       	mov    esi,0x1
    de08:	e8 e3 4f ff ff       	call   2df0 <fwrite@plt>
    de0d:	41 8b 44 24 48       	mov    eax,DWORD PTR [r12+0x48]
    de12:	f6 c4 40             	test   ah,0x40
    de15:	0f 84 1d f8 ff ff    	je     d638 <asn1_print_structure+0x398>
    de1b:	48 8d 3d 10 23 00 00 	lea    rdi,[rip+0x2310]        # 10132 <bit_mask+0x642>
    de22:	48 89 d9             	mov    rcx,rbx
    de25:	ba 07 00 00 00       	mov    edx,0x7
    de2a:	be 01 00 00 00       	mov    esi,0x1
    de2f:	e8 bc 4f ff ff       	call   2df0 <fwrite@plt>
    de34:	41 8b 44 24 48       	mov    eax,DWORD PTR [r12+0x48]
    de39:	a9 00 00 10 00       	test   eax,0x100000
    de3e:	0f 84 ff f7 ff ff    	je     d643 <asn1_print_structure+0x3a3>
    de44:	48 8d 3d ef 22 00 00 	lea    rdi,[rip+0x22ef]        # 1013a <bit_mask+0x64a>
    de4b:	48 89 d9             	mov    rcx,rbx
    de4e:	ba 08 00 00 00       	mov    edx,0x8
    de53:	be 01 00 00 00       	mov    esi,0x1
    de58:	e8 93 4f ff ff       	call   2df0 <fwrite@plt>
    de5d:	41 8b 44 24 48       	mov    eax,DWORD PTR [r12+0x48]
    de62:	a9 00 00 20 00       	test   eax,0x200000
    de67:	0f 84 e1 f7 ff ff    	je     d64e <asn1_print_structure+0x3ae>
    de6d:	48 8d 3d cf 22 00 00 	lea    rdi,[rip+0x22cf]        # 10143 <bit_mask+0x653>
    de74:	48 89 d9             	mov    rcx,rbx
    de77:	ba 05 00 00 00       	mov    edx,0x5
    de7c:	be 01 00 00 00       	mov    esi,0x1
    de81:	e8 6a 4f ff ff       	call   2df0 <fwrite@plt>
    de86:	41 8b 44 24 48       	mov    eax,DWORD PTR [r12+0x48]
    de8b:	a9 00 00 40 00       	test   eax,0x400000
    de90:	0f 84 c3 f7 ff ff    	je     d659 <asn1_print_structure+0x3b9>
    de96:	48 8d 3d ac 22 00 00 	lea    rdi,[rip+0x22ac]        # 10149 <bit_mask+0x659>
    de9d:	48 89 d9             	mov    rcx,rbx
    dea0:	ba 07 00 00 00       	mov    edx,0x7
    dea5:	be 01 00 00 00       	mov    esi,0x1
    deaa:	e8 41 4f ff ff       	call   2df0 <fwrite@plt>
    deaf:	41 8b 44 24 48       	mov    eax,DWORD PTR [r12+0x48]
    deb4:	a9 00 00 80 00       	test   eax,0x800000
    deb9:	0f 84 a5 f7 ff ff    	je     d664 <asn1_print_structure+0x3c4>
    debf:	48 8d 3d 8b 22 00 00 	lea    rdi,[rip+0x228b]        # 10151 <bit_mask+0x661>
    dec6:	48 89 d9             	mov    rcx,rbx
    dec9:	ba 0c 00 00 00       	mov    edx,0xc
    dece:	be 01 00 00 00       	mov    esi,0x1
    ded3:	e8 18 4f ff ff       	call   2df0 <fwrite@plt>
    ded8:	41 8b 44 24 48       	mov    eax,DWORD PTR [r12+0x48]
    dedd:	a9 00 00 00 01       	test   eax,0x1000000
    dee2:	0f 84 87 f7 ff ff    	je     d66f <asn1_print_structure+0x3cf>
    dee8:	48 8d 3d 6f 22 00 00 	lea    rdi,[rip+0x226f]        # 1015e <bit_mask+0x66e>
    deef:	48 89 d9             	mov    rcx,rbx
    def2:	ba 04 00 00 00       	mov    edx,0x4
    def7:	be 01 00 00 00       	mov    esi,0x1
    defc:	e8 ef 4e ff ff       	call   2df0 <fwrite@plt>
    df01:	41 8b 44 24 48       	mov    eax,DWORD PTR [r12+0x48]
    df06:	a9 00 00 00 08       	test   eax,0x8000000
    df0b:	0f 84 69 f7 ff ff    	je     d67a <asn1_print_structure+0x3da>
    df11:	48 8d 3d 4b 22 00 00 	lea    rdi,[rip+0x224b]        # 10163 <bit_mask+0x673>
    df18:	48 89 d9             	mov    rcx,rbx
    df1b:	ba 04 00 00 00       	mov    edx,0x4
    df20:	be 01 00 00 00       	mov    esi,0x1
    df25:	e8 c6 4e ff ff       	call   2df0 <fwrite@plt>
    df2a:	41 8b 44 24 48       	mov    eax,DWORD PTR [r12+0x48]
    df2f:	a9 00 00 00 04       	test   eax,0x4000000
    df34:	0f 84 4b f7 ff ff    	je     d685 <asn1_print_structure+0x3e5>
    df3a:	48 8d 3d 27 22 00 00 	lea    rdi,[rip+0x2227]        # 10168 <bit_mask+0x678>
    df41:	48 89 d9             	mov    rcx,rbx
    df44:	ba 09 00 00 00       	mov    edx,0x9
    df49:	be 01 00 00 00       	mov    esi,0x1
    df4e:	e8 9d 4e ff ff       	call   2df0 <fwrite@plt>
    df53:	41 8b 44 24 48       	mov    eax,DWORD PTR [r12+0x48]
    df58:	e9 28 f7 ff ff       	jmp    d685 <asn1_print_structure+0x3e5>
    df5d:	48 8d 3d 83 21 00 00 	lea    rdi,[rip+0x2183]        # 100e7 <bit_mask+0x5f7>
    df64:	48 89 d9             	mov    rcx,rbx
    df67:	ba 0c 00 00 00       	mov    edx,0xc
    df6c:	be 01 00 00 00       	mov    esi,0x1
    df71:	e8 7a 4e ff ff       	call   2df0 <fwrite@plt>
    df76:	41 8b 44 24 48       	mov    eax,DWORD PTR [r12+0x48]
    df7b:	e9 5f f6 ff ff       	jmp    d5df <asn1_print_structure+0x33f>
    df80:	48 8d 3d 57 21 00 00 	lea    rdi,[rip+0x2157]        # 100de <bit_mask+0x5ee>
    df87:	48 89 d9             	mov    rcx,rbx
    df8a:	ba 08 00 00 00       	mov    edx,0x8
    df8f:	be 01 00 00 00       	mov    esi,0x1
    df94:	e8 57 4e ff ff       	call   2df0 <fwrite@plt>
    df99:	41 8b 44 24 48       	mov    eax,DWORD PTR [r12+0x48]
    df9e:	e9 33 f6 ff ff       	jmp    d5d6 <asn1_print_structure+0x336>
    dfa3:	48 8d 3d 29 21 00 00 	lea    rdi,[rip+0x2129]        # 100d3 <bit_mask+0x5e3>
    dfaa:	48 89 d9             	mov    rcx,rbx
    dfad:	ba 0a 00 00 00       	mov    edx,0xa
    dfb2:	be 01 00 00 00       	mov    esi,0x1
    dfb7:	e8 34 4e ff ff       	call   2df0 <fwrite@plt>
    dfbc:	41 8b 44 24 48       	mov    eax,DWORD PTR [r12+0x48]
    dfc1:	e9 07 f6 ff ff       	jmp    d5cd <asn1_print_structure+0x32d>
    dfc6:	48 8d 3d 5c 20 00 00 	lea    rdi,[rip+0x205c]        # 10029 <bit_mask+0x539>
    dfcd:	48 89 d9             	mov    rcx,rbx
    dfd0:	ba 08 00 00 00       	mov    edx,0x8
    dfd5:	be 01 00 00 00       	mov    esi,0x1
    dfda:	e8 11 4e ff ff       	call   2df0 <fwrite@plt>
    dfdf:	e9 3b f8 ff ff       	jmp    d81f <asn1_print_structure+0x57f>
    dfe4:	48 8d 3d 93 21 00 00 	lea    rdi,[rip+0x2193]        # 1017e <bit_mask+0x68e>
    dfeb:	48 89 d9             	mov    rcx,rbx
    dfee:	ba 0a 00 00 00       	mov    edx,0xa
    dff3:	be 01 00 00 00       	mov    esi,0x1
    dff8:	e8 f3 4d ff ff       	call   2df0 <fwrite@plt>
    dffd:	e9 1d f8 ff ff       	jmp    d81f <asn1_print_structure+0x57f>
    e002:	48 8d 3d 81 20 00 00 	lea    rdi,[rip+0x2081]        # 1008a <bit_mask+0x59a>
    e009:	ba 0c 00 00 00       	mov    edx,0xc
    e00e:	48 89 d9             	mov    rcx,rbx
    e011:	be 01 00 00 00       	mov    esi,0x1
    e016:	e8 d5 4d ff ff       	call   2df0 <fwrite@plt>
    e01b:	41 8b 54 24 48       	mov    edx,DWORD PTR [r12+0x48]
    e020:	e9 6b f5 ff ff       	jmp    d590 <asn1_print_structure+0x2f0>
    e025:	e8 a6 4b ff ff       	call   2bd0 <__stack_chk_fail@plt>
    e02a:	0f b6 ca             	movzx  ecx,dl
    e02d:	e9 37 f3 ff ff       	jmp    d369 <asn1_print_structure+0xc9>
    e032:	41 83 fd 04          	cmp    r13d,0x4
    e036:	0f 85 2a f3 ff ff    	jne    d366 <asn1_print_structure+0xc6>
    e03c:	49 8b 4c 24 50       	mov    rcx,QWORD PTR [r12+0x50]
    e041:	48 85 c9             	test   rcx,rcx
    e044:	74 1b                	je     e061 <asn1_print_structure+0xdc1>
    e046:	48 8d 15 32 20 00 00 	lea    rdx,[rip+0x2032]        # 1007f <bit_mask+0x58f>
    e04d:	be 01 00 00 00       	mov    esi,0x1
    e052:	48 89 df             	mov    rdi,rbx
    e055:	31 c0                	xor    eax,eax
    e057:	e8 b4 4d ff ff       	call   2e10 <__fprintf_chk@plt>
    e05c:	41 8b 44 24 48       	mov    eax,DWORD PTR [r12+0x48]
    e061:	89 c2                	mov    edx,eax
    e063:	e9 32 f5 ff ff       	jmp    d59a <asn1_print_structure+0x2fa>
    e068:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    e06f:	00 

000000000000e070 <asn1_number_of_elements>:
    e070:	48 85 d2             	test   rdx,rdx
    e073:	b8 06 00 00 00       	mov    eax,0x6
    e078:	74 4b                	je     e0c5 <asn1_number_of_elements+0x55>
    e07a:	53                   	push   rbx
    e07b:	c7 02 00 00 00 00    	mov    DWORD PTR [rdx],0x0
    e081:	48 89 d3             	mov    rbx,rdx
    e084:	e8 a7 4a ff ff       	call   2b30 <asn1_find_node@plt>
    e089:	48 89 c2             	mov    rdx,rax
    e08c:	b8 02 00 00 00       	mov    eax,0x2
    e091:	48 85 d2             	test   rdx,rdx
    e094:	74 2e                	je     e0c4 <asn1_number_of_elements+0x54>
    e096:	48 8b 42 60          	mov    rax,QWORD PTR [rdx+0x60]
    e09a:	48 85 c0             	test   rax,rax
    e09d:	75 12                	jne    e0b1 <asn1_number_of_elements+0x41>
    e09f:	eb 21                	jmp    e0c2 <asn1_number_of_elements+0x52>
    e0a1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    e0a8:	48 8b 40 68          	mov    rax,QWORD PTR [rax+0x68]
    e0ac:	48 85 c0             	test   rax,rax
    e0af:	74 11                	je     e0c2 <asn1_number_of_elements+0x52>
    e0b1:	80 38 3f             	cmp    BYTE PTR [rax],0x3f
    e0b4:	75 f2                	jne    e0a8 <asn1_number_of_elements+0x38>
    e0b6:	48 8b 40 68          	mov    rax,QWORD PTR [rax+0x68]
    e0ba:	83 03 01             	add    DWORD PTR [rbx],0x1
    e0bd:	48 85 c0             	test   rax,rax
    e0c0:	75 ef                	jne    e0b1 <asn1_number_of_elements+0x41>
    e0c2:	31 c0                	xor    eax,eax
    e0c4:	5b                   	pop    rbx
    e0c5:	f3 c3                	repz ret 
    e0c7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    e0ce:	00 00 

000000000000e0d0 <asn1_find_structure_from_oid>:
    e0d0:	41 57                	push   r15
    e0d2:	41 56                	push   r14
    e0d4:	41 55                	push   r13
    e0d6:	41 54                	push   r12
    e0d8:	55                   	push   rbp
    e0d9:	53                   	push   rbx
    e0da:	48 81 ec e8 00 00 00 	sub    rsp,0xe8
    e0e1:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    e0e8:	00 00 
    e0ea:	48 89 84 24 d8 00 00 	mov    QWORD PTR [rsp+0xd8],rax
    e0f1:	00 
    e0f2:	31 c0                	xor    eax,eax
    e0f4:	48 85 ff             	test   rdi,rdi
    e0f7:	0f 84 ab 00 00 00    	je     e1a8 <asn1_find_structure_from_oid+0xd8>
    e0fd:	48 85 f6             	test   rsi,rsi
    e100:	49 89 f6             	mov    r14,rsi
    e103:	0f 84 9f 00 00 00    	je     e1a8 <asn1_find_structure_from_oid+0xd8>
    e109:	48 8b 5f 60          	mov    rbx,QWORD PTR [rdi+0x60]
    e10d:	48 89 fd             	mov    rbp,rdi
    e110:	48 85 db             	test   rbx,rbx
    e113:	0f 84 8f 00 00 00    	je     e1a8 <asn1_find_structure_from_oid+0xd8>
    e119:	4c 8d 64 24 50       	lea    r12,[rsp+0x50]
    e11e:	4c 8d 7c 24 0c       	lea    r15,[rsp+0xc]
    e123:	4c 8d 6c 24 10       	lea    r13,[rsp+0x10]
    e128:	eb 0f                	jmp    e139 <asn1_find_structure_from_oid+0x69>
    e12a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    e130:	48 8b 5b 68          	mov    rbx,QWORD PTR [rbx+0x68]
    e134:	48 85 db             	test   rbx,rbx
    e137:	74 6f                	je     e1a8 <asn1_find_structure_from_oid+0xd8>
    e139:	8b 43 48             	mov    eax,DWORD PTR [rbx+0x48]
    e13c:	3c 0c                	cmp    al,0xc
    e13e:	75 f0                	jne    e130 <asn1_find_structure_from_oid+0x60>
    e140:	a9 00 00 00 10       	test   eax,0x10000000
    e145:	74 e9                	je     e130 <asn1_find_structure_from_oid+0x60>
    e147:	48 83 ec 08          	sub    rsp,0x8
    e14b:	4c 8d 05 68 1b 00 00 	lea    r8,[rip+0x1b68]        # fcba <bit_mask+0x1ca>
    e152:	49 89 e9             	mov    r9,rbp
    e155:	53                   	push   rbx
    e156:	b9 82 00 00 00       	mov    ecx,0x82
    e15b:	ba 01 00 00 00       	mov    edx,0x1
    e160:	be 82 00 00 00       	mov    esi,0x82
    e165:	4c 89 e7             	mov    rdi,r12
    e168:	31 c0                	xor    eax,eax
    e16a:	e8 91 49 ff ff       	call   2b00 <__snprintf_chk@plt>
    e16f:	4c 89 f9             	mov    rcx,r15
    e172:	4c 89 ea             	mov    rdx,r13
    e175:	4c 89 e6             	mov    rsi,r12
    e178:	48 89 ef             	mov    rdi,rbp
    e17b:	c7 44 24 1c 40 00 00 	mov    DWORD PTR [rsp+0x1c],0x40
    e182:	00 
    e183:	e8 d8 4b ff ff       	call   2d60 <asn1_read_value@plt>
    e188:	85 c0                	test   eax,eax
    e18a:	5a                   	pop    rdx
    e18b:	59                   	pop    rcx
    e18c:	75 a2                	jne    e130 <asn1_find_structure_from_oid+0x60>
    e18e:	4c 89 ee             	mov    rsi,r13
    e191:	4c 89 f7             	mov    rdi,r14
    e194:	e8 27 4b ff ff       	call   2cc0 <strcmp@plt>
    e199:	85 c0                	test   eax,eax
    e19b:	75 93                	jne    e130 <asn1_find_structure_from_oid+0x60>
    e19d:	48 8b 43 68          	mov    rax,QWORD PTR [rbx+0x68]
    e1a1:	eb 07                	jmp    e1aa <asn1_find_structure_from_oid+0xda>
    e1a3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    e1a8:	31 c0                	xor    eax,eax
    e1aa:	48 8b 94 24 d8 00 00 	mov    rdx,QWORD PTR [rsp+0xd8]
    e1b1:	00 
    e1b2:	64 48 33 14 25 28 00 	xor    rdx,QWORD PTR fs:0x28
    e1b9:	00 00 
    e1bb:	75 12                	jne    e1cf <asn1_find_structure_from_oid+0xff>
    e1bd:	48 81 c4 e8 00 00 00 	add    rsp,0xe8
    e1c4:	5b                   	pop    rbx
    e1c5:	5d                   	pop    rbp
    e1c6:	41 5c                	pop    r12
    e1c8:	41 5d                	pop    r13
    e1ca:	41 5e                	pop    r14
    e1cc:	41 5f                	pop    r15
    e1ce:	c3                   	ret    
    e1cf:	e8 fc 49 ff ff       	call   2bd0 <__stack_chk_fail@plt>
    e1d4:	66 90                	xchg   ax,ax
    e1d6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    e1dd:	00 00 00 

000000000000e1e0 <asn1_copy_node>:
    e1e0:	41 57                	push   r15
    e1e2:	41 56                	push   r14
    e1e4:	45 31 c0             	xor    r8d,r8d
    e1e7:	41 55                	push   r13
    e1e9:	41 54                	push   r12
    e1eb:	49 89 cc             	mov    r12,rcx
    e1ee:	55                   	push   rbp
    e1ef:	53                   	push   rbx
    e1f0:	48 89 d5             	mov    rbp,rdx
    e1f3:	49 89 fd             	mov    r13,rdi
    e1f6:	31 d2                	xor    edx,edx
    e1f8:	49 89 f6             	mov    r14,rsi
    e1fb:	48 83 ec 38          	sub    rsp,0x38
    e1ff:	4c 89 e6             	mov    rsi,r12
    e202:	48 89 ef             	mov    rdi,rbp
    e205:	4c 8d 7c 24 1c       	lea    r15,[rsp+0x1c]
    e20a:	c7 44 24 1c 00 00 00 	mov    DWORD PTR [rsp+0x1c],0x0
    e211:	00 
    e212:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
    e219:	00 00 
    e21b:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
    e220:	31 c0                	xor    eax,eax
    e222:	4c 89 f9             	mov    rcx,r15
    e225:	e8 36 49 ff ff       	call   2b60 <asn1_der_coding@plt>
    e22a:	83 f8 0c             	cmp    eax,0xc
    e22d:	89 c3                	mov    ebx,eax
    e22f:	74 2f                	je     e260 <asn1_copy_node+0x80>
    e231:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
    e236:	64 48 33 14 25 28 00 	xor    rdx,QWORD PTR fs:0x28
    e23d:	00 00 
    e23f:	89 d8                	mov    eax,ebx
    e241:	0f 85 ab 00 00 00    	jne    e2f2 <asn1_copy_node+0x112>
    e247:	48 83 c4 38          	add    rsp,0x38
    e24b:	5b                   	pop    rbx
    e24c:	5d                   	pop    rbp
    e24d:	41 5c                	pop    r12
    e24f:	41 5d                	pop    r13
    e251:	41 5e                	pop    r14
    e253:	41 5f                	pop    r15
    e255:	c3                   	ret    
    e256:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    e25d:	00 00 00 
    e260:	48 63 7c 24 1c       	movsxd rdi,DWORD PTR [rsp+0x1c]
    e265:	e8 a6 4a ff ff       	call   2d10 <malloc@plt>
    e26a:	48 85 c0             	test   rax,rax
    e26d:	74 c2                	je     e231 <asn1_copy_node+0x51>
    e26f:	45 31 c0             	xor    r8d,r8d
    e272:	4c 89 f9             	mov    rcx,r15
    e275:	48 89 c2             	mov    rdx,rax
    e278:	4c 89 e6             	mov    rsi,r12
    e27b:	48 89 ef             	mov    rdi,rbp
    e27e:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    e283:	e8 d8 48 ff ff       	call   2b60 <asn1_der_coding@plt>
    e288:	85 c0                	test   eax,eax
    e28a:	89 c3                	mov    ebx,eax
    e28c:	4c 8b 4c 24 08       	mov    r9,QWORD PTR [rsp+0x8]
    e291:	75 3e                	jne    e2d1 <asn1_copy_node+0xf1>
    e293:	4c 89 f6             	mov    rsi,r14
    e296:	4c 89 ef             	mov    rdi,r13
    e299:	4c 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],r9
    e29e:	e8 8d 48 ff ff       	call   2b30 <asn1_find_node@plt>
    e2a3:	48 85 c0             	test   rax,rax
    e2a6:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
    e2ab:	4c 8b 4c 24 08       	mov    r9,QWORD PTR [rsp+0x8]
    e2b0:	74 2e                	je     e2e0 <asn1_copy_node+0x100>
    e2b2:	8b 54 24 1c          	mov    edx,DWORD PTR [rsp+0x1c]
    e2b6:	48 8d 7c 24 20       	lea    rdi,[rsp+0x20]
    e2bb:	4c 89 ce             	mov    rsi,r9
    e2be:	31 c9                	xor    ecx,ecx
    e2c0:	4c 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],r9
    e2c5:	e8 66 4a ff ff       	call   2d30 <asn1_der_decoding@plt>
    e2ca:	4c 8b 4c 24 08       	mov    r9,QWORD PTR [rsp+0x8]
    e2cf:	89 c3                	mov    ebx,eax
    e2d1:	4c 89 cf             	mov    rdi,r9
    e2d4:	e8 37 48 ff ff       	call   2b10 <free@plt>
    e2d9:	e9 53 ff ff ff       	jmp    e231 <asn1_copy_node+0x51>
    e2de:	66 90                	xchg   ax,ax
    e2e0:	4c 89 cf             	mov    rdi,r9
    e2e3:	bb 02 00 00 00       	mov    ebx,0x2
    e2e8:	e8 23 48 ff ff       	call   2b10 <free@plt>
    e2ed:	e9 3f ff ff ff       	jmp    e231 <asn1_copy_node+0x51>
    e2f2:	e8 d9 48 ff ff       	call   2bd0 <__stack_chk_fail@plt>
    e2f7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    e2fe:	00 00 

000000000000e300 <asn1_dup_node>:
    e300:	48 83 ec 08          	sub    rsp,0x8
    e304:	e8 27 48 ff ff       	call   2b30 <asn1_find_node@plt>
    e309:	48 83 c4 08          	add    rsp,0x8
    e30d:	48 89 c7             	mov    rdi,rax
    e310:	e9 6b e9 ff ff       	jmp    cc80 <_asn1_copy_structure3>
    e315:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    e31c:	00 00 00 
    e31f:	90                   	nop

000000000000e320 <asn1_check_version>:
    e320:	48 85 ff             	test   rdi,rdi
    e323:	74 2b                	je     e350 <asn1_check_version+0x30>
    e325:	48 8d 35 54 20 00 00 	lea    rsi,[rip+0x2054]        # 10380 <bit_mask+0x890>
    e32c:	48 83 ec 08          	sub    rsp,0x8
    e330:	e8 0b 48 ff ff       	call   2b40 <strverscmp@plt>
    e335:	85 c0                	test   eax,eax
    e337:	48 8d 05 42 20 00 00 	lea    rax,[rip+0x2042]        # 10380 <bit_mask+0x890>
    e33e:	ba 00 00 00 00       	mov    edx,0x0
    e343:	48 0f 4f c2          	cmovg  rax,rdx
    e347:	48 83 c4 08          	add    rsp,0x8
    e34b:	c3                   	ret    
    e34c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    e350:	48 8d 05 29 20 00 00 	lea    rax,[rip+0x2029]        # 10380 <bit_mask+0x890>
    e357:	c3                   	ret    
    e358:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    e35f:	00 

000000000000e360 <c_isalnum>:
    e360:	83 ff 5a             	cmp    edi,0x5a
    e363:	7f 13                	jg     e378 <c_isalnum+0x18>
    e365:	83 ff 41             	cmp    edi,0x41
    e368:	7d 16                	jge    e380 <c_isalnum+0x20>
    e36a:	83 ef 30             	sub    edi,0x30
    e36d:	83 ff 09             	cmp    edi,0x9
    e370:	76 0e                	jbe    e380 <c_isalnum+0x20>
    e372:	31 c0                	xor    eax,eax
    e374:	c3                   	ret    
    e375:	0f 1f 00             	nop    DWORD PTR [rax]
    e378:	83 ef 61             	sub    edi,0x61
    e37b:	83 ff 19             	cmp    edi,0x19
    e37e:	77 f2                	ja     e372 <c_isalnum+0x12>
    e380:	b8 01 00 00 00       	mov    eax,0x1
    e385:	c3                   	ret    
    e386:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    e38d:	00 00 00 

000000000000e390 <c_isalpha>:
    e390:	8d 4f bf             	lea    ecx,[rdi-0x41]
    e393:	31 c0                	xor    eax,eax
    e395:	83 f9 39             	cmp    ecx,0x39
    e398:	77 18                	ja     e3b2 <c_isalpha+0x22>
    e39a:	b8 01 00 00 00       	mov    eax,0x1
    e39f:	48 ba ff ff ff 03 ff 	movabs rdx,0x3ffffff03ffffff
    e3a6:	ff ff 03 
    e3a9:	48 d3 e0             	shl    rax,cl
    e3ac:	48 85 d0             	test   rax,rdx
    e3af:	0f 95 c0             	setne  al
    e3b2:	f3 c3                	repz ret 
    e3b4:	66 90                	xchg   ax,ax
    e3b6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    e3bd:	00 00 00 

000000000000e3c0 <c_isascii>:
    e3c0:	83 ff 7f             	cmp    edi,0x7f
    e3c3:	0f 96 c0             	setbe  al
    e3c6:	c3                   	ret    
    e3c7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    e3ce:	00 00 

000000000000e3d0 <c_isblank>:
    e3d0:	83 ff 20             	cmp    edi,0x20
    e3d3:	0f 94 c2             	sete   dl
    e3d6:	83 ff 09             	cmp    edi,0x9
    e3d9:	0f 94 c0             	sete   al
    e3dc:	09 d0                	or     eax,edx
    e3de:	c3                   	ret    
    e3df:	90                   	nop

000000000000e3e0 <c_iscntrl>:
    e3e0:	85 ff                	test   edi,edi
    e3e2:	78 0a                	js     e3ee <c_iscntrl+0xe>
    e3e4:	83 ff 1f             	cmp    edi,0x1f
    e3e7:	7e 0f                	jle    e3f8 <c_iscntrl+0x18>
    e3e9:	83 ff 7f             	cmp    edi,0x7f
    e3ec:	74 0a                	je     e3f8 <c_iscntrl+0x18>
    e3ee:	31 c0                	xor    eax,eax
    e3f0:	c3                   	ret    
    e3f1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    e3f8:	b8 01 00 00 00       	mov    eax,0x1
    e3fd:	c3                   	ret    
    e3fe:	66 90                	xchg   ax,ax

000000000000e400 <c_isdigit>:
    e400:	83 ef 30             	sub    edi,0x30
    e403:	83 ff 09             	cmp    edi,0x9
    e406:	0f 96 c0             	setbe  al
    e409:	c3                   	ret    
    e40a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

000000000000e410 <c_isgraph>:
    e410:	83 ef 21             	sub    edi,0x21
    e413:	83 ff 5d             	cmp    edi,0x5d
    e416:	0f 96 c0             	setbe  al
    e419:	c3                   	ret    
    e41a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

000000000000e420 <c_islower>:
    e420:	83 ef 61             	sub    edi,0x61
    e423:	83 ff 19             	cmp    edi,0x19
    e426:	0f 96 c0             	setbe  al
    e429:	c3                   	ret    
    e42a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

000000000000e430 <c_isprint>:
    e430:	83 ef 20             	sub    edi,0x20
    e433:	83 ff 5e             	cmp    edi,0x5e
    e436:	0f 96 c0             	setbe  al
    e439:	c3                   	ret    
    e43a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

000000000000e440 <c_ispunct>:
    e440:	83 ff 40             	cmp    edi,0x40
    e443:	7f 13                	jg     e458 <c_ispunct+0x18>
    e445:	83 ff 3a             	cmp    edi,0x3a
    e448:	7d 20                	jge    e46a <c_ispunct+0x2a>
    e44a:	83 ef 21             	sub    edi,0x21
    e44d:	83 ff 0e             	cmp    edi,0xe
    e450:	76 18                	jbe    e46a <c_ispunct+0x2a>
    e452:	31 c0                	xor    eax,eax
    e454:	c3                   	ret    
    e455:	0f 1f 00             	nop    DWORD PTR [rax]
    e458:	83 ff 5b             	cmp    edi,0x5b
    e45b:	7c f5                	jl     e452 <c_ispunct+0x12>
    e45d:	83 ff 60             	cmp    edi,0x60
    e460:	7e 08                	jle    e46a <c_ispunct+0x2a>
    e462:	83 ef 7b             	sub    edi,0x7b
    e465:	83 ff 03             	cmp    edi,0x3
    e468:	77 e8                	ja     e452 <c_ispunct+0x12>
    e46a:	b8 01 00 00 00       	mov    eax,0x1
    e46f:	c3                   	ret    

000000000000e470 <c_isspace>:
    e470:	31 c0                	xor    eax,eax
    e472:	83 ff 20             	cmp    edi,0x20
    e475:	77 1a                	ja     e491 <c_isspace+0x21>
    e477:	b8 01 00 00 00       	mov    eax,0x1
    e47c:	89 f9                	mov    ecx,edi
    e47e:	48 ba 00 3e 00 00 01 	movabs rdx,0x100003e00
    e485:	00 00 00 
    e488:	48 d3 e0             	shl    rax,cl
    e48b:	48 85 d0             	test   rax,rdx
    e48e:	0f 95 c0             	setne  al
    e491:	f3 c3                	repz ret 
    e493:	0f 1f 00             	nop    DWORD PTR [rax]
    e496:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    e49d:	00 00 00 

000000000000e4a0 <c_isupper>:
    e4a0:	83 ef 41             	sub    edi,0x41
    e4a3:	83 ff 19             	cmp    edi,0x19
    e4a6:	0f 96 c0             	setbe  al
    e4a9:	c3                   	ret    
    e4aa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

000000000000e4b0 <c_isxdigit>:
    e4b0:	8d 4f d0             	lea    ecx,[rdi-0x30]
    e4b3:	31 c0                	xor    eax,eax
    e4b5:	83 f9 36             	cmp    ecx,0x36
    e4b8:	77 18                	ja     e4d2 <c_isxdigit+0x22>
    e4ba:	b8 01 00 00 00       	mov    eax,0x1
    e4bf:	48 ba ff 03 7e 00 00 	movabs rdx,0x7e0000007e03ff
    e4c6:	00 7e 00 
    e4c9:	48 d3 e0             	shl    rax,cl
    e4cc:	48 85 d0             	test   rax,rdx
    e4cf:	0f 95 c0             	setne  al
    e4d2:	f3 c3                	repz ret 
    e4d4:	66 90                	xchg   ax,ax
    e4d6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    e4dd:	00 00 00 

000000000000e4e0 <c_tolower>:
    e4e0:	8d 57 bf             	lea    edx,[rdi-0x41]
    e4e3:	8d 47 20             	lea    eax,[rdi+0x20]
    e4e6:	83 fa 19             	cmp    edx,0x19
    e4e9:	0f 47 c7             	cmova  eax,edi
    e4ec:	c3                   	ret    
    e4ed:	0f 1f 00             	nop    DWORD PTR [rax]

000000000000e4f0 <c_toupper>:
    e4f0:	8d 57 9f             	lea    edx,[rdi-0x61]
    e4f3:	8d 47 e0             	lea    eax,[rdi-0x20]
    e4f6:	83 fa 19             	cmp    edx,0x19
    e4f9:	0f 47 c7             	cmova  eax,edi
    e4fc:	c3                   	ret    

Disassembly of section .fini:

000000000000e500 <_fini>:
    e500:	48 83 ec 08          	sub    rsp,0x8
    e504:	48 83 c4 08          	add    rsp,0x8
    e508:	c3                   	ret    
