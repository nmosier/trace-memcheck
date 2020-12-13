
/lib/x86_64-linux-gnu/libpthread-2.23.so:     file format elf64-x86-64


Disassembly of section .init:

0000000000005580 <_init>:
    5580:	48 83 ec 08          	sub    rsp,0x8
    5584:	e8 77 07 00 00       	call   5d00 <__pthread_initialize_minimal>
    5589:	48 83 c4 08          	add    rsp,0x8
    558d:	c3                   	ret    

Disassembly of section .plt:

0000000000005590 <__tsearch@plt-0x10>:
    5590:	ff 35 72 2a 21 00    	push   QWORD PTR [rip+0x212a72]        # 218008 <_GLOBAL_OFFSET_TABLE_+0x8>
    5596:	ff 25 74 2a 21 00    	jmp    QWORD PTR [rip+0x212a74]        # 218010 <_GLOBAL_OFFSET_TABLE_+0x10>
    559c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000000055a0 <__tsearch@plt>:
    55a0:	ff 25 72 2a 21 00    	jmp    QWORD PTR [rip+0x212a72]        # 218018 <_GLOBAL_OFFSET_TABLE_+0x18>
    55a6:	68 00 00 00 00       	push   0x0
    55ab:	e9 e0 ff ff ff       	jmp    5590 <_init+0x10>

00000000000055b0 <__clone@plt>:
    55b0:	ff 25 6a 2a 21 00    	jmp    QWORD PTR [rip+0x212a6a]        # 218020 <_GLOBAL_OFFSET_TABLE_+0x20>
    55b6:	68 01 00 00 00       	push   0x1
    55bb:	e9 d0 ff ff ff       	jmp    5590 <_init+0x10>

00000000000055c0 <free@plt>:
    55c0:	ff 25 62 2a 21 00    	jmp    QWORD PTR [rip+0x212a62]        # 218028 <_GLOBAL_OFFSET_TABLE_+0x28>
    55c6:	68 02 00 00 00       	push   0x2
    55cb:	e9 c0 ff ff ff       	jmp    5590 <_init+0x10>

00000000000055d0 <__getrlimit@plt>:
    55d0:	ff 25 5a 2a 21 00    	jmp    QWORD PTR [rip+0x212a5a]        # 218030 <_GLOBAL_OFFSET_TABLE_+0x30>
    55d6:	68 03 00 00 00       	push   0x3
    55db:	e9 b0 ff ff ff       	jmp    5590 <_init+0x10>

00000000000055e0 <abort@plt>:
    55e0:	ff 25 52 2a 21 00    	jmp    QWORD PTR [rip+0x212a52]        # 218038 <_GLOBAL_OFFSET_TABLE_+0x38>
    55e6:	68 04 00 00 00       	push   0x4
    55eb:	e9 a0 ff ff ff       	jmp    5590 <_init+0x10>

00000000000055f0 <unlink@plt>:
    55f0:	ff 25 4a 2a 21 00    	jmp    QWORD PTR [rip+0x212a4a]        # 218040 <_GLOBAL_OFFSET_TABLE_+0x40>
    55f6:	68 05 00 00 00       	push   0x5
    55fb:	e9 90 ff ff ff       	jmp    5590 <_init+0x10>

0000000000005600 <_exit@plt>:
    5600:	ff 25 42 2a 21 00    	jmp    QWORD PTR [rip+0x212a42]        # 218048 <_GLOBAL_OFFSET_TABLE_+0x48>
    5606:	68 06 00 00 00       	push   0x6
    560b:	e9 80 ff ff ff       	jmp    5590 <_init+0x10>

0000000000005610 <__sched_getscheduler@plt>:
    5610:	ff 25 3a 2a 21 00    	jmp    QWORD PTR [rip+0x212a3a]        # 218050 <_GLOBAL_OFFSET_TABLE_+0x50>
    5616:	68 07 00 00 00       	push   0x7
    561b:	e9 70 ff ff ff       	jmp    5590 <_init+0x10>

0000000000005620 <__libc_dlclose@plt>:
    5620:	ff 25 32 2a 21 00    	jmp    QWORD PTR [rip+0x212a32]        # 218058 <_GLOBAL_OFFSET_TABLE_+0x58>
    5626:	68 08 00 00 00       	push   0x8
    562b:	e9 60 ff ff ff       	jmp    5590 <_init+0x10>

0000000000005630 <__libc_fatal@plt>:
    5630:	ff 25 2a 2a 21 00    	jmp    QWORD PTR [rip+0x212a2a]        # 218060 <_GLOBAL_OFFSET_TABLE_+0x60>
    5636:	68 09 00 00 00       	push   0x9
    563b:	e9 50 ff ff ff       	jmp    5590 <_init+0x10>

0000000000005640 <__statfs@plt>:
    5640:	ff 25 22 2a 21 00    	jmp    QWORD PTR [rip+0x212a22]        # 218068 <_GLOBAL_OFFSET_TABLE_+0x68>
    5646:	68 0a 00 00 00       	push   0xa
    564b:	e9 40 ff ff ff       	jmp    5590 <_init+0x10>

0000000000005650 <__sched_get_priority_max@plt>:
    5650:	ff 25 1a 2a 21 00    	jmp    QWORD PTR [rip+0x212a1a]        # 218070 <_GLOBAL_OFFSET_TABLE_+0x70>
    5656:	68 0b 00 00 00       	push   0xb
    565b:	e9 30 ff ff ff       	jmp    5590 <_init+0x10>

0000000000005660 <__mempcpy@plt>:
    5660:	ff 25 12 2a 21 00    	jmp    QWORD PTR [rip+0x212a12]        # 218078 <_GLOBAL_OFFSET_TABLE_+0x78>
    5666:	68 0c 00 00 00       	push   0xc
    566b:	e9 20 ff ff ff       	jmp    5590 <_init+0x10>

0000000000005670 <fclose@plt>:
    5670:	ff 25 0a 2a 21 00    	jmp    QWORD PTR [rip+0x212a0a]        # 218080 <_GLOBAL_OFFSET_TABLE_+0x80>
    5676:	68 0d 00 00 00       	push   0xd
    567b:	e9 10 ff ff ff       	jmp    5590 <_init+0x10>

0000000000005680 <strlen@plt>:
    5680:	ff 25 02 2a 21 00    	jmp    QWORD PTR [rip+0x212a02]        # 218088 <_GLOBAL_OFFSET_TABLE_+0x88>
    5686:	68 0e 00 00 00       	push   0xe
    568b:	e9 00 ff ff ff       	jmp    5590 <_init+0x10>

0000000000005690 <getuid@plt>:
    5690:	ff 25 fa 29 21 00    	jmp    QWORD PTR [rip+0x2129fa]        # 218090 <_GLOBAL_OFFSET_TABLE_+0x90>
    5696:	68 0f 00 00 00       	push   0xf
    569b:	e9 f0 fe ff ff       	jmp    5590 <_init+0x10>

00000000000056a0 <mmap@plt>:
    56a0:	ff 25 f2 29 21 00    	jmp    QWORD PTR [rip+0x2129f2]        # 218098 <_GLOBAL_OFFSET_TABLE_+0x98>
    56a6:	68 10 00 00 00       	push   0x10
    56ab:	e9 e0 fe ff ff       	jmp    5590 <_init+0x10>

00000000000056b0 <strchr@plt>:
    56b0:	ff 25 ea 29 21 00    	jmp    QWORD PTR [rip+0x2129ea]        # 2180a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
    56b6:	68 11 00 00 00       	push   0x11
    56bb:	e9 d0 fe ff ff       	jmp    5590 <_init+0x10>

00000000000056c0 <__gettimeofday@plt>:
    56c0:	ff 25 e2 29 21 00    	jmp    QWORD PTR [rip+0x2129e2]        # 2180a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
    56c6:	68 12 00 00 00       	push   0x12
    56cb:	e9 c0 fe ff ff       	jmp    5590 <_init+0x10>

00000000000056d0 <__assert_fail@plt>:
    56d0:	ff 25 da 29 21 00    	jmp    QWORD PTR [rip+0x2129da]        # 2180b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
    56d6:	68 13 00 00 00       	push   0x13
    56db:	e9 b0 fe ff ff       	jmp    5590 <_init+0x10>

00000000000056e0 <memset@plt>:
    56e0:	ff 25 d2 29 21 00    	jmp    QWORD PTR [rip+0x2129d2]        # 2180b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
    56e6:	68 14 00 00 00       	push   0x14
    56eb:	e9 a0 fe ff ff       	jmp    5590 <_init+0x10>

00000000000056f0 <__libc_fork@plt>:
    56f0:	ff 25 ca 29 21 00    	jmp    QWORD PTR [rip+0x2129ca]        # 2180c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
    56f6:	68 15 00 00 00       	push   0x15
    56fb:	e9 90 fe ff ff       	jmp    5590 <_init+0x10>

0000000000005700 <__register_atfork@plt>:
    5700:	ff 25 c2 29 21 00    	jmp    QWORD PTR [rip+0x2129c2]        # 2180c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
    5706:	68 16 00 00 00       	push   0x16
    570b:	e9 80 fe ff ff       	jmp    5590 <_init+0x10>

0000000000005710 <sched_yield@plt>:
    5710:	ff 25 ba 29 21 00    	jmp    QWORD PTR [rip+0x2129ba]        # 2180d0 <_GLOBAL_OFFSET_TABLE_+0xd0>
    5716:	68 17 00 00 00       	push   0x17
    571b:	e9 70 fe ff ff       	jmp    5590 <_init+0x10>

0000000000005720 <_dl_deallocate_tls@plt>:
    5720:	ff 25 b2 29 21 00    	jmp    QWORD PTR [rip+0x2129b2]        # 2180d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
    5726:	68 18 00 00 00       	push   0x18
    572b:	e9 60 fe ff ff       	jmp    5590 <_init+0x10>

0000000000005730 <__call_tls_dtors@plt>:
    5730:	ff 25 aa 29 21 00    	jmp    QWORD PTR [rip+0x2129aa]        # 2180e0 <_GLOBAL_OFFSET_TABLE_+0xe0>
    5736:	68 19 00 00 00       	push   0x19
    573b:	e9 50 fe ff ff       	jmp    5590 <_init+0x10>

0000000000005740 <__sched_getparam@plt>:
    5740:	ff 25 a2 29 21 00    	jmp    QWORD PTR [rip+0x2129a2]        # 2180e8 <_GLOBAL_OFFSET_TABLE_+0xe8>
    5746:	68 1a 00 00 00       	push   0x1a
    574b:	e9 40 fe ff ff       	jmp    5590 <_init+0x10>

0000000000005750 <_setjmp@plt>:
    5750:	ff 25 9a 29 21 00    	jmp    QWORD PTR [rip+0x21299a]        # 2180f0 <_GLOBAL_OFFSET_TABLE_+0xf0>
    5756:	68 1b 00 00 00       	push   0x1b
    575b:	e9 30 fe ff ff       	jmp    5590 <_init+0x10>

0000000000005760 <calloc@plt>:
    5760:	ff 25 92 29 21 00    	jmp    QWORD PTR [rip+0x212992]        # 2180f8 <_GLOBAL_OFFSET_TABLE_+0xf8>
    5766:	68 1c 00 00 00       	push   0x1c
    576b:	e9 20 fe ff ff       	jmp    5590 <_init+0x10>

0000000000005770 <__getdelim@plt>:
    5770:	ff 25 8a 29 21 00    	jmp    QWORD PTR [rip+0x21298a]        # 218100 <_GLOBAL_OFFSET_TABLE_+0x100>
    5776:	68 1d 00 00 00       	push   0x1d
    577b:	e9 10 fe ff ff       	jmp    5590 <_init+0x10>

0000000000005780 <__getmntent_r@plt>:
    5780:	ff 25 82 29 21 00    	jmp    QWORD PTR [rip+0x212982]        # 218108 <_GLOBAL_OFFSET_TABLE_+0x108>
    5786:	68 1e 00 00 00       	push   0x1e
    578b:	e9 00 fe ff ff       	jmp    5590 <_init+0x10>

0000000000005790 <__fxstat64@plt>:
    5790:	ff 25 7a 29 21 00    	jmp    QWORD PTR [rip+0x21297a]        # 218110 <_GLOBAL_OFFSET_TABLE_+0x110>
    5796:	68 1f 00 00 00       	push   0x1f
    579b:	e9 f0 fd ff ff       	jmp    5590 <_init+0x10>

00000000000057a0 <strcmp@plt>:
    57a0:	ff 25 72 29 21 00    	jmp    QWORD PTR [rip+0x212972]        # 218118 <_GLOBAL_OFFSET_TABLE_+0x118>
    57a6:	68 20 00 00 00       	push   0x20
    57ab:	e9 e0 fd ff ff       	jmp    5590 <_init+0x10>

00000000000057b0 <__libc_thread_freeres@plt>:
    57b0:	ff 25 6a 29 21 00    	jmp    QWORD PTR [rip+0x21296a]        # 218120 <_GLOBAL_OFFSET_TABLE_+0x120>
    57b6:	68 21 00 00 00       	push   0x21
    57bb:	e9 d0 fd ff ff       	jmp    5590 <_init+0x10>

00000000000057c0 <__endmntent@plt>:
    57c0:	ff 25 62 29 21 00    	jmp    QWORD PTR [rip+0x212962]        # 218128 <_GLOBAL_OFFSET_TABLE_+0x128>
    57c6:	68 22 00 00 00       	push   0x22
    57cb:	e9 c0 fd ff ff       	jmp    5590 <_init+0x10>

00000000000057d0 <memcpy@plt>:
    57d0:	ff 25 5a 29 21 00    	jmp    QWORD PTR [rip+0x21295a]        # 218130 <_GLOBAL_OFFSET_TABLE_+0x130>
    57d6:	68 23 00 00 00       	push   0x23
    57db:	e9 b0 fd ff ff       	jmp    5590 <_init+0x10>

00000000000057e0 <prctl@plt>:
    57e0:	ff 25 52 29 21 00    	jmp    QWORD PTR [rip+0x212952]        # 218138 <_GLOBAL_OFFSET_TABLE_+0x138>
    57e6:	68 24 00 00 00       	push   0x24
    57eb:	e9 a0 fd ff ff       	jmp    5590 <_init+0x10>

00000000000057f0 <__libc_current_sigrtmax_private@plt>:
    57f0:	ff 25 4a 29 21 00    	jmp    QWORD PTR [rip+0x21294a]        # 218140 <_GLOBAL_OFFSET_TABLE_+0x140>
    57f6:	68 25 00 00 00       	push   0x25
    57fb:	e9 90 fd ff ff       	jmp    5590 <_init+0x10>

0000000000005800 <__tdelete@plt>:
    5800:	ff 25 42 29 21 00    	jmp    QWORD PTR [rip+0x212942]        # 218148 <_GLOBAL_OFFSET_TABLE_+0x148>
    5806:	68 26 00 00 00       	push   0x26
    580b:	e9 80 fd ff ff       	jmp    5590 <_init+0x10>

0000000000005810 <__sched_setscheduler@plt>:
    5810:	ff 25 3a 29 21 00    	jmp    QWORD PTR [rip+0x21293a]        # 218150 <_GLOBAL_OFFSET_TABLE_+0x150>
    5816:	68 27 00 00 00       	push   0x27
    581b:	e9 70 fd ff ff       	jmp    5590 <_init+0x10>

0000000000005820 <__libc_dlopen_mode@plt>:
    5820:	ff 25 32 29 21 00    	jmp    QWORD PTR [rip+0x212932]        # 218158 <_GLOBAL_OFFSET_TABLE_+0x158>
    5826:	68 28 00 00 00       	push   0x28
    582b:	e9 60 fd ff ff       	jmp    5590 <_init+0x10>

0000000000005830 <__getpagesize@plt>:
    5830:	ff 25 2a 29 21 00    	jmp    QWORD PTR [rip+0x21292a]        # 218160 <_GLOBAL_OFFSET_TABLE_+0x160>
    5836:	68 29 00 00 00       	push   0x29
    583b:	e9 50 fd ff ff       	jmp    5590 <_init+0x10>

0000000000005840 <malloc@plt>:
    5840:	ff 25 22 29 21 00    	jmp    QWORD PTR [rip+0x212922]        # 218168 <_GLOBAL_OFFSET_TABLE_+0x168>
    5846:	68 2a 00 00 00       	push   0x2a
    584b:	e9 40 fd ff ff       	jmp    5590 <_init+0x10>

0000000000005850 <sched_get_priority_min@plt>:
    5850:	ff 25 1a 29 21 00    	jmp    QWORD PTR [rip+0x21291a]        # 218170 <_GLOBAL_OFFSET_TABLE_+0x170>
    5856:	68 2b 00 00 00       	push   0x2b
    585b:	e9 30 fd ff ff       	jmp    5590 <_init+0x10>

0000000000005860 <_dl_make_stack_executable@plt>:
    5860:	ff 25 12 29 21 00    	jmp    QWORD PTR [rip+0x212912]        # 218178 <_GLOBAL_OFFSET_TABLE_+0x178>
    5866:	68 2c 00 00 00       	push   0x2c
    586b:	e9 20 fd ff ff       	jmp    5590 <_init+0x10>

0000000000005870 <__libc_pthread_init@plt>:
    5870:	ff 25 0a 29 21 00    	jmp    QWORD PTR [rip+0x21290a]        # 218180 <_GLOBAL_OFFSET_TABLE_+0x180>
    5876:	68 2d 00 00 00       	push   0x2d
    587b:	e9 10 fd ff ff       	jmp    5590 <_init+0x10>

0000000000005880 <__ctype_init@plt>:
    5880:	ff 25 02 29 21 00    	jmp    QWORD PTR [rip+0x212902]        # 218188 <_GLOBAL_OFFSET_TABLE_+0x188>
    5886:	68 2e 00 00 00       	push   0x2e
    588b:	e9 00 fd ff ff       	jmp    5590 <_init+0x10>

0000000000005890 <sscanf@plt>:
    5890:	ff 25 fa 28 21 00    	jmp    QWORD PTR [rip+0x2128fa]        # 218190 <_GLOBAL_OFFSET_TABLE_+0x190>
    5896:	68 2f 00 00 00       	push   0x2f
    589b:	e9 f0 fc ff ff       	jmp    5590 <_init+0x10>

00000000000058a0 <realloc@plt>:
    58a0:	ff 25 f2 28 21 00    	jmp    QWORD PTR [rip+0x2128f2]        # 218198 <_GLOBAL_OFFSET_TABLE_+0x198>
    58a6:	68 30 00 00 00       	push   0x30
    58ab:	e9 e0 fc ff ff       	jmp    5590 <_init+0x10>

00000000000058b0 <__libc_dlsym@plt>:
    58b0:	ff 25 ea 28 21 00    	jmp    QWORD PTR [rip+0x2128ea]        # 2181a0 <_GLOBAL_OFFSET_TABLE_+0x1a0>
    58b6:	68 31 00 00 00       	push   0x31
    58bb:	e9 d0 fc ff ff       	jmp    5590 <_init+0x10>

00000000000058c0 <__tfind@plt>:
    58c0:	ff 25 e2 28 21 00    	jmp    QWORD PTR [rip+0x2128e2]        # 2181a8 <_GLOBAL_OFFSET_TABLE_+0x1a8>
    58c6:	68 32 00 00 00       	push   0x32
    58cb:	e9 c0 fc ff ff       	jmp    5590 <_init+0x10>

00000000000058d0 <munmap@plt>:
    58d0:	ff 25 da 28 21 00    	jmp    QWORD PTR [rip+0x2128da]        # 2181b0 <_GLOBAL_OFFSET_TABLE_+0x1b0>
    58d6:	68 33 00 00 00       	push   0x33
    58db:	e9 b0 fc ff ff       	jmp    5590 <_init+0x10>

00000000000058e0 <__libc_current_sigrtmin_private@plt>:
    58e0:	ff 25 d2 28 21 00    	jmp    QWORD PTR [rip+0x2128d2]        # 2181b8 <_GLOBAL_OFFSET_TABLE_+0x1b8>
    58e6:	68 34 00 00 00       	push   0x34
    58eb:	e9 a0 fc ff ff       	jmp    5590 <_init+0x10>

00000000000058f0 <__madvise@plt>:
    58f0:	ff 25 ca 28 21 00    	jmp    QWORD PTR [rip+0x2128ca]        # 2181c0 <_GLOBAL_OFFSET_TABLE_+0x1c0>
    58f6:	68 35 00 00 00       	push   0x35
    58fb:	e9 90 fc ff ff       	jmp    5590 <_init+0x10>

0000000000005900 <mprotect@plt>:
    5900:	ff 25 c2 28 21 00    	jmp    QWORD PTR [rip+0x2128c2]        # 2181c8 <_GLOBAL_OFFSET_TABLE_+0x1c8>
    5906:	68 36 00 00 00       	push   0x36
    590b:	e9 80 fc ff ff       	jmp    5590 <_init+0x10>

0000000000005910 <fopen@plt>:
    5910:	ff 25 ba 28 21 00    	jmp    QWORD PTR [rip+0x2128ba]        # 2181d0 <_GLOBAL_OFFSET_TABLE_+0x1d0>
    5916:	68 37 00 00 00       	push   0x37
    591b:	e9 70 fc ff ff       	jmp    5590 <_init+0x10>

0000000000005920 <__mktemp@plt>:
    5920:	ff 25 b2 28 21 00    	jmp    QWORD PTR [rip+0x2128b2]        # 2181d8 <_GLOBAL_OFFSET_TABLE_+0x1d8>
    5926:	68 38 00 00 00       	push   0x38
    592b:	e9 60 fc ff ff       	jmp    5590 <_init+0x10>

0000000000005930 <__twalk@plt>:
    5930:	ff 25 aa 28 21 00    	jmp    QWORD PTR [rip+0x2128aa]        # 2181e0 <_GLOBAL_OFFSET_TABLE_+0x1e0>
    5936:	68 39 00 00 00       	push   0x39
    593b:	e9 50 fc ff ff       	jmp    5590 <_init+0x10>

0000000000005940 <_dl_allocate_tls@plt>:
    5940:	ff 25 a2 28 21 00    	jmp    QWORD PTR [rip+0x2128a2]        # 2181e8 <_GLOBAL_OFFSET_TABLE_+0x1e8>
    5946:	68 3a 00 00 00       	push   0x3a
    594b:	e9 40 fc ff ff       	jmp    5590 <_init+0x10>

0000000000005950 <__setmntent@plt>:
    5950:	ff 25 9a 28 21 00    	jmp    QWORD PTR [rip+0x21289a]        # 2181f0 <_GLOBAL_OFFSET_TABLE_+0x1f0>
    5956:	68 3b 00 00 00       	push   0x3b
    595b:	e9 30 fc ff ff       	jmp    5590 <_init+0x10>

0000000000005960 <sched_setparam@plt>:
    5960:	ff 25 92 28 21 00    	jmp    QWORD PTR [rip+0x212892]        # 2181f8 <_GLOBAL_OFFSET_TABLE_+0x1f8>
    5966:	68 3c 00 00 00       	push   0x3c
    596b:	e9 20 fc ff ff       	jmp    5590 <_init+0x10>

0000000000005970 <_dl_get_tls_static_info@plt>:
    5970:	ff 25 8a 28 21 00    	jmp    QWORD PTR [rip+0x21288a]        # 218200 <_GLOBAL_OFFSET_TABLE_+0x200>
    5976:	68 3d 00 00 00       	push   0x3d
    597b:	e9 10 fc ff ff       	jmp    5590 <_init+0x10>

0000000000005980 <sprintf@plt>:
    5980:	ff 25 82 28 21 00    	jmp    QWORD PTR [rip+0x212882]        # 218208 <_GLOBAL_OFFSET_TABLE_+0x208>
    5986:	68 3e 00 00 00       	push   0x3e
    598b:	e9 00 fc ff ff       	jmp    5590 <_init+0x10>

0000000000005990 <link@plt>:
    5990:	ff 25 7a 28 21 00    	jmp    QWORD PTR [rip+0x21287a]        # 218210 <_GLOBAL_OFFSET_TABLE_+0x210>
    5996:	68 3f 00 00 00       	push   0x3f
    599b:	e9 f0 fb ff ff       	jmp    5590 <_init+0x10>

00000000000059a0 <exit@plt>:
    59a0:	ff 25 72 28 21 00    	jmp    QWORD PTR [rip+0x212872]        # 218218 <_GLOBAL_OFFSET_TABLE_+0x218>
    59a6:	68 40 00 00 00       	push   0x40
    59ab:	e9 e0 fb ff ff       	jmp    5590 <_init+0x10>

00000000000059b0 <sched_get_priority_max@plt>:
    59b0:	ff 25 6a 28 21 00    	jmp    QWORD PTR [rip+0x21286a]        # 218220 <_GLOBAL_OFFSET_TABLE_+0x220>
    59b6:	68 41 00 00 00       	push   0x41
    59bb:	e9 d0 fb ff ff       	jmp    5590 <_init+0x10>

00000000000059c0 <getrlimit@plt>:
    59c0:	ff 25 62 28 21 00    	jmp    QWORD PTR [rip+0x212862]        # 218228 <_GLOBAL_OFFSET_TABLE_+0x228>
    59c6:	68 42 00 00 00       	push   0x42
    59cb:	e9 c0 fb ff ff       	jmp    5590 <_init+0x10>

00000000000059d0 <__libc_alloca_cutoff@plt>:
    59d0:	ff 25 5a 28 21 00    	jmp    QWORD PTR [rip+0x21285a]        # 218230 <_GLOBAL_OFFSET_TABLE_+0x230>
    59d6:	68 43 00 00 00       	push   0x43
    59db:	e9 b0 fb ff ff       	jmp    5590 <_init+0x10>

00000000000059e0 <_dl_allocate_tls_init@plt>:
    59e0:	ff 25 52 28 21 00    	jmp    QWORD PTR [rip+0x212852]        # 218238 <_GLOBAL_OFFSET_TABLE_+0x238>
    59e6:	68 44 00 00 00       	push   0x44
    59eb:	e9 a0 fb ff ff       	jmp    5590 <_init+0x10>

00000000000059f0 <__libc_allocate_rtsig_private@plt>:
    59f0:	ff 25 4a 28 21 00    	jmp    QWORD PTR [rip+0x21284a]        # 218240 <_GLOBAL_OFFSET_TABLE_+0x240>
    59f6:	68 45 00 00 00       	push   0x45
    59fb:	e9 90 fb ff ff       	jmp    5590 <_init+0x10>

0000000000005a00 <__sched_get_priority_min@plt>:
    5a00:	ff 25 42 28 21 00    	jmp    QWORD PTR [rip+0x212842]        # 218248 <_GLOBAL_OFFSET_TABLE_+0x248>
    5a06:	68 46 00 00 00       	push   0x46
    5a0b:	e9 80 fb ff ff       	jmp    5590 <_init+0x10>

Disassembly of section .plt.got:

0000000000005a10 <.plt.got>:
    5a10:	ff 25 a2 25 21 00    	jmp    QWORD PTR [rip+0x2125a2]        # 217fb8 <_DYNAMIC+0x268>
    5a16:	66 90                	xchg   ax,ax
    5a18:	ff 25 c2 25 21 00    	jmp    QWORD PTR [rip+0x2125c2]        # 217fe0 <_DYNAMIC+0x290>
    5a1e:	66 90                	xchg   ax,ax
    5a20:	ff 25 c2 25 21 00    	jmp    QWORD PTR [rip+0x2125c2]        # 217fe8 <_DYNAMIC+0x298>
    5a26:	66 90                	xchg   ax,ax

Disassembly of section .text:

0000000000005a30 <deregister_tm_clones>:
    5a30:	48 8d 3d 69 28 21 00 	lea    rdi,[rip+0x212869]        # 2182a0 <__TMC_END__>
    5a37:	48 8d 05 69 28 21 00 	lea    rax,[rip+0x212869]        # 2182a7 <__nptl_initial_report_events+0x6>
    5a3e:	55                   	push   rbp
    5a3f:	48 29 f8             	sub    rax,rdi
    5a42:	48 89 e5             	mov    rbp,rsp
    5a45:	48 83 f8 0e          	cmp    rax,0xe
    5a49:	76 15                	jbe    5a60 <deregister_tm_clones+0x30>
    5a4b:	48 8b 05 2e 25 21 00 	mov    rax,QWORD PTR [rip+0x21252e]        # 217f80 <_DYNAMIC+0x230>
    5a52:	48 85 c0             	test   rax,rax
    5a55:	74 09                	je     5a60 <deregister_tm_clones+0x30>
    5a57:	5d                   	pop    rbp
    5a58:	ff e0                	jmp    rax
    5a5a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    5a60:	5d                   	pop    rbp
    5a61:	c3                   	ret    
    5a62:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    5a66:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    5a6d:	00 00 00 

0000000000005a70 <register_tm_clones>:
    5a70:	48 8d 3d 29 28 21 00 	lea    rdi,[rip+0x212829]        # 2182a0 <__TMC_END__>
    5a77:	48 8d 35 22 28 21 00 	lea    rsi,[rip+0x212822]        # 2182a0 <__TMC_END__>
    5a7e:	55                   	push   rbp
    5a7f:	48 29 fe             	sub    rsi,rdi
    5a82:	48 89 e5             	mov    rbp,rsp
    5a85:	48 c1 fe 03          	sar    rsi,0x3
    5a89:	48 89 f0             	mov    rax,rsi
    5a8c:	48 c1 e8 3f          	shr    rax,0x3f
    5a90:	48 01 c6             	add    rsi,rax
    5a93:	48 d1 fe             	sar    rsi,1
    5a96:	74 18                	je     5ab0 <register_tm_clones+0x40>
    5a98:	48 8b 05 31 25 21 00 	mov    rax,QWORD PTR [rip+0x212531]        # 217fd0 <_DYNAMIC+0x280>
    5a9f:	48 85 c0             	test   rax,rax
    5aa2:	74 0c                	je     5ab0 <register_tm_clones+0x40>
    5aa4:	5d                   	pop    rbp
    5aa5:	ff e0                	jmp    rax
    5aa7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    5aae:	00 00 
    5ab0:	5d                   	pop    rbp
    5ab1:	c3                   	ret    
    5ab2:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    5ab6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    5abd:	00 00 00 

0000000000005ac0 <__do_global_dtors_aux>:
    5ac0:	80 3d d9 27 21 00 00 	cmp    BYTE PTR [rip+0x2127d9],0x0        # 2182a0 <__TMC_END__>
    5ac7:	75 27                	jne    5af0 <__do_global_dtors_aux+0x30>
    5ac9:	48 83 3d 17 25 21 00 	cmp    QWORD PTR [rip+0x212517],0x0        # 217fe8 <_DYNAMIC+0x298>
    5ad0:	00 
    5ad1:	55                   	push   rbp
    5ad2:	48 89 e5             	mov    rbp,rsp
    5ad5:	74 0c                	je     5ae3 <__do_global_dtors_aux+0x23>
    5ad7:	48 8b 3d 72 27 21 00 	mov    rdi,QWORD PTR [rip+0x212772]        # 218250 <__dso_handle>
    5ade:	e8 3d ff ff ff       	call   5a20 <__sched_get_priority_min@plt+0x20>
    5ae3:	e8 48 ff ff ff       	call   5a30 <deregister_tm_clones>
    5ae8:	5d                   	pop    rbp
    5ae9:	c6 05 b0 27 21 00 01 	mov    BYTE PTR [rip+0x2127b0],0x1        # 2182a0 <__TMC_END__>
    5af0:	f3 c3                	repz ret 
    5af2:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    5af6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    5afd:	00 00 00 

0000000000005b00 <frame_dummy>:
    5b00:	48 8d 3d 89 20 21 00 	lea    rdi,[rip+0x212089]        # 217b90 <__JCR_END__>
    5b07:	48 83 3f 00          	cmp    QWORD PTR [rdi],0x0
    5b0b:	75 0b                	jne    5b18 <frame_dummy+0x18>
    5b0d:	e9 5e ff ff ff       	jmp    5a70 <register_tm_clones>
    5b12:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    5b18:	48 8b 05 a9 24 21 00 	mov    rax,QWORD PTR [rip+0x2124a9]        # 217fc8 <_DYNAMIC+0x278>
    5b1f:	48 85 c0             	test   rax,rax
    5b22:	74 e9                	je     5b0d <frame_dummy+0xd>
    5b24:	55                   	push   rbp
    5b25:	48 89 e5             	mov    rbp,rsp
    5b28:	ff d0                	call   rax
    5b2a:	5d                   	pop    rbp
    5b2b:	e9 40 ff ff ff       	jmp    5a70 <register_tm_clones>

0000000000005b30 <__nptl_set_robust>:
    5b30:	be 18 00 00 00       	mov    esi,0x18
    5b35:	48 81 c7 e0 02 00 00 	add    rdi,0x2e0
    5b3c:	b8 11 01 00 00       	mov    eax,0x111
    5b41:	0f 05                	syscall 
    5b43:	c3                   	ret    
    5b44:	66 90                	xchg   ax,ax
    5b46:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    5b4d:	00 00 00 

0000000000005b50 <sigcancel_handler>:
    5b50:	64 8b 04 25 d4 02 00 	mov    eax,DWORD PTR fs:0x2d4
    5b57:	00 
    5b58:	83 ff 20             	cmp    edi,0x20
    5b5b:	74 03                	je     5b60 <sigcancel_handler+0x10>
    5b5d:	f3 c3                	repz ret 
    5b5f:	90                   	nop
    5b60:	99                   	cdq    
    5b61:	31 d0                	xor    eax,edx
    5b63:	29 d0                	sub    eax,edx
    5b65:	3b 46 10             	cmp    eax,DWORD PTR [rsi+0x10]
    5b68:	75 f3                	jne    5b5d <sigcancel_handler+0xd>
    5b6a:	83 7e 08 fa          	cmp    DWORD PTR [rsi+0x8],0xfffffffa
    5b6e:	75 ed                	jne    5b5d <sigcancel_handler+0xd>
    5b70:	64 8b 14 25 08 03 00 	mov    edx,DWORD PTR fs:0x308
    5b77:	00 
    5b78:	eb 1d                	jmp    5b97 <sigcancel_handler+0x47>
    5b7a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    5b80:	f6 c2 10             	test   dl,0x10
    5b83:	75 d8                	jne    5b5d <sigcancel_handler+0xd>
    5b85:	89 d0                	mov    eax,edx
    5b87:	f0 64 0f b1 0c 25 08 	lock cmpxchg DWORD PTR fs:0x308,ecx
    5b8e:	03 00 00 
    5b91:	39 c2                	cmp    edx,eax
    5b93:	74 13                	je     5ba8 <sigcancel_handler+0x58>
    5b95:	89 c2                	mov    edx,eax
    5b97:	89 d1                	mov    ecx,edx
    5b99:	83 c9 0c             	or     ecx,0xc
    5b9c:	39 ca                	cmp    edx,ecx
    5b9e:	75 e0                	jne    5b80 <sigcancel_handler+0x30>
    5ba0:	f3 c3                	repz ret 
    5ba2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    5ba8:	64 48 c7 04 25 30 06 	mov    QWORD PTR fs:0x630,0xffffffffffffffff
    5baf:	00 00 ff ff ff ff 
    5bb5:	83 e2 02             	and    edx,0x2
    5bb8:	74 a3                	je     5b5d <sigcancel_handler+0xd>
    5bba:	50                   	push   rax
    5bbb:	f0 64 83 0c 25 08 03 	lock or DWORD PTR fs:0x308,0x10
    5bc2:	00 00 10 
    5bc5:	64 48 8b 3c 25 00 03 	mov    rdi,QWORD PTR fs:0x300
    5bcc:	00 00 
    5bce:	e8 5d a4 00 00       	call   10030 <__pthread_unwind>
    5bd3:	0f 1f 00             	nop    DWORD PTR [rax]
    5bd6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    5bdd:	00 00 00 

0000000000005be0 <sighandler_setxid>:
    5be0:	64 8b 04 25 d4 02 00 	mov    eax,DWORD PTR fs:0x2d4
    5be7:	00 
    5be8:	83 ff 21             	cmp    edi,0x21
    5beb:	74 03                	je     5bf0 <sighandler_setxid+0x10>
    5bed:	c3                   	ret    
    5bee:	66 90                	xchg   ax,ax
    5bf0:	99                   	cdq    
    5bf1:	31 d0                	xor    eax,edx
    5bf3:	29 d0                	sub    eax,edx
    5bf5:	39 46 10             	cmp    DWORD PTR [rsi+0x10],eax
    5bf8:	75 f3                	jne    5bed <sighandler_setxid+0xd>
    5bfa:	83 7e 08 fa          	cmp    DWORD PTR [rsi+0x8],0xfffffffa
    5bfe:	75 ed                	jne    5bed <sighandler_setxid+0xd>
    5c00:	48 83 ec 08          	sub    rsp,0x8
    5c04:	48 8b 05 5d 67 21 00 	mov    rax,QWORD PTR [rip+0x21675d]        # 21c368 <__xidcmd>
    5c0b:	48 8b 70 10          	mov    rsi,QWORD PTR [rax+0x10]
    5c0f:	48 8b 78 08          	mov    rdi,QWORD PTR [rax+0x8]
    5c13:	48 8b 50 18          	mov    rdx,QWORD PTR [rax+0x18]
    5c17:	8b 00                	mov    eax,DWORD PTR [rax]
    5c19:	0f 05                	syscall 
    5c1b:	48 8b 3d 46 67 21 00 	mov    rdi,QWORD PTR [rip+0x216746]        # 21c368 <__xidcmd>
    5c22:	89 c2                	mov    edx,eax
    5c24:	be 00 00 00 00       	mov    esi,0x0
    5c29:	f7 da                	neg    edx
    5c2b:	3d 00 f0 ff ff       	cmp    eax,0xfffff000
    5c30:	0f 47 f2             	cmova  esi,edx
    5c33:	e8 18 10 00 00       	call   6c50 <__nptl_setxid_error>
    5c38:	64 48 8b 3c 25 10 00 	mov    rdi,QWORD PTR fs:0x10
    5c3f:	00 00 
    5c41:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    5c48:	64 8b 14 25 08 03 00 	mov    edx,DWORD PTR fs:0x308
    5c4f:	00 
    5c50:	89 d1                	mov    ecx,edx
    5c52:	89 d0                	mov    eax,edx
    5c54:	83 e1 bf             	and    ecx,0xffffffbf
    5c57:	f0 64 0f b1 0c 25 08 	lock cmpxchg DWORD PTR fs:0x308,ecx
    5c5e:	03 00 00 
    5c61:	39 c2                	cmp    edx,eax
    5c63:	75 e3                	jne    5c48 <sighandler_setxid+0x68>
    5c65:	c7 87 1c 06 00 00 01 	mov    DWORD PTR [rdi+0x61c],0x1
    5c6c:	00 00 00 
    5c6f:	45 31 d2             	xor    r10d,r10d
    5c72:	ba 01 00 00 00       	mov    edx,0x1
    5c77:	be 81 00 00 00       	mov    esi,0x81
    5c7c:	48 81 c7 1c 06 00 00 	add    rdi,0x61c
    5c83:	b8 ca 00 00 00       	mov    eax,0xca
    5c88:	0f 05                	syscall 
    5c8a:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    5c90:	77 56                	ja     5ce8 <sighandler_setxid+0x108>
    5c92:	48 8b 05 cf 66 21 00 	mov    rax,QWORD PTR [rip+0x2166cf]        # 21c368 <__xidcmd>
    5c99:	f0 83 68 20 01       	lock sub DWORD PTR [rax+0x20],0x1
    5c9e:	74 08                	je     5ca8 <sighandler_setxid+0xc8>
    5ca0:	48 83 c4 08          	add    rsp,0x8
    5ca4:	c3                   	ret    
    5ca5:	0f 1f 00             	nop    DWORD PTR [rax]
    5ca8:	48 8b 05 b9 66 21 00 	mov    rax,QWORD PTR [rip+0x2166b9]        # 21c368 <__xidcmd>
    5caf:	45 31 d2             	xor    r10d,r10d
    5cb2:	ba 01 00 00 00       	mov    edx,0x1
    5cb7:	be 81 00 00 00       	mov    esi,0x81
    5cbc:	48 8d 78 20          	lea    rdi,[rax+0x20]
    5cc0:	b8 ca 00 00 00       	mov    eax,0xca
    5cc5:	0f 05                	syscall 
    5cc7:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    5ccd:	76 d1                	jbe    5ca0 <sighandler_setxid+0xc0>
    5ccf:	83 f8 ea             	cmp    eax,0xffffffea
    5cd2:	74 cc                	je     5ca0 <sighandler_setxid+0xc0>
    5cd4:	83 f8 f2             	cmp    eax,0xfffffff2
    5cd7:	74 c7                	je     5ca0 <sighandler_setxid+0xc0>
    5cd9:	48 8d 3d 00 ce 00 00 	lea    rdi,[rip+0xce00]        # 12ae0 <_fini+0xc>
    5ce0:	e8 4b f9 ff ff       	call   5630 <__libc_fatal@plt>
    5ce5:	0f 1f 00             	nop    DWORD PTR [rax]
    5ce8:	83 f8 ea             	cmp    eax,0xffffffea
    5ceb:	74 a5                	je     5c92 <sighandler_setxid+0xb2>
    5ced:	83 f8 f2             	cmp    eax,0xfffffff2
    5cf0:	74 a0                	je     5c92 <sighandler_setxid+0xb2>
    5cf2:	48 8d 3d e7 cd 00 00 	lea    rdi,[rip+0xcde7]        # 12ae0 <_fini+0xc>
    5cf9:	e8 32 f9 ff ff       	call   5630 <__libc_fatal@plt>
    5cfe:	66 90                	xchg   ax,ax

0000000000005d00 <__pthread_initialize_minimal>:
    5d00:	41 54                	push   r12
    5d02:	55                   	push   rbp
    5d03:	b8 da 00 00 00       	mov    eax,0xda
    5d08:	53                   	push   rbx
    5d09:	64 48 8b 14 25 10 00 	mov    rdx,QWORD PTR fs:0x10
    5d10:	00 00 
    5d12:	48 81 ec c0 00 00 00 	sub    rsp,0xc0
    5d19:	48 8d ba d0 02 00 00 	lea    rdi,[rdx+0x2d0]
    5d20:	0f 05                	syscall 
    5d22:	89 82 d0 02 00 00    	mov    DWORD PTR [rdx+0x2d0],eax
    5d28:	89 82 d4 02 00 00    	mov    DWORD PTR [rdx+0x2d4],eax
    5d2e:	48 8d 82 10 03 00 00 	lea    rax,[rdx+0x310]
    5d35:	64 48 89 04 25 10 05 	mov    QWORD PTR fs:0x510,rax
    5d3c:	00 00 
    5d3e:	64 c6 04 25 12 06 00 	mov    BYTE PTR fs:0x612,0x1
    5d45:	00 01 
    5d47:	48 8b 2d 8a 22 21 00 	mov    rbp,QWORD PTR [rip+0x21228a]        # 217fd8 <_DYNAMIC+0x288>
    5d4e:	48 8b 85 68 09 00 00 	mov    rax,QWORD PTR [rbp+0x968]
    5d55:	64 48 89 04 25 20 06 	mov    QWORD PTR fs:0x620,rax
    5d5c:	00 00 
    5d5e:	48 8d ba e0 02 00 00 	lea    rdi,[rdx+0x2e0]
    5d65:	48 c7 82 e8 02 00 00 	mov    QWORD PTR [rdx+0x2e8],0xffffffffffffffe0
    5d6c:	e0 ff ff ff 
    5d70:	be 18 00 00 00       	mov    esi,0x18
    5d75:	b8 11 01 00 00       	mov    eax,0x111
    5d7a:	48 89 ba d8 02 00 00 	mov    QWORD PTR [rdx+0x2d8],rdi
    5d81:	48 89 ba e0 02 00 00 	mov    QWORD PTR [rdx+0x2e0],rdi
    5d88:	0f 05                	syscall 
    5d8a:	48 8b 05 0f 22 21 00 	mov    rax,QWORD PTR [rip+0x21220f]        # 217fa0 <_DYNAMIC+0x250>
    5d91:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5d94:	64 48 89 04 25 98 06 	mov    QWORD PTR fs:0x698,rax
    5d9b:	00 00 
    5d9d:	48 8d 05 2c 65 21 00 	lea    rax,[rip+0x21652c]        # 21c2d0 <__GI___stack_user>
    5da4:	48 8d 0d 25 65 21 00 	lea    rcx,[rip+0x216525]        # 21c2d0 <__GI___stack_user>
    5dab:	48 89 05 1e 65 21 00 	mov    QWORD PTR [rip+0x21651e],rax        # 21c2d0 <__GI___stack_user>
    5db2:	48 8d 82 c0 02 00 00 	lea    rax,[rdx+0x2c0]
    5db9:	48 89 8a c0 02 00 00 	mov    QWORD PTR [rdx+0x2c0],rcx
    5dc0:	48 89 8a c8 02 00 00 	mov    QWORD PTR [rdx+0x2c8],rcx
    5dc7:	48 89 05 0a 65 21 00 	mov    QWORD PTR [rip+0x21650a],rax        # 21c2d8 <__GI___stack_user+0x8>
    5dce:	48 89 05 fb 64 21 00 	mov    QWORD PTR [rip+0x2164fb],rax        # 21c2d0 <__GI___stack_user>
    5dd5:	0f b6 05 c5 24 21 00 	movzx  eax,BYTE PTR [rip+0x2124c5]        # 2182a1 <__nptl_initial_report_events>
    5ddc:	64 88 04 25 11 06 00 	mov    BYTE PTR fs:0x611,al
    5de3:	00 
    5de4:	48 8d 5c 24 28       	lea    rbx,[rsp+0x28]
    5de9:	31 c0                	xor    eax,eax
    5deb:	b9 10 00 00 00       	mov    ecx,0x10
    5df0:	4c 8d 64 24 20       	lea    r12,[rsp+0x20]
    5df5:	31 d2                	xor    edx,edx
    5df7:	c7 84 24 a8 00 00 00 	mov    DWORD PTR [rsp+0xa8],0x4
    5dfe:	04 00 00 00 
    5e02:	48 89 df             	mov    rdi,rbx
    5e05:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
    5e08:	48 8d 05 41 fd ff ff 	lea    rax,[rip+0xfffffffffffffd41]        # 5b50 <sigcancel_handler>
    5e0f:	4c 89 e6             	mov    rsi,r12
    5e12:	bf 20 00 00 00       	mov    edi,0x20
    5e17:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
    5e1c:	e8 7f b5 00 00       	call   113a0 <__libc_sigaction>
    5e21:	48 8d 05 b8 fd ff ff 	lea    rax,[rip+0xfffffffffffffdb8]        # 5be0 <sighandler_setxid>
    5e28:	31 d2                	xor    edx,edx
    5e2a:	4c 89 e6             	mov    rsi,r12
    5e2d:	bf 21 00 00 00       	mov    edi,0x21
    5e32:	c7 84 24 a8 00 00 00 	mov    DWORD PTR [rsp+0xa8],0x10000004
    5e39:	04 00 00 10 
    5e3d:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
    5e42:	e8 59 b5 00 00       	call   113a0 <__libc_sigaction>
    5e47:	48 b8 00 00 00 80 01 	movabs rax,0x180000000
    5e4e:	00 00 00 
    5e51:	41 ba 08 00 00 00    	mov    r10d,0x8
    5e57:	48 09 44 24 28       	or     QWORD PTR [rsp+0x28],rax
    5e5c:	31 d2                	xor    edx,edx
    5e5e:	48 89 de             	mov    rsi,rbx
    5e61:	bf 01 00 00 00       	mov    edi,0x1
    5e66:	b8 0e 00 00 00       	mov    eax,0xe
    5e6b:	0f 05                	syscall 
    5e6d:	48 8d 3d 0c 65 21 00 	lea    rdi,[rip+0x21650c]        # 21c380 <__static_tls_size>
    5e74:	48 8d 74 24 08       	lea    rsi,[rsp+0x8]
    5e79:	e8 f2 fa ff ff       	call   5970 <_dl_get_tls_static_info@plt>
    5e7e:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    5e83:	48 83 f9 0f          	cmp    rcx,0xf
    5e87:	0f 87 d3 01 00 00    	ja     6060 <__pthread_initialize_minimal+0x360>
    5e8d:	48 c7 44 24 08 10 00 	mov    QWORD PTR [rsp+0x8],0x10
    5e94:	00 00 
    5e96:	48 c7 05 cf 64 21 00 	mov    QWORD PTR [rip+0x2164cf],0xf        # 21c370 <__static_tls_align_m1>
    5e9d:	0f 00 00 00 
    5ea1:	b9 10 00 00 00       	mov    ecx,0x10
    5ea6:	48 8b 05 d3 64 21 00 	mov    rax,QWORD PTR [rip+0x2164d3]        # 21c380 <__static_tls_size>
    5ead:	31 d2                	xor    edx,edx
    5eaf:	48 8d 74 24 10       	lea    rsi,[rsp+0x10]
    5eb4:	bf 03 00 00 00       	mov    edi,0x3
    5eb9:	48 8d 44 01 ff       	lea    rax,[rcx+rax*1-0x1]
    5ebe:	48 f7 f1             	div    rcx
    5ec1:	48 0f af c8          	imul   rcx,rax
    5ec5:	48 89 0d b4 64 21 00 	mov    QWORD PTR [rip+0x2164b4],rcx        # 21c380 <__static_tls_size>
    5ecc:	e8 ff f6 ff ff       	call   55d0 <__getrlimit@plt>
    5ed1:	85 c0                	test   eax,eax
    5ed3:	75 23                	jne    5ef8 <__pthread_initialize_minimal+0x1f8>
    5ed5:	48 8b 4c 24 10       	mov    rcx,QWORD PTR [rsp+0x10]
    5eda:	48 83 f9 ff          	cmp    rcx,0xffffffffffffffff
    5ede:	74 18                	je     5ef8 <__pthread_initialize_minimal+0x1f8>
    5ee0:	48 81 f9 ff 3f 00 00 	cmp    rcx,0x3fff
    5ee7:	b8 00 40 00 00       	mov    eax,0x4000
    5eec:	48 0f 46 c8          	cmovbe rcx,rax
    5ef0:	eb 0b                	jmp    5efd <__pthread_initialize_minimal+0x1fd>
    5ef2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    5ef8:	b9 00 00 20 00       	mov    ecx,0x200000
    5efd:	48 8b 05 a4 20 21 00 	mov    rax,QWORD PTR [rip+0x2120a4]        # 217fa8 <_DYNAMIC+0x258>
    5f04:	be 01 00 00 00       	mov    esi,0x1
    5f09:	4c 8b 40 18          	mov    r8,QWORD PTR [rax+0x18]
    5f0d:	4c 89 c2             	mov    rdx,r8
    5f10:	48 03 15 69 64 21 00 	add    rdx,QWORD PTR [rip+0x216469]        # 21c380 <__static_tls_size>
    5f17:	48 8d 82 00 08 00 00 	lea    rax,[rdx+0x800]
    5f1e:	48 39 c8             	cmp    rax,rcx
    5f21:	48 0f 42 c1          	cmovb  rax,rcx
    5f25:	49 8d 54 00 ff       	lea    rdx,[r8+rax*1-0x1]
    5f2a:	4c 89 c0             	mov    rax,r8
    5f2d:	48 f7 d8             	neg    rax
    5f30:	48 21 d0             	and    rax,rdx
    5f33:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
    5f38:	31 c0                	xor    eax,eax
    5f3a:	f0 0f b1 35 7e 63 21 	lock cmpxchg DWORD PTR [rip+0x21637e],esi        # 21c2c0 <__default_pthread_attr_lock>
    5f41:	00 
    5f42:	74 1a                	je     5f5e <__pthread_initialize_minimal+0x25e>
    5f44:	48 8d 3d 75 63 21 00 	lea    rdi,[rip+0x216375]        # 21c2c0 <__default_pthread_attr_lock>
    5f4b:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    5f52:	e8 c9 a2 00 00       	call   10220 <__lll_lock_wait_private>
    5f57:	48 81 c4 80 00 00 00 	add    rsp,0x80
    5f5e:	48 8b 44 24 10       	mov    rax,QWORD PTR [rsp+0x10]
    5f63:	4c 89 05 66 64 21 00 	mov    QWORD PTR [rip+0x216466],r8        # 21c3d0 <__default_pthread_attr+0x10>
    5f6a:	48 89 05 6f 64 21 00 	mov    QWORD PTR [rip+0x21646f],rax        # 21c3e0 <__default_pthread_attr+0x20>
    5f71:	f0 ff 0d 48 63 21 00 	lock dec DWORD PTR [rip+0x216348]        # 21c2c0 <__default_pthread_attr_lock>
    5f78:	74 1a                	je     5f94 <__pthread_initialize_minimal+0x294>
    5f7a:	48 8d 3d 3f 63 21 00 	lea    rdi,[rip+0x21633f]        # 21c2c0 <__default_pthread_attr_lock>
    5f81:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    5f88:	e8 43 a3 00 00       	call   102d0 <__lll_unlock_wake_private>
    5f8d:	48 81 c4 80 00 00 00 	add    rsp,0x80
    5f94:	e8 77 fa ff ff       	call   5a10 <__sched_get_priority_min@plt+0x10>
    5f99:	48 89 c3             	mov    rbx,rax
    5f9c:	4c 8d a5 08 09 00 00 	lea    r12,[rbp+0x908]
    5fa3:	ff 95 90 09 00 00    	call   QWORD PTR [rbp+0x990]
    5fa9:	48 8b 00             	mov    rax,QWORD PTR [rax]
    5fac:	48 89 03             	mov    QWORD PTR [rbx],rax
    5faf:	48 8b 05 02 20 21 00 	mov    rax,QWORD PTR [rip+0x212002]        # 217fb8 <_DYNAMIC+0x268>
    5fb6:	8b 9d 0c 09 00 00    	mov    ebx,DWORD PTR [rbp+0x90c]
    5fbc:	c7 85 0c 09 00 00 00 	mov    DWORD PTR [rbp+0x90c],0x0
    5fc3:	00 00 00 
    5fc6:	48 89 85 90 09 00 00 	mov    QWORD PTR [rbp+0x990],rax
    5fcd:	48 8d 05 6c 3d 00 00 	lea    rax,[rip+0x3d6c]        # 9d40 <__pthread_mutex_lock>
    5fd4:	85 db                	test   ebx,ebx
    5fd6:	48 89 85 08 0f 00 00 	mov    QWORD PTR [rbp+0xf08],rax
    5fdd:	48 8d 05 dc 54 00 00 	lea    rax,[rip+0x54dc]        # b4c0 <__pthread_mutex_unlock>
    5fe4:	48 89 85 10 0f 00 00 	mov    QWORD PTR [rbp+0xf10],rax
    5feb:	74 10                	je     5ffd <__pthread_initialize_minimal+0x2fd>
    5fed:	0f 1f 00             	nop    DWORD PTR [rax]
    5ff0:	4c 89 e7             	mov    rdi,r12
    5ff3:	e8 48 3d 00 00       	call   9d40 <__pthread_mutex_lock>
    5ff8:	83 eb 01             	sub    ebx,0x1
    5ffb:	75 f3                	jne    5ff0 <__pthread_initialize_minimal+0x2f0>
    5ffd:	48 8d 05 6c 07 00 00 	lea    rax,[rip+0x76c]        # 6770 <__make_stacks_executable>
    6004:	48 8d 15 95 1b 21 00 	lea    rdx,[rip+0x211b95]        # 217ba0 <pthread_functions>
    600b:	48 8d 35 7e 08 00 00 	lea    rsi,[rip+0x87e]        # 6890 <__reclaim_stacks>
    6012:	48 8d 3d ef 63 21 00 	lea    rdi,[rip+0x2163ef]        # 21c408 <__fork_generation>
    6019:	48 89 85 18 0f 00 00 	mov    QWORD PTR [rbp+0xf18],rax
    6020:	48 8d 05 e9 0f 00 00 	lea    rax,[rip+0xfe9]        # 7010 <__pthread_init_static_tls>
    6027:	48 89 85 68 0f 00 00 	mov    QWORD PTR [rbp+0xf68],rax
    602e:	48 8d 05 fb 10 00 00 	lea    rax,[rip+0x10fb]        # 7130 <__wait_lookup_done>
    6035:	48 89 85 70 0f 00 00 	mov    QWORD PTR [rbp+0xf70],rax
    603c:	e8 2f f8 ff ff       	call   5870 <__libc_pthread_init@plt>
    6041:	c7 05 59 63 21 00 01 	mov    DWORD PTR [rip+0x216359],0x1        # 21c3a4 <__is_smp>
    6048:	00 00 00 
    604b:	48 89 05 26 63 21 00 	mov    QWORD PTR [rip+0x216326],rax        # 21c378 <__libc_multiple_threads_ptr>
    6052:	48 81 c4 c0 00 00 00 	add    rsp,0xc0
    6059:	5b                   	pop    rbx
    605a:	5d                   	pop    rbp
    605b:	41 5c                	pop    r12
    605d:	c3                   	ret    
    605e:	66 90                	xchg   ax,ax
    6060:	48 8d 41 ff          	lea    rax,[rcx-0x1]
    6064:	48 89 05 05 63 21 00 	mov    QWORD PTR [rip+0x216305],rax        # 21c370 <__static_tls_align_m1>
    606b:	e9 36 fe ff ff       	jmp    5ea6 <__pthread_initialize_minimal+0x1a6>

0000000000006070 <__pthread_get_minstack>:
    6070:	48 8b 15 31 1f 21 00 	mov    rdx,QWORD PTR [rip+0x211f31]        # 217fa8 <_DYNAMIC+0x258>
    6077:	48 8b 05 02 63 21 00 	mov    rax,QWORD PTR [rip+0x216302]        # 21c380 <__static_tls_size>
    607e:	48 03 42 18          	add    rax,QWORD PTR [rdx+0x18]
    6082:	48 8b 57 10          	mov    rdx,QWORD PTR [rdi+0x10]
    6086:	48 8d 84 10 00 40 00 	lea    rax,[rax+rdx*1+0x4000]
    608d:	00 
    608e:	c3                   	ret    
    608f:	90                   	nop

0000000000006090 <__GI___nptl_create_event>:
    6090:	f3 c3                	repz ret 
    6092:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    6096:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    609d:	00 00 00 

00000000000060a0 <__GI___nptl_death_event>:
    60a0:	f3 c3                	repz ret 
    60a2:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    60a9:	00 00 00 
    60ac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000000060b0 <__nptl_main>:
    60b0:	48 8d 35 69 ca 00 00 	lea    rsi,[rip+0xca69]        # 12b20 <banner>
    60b7:	bf 01 00 00 00       	mov    edi,0x1
    60bc:	48 83 ec 08          	sub    rsp,0x8
    60c0:	ba 1d 01 00 00       	mov    edx,0x11d
    60c5:	e8 c6 a3 00 00       	call   10490 <__write>
    60ca:	31 ff                	xor    edi,edi
    60cc:	e8 2f f5 ff ff       	call   5600 <_exit@plt>
    60d1:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    60d8:	00 00 00 
    60db:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000060e0 <create_thread>:
    60e0:	41 55                	push   r13
    60e2:	41 54                	push   r12
    60e4:	49 89 ca             	mov    r10,rcx
    60e7:	55                   	push   rbp
    60e8:	53                   	push   rbx
    60e9:	48 89 f5             	mov    rbp,rsi
    60ec:	48 89 fb             	mov    rbx,rdi
    60ef:	4d 89 c5             	mov    r13,r8
    60f2:	41 89 d4             	mov    r12d,edx
    60f5:	48 83 ec 08          	sub    rsp,0x8
    60f9:	48 85 f6             	test   rsi,rsi
    60fc:	74 15                	je     6113 <create_thread+0x33>
    60fe:	48 83 7e 28 00       	cmp    QWORD PTR [rsi+0x28],0x0
    6103:	0f 85 f7 00 00 00    	jne    6200 <create_thread+0x120>
    6109:	f6 46 08 02          	test   BYTE PTR [rsi+0x8],0x2
    610d:	0f 85 ed 00 00 00    	jne    6200 <create_thread+0x120>
    6113:	84 d2                	test   dl,dl
    6115:	88 93 13 06 00 00    	mov    BYTE PTR [rbx+0x613],dl
    611b:	0f 85 e6 00 00 00    	jne    6207 <create_thread+0x127>
    6121:	4c 8d 83 d0 02 00 00 	lea    r8,[rbx+0x2d0]
    6128:	48 83 ec 08          	sub    rsp,0x8
    612c:	48 8d 3d bd 14 00 00 	lea    rdi,[rip+0x14bd]        # 75f0 <start_thread>
    6133:	48 89 d9             	mov    rcx,rbx
    6136:	ba 00 0f 3d 00       	mov    edx,0x3d0f00
    613b:	31 c0                	xor    eax,eax
    613d:	41 50                	push   r8
    613f:	49 89 d9             	mov    r9,rbx
    6142:	4c 89 d6             	mov    rsi,r10
    6145:	e8 66 f4 ff ff       	call   55b0 <__clone@plt>
    614a:	83 f8 ff             	cmp    eax,0xffffffff
    614d:	5a                   	pop    rdx
    614e:	59                   	pop    rcx
    614f:	0f 84 23 01 00 00    	je     6278 <create_thread+0x198>
    6155:	48 85 ed             	test   rbp,rbp
    6158:	41 c6 45 00 01       	mov    BYTE PTR [r13+0x0],0x1
    615d:	74 58                	je     61b7 <create_thread+0xd7>
    615f:	48 8b 55 28          	mov    rdx,QWORD PTR [rbp+0x28]
    6163:	48 85 d2             	test   rdx,rdx
    6166:	0f 84 d4 00 00 00    	je     6240 <create_thread+0x160>
    616c:	45 84 e4             	test   r12b,r12b
    616f:	0f 84 18 01 00 00    	je     628d <create_thread+0x1ad>
    6175:	48 8b 75 30          	mov    rsi,QWORD PTR [rbp+0x30]
    6179:	48 63 bb d0 02 00 00 	movsxd rdi,DWORD PTR [rbx+0x2d0]
    6180:	b8 cb 00 00 00       	mov    eax,0xcb
    6185:	0f 05                	syscall 
    6187:	3d 00 f0 ff ff       	cmp    eax,0xfffff000
    618c:	77 3a                	ja     61c8 <create_thread+0xe8>
    618e:	f6 45 08 02          	test   BYTE PTR [rbp+0x8],0x2
    6192:	74 23                	je     61b7 <create_thread+0xd7>
    6194:	48 63 b3 3c 06 00 00 	movsxd rsi,DWORD PTR [rbx+0x63c]
    619b:	48 63 bb d0 02 00 00 	movsxd rdi,DWORD PTR [rbx+0x2d0]
    61a2:	48 8d 93 38 06 00 00 	lea    rdx,[rbx+0x638]
    61a9:	b8 90 00 00 00       	mov    eax,0x90
    61ae:	0f 05                	syscall 
    61b0:	3d 00 f0 ff ff       	cmp    eax,0xfffff000
    61b5:	77 11                	ja     61c8 <create_thread+0xe8>
    61b7:	48 83 c4 08          	add    rsp,0x8
    61bb:	31 c0                	xor    eax,eax
    61bd:	5b                   	pop    rbx
    61be:	5d                   	pop    rbp
    61bf:	41 5c                	pop    r12
    61c1:	41 5d                	pop    r13
    61c3:	c3                   	ret    
    61c4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    61c8:	41 89 c0             	mov    r8d,eax
    61cb:	48 63 b3 d0 02 00 00 	movsxd rsi,DWORD PTR [rbx+0x2d0]
    61d2:	64 8b 3c 25 d4 02 00 	mov    edi,DWORD PTR fs:0x2d4
    61d9:	00 
    61da:	ba 20 00 00 00       	mov    edx,0x20
    61df:	48 63 ff             	movsxd rdi,edi
    61e2:	b8 ea 00 00 00       	mov    eax,0xea
    61e7:	0f 05                	syscall 
    61e9:	48 83 c4 08          	add    rsp,0x8
    61ed:	44 89 c0             	mov    eax,r8d
    61f0:	5b                   	pop    rbx
    61f1:	f7 d8                	neg    eax
    61f3:	5d                   	pop    rbp
    61f4:	41 5c                	pop    r12
    61f6:	41 5d                	pop    r13
    61f8:	c3                   	ret    
    61f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    6200:	c6 83 13 06 00 00 01 	mov    BYTE PTR [rbx+0x613],0x1
    6207:	be 01 00 00 00       	mov    esi,0x1
    620c:	31 c0                	xor    eax,eax
    620e:	f0 0f b1 b3 18 06 00 	lock cmpxchg DWORD PTR [rbx+0x618],esi
    6215:	00 
    6216:	74 1a                	je     6232 <create_thread+0x152>
    6218:	48 8d bb 18 06 00 00 	lea    rdi,[rbx+0x618]
    621f:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    6226:	e8 f5 9f 00 00       	call   10220 <__lll_lock_wait_private>
    622b:	48 81 c4 80 00 00 00 	add    rsp,0x80
    6232:	41 bc 01 00 00 00    	mov    r12d,0x1
    6238:	e9 e4 fe ff ff       	jmp    6121 <create_thread+0x41>
    623d:	0f 1f 00             	nop    DWORD PTR [rax]
    6240:	f6 45 08 02          	test   BYTE PTR [rbp+0x8],0x2
    6244:	0f 84 6d ff ff ff    	je     61b7 <create_thread+0xd7>
    624a:	45 84 e4             	test   r12b,r12b
    624d:	0f 85 41 ff ff ff    	jne    6194 <create_thread+0xb4>
    6253:	48 8d 0d 46 ca 00 00 	lea    rcx,[rip+0xca46]        # 12ca0 <__PRETTY_FUNCTION__.12029>
    625a:	48 8d 35 df c9 00 00 	lea    rsi,[rip+0xc9df]        # 12c40 <banner+0x120>
    6261:	48 8d 3d ed ca 00 00 	lea    rdi,[rip+0xcaed]        # 12d55 <__PRETTY_FUNCTION__.11764+0xa5>
    6268:	ba 8f 00 00 00       	mov    edx,0x8f
    626d:	e8 5e f4 ff ff       	call   56d0 <__assert_fail@plt>
    6272:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    6278:	48 8b 05 09 1d 21 00 	mov    rax,QWORD PTR [rip+0x211d09]        # 217f88 <_DYNAMIC+0x238>
    627f:	64 8b 00             	mov    eax,DWORD PTR fs:[rax]
    6282:	48 83 c4 08          	add    rsp,0x8
    6286:	5b                   	pop    rbx
    6287:	5d                   	pop    rbp
    6288:	41 5c                	pop    r12
    628a:	41 5d                	pop    r13
    628c:	c3                   	ret    
    628d:	48 8d 0d 0c ca 00 00 	lea    rcx,[rip+0xca0c]        # 12ca0 <__PRETTY_FUNCTION__.12029>
    6294:	48 8d 35 a5 c9 00 00 	lea    rsi,[rip+0xc9a5]        # 12c40 <banner+0x120>
    629b:	48 8d 3d b3 ca 00 00 	lea    rdi,[rip+0xcab3]        # 12d55 <__PRETTY_FUNCTION__.11764+0xa5>
    62a2:	ba 78 00 00 00       	mov    edx,0x78
    62a7:	e8 24 f4 ff ff       	call   56d0 <__assert_fail@plt>
    62ac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000000062b0 <setxid_mark_thread.isra.1>:
    62b0:	55                   	push   rbp
    62b1:	53                   	push   rbx
    62b2:	49 89 f8             	mov    r8,rdi
    62b5:	48 83 ec 08          	sub    rsp,0x8
    62b9:	83 bf 1c 06 00 00 ff 	cmp    DWORD PTR [rdi+0x61c],0xffffffff
    62c0:	74 7e                	je     6340 <setxid_mark_thread.isra.1+0x90>
    62c2:	41 c7 80 1c 06 00 00 	mov    DWORD PTR [r8+0x61c],0x0
    62c9:	00 00 00 00 
    62cd:	eb 11                	jmp    62e0 <setxid_mark_thread.isra.1+0x30>
    62cf:	90                   	nop
    62d0:	89 c2                	mov    edx,eax
    62d2:	83 ca 40             	or     edx,0x40
    62d5:	f0 41 0f b1 90 08 03 	lock cmpxchg DWORD PTR [r8+0x308],edx
    62dc:	00 00 
    62de:	74 3d                	je     631d <setxid_mark_thread.isra.1+0x6d>
    62e0:	41 8b 80 08 03 00 00 	mov    eax,DWORD PTR [r8+0x308]
    62e7:	a8 10                	test   al,0x10
    62e9:	74 e5                	je     62d0 <setxid_mark_thread.isra.1+0x20>
    62eb:	a8 40                	test   al,0x40
    62ed:	75 2e                	jne    631d <setxid_mark_thread.isra.1+0x6d>
    62ef:	41 c7 80 1c 06 00 00 	mov    DWORD PTR [r8+0x61c],0x1
    62f6:	01 00 00 00 
    62fa:	45 31 d2             	xor    r10d,r10d
    62fd:	ba 01 00 00 00       	mov    edx,0x1
    6302:	be 81 00 00 00       	mov    esi,0x81
    6307:	49 8d b8 1c 06 00 00 	lea    rdi,[r8+0x61c]
    630e:	b8 ca 00 00 00       	mov    eax,0xca
    6313:	0f 05                	syscall 
    6315:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    631b:	77 07                	ja     6324 <setxid_mark_thread.isra.1+0x74>
    631d:	48 83 c4 08          	add    rsp,0x8
    6321:	5b                   	pop    rbx
    6322:	5d                   	pop    rbp
    6323:	c3                   	ret    
    6324:	83 f8 ea             	cmp    eax,0xffffffea
    6327:	74 f4                	je     631d <setxid_mark_thread.isra.1+0x6d>
    6329:	83 f8 f2             	cmp    eax,0xfffffff2
    632c:	74 ef                	je     631d <setxid_mark_thread.isra.1+0x6d>
    632e:	48 8d 3d ab c7 00 00 	lea    rdi,[rip+0xc7ab]        # 12ae0 <_fini+0xc>
    6335:	e8 f6 f2 ff ff       	call   5630 <__libc_fatal@plt>
    633a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    6340:	4c 8d 8f 1c 06 00 00 	lea    r9,[rdi+0x61c]
    6347:	ba fe ff ff ff       	mov    edx,0xfffffffe
    634c:	b8 ff ff ff ff       	mov    eax,0xffffffff
    6351:	f0 41 0f b1 11       	lock cmpxchg DWORD PTR [r9],edx
    6356:	0f 85 66 ff ff ff    	jne    62c2 <setxid_mark_thread.isra.1+0x12>
    635c:	bd ca 00 00 00       	mov    ebp,0xca
    6361:	bb 01 00 00 00       	mov    ebx,0x1
    6366:	45 31 d2             	xor    r10d,r10d
    6369:	ba fe ff ff ff       	mov    edx,0xfffffffe
    636e:	be 80 00 00 00       	mov    esi,0x80
    6373:	4c 89 cf             	mov    rdi,r9
    6376:	89 e8                	mov    eax,ebp
    6378:	0f 05                	syscall 
    637a:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    6380:	77 0f                	ja     6391 <setxid_mark_thread.isra.1+0xe1>
    6382:	41 83 b8 1c 06 00 00 	cmp    DWORD PTR [r8+0x61c],0xfffffffe
    6389:	fe 
    638a:	74 da                	je     6366 <setxid_mark_thread.isra.1+0xb6>
    638c:	e9 31 ff ff ff       	jmp    62c2 <setxid_mark_thread.isra.1+0x12>
    6391:	8d 48 0b             	lea    ecx,[rax+0xb]
    6394:	83 f9 0b             	cmp    ecx,0xb
    6397:	77 95                	ja     632e <setxid_mark_thread.isra.1+0x7e>
    6399:	48 89 d8             	mov    rax,rbx
    639c:	48 d3 e0             	shl    rax,cl
    639f:	a9 81 08 00 00       	test   eax,0x881
    63a4:	75 dc                	jne    6382 <setxid_mark_thread.isra.1+0xd2>
    63a6:	eb 86                	jmp    632e <setxid_mark_thread.isra.1+0x7e>
    63a8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    63af:	00 

00000000000063b0 <__nptl_deallocate_tsd.part.4>:
    63b0:	41 57                	push   r15
    63b2:	41 56                	push   r14
    63b4:	41 be 04 00 00 00    	mov    r14d,0x4
    63ba:	41 55                	push   r13
    63bc:	41 54                	push   r12
    63be:	55                   	push   rbp
    63bf:	53                   	push   rbx
    63c0:	48 83 ec 08          	sub    rsp,0x8
    63c4:	64 c6 04 25 10 06 00 	mov    BYTE PTR fs:0x610,0x0
    63cb:	00 00 
    63cd:	4c 8d 2d f4 1e 21 00 	lea    r13,[rip+0x211ef4]        # 2182c8 <__GI___pthread_keys+0x8>
    63d4:	45 31 e4             	xor    r12d,r12d
    63d7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    63de:	00 00 
    63e0:	64 4a 8b 04 e5 10 05 	mov    rax,QWORD PTR fs:[r12*8+0x510]
    63e7:	00 00 
    63e9:	48 85 c0             	test   rax,rax
    63ec:	74 52                	je     6440 <__nptl_deallocate_tsd.part.4+0x90>
    63ee:	48 8d 58 08          	lea    rbx,[rax+0x8]
    63f2:	4c 8d b8 08 02 00 00 	lea    r15,[rax+0x208]
    63f9:	4c 89 ed             	mov    rbp,r13
    63fc:	eb 0f                	jmp    640d <__nptl_deallocate_tsd.part.4+0x5d>
    63fe:	66 90                	xchg   ax,ax
    6400:	48 83 c3 10          	add    rbx,0x10
    6404:	48 83 c5 10          	add    rbp,0x10
    6408:	4c 39 fb             	cmp    rbx,r15
    640b:	74 33                	je     6440 <__nptl_deallocate_tsd.part.4+0x90>
    640d:	48 8b 3b             	mov    rdi,QWORD PTR [rbx]
    6410:	48 85 ff             	test   rdi,rdi
    6413:	74 eb                	je     6400 <__nptl_deallocate_tsd.part.4+0x50>
    6415:	48 8b 45 f8          	mov    rax,QWORD PTR [rbp-0x8]
    6419:	48 39 43 f8          	cmp    QWORD PTR [rbx-0x8],rax
    641d:	48 c7 03 00 00 00 00 	mov    QWORD PTR [rbx],0x0
    6424:	75 da                	jne    6400 <__nptl_deallocate_tsd.part.4+0x50>
    6426:	48 8b 55 00          	mov    rdx,QWORD PTR [rbp+0x0]
    642a:	48 85 d2             	test   rdx,rdx
    642d:	74 d1                	je     6400 <__nptl_deallocate_tsd.part.4+0x50>
    642f:	48 83 c3 10          	add    rbx,0x10
    6433:	48 83 c5 10          	add    rbp,0x10
    6437:	ff d2                	call   rdx
    6439:	4c 39 fb             	cmp    rbx,r15
    643c:	75 cf                	jne    640d <__nptl_deallocate_tsd.part.4+0x5d>
    643e:	66 90                	xchg   ax,ax
    6440:	49 83 c4 01          	add    r12,0x1
    6444:	49 81 c5 00 02 00 00 	add    r13,0x200
    644b:	49 83 fc 20          	cmp    r12,0x20
    644f:	75 8f                	jne    63e0 <__nptl_deallocate_tsd.part.4+0x30>
    6451:	31 c0                	xor    eax,eax
    6453:	64 8a 04 25 10 06 00 	mov    al,BYTE PTR fs:0x610
    645a:	00 
    645b:	84 c0                	test   al,al
    645d:	74 45                	je     64a4 <__nptl_deallocate_tsd.part.4+0xf4>
    645f:	49 83 ee 01          	sub    r14,0x1
    6463:	0f 85 5b ff ff ff    	jne    63c4 <__nptl_deallocate_tsd.part.4+0x14>
    6469:	64 48 8b 04 25 10 00 	mov    rax,QWORD PTR fs:0x10
    6470:	00 00 
    6472:	48 8d b8 18 03 00 00 	lea    rdi,[rax+0x318]
    6479:	48 c7 80 10 03 00 00 	mov    QWORD PTR [rax+0x310],0x0
    6480:	00 00 00 00 
    6484:	48 c7 80 08 05 00 00 	mov    QWORD PTR [rax+0x508],0x0
    648b:	00 00 00 00 
    648f:	48 83 e7 f8          	and    rdi,0xfffffffffffffff8
    6493:	29 f8                	sub    eax,edi
    6495:	8d 88 10 05 00 00    	lea    ecx,[rax+0x510]
    649b:	4c 89 f0             	mov    rax,r14
    649e:	c1 e9 03             	shr    ecx,0x3
    64a1:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
    64a4:	bb 01 00 00 00       	mov    ebx,0x1
    64a9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    64b0:	64 48 8b 3c dd 10 05 	mov    rdi,QWORD PTR fs:[rbx*8+0x510]
    64b7:	00 00 
    64b9:	48 85 ff             	test   rdi,rdi
    64bc:	74 12                	je     64d0 <__nptl_deallocate_tsd.part.4+0x120>
    64be:	e8 fd f0 ff ff       	call   55c0 <free@plt>
    64c3:	64 48 c7 04 dd 10 05 	mov    QWORD PTR fs:[rbx*8+0x510],0x0
    64ca:	00 00 00 00 00 00 
    64d0:	48 83 c3 01          	add    rbx,0x1
    64d4:	48 83 fb 20          	cmp    rbx,0x20
    64d8:	75 d6                	jne    64b0 <__nptl_deallocate_tsd.part.4+0x100>
    64da:	64 c6 04 25 10 06 00 	mov    BYTE PTR fs:0x610,0x0
    64e1:	00 00 
    64e3:	48 83 c4 08          	add    rsp,0x8
    64e7:	5b                   	pop    rbx
    64e8:	5d                   	pop    rbp
    64e9:	41 5c                	pop    r12
    64eb:	41 5d                	pop    r13
    64ed:	41 5e                	pop    r14
    64ef:	41 5f                	pop    r15
    64f1:	c3                   	ret    
    64f2:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    64f6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    64fd:	00 00 00 

0000000000006500 <__free_stacks>:
    6500:	41 55                	push   r13
    6502:	41 54                	push   r12
    6504:	4c 8d 25 65 1d 21 00 	lea    r12,[rip+0x211d65]        # 218270 <stack_cache>
    650b:	55                   	push   rbp
    650c:	53                   	push   rbx
    650d:	49 89 fd             	mov    r13,rdi
    6510:	48 83 ec 08          	sub    rsp,0x8
    6514:	48 8b 1d 5d 1d 21 00 	mov    rbx,QWORD PTR [rip+0x211d5d]        # 218278 <stack_cache+0x8>
    651b:	4c 39 e3             	cmp    rbx,r12
    651e:	48 8b 6b 08          	mov    rbp,QWORD PTR [rbx+0x8]
    6522:	75 1b                	jne    653f <__free_stacks+0x3f>
    6524:	e9 7d 00 00 00       	jmp    65a6 <__free_stacks+0xa6>
    6529:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    6530:	4c 39 e5             	cmp    rbp,r12
    6533:	48 8b 45 08          	mov    rax,QWORD PTR [rbp+0x8]
    6537:	48 89 eb             	mov    rbx,rbp
    653a:	74 6a                	je     65a6 <__free_stacks+0xa6>
    653c:	48 89 c5             	mov    rbp,rax
    653f:	8b 43 10             	mov    eax,DWORD PTR [rbx+0x10]
    6542:	85 c0                	test   eax,eax
    6544:	7f ea                	jg     6530 <__free_stacks+0x30>
    6546:	48 89 1d 93 5d 21 00 	mov    QWORD PTR [rip+0x215d93],rbx        # 21c2e0 <in_flight_stack>
    654d:	48 8b 53 08          	mov    rdx,QWORD PTR [rbx+0x8]
    6551:	48 8b 03             	mov    rax,QWORD PTR [rbx]
    6554:	48 89 50 08          	mov    QWORD PTR [rax+0x8],rdx
    6558:	48 8b 53 08          	mov    rdx,QWORD PTR [rbx+0x8]
    655c:	48 89 02             	mov    QWORD PTR [rdx],rax
    655f:	48 8d bb 40 fd ff ff 	lea    rdi,[rbx-0x2c0]
    6566:	31 f6                	xor    esi,esi
    6568:	48 8b 83 d8 03 00 00 	mov    rax,QWORD PTR [rbx+0x3d8]
    656f:	48 c7 05 66 5d 21 00 	mov    QWORD PTR [rip+0x215d66],0x0        # 21c2e0 <in_flight_stack>
    6576:	00 00 00 00 
    657a:	48 29 05 6f 5d 21 00 	sub    QWORD PTR [rip+0x215d6f],rax        # 21c2f0 <stack_cache_actsize>
    6581:	e8 9a f1 ff ff       	call   5720 <_dl_deallocate_tls@plt>
    6586:	48 8b b3 d8 03 00 00 	mov    rsi,QWORD PTR [rbx+0x3d8]
    658d:	48 8b bb d0 03 00 00 	mov    rdi,QWORD PTR [rbx+0x3d0]
    6594:	e8 37 f3 ff ff       	call   58d0 <munmap@plt>
    6599:	85 c0                	test   eax,eax
    659b:	75 14                	jne    65b1 <__free_stacks+0xb1>
    659d:	4c 39 2d 4c 5d 21 00 	cmp    QWORD PTR [rip+0x215d4c],r13        # 21c2f0 <stack_cache_actsize>
    65a4:	77 8a                	ja     6530 <__free_stacks+0x30>
    65a6:	48 83 c4 08          	add    rsp,0x8
    65aa:	5b                   	pop    rbx
    65ab:	5d                   	pop    rbp
    65ac:	41 5c                	pop    r12
    65ae:	41 5d                	pop    r13
    65b0:	c3                   	ret    
    65b1:	e8 2a f0 ff ff       	call   55e0 <abort@plt>
    65b6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    65bd:	00 00 00 

00000000000065c0 <__deallocate_stack>:
    65c0:	41 54                	push   r12
    65c2:	48 89 fa             	mov    rdx,rdi
    65c5:	55                   	push   rbp
    65c6:	be 01 00 00 00       	mov    esi,0x1
    65cb:	53                   	push   rbx
    65cc:	31 c0                	xor    eax,eax
    65ce:	f0 0f b1 35 12 5d 21 	lock cmpxchg DWORD PTR [rip+0x215d12],esi        # 21c2e8 <stack_cache_lock>
    65d5:	00 
    65d6:	74 1a                	je     65f2 <__deallocate_stack+0x32>
    65d8:	48 8d 3d 09 5d 21 00 	lea    rdi,[rip+0x215d09]        # 21c2e8 <stack_cache_lock>
    65df:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    65e6:	e8 35 9c 00 00       	call   10220 <__lll_lock_wait_private>
    65eb:	48 81 c4 80 00 00 00 	add    rsp,0x80
    65f2:	48 8d 82 c0 02 00 00 	lea    rax,[rdx+0x2c0]
    65f9:	48 89 05 e0 5c 21 00 	mov    QWORD PTR [rip+0x215ce0],rax        # 21c2e0 <in_flight_stack>
    6600:	48 8b b2 c8 02 00 00 	mov    rsi,QWORD PTR [rdx+0x2c8]
    6607:	48 8b 8a c0 02 00 00 	mov    rcx,QWORD PTR [rdx+0x2c0]
    660e:	48 89 71 08          	mov    QWORD PTR [rcx+0x8],rsi
    6612:	48 8b b2 c8 02 00 00 	mov    rsi,QWORD PTR [rdx+0x2c8]
    6619:	48 89 0e             	mov    QWORD PTR [rsi],rcx
    661c:	80 ba 12 06 00 00 00 	cmp    BYTE PTR [rdx+0x612],0x0
    6623:	48 c7 05 b2 5c 21 00 	mov    QWORD PTR [rip+0x215cb2],0x0        # 21c2e0 <in_flight_stack>
    662a:	00 00 00 00 
    662e:	0f 85 8c 00 00 00    	jne    66c0 <__deallocate_stack+0x100>
    6634:	48 89 c1             	mov    rcx,rax
    6637:	48 83 c9 01          	or     rcx,0x1
    663b:	48 89 0d 9e 5c 21 00 	mov    QWORD PTR [rip+0x215c9e],rcx        # 21c2e0 <in_flight_stack>
    6642:	48 8b 0d 27 1c 21 00 	mov    rcx,QWORD PTR [rip+0x211c27]        # 218270 <stack_cache>
    6649:	4c 8d 25 20 1c 21 00 	lea    r12,[rip+0x211c20]        # 218270 <stack_cache>
    6650:	4c 89 a2 c8 02 00 00 	mov    QWORD PTR [rdx+0x2c8],r12
    6657:	48 89 8a c0 02 00 00 	mov    QWORD PTR [rdx+0x2c0],rcx
    665e:	48 89 41 08          	mov    QWORD PTR [rcx+0x8],rax
    6662:	48 89 05 07 1c 21 00 	mov    QWORD PTR [rip+0x211c07],rax        # 218270 <stack_cache>
    6669:	48 8b 05 80 5c 21 00 	mov    rax,QWORD PTR [rip+0x215c80]        # 21c2f0 <stack_cache_actsize>
    6670:	48 03 82 98 06 00 00 	add    rax,QWORD PTR [rdx+0x698]
    6677:	48 c7 05 5e 5c 21 00 	mov    QWORD PTR [rip+0x215c5e],0x0        # 21c2e0 <in_flight_stack>
    667e:	00 00 00 00 
    6682:	48 3d 00 00 80 02    	cmp    rax,0x2800000
    6688:	48 89 05 61 5c 21 00 	mov    QWORD PTR [rip+0x215c61],rax        # 21c2f0 <stack_cache_actsize>
    668f:	77 3f                	ja     66d0 <__deallocate_stack+0x110>
    6691:	f0 ff 0d 50 5c 21 00 	lock dec DWORD PTR [rip+0x215c50]        # 21c2e8 <stack_cache_lock>
    6698:	74 1a                	je     66b4 <__deallocate_stack+0xf4>
    669a:	48 8d 3d 47 5c 21 00 	lea    rdi,[rip+0x215c47]        # 21c2e8 <stack_cache_lock>
    66a1:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    66a8:	e8 23 9c 00 00       	call   102d0 <__lll_unlock_wake_private>
    66ad:	48 81 c4 80 00 00 00 	add    rsp,0x80
    66b4:	5b                   	pop    rbx
    66b5:	5d                   	pop    rbp
    66b6:	41 5c                	pop    r12
    66b8:	c3                   	ret    
    66b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    66c0:	31 f6                	xor    esi,esi
    66c2:	48 89 d7             	mov    rdi,rdx
    66c5:	e8 56 f0 ff ff       	call   5720 <_dl_deallocate_tls@plt>
    66ca:	eb c5                	jmp    6691 <__deallocate_stack+0xd1>
    66cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    66d0:	48 8b 1d a1 1b 21 00 	mov    rbx,QWORD PTR [rip+0x211ba1]        # 218278 <stack_cache+0x8>
    66d7:	4c 39 e3             	cmp    rbx,r12
    66da:	48 8b 6b 08          	mov    rbp,QWORD PTR [rbx+0x8]
    66de:	75 17                	jne    66f7 <__deallocate_stack+0x137>
    66e0:	eb af                	jmp    6691 <__deallocate_stack+0xd1>
    66e2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    66e8:	4c 39 e5             	cmp    rbp,r12
    66eb:	48 8b 45 08          	mov    rax,QWORD PTR [rbp+0x8]
    66ef:	48 89 eb             	mov    rbx,rbp
    66f2:	74 9d                	je     6691 <__deallocate_stack+0xd1>
    66f4:	48 89 c5             	mov    rbp,rax
    66f7:	8b 43 10             	mov    eax,DWORD PTR [rbx+0x10]
    66fa:	85 c0                	test   eax,eax
    66fc:	7f ea                	jg     66e8 <__deallocate_stack+0x128>
    66fe:	48 89 1d db 5b 21 00 	mov    QWORD PTR [rip+0x215bdb],rbx        # 21c2e0 <in_flight_stack>
    6705:	48 8b 53 08          	mov    rdx,QWORD PTR [rbx+0x8]
    6709:	48 8b 03             	mov    rax,QWORD PTR [rbx]
    670c:	48 89 50 08          	mov    QWORD PTR [rax+0x8],rdx
    6710:	48 8b 53 08          	mov    rdx,QWORD PTR [rbx+0x8]
    6714:	48 89 02             	mov    QWORD PTR [rdx],rax
    6717:	48 8d bb 40 fd ff ff 	lea    rdi,[rbx-0x2c0]
    671e:	31 f6                	xor    esi,esi
    6720:	48 8b 83 d8 03 00 00 	mov    rax,QWORD PTR [rbx+0x3d8]
    6727:	48 c7 05 ae 5b 21 00 	mov    QWORD PTR [rip+0x215bae],0x0        # 21c2e0 <in_flight_stack>
    672e:	00 00 00 00 
    6732:	48 29 05 b7 5b 21 00 	sub    QWORD PTR [rip+0x215bb7],rax        # 21c2f0 <stack_cache_actsize>
    6739:	e8 e2 ef ff ff       	call   5720 <_dl_deallocate_tls@plt>
    673e:	48 8b b3 d8 03 00 00 	mov    rsi,QWORD PTR [rbx+0x3d8]
    6745:	48 8b bb d0 03 00 00 	mov    rdi,QWORD PTR [rbx+0x3d0]
    674c:	e8 7f f1 ff ff       	call   58d0 <munmap@plt>
    6751:	85 c0                	test   eax,eax
    6753:	75 12                	jne    6767 <__deallocate_stack+0x1a7>
    6755:	48 81 3d 90 5b 21 00 	cmp    QWORD PTR [rip+0x215b90],0x2800000        # 21c2f0 <stack_cache_actsize>
    675c:	00 00 80 02 
    6760:	77 86                	ja     66e8 <__deallocate_stack+0x128>
    6762:	e9 2a ff ff ff       	jmp    6691 <__deallocate_stack+0xd1>
    6767:	e8 74 ee ff ff       	call   55e0 <abort@plt>
    676c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000006770 <__make_stacks_executable>:
    6770:	41 54                	push   r12
    6772:	55                   	push   rbp
    6773:	53                   	push   rbx
    6774:	e8 e7 f0 ff ff       	call   5860 <_dl_make_stack_executable@plt>
    6779:	85 c0                	test   eax,eax
    677b:	89 c5                	mov    ebp,eax
    677d:	0f 85 a6 00 00 00    	jne    6829 <__make_stacks_executable+0xb9>
    6783:	be 01 00 00 00       	mov    esi,0x1
    6788:	f0 0f b1 35 58 5b 21 	lock cmpxchg DWORD PTR [rip+0x215b58],esi        # 21c2e8 <stack_cache_lock>
    678f:	00 
    6790:	74 1a                	je     67ac <__make_stacks_executable+0x3c>
    6792:	48 8d 3d 4f 5b 21 00 	lea    rdi,[rip+0x215b4f]        # 21c2e8 <stack_cache_lock>
    6799:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    67a0:	e8 7b 9a 00 00       	call   10220 <__lll_lock_wait_private>
    67a5:	48 81 c4 80 00 00 00 	add    rsp,0x80
    67ac:	48 8b 1d ad 1a 21 00 	mov    rbx,QWORD PTR [rip+0x211aad]        # 218260 <stack_used>
    67b3:	4c 8d 25 a6 1a 21 00 	lea    r12,[rip+0x211aa6]        # 218260 <stack_used>
    67ba:	4c 39 e3             	cmp    rbx,r12
    67bd:	75 11                	jne    67d0 <__make_stacks_executable+0x60>
    67bf:	eb 6f                	jmp    6830 <__make_stacks_executable+0xc0>
    67c1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    67c8:	48 8b 1b             	mov    rbx,QWORD PTR [rbx]
    67cb:	4c 39 e3             	cmp    rbx,r12
    67ce:	74 60                	je     6830 <__make_stacks_executable+0xc0>
    67d0:	48 8b bb e0 03 00 00 	mov    rdi,QWORD PTR [rbx+0x3e0]
    67d7:	48 8b b3 d8 03 00 00 	mov    rsi,QWORD PTR [rbx+0x3d8]
    67de:	ba 07 00 00 00       	mov    edx,0x7
    67e3:	48 29 fe             	sub    rsi,rdi
    67e6:	48 03 bb d0 03 00 00 	add    rdi,QWORD PTR [rbx+0x3d0]
    67ed:	e8 0e f1 ff ff       	call   5900 <mprotect@plt>
    67f2:	85 c0                	test   eax,eax
    67f4:	74 d2                	je     67c8 <__make_stacks_executable+0x58>
    67f6:	48 8b 05 8b 17 21 00 	mov    rax,QWORD PTR [rip+0x21178b]        # 217f88 <_DYNAMIC+0x238>
    67fd:	64 8b 00             	mov    eax,DWORD PTR fs:[rax]
    6800:	85 c0                	test   eax,eax
    6802:	74 c4                	je     67c8 <__make_stacks_executable+0x58>
    6804:	89 c5                	mov    ebp,eax
    6806:	f0 ff 0d db 5a 21 00 	lock dec DWORD PTR [rip+0x215adb]        # 21c2e8 <stack_cache_lock>
    680d:	74 1a                	je     6829 <__make_stacks_executable+0xb9>
    680f:	48 8d 3d d2 5a 21 00 	lea    rdi,[rip+0x215ad2]        # 21c2e8 <stack_cache_lock>
    6816:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    681d:	e8 ae 9a 00 00       	call   102d0 <__lll_unlock_wake_private>
    6822:	48 81 c4 80 00 00 00 	add    rsp,0x80
    6829:	89 e8                	mov    eax,ebp
    682b:	5b                   	pop    rbx
    682c:	5d                   	pop    rbp
    682d:	41 5c                	pop    r12
    682f:	c3                   	ret    
    6830:	48 8b 1d 39 1a 21 00 	mov    rbx,QWORD PTR [rip+0x211a39]        # 218270 <stack_cache>
    6837:	4c 8d 25 32 1a 21 00 	lea    r12,[rip+0x211a32]        # 218270 <stack_cache>
    683e:	4c 39 e3             	cmp    rbx,r12
    6841:	75 0d                	jne    6850 <__make_stacks_executable+0xe0>
    6843:	eb c1                	jmp    6806 <__make_stacks_executable+0x96>
    6845:	0f 1f 00             	nop    DWORD PTR [rax]
    6848:	48 8b 1b             	mov    rbx,QWORD PTR [rbx]
    684b:	4c 39 e3             	cmp    rbx,r12
    684e:	74 b6                	je     6806 <__make_stacks_executable+0x96>
    6850:	48 8b bb e0 03 00 00 	mov    rdi,QWORD PTR [rbx+0x3e0]
    6857:	48 8b b3 d8 03 00 00 	mov    rsi,QWORD PTR [rbx+0x3d8]
    685e:	ba 07 00 00 00       	mov    edx,0x7
    6863:	48 29 fe             	sub    rsi,rdi
    6866:	48 03 bb d0 03 00 00 	add    rdi,QWORD PTR [rbx+0x3d0]
    686d:	e8 8e f0 ff ff       	call   5900 <mprotect@plt>
    6872:	85 c0                	test   eax,eax
    6874:	74 d2                	je     6848 <__make_stacks_executable+0xd8>
    6876:	48 8b 05 0b 17 21 00 	mov    rax,QWORD PTR [rip+0x21170b]        # 217f88 <_DYNAMIC+0x238>
    687d:	64 8b 00             	mov    eax,DWORD PTR fs:[rax]
    6880:	85 c0                	test   eax,eax
    6882:	74 c4                	je     6848 <__make_stacks_executable+0xd8>
    6884:	e9 7b ff ff ff       	jmp    6804 <__make_stacks_executable+0x94>
    6889:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000006890 <__reclaim_stacks>:
    6890:	48 8b 05 49 5a 21 00 	mov    rax,QWORD PTR [rip+0x215a49]        # 21c2e0 <in_flight_stack>
    6897:	64 4c 8b 04 25 10 00 	mov    r8,QWORD PTR fs:0x10
    689e:	00 00 
    68a0:	48 85 c0             	test   rax,rax
    68a3:	74 5e                	je     6903 <__reclaim_stacks+0x73>
    68a5:	48 89 c2             	mov    rdx,rax
    68a8:	48 83 e2 fe          	and    rdx,0xfffffffffffffffe
    68ac:	a8 01                	test   al,0x1
    68ae:	74 41                	je     68f1 <__reclaim_stacks+0x61>
    68b0:	48 8b 35 a9 19 21 00 	mov    rsi,QWORD PTR [rip+0x2119a9]        # 218260 <stack_used>
    68b7:	4c 8d 0d a2 19 21 00 	lea    r9,[rip+0x2119a2]        # 218260 <stack_used>
    68be:	4d 89 ca             	mov    r10,r9
    68c1:	48 8b 46 08          	mov    rax,QWORD PTR [rsi+0x8]
    68c5:	4c 39 c8             	cmp    rax,r9
    68c8:	0f 84 77 02 00 00    	je     6b45 <__reclaim_stacks+0x2b5>
    68ce:	48 39 c2             	cmp    rdx,rax
    68d1:	0f 85 91 02 00 00    	jne    6b68 <__reclaim_stacks+0x2d8>
    68d7:	48 89 32             	mov    QWORD PTR [rdx],rsi
    68da:	4c 89 52 08          	mov    QWORD PTR [rdx+0x8],r10
    68de:	49 89 12             	mov    QWORD PTR [r10],rdx
    68e1:	4c 8d 15 88 19 21 00 	lea    r10,[rip+0x211988]        # 218270 <stack_cache>
    68e8:	48 8b 35 71 19 21 00 	mov    rsi,QWORD PTR [rip+0x211971]        # 218260 <stack_used>
    68ef:	eb 27                	jmp    6918 <__reclaim_stacks+0x88>
    68f1:	48 8b 02             	mov    rax,QWORD PTR [rdx]
    68f4:	48 8b 4a 08          	mov    rcx,QWORD PTR [rdx+0x8]
    68f8:	48 89 48 08          	mov    QWORD PTR [rax+0x8],rcx
    68fc:	48 8b 52 08          	mov    rdx,QWORD PTR [rdx+0x8]
    6900:	48 89 02             	mov    QWORD PTR [rdx],rax
    6903:	48 8b 35 56 19 21 00 	mov    rsi,QWORD PTR [rip+0x211956]        # 218260 <stack_used>
    690a:	4c 8d 0d 4f 19 21 00 	lea    r9,[rip+0x21194f]        # 218260 <stack_used>
    6911:	4c 8d 15 58 19 21 00 	lea    r10,[rip+0x211958]        # 218270 <stack_cache>
    6918:	4c 39 ce             	cmp    rsi,r9
    691b:	0f 84 0c 02 00 00    	je     6b2d <__reclaim_stacks+0x29d>
    6921:	31 c0                	xor    eax,eax
    6923:	eb 0f                	jmp    6934 <__reclaim_stacks+0xa4>
    6925:	0f 1f 00             	nop    DWORD PTR [rax]
    6928:	48 8b 36             	mov    rsi,QWORD PTR [rsi]
    692b:	4c 39 ce             	cmp    rsi,r9
    692e:	0f 84 c1 00 00 00    	je     69f5 <__reclaim_stacks+0x165>
    6934:	48 8d 96 40 fd ff ff 	lea    rdx,[rsi-0x2c0]
    693b:	49 39 d0             	cmp    r8,rdx
    693e:	74 e8                	je     6928 <__reclaim_stacks+0x98>
    6940:	41 8b 90 d4 02 00 00 	mov    edx,DWORD PTR [r8+0x2d4]
    6947:	c7 46 10 00 00 00 00 	mov    DWORD PTR [rsi+0x10],0x0
    694e:	89 56 14             	mov    DWORD PTR [rsi+0x14],edx
    6951:	48 8b 96 d8 03 00 00 	mov    rdx,QWORD PTR [rsi+0x3d8]
    6958:	48 01 15 91 59 21 00 	add    QWORD PTR [rip+0x215991],rdx        # 21c2f0 <stack_cache_actsize>
    695f:	80 be 50 03 00 00 00 	cmp    BYTE PTR [rsi+0x350],0x0
    6966:	74 c0                	je     6928 <__reclaim_stacks+0x98>
    6968:	48 8d 7e 58          	lea    rdi,[rsi+0x58]
    696c:	89 f1                	mov    ecx,esi
    696e:	48 8d 96 58 02 00 00 	lea    rdx,[rsi+0x258]
    6975:	4c 8d 9e 50 03 00 00 	lea    r11,[rsi+0x350]
    697c:	48 c7 46 50 00 00 00 	mov    QWORD PTR [rsi+0x50],0x0
    6983:	00 
    6984:	48 83 e7 f8          	and    rdi,0xfffffffffffffff8
    6988:	48 c7 42 f0 00 00 00 	mov    QWORD PTR [rdx-0x10],0x0
    698f:	00 
    6990:	29 f9                	sub    ecx,edi
    6992:	81 c1 50 02 00 00    	add    ecx,0x250
    6998:	c1 e9 03             	shr    ecx,0x3
    699b:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
    699e:	c6 86 50 03 00 00 00 	mov    BYTE PTR [rsi+0x350],0x0
    69a5:	0f 1f 00             	nop    DWORD PTR [rax]
    69a8:	48 8b 0a             	mov    rcx,QWORD PTR [rdx]
    69ab:	48 85 c9             	test   rcx,rcx
    69ae:	74 30                	je     69e0 <__reclaim_stacks+0x150>
    69b0:	48 8d 79 08          	lea    rdi,[rcx+0x8]
    69b4:	48 c7 01 00 00 00 00 	mov    QWORD PTR [rcx],0x0
    69bb:	48 c7 81 f8 01 00 00 	mov    QWORD PTR [rcx+0x1f8],0x0
    69c2:	00 00 00 00 
    69c6:	48 83 e7 f8          	and    rdi,0xfffffffffffffff8
    69ca:	48 29 f9             	sub    rcx,rdi
    69cd:	81 c1 00 02 00 00    	add    ecx,0x200
    69d3:	c1 e9 03             	shr    ecx,0x3
    69d6:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
    69d9:	c6 86 50 03 00 00 01 	mov    BYTE PTR [rsi+0x350],0x1
    69e0:	48 83 c2 08          	add    rdx,0x8
    69e4:	4c 39 da             	cmp    rdx,r11
    69e7:	75 bf                	jne    69a8 <__reclaim_stacks+0x118>
    69e9:	48 8b 36             	mov    rsi,QWORD PTR [rsi]
    69ec:	4c 39 ce             	cmp    rsi,r9
    69ef:	0f 85 3f ff ff ff    	jne    6934 <__reclaim_stacks+0xa4>
    69f5:	48 8b 0d 74 18 21 00 	mov    rcx,QWORD PTR [rip+0x211874]        # 218270 <stack_cache>
    69fc:	49 8b 31             	mov    rsi,QWORD PTR [r9]
    69ff:	4c 39 d1             	cmp    rcx,r10
    6a02:	74 1e                	je     6a22 <__reclaim_stacks+0x192>
    6a04:	48 89 c8             	mov    rax,rcx
    6a07:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    6a0e:	00 00 
    6a10:	41 8b 90 d4 02 00 00 	mov    edx,DWORD PTR [r8+0x2d4]
    6a17:	89 50 14             	mov    DWORD PTR [rax+0x14],edx
    6a1a:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6a1d:	4c 39 d0             	cmp    rax,r10
    6a20:	75 ee                	jne    6a10 <__reclaim_stacks+0x180>
    6a22:	4c 39 ce             	cmp    rsi,r9
    6a25:	74 2e                	je     6a55 <__reclaim_stacks+0x1c5>
    6a27:	48 8d 05 42 18 21 00 	lea    rax,[rip+0x211842]        # 218270 <stack_cache>
    6a2e:	48 89 46 08          	mov    QWORD PTR [rsi+0x8],rax
    6a32:	48 8b 05 2f 18 21 00 	mov    rax,QWORD PTR [rip+0x21182f]        # 218268 <stack_used+0x8>
    6a39:	48 89 08             	mov    QWORD PTR [rax],rcx
    6a3c:	48 8b 15 2d 18 21 00 	mov    rdx,QWORD PTR [rip+0x21182d]        # 218270 <stack_cache>
    6a43:	48 89 42 08          	mov    QWORD PTR [rdx+0x8],rax
    6a47:	48 8b 05 12 18 21 00 	mov    rax,QWORD PTR [rip+0x211812]        # 218260 <stack_used>
    6a4e:	48 89 05 1b 18 21 00 	mov    QWORD PTR [rip+0x21181b],rax        # 218270 <stack_cache>
    6a55:	49 8d 80 c0 02 00 00 	lea    rax,[r8+0x2c0]
    6a5c:	48 89 05 7d 58 21 00 	mov    QWORD PTR [rip+0x21587d],rax        # 21c2e0 <in_flight_stack>
    6a63:	49 8b 88 c8 02 00 00 	mov    rcx,QWORD PTR [r8+0x2c8]
    6a6a:	49 8b 90 c0 02 00 00 	mov    rdx,QWORD PTR [r8+0x2c0]
    6a71:	48 89 4a 08          	mov    QWORD PTR [rdx+0x8],rcx
    6a75:	49 8b 88 c8 02 00 00 	mov    rcx,QWORD PTR [r8+0x2c8]
    6a7c:	48 89 11             	mov    QWORD PTR [rcx],rdx
    6a7f:	48 8d 35 da 17 21 00 	lea    rsi,[rip+0x2117da]        # 218260 <stack_used>
    6a86:	48 c7 05 4f 58 21 00 	mov    QWORD PTR [rip+0x21584f],0x0        # 21c2e0 <in_flight_stack>
    6a8d:	00 00 00 00 
    6a91:	31 d2                	xor    edx,edx
    6a93:	48 89 35 ce 17 21 00 	mov    QWORD PTR [rip+0x2117ce],rsi        # 218268 <stack_used+0x8>
    6a9a:	48 89 35 bf 17 21 00 	mov    QWORD PTR [rip+0x2117bf],rsi        # 218260 <stack_used>
    6aa1:	48 8d 35 28 58 21 00 	lea    rsi,[rip+0x215828]        # 21c2d0 <__GI___stack_user>
    6aa8:	48 89 35 29 58 21 00 	mov    QWORD PTR [rip+0x215829],rsi        # 21c2d8 <__GI___stack_user+0x8>
    6aaf:	48 89 35 1a 58 21 00 	mov    QWORD PTR [rip+0x21581a],rsi        # 21c2d0 <__GI___stack_user>
    6ab6:	64 8a 14 25 12 06 00 	mov    dl,BYTE PTR fs:0x612
    6abd:	00 
    6abe:	84 d2                	test   dl,dl
    6ac0:	75 4d                	jne    6b0f <__reclaim_stacks+0x27f>
    6ac2:	48 8d 35 97 17 21 00 	lea    rsi,[rip+0x211797]        # 218260 <stack_used>
    6ac9:	48 89 05 98 17 21 00 	mov    QWORD PTR [rip+0x211798],rax        # 218268 <stack_used+0x8>
    6ad0:	49 89 b0 c0 02 00 00 	mov    QWORD PTR [r8+0x2c0],rsi
    6ad7:	49 89 b0 c8 02 00 00 	mov    QWORD PTR [r8+0x2c8],rsi
    6ade:	48 89 05 7b 17 21 00 	mov    QWORD PTR [rip+0x21177b],rax        # 218260 <stack_used>
    6ae5:	c7 05 69 17 21 00 01 	mov    DWORD PTR [rip+0x211769],0x1        # 218258 <__nptl_nthreads>
    6aec:	00 00 00 
    6aef:	48 c7 05 e6 57 21 00 	mov    QWORD PTR [rip+0x2157e6],0x0        # 21c2e0 <in_flight_stack>
    6af6:	00 00 00 00 
    6afa:	c7 05 e4 57 21 00 00 	mov    DWORD PTR [rip+0x2157e4],0x0        # 21c2e8 <stack_cache_lock>
    6b01:	00 00 00 
    6b04:	c7 05 b2 57 21 00 00 	mov    DWORD PTR [rip+0x2157b2],0x0        # 21c2c0 <__default_pthread_attr_lock>
    6b0b:	00 00 00 
    6b0e:	c3                   	ret    
    6b0f:	49 89 b0 c0 02 00 00 	mov    QWORD PTR [r8+0x2c0],rsi
    6b16:	49 89 b0 c8 02 00 00 	mov    QWORD PTR [r8+0x2c8],rsi
    6b1d:	48 89 05 b4 57 21 00 	mov    QWORD PTR [rip+0x2157b4],rax        # 21c2d8 <__GI___stack_user+0x8>
    6b24:	48 89 05 a5 57 21 00 	mov    QWORD PTR [rip+0x2157a5],rax        # 21c2d0 <__GI___stack_user>
    6b2b:	eb b8                	jmp    6ae5 <__reclaim_stacks+0x255>
    6b2d:	48 8b 0d 3c 17 21 00 	mov    rcx,QWORD PTR [rip+0x21173c]        # 218270 <stack_cache>
    6b34:	4c 89 ce             	mov    rsi,r9
    6b37:	4c 39 d1             	cmp    rcx,r10
    6b3a:	0f 85 c4 fe ff ff    	jne    6a04 <__reclaim_stacks+0x174>
    6b40:	e9 10 ff ff ff       	jmp    6a55 <__reclaim_stacks+0x1c5>
    6b45:	48 8b 0d 24 17 21 00 	mov    rcx,QWORD PTR [rip+0x211724]        # 218270 <stack_cache>
    6b4c:	4c 8d 15 1d 17 21 00 	lea    r10,[rip+0x21171d]        # 218270 <stack_cache>
    6b53:	48 8b 41 08          	mov    rax,QWORD PTR [rcx+0x8]
    6b57:	4c 39 d0             	cmp    rax,r10
    6b5a:	0f 84 b8 fd ff ff    	je     6918 <__reclaim_stacks+0x88>
    6b60:	48 89 ce             	mov    rsi,rcx
    6b63:	e9 66 fd ff ff       	jmp    68ce <__reclaim_stacks+0x3e>
    6b68:	48 8d 0d 21 c2 00 00 	lea    rcx,[rip+0xc221]        # 12d90 <__PRETTY_FUNCTION__.11830>
    6b6f:	48 8d 35 49 c1 00 00 	lea    rsi,[rip+0xc149]        # 12cbf <__PRETTY_FUNCTION__.11764+0xf>
    6b76:	48 8d 3d 52 c1 00 00 	lea    rdi,[rip+0xc152]        # 12ccf <__PRETTY_FUNCTION__.11764+0x1f>
    6b7d:	48 83 ec 08          	sub    rsp,0x8
    6b81:	ba 5f 03 00 00       	mov    edx,0x35f
    6b86:	e8 45 eb ff ff       	call   56d0 <__assert_fail@plt>
    6b8b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000006b90 <__find_thread_by_id>:
    6b90:	89 fa                	mov    edx,edi
    6b92:	be 01 00 00 00       	mov    esi,0x1
    6b97:	31 c0                	xor    eax,eax
    6b99:	f0 0f b1 35 47 57 21 	lock cmpxchg DWORD PTR [rip+0x215747],esi        # 21c2e8 <stack_cache_lock>
    6ba0:	00 
    6ba1:	74 1a                	je     6bbd <__find_thread_by_id+0x2d>
    6ba3:	48 8d 3d 3e 57 21 00 	lea    rdi,[rip+0x21573e]        # 21c2e8 <stack_cache_lock>
    6baa:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    6bb1:	e8 6a 96 00 00       	call   10220 <__lll_lock_wait_private>
    6bb6:	48 81 c4 80 00 00 00 	add    rsp,0x80
    6bbd:	48 8b 05 9c 16 21 00 	mov    rax,QWORD PTR [rip+0x21169c]        # 218260 <stack_used>
    6bc4:	48 8d 0d 95 16 21 00 	lea    rcx,[rip+0x211695]        # 218260 <stack_used>
    6bcb:	48 39 c8             	cmp    rax,rcx
    6bce:	74 1d                	je     6bed <__find_thread_by_id+0x5d>
    6bd0:	3b 50 10             	cmp    edx,DWORD PTR [rax+0x10]
    6bd3:	75 10                	jne    6be5 <__find_thread_by_id+0x55>
    6bd5:	eb 3e                	jmp    6c15 <__find_thread_by_id+0x85>
    6bd7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    6bde:	00 00 
    6be0:	39 50 10             	cmp    DWORD PTR [rax+0x10],edx
    6be3:	74 30                	je     6c15 <__find_thread_by_id+0x85>
    6be5:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6be8:	48 39 c8             	cmp    rax,rcx
    6beb:	75 f3                	jne    6be0 <__find_thread_by_id+0x50>
    6bed:	48 8b 05 dc 56 21 00 	mov    rax,QWORD PTR [rip+0x2156dc]        # 21c2d0 <__GI___stack_user>
    6bf4:	48 8d 0d d5 56 21 00 	lea    rcx,[rip+0x2156d5]        # 21c2d0 <__GI___stack_user>
    6bfb:	48 39 c8             	cmp    rax,rcx
    6bfe:	75 10                	jne    6c10 <__find_thread_by_id+0x80>
    6c00:	31 d2                	xor    edx,edx
    6c02:	eb 18                	jmp    6c1c <__find_thread_by_id+0x8c>
    6c04:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    6c08:	48 8b 00             	mov    rax,QWORD PTR [rax]
    6c0b:	48 39 c8             	cmp    rax,rcx
    6c0e:	74 f0                	je     6c00 <__find_thread_by_id+0x70>
    6c10:	3b 50 10             	cmp    edx,DWORD PTR [rax+0x10]
    6c13:	75 f3                	jne    6c08 <__find_thread_by_id+0x78>
    6c15:	48 8d 90 40 fd ff ff 	lea    rdx,[rax-0x2c0]
    6c1c:	f0 ff 0d c5 56 21 00 	lock dec DWORD PTR [rip+0x2156c5]        # 21c2e8 <stack_cache_lock>
    6c23:	74 1a                	je     6c3f <__find_thread_by_id+0xaf>
    6c25:	48 8d 3d bc 56 21 00 	lea    rdi,[rip+0x2156bc]        # 21c2e8 <stack_cache_lock>
    6c2c:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    6c33:	e8 98 96 00 00       	call   102d0 <__lll_unlock_wake_private>
    6c38:	48 81 c4 80 00 00 00 	add    rsp,0x80
    6c3f:	48 89 d0             	mov    rax,rdx
    6c42:	c3                   	ret    
    6c43:	0f 1f 00             	nop    DWORD PTR [rax]
    6c46:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    6c4d:	00 00 00 

0000000000006c50 <__nptl_setxid_error>:
    6c50:	8b 47 24             	mov    eax,DWORD PTR [rdi+0x24]
    6c53:	39 f0                	cmp    eax,esi
    6c55:	74 0c                	je     6c63 <__nptl_setxid_error+0x13>
    6c57:	83 f8 ff             	cmp    eax,0xffffffff
    6c5a:	75 09                	jne    6c65 <__nptl_setxid_error+0x15>
    6c5c:	f0 0f b1 77 24       	lock cmpxchg DWORD PTR [rdi+0x24],esi
    6c61:	75 ed                	jne    6c50 <__nptl_setxid_error>
    6c63:	f3 c3                	repz ret 
    6c65:	48 83 ec 08          	sub    rsp,0x8
    6c69:	e8 72 e9 ff ff       	call   55e0 <abort@plt>
    6c6e:	66 90                	xchg   ax,ax

0000000000006c70 <__nptl_setxid>:
    6c70:	41 57                	push   r15
    6c72:	41 56                	push   r14
    6c74:	be 01 00 00 00       	mov    esi,0x1
    6c79:	41 55                	push   r13
    6c7b:	41 54                	push   r12
    6c7d:	31 c0                	xor    eax,eax
    6c7f:	55                   	push   rbp
    6c80:	53                   	push   rbx
    6c81:	48 89 fb             	mov    rbx,rdi
    6c84:	48 83 ec 08          	sub    rsp,0x8
    6c88:	f0 0f b1 35 58 56 21 	lock cmpxchg DWORD PTR [rip+0x215658],esi        # 21c2e8 <stack_cache_lock>
    6c8f:	00 
    6c90:	74 1a                	je     6cac <__nptl_setxid+0x3c>
    6c92:	48 8d 3d 4f 56 21 00 	lea    rdi,[rip+0x21564f]        # 21c2e8 <stack_cache_lock>
    6c99:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    6ca0:	e8 7b 95 00 00       	call   10220 <__lll_lock_wait_private>
    6ca5:	48 81 c4 80 00 00 00 	add    rsp,0x80
    6cac:	48 8b 2d ad 15 21 00 	mov    rbp,QWORD PTR [rip+0x2115ad]        # 218260 <stack_used>
    6cb3:	4c 8d 35 a6 15 21 00 	lea    r14,[rip+0x2115a6]        # 218260 <stack_used>
    6cba:	c7 43 20 00 00 00 00 	mov    DWORD PTR [rbx+0x20],0x0
    6cc1:	64 4c 8b 24 25 10 00 	mov    r12,QWORD PTR fs:0x10
    6cc8:	00 00 
    6cca:	48 89 1d 97 56 21 00 	mov    QWORD PTR [rip+0x215697],rbx        # 21c368 <__xidcmd>
    6cd1:	c7 43 24 ff ff ff ff 	mov    DWORD PTR [rbx+0x24],0xffffffff
    6cd8:	4c 39 f5             	cmp    rbp,r14
    6cdb:	74 1d                	je     6cfa <__nptl_setxid+0x8a>
    6cdd:	0f 1f 00             	nop    DWORD PTR [rax]
    6ce0:	48 8d bd 40 fd ff ff 	lea    rdi,[rbp-0x2c0]
    6ce7:	49 39 fc             	cmp    r12,rdi
    6cea:	74 05                	je     6cf1 <__nptl_setxid+0x81>
    6cec:	e8 bf f5 ff ff       	call   62b0 <setxid_mark_thread.isra.1>
    6cf1:	48 8b 6d 00          	mov    rbp,QWORD PTR [rbp+0x0]
    6cf5:	4c 39 f5             	cmp    rbp,r14
    6cf8:	75 e6                	jne    6ce0 <__nptl_setxid+0x70>
    6cfa:	48 8b 2d cf 55 21 00 	mov    rbp,QWORD PTR [rip+0x2155cf]        # 21c2d0 <__GI___stack_user>
    6d01:	4c 8d 2d c8 55 21 00 	lea    r13,[rip+0x2155c8]        # 21c2d0 <__GI___stack_user>
    6d08:	4c 39 ed             	cmp    rbp,r13
    6d0b:	74 1d                	je     6d2a <__nptl_setxid+0xba>
    6d0d:	0f 1f 00             	nop    DWORD PTR [rax]
    6d10:	48 8d bd 40 fd ff ff 	lea    rdi,[rbp-0x2c0]
    6d17:	49 39 fc             	cmp    r12,rdi
    6d1a:	74 05                	je     6d21 <__nptl_setxid+0xb1>
    6d1c:	e8 8f f5 ff ff       	call   62b0 <setxid_mark_thread.isra.1>
    6d21:	48 8b 6d 00          	mov    rbp,QWORD PTR [rbp+0x0]
    6d25:	4c 39 ed             	cmp    rbp,r13
    6d28:	75 e6                	jne    6d10 <__nptl_setxid+0xa0>
    6d2a:	48 8d 6b 20          	lea    rbp,[rbx+0x20]
    6d2e:	41 bf ea 00 00 00    	mov    r15d,0xea
    6d34:	41 b9 ca 00 00 00    	mov    r9d,0xca
    6d3a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    6d40:	4c 8b 15 19 15 21 00 	mov    r10,QWORD PTR [rip+0x211519]        # 218260 <stack_used>
    6d47:	45 31 c0             	xor    r8d,r8d
    6d4a:	4d 39 f2             	cmp    r10,r14
    6d4d:	74 25                	je     6d74 <__nptl_setxid+0x104>
    6d4f:	90                   	nop
    6d50:	49 8d 82 40 fd ff ff 	lea    rax,[r10-0x2c0]
    6d57:	49 39 c4             	cmp    r12,rax
    6d5a:	74 10                	je     6d6c <__nptl_setxid+0xfc>
    6d5c:	41 f6 42 48 40       	test   BYTE PTR [r10+0x48],0x40
    6d61:	0f 85 89 00 00 00    	jne    6df0 <__nptl_setxid+0x180>
    6d67:	31 c0                	xor    eax,eax
    6d69:	41 01 c0             	add    r8d,eax
    6d6c:	4d 8b 12             	mov    r10,QWORD PTR [r10]
    6d6f:	4d 39 f2             	cmp    r10,r14
    6d72:	75 dc                	jne    6d50 <__nptl_setxid+0xe0>
    6d74:	4c 8b 15 55 55 21 00 	mov    r10,QWORD PTR [rip+0x215555]        # 21c2d0 <__GI___stack_user>
    6d7b:	4d 39 ea             	cmp    r10,r13
    6d7e:	74 28                	je     6da8 <__nptl_setxid+0x138>
    6d80:	49 8d 82 40 fd ff ff 	lea    rax,[r10-0x2c0]
    6d87:	49 39 c4             	cmp    r12,rax
    6d8a:	74 10                	je     6d9c <__nptl_setxid+0x12c>
    6d8c:	41 f6 42 48 40       	test   BYTE PTR [r10+0x48],0x40
    6d91:	0f 85 91 00 00 00    	jne    6e28 <__nptl_setxid+0x1b8>
    6d97:	31 c0                	xor    eax,eax
    6d99:	41 01 c0             	add    r8d,eax
    6d9c:	4d 8b 12             	mov    r10,QWORD PTR [r10]
    6d9f:	4d 39 ea             	cmp    r10,r13
    6da2:	75 dc                	jne    6d80 <__nptl_setxid+0x110>
    6da4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    6da8:	8b 53 20             	mov    edx,DWORD PTR [rbx+0x20]
    6dab:	85 d2                	test   edx,edx
    6dad:	0f 84 ad 00 00 00    	je     6e60 <__nptl_setxid+0x1f0>
    6db3:	45 31 d2             	xor    r10d,r10d
    6db6:	be 80 00 00 00       	mov    esi,0x80
    6dbb:	48 89 ef             	mov    rdi,rbp
    6dbe:	44 89 c8             	mov    eax,r9d
    6dc1:	0f 05                	syscall 
    6dc3:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    6dc9:	76 dd                	jbe    6da8 <__nptl_setxid+0x138>
    6dcb:	8d 48 0b             	lea    ecx,[rax+0xb]
    6dce:	83 f9 0b             	cmp    ecx,0xb
    6dd1:	77 0f                	ja     6de2 <__nptl_setxid+0x172>
    6dd3:	b8 01 00 00 00       	mov    eax,0x1
    6dd8:	48 d3 e0             	shl    rax,cl
    6ddb:	a9 81 08 00 00       	test   eax,0x881
    6de0:	75 c6                	jne    6da8 <__nptl_setxid+0x138>
    6de2:	48 8d 3d f7 bc 00 00 	lea    rdi,[rip+0xbcf7]        # 12ae0 <_fini+0xc>
    6de9:	e8 42 e8 ff ff       	call   5630 <__libc_fatal@plt>
    6dee:	66 90                	xchg   ax,ax
    6df0:	49 63 72 10          	movsxd rsi,DWORD PTR [r10+0x10]
    6df4:	64 8b 3c 25 d4 02 00 	mov    edi,DWORD PTR fs:0x2d4
    6dfb:	00 
    6dfc:	ba 21 00 00 00       	mov    edx,0x21
    6e01:	48 63 ff             	movsxd rdi,edi
    6e04:	44 89 f8             	mov    eax,r15d
    6e07:	0f 05                	syscall 
    6e09:	3d 00 f0 ff ff       	cmp    eax,0xfffff000
    6e0e:	0f 87 53 ff ff ff    	ja     6d67 <__nptl_setxid+0xf7>
    6e14:	f0 ff 43 20          	lock inc DWORD PTR [rbx+0x20]
    6e18:	b8 01 00 00 00       	mov    eax,0x1
    6e1d:	e9 47 ff ff ff       	jmp    6d69 <__nptl_setxid+0xf9>
    6e22:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    6e28:	49 63 72 10          	movsxd rsi,DWORD PTR [r10+0x10]
    6e2c:	64 8b 3c 25 d4 02 00 	mov    edi,DWORD PTR fs:0x2d4
    6e33:	00 
    6e34:	ba 21 00 00 00       	mov    edx,0x21
    6e39:	48 63 ff             	movsxd rdi,edi
    6e3c:	44 89 f8             	mov    eax,r15d
    6e3f:	0f 05                	syscall 
    6e41:	3d 00 f0 ff ff       	cmp    eax,0xfffff000
    6e46:	0f 87 4b ff ff ff    	ja     6d97 <__nptl_setxid+0x127>
    6e4c:	f0 ff 43 20          	lock inc DWORD PTR [rbx+0x20]
    6e50:	b8 01 00 00 00       	mov    eax,0x1
    6e55:	e9 3f ff ff ff       	jmp    6d99 <__nptl_setxid+0x129>
    6e5a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    6e60:	45 85 c0             	test   r8d,r8d
    6e63:	0f 85 d7 fe ff ff    	jne    6d40 <__nptl_setxid+0xd0>
    6e69:	4c 8b 05 f0 13 21 00 	mov    r8,QWORD PTR [rip+0x2113f0]        # 218260 <stack_used>
    6e70:	41 b9 ca 00 00 00    	mov    r9d,0xca
    6e76:	4d 39 f0             	cmp    r8,r14
    6e79:	74 36                	je     6eb1 <__nptl_setxid+0x241>
    6e7b:	49 8d 80 40 fd ff ff 	lea    rax,[r8-0x2c0]
    6e82:	49 39 c4             	cmp    r12,rax
    6e85:	75 1a                	jne    6ea1 <__nptl_setxid+0x231>
    6e87:	eb 20                	jmp    6ea9 <__nptl_setxid+0x239>
    6e89:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    6e90:	89 c2                	mov    edx,eax
    6e92:	83 e2 bf             	and    edx,0xffffffbf
    6e95:	f0 41 0f b1 50 48    	lock cmpxchg DWORD PTR [r8+0x48],edx
    6e9b:	0f 84 e0 00 00 00    	je     6f81 <__nptl_setxid+0x311>
    6ea1:	41 8b 40 48          	mov    eax,DWORD PTR [r8+0x48]
    6ea5:	a8 40                	test   al,0x40
    6ea7:	75 e7                	jne    6e90 <__nptl_setxid+0x220>
    6ea9:	4d 8b 00             	mov    r8,QWORD PTR [r8]
    6eac:	4d 39 f0             	cmp    r8,r14
    6eaf:	75 ca                	jne    6e7b <__nptl_setxid+0x20b>
    6eb1:	4c 8b 05 18 54 21 00 	mov    r8,QWORD PTR [rip+0x215418]        # 21c2d0 <__GI___stack_user>
    6eb8:	41 b9 ca 00 00 00    	mov    r9d,0xca
    6ebe:	4d 39 e8             	cmp    r8,r13
    6ec1:	74 36                	je     6ef9 <__nptl_setxid+0x289>
    6ec3:	49 8d 80 40 fd ff ff 	lea    rax,[r8-0x2c0]
    6eca:	49 39 c4             	cmp    r12,rax
    6ecd:	75 1a                	jne    6ee9 <__nptl_setxid+0x279>
    6ecf:	eb 20                	jmp    6ef1 <__nptl_setxid+0x281>
    6ed1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    6ed8:	89 c2                	mov    edx,eax
    6eda:	83 e2 bf             	and    edx,0xffffffbf
    6edd:	f0 41 0f b1 50 48    	lock cmpxchg DWORD PTR [r8+0x48],edx
    6ee3:	0f 84 df 00 00 00    	je     6fc8 <__nptl_setxid+0x358>
    6ee9:	41 8b 40 48          	mov    eax,DWORD PTR [r8+0x48]
    6eed:	a8 40                	test   al,0x40
    6eef:	75 e7                	jne    6ed8 <__nptl_setxid+0x268>
    6ef1:	4d 8b 00             	mov    r8,QWORD PTR [r8]
    6ef4:	4d 39 e8             	cmp    r8,r13
    6ef7:	75 ca                	jne    6ec3 <__nptl_setxid+0x253>
    6ef9:	48 8b 73 10          	mov    rsi,QWORD PTR [rbx+0x10]
    6efd:	48 8b 7b 08          	mov    rdi,QWORD PTR [rbx+0x8]
    6f01:	48 8b 53 18          	mov    rdx,QWORD PTR [rbx+0x18]
    6f05:	8b 03                	mov    eax,DWORD PTR [rbx]
    6f07:	0f 05                	syscall 
    6f09:	3d 00 f0 ff ff       	cmp    eax,0xfffff000
    6f0e:	89 c6                	mov    esi,eax
    6f10:	77 55                	ja     6f67 <__nptl_setxid+0x2f7>
    6f12:	31 d2                	xor    edx,edx
    6f14:	eb 16                	jmp    6f2c <__nptl_setxid+0x2bc>
    6f16:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    6f1d:	00 00 00 
    6f20:	83 f8 ff             	cmp    eax,0xffffffff
    6f23:	75 57                	jne    6f7c <__nptl_setxid+0x30c>
    6f25:	f0 0f b1 53 24       	lock cmpxchg DWORD PTR [rbx+0x24],edx
    6f2a:	74 07                	je     6f33 <__nptl_setxid+0x2c3>
    6f2c:	8b 43 24             	mov    eax,DWORD PTR [rbx+0x24]
    6f2f:	39 c2                	cmp    edx,eax
    6f31:	75 ed                	jne    6f20 <__nptl_setxid+0x2b0>
    6f33:	f0 ff 0d ae 53 21 00 	lock dec DWORD PTR [rip+0x2153ae]        # 21c2e8 <stack_cache_lock>
    6f3a:	74 1a                	je     6f56 <__nptl_setxid+0x2e6>
    6f3c:	48 8d 3d a5 53 21 00 	lea    rdi,[rip+0x2153a5]        # 21c2e8 <stack_cache_lock>
    6f43:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    6f4a:	e8 81 93 00 00       	call   102d0 <__lll_unlock_wake_private>
    6f4f:	48 81 c4 80 00 00 00 	add    rsp,0x80
    6f56:	48 83 c4 08          	add    rsp,0x8
    6f5a:	89 f0                	mov    eax,esi
    6f5c:	5b                   	pop    rbx
    6f5d:	5d                   	pop    rbp
    6f5e:	41 5c                	pop    r12
    6f60:	41 5d                	pop    r13
    6f62:	41 5e                	pop    r14
    6f64:	41 5f                	pop    r15
    6f66:	c3                   	ret    
    6f67:	89 c2                	mov    edx,eax
    6f69:	48 8b 05 18 10 21 00 	mov    rax,QWORD PTR [rip+0x211018]        # 217f88 <_DYNAMIC+0x238>
    6f70:	be ff ff ff ff       	mov    esi,0xffffffff
    6f75:	f7 da                	neg    edx
    6f77:	64 89 10             	mov    DWORD PTR fs:[rax],edx
    6f7a:	eb b0                	jmp    6f2c <__nptl_setxid+0x2bc>
    6f7c:	e8 5f e6 ff ff       	call   55e0 <abort@plt>
    6f81:	41 c7 80 5c 03 00 00 	mov    DWORD PTR [r8+0x35c],0x1
    6f88:	01 00 00 00 
    6f8c:	45 31 d2             	xor    r10d,r10d
    6f8f:	ba 01 00 00 00       	mov    edx,0x1
    6f94:	be 81 00 00 00       	mov    esi,0x81
    6f99:	49 8d b8 5c 03 00 00 	lea    rdi,[r8+0x35c]
    6fa0:	44 89 c8             	mov    eax,r9d
    6fa3:	0f 05                	syscall 
    6fa5:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    6fab:	0f 86 f8 fe ff ff    	jbe    6ea9 <__nptl_setxid+0x239>
    6fb1:	83 f8 ea             	cmp    eax,0xffffffea
    6fb4:	0f 84 ef fe ff ff    	je     6ea9 <__nptl_setxid+0x239>
    6fba:	83 f8 f2             	cmp    eax,0xfffffff2
    6fbd:	0f 84 e6 fe ff ff    	je     6ea9 <__nptl_setxid+0x239>
    6fc3:	e9 1a fe ff ff       	jmp    6de2 <__nptl_setxid+0x172>
    6fc8:	41 c7 80 5c 03 00 00 	mov    DWORD PTR [r8+0x35c],0x1
    6fcf:	01 00 00 00 
    6fd3:	45 31 d2             	xor    r10d,r10d
    6fd6:	ba 01 00 00 00       	mov    edx,0x1
    6fdb:	be 81 00 00 00       	mov    esi,0x81
    6fe0:	49 8d b8 5c 03 00 00 	lea    rdi,[r8+0x35c]
    6fe7:	44 89 c8             	mov    eax,r9d
    6fea:	0f 05                	syscall 
    6fec:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    6ff2:	0f 86 f9 fe ff ff    	jbe    6ef1 <__nptl_setxid+0x281>
    6ff8:	83 f8 ea             	cmp    eax,0xffffffea
    6ffb:	0f 84 f0 fe ff ff    	je     6ef1 <__nptl_setxid+0x281>
    7001:	83 f8 f2             	cmp    eax,0xfffffff2
    7004:	0f 84 e7 fe ff ff    	je     6ef1 <__nptl_setxid+0x281>
    700a:	e9 d3 fd ff ff       	jmp    6de2 <__nptl_setxid+0x172>
    700f:	90                   	nop

0000000000007010 <__pthread_init_static_tls>:
    7010:	41 56                	push   r14
    7012:	be 01 00 00 00       	mov    esi,0x1
    7017:	41 55                	push   r13
    7019:	31 c0                	xor    eax,eax
    701b:	41 54                	push   r12
    701d:	55                   	push   rbp
    701e:	53                   	push   rbx
    701f:	48 89 fb             	mov    rbx,rdi
    7022:	f0 0f b1 35 be 52 21 	lock cmpxchg DWORD PTR [rip+0x2152be],esi        # 21c2e8 <stack_cache_lock>
    7029:	00 
    702a:	74 1a                	je     7046 <__pthread_init_static_tls+0x36>
    702c:	48 8d 3d b5 52 21 00 	lea    rdi,[rip+0x2152b5]        # 21c2e8 <stack_cache_lock>
    7033:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    703a:	e8 e1 91 00 00       	call   10220 <__lll_lock_wait_private>
    703f:	48 81 c4 80 00 00 00 	add    rsp,0x80
    7046:	48 8b 2d 13 12 21 00 	mov    rbp,QWORD PTR [rip+0x211213]        # 218260 <stack_used>
    704d:	4c 8d 2d 0c 12 21 00 	lea    r13,[rip+0x21120c]        # 218260 <stack_used>
    7054:	49 c7 c6 40 fd ff ff 	mov    r14,0xfffffffffffffd40
    705b:	4c 39 ed             	cmp    rbp,r13
    705e:	74 40                	je     70a0 <__pthread_init_static_tls+0x90>
    7060:	4c 89 f7             	mov    rdi,r14
    7063:	48 2b bb 40 04 00 00 	sub    rdi,QWORD PTR [rbx+0x440]
    706a:	48 8b 93 20 04 00 00 	mov    rdx,QWORD PTR [rbx+0x420]
    7071:	4c 8b a3 28 04 00 00 	mov    r12,QWORD PTR [rbx+0x428]
    7078:	48 8b b3 18 04 00 00 	mov    rsi,QWORD PTR [rbx+0x418]
    707f:	48 01 ef             	add    rdi,rbp
    7082:	49 29 d4             	sub    r12,rdx
    7085:	e8 d6 e5 ff ff       	call   5660 <__mempcpy@plt>
    708a:	31 f6                	xor    esi,esi
    708c:	4c 89 e2             	mov    rdx,r12
    708f:	48 89 c7             	mov    rdi,rax
    7092:	e8 49 e6 ff ff       	call   56e0 <memset@plt>
    7097:	48 8b 6d 00          	mov    rbp,QWORD PTR [rbp+0x0]
    709b:	4c 39 ed             	cmp    rbp,r13
    709e:	75 c0                	jne    7060 <__pthread_init_static_tls+0x50>
    70a0:	48 8b 2d 29 52 21 00 	mov    rbp,QWORD PTR [rip+0x215229]        # 21c2d0 <__GI___stack_user>
    70a7:	4c 8d 2d 22 52 21 00 	lea    r13,[rip+0x215222]        # 21c2d0 <__GI___stack_user>
    70ae:	49 c7 c6 40 fd ff ff 	mov    r14,0xfffffffffffffd40
    70b5:	4c 39 ed             	cmp    rbp,r13
    70b8:	74 46                	je     7100 <__pthread_init_static_tls+0xf0>
    70ba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    70c0:	4c 89 f7             	mov    rdi,r14
    70c3:	48 2b bb 40 04 00 00 	sub    rdi,QWORD PTR [rbx+0x440]
    70ca:	48 8b 93 20 04 00 00 	mov    rdx,QWORD PTR [rbx+0x420]
    70d1:	4c 8b a3 28 04 00 00 	mov    r12,QWORD PTR [rbx+0x428]
    70d8:	48 8b b3 18 04 00 00 	mov    rsi,QWORD PTR [rbx+0x418]
    70df:	48 01 ef             	add    rdi,rbp
    70e2:	49 29 d4             	sub    r12,rdx
    70e5:	e8 76 e5 ff ff       	call   5660 <__mempcpy@plt>
    70ea:	31 f6                	xor    esi,esi
    70ec:	4c 89 e2             	mov    rdx,r12
    70ef:	48 89 c7             	mov    rdi,rax
    70f2:	e8 e9 e5 ff ff       	call   56e0 <memset@plt>
    70f7:	48 8b 6d 00          	mov    rbp,QWORD PTR [rbp+0x0]
    70fb:	4c 39 ed             	cmp    rbp,r13
    70fe:	75 c0                	jne    70c0 <__pthread_init_static_tls+0xb0>
    7100:	f0 ff 0d e1 51 21 00 	lock dec DWORD PTR [rip+0x2151e1]        # 21c2e8 <stack_cache_lock>
    7107:	74 1a                	je     7123 <__pthread_init_static_tls+0x113>
    7109:	48 8d 3d d8 51 21 00 	lea    rdi,[rip+0x2151d8]        # 21c2e8 <stack_cache_lock>
    7110:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    7117:	e8 b4 91 00 00       	call   102d0 <__lll_unlock_wake_private>
    711c:	48 81 c4 80 00 00 00 	add    rsp,0x80
    7123:	5b                   	pop    rbx
    7124:	5d                   	pop    rbp
    7125:	41 5c                	pop    r12
    7127:	41 5d                	pop    r13
    7129:	41 5e                	pop    r14
    712b:	c3                   	ret    
    712c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000007130 <__wait_lookup_done>:
    7130:	41 57                	push   r15
    7132:	41 56                	push   r14
    7134:	be 01 00 00 00       	mov    esi,0x1
    7139:	41 55                	push   r13
    713b:	41 54                	push   r12
    713d:	31 c0                	xor    eax,eax
    713f:	55                   	push   rbp
    7140:	53                   	push   rbx
    7141:	48 83 ec 08          	sub    rsp,0x8
    7145:	f0 0f b1 35 9b 51 21 	lock cmpxchg DWORD PTR [rip+0x21519b],esi        # 21c2e8 <stack_cache_lock>
    714c:	00 
    714d:	74 1a                	je     7169 <__wait_lookup_done+0x39>
    714f:	48 8d 3d 92 51 21 00 	lea    rdi,[rip+0x215192]        # 21c2e8 <stack_cache_lock>
    7156:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    715d:	e8 be 90 00 00       	call   10220 <__lll_lock_wait_private>
    7162:	48 81 c4 80 00 00 00 	add    rsp,0x80
    7169:	4c 8b 05 f0 10 21 00 	mov    r8,QWORD PTR [rip+0x2110f0]        # 218260 <stack_used>
    7170:	48 8d 1d e9 10 21 00 	lea    rbx,[rip+0x2110e9]        # 218260 <stack_used>
    7177:	64 4c 8b 0c 25 10 00 	mov    r9,QWORD PTR fs:0x10
    717e:	00 00 
    7180:	49 39 d8             	cmp    r8,rbx
    7183:	74 54                	je     71d9 <__wait_lookup_done+0xa9>
    7185:	41 bc 01 00 00 00    	mov    r12d,0x1
    718b:	bd 02 00 00 00       	mov    ebp,0x2
    7190:	41 be ca 00 00 00    	mov    r14d,0xca
    7196:	41 bd 01 00 00 00    	mov    r13d,0x1
    719c:	eb 0a                	jmp    71a8 <__wait_lookup_done+0x78>
    719e:	66 90                	xchg   ax,ax
    71a0:	4d 8b 00             	mov    r8,QWORD PTR [r8]
    71a3:	49 39 d8             	cmp    r8,rbx
    71a6:	74 31                	je     71d9 <__wait_lookup_done+0xa9>
    71a8:	49 8d 80 40 fd ff ff 	lea    rax,[r8-0x2c0]
    71af:	49 39 c1             	cmp    r9,rax
    71b2:	74 ec                	je     71a0 <__wait_lookup_done+0x70>
    71b4:	41 8b 88 5c fd ff ff 	mov    ecx,DWORD PTR [r8-0x2a4]
    71bb:	85 c9                	test   ecx,ecx
    71bd:	74 e1                	je     71a0 <__wait_lookup_done+0x70>
    71bf:	4c 8d 78 1c          	lea    r15,[rax+0x1c]
    71c3:	44 89 e0             	mov    eax,r12d
    71c6:	f0 41 0f b1 2f       	lock cmpxchg DWORD PTR [r15],ebp
    71cb:	0f 84 c5 00 00 00    	je     7296 <__wait_lookup_done+0x166>
    71d1:	4d 8b 00             	mov    r8,QWORD PTR [r8]
    71d4:	49 39 d8             	cmp    r8,rbx
    71d7:	75 cf                	jne    71a8 <__wait_lookup_done+0x78>
    71d9:	4c 8b 05 f0 50 21 00 	mov    r8,QWORD PTR [rip+0x2150f0]        # 21c2d0 <__GI___stack_user>
    71e0:	48 8d 1d e9 50 21 00 	lea    rbx,[rip+0x2150e9]        # 21c2d0 <__GI___stack_user>
    71e7:	49 39 d8             	cmp    r8,rbx
    71ea:	74 55                	je     7241 <__wait_lookup_done+0x111>
    71ec:	41 bc 01 00 00 00    	mov    r12d,0x1
    71f2:	bd 02 00 00 00       	mov    ebp,0x2
    71f7:	41 be ca 00 00 00    	mov    r14d,0xca
    71fd:	41 bd 01 00 00 00    	mov    r13d,0x1
    7203:	eb 0b                	jmp    7210 <__wait_lookup_done+0xe0>
    7205:	0f 1f 00             	nop    DWORD PTR [rax]
    7208:	4d 8b 00             	mov    r8,QWORD PTR [r8]
    720b:	49 39 d8             	cmp    r8,rbx
    720e:	74 31                	je     7241 <__wait_lookup_done+0x111>
    7210:	49 8d 80 40 fd ff ff 	lea    rax,[r8-0x2c0]
    7217:	49 39 c1             	cmp    r9,rax
    721a:	74 ec                	je     7208 <__wait_lookup_done+0xd8>
    721c:	41 8b 90 5c fd ff ff 	mov    edx,DWORD PTR [r8-0x2a4]
    7223:	85 d2                	test   edx,edx
    7225:	74 e1                	je     7208 <__wait_lookup_done+0xd8>
    7227:	4c 8d 78 1c          	lea    r15,[rax+0x1c]
    722b:	44 89 e0             	mov    eax,r12d
    722e:	f0 41 0f b1 2f       	lock cmpxchg DWORD PTR [r15],ebp
    7233:	0f 84 8a 00 00 00    	je     72c3 <__wait_lookup_done+0x193>
    7239:	4d 8b 00             	mov    r8,QWORD PTR [r8]
    723c:	49 39 d8             	cmp    r8,rbx
    723f:	75 cf                	jne    7210 <__wait_lookup_done+0xe0>
    7241:	f0 ff 0d a0 50 21 00 	lock dec DWORD PTR [rip+0x2150a0]        # 21c2e8 <stack_cache_lock>
    7248:	74 1a                	je     7264 <__wait_lookup_done+0x134>
    724a:	48 8d 3d 97 50 21 00 	lea    rdi,[rip+0x215097]        # 21c2e8 <stack_cache_lock>
    7251:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    7258:	e8 73 90 00 00       	call   102d0 <__lll_unlock_wake_private>
    725d:	48 81 c4 80 00 00 00 	add    rsp,0x80
    7264:	48 83 c4 08          	add    rsp,0x8
    7268:	5b                   	pop    rbx
    7269:	5d                   	pop    rbp
    726a:	41 5c                	pop    r12
    726c:	41 5d                	pop    r13
    726e:	41 5e                	pop    r14
    7270:	41 5f                	pop    r15
    7272:	c3                   	ret    
    7273:	8d 48 0b             	lea    ecx,[rax+0xb]
    7276:	83 f9 0b             	cmp    ecx,0xb
    7279:	77 7a                	ja     72f5 <__wait_lookup_done+0x1c5>
    727b:	4c 89 e8             	mov    rax,r13
    727e:	48 d3 e0             	shl    rax,cl
    7281:	a9 81 08 00 00       	test   eax,0x881
    7286:	74 6d                	je     72f5 <__wait_lookup_done+0x1c5>
    7288:	41 83 b8 5c fd ff ff 	cmp    DWORD PTR [r8-0x2a4],0x2
    728f:	02 
    7290:	0f 85 0a ff ff ff    	jne    71a0 <__wait_lookup_done+0x70>
    7296:	45 31 d2             	xor    r10d,r10d
    7299:	ba 02 00 00 00       	mov    edx,0x2
    729e:	be 80 00 00 00       	mov    esi,0x80
    72a3:	4c 89 ff             	mov    rdi,r15
    72a6:	44 89 f0             	mov    eax,r14d
    72a9:	0f 05                	syscall 
    72ab:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    72b1:	76 d5                	jbe    7288 <__wait_lookup_done+0x158>
    72b3:	eb be                	jmp    7273 <__wait_lookup_done+0x143>
    72b5:	41 83 b8 5c fd ff ff 	cmp    DWORD PTR [r8-0x2a4],0x2
    72bc:	02 
    72bd:	0f 85 45 ff ff ff    	jne    7208 <__wait_lookup_done+0xd8>
    72c3:	45 31 d2             	xor    r10d,r10d
    72c6:	ba 02 00 00 00       	mov    edx,0x2
    72cb:	be 80 00 00 00       	mov    esi,0x80
    72d0:	4c 89 ff             	mov    rdi,r15
    72d3:	44 89 f0             	mov    eax,r14d
    72d6:	0f 05                	syscall 
    72d8:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    72de:	76 d5                	jbe    72b5 <__wait_lookup_done+0x185>
    72e0:	8d 48 0b             	lea    ecx,[rax+0xb]
    72e3:	83 f9 0b             	cmp    ecx,0xb
    72e6:	77 0d                	ja     72f5 <__wait_lookup_done+0x1c5>
    72e8:	4c 89 e8             	mov    rax,r13
    72eb:	48 d3 e0             	shl    rax,cl
    72ee:	a9 81 08 00 00       	test   eax,0x881
    72f3:	75 c0                	jne    72b5 <__wait_lookup_done+0x185>
    72f5:	48 8d 3d e4 b7 00 00 	lea    rdi,[rip+0xb7e4]        # 12ae0 <_fini+0xc>
    72fc:	e8 2f e3 ff ff       	call   5630 <__libc_fatal@plt>
    7301:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    7306:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    730d:	00 00 00 

0000000000007310 <__find_in_stack_list>:
    7310:	49 89 f8             	mov    r8,rdi
    7313:	be 01 00 00 00       	mov    esi,0x1
    7318:	31 c0                	xor    eax,eax
    731a:	f0 0f b1 35 c6 4f 21 	lock cmpxchg DWORD PTR [rip+0x214fc6],esi        # 21c2e8 <stack_cache_lock>
    7321:	00 
    7322:	74 1a                	je     733e <__find_in_stack_list+0x2e>
    7324:	48 8d 3d bd 4f 21 00 	lea    rdi,[rip+0x214fbd]        # 21c2e8 <stack_cache_lock>
    732b:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    7332:	e8 e9 8e 00 00       	call   10220 <__lll_lock_wait_private>
    7337:	48 81 c4 80 00 00 00 	add    rsp,0x80
    733e:	48 8b 05 1b 0f 21 00 	mov    rax,QWORD PTR [rip+0x210f1b]        # 218260 <stack_used>
    7345:	48 8d 0d 14 0f 21 00 	lea    rcx,[rip+0x210f14]        # 218260 <stack_used>
    734c:	48 39 c8             	cmp    rax,rcx
    734f:	75 0f                	jne    7360 <__find_in_stack_list+0x50>
    7351:	eb 4d                	jmp    73a0 <__find_in_stack_list+0x90>
    7353:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    7358:	48 8b 00             	mov    rax,QWORD PTR [rax]
    735b:	48 39 c8             	cmp    rax,rcx
    735e:	74 40                	je     73a0 <__find_in_stack_list+0x90>
    7360:	48 8d 90 40 fd ff ff 	lea    rdx,[rax-0x2c0]
    7367:	49 39 d0             	cmp    r8,rdx
    736a:	75 ec                	jne    7358 <__find_in_stack_list+0x48>
    736c:	4d 85 c0             	test   r8,r8
    736f:	74 2f                	je     73a0 <__find_in_stack_list+0x90>
    7371:	f0 ff 0d 70 4f 21 00 	lock dec DWORD PTR [rip+0x214f70]        # 21c2e8 <stack_cache_lock>
    7378:	74 1a                	je     7394 <__find_in_stack_list+0x84>
    737a:	48 8d 3d 67 4f 21 00 	lea    rdi,[rip+0x214f67]        # 21c2e8 <stack_cache_lock>
    7381:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    7388:	e8 43 8f 00 00       	call   102d0 <__lll_unlock_wake_private>
    738d:	48 81 c4 80 00 00 00 	add    rsp,0x80
    7394:	4c 89 c0             	mov    rax,r8
    7397:	c3                   	ret    
    7398:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    739f:	00 
    73a0:	48 8b 05 29 4f 21 00 	mov    rax,QWORD PTR [rip+0x214f29]        # 21c2d0 <__GI___stack_user>
    73a7:	48 8d 0d 22 4f 21 00 	lea    rcx,[rip+0x214f22]        # 21c2d0 <__GI___stack_user>
    73ae:	48 39 c8             	cmp    rax,rcx
    73b1:	74 19                	je     73cc <__find_in_stack_list+0xbc>
    73b3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    73b8:	48 8d 90 40 fd ff ff 	lea    rdx,[rax-0x2c0]
    73bf:	49 39 d0             	cmp    r8,rdx
    73c2:	74 ad                	je     7371 <__find_in_stack_list+0x61>
    73c4:	48 8b 00             	mov    rax,QWORD PTR [rax]
    73c7:	48 39 c8             	cmp    rax,rcx
    73ca:	75 ec                	jne    73b8 <__find_in_stack_list+0xa8>
    73cc:	45 31 c0             	xor    r8d,r8d
    73cf:	eb a0                	jmp    7371 <__find_in_stack_list+0x61>
    73d1:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    73d6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    73dd:	00 00 00 

00000000000073e0 <__nptl_deallocate_tsd>:
    73e0:	31 c0                	xor    eax,eax
    73e2:	64 8a 04 25 10 06 00 	mov    al,BYTE PTR fs:0x610
    73e9:	00 
    73ea:	84 c0                	test   al,al
    73ec:	74 0a                	je     73f8 <__nptl_deallocate_tsd+0x18>
    73ee:	e9 bd ef ff ff       	jmp    63b0 <__nptl_deallocate_tsd.part.4>
    73f3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    73f8:	f3 c3                	repz ret 
    73fa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000007400 <__free_tcb>:
    7400:	f0 0f ba af 08 03 00 	lock bts DWORD PTR [rdi+0x308],0x5
    7407:	00 05 
    7409:	0f 92 c0             	setb   al
    740c:	84 c0                	test   al,al
    740e:	0f 85 08 01 00 00    	jne    751c <__free_tcb+0x11c>
    7414:	41 54                	push   r12
    7416:	55                   	push   rbp
    7417:	53                   	push   rbx
    7418:	48 89 fb             	mov    rbx,rdi
    741b:	48 8b bf b0 06 00 00 	mov    rdi,QWORD PTR [rdi+0x6b0]
    7422:	48 85 ff             	test   rdi,rdi
    7425:	0f 85 f5 00 00 00    	jne    7520 <__free_tcb+0x120>
    742b:	be 01 00 00 00       	mov    esi,0x1
    7430:	31 c0                	xor    eax,eax
    7432:	f0 0f b1 35 ae 4e 21 	lock cmpxchg DWORD PTR [rip+0x214eae],esi        # 21c2e8 <stack_cache_lock>
    7439:	00 
    743a:	74 1a                	je     7456 <__free_tcb+0x56>
    743c:	48 8d 3d a5 4e 21 00 	lea    rdi,[rip+0x214ea5]        # 21c2e8 <stack_cache_lock>
    7443:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    744a:	e8 d1 8d 00 00       	call   10220 <__lll_lock_wait_private>
    744f:	48 81 c4 80 00 00 00 	add    rsp,0x80
    7456:	48 8d 83 c0 02 00 00 	lea    rax,[rbx+0x2c0]
    745d:	48 89 05 7c 4e 21 00 	mov    QWORD PTR [rip+0x214e7c],rax        # 21c2e0 <in_flight_stack>
    7464:	48 8b 8b c8 02 00 00 	mov    rcx,QWORD PTR [rbx+0x2c8]
    746b:	48 8b 93 c0 02 00 00 	mov    rdx,QWORD PTR [rbx+0x2c0]
    7472:	48 89 4a 08          	mov    QWORD PTR [rdx+0x8],rcx
    7476:	48 8b 8b c8 02 00 00 	mov    rcx,QWORD PTR [rbx+0x2c8]
    747d:	48 89 11             	mov    QWORD PTR [rcx],rdx
    7480:	80 bb 12 06 00 00 00 	cmp    BYTE PTR [rbx+0x612],0x0
    7487:	48 c7 05 4e 4e 21 00 	mov    QWORD PTR [rip+0x214e4e],0x0        # 21c2e0 <in_flight_stack>
    748e:	00 00 00 00 
    7492:	0f 85 a0 00 00 00    	jne    7538 <__free_tcb+0x138>
    7498:	48 89 c2             	mov    rdx,rax
    749b:	48 83 ca 01          	or     rdx,0x1
    749f:	48 89 15 3a 4e 21 00 	mov    QWORD PTR [rip+0x214e3a],rdx        # 21c2e0 <in_flight_stack>
    74a6:	48 8b 15 c3 0d 21 00 	mov    rdx,QWORD PTR [rip+0x210dc3]        # 218270 <stack_cache>
    74ad:	4c 8d 25 bc 0d 21 00 	lea    r12,[rip+0x210dbc]        # 218270 <stack_cache>
    74b4:	4c 89 a3 c8 02 00 00 	mov    QWORD PTR [rbx+0x2c8],r12
    74bb:	48 89 93 c0 02 00 00 	mov    QWORD PTR [rbx+0x2c0],rdx
    74c2:	48 89 42 08          	mov    QWORD PTR [rdx+0x8],rax
    74c6:	48 89 05 a3 0d 21 00 	mov    QWORD PTR [rip+0x210da3],rax        # 218270 <stack_cache>
    74cd:	48 8b 05 1c 4e 21 00 	mov    rax,QWORD PTR [rip+0x214e1c]        # 21c2f0 <stack_cache_actsize>
    74d4:	48 03 83 98 06 00 00 	add    rax,QWORD PTR [rbx+0x698]
    74db:	48 c7 05 fa 4d 21 00 	mov    QWORD PTR [rip+0x214dfa],0x0        # 21c2e0 <in_flight_stack>
    74e2:	00 00 00 00 
    74e6:	48 3d 00 00 80 02    	cmp    rax,0x2800000
    74ec:	48 89 05 fd 4d 21 00 	mov    QWORD PTR [rip+0x214dfd],rax        # 21c2f0 <stack_cache_actsize>
    74f3:	77 53                	ja     7548 <__free_tcb+0x148>
    74f5:	f0 ff 0d ec 4d 21 00 	lock dec DWORD PTR [rip+0x214dec]        # 21c2e8 <stack_cache_lock>
    74fc:	74 1a                	je     7518 <__free_tcb+0x118>
    74fe:	48 8d 3d e3 4d 21 00 	lea    rdi,[rip+0x214de3]        # 21c2e8 <stack_cache_lock>
    7505:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    750c:	e8 bf 8d 00 00       	call   102d0 <__lll_unlock_wake_private>
    7511:	48 81 c4 80 00 00 00 	add    rsp,0x80
    7518:	5b                   	pop    rbx
    7519:	5d                   	pop    rbp
    751a:	41 5c                	pop    r12
    751c:	f3 c3                	repz ret 
    751e:	66 90                	xchg   ax,ax
    7520:	48 c7 83 b0 06 00 00 	mov    QWORD PTR [rbx+0x6b0],0x0
    7527:	00 00 00 00 
    752b:	e8 90 e0 ff ff       	call   55c0 <free@plt>
    7530:	e9 f6 fe ff ff       	jmp    742b <__free_tcb+0x2b>
    7535:	0f 1f 00             	nop    DWORD PTR [rax]
    7538:	31 f6                	xor    esi,esi
    753a:	48 89 df             	mov    rdi,rbx
    753d:	e8 de e1 ff ff       	call   5720 <_dl_deallocate_tls@plt>
    7542:	eb b1                	jmp    74f5 <__free_tcb+0xf5>
    7544:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    7548:	48 8b 1d 29 0d 21 00 	mov    rbx,QWORD PTR [rip+0x210d29]        # 218278 <stack_cache+0x8>
    754f:	4c 39 e3             	cmp    rbx,r12
    7552:	48 8b 6b 08          	mov    rbp,QWORD PTR [rbx+0x8]
    7556:	75 17                	jne    756f <__free_tcb+0x16f>
    7558:	eb 9b                	jmp    74f5 <__free_tcb+0xf5>
    755a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    7560:	4c 39 e5             	cmp    rbp,r12
    7563:	48 8b 45 08          	mov    rax,QWORD PTR [rbp+0x8]
    7567:	48 89 eb             	mov    rbx,rbp
    756a:	74 89                	je     74f5 <__free_tcb+0xf5>
    756c:	48 89 c5             	mov    rbp,rax
    756f:	8b 43 10             	mov    eax,DWORD PTR [rbx+0x10]
    7572:	85 c0                	test   eax,eax
    7574:	7f ea                	jg     7560 <__free_tcb+0x160>
    7576:	48 89 1d 63 4d 21 00 	mov    QWORD PTR [rip+0x214d63],rbx        # 21c2e0 <in_flight_stack>
    757d:	48 8b 53 08          	mov    rdx,QWORD PTR [rbx+0x8]
    7581:	48 8b 03             	mov    rax,QWORD PTR [rbx]
    7584:	48 89 50 08          	mov    QWORD PTR [rax+0x8],rdx
    7588:	48 8b 53 08          	mov    rdx,QWORD PTR [rbx+0x8]
    758c:	48 89 02             	mov    QWORD PTR [rdx],rax
    758f:	48 8d bb 40 fd ff ff 	lea    rdi,[rbx-0x2c0]
    7596:	31 f6                	xor    esi,esi
    7598:	48 8b 83 d8 03 00 00 	mov    rax,QWORD PTR [rbx+0x3d8]
    759f:	48 c7 05 36 4d 21 00 	mov    QWORD PTR [rip+0x214d36],0x0        # 21c2e0 <in_flight_stack>
    75a6:	00 00 00 00 
    75aa:	48 29 05 3f 4d 21 00 	sub    QWORD PTR [rip+0x214d3f],rax        # 21c2f0 <stack_cache_actsize>
    75b1:	e8 6a e1 ff ff       	call   5720 <_dl_deallocate_tls@plt>
    75b6:	48 8b b3 d8 03 00 00 	mov    rsi,QWORD PTR [rbx+0x3d8]
    75bd:	48 8b bb d0 03 00 00 	mov    rdi,QWORD PTR [rbx+0x3d0]
    75c4:	e8 07 e3 ff ff       	call   58d0 <munmap@plt>
    75c9:	85 c0                	test   eax,eax
    75cb:	75 12                	jne    75df <__free_tcb+0x1df>
    75cd:	48 81 3d 18 4d 21 00 	cmp    QWORD PTR [rip+0x214d18],0x2800000        # 21c2f0 <stack_cache_actsize>
    75d4:	00 00 80 02 
    75d8:	77 86                	ja     7560 <__free_tcb+0x160>
    75da:	e9 16 ff ff ff       	jmp    74f5 <__free_tcb+0xf5>
    75df:	e8 fc df ff ff       	call   55e0 <abort@plt>
    75e4:	66 90                	xchg   ax,ax
    75e6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    75ed:	00 00 00 

00000000000075f0 <start_thread>:
    75f0:	53                   	push   rbx
    75f1:	48 89 fb             	mov    rbx,rdi
    75f4:	48 81 ec 90 00 00 00 	sub    rsp,0x90
    75fb:	48 89 7c 24 08       	mov    QWORD PTR [rsp+0x8],rdi
    7600:	0f 31                	rdtsc  
    7602:	48 c1 e2 20          	shl    rdx,0x20
    7606:	89 c0                	mov    eax,eax
    7608:	48 09 d0             	or     rax,rdx
    760b:	64 48 89 04 25 20 06 	mov    QWORD PTR fs:0x620,rax
    7612:	00 00 
    7614:	48 8b 05 75 09 21 00 	mov    rax,QWORD PTR [rip+0x210975]        # 217f90 <_DYNAMIC+0x240>
    761b:	48 8d 97 b8 06 00 00 	lea    rdx,[rdi+0x6b8]
    7622:	64 48 89 10          	mov    QWORD PTR fs:[rax],rdx
    7626:	e8 55 e2 ff ff       	call   5880 <__ctype_init@plt>
    762b:	31 c0                	xor    eax,eax
    762d:	87 83 1c 06 00 00    	xchg   DWORD PTR [rbx+0x61c],eax
    7633:	83 f8 fe             	cmp    eax,0xfffffffe
    7636:	0f 84 4b 01 00 00    	je     7787 <start_thread+0x197>
    763c:	48 8b 5c 24 08       	mov    rbx,QWORD PTR [rsp+0x8]
    7641:	be 18 00 00 00       	mov    esi,0x18
    7646:	b8 11 01 00 00       	mov    eax,0x111
    764b:	48 8d bb e0 02 00 00 	lea    rdi,[rbx+0x2e0]
    7652:	0f 05                	syscall 
    7654:	f6 83 14 06 00 00 04 	test   BYTE PTR [rbx+0x614],0x4
    765b:	0f 85 70 01 00 00    	jne    77d1 <start_thread+0x1e1>
    7661:	48 8d 7c 24 10       	lea    rdi,[rsp+0x10]
    7666:	48 c7 44 24 58 00 00 	mov    QWORD PTR [rsp+0x58],0x0
    766d:	00 00 
    766f:	48 c7 44 24 60 00 00 	mov    QWORD PTR [rsp+0x60],0x0
    7676:	00 00 
    7678:	e8 d3 e0 ff ff       	call   5750 <_setjmp@plt>
    767d:	85 c0                	test   eax,eax
    767f:	89 c3                	mov    ebx,eax
    7681:	75 40                	jne    76c3 <start_thread+0xd3>
    7683:	48 8d 44 24 10       	lea    rax,[rsp+0x10]
    7688:	64 48 89 04 25 00 03 	mov    QWORD PTR fs:0x300,rax
    768f:	00 00 
    7691:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
    7696:	80 b8 13 06 00 00 00 	cmp    BYTE PTR [rax+0x613],0x0
    769d:	0f 85 62 01 00 00    	jne    7805 <start_thread+0x215>
    76a3:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
    76a8:	90                   	nop
    76a9:	64 48 8b 3c 25 48 06 	mov    rdi,QWORD PTR fs:0x648
    76b0:	00 00 
    76b2:	64 ff 14 25 40 06 00 	call   QWORD PTR fs:0x640
    76b9:	00 
    76ba:	64 48 89 04 25 30 06 	mov    QWORD PTR fs:0x630,rax
    76c1:	00 00 
    76c3:	e8 68 e0 ff ff       	call   5730 <__call_tls_dtors@plt>
    76c8:	31 c0                	xor    eax,eax
    76ca:	64 8a 04 25 10 06 00 	mov    al,BYTE PTR fs:0x610
    76d1:	00 
    76d2:	84 c0                	test   al,al
    76d4:	0f 85 91 01 00 00    	jne    786b <start_thread+0x27b>
    76da:	e8 d1 e0 ff ff       	call   57b0 <__libc_thread_freeres@plt>
    76df:	f0 ff 0d 72 0b 21 00 	lock dec DWORD PTR [rip+0x210b72]        # 218258 <__nptl_nthreads>
    76e6:	0f 94 c0             	sete   al
    76e9:	84 c0                	test   al,al
    76eb:	0f 85 8f 00 00 00    	jne    7780 <start_thread+0x190>
    76f1:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
    76f6:	80 b8 11 06 00 00 00 	cmp    BYTE PTR [rax+0x611],0x0
    76fd:	0f 85 ed 01 00 00    	jne    78f0 <start_thread+0x300>
    7703:	48 8b 5c 24 08       	mov    rbx,QWORD PTR [rsp+0x8]
    7708:	f0 83 8b 08 03 00 00 	lock or DWORD PTR [rbx+0x308],0x10
    770f:	10 
    7710:	e8 1b e1 ff ff       	call   5830 <__getpagesize@plt>
    7715:	83 e8 01             	sub    eax,0x1
    7718:	48 8b bb 90 06 00 00 	mov    rdi,QWORD PTR [rbx+0x690]
    771f:	48 98                	cdqe   
    7721:	48 f7 d0             	not    rax
    7724:	48 89 c2             	mov    rdx,rax
    7727:	48 89 e0             	mov    rax,rsp
    772a:	48 29 f8             	sub    rax,rdi
    772d:	48 21 d0             	and    rax,rdx
    7730:	48 3b 83 98 06 00 00 	cmp    rax,QWORD PTR [rbx+0x698]
    7737:	0f 83 38 01 00 00    	jae    7875 <start_thread+0x285>
    773d:	48 3d 00 40 00 00    	cmp    rax,0x4000
    7743:	0f 87 f3 01 00 00    	ja     793c <start_thread+0x34c>
    7749:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
    774e:	48 3b 80 28 06 00 00 	cmp    rax,QWORD PTR [rax+0x628]
    7755:	0f 84 d2 01 00 00    	je     792d <start_thread+0x33d>
    775b:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
    7760:	f6 80 08 03 00 00 40 	test   BYTE PTR [rax+0x308],0x40
    7767:	0f 85 27 01 00 00    	jne    7894 <start_thread+0x2a4>
    776d:	ba 3c 00 00 00       	mov    edx,0x3c
    7772:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    7778:	31 ff                	xor    edi,edi
    777a:	89 d0                	mov    eax,edx
    777c:	0f 05                	syscall 
    777e:	eb f8                	jmp    7778 <start_thread+0x188>
    7780:	31 ff                	xor    edi,edi
    7782:	e8 19 e2 ff ff       	call   59a0 <exit@plt>
    7787:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
    778c:	45 31 d2             	xor    r10d,r10d
    778f:	ba 01 00 00 00       	mov    edx,0x1
    7794:	be 81 00 00 00       	mov    esi,0x81
    7799:	48 8d b8 1c 06 00 00 	lea    rdi,[rax+0x61c]
    77a0:	b8 ca 00 00 00       	mov    eax,0xca
    77a5:	0f 05                	syscall 
    77a7:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    77ad:	0f 86 89 fe ff ff    	jbe    763c <start_thread+0x4c>
    77b3:	83 f8 ea             	cmp    eax,0xffffffea
    77b6:	0f 84 80 fe ff ff    	je     763c <start_thread+0x4c>
    77bc:	83 f8 f2             	cmp    eax,0xfffffff2
    77bf:	0f 84 77 fe ff ff    	je     763c <start_thread+0x4c>
    77c5:	48 8d 3d 14 b3 00 00 	lea    rdi,[rip+0xb314]        # 12ae0 <_fini+0xc>
    77cc:	e8 5f de ff ff       	call   5630 <__libc_fatal@plt>
    77d1:	48 8d 74 24 10       	lea    rsi,[rsp+0x10]
    77d6:	31 c0                	xor    eax,eax
    77d8:	b9 20 00 00 00       	mov    ecx,0x20
    77dd:	41 ba 08 00 00 00    	mov    r10d,0x8
    77e3:	31 d2                	xor    edx,edx
    77e5:	48 89 f7             	mov    rdi,rsi
    77e8:	f3 ab                	rep stos DWORD PTR es:[rdi],eax
    77ea:	b8 00 00 00 80       	mov    eax,0x80000000
    77ef:	bf 01 00 00 00       	mov    edi,0x1
    77f4:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
    77f9:	b8 0e 00 00 00       	mov    eax,0xe
    77fe:	0f 05                	syscall 
    7800:	e9 5c fe ff ff       	jmp    7661 <start_thread+0x71>
    7805:	e8 56 89 00 00       	call   10160 <__pthread_enable_asynccancel>
    780a:	be 01 00 00 00       	mov    esi,0x1
    780f:	89 c2                	mov    edx,eax
    7811:	89 d8                	mov    eax,ebx
    7813:	48 8b 5c 24 08       	mov    rbx,QWORD PTR [rsp+0x8]
    7818:	f0 0f b1 b3 18 06 00 	lock cmpxchg DWORD PTR [rbx+0x618],esi
    781f:	00 
    7820:	74 1a                	je     783c <start_thread+0x24c>
    7822:	48 8d bb 18 06 00 00 	lea    rdi,[rbx+0x618]
    7829:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    7830:	e8 eb 89 00 00       	call   10220 <__lll_lock_wait_private>
    7835:	48 81 c4 80 00 00 00 	add    rsp,0x80
    783c:	f0 ff 8b 18 06 00 00 	lock dec DWORD PTR [rbx+0x618]
    7843:	74 1a                	je     785f <start_thread+0x26f>
    7845:	48 8d bb 18 06 00 00 	lea    rdi,[rbx+0x618]
    784c:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    7853:	e8 78 8a 00 00       	call   102d0 <__lll_unlock_wake_private>
    7858:	48 81 c4 80 00 00 00 	add    rsp,0x80
    785f:	89 d7                	mov    edi,edx
    7861:	e8 5a 89 00 00       	call   101c0 <__pthread_disable_asynccancel>
    7866:	e9 38 fe ff ff       	jmp    76a3 <start_thread+0xb3>
    786b:	e8 40 eb ff ff       	call   63b0 <__nptl_deallocate_tsd.part.4>
    7870:	e9 65 fe ff ff       	jmp    76da <start_thread+0xea>
    7875:	48 8d 0d 14 b4 00 00 	lea    rcx,[rip+0xb414]        # 12c90 <__PRETTY_FUNCTION__.12175>
    787c:	48 8d 35 62 b4 00 00 	lea    rsi,[rip+0xb462]        # 12ce5 <__PRETTY_FUNCTION__.11764+0x35>
    7883:	48 8d 3d e6 b3 00 00 	lea    rdi,[rip+0xb3e6]        # 12c70 <banner+0x150>
    788a:	ba ae 01 00 00       	mov    edx,0x1ae
    788f:	e8 3c de ff ff       	call   56d0 <__assert_fail@plt>
    7894:	48 8d 98 1c 06 00 00 	lea    rbx,[rax+0x61c]
    789b:	41 b9 ca 00 00 00    	mov    r9d,0xca
    78a1:	41 b8 01 00 00 00    	mov    r8d,0x1
    78a7:	eb 0e                	jmp    78b7 <start_thread+0x2c7>
    78a9:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
    78ae:	f6 80 08 03 00 00 40 	test   BYTE PTR [rax+0x308],0x40
    78b5:	74 67                	je     791e <start_thread+0x32e>
    78b7:	45 31 d2             	xor    r10d,r10d
    78ba:	31 d2                	xor    edx,edx
    78bc:	be 80 00 00 00       	mov    esi,0x80
    78c1:	48 89 df             	mov    rdi,rbx
    78c4:	44 89 c8             	mov    eax,r9d
    78c7:	0f 05                	syscall 
    78c9:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    78cf:	76 d8                	jbe    78a9 <start_thread+0x2b9>
    78d1:	8d 48 0b             	lea    ecx,[rax+0xb]
    78d4:	83 f9 0b             	cmp    ecx,0xb
    78d7:	0f 87 e8 fe ff ff    	ja     77c5 <start_thread+0x1d5>
    78dd:	4c 89 c0             	mov    rax,r8
    78e0:	48 d3 e0             	shl    rax,cl
    78e3:	a9 81 08 00 00       	test   eax,0x881
    78e8:	0f 84 d7 fe ff ff    	je     77c5 <start_thread+0x1d5>
    78ee:	eb b9                	jmp    78a9 <start_thread+0x2b9>
    78f0:	48 8b 4c 24 08       	mov    rcx,QWORD PTR [rsp+0x8]
    78f5:	8b 05 05 4a 21 00    	mov    eax,DWORD PTR [rip+0x214a05]        # 21c300 <__nptl_threads_events>
    78fb:	0b 81 50 06 00 00    	or     eax,DWORD PTR [rcx+0x650]
    7901:	f6 c4 01             	test   ah,0x1
    7904:	0f 84 f9 fd ff ff    	je     7703 <start_thread+0x113>
    790a:	48 83 b9 68 06 00 00 	cmp    QWORD PTR [rcx+0x668],0x0
    7911:	00 
    7912:	74 3e                	je     7952 <start_thread+0x362>
    7914:	e8 87 e7 ff ff       	call   60a0 <__GI___nptl_death_event>
    7919:	e9 e5 fd ff ff       	jmp    7703 <start_thread+0x113>
    791e:	c7 80 1c 06 00 00 00 	mov    DWORD PTR [rax+0x61c],0x0
    7925:	00 00 00 
    7928:	e9 40 fe ff ff       	jmp    776d <start_thread+0x17d>
    792d:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    7932:	e8 c9 fa ff ff       	call   7400 <__free_tcb>
    7937:	e9 31 fe ff ff       	jmp    776d <start_thread+0x17d>
    793c:	48 8d b0 00 c0 ff ff 	lea    rsi,[rax-0x4000]
    7943:	ba 04 00 00 00       	mov    edx,0x4
    7948:	e8 a3 df ff ff       	call   58f0 <__madvise@plt>
    794d:	e9 f7 fd ff ff       	jmp    7749 <start_thread+0x159>
    7952:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
    7957:	c7 80 58 06 00 00 09 	mov    DWORD PTR [rax+0x658],0x9
    795e:	00 00 00 
    7961:	48 89 80 60 06 00 00 	mov    QWORD PTR [rax+0x660],rax
    7968:	48 89 c2             	mov    rdx,rax
    796b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    7970:	48 8b 05 81 49 21 00 	mov    rax,QWORD PTR [rip+0x214981]        # 21c2f8 <__nptl_last_event>
    7977:	48 8b 5c 24 08       	mov    rbx,QWORD PTR [rsp+0x8]
    797c:	48 89 83 68 06 00 00 	mov    QWORD PTR [rbx+0x668],rax
    7983:	f0 48 0f b1 15 6c 49 	lock cmpxchg QWORD PTR [rip+0x21496c],rdx        # 21c2f8 <__nptl_last_event>
    798a:	21 00 
    798c:	75 e2                	jne    7970 <start_thread+0x380>
    798e:	eb 84                	jmp    7914 <start_thread+0x324>

0000000000007990 <pthread_create@@GLIBC_2.2.5>:
    7990:	55                   	push   rbp
    7991:	48 89 e5             	mov    rbp,rsp
    7994:	41 57                	push   r15
    7996:	41 56                	push   r14
    7998:	41 55                	push   r13
    799a:	41 54                	push   r12
    799c:	49 89 f4             	mov    r12,rsi
    799f:	53                   	push   rbx
    79a0:	48 81 ec b8 00 00 00 	sub    rsp,0xb8
    79a7:	48 85 f6             	test   rsi,rsi
    79aa:	48 89 bd 48 ff ff ff 	mov    QWORD PTR [rbp-0xb8],rdi
    79b1:	48 89 b5 40 ff ff ff 	mov    QWORD PTR [rbp-0xc0],rsi
    79b8:	48 89 95 58 ff ff ff 	mov    QWORD PTR [rbp-0xa8],rdx
    79bf:	48 89 8d 50 ff ff ff 	mov    QWORD PTR [rbp-0xb0],rcx
    79c6:	c6 85 67 ff ff ff 00 	mov    BYTE PTR [rbp-0x99],0x0
    79cd:	0f 84 6b 05 00 00    	je     7f3e <pthread_create@@GLIBC_2.2.5+0x5ae>
    79d3:	e8 58 de ff ff       	call   5830 <__getpagesize@plt>
    79d8:	44 8d 40 ff          	lea    r8d,[rax-0x1]
    79dc:	4d 63 c0             	movsxd r8,r8d
    79df:	49 8d 50 01          	lea    rdx,[r8+0x1]
    79e3:	49 85 d0             	test   r8,rdx
    79e6:	0f 85 77 0c 00 00    	jne    8663 <pthread_create@@GLIBC_2.2.5+0xcd3>
    79ec:	49 8b 74 24 20       	mov    rsi,QWORD PTR [r12+0x20]
    79f1:	48 85 f6             	test   rsi,rsi
    79f4:	0f 85 cb 04 00 00    	jne    7ec5 <pthread_create@@GLIBC_2.2.5+0x535>
    79fa:	be 01 00 00 00       	mov    esi,0x1
    79ff:	31 c0                	xor    eax,eax
    7a01:	f0 0f b1 35 b7 48 21 	lock cmpxchg DWORD PTR [rip+0x2148b7],esi        # 21c2c0 <__default_pthread_attr_lock>
    7a08:	00 
    7a09:	74 1a                	je     7a25 <pthread_create@@GLIBC_2.2.5+0x95>
    7a0b:	48 8d 3d ae 48 21 00 	lea    rdi,[rip+0x2148ae]        # 21c2c0 <__default_pthread_attr_lock>
    7a12:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    7a19:	e8 02 88 00 00       	call   10220 <__lll_lock_wait_private>
    7a1e:	48 81 c4 80 00 00 00 	add    rsp,0x80
    7a25:	48 8b 35 b4 49 21 00 	mov    rsi,QWORD PTR [rip+0x2149b4]        # 21c3e0 <__default_pthread_attr+0x20>
    7a2c:	f0 ff 0d 8d 48 21 00 	lock dec DWORD PTR [rip+0x21488d]        # 21c2c0 <__default_pthread_attr_lock>
    7a33:	74 1a                	je     7a4f <pthread_create@@GLIBC_2.2.5+0xbf>
    7a35:	48 8d 3d 84 48 21 00 	lea    rdi,[rip+0x214884]        # 21c2c0 <__default_pthread_attr_lock>
    7a3c:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    7a43:	e8 88 88 00 00       	call   102d0 <__lll_unlock_wake_private>
    7a48:	48 81 c4 80 00 00 00 	add    rsp,0x80
    7a4f:	41 f6 44 24 08 08    	test   BYTE PTR [r12+0x8],0x8
    7a55:	0f 85 c8 05 00 00    	jne    8023 <pthread_create@@GLIBC_2.2.5+0x693>
    7a5b:	48 8b 05 76 05 21 00 	mov    rax,QWORD PTR [rip+0x210576]        # 217fd8 <_DYNAMIC+0x288>
    7a62:	48 8b 1d 07 49 21 00 	mov    rbx,QWORD PTR [rip+0x214907]        # 21c370 <__static_tls_align_m1>
    7a69:	8b 80 20 0f 00 00    	mov    eax,DWORD PTR [rax+0xf20]
    7a6f:	48 f7 d3             	not    rbx
    7a72:	89 85 78 ff ff ff    	mov    DWORD PTR [rbp-0x88],eax
    7a78:	83 e0 01             	and    eax,0x1
    7a7b:	41 89 c2             	mov    r10d,eax
    7a7e:	41 f7 da             	neg    r10d
    7a81:	41 83 e2 04          	and    r10d,0x4
    7a85:	83 f8 01             	cmp    eax,0x1
    7a88:	19 c0                	sbb    eax,eax
    7a8a:	83 e0 fc             	and    eax,0xfffffffc
    7a8d:	83 c0 07             	add    eax,0x7
    7a90:	48 21 f3             	and    rbx,rsi
    7a93:	89 85 60 ff ff ff    	mov    DWORD PTR [rbp-0xa0],eax
    7a99:	0f 84 e3 0b 00 00    	je     8682 <pthread_create@@GLIBC_2.2.5+0xcf2>
    7a9f:	4d 89 c5             	mov    r13,r8
    7aa2:	4d 03 6c 24 10       	add    r13,QWORD PTR [r12+0x10]
    7aa7:	4c 89 c0             	mov    rax,r8
    7aaa:	4c 03 05 cf 48 21 00 	add    r8,QWORD PTR [rip+0x2148cf]        # 21c380 <__static_tls_size>
    7ab1:	48 f7 d0             	not    rax
    7ab4:	49 21 c5             	and    r13,rax
    7ab7:	4b 8d 8c 28 00 08 00 	lea    rcx,[r8+r13*1+0x800]
    7abe:	00 
    7abf:	4c 89 ad 70 ff ff ff 	mov    QWORD PTR [rbp-0x90],r13
    7ac6:	48 21 c8             	and    rax,rcx
    7ac9:	48 39 c3             	cmp    rbx,rax
    7acc:	0f 82 1e 04 00 00    	jb     7ef0 <pthread_create@@GLIBC_2.2.5+0x560>
    7ad2:	be 01 00 00 00       	mov    esi,0x1
    7ad7:	31 c0                	xor    eax,eax
    7ad9:	f0 0f b1 35 07 48 21 	lock cmpxchg DWORD PTR [rip+0x214807],esi        # 21c2e8 <stack_cache_lock>
    7ae0:	00 
    7ae1:	74 1a                	je     7afd <pthread_create@@GLIBC_2.2.5+0x16d>
    7ae3:	48 8d 3d fe 47 21 00 	lea    rdi,[rip+0x2147fe]        # 21c2e8 <stack_cache_lock>
    7aea:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    7af1:	e8 2a 87 00 00       	call   10220 <__lll_lock_wait_private>
    7af6:	48 81 c4 80 00 00 00 	add    rsp,0x80
    7afd:	48 8b 05 6c 07 21 00 	mov    rax,QWORD PTR [rip+0x21076c]        # 218270 <stack_cache>
    7b04:	48 8d 0d 65 07 21 00 	lea    rcx,[rip+0x210765]        # 218270 <stack_cache>
    7b0b:	48 39 c8             	cmp    rax,rcx
    7b0e:	0f 84 69 06 00 00    	je     817d <pthread_create@@GLIBC_2.2.5+0x7ed>
    7b14:	45 31 ed             	xor    r13d,r13d
    7b17:	eb 0f                	jmp    7b28 <pthread_create@@GLIBC_2.2.5+0x198>
    7b19:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    7b20:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7b23:	48 39 c8             	cmp    rax,rcx
    7b26:	74 3f                	je     7b67 <pthread_create@@GLIBC_2.2.5+0x1d7>
    7b28:	8b 70 10             	mov    esi,DWORD PTR [rax+0x10]
    7b2b:	85 f6                	test   esi,esi
    7b2d:	7f f1                	jg     7b20 <pthread_create@@GLIBC_2.2.5+0x190>
    7b2f:	48 8b b0 d8 03 00 00 	mov    rsi,QWORD PTR [rax+0x3d8]
    7b36:	48 39 f3             	cmp    rbx,rsi
    7b39:	77 e5                	ja     7b20 <pthread_create@@GLIBC_2.2.5+0x190>
    7b3b:	48 39 f3             	cmp    rbx,rsi
    7b3e:	48 8d b8 40 fd ff ff 	lea    rdi,[rax-0x2c0]
    7b45:	0f 84 fa 09 00 00    	je     8545 <pthread_create@@GLIBC_2.2.5+0xbb5>
    7b4b:	4d 85 ed             	test   r13,r13
    7b4e:	0f 84 e2 03 00 00    	je     7f36 <pthread_create@@GLIBC_2.2.5+0x5a6>
    7b54:	49 3b b5 98 06 00 00 	cmp    rsi,QWORD PTR [r13+0x698]
    7b5b:	48 8b 00             	mov    rax,QWORD PTR [rax]
    7b5e:	4c 0f 42 ef          	cmovb  r13,rdi
    7b62:	48 39 c8             	cmp    rax,rcx
    7b65:	75 c1                	jne    7b28 <pthread_create@@GLIBC_2.2.5+0x198>
    7b67:	4d 85 ed             	test   r13,r13
    7b6a:	0f 84 0d 06 00 00    	je     817d <pthread_create@@GLIBC_2.2.5+0x7ed>
    7b70:	48 8d 04 9d 00 00 00 	lea    rax,[rbx*4+0x0]
    7b77:	00 
    7b78:	49 39 85 98 06 00 00 	cmp    QWORD PTR [r13+0x698],rax
    7b7f:	0f 87 f8 05 00 00    	ja     817d <pthread_create@@GLIBC_2.2.5+0x7ed>
    7b85:	49 8d 85 c0 02 00 00 	lea    rax,[r13+0x2c0]
    7b8c:	41 c7 85 1c 06 00 00 	mov    DWORD PTR [r13+0x61c],0xffffffff
    7b93:	ff ff ff ff 
    7b97:	48 89 c7             	mov    rdi,rax
    7b9a:	48 89 85 38 ff ff ff 	mov    QWORD PTR [rbp-0xc8],rax
    7ba1:	48 89 05 38 47 21 00 	mov    QWORD PTR [rip+0x214738],rax        # 21c2e0 <in_flight_stack>
    7ba8:	49 8b 95 c8 02 00 00 	mov    rdx,QWORD PTR [r13+0x2c8]
    7baf:	49 8b 85 c0 02 00 00 	mov    rax,QWORD PTR [r13+0x2c0]
    7bb6:	48 89 50 08          	mov    QWORD PTR [rax+0x8],rdx
    7bba:	49 8b 95 c8 02 00 00 	mov    rdx,QWORD PTR [r13+0x2c8]
    7bc1:	48 89 02             	mov    QWORD PTR [rdx],rax
    7bc4:	48 89 f8             	mov    rax,rdi
    7bc7:	48 89 fa             	mov    rdx,rdi
    7bca:	48 83 c8 01          	or     rax,0x1
    7bce:	48 89 05 0b 47 21 00 	mov    QWORD PTR [rip+0x21470b],rax        # 21c2e0 <in_flight_stack>
    7bd5:	48 8b 05 84 06 21 00 	mov    rax,QWORD PTR [rip+0x210684]        # 218260 <stack_used>
    7bdc:	48 8d 3d 7d 06 21 00 	lea    rdi,[rip+0x21067d]        # 218260 <stack_used>
    7be3:	49 89 bd c8 02 00 00 	mov    QWORD PTR [r13+0x2c8],rdi
    7bea:	49 89 85 c0 02 00 00 	mov    QWORD PTR [r13+0x2c0],rax
    7bf1:	48 89 50 08          	mov    QWORD PTR [rax+0x8],rdx
    7bf5:	48 89 15 64 06 21 00 	mov    QWORD PTR [rip+0x210664],rdx        # 218260 <stack_used>
    7bfc:	48 c7 05 d9 46 21 00 	mov    QWORD PTR [rip+0x2146d9],0x0        # 21c2e0 <in_flight_stack>
    7c03:	00 00 00 00 
    7c07:	49 8b 85 98 06 00 00 	mov    rax,QWORD PTR [r13+0x698]
    7c0e:	48 29 05 db 46 21 00 	sub    QWORD PTR [rip+0x2146db],rax        # 21c2f0 <stack_cache_actsize>
    7c15:	f0 ff 0d cc 46 21 00 	lock dec DWORD PTR [rip+0x2146cc]        # 21c2e8 <stack_cache_lock>
    7c1c:	74 1a                	je     7c38 <pthread_create@@GLIBC_2.2.5+0x2a8>
    7c1e:	48 8d 3d c3 46 21 00 	lea    rdi,[rip+0x2146c3]        # 21c2e8 <stack_cache_lock>
    7c25:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    7c2c:	e8 9f 86 00 00       	call   102d0 <__lll_unlock_wake_private>
    7c31:	48 81 c4 80 00 00 00 	add    rsp,0x80
    7c38:	49 8b 85 98 06 00 00 	mov    rax,QWORD PTR [r13+0x698]
    7c3f:	45 31 f6             	xor    r14d,r14d
    7c42:	41 c7 85 08 03 00 00 	mov    DWORD PTR [r13+0x308],0x0
    7c49:	00 00 00 00 
    7c4d:	49 c7 85 f8 02 00 00 	mov    QWORD PTR [r13+0x2f8],0x0
    7c54:	00 00 00 00 
    7c58:	49 c7 85 68 06 00 00 	mov    QWORD PTR [r13+0x668],0x0
    7c5f:	00 00 00 00 
    7c63:	48 89 85 68 ff ff ff 	mov    QWORD PTR [rbp-0x98],rax
    7c6a:	49 8b 85 90 06 00 00 	mov    rax,QWORD PTR [r13+0x690]
    7c71:	4c 89 a5 28 ff ff ff 	mov    QWORD PTR [rbp-0xd8],r12
    7c78:	4d 89 f4             	mov    r12,r14
    7c7b:	49 89 de             	mov    r14,rbx
    7c7e:	48 89 85 78 ff ff ff 	mov    QWORD PTR [rbp-0x88],rax
    7c85:	49 8b 45 08          	mov    rax,QWORD PTR [r13+0x8]
    7c89:	48 89 85 30 ff ff ff 	mov    QWORD PTR [rbp-0xd0],rax
    7c90:	48 8b 48 f0          	mov    rcx,QWORD PTR [rax-0x10]
    7c94:	4c 8d 78 10          	lea    r15,[rax+0x10]
    7c98:	48 89 c3             	mov    rbx,rax
    7c9b:	eb 24                	jmp    7cc1 <pthread_create@@GLIBC_2.2.5+0x331>
    7c9d:	0f 1f 00             	nop    DWORD PTR [rax]
    7ca0:	49 83 c4 01          	add    r12,0x1
    7ca4:	41 80 7f 08 00       	cmp    BYTE PTR [r15+0x8],0x0
    7ca9:	75 12                	jne    7cbd <pthread_create@@GLIBC_2.2.5+0x32d>
    7cab:	49 8b 3f             	mov    rdi,QWORD PTR [r15]
    7cae:	48 83 ff ff          	cmp    rdi,0xffffffffffffffff
    7cb2:	74 09                	je     7cbd <pthread_create@@GLIBC_2.2.5+0x32d>
    7cb4:	e8 07 d9 ff ff       	call   55c0 <free@plt>
    7cb9:	48 8b 4b f0          	mov    rcx,QWORD PTR [rbx-0x10]
    7cbd:	49 83 c7 10          	add    r15,0x10
    7cc1:	49 39 cc             	cmp    r12,rcx
    7cc4:	72 da                	jb     7ca0 <pthread_create@@GLIBC_2.2.5+0x310>
    7cc6:	48 8d 51 01          	lea    rdx,[rcx+0x1]
    7cca:	48 8b bd 30 ff ff ff 	mov    rdi,QWORD PTR [rbp-0xd0]
    7cd1:	31 f6                	xor    esi,esi
    7cd3:	4c 8b a5 28 ff ff ff 	mov    r12,QWORD PTR [rbp-0xd8]
    7cda:	4c 89 f3             	mov    rbx,r14
    7cdd:	48 c1 e2 04          	shl    rdx,0x4
    7ce1:	e8 fa d9 ff ff       	call   56e0 <memset@plt>
    7ce6:	4c 89 ef             	mov    rdi,r13
    7ce9:	e8 f2 dc ff ff       	call   59e0 <_dl_allocate_tls_init@plt>
    7cee:	49 8b b5 a0 06 00 00 	mov    rsi,QWORD PTR [r13+0x6a0]
    7cf5:	48 39 b5 70 ff ff ff 	cmp    QWORD PTR [rbp-0x90],rsi
    7cfc:	0f 87 e3 07 00 00    	ja     84e5 <pthread_create@@GLIBC_2.2.5+0xb55>
    7d02:	48 2b b5 70 ff ff ff 	sub    rsi,QWORD PTR [rbp-0x90]
    7d09:	48 8b 85 68 ff ff ff 	mov    rax,QWORD PTR [rbp-0x98]
    7d10:	48 29 d8             	sub    rax,rbx
    7d13:	48 39 c6             	cmp    rsi,rax
    7d16:	0f 87 f9 07 00 00    	ja     8515 <pthread_create@@GLIBC_2.2.5+0xb85>
    7d1c:	48 8b 85 70 ff ff ff 	mov    rax,QWORD PTR [rbp-0x90]
    7d23:	49 89 85 a8 06 00 00 	mov    QWORD PTR [r13+0x6a8],rax
    7d2a:	49 8d 85 e0 02 00 00 	lea    rax,[r13+0x2e0]
    7d31:	4d 89 6d 10          	mov    QWORD PTR [r13+0x10],r13
    7d35:	41 c7 85 18 06 00 00 	mov    DWORD PTR [r13+0x618],0x0
    7d3c:	00 00 00 00 
    7d40:	64 48 8b 0c 25 10 00 	mov    rcx,QWORD PTR fs:0x10
    7d47:	00 00 
    7d49:	49 89 85 d8 02 00 00 	mov    QWORD PTR [r13+0x2d8],rax
    7d50:	49 89 85 e0 02 00 00 	mov    QWORD PTR [r13+0x2e0],rax
    7d57:	4c 89 e8             	mov    rax,r13
    7d5a:	48 2b 05 1f 46 21 00 	sub    rax,QWORD PTR [rip+0x21461f]        # 21c380 <__static_tls_size>
    7d61:	4d 89 6d 00          	mov    QWORD PTR [r13+0x0],r13
    7d65:	41 8b 74 24 08       	mov    esi,DWORD PTR [r12+0x8]
    7d6a:	49 c7 85 e8 02 00 00 	mov    QWORD PTR [r13+0x2e8],0xffffffffffffffe0
    7d71:	e0 ff ff ff 
    7d75:	49 c7 85 f0 02 00 00 	mov    QWORD PTR [r13+0x2f0],0x0
    7d7c:	00 00 00 00 
    7d80:	48 8d 90 00 09 00 00 	lea    rdx,[rax+0x900]
    7d87:	48 8b 85 58 ff ff ff 	mov    rax,QWORD PTR [rbp-0xa8]
    7d8e:	89 f7                	mov    edi,esi
    7d90:	83 e7 9f             	and    edi,0xffffff9f
    7d93:	49 89 85 40 06 00 00 	mov    QWORD PTR [r13+0x640],rax
    7d9a:	48 8b 85 50 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb0]
    7da1:	49 89 85 48 06 00 00 	mov    QWORD PTR [r13+0x648],rax
    7da8:	8b 81 0c 03 00 00    	mov    eax,DWORD PTR [rcx+0x30c]
    7dae:	83 e0 60             	and    eax,0x60
    7db1:	09 f8                	or     eax,edi
    7db3:	83 e6 01             	and    esi,0x1
    7db6:	be 00 00 00 00       	mov    esi,0x0
    7dbb:	49 0f 45 f5          	cmovne rsi,r13
    7dbf:	41 89 85 0c 03 00 00 	mov    DWORD PTR [r13+0x30c],eax
    7dc6:	49 89 b5 28 06 00 00 	mov    QWORD PTR [r13+0x628],rsi
    7dcd:	48 8b b1 50 06 00 00 	mov    rsi,QWORD PTR [rcx+0x650]
    7dd4:	49 89 b5 50 06 00 00 	mov    QWORD PTR [r13+0x650],rsi
    7ddb:	48 8b b1 58 06 00 00 	mov    rsi,QWORD PTR [rcx+0x658]
    7de2:	49 89 b5 58 06 00 00 	mov    QWORD PTR [r13+0x658],rsi
    7de9:	48 8b b1 60 06 00 00 	mov    rsi,QWORD PTR [rcx+0x660]
    7df0:	49 89 b5 60 06 00 00 	mov    QWORD PTR [r13+0x660],rsi
    7df7:	8b b1 3c 06 00 00    	mov    esi,DWORD PTR [rcx+0x63c]
    7dfd:	8b 89 38 06 00 00    	mov    ecx,DWORD PTR [rcx+0x638]
    7e03:	41 89 b5 3c 06 00 00 	mov    DWORD PTR [r13+0x63c],esi
    7e0a:	41 89 8d 38 06 00 00 	mov    DWORD PTR [r13+0x638],ecx
    7e11:	64 48 8b 0c 25 28 00 	mov    rcx,QWORD PTR fs:0x28
    7e18:	00 00 
    7e1a:	49 89 4d 28          	mov    QWORD PTR [r13+0x28],rcx
    7e1e:	64 48 8b 0c 25 30 00 	mov    rcx,QWORD PTR fs:0x30
    7e25:	00 00 
    7e27:	49 89 4d 30          	mov    QWORD PTR [r13+0x30],rcx
    7e2b:	64 8b 0c 25 08 03 00 	mov    ecx,DWORD PTR fs:0x308
    7e32:	00 
    7e33:	41 89 8d 14 06 00 00 	mov    DWORD PTR [r13+0x614],ecx
    7e3a:	41 8b 4c 24 08       	mov    ecx,DWORD PTR [r12+0x8]
    7e3f:	f6 c1 02             	test   cl,0x2
    7e42:	0f 85 32 07 00 00    	jne    857a <pthread_create@@GLIBC_2.2.5+0xbea>
    7e48:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
    7e4f:	4c 89 28             	mov    QWORD PTR [rax],r13
    7e52:	90                   	nop
    7e53:	f0 ff 05 fe 03 21 00 	lock inc DWORD PTR [rip+0x2103fe]        # 218258 <__nptl_nthreads>
    7e5a:	31 c0                	xor    eax,eax
    7e5c:	c6 45 8f 00          	mov    BYTE PTR [rbp-0x71],0x0
    7e60:	64 8a 04 25 11 06 00 	mov    al,BYTE PTR fs:0x611
    7e67:	00 
    7e68:	84 c0                	test   al,al
    7e6a:	4c 8d 45 8f          	lea    r8,[rbp-0x71]
    7e6e:	48 89 d1             	mov    rcx,rdx
    7e71:	0f 85 39 05 00 00    	jne    83b0 <pthread_create@@GLIBC_2.2.5+0xa20>
    7e77:	31 d2                	xor    edx,edx
    7e79:	4c 89 e6             	mov    rsi,r12
    7e7c:	4c 89 ef             	mov    rdi,r13
    7e7f:	e8 5c e2 ff ff       	call   60e0 <create_thread>
    7e84:	85 c0                	test   eax,eax
    7e86:	41 89 c0             	mov    r8d,eax
    7e89:	0f 85 be 06 00 00    	jne    854d <pthread_create@@GLIBC_2.2.5+0xbbd>
    7e8f:	41 80 bd 13 06 00 00 	cmp    BYTE PTR [r13+0x613],0x0
    7e96:	00 
    7e97:	75 74                	jne    7f0d <pthread_create@@GLIBC_2.2.5+0x57d>
    7e99:	64 c7 04 25 18 00 00 	mov    DWORD PTR fs:0x18,0x1
    7ea0:	00 01 00 00 00 
    7ea5:	45 31 c0             	xor    r8d,r8d
    7ea8:	80 bd 67 ff ff ff 00 	cmp    BYTE PTR [rbp-0x99],0x0
    7eaf:	44 89 c3             	mov    ebx,r8d
    7eb2:	75 4e                	jne    7f02 <pthread_create@@GLIBC_2.2.5+0x572>
    7eb4:	48 8d 65 d8          	lea    rsp,[rbp-0x28]
    7eb8:	89 d8                	mov    eax,ebx
    7eba:	5b                   	pop    rbx
    7ebb:	41 5c                	pop    r12
    7ebd:	41 5d                	pop    r13
    7ebf:	41 5e                	pop    r14
    7ec1:	41 5f                	pop    r15
    7ec3:	5d                   	pop    rbp
    7ec4:	c3                   	ret    
    7ec5:	41 f6 44 24 08 08    	test   BYTE PTR [r12+0x8],0x8
    7ecb:	0f 84 8a fb ff ff    	je     7a5b <pthread_create@@GLIBC_2.2.5+0xcb>
    7ed1:	49 8b 54 24 18       	mov    rdx,QWORD PTR [r12+0x18]
    7ed6:	48 89 f0             	mov    rax,rsi
    7ed9:	48 8b 1d a0 44 21 00 	mov    rbx,QWORD PTR [rip+0x2144a0]        # 21c380 <__static_tls_size>
    7ee0:	48 8d 8b 00 08 00 00 	lea    rcx,[rbx+0x800]
    7ee7:	48 39 c8             	cmp    rax,rcx
    7eea:	0f 83 46 01 00 00    	jae    8036 <pthread_create@@GLIBC_2.2.5+0x6a6>
    7ef0:	80 bd 67 ff ff ff 00 	cmp    BYTE PTR [rbp-0x99],0x0
    7ef7:	41 b8 16 00 00 00    	mov    r8d,0x16
    7efd:	44 89 c3             	mov    ebx,r8d
    7f00:	74 b2                	je     7eb4 <pthread_create@@GLIBC_2.2.5+0x524>
    7f02:	48 8b 7d b8          	mov    rdi,QWORD PTR [rbp-0x48]
    7f06:	e8 b5 d6 ff ff       	call   55c0 <free@plt>
    7f0b:	eb a7                	jmp    7eb4 <pthread_create@@GLIBC_2.2.5+0x524>
    7f0d:	f0 41 ff 8d 18 06 00 	lock dec DWORD PTR [r13+0x618]
    7f14:	00 
    7f15:	74 1a                	je     7f31 <pthread_create@@GLIBC_2.2.5+0x5a1>
    7f17:	49 8d bd 18 06 00 00 	lea    rdi,[r13+0x618]
    7f1e:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    7f25:	e8 a6 83 00 00       	call   102d0 <__lll_unlock_wake_private>
    7f2a:	48 81 c4 80 00 00 00 	add    rsp,0x80
    7f31:	e9 63 ff ff ff       	jmp    7e99 <pthread_create@@GLIBC_2.2.5+0x509>
    7f36:	49 89 fd             	mov    r13,rdi
    7f39:	e9 e2 fb ff ff       	jmp    7b20 <pthread_create@@GLIBC_2.2.5+0x190>
    7f3e:	48 89 f0             	mov    rax,rsi
    7f41:	be 01 00 00 00       	mov    esi,0x1
    7f46:	f0 0f b1 35 72 43 21 	lock cmpxchg DWORD PTR [rip+0x214372],esi        # 21c2c0 <__default_pthread_attr_lock>
    7f4d:	00 
    7f4e:	74 1a                	je     7f6a <pthread_create@@GLIBC_2.2.5+0x5da>
    7f50:	48 8d 3d 69 43 21 00 	lea    rdi,[rip+0x214369]        # 21c2c0 <__default_pthread_attr_lock>
    7f57:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    7f5e:	e8 bd 82 00 00       	call   10220 <__lll_lock_wait_private>
    7f63:	48 81 c4 80 00 00 00 	add    rsp,0x80
    7f6a:	48 8b 05 4f 44 21 00 	mov    rax,QWORD PTR [rip+0x21444f]        # 21c3c0 <__default_pthread_attr>
    7f71:	48 8b 1d 78 44 21 00 	mov    rbx,QWORD PTR [rip+0x214478]        # 21c3f0 <__default_pthread_attr+0x30>
    7f78:	48 89 45 90          	mov    QWORD PTR [rbp-0x70],rax
    7f7c:	48 8b 05 45 44 21 00 	mov    rax,QWORD PTR [rip+0x214445]        # 21c3c8 <__default_pthread_attr+0x8>
    7f83:	48 85 db             	test   rbx,rbx
    7f86:	48 89 5d c0          	mov    QWORD PTR [rbp-0x40],rbx
    7f8a:	48 89 45 98          	mov    QWORD PTR [rbp-0x68],rax
    7f8e:	48 8b 05 3b 44 21 00 	mov    rax,QWORD PTR [rip+0x21443b]        # 21c3d0 <__default_pthread_attr+0x10>
    7f95:	48 89 45 a0          	mov    QWORD PTR [rbp-0x60],rax
    7f99:	48 8b 05 38 44 21 00 	mov    rax,QWORD PTR [rip+0x214438]        # 21c3d8 <__default_pthread_attr+0x18>
    7fa0:	48 89 45 a8          	mov    QWORD PTR [rbp-0x58],rax
    7fa4:	48 8b 05 35 44 21 00 	mov    rax,QWORD PTR [rip+0x214435]        # 21c3e0 <__default_pthread_attr+0x20>
    7fab:	48 89 45 b0          	mov    QWORD PTR [rbp-0x50],rax
    7faf:	48 8b 05 32 44 21 00 	mov    rax,QWORD PTR [rip+0x214432]        # 21c3e8 <__default_pthread_attr+0x28>
    7fb6:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
    7fba:	74 3b                	je     7ff7 <pthread_create@@GLIBC_2.2.5+0x667>
    7fbc:	48 81 fb 00 10 00 00 	cmp    rbx,0x1000
    7fc3:	0f 87 d8 06 00 00    	ja     86a1 <pthread_create@@GLIBC_2.2.5+0xd11>
    7fc9:	48 8d 43 1e          	lea    rax,[rbx+0x1e]
    7fcd:	c6 85 67 ff ff ff 00 	mov    BYTE PTR [rbp-0x99],0x0
    7fd4:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
    7fd8:	48 29 c4             	sub    rsp,rax
    7fdb:	48 8d 4c 24 0f       	lea    rcx,[rsp+0xf]
    7fe0:	48 83 e1 f0          	and    rcx,0xfffffffffffffff0
    7fe4:	48 8b 75 b8          	mov    rsi,QWORD PTR [rbp-0x48]
    7fe8:	48 89 da             	mov    rdx,rbx
    7feb:	48 89 cf             	mov    rdi,rcx
    7fee:	e8 dd d7 ff ff       	call   57d0 <memcpy@plt>
    7ff3:	48 89 45 b8          	mov    QWORD PTR [rbp-0x48],rax
    7ff7:	f0 ff 0d c2 42 21 00 	lock dec DWORD PTR [rip+0x2142c2]        # 21c2c0 <__default_pthread_attr_lock>
    7ffe:	74 1a                	je     801a <pthread_create@@GLIBC_2.2.5+0x68a>
    8000:	48 8d 3d b9 42 21 00 	lea    rdi,[rip+0x2142b9]        # 21c2c0 <__default_pthread_attr_lock>
    8007:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    800e:	e8 bd 82 00 00       	call   102d0 <__lll_unlock_wake_private>
    8013:	48 81 c4 80 00 00 00 	add    rsp,0x80
    801a:	4c 8d 65 90          	lea    r12,[rbp-0x70]
    801e:	e9 b0 f9 ff ff       	jmp    79d3 <pthread_create@@GLIBC_2.2.5+0x43>
    8023:	49 8b 44 24 20       	mov    rax,QWORD PTR [r12+0x20]
    8028:	49 8b 54 24 18       	mov    rdx,QWORD PTR [r12+0x18]
    802d:	48 85 c0             	test   rax,rax
    8030:	0f 85 a3 fe ff ff    	jne    7ed9 <pthread_create@@GLIBC_2.2.5+0x549>
    8036:	4c 8d 8a 00 f7 ff ff 	lea    r9,[rdx-0x900]
    803d:	4c 89 c8             	mov    rax,r9
    8040:	48 23 05 29 43 21 00 	and    rax,QWORD PTR [rip+0x214329]        # 21c370 <__static_tls_align_m1>
    8047:	48 8d 88 00 09 00 00 	lea    rcx,[rax+0x900]
    804e:	48 39 f1             	cmp    rcx,rsi
    8051:	0f 83 ed 05 00 00    	jae    8644 <pthread_create@@GLIBC_2.2.5+0xcb4>
    8057:	49 29 c1             	sub    r9,rax
    805a:	31 c0                	xor    eax,eax
    805c:	48 29 f2             	sub    rdx,rsi
    805f:	49 8d 79 08          	lea    rdi,[r9+0x8]
    8063:	4c 89 c9             	mov    rcx,r9
    8066:	49 c7 01 00 00 00 00 	mov    QWORD PTR [r9],0x0
    806d:	49 c7 81 f8 08 00 00 	mov    QWORD PTR [r9+0x8f8],0x0
    8074:	00 00 00 00 
    8078:	4d 89 cd             	mov    r13,r9
    807b:	48 83 e7 f8          	and    rdi,0xfffffffffffffff8
    807f:	48 29 f9             	sub    rcx,rdi
    8082:	81 c1 00 09 00 00    	add    ecx,0x900
    8088:	c1 e9 03             	shr    ecx,0x3
    808b:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
    808e:	49 8d 81 10 03 00 00 	lea    rax,[r9+0x310]
    8095:	49 89 91 90 06 00 00 	mov    QWORD PTR [r9+0x690],rdx
    809c:	49 89 b1 98 06 00 00 	mov    QWORD PTR [r9+0x698],rsi
    80a3:	41 c6 81 12 06 00 00 	mov    BYTE PTR [r9+0x612],0x1
    80aa:	01 
    80ab:	41 c7 41 18 01 00 00 	mov    DWORD PTR [r9+0x18],0x1
    80b2:	00 
    80b3:	49 89 81 10 05 00 00 	mov    QWORD PTR [r9+0x510],rax
    80ba:	48 8b 05 b7 42 21 00 	mov    rax,QWORD PTR [rip+0x2142b7]        # 21c378 <__libc_multiple_threads_ptr>
    80c1:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
    80c7:	c7 05 cf 42 21 00 01 	mov    DWORD PTR [rip+0x2142cf],0x1        # 21c3a0 <__pthread_multiple_threads>
    80ce:	00 00 00 
    80d1:	64 8b 04 25 d4 02 00 	mov    eax,DWORD PTR fs:0x2d4
    80d8:	00 
    80d9:	41 89 81 d4 02 00 00 	mov    DWORD PTR [r9+0x2d4],eax
    80e0:	41 c7 81 1c 06 00 00 	mov    DWORD PTR [r9+0x61c],0xffffffff
    80e7:	ff ff ff ff 
    80eb:	4c 89 cf             	mov    rdi,r9
    80ee:	e8 4d d8 ff ff       	call   5940 <_dl_allocate_tls@plt>
    80f3:	48 85 c0             	test   rax,rax
    80f6:	0f 84 39 06 00 00    	je     8735 <pthread_create@@GLIBC_2.2.5+0xda5>
    80fc:	be 01 00 00 00       	mov    esi,0x1
    8101:	31 c0                	xor    eax,eax
    8103:	f0 0f b1 35 dd 41 21 	lock cmpxchg DWORD PTR [rip+0x2141dd],esi        # 21c2e8 <stack_cache_lock>
    810a:	00 
    810b:	74 1a                	je     8127 <pthread_create@@GLIBC_2.2.5+0x797>
    810d:	48 8d 3d d4 41 21 00 	lea    rdi,[rip+0x2141d4]        # 21c2e8 <stack_cache_lock>
    8114:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    811b:	e8 00 81 00 00       	call   10220 <__lll_lock_wait_private>
    8120:	48 81 c4 80 00 00 00 	add    rsp,0x80
    8127:	48 8b 15 a2 41 21 00 	mov    rdx,QWORD PTR [rip+0x2141a2]        # 21c2d0 <__GI___stack_user>
    812e:	49 8d 85 c0 02 00 00 	lea    rax,[r13+0x2c0]
    8135:	48 8d 1d 94 41 21 00 	lea    rbx,[rip+0x214194]        # 21c2d0 <__GI___stack_user>
    813c:	49 89 9d c8 02 00 00 	mov    QWORD PTR [r13+0x2c8],rbx
    8143:	49 89 95 c0 02 00 00 	mov    QWORD PTR [r13+0x2c0],rdx
    814a:	48 89 42 08          	mov    QWORD PTR [rdx+0x8],rax
    814e:	48 89 05 7b 41 21 00 	mov    QWORD PTR [rip+0x21417b],rax        # 21c2d0 <__GI___stack_user>
    8155:	f0 ff 0d 8c 41 21 00 	lock dec DWORD PTR [rip+0x21418c]        # 21c2e8 <stack_cache_lock>
    815c:	74 1a                	je     8178 <pthread_create@@GLIBC_2.2.5+0x7e8>
    815e:	48 8d 3d 83 41 21 00 	lea    rdi,[rip+0x214183]        # 21c2e8 <stack_cache_lock>
    8165:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    816c:	e8 5f 81 00 00       	call   102d0 <__lll_unlock_wake_private>
    8171:	48 81 c4 80 00 00 00 	add    rsp,0x80
    8178:	e9 ad fb ff ff       	jmp    7d2a <pthread_create@@GLIBC_2.2.5+0x39a>
    817d:	44 89 95 38 ff ff ff 	mov    DWORD PTR [rbp-0xc8],r10d
    8184:	f0 ff 0d 5d 41 21 00 	lock dec DWORD PTR [rip+0x21415d]        # 21c2e8 <stack_cache_lock>
    818b:	74 1a                	je     81a7 <pthread_create@@GLIBC_2.2.5+0x817>
    818d:	48 8d 3d 54 41 21 00 	lea    rdi,[rip+0x214154]        # 21c2e8 <stack_cache_lock>
    8194:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    819b:	e8 30 81 00 00       	call   102d0 <__lll_unlock_wake_private>
    81a0:	48 81 c4 80 00 00 00 	add    rsp,0x80
    81a7:	48 01 da             	add    rdx,rbx
    81aa:	66 85 db             	test   bx,bx
    81ad:	41 b8 ff ff ff ff    	mov    r8d,0xffffffff
    81b3:	48 0f 45 d3          	cmovne rdx,rbx
    81b7:	b9 22 00 02 00       	mov    ecx,0x20022
    81bc:	45 31 c9             	xor    r9d,r9d
    81bf:	48 89 d6             	mov    rsi,rdx
    81c2:	48 89 95 68 ff ff ff 	mov    QWORD PTR [rbp-0x98],rdx
    81c9:	8b 95 60 ff ff ff    	mov    edx,DWORD PTR [rbp-0xa0]
    81cf:	31 ff                	xor    edi,edi
    81d1:	e8 ca d4 ff ff       	call   56a0 <mmap@plt>
    81d6:	48 83 f8 ff          	cmp    rax,0xffffffffffffffff
    81da:	48 89 85 78 ff ff ff 	mov    QWORD PTR [rbp-0x88],rax
    81e1:	44 8b 95 38 ff ff ff 	mov    r10d,DWORD PTR [rbp-0xc8]
    81e8:	0f 84 d5 02 00 00    	je     84c3 <pthread_create@@GLIBC_2.2.5+0xb33>
    81ee:	48 83 bd 78 ff ff ff 	cmp    QWORD PTR [rbp-0x88],0x0
    81f5:	00 
    81f6:	0f 84 1a 05 00 00    	je     8716 <pthread_create@@GLIBC_2.2.5+0xd86>
    81fc:	48 8b 95 68 ff ff ff 	mov    rdx,QWORD PTR [rbp-0x98]
    8203:	44 89 95 38 ff ff ff 	mov    DWORD PTR [rbp-0xc8],r10d
    820a:	4c 8d ac 10 00 f7 ff 	lea    r13,[rax+rdx*1-0x900]
    8211:	ff 
    8212:	49 89 85 90 06 00 00 	mov    QWORD PTR [r13+0x690],rax
    8219:	49 8d 85 10 03 00 00 	lea    rax,[r13+0x310]
    8220:	49 89 95 98 06 00 00 	mov    QWORD PTR [r13+0x698],rdx
    8227:	41 c7 45 18 01 00 00 	mov    DWORD PTR [r13+0x18],0x1
    822e:	00 
    822f:	49 89 85 10 05 00 00 	mov    QWORD PTR [r13+0x510],rax
    8236:	48 8b 05 3b 41 21 00 	mov    rax,QWORD PTR [rip+0x21413b]        # 21c378 <__libc_multiple_threads_ptr>
    823d:	c7 00 01 00 00 00    	mov    DWORD PTR [rax],0x1
    8243:	c7 05 53 41 21 00 01 	mov    DWORD PTR [rip+0x214153],0x1        # 21c3a0 <__pthread_multiple_threads>
    824a:	00 00 00 
    824d:	41 c7 85 1c 06 00 00 	mov    DWORD PTR [r13+0x61c],0xffffffff
    8254:	ff ff ff ff 
    8258:	64 8b 04 25 d4 02 00 	mov    eax,DWORD PTR fs:0x2d4
    825f:	00 
    8260:	41 89 85 d4 02 00 00 	mov    DWORD PTR [r13+0x2d4],eax
    8267:	4c 89 ef             	mov    rdi,r13
    826a:	e8 d1 d6 ff ff       	call   5940 <_dl_allocate_tls@plt>
    826f:	48 85 c0             	test   rax,rax
    8272:	44 8b 95 38 ff ff ff 	mov    r10d,DWORD PTR [rbp-0xc8]
    8279:	0f 84 e6 04 00 00    	je     8765 <pthread_create@@GLIBC_2.2.5+0xdd5>
    827f:	be 01 00 00 00       	mov    esi,0x1
    8284:	31 c0                	xor    eax,eax
    8286:	f0 0f b1 35 5a 40 21 	lock cmpxchg DWORD PTR [rip+0x21405a],esi        # 21c2e8 <stack_cache_lock>
    828d:	00 
    828e:	74 1a                	je     82aa <pthread_create@@GLIBC_2.2.5+0x91a>
    8290:	48 8d 3d 51 40 21 00 	lea    rdi,[rip+0x214051]        # 21c2e8 <stack_cache_lock>
    8297:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    829e:	e8 7d 7f 00 00       	call   10220 <__lll_lock_wait_private>
    82a3:	48 81 c4 80 00 00 00 	add    rsp,0x80
    82aa:	4d 8d b5 c0 02 00 00 	lea    r14,[r13+0x2c0]
    82b1:	4c 89 f0             	mov    rax,r14
    82b4:	4c 89 b5 38 ff ff ff 	mov    QWORD PTR [rbp-0xc8],r14
    82bb:	48 83 c8 01          	or     rax,0x1
    82bf:	48 89 05 1a 40 21 00 	mov    QWORD PTR [rip+0x21401a],rax        # 21c2e0 <in_flight_stack>
    82c6:	48 8b 05 93 ff 20 00 	mov    rax,QWORD PTR [rip+0x20ff93]        # 218260 <stack_used>
    82cd:	48 8d 3d 8c ff 20 00 	lea    rdi,[rip+0x20ff8c]        # 218260 <stack_used>
    82d4:	49 89 bd c8 02 00 00 	mov    QWORD PTR [r13+0x2c8],rdi
    82db:	49 89 85 c0 02 00 00 	mov    QWORD PTR [r13+0x2c0],rax
    82e2:	4c 89 70 08          	mov    QWORD PTR [rax+0x8],r14
    82e6:	4c 89 35 73 ff 20 00 	mov    QWORD PTR [rip+0x20ff73],r14        # 218260 <stack_used>
    82ed:	48 c7 05 e8 3f 21 00 	mov    QWORD PTR [rip+0x213fe8],0x0        # 21c2e0 <in_flight_stack>
    82f4:	00 00 00 00 
    82f8:	f0 ff 0d e9 3f 21 00 	lock dec DWORD PTR [rip+0x213fe9]        # 21c2e8 <stack_cache_lock>
    82ff:	74 1a                	je     831b <pthread_create@@GLIBC_2.2.5+0x98b>
    8301:	48 8d 3d e0 3f 21 00 	lea    rdi,[rip+0x213fe0]        # 21c2e8 <stack_cache_lock>
    8308:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    830f:	e8 bc 7f 00 00       	call   102d0 <__lll_unlock_wake_private>
    8314:	48 81 c4 80 00 00 00 	add    rsp,0x80
    831b:	48 8b 05 b6 fc 20 00 	mov    rax,QWORD PTR [rip+0x20fcb6]        # 217fd8 <_DYNAMIC+0x288>
    8322:	f6 80 20 0f 00 00 01 	test   BYTE PTR [rax+0xf20],0x1
    8329:	0f 84 bf f9 ff ff    	je     7cee <pthread_create@@GLIBC_2.2.5+0x35e>
    832f:	45 85 d2             	test   r10d,r10d
    8332:	0f 85 b6 f9 ff ff    	jne    7cee <pthread_create@@GLIBC_2.2.5+0x35e>
    8338:	49 8b 85 a0 06 00 00 	mov    rax,QWORD PTR [r13+0x6a0]
    833f:	49 8b b5 98 06 00 00 	mov    rsi,QWORD PTR [r13+0x698]
    8346:	ba 07 00 00 00       	mov    edx,0x7
    834b:	48 29 c6             	sub    rsi,rax
    834e:	49 03 85 90 06 00 00 	add    rax,QWORD PTR [r13+0x690]
    8355:	48 89 c7             	mov    rdi,rax
    8358:	e8 a3 d5 ff ff       	call   5900 <mprotect@plt>
    835d:	85 c0                	test   eax,eax
    835f:	0f 84 89 f9 ff ff    	je     7cee <pthread_create@@GLIBC_2.2.5+0x35e>
    8365:	48 8b 05 1c fc 20 00 	mov    rax,QWORD PTR [rip+0x20fc1c]        # 217f88 <_DYNAMIC+0x238>
    836c:	64 44 8b 00          	mov    r8d,DWORD PTR fs:[rax]
    8370:	45 85 c0             	test   r8d,r8d
    8373:	0f 84 75 f9 ff ff    	je     7cee <pthread_create@@GLIBC_2.2.5+0x35e>
    8379:	48 8b b5 68 ff ff ff 	mov    rsi,QWORD PTR [rbp-0x98]
    8380:	48 8b bd 78 ff ff ff 	mov    rdi,QWORD PTR [rbp-0x88]
    8387:	44 89 85 70 ff ff ff 	mov    DWORD PTR [rbp-0x90],r8d
    838e:	e8 3d d5 ff ff       	call   58d0 <munmap@plt>
    8393:	44 8b 85 70 ff ff ff 	mov    r8d,DWORD PTR [rbp-0x90]
    839a:	41 83 f8 0c          	cmp    r8d,0xc
    839e:	0f 84 cb 01 00 00    	je     856f <pthread_create@@GLIBC_2.2.5+0xbdf>
    83a4:	e9 ff fa ff ff       	jmp    7ea8 <pthread_create@@GLIBC_2.2.5+0x518>
    83a9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    83b0:	8b 05 4a 3f 21 00    	mov    eax,DWORD PTR [rip+0x213f4a]        # 21c300 <__nptl_threads_events>
    83b6:	41 0b 85 50 06 00 00 	or     eax,DWORD PTR [r13+0x650]
    83bd:	a8 80                	test   al,0x80
    83bf:	0f 84 b2 fa ff ff    	je     7e77 <pthread_create@@GLIBC_2.2.5+0x4e7>
    83c5:	ba 01 00 00 00       	mov    edx,0x1
    83ca:	4c 89 e6             	mov    rsi,r12
    83cd:	4c 89 ef             	mov    rdi,r13
    83d0:	e8 0b dd ff ff       	call   60e0 <create_thread>
    83d5:	85 c0                	test   eax,eax
    83d7:	41 89 c0             	mov    r8d,eax
    83da:	0f 85 6d 01 00 00    	jne    854d <pthread_create@@GLIBC_2.2.5+0xbbd>
    83e0:	41 80 bd 13 06 00 00 	cmp    BYTE PTR [r13+0x613],0x0
    83e7:	00 
    83e8:	0f 84 a0 03 00 00    	je     878e <pthread_create@@GLIBC_2.2.5+0xdfe>
    83ee:	41 c7 85 58 06 00 00 	mov    DWORD PTR [r13+0x658],0x8
    83f5:	08 00 00 00 
    83f9:	4d 89 ad 60 06 00 00 	mov    QWORD PTR [r13+0x660],r13
    8400:	48 8b 05 f1 3e 21 00 	mov    rax,QWORD PTR [rip+0x213ef1]        # 21c2f8 <__nptl_last_event>
    8407:	49 89 85 68 06 00 00 	mov    QWORD PTR [r13+0x668],rax
    840e:	f0 4c 0f b1 2d e1 3e 	lock cmpxchg QWORD PTR [rip+0x213ee1],r13        # 21c2f8 <__nptl_last_event>
    8415:	21 00 
    8417:	75 e7                	jne    8400 <pthread_create@@GLIBC_2.2.5+0xa70>
    8419:	e8 72 dc ff ff       	call   6090 <__GI___nptl_create_event>
    841e:	e9 6c fa ff ff       	jmp    7e8f <pthread_create@@GLIBC_2.2.5+0x4ff>
    8423:	be 01 00 00 00       	mov    esi,0x1
    8428:	31 c0                	xor    eax,eax
    842a:	f0 0f b1 35 b6 3e 21 	lock cmpxchg DWORD PTR [rip+0x213eb6],esi        # 21c2e8 <stack_cache_lock>
    8431:	00 
    8432:	74 1a                	je     844e <pthread_create@@GLIBC_2.2.5+0xabe>
    8434:	48 8d 3d ad 3e 21 00 	lea    rdi,[rip+0x213ead]        # 21c2e8 <stack_cache_lock>
    843b:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    8442:	e8 d9 7d 00 00       	call   10220 <__lll_lock_wait_private>
    8447:	48 81 c4 80 00 00 00 	add    rsp,0x80
    844e:	48 8b 85 38 ff ff ff 	mov    rax,QWORD PTR [rbp-0xc8]
    8455:	48 89 05 84 3e 21 00 	mov    QWORD PTR [rip+0x213e84],rax        # 21c2e0 <in_flight_stack>
    845c:	49 8b 95 c8 02 00 00 	mov    rdx,QWORD PTR [r13+0x2c8]
    8463:	49 8b 85 c0 02 00 00 	mov    rax,QWORD PTR [r13+0x2c0]
    846a:	48 89 50 08          	mov    QWORD PTR [rax+0x8],rdx
    846e:	49 8b 95 c8 02 00 00 	mov    rdx,QWORD PTR [r13+0x2c8]
    8475:	48 89 02             	mov    QWORD PTR [rdx],rax
    8478:	48 c7 05 5d 3e 21 00 	mov    QWORD PTR [rip+0x213e5d],0x0        # 21c2e0 <in_flight_stack>
    847f:	00 00 00 00 
    8483:	f0 ff 0d 5e 3e 21 00 	lock dec DWORD PTR [rip+0x213e5e]        # 21c2e8 <stack_cache_lock>
    848a:	74 1a                	je     84a6 <pthread_create@@GLIBC_2.2.5+0xb16>
    848c:	48 8d 3d 55 3e 21 00 	lea    rdi,[rip+0x213e55]        # 21c2e8 <stack_cache_lock>
    8493:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    849a:	e8 31 7e 00 00       	call   102d0 <__lll_unlock_wake_private>
    849f:	48 81 c4 80 00 00 00 	add    rsp,0x80
    84a6:	31 f6                	xor    esi,esi
    84a8:	4c 89 ef             	mov    rdi,r13
    84ab:	e8 70 d2 ff ff       	call   5720 <_dl_deallocate_tls@plt>
    84b0:	48 8b b5 68 ff ff ff 	mov    rsi,QWORD PTR [rbp-0x98]
    84b7:	48 8b bd 78 ff ff ff 	mov    rdi,QWORD PTR [rbp-0x88]
    84be:	e8 0d d4 ff ff       	call   58d0 <munmap@plt>
    84c3:	48 8b 05 be fa 20 00 	mov    rax,QWORD PTR [rip+0x20fabe]        # 217f88 <_DYNAMIC+0x238>
    84ca:	64 44 8b 00          	mov    r8d,DWORD PTR fs:[rax]
    84ce:	45 85 c0             	test   r8d,r8d
    84d1:	0f 85 c3 fe ff ff    	jne    839a <pthread_create@@GLIBC_2.2.5+0xa0a>
    84d7:	48 c7 04 25 10 00 00 	mov    QWORD PTR ds:0x10,0x0
    84de:	00 00 00 00 00 
    84e3:	0f 0b                	ud2    
    84e5:	48 8b b5 70 ff ff ff 	mov    rsi,QWORD PTR [rbp-0x90]
    84ec:	48 8b bd 78 ff ff ff 	mov    rdi,QWORD PTR [rbp-0x88]
    84f3:	31 d2                	xor    edx,edx
    84f5:	e8 06 d4 ff ff       	call   5900 <mprotect@plt>
    84fa:	85 c0                	test   eax,eax
    84fc:	0f 85 21 ff ff ff    	jne    8423 <pthread_create@@GLIBC_2.2.5+0xa93>
    8502:	48 8b 85 70 ff ff ff 	mov    rax,QWORD PTR [rbp-0x90]
    8509:	49 89 85 a0 06 00 00 	mov    QWORD PTR [r13+0x6a0],rax
    8510:	e9 07 f8 ff ff       	jmp    7d1c <pthread_create@@GLIBC_2.2.5+0x38c>
    8515:	48 8b bd 78 ff ff ff 	mov    rdi,QWORD PTR [rbp-0x88]
    851c:	48 8b 9d 70 ff ff ff 	mov    rbx,QWORD PTR [rbp-0x90]
    8523:	8b 95 60 ff ff ff    	mov    edx,DWORD PTR [rbp-0xa0]
    8529:	48 01 df             	add    rdi,rbx
    852c:	e8 cf d3 ff ff       	call   5900 <mprotect@plt>
    8531:	85 c0                	test   eax,eax
    8533:	0f 85 ea fe ff ff    	jne    8423 <pthread_create@@GLIBC_2.2.5+0xa93>
    8539:	49 89 9d a0 06 00 00 	mov    QWORD PTR [r13+0x6a0],rbx
    8540:	e9 d7 f7 ff ff       	jmp    7d1c <pthread_create@@GLIBC_2.2.5+0x38c>
    8545:	49 89 fd             	mov    r13,rdi
    8548:	e9 1a f6 ff ff       	jmp    7b67 <pthread_create@@GLIBC_2.2.5+0x1d7>
    854d:	80 7d 8f 00          	cmp    BYTE PTR [rbp-0x71],0x0
    8551:	0f 84 b9 00 00 00    	je     8610 <pthread_create@@GLIBC_2.2.5+0xc80>
    8557:	41 80 bd 13 06 00 00 	cmp    BYTE PTR [r13+0x613],0x0
    855e:	00 
    855f:	0f 84 67 02 00 00    	je     87cc <pthread_create@@GLIBC_2.2.5+0xe3c>
    8565:	41 83 f8 0c          	cmp    r8d,0xc
    8569:	0f 85 39 f9 ff ff    	jne    7ea8 <pthread_create@@GLIBC_2.2.5+0x518>
    856f:	41 b8 0b 00 00 00    	mov    r8d,0xb
    8575:	e9 2e f9 ff ff       	jmp    7ea8 <pthread_create@@GLIBC_2.2.5+0x518>
    857a:	f6 c1 60             	test   cl,0x60
    857d:	0f 84 c5 f8 ff ff    	je     7e48 <pthread_create@@GLIBC_2.2.5+0x4b8>
    8583:	f6 c1 40             	test   cl,0x40
    8586:	74 16                	je     859e <pthread_create@@GLIBC_2.2.5+0xc0e>
    8588:	41 8b 74 24 04       	mov    esi,DWORD PTR [r12+0x4]
    858d:	83 c8 40             	or     eax,0x40
    8590:	41 89 85 0c 03 00 00 	mov    DWORD PTR [r13+0x30c],eax
    8597:	41 89 b5 3c 06 00 00 	mov    DWORD PTR [r13+0x63c],esi
    859e:	83 e1 20             	and    ecx,0x20
    85a1:	74 15                	je     85b8 <pthread_create@@GLIBC_2.2.5+0xc28>
    85a3:	41 8b 0c 24          	mov    ecx,DWORD PTR [r12]
    85a7:	83 c8 20             	or     eax,0x20
    85aa:	41 89 85 0c 03 00 00 	mov    DWORD PTR [r13+0x30c],eax
    85b1:	41 89 8d 38 06 00 00 	mov    DWORD PTR [r13+0x638],ecx
    85b8:	89 c1                	mov    ecx,eax
    85ba:	83 e1 60             	and    ecx,0x60
    85bd:	83 f9 60             	cmp    ecx,0x60
    85c0:	0f 84 82 f8 ff ff    	je     7e48 <pthread_create@@GLIBC_2.2.5+0x4b8>
    85c6:	a8 40                	test   al,0x40
    85c8:	75 21                	jne    85eb <pthread_create@@GLIBC_2.2.5+0xc5b>
    85ca:	31 ff                	xor    edi,edi
    85cc:	b8 91 00 00 00       	mov    eax,0x91
    85d1:	0f 05                	syscall 
    85d3:	41 89 85 3c 06 00 00 	mov    DWORD PTR [r13+0x63c],eax
    85da:	41 8b 85 0c 03 00 00 	mov    eax,DWORD PTR [r13+0x30c]
    85e1:	83 c8 40             	or     eax,0x40
    85e4:	41 89 85 0c 03 00 00 	mov    DWORD PTR [r13+0x30c],eax
    85eb:	a8 20                	test   al,0x20
    85ed:	0f 85 55 f8 ff ff    	jne    7e48 <pthread_create@@GLIBC_2.2.5+0x4b8>
    85f3:	49 8d b5 38 06 00 00 	lea    rsi,[r13+0x638]
    85fa:	31 ff                	xor    edi,edi
    85fc:	b8 8f 00 00 00       	mov    eax,0x8f
    8601:	0f 05                	syscall 
    8603:	41 83 8d 0c 03 00 00 	or     DWORD PTR [r13+0x30c],0x20
    860a:	20 
    860b:	e9 38 f8 ff ff       	jmp    7e48 <pthread_create@@GLIBC_2.2.5+0x4b8>
    8610:	f0 ff 0d 41 fc 20 00 	lock dec DWORD PTR [rip+0x20fc41]        # 218258 <__nptl_nthreads>
    8617:	31 c0                	xor    eax,eax
    8619:	41 87 85 1c 06 00 00 	xchg   DWORD PTR [r13+0x61c],eax
    8620:	83 f8 fe             	cmp    eax,0xfffffffe
    8623:	0f 84 a8 00 00 00    	je     86d1 <pthread_create@@GLIBC_2.2.5+0xd41>
    8629:	4c 89 ef             	mov    rdi,r13
    862c:	44 89 85 78 ff ff ff 	mov    DWORD PTR [rbp-0x88],r8d
    8633:	e8 88 df ff ff       	call   65c0 <__deallocate_stack>
    8638:	44 8b 85 78 ff ff ff 	mov    r8d,DWORD PTR [rbp-0x88]
    863f:	e9 21 ff ff ff       	jmp    8565 <pthread_create@@GLIBC_2.2.5+0xbd5>
    8644:	48 8d 0d 65 a6 00 00 	lea    rcx,[rip+0xa665]        # 12cb0 <__PRETTY_FUNCTION__.11764>
    864b:	48 8d 35 6d a6 00 00 	lea    rsi,[rip+0xa66d]        # 12cbf <__PRETTY_FUNCTION__.11764+0xf>
    8652:	48 8d 3d b8 a6 00 00 	lea    rdi,[rip+0xa6b8]        # 12d11 <__PRETTY_FUNCTION__.11764+0x61>
    8659:	ba 8b 01 00 00       	mov    edx,0x18b
    865e:	e8 6d d0 ff ff       	call   56d0 <__assert_fail@plt>
    8663:	48 8d 0d 46 a6 00 00 	lea    rcx,[rip+0xa646]        # 12cb0 <__PRETTY_FUNCTION__.11764>
    866a:	48 8d 35 4e a6 00 00 	lea    rsi,[rip+0xa64e]        # 12cbf <__PRETTY_FUNCTION__.11764+0xf>
    8671:	48 8d 3d 7e a6 00 00 	lea    rdi,[rip+0xa67e]        # 12cf6 <__PRETTY_FUNCTION__.11764+0x46>
    8678:	ba 65 01 00 00       	mov    edx,0x165
    867d:	e8 4e d0 ff ff       	call   56d0 <__assert_fail@plt>
    8682:	48 8d 0d 27 a6 00 00 	lea    rcx,[rip+0xa627]        # 12cb0 <__PRETTY_FUNCTION__.11764>
    8689:	48 8d 35 2f a6 00 00 	lea    rsi,[rip+0xa62f]        # 12cbf <__PRETTY_FUNCTION__.11764+0xf>
    8690:	48 8d 3d a4 a6 00 00 	lea    rdi,[rip+0xa6a4]        # 12d3b <__PRETTY_FUNCTION__.11764+0x8b>
    8697:	ba e7 01 00 00       	mov    edx,0x1e7
    869c:	e8 2f d0 ff ff       	call   56d0 <__assert_fail@plt>
    86a1:	48 89 df             	mov    rdi,rbx
    86a4:	e8 27 d3 ff ff       	call   59d0 <__libc_alloca_cutoff@plt>
    86a9:	85 c0                	test   eax,eax
    86ab:	0f 85 18 f9 ff ff    	jne    7fc9 <pthread_create@@GLIBC_2.2.5+0x639>
    86b1:	48 89 df             	mov    rdi,rbx
    86b4:	e8 87 d1 ff ff       	call   5840 <malloc@plt>
    86b9:	48 85 c0             	test   rax,rax
    86bc:	48 89 c1             	mov    rcx,rax
    86bf:	0f 84 26 01 00 00    	je     87eb <pthread_create@@GLIBC_2.2.5+0xe5b>
    86c5:	c6 85 67 ff ff ff 01 	mov    BYTE PTR [rbp-0x99],0x1
    86cc:	e9 13 f9 ff ff       	jmp    7fe4 <pthread_create@@GLIBC_2.2.5+0x654>
    86d1:	45 31 d2             	xor    r10d,r10d
    86d4:	ba 01 00 00 00       	mov    edx,0x1
    86d9:	be 81 00 00 00       	mov    esi,0x81
    86de:	49 8d bd 1c 06 00 00 	lea    rdi,[r13+0x61c]
    86e5:	b8 ca 00 00 00       	mov    eax,0xca
    86ea:	0f 05                	syscall 
    86ec:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    86f2:	0f 86 31 ff ff ff    	jbe    8629 <pthread_create@@GLIBC_2.2.5+0xc99>
    86f8:	83 f8 ea             	cmp    eax,0xffffffea
    86fb:	0f 84 28 ff ff ff    	je     8629 <pthread_create@@GLIBC_2.2.5+0xc99>
    8701:	83 f8 f2             	cmp    eax,0xfffffff2
    8704:	0f 84 1f ff ff ff    	je     8629 <pthread_create@@GLIBC_2.2.5+0xc99>
    870a:	48 8d 3d cf a3 00 00 	lea    rdi,[rip+0xa3cf]        # 12ae0 <_fini+0xc>
    8711:	e8 1a cf ff ff       	call   5630 <__libc_fatal@plt>
    8716:	48 8d 0d 93 a5 00 00 	lea    rcx,[rip+0xa593]        # 12cb0 <__PRETTY_FUNCTION__.11764>
    871d:	48 8d 35 9b a5 00 00 	lea    rsi,[rip+0xa59b]        # 12cbf <__PRETTY_FUNCTION__.11764+0xf>
    8724:	48 8d 3d 1a a6 00 00 	lea    rdi,[rip+0xa61a]        # 12d45 <__PRETTY_FUNCTION__.11764+0x95>
    872b:	ba 09 02 00 00       	mov    edx,0x209
    8730:	e8 9b cf ff ff       	call   56d0 <__assert_fail@plt>
    8735:	48 8b 05 4c f8 20 00 	mov    rax,QWORD PTR [rip+0x20f84c]        # 217f88 <_DYNAMIC+0x238>
    873c:	64 83 38 0c          	cmp    DWORD PTR fs:[rax],0xc
    8740:	0f 84 29 fe ff ff    	je     856f <pthread_create@@GLIBC_2.2.5+0xbdf>
    8746:	48 8d 0d 63 a5 00 00 	lea    rcx,[rip+0xa563]        # 12cb0 <__PRETTY_FUNCTION__.11764>
    874d:	48 8d 35 6b a5 00 00 	lea    rsi,[rip+0xa56b]        # 12cbf <__PRETTY_FUNCTION__.11764+0xf>
    8754:	48 8d 3d d0 a5 00 00 	lea    rdi,[rip+0xa5d0]        # 12d2b <__PRETTY_FUNCTION__.11764+0x7b>
    875b:	ba c7 01 00 00       	mov    edx,0x1c7
    8760:	e8 6b cf ff ff       	call   56d0 <__assert_fail@plt>
    8765:	48 8b 1d 1c f8 20 00 	mov    rbx,QWORD PTR [rip+0x20f81c]        # 217f88 <_DYNAMIC+0x238>
    876c:	64 83 3b 0c          	cmp    DWORD PTR fs:[rbx],0xc
    8770:	75 3b                	jne    87ad <pthread_create@@GLIBC_2.2.5+0xe1d>
    8772:	48 8b b5 68 ff ff ff 	mov    rsi,QWORD PTR [rbp-0x98]
    8779:	48 8b bd 78 ff ff ff 	mov    rdi,QWORD PTR [rbp-0x88]
    8780:	e8 4b d1 ff ff       	call   58d0 <munmap@plt>
    8785:	64 44 8b 03          	mov    r8d,DWORD PTR fs:[rbx]
    8789:	e9 40 fd ff ff       	jmp    84ce <pthread_create@@GLIBC_2.2.5+0xb3e>
    878e:	48 8d 0d db a5 00 00 	lea    rcx,[rip+0xa5db]        # 12d70 <__PRETTY_FUNCTION__.12225>
    8795:	48 8d 35 49 a5 00 00 	lea    rsi,[rip+0xa549]        # 12ce5 <__PRETTY_FUNCTION__.11764+0x35>
    879c:	48 8d 3d ae a5 00 00 	lea    rdi,[rip+0xa5ae]        # 12d51 <__PRETTY_FUNCTION__.11764+0xa1>
    87a3:	ba 92 02 00 00       	mov    edx,0x292
    87a8:	e8 23 cf ff ff       	call   56d0 <__assert_fail@plt>
    87ad:	48 8d 0d fc a4 00 00 	lea    rcx,[rip+0xa4fc]        # 12cb0 <__PRETTY_FUNCTION__.11764>
    87b4:	48 8d 35 04 a5 00 00 	lea    rsi,[rip+0xa504]        # 12cbf <__PRETTY_FUNCTION__.11764+0xf>
    87bb:	48 8d 3d 69 a5 00 00 	lea    rdi,[rip+0xa569]        # 12d2b <__PRETTY_FUNCTION__.11764+0x7b>
    87c2:	ba 4f 02 00 00       	mov    edx,0x24f
    87c7:	e8 04 cf ff ff       	call   56d0 <__assert_fail@plt>
    87cc:	48 8d 0d 9d a5 00 00 	lea    rcx,[rip+0xa59d]        # 12d70 <__PRETTY_FUNCTION__.12225>
    87d3:	48 8d 35 0b a5 00 00 	lea    rsi,[rip+0xa50b]        # 12ce5 <__PRETTY_FUNCTION__.11764+0x35>
    87da:	48 8d 3d 70 a5 00 00 	lea    rdi,[rip+0xa570]        # 12d51 <__PRETTY_FUNCTION__.11764+0xa1>
    87e1:	ba b3 02 00 00       	mov    edx,0x2b3
    87e6:	e8 e5 ce ff ff       	call   56d0 <__assert_fail@plt>
    87eb:	f0 ff 0d ce 3a 21 00 	lock dec DWORD PTR [rip+0x213ace]        # 21c2c0 <__default_pthread_attr_lock>
    87f2:	74 1a                	je     880e <pthread_create@@GLIBC_2.2.5+0xe7e>
    87f4:	48 8d 3d c5 3a 21 00 	lea    rdi,[rip+0x213ac5]        # 21c2c0 <__default_pthread_attr_lock>
    87fb:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    8802:	e8 c9 7a 00 00       	call   102d0 <__lll_unlock_wake_private>
    8807:	48 81 c4 80 00 00 00 	add    rsp,0x80
    880e:	bb 0c 00 00 00       	mov    ebx,0xc
    8813:	e9 9c f6 ff ff       	jmp    7eb4 <pthread_create@@GLIBC_2.2.5+0x524>
    8818:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    881f:	00 

0000000000008820 <pthread_exit>:
    8820:	48 83 ec 08          	sub    rsp,0x8
    8824:	64 48 89 3c 25 30 06 	mov    QWORD PTR fs:0x630,rdi
    882b:	00 00 
    882d:	f0 64 83 0c 25 08 03 	lock or DWORD PTR fs:0x308,0x10
    8834:	00 00 10 
    8837:	64 48 8b 3c 25 00 03 	mov    rdi,QWORD PTR fs:0x300
    883e:	00 00 
    8840:	e8 eb 77 00 00       	call   10030 <__pthread_unwind>
    8845:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    884c:	00 00 00 
    884f:	90                   	nop

0000000000008850 <pthread_detach>:
    8850:	48 85 ff             	test   rdi,rdi
    8853:	74 33                	je     8888 <pthread_detach+0x38>
    8855:	8b 8f d0 02 00 00    	mov    ecx,DWORD PTR [rdi+0x2d0]
    885b:	85 c9                	test   ecx,ecx
    885d:	78 29                	js     8888 <pthread_detach+0x38>
    885f:	31 c0                	xor    eax,eax
    8861:	f0 48 0f b1 bf 28 06 	lock cmpxchg QWORD PTR [rdi+0x628],rdi
    8868:	00 00 
    886a:	74 22                	je     888e <pthread_detach+0x3e>
    886c:	48 39 bf 28 06 00 00 	cmp    QWORD PTR [rdi+0x628],rdi
    8873:	ba 16 00 00 00       	mov    edx,0x16
    8878:	b8 00 00 00 00       	mov    eax,0x0
    887d:	0f 44 c2             	cmove  eax,edx
    8880:	c3                   	ret    
    8881:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    8888:	b8 03 00 00 00       	mov    eax,0x3
    888d:	c3                   	ret    
    888e:	8b 87 08 03 00 00    	mov    eax,DWORD PTR [rdi+0x308]
    8894:	83 e0 10             	and    eax,0x10
    8897:	75 01                	jne    889a <pthread_detach+0x4a>
    8899:	c3                   	ret    
    889a:	50                   	push   rax
    889b:	e8 60 eb ff ff       	call   7400 <__free_tcb>
    88a0:	31 c0                	xor    eax,eax
    88a2:	5a                   	pop    rdx
    88a3:	eb f4                	jmp    8899 <pthread_detach+0x49>
    88a5:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    88ac:	00 00 00 
    88af:	90                   	nop

00000000000088b0 <cleanup>:
    88b0:	31 d2                	xor    edx,edx
    88b2:	64 48 8b 04 25 10 00 	mov    rax,QWORD PTR fs:0x10
    88b9:	00 00 
    88bb:	f0 48 0f b1 17       	lock cmpxchg QWORD PTR [rdi],rdx
    88c0:	c3                   	ret    
    88c1:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    88c6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    88cd:	00 00 00 

00000000000088d0 <pthread_join>:
    88d0:	48 85 ff             	test   rdi,rdi
    88d3:	0f 84 07 01 00 00    	je     89e0 <pthread_join+0x110>
    88d9:	8b 87 d0 02 00 00    	mov    eax,DWORD PTR [rdi+0x2d0]
    88df:	85 c0                	test   eax,eax
    88e1:	0f 88 f9 00 00 00    	js     89e0 <pthread_join+0x110>
    88e7:	48 3b bf 28 06 00 00 	cmp    rdi,QWORD PTR [rdi+0x628]
    88ee:	b8 16 00 00 00       	mov    eax,0x16
    88f3:	0f 84 e4 00 00 00    	je     89dd <pthread_join+0x10d>
    88f9:	41 57                	push   r15
    88fb:	41 56                	push   r14
    88fd:	41 55                	push   r13
    88ff:	41 54                	push   r12
    8901:	55                   	push   rbp
    8902:	53                   	push   rbx
    8903:	48 89 f5             	mov    rbp,rsi
    8906:	48 89 fb             	mov    rbx,rdi
    8909:	48 83 ec 38          	sub    rsp,0x38
    890d:	64 4c 8b 34 25 10 00 	mov    r14,QWORD PTR fs:0x10
    8914:	00 00 
    8916:	90                   	nop
    8917:	4c 8d bf 28 06 00 00 	lea    r15,[rdi+0x628]
    891e:	4c 8d 64 24 10       	lea    r12,[rsp+0x10]
    8923:	48 8d 35 86 ff ff ff 	lea    rsi,[rip+0xffffffffffffff86]        # 88b0 <cleanup>
    892a:	4c 89 fa             	mov    rdx,r15
    892d:	4c 89 e7             	mov    rdi,r12
    8930:	e8 5b 74 00 00       	call   fd90 <_pthread_cleanup_push>
    8935:	e8 26 78 00 00       	call   10160 <__pthread_enable_asynccancel>
    893a:	4c 39 f3             	cmp    rbx,r14
    893d:	41 89 c5             	mov    r13d,eax
    8940:	0f 84 b7 00 00 00    	je     89fd <pthread_join+0x12d>
    8946:	49 3b 9e 28 06 00 00 	cmp    rbx,QWORD PTR [r14+0x628]
    894d:	0f 84 9d 00 00 00    	je     89f0 <pthread_join+0x120>
    8953:	31 c0                	xor    eax,eax
    8955:	f0 4d 0f b1 37       	lock cmpxchg QWORD PTR [r15],r14
    895a:	0f 85 d8 00 00 00    	jne    8a38 <pthread_join+0x168>
    8960:	48 63 93 d0 02 00 00 	movsxd rdx,DWORD PTR [rbx+0x2d0]
    8967:	85 d2                	test   edx,edx
    8969:	74 2d                	je     8998 <pthread_join+0xc8>
    896b:	4c 8d 8b d0 02 00 00 	lea    r9,[rbx+0x2d0]
    8972:	41 b8 ca 00 00 00    	mov    r8d,0xca
    8978:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    897f:	00 
    8980:	45 31 d2             	xor    r10d,r10d
    8983:	31 f6                	xor    esi,esi
    8985:	4c 89 cf             	mov    rdi,r9
    8988:	44 89 c0             	mov    eax,r8d
    898b:	0f 05                	syscall 
    898d:	48 63 93 d0 02 00 00 	movsxd rdx,DWORD PTR [rbx+0x2d0]
    8994:	85 d2                	test   edx,edx
    8996:	75 e8                	jne    8980 <pthread_join+0xb0>
    8998:	44 89 ef             	mov    edi,r13d
    899b:	e8 20 78 00 00       	call   101c0 <__pthread_disable_asynccancel>
    89a0:	31 f6                	xor    esi,esi
    89a2:	4c 89 e7             	mov    rdi,r12
    89a5:	e8 06 74 00 00       	call   fdb0 <_pthread_cleanup_pop>
    89aa:	48 85 ed             	test   rbp,rbp
    89ad:	c7 83 d0 02 00 00 ff 	mov    DWORD PTR [rbx+0x2d0],0xffffffff
    89b4:	ff ff ff 
    89b7:	74 0b                	je     89c4 <pthread_join+0xf4>
    89b9:	48 8b 83 30 06 00 00 	mov    rax,QWORD PTR [rbx+0x630]
    89c0:	48 89 45 00          	mov    QWORD PTR [rbp+0x0],rax
    89c4:	48 89 df             	mov    rdi,rbx
    89c7:	e8 34 ea ff ff       	call   7400 <__free_tcb>
    89cc:	31 c0                	xor    eax,eax
    89ce:	90                   	nop
    89cf:	48 83 c4 38          	add    rsp,0x38
    89d3:	5b                   	pop    rbx
    89d4:	5d                   	pop    rbp
    89d5:	41 5c                	pop    r12
    89d7:	41 5d                	pop    r13
    89d9:	41 5e                	pop    r14
    89db:	41 5f                	pop    r15
    89dd:	f3 c3                	repz ret 
    89df:	90                   	nop
    89e0:	b8 03 00 00 00       	mov    eax,0x3
    89e5:	c3                   	ret    
    89e6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    89ed:	00 00 00 
    89f0:	f6 83 08 03 00 00 3c 	test   BYTE PTR [rbx+0x308],0x3c
    89f7:	0f 85 56 ff ff ff    	jne    8953 <pthread_join+0x83>
    89fd:	41 8b 96 08 03 00 00 	mov    edx,DWORD PTR [r14+0x308]
    8a04:	b8 23 00 00 00       	mov    eax,0x23
    8a09:	83 e2 b9             	and    edx,0xffffffb9
    8a0c:	83 fa 08             	cmp    edx,0x8
    8a0f:	0f 84 3e ff ff ff    	je     8953 <pthread_join+0x83>
    8a15:	44 89 ef             	mov    edi,r13d
    8a18:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
    8a1c:	e8 9f 77 00 00       	call   101c0 <__pthread_disable_asynccancel>
    8a21:	31 f6                	xor    esi,esi
    8a23:	4c 89 e7             	mov    rdi,r12
    8a26:	e8 85 73 00 00       	call   fdb0 <_pthread_cleanup_pop>
    8a2b:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
    8a2f:	eb 9d                	jmp    89ce <pthread_join+0xfe>
    8a31:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    8a38:	b8 16 00 00 00       	mov    eax,0x16
    8a3d:	eb d6                	jmp    8a15 <pthread_join+0x145>
    8a3f:	90                   	nop

0000000000008a40 <pthread_tryjoin_np>:
    8a40:	53                   	push   rbx
    8a41:	48 3b bf 28 06 00 00 	cmp    rdi,QWORD PTR [rdi+0x628]
    8a48:	74 43                	je     8a8d <pthread_tryjoin_np+0x4d>
    8a4a:	64 48 8b 14 25 10 00 	mov    rdx,QWORD PTR fs:0x10
    8a51:	00 00 
    8a53:	48 39 d7             	cmp    rdi,rdx
    8a56:	bb 23 00 00 00       	mov    ebx,0x23
    8a5b:	74 18                	je     8a75 <pthread_tryjoin_np+0x35>
    8a5d:	48 3b ba 28 06 00 00 	cmp    rdi,QWORD PTR [rdx+0x628]
    8a64:	74 0f                	je     8a75 <pthread_tryjoin_np+0x35>
    8a66:	8b 9f d0 02 00 00    	mov    ebx,DWORD PTR [rdi+0x2d0]
    8a6c:	85 db                	test   ebx,ebx
    8a6e:	74 10                	je     8a80 <pthread_tryjoin_np+0x40>
    8a70:	bb 10 00 00 00       	mov    ebx,0x10
    8a75:	89 d8                	mov    eax,ebx
    8a77:	5b                   	pop    rbx
    8a78:	c3                   	ret    
    8a79:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    8a80:	31 c0                	xor    eax,eax
    8a82:	f0 48 0f b1 97 28 06 	lock cmpxchg QWORD PTR [rdi+0x628],rdx
    8a89:	00 00 
    8a8b:	74 09                	je     8a96 <pthread_tryjoin_np+0x56>
    8a8d:	bb 16 00 00 00       	mov    ebx,0x16
    8a92:	89 d8                	mov    eax,ebx
    8a94:	5b                   	pop    rbx
    8a95:	c3                   	ret    
    8a96:	48 85 f6             	test   rsi,rsi
    8a99:	74 0a                	je     8aa5 <pthread_tryjoin_np+0x65>
    8a9b:	48 8b 87 30 06 00 00 	mov    rax,QWORD PTR [rdi+0x630]
    8aa2:	48 89 06             	mov    QWORD PTR [rsi],rax
    8aa5:	e8 56 e9 ff ff       	call   7400 <__free_tcb>
    8aaa:	eb c9                	jmp    8a75 <pthread_tryjoin_np+0x35>
    8aac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000008ab0 <cleanup>:
    8ab0:	48 c7 07 00 00 00 00 	mov    QWORD PTR [rdi],0x0
    8ab7:	c3                   	ret    
    8ab8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    8abf:	00 

0000000000008ac0 <pthread_timedjoin_np>:
    8ac0:	48 85 ff             	test   rdi,rdi
    8ac3:	0f 84 0f 01 00 00    	je     8bd8 <pthread_timedjoin_np+0x118>
    8ac9:	8b 8f d0 02 00 00    	mov    ecx,DWORD PTR [rdi+0x2d0]
    8acf:	85 c9                	test   ecx,ecx
    8ad1:	0f 88 01 01 00 00    	js     8bd8 <pthread_timedjoin_np+0x118>
    8ad7:	48 3b bf 28 06 00 00 	cmp    rdi,QWORD PTR [rdi+0x628]
    8ade:	0f 84 ac 00 00 00    	je     8b90 <pthread_timedjoin_np+0xd0>
    8ae4:	64 48 8b 0c 25 10 00 	mov    rcx,QWORD PTR fs:0x10
    8aeb:	00 00 
    8aed:	48 39 cf             	cmp    rdi,rcx
    8af0:	b8 23 00 00 00       	mov    eax,0x23
    8af5:	0f 84 8e 00 00 00    	je     8b89 <pthread_timedjoin_np+0xc9>
    8afb:	48 3b b9 28 06 00 00 	cmp    rdi,QWORD PTR [rcx+0x628]
    8b02:	0f 84 81 00 00 00    	je     8b89 <pthread_timedjoin_np+0xc9>
    8b08:	4c 8d 87 28 06 00 00 	lea    r8,[rdi+0x628]
    8b0f:	31 c0                	xor    eax,eax
    8b11:	f0 49 0f b1 08       	lock cmpxchg QWORD PTR [r8],rcx
    8b16:	75 78                	jne    8b90 <pthread_timedjoin_np+0xd0>
    8b18:	41 56                	push   r14
    8b1a:	41 55                	push   r13
    8b1c:	41 54                	push   r12
    8b1e:	55                   	push   rbp
    8b1f:	48 89 f5             	mov    rbp,rsi
    8b22:	53                   	push   rbx
    8b23:	48 8d 35 86 ff ff ff 	lea    rsi,[rip+0xffffffffffffff86]        # 8ab0 <cleanup>
    8b2a:	48 89 fb             	mov    rbx,rdi
    8b2d:	49 89 d4             	mov    r12,rdx
    8b30:	4c 89 c2             	mov    rdx,r8
    8b33:	48 83 ec 20          	sub    rsp,0x20
    8b37:	48 89 e7             	mov    rdi,rsp
    8b3a:	e8 51 72 00 00       	call   fd90 <_pthread_cleanup_push>
    8b3f:	e8 1c 76 00 00       	call   10160 <__pthread_enable_asynccancel>
    8b44:	41 89 c6             	mov    r14d,eax
    8b47:	8b 83 d0 02 00 00    	mov    eax,DWORD PTR [rbx+0x2d0]
    8b4d:	85 c0                	test   eax,eax
    8b4f:	75 4f                	jne    8ba0 <pthread_timedjoin_np+0xe0>
    8b51:	44 89 f7             	mov    edi,r14d
    8b54:	e8 67 76 00 00       	call   101c0 <__pthread_disable_asynccancel>
    8b59:	31 f6                	xor    esi,esi
    8b5b:	48 89 e7             	mov    rdi,rsp
    8b5e:	e8 4d 72 00 00       	call   fdb0 <_pthread_cleanup_pop>
    8b63:	48 85 ed             	test   rbp,rbp
    8b66:	74 0b                	je     8b73 <pthread_timedjoin_np+0xb3>
    8b68:	48 8b 83 30 06 00 00 	mov    rax,QWORD PTR [rbx+0x630]
    8b6f:	48 89 45 00          	mov    QWORD PTR [rbp+0x0],rax
    8b73:	48 89 df             	mov    rdi,rbx
    8b76:	e8 85 e8 ff ff       	call   7400 <__free_tcb>
    8b7b:	31 c0                	xor    eax,eax
    8b7d:	48 83 c4 20          	add    rsp,0x20
    8b81:	5b                   	pop    rbx
    8b82:	5d                   	pop    rbp
    8b83:	41 5c                	pop    r12
    8b85:	41 5d                	pop    r13
    8b87:	41 5e                	pop    r14
    8b89:	f3 c3                	repz ret 
    8b8b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    8b90:	b8 16 00 00 00       	mov    eax,0x16
    8b95:	c3                   	ret    
    8b96:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    8b9d:	00 00 00 
    8ba0:	49 81 7c 24 08 ff c9 	cmp    QWORD PTR [r12+0x8],0x3b9ac9ff
    8ba7:	9a 3b 
    8ba9:	76 35                	jbe    8be0 <pthread_timedjoin_np+0x120>
    8bab:	44 89 f7             	mov    edi,r14d
    8bae:	41 bc 16 00 00 00    	mov    r12d,0x16
    8bb4:	e8 07 76 00 00       	call   101c0 <__pthread_disable_asynccancel>
    8bb9:	31 f6                	xor    esi,esi
    8bbb:	48 89 e7             	mov    rdi,rsp
    8bbe:	e8 ed 71 00 00       	call   fdb0 <_pthread_cleanup_pop>
    8bc3:	48 c7 83 28 06 00 00 	mov    QWORD PTR [rbx+0x628],0x0
    8bca:	00 00 00 00 
    8bce:	44 89 e0             	mov    eax,r12d
    8bd1:	eb aa                	jmp    8b7d <pthread_timedjoin_np+0xbd>
    8bd3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    8bd8:	b8 03 00 00 00       	mov    eax,0x3
    8bdd:	c3                   	ret    
    8bde:	66 90                	xchg   ax,ax
    8be0:	48 8d bb d0 02 00 00 	lea    rdi,[rbx+0x2d0]
    8be7:	4c 89 e6             	mov    rsi,r12
    8bea:	e8 21 77 00 00       	call   10310 <__lll_timedwait_tid>
    8bef:	44 89 f7             	mov    edi,r14d
    8bf2:	41 89 c4             	mov    r12d,eax
    8bf5:	e8 c6 75 00 00       	call   101c0 <__pthread_disable_asynccancel>
    8bfa:	31 f6                	xor    esi,esi
    8bfc:	48 89 e7             	mov    rdi,rsp
    8bff:	e8 ac 71 00 00       	call   fdb0 <_pthread_cleanup_pop>
    8c04:	45 85 e4             	test   r12d,r12d
    8c07:	75 ba                	jne    8bc3 <pthread_timedjoin_np+0x103>
    8c09:	e9 55 ff ff ff       	jmp    8b63 <pthread_timedjoin_np+0xa3>
    8c0e:	66 90                	xchg   ax,ax

0000000000008c10 <pthread_self>:
    8c10:	64 48 8b 04 25 10 00 	mov    rax,QWORD PTR fs:0x10
    8c17:	00 00 
    8c19:	c3                   	ret    
    8c1a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000008c20 <pthread_equal>:
    8c20:	31 c0                	xor    eax,eax
    8c22:	48 39 f7             	cmp    rdi,rsi
    8c25:	0f 94 c0             	sete   al
    8c28:	c3                   	ret    
    8c29:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000008c30 <pthread_yield>:
    8c30:	e9 db ca ff ff       	jmp    5710 <sched_yield@plt>
    8c35:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    8c3c:	00 00 00 
    8c3f:	90                   	nop

0000000000008c40 <pthread_getconcurrency>:
    8c40:	8b 05 b6 37 21 00    	mov    eax,DWORD PTR [rip+0x2137b6]        # 21c3fc <__concurrency_level>
    8c46:	c3                   	ret    
    8c47:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    8c4e:	00 00 

0000000000008c50 <pthread_setconcurrency>:
    8c50:	85 ff                	test   edi,edi
    8c52:	b8 16 00 00 00       	mov    eax,0x16
    8c57:	78 08                	js     8c61 <pthread_setconcurrency+0x11>
    8c59:	89 3d 9d 37 21 00    	mov    DWORD PTR [rip+0x21379d],edi        # 21c3fc <__concurrency_level>
    8c5f:	31 c0                	xor    eax,eax
    8c61:	f3 c3                	repz ret 
    8c63:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    8c6a:	00 00 00 
    8c6d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000008c70 <pthread_getschedparam>:
    8c70:	48 85 ff             	test   rdi,rdi
    8c73:	0f 84 0f 01 00 00    	je     8d88 <pthread_getschedparam+0x118>
    8c79:	8b 87 d0 02 00 00    	mov    eax,DWORD PTR [rdi+0x2d0]
    8c7f:	85 c0                	test   eax,eax
    8c81:	0f 8e 01 01 00 00    	jle    8d88 <pthread_getschedparam+0x118>
    8c87:	41 54                	push   r12
    8c89:	31 c0                	xor    eax,eax
    8c8b:	55                   	push   rbp
    8c8c:	49 89 d4             	mov    r12,rdx
    8c8f:	53                   	push   rbx
    8c90:	48 89 f5             	mov    rbp,rsi
    8c93:	48 89 fb             	mov    rbx,rdi
    8c96:	be 01 00 00 00       	mov    esi,0x1
    8c9b:	f0 0f b1 b3 18 06 00 	lock cmpxchg DWORD PTR [rbx+0x618],esi
    8ca2:	00 
    8ca3:	74 1a                	je     8cbf <pthread_getschedparam+0x4f>
    8ca5:	48 8d bb 18 06 00 00 	lea    rdi,[rbx+0x618]
    8cac:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    8cb3:	e8 68 75 00 00       	call   10220 <__lll_lock_wait_private>
    8cb8:	48 81 c4 80 00 00 00 	add    rsp,0x80
    8cbf:	8b 83 0c 03 00 00    	mov    eax,DWORD PTR [rbx+0x30c]
    8cc5:	a8 20                	test   al,0x20
    8cc7:	74 67                	je     8d30 <pthread_getschedparam+0xc0>
    8cc9:	a8 40                	test   al,0x40
    8ccb:	74 43                	je     8d10 <pthread_getschedparam+0xa0>
    8ccd:	8b 83 3c 06 00 00    	mov    eax,DWORD PTR [rbx+0x63c]
    8cd3:	31 d2                	xor    edx,edx
    8cd5:	89 45 00             	mov    DWORD PTR [rbp+0x0],eax
    8cd8:	8b 83 38 06 00 00    	mov    eax,DWORD PTR [rbx+0x638]
    8cde:	41 89 04 24          	mov    DWORD PTR [r12],eax
    8ce2:	f0 ff 8b 18 06 00 00 	lock dec DWORD PTR [rbx+0x618]
    8ce9:	74 1a                	je     8d05 <pthread_getschedparam+0x95>
    8ceb:	48 8d bb 18 06 00 00 	lea    rdi,[rbx+0x618]
    8cf2:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    8cf9:	e8 d2 75 00 00       	call   102d0 <__lll_unlock_wake_private>
    8cfe:	48 81 c4 80 00 00 00 	add    rsp,0x80
    8d05:	5b                   	pop    rbx
    8d06:	89 d0                	mov    eax,edx
    8d08:	5d                   	pop    rbp
    8d09:	41 5c                	pop    r12
    8d0b:	c3                   	ret    
    8d0c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    8d10:	8b bb d0 02 00 00    	mov    edi,DWORD PTR [rbx+0x2d0]
    8d16:	e8 f5 c8 ff ff       	call   5610 <__sched_getscheduler@plt>
    8d1b:	83 f8 ff             	cmp    eax,0xffffffff
    8d1e:	89 83 3c 06 00 00    	mov    DWORD PTR [rbx+0x63c],eax
    8d24:	75 68                	jne    8d8e <pthread_getschedparam+0x11e>
    8d26:	ba 01 00 00 00       	mov    edx,0x1
    8d2b:	eb b5                	jmp    8ce2 <pthread_getschedparam+0x72>
    8d2d:	0f 1f 00             	nop    DWORD PTR [rax]
    8d30:	8b bb d0 02 00 00    	mov    edi,DWORD PTR [rbx+0x2d0]
    8d36:	48 8d b3 38 06 00 00 	lea    rsi,[rbx+0x638]
    8d3d:	e8 fe c9 ff ff       	call   5740 <__sched_getparam@plt>
    8d42:	85 c0                	test   eax,eax
    8d44:	74 2a                	je     8d70 <pthread_getschedparam+0x100>
    8d46:	f6 83 0c 03 00 00 40 	test   BYTE PTR [rbx+0x30c],0x40
    8d4d:	75 d7                	jne    8d26 <pthread_getschedparam+0xb6>
    8d4f:	8b bb d0 02 00 00    	mov    edi,DWORD PTR [rbx+0x2d0]
    8d55:	e8 b6 c8 ff ff       	call   5610 <__sched_getscheduler@plt>
    8d5a:	89 83 3c 06 00 00    	mov    DWORD PTR [rbx+0x63c],eax
    8d60:	83 c0 01             	add    eax,0x1
    8d63:	74 c1                	je     8d26 <pthread_getschedparam+0xb6>
    8d65:	83 8b 0c 03 00 00 40 	or     DWORD PTR [rbx+0x30c],0x40
    8d6c:	eb b8                	jmp    8d26 <pthread_getschedparam+0xb6>
    8d6e:	66 90                	xchg   ax,ax
    8d70:	8b 83 0c 03 00 00    	mov    eax,DWORD PTR [rbx+0x30c]
    8d76:	83 c8 20             	or     eax,0x20
    8d79:	89 83 0c 03 00 00    	mov    DWORD PTR [rbx+0x30c],eax
    8d7f:	e9 45 ff ff ff       	jmp    8cc9 <pthread_getschedparam+0x59>
    8d84:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    8d88:	b8 03 00 00 00       	mov    eax,0x3
    8d8d:	c3                   	ret    
    8d8e:	83 8b 0c 03 00 00 40 	or     DWORD PTR [rbx+0x30c],0x40
    8d95:	e9 33 ff ff ff       	jmp    8ccd <pthread_getschedparam+0x5d>
    8d9a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000008da0 <pthread_setschedparam>:
    8da0:	48 85 ff             	test   rdi,rdi
    8da3:	0f 84 bf 00 00 00    	je     8e68 <pthread_setschedparam+0xc8>
    8da9:	8b 87 d0 02 00 00    	mov    eax,DWORD PTR [rdi+0x2d0]
    8daf:	49 89 f8             	mov    r8,rdi
    8db2:	85 c0                	test   eax,eax
    8db4:	0f 8e ae 00 00 00    	jle    8e68 <pthread_setschedparam+0xc8>
    8dba:	41 54                	push   r12
    8dbc:	55                   	push   rbp
    8dbd:	41 89 f4             	mov    r12d,esi
    8dc0:	53                   	push   rbx
    8dc1:	49 89 d1             	mov    r9,rdx
    8dc4:	be 01 00 00 00       	mov    esi,0x1
    8dc9:	31 c0                	xor    eax,eax
    8dcb:	48 83 ec 10          	sub    rsp,0x10
    8dcf:	f0 41 0f b1 b0 18 06 	lock cmpxchg DWORD PTR [r8+0x618],esi
    8dd6:	00 00 
    8dd8:	74 1a                	je     8df4 <pthread_setschedparam+0x54>
    8dda:	49 8d b8 18 06 00 00 	lea    rdi,[r8+0x618]
    8de1:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    8de8:	e8 33 74 00 00       	call   10220 <__lll_lock_wait_private>
    8ded:	48 81 c4 80 00 00 00 	add    rsp,0x80
    8df4:	49 8b 80 b0 06 00 00 	mov    rax,QWORD PTR [r8+0x6b0]
    8dfb:	48 85 c0             	test   rax,rax
    8dfe:	75 70                	jne    8e70 <pthread_setschedparam+0xd0>
    8e00:	41 8b b8 d0 02 00 00 	mov    edi,DWORD PTR [r8+0x2d0]
    8e07:	44 89 e6             	mov    esi,r12d
    8e0a:	4c 89 cd             	mov    rbp,r9
    8e0d:	4c 89 c3             	mov    rbx,r8
    8e10:	e8 fb c9 ff ff       	call   5810 <__sched_setscheduler@plt>
    8e15:	83 f8 ff             	cmp    eax,0xffffffff
    8e18:	74 66                	je     8e80 <pthread_setschedparam+0xe0>
    8e1a:	44 89 a3 3c 06 00 00 	mov    DWORD PTR [rbx+0x63c],r12d
    8e21:	8b 45 00             	mov    eax,DWORD PTR [rbp+0x0]
    8e24:	31 d2                	xor    edx,edx
    8e26:	83 8b 0c 03 00 00 60 	or     DWORD PTR [rbx+0x30c],0x60
    8e2d:	89 83 38 06 00 00    	mov    DWORD PTR [rbx+0x638],eax
    8e33:	f0 ff 8b 18 06 00 00 	lock dec DWORD PTR [rbx+0x618]
    8e3a:	74 1a                	je     8e56 <pthread_setschedparam+0xb6>
    8e3c:	48 8d bb 18 06 00 00 	lea    rdi,[rbx+0x618]
    8e43:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    8e4a:	e8 81 74 00 00       	call   102d0 <__lll_unlock_wake_private>
    8e4f:	48 81 c4 80 00 00 00 	add    rsp,0x80
    8e56:	48 83 c4 10          	add    rsp,0x10
    8e5a:	89 d0                	mov    eax,edx
    8e5c:	5b                   	pop    rbx
    8e5d:	5d                   	pop    rbp
    8e5e:	41 5c                	pop    r12
    8e60:	c3                   	ret    
    8e61:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    8e68:	b8 03 00 00 00       	mov    eax,0x3
    8e6d:	c3                   	ret    
    8e6e:	66 90                	xchg   ax,ax
    8e70:	8b 00                	mov    eax,DWORD PTR [rax]
    8e72:	3b 02                	cmp    eax,DWORD PTR [rdx]
    8e74:	7e 8a                	jle    8e00 <pthread_setschedparam+0x60>
    8e76:	89 04 24             	mov    DWORD PTR [rsp],eax
    8e79:	48 89 e2             	mov    rdx,rsp
    8e7c:	eb 82                	jmp    8e00 <pthread_setschedparam+0x60>
    8e7e:	66 90                	xchg   ax,ax
    8e80:	48 8b 05 01 f1 20 00 	mov    rax,QWORD PTR [rip+0x20f101]        # 217f88 <_DYNAMIC+0x238>
    8e87:	64 8b 10             	mov    edx,DWORD PTR fs:[rax]
    8e8a:	eb a7                	jmp    8e33 <pthread_setschedparam+0x93>
    8e8c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000008e90 <pthread_setschedprio>:
    8e90:	48 85 ff             	test   rdi,rdi
    8e93:	0f 84 af 00 00 00    	je     8f48 <pthread_setschedprio+0xb8>
    8e99:	8b 87 d0 02 00 00    	mov    eax,DWORD PTR [rdi+0x2d0]
    8e9f:	48 89 fa             	mov    rdx,rdi
    8ea2:	85 c0                	test   eax,eax
    8ea4:	0f 8e 9e 00 00 00    	jle    8f48 <pthread_setschedprio+0xb8>
    8eaa:	55                   	push   rbp
    8eab:	53                   	push   rbx
    8eac:	41 89 f0             	mov    r8d,esi
    8eaf:	31 c0                	xor    eax,eax
    8eb1:	48 83 ec 18          	sub    rsp,0x18
    8eb5:	89 34 24             	mov    DWORD PTR [rsp],esi
    8eb8:	be 01 00 00 00       	mov    esi,0x1
    8ebd:	f0 0f b1 b2 18 06 00 	lock cmpxchg DWORD PTR [rdx+0x618],esi
    8ec4:	00 
    8ec5:	74 1a                	je     8ee1 <pthread_setschedprio+0x51>
    8ec7:	48 8d ba 18 06 00 00 	lea    rdi,[rdx+0x618]
    8ece:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    8ed5:	e8 46 73 00 00       	call   10220 <__lll_lock_wait_private>
    8eda:	48 81 c4 80 00 00 00 	add    rsp,0x80
    8ee1:	48 8b 82 b0 06 00 00 	mov    rax,QWORD PTR [rdx+0x6b0]
    8ee8:	48 85 c0             	test   rax,rax
    8eeb:	75 63                	jne    8f50 <pthread_setschedprio+0xc0>
    8eed:	8b ba d0 02 00 00    	mov    edi,DWORD PTR [rdx+0x2d0]
    8ef3:	48 89 e6             	mov    rsi,rsp
    8ef6:	44 89 c5             	mov    ebp,r8d
    8ef9:	48 89 d3             	mov    rbx,rdx
    8efc:	e8 5f ca ff ff       	call   5960 <sched_setparam@plt>
    8f01:	83 f8 ff             	cmp    eax,0xffffffff
    8f04:	74 5a                	je     8f60 <pthread_setschedprio+0xd0>
    8f06:	83 8b 0c 03 00 00 20 	or     DWORD PTR [rbx+0x30c],0x20
    8f0d:	89 2c 24             	mov    DWORD PTR [rsp],ebp
    8f10:	31 d2                	xor    edx,edx
    8f12:	89 ab 38 06 00 00    	mov    DWORD PTR [rbx+0x638],ebp
    8f18:	f0 ff 8b 18 06 00 00 	lock dec DWORD PTR [rbx+0x618]
    8f1f:	74 1a                	je     8f3b <pthread_setschedprio+0xab>
    8f21:	48 8d bb 18 06 00 00 	lea    rdi,[rbx+0x618]
    8f28:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    8f2f:	e8 9c 73 00 00       	call   102d0 <__lll_unlock_wake_private>
    8f34:	48 81 c4 80 00 00 00 	add    rsp,0x80
    8f3b:	48 83 c4 18          	add    rsp,0x18
    8f3f:	89 d0                	mov    eax,edx
    8f41:	5b                   	pop    rbx
    8f42:	5d                   	pop    rbp
    8f43:	c3                   	ret    
    8f44:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    8f48:	b8 03 00 00 00       	mov    eax,0x3
    8f4d:	c3                   	ret    
    8f4e:	66 90                	xchg   ax,ax
    8f50:	8b 00                	mov    eax,DWORD PTR [rax]
    8f52:	41 39 c0             	cmp    r8d,eax
    8f55:	7d 96                	jge    8eed <pthread_setschedprio+0x5d>
    8f57:	89 04 24             	mov    DWORD PTR [rsp],eax
    8f5a:	eb 91                	jmp    8eed <pthread_setschedprio+0x5d>
    8f5c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    8f60:	48 8b 05 21 f0 20 00 	mov    rax,QWORD PTR [rip+0x20f021]        # 217f88 <_DYNAMIC+0x238>
    8f67:	64 8b 10             	mov    edx,DWORD PTR fs:[rax]
    8f6a:	eb ac                	jmp    8f18 <pthread_setschedprio+0x88>
    8f6c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000008f70 <pthread_attr_init@@GLIBC_2.2.5>:
    8f70:	53                   	push   rbx
    8f71:	48 89 fb             	mov    rbx,rdi
    8f74:	48 c7 07 00 00 00 00 	mov    QWORD PTR [rdi],0x0
    8f7b:	48 c7 47 30 00 00 00 	mov    QWORD PTR [rdi+0x30],0x0
    8f82:	00 
    8f83:	48 8d 7f 08          	lea    rdi,[rdi+0x8]
    8f87:	48 89 d9             	mov    rcx,rbx
    8f8a:	31 c0                	xor    eax,eax
    8f8c:	48 83 e7 f8          	and    rdi,0xfffffffffffffff8
    8f90:	48 29 f9             	sub    rcx,rdi
    8f93:	83 c1 38             	add    ecx,0x38
    8f96:	c1 e9 03             	shr    ecx,0x3
    8f99:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
    8f9c:	e8 8f c8 ff ff       	call   5830 <__getpagesize@plt>
    8fa1:	48 98                	cdqe   
    8fa3:	48 89 43 10          	mov    QWORD PTR [rbx+0x10],rax
    8fa7:	31 c0                	xor    eax,eax
    8fa9:	5b                   	pop    rbx
    8faa:	c3                   	ret    
    8fab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000008fb0 <pthread_attr_destroy>:
    8fb0:	48 83 ec 08          	sub    rsp,0x8
    8fb4:	48 8b 7f 28          	mov    rdi,QWORD PTR [rdi+0x28]
    8fb8:	e8 03 c6 ff ff       	call   55c0 <free@plt>
    8fbd:	31 c0                	xor    eax,eax
    8fbf:	48 83 c4 08          	add    rsp,0x8
    8fc3:	c3                   	ret    
    8fc4:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    8fcb:	00 00 00 
    8fce:	66 90                	xchg   ax,ax

0000000000008fd0 <pthread_attr_getdetachstate>:
    8fd0:	8b 47 08             	mov    eax,DWORD PTR [rdi+0x8]
    8fd3:	83 e0 01             	and    eax,0x1
    8fd6:	89 06                	mov    DWORD PTR [rsi],eax
    8fd8:	31 c0                	xor    eax,eax
    8fda:	c3                   	ret    
    8fdb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000008fe0 <pthread_attr_setdetachstate>:
    8fe0:	83 fe 01             	cmp    esi,0x1
    8fe3:	74 0b                	je     8ff0 <pthread_attr_setdetachstate+0x10>
    8fe5:	85 f6                	test   esi,esi
    8fe7:	75 17                	jne    9000 <pthread_attr_setdetachstate+0x20>
    8fe9:	83 67 08 fe          	and    DWORD PTR [rdi+0x8],0xfffffffe
    8fed:	31 c0                	xor    eax,eax
    8fef:	c3                   	ret    
    8ff0:	83 4f 08 01          	or     DWORD PTR [rdi+0x8],0x1
    8ff4:	31 c0                	xor    eax,eax
    8ff6:	c3                   	ret    
    8ff7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    8ffe:	00 00 
    9000:	b8 16 00 00 00       	mov    eax,0x16
    9005:	c3                   	ret    
    9006:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    900d:	00 00 00 

0000000000009010 <pthread_attr_getguardsize>:
    9010:	48 8b 47 10          	mov    rax,QWORD PTR [rdi+0x10]
    9014:	48 89 06             	mov    QWORD PTR [rsi],rax
    9017:	31 c0                	xor    eax,eax
    9019:	c3                   	ret    
    901a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000009020 <pthread_attr_setguardsize>:
    9020:	48 89 77 10          	mov    QWORD PTR [rdi+0x10],rsi
    9024:	31 c0                	xor    eax,eax
    9026:	c3                   	ret    
    9027:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    902e:	00 00 

0000000000009030 <pthread_attr_getschedparam>:
    9030:	8b 07                	mov    eax,DWORD PTR [rdi]
    9032:	89 06                	mov    DWORD PTR [rsi],eax
    9034:	31 c0                	xor    eax,eax
    9036:	c3                   	ret    
    9037:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    903e:	00 00 

0000000000009040 <pthread_attr_setschedparam>:
    9040:	41 56                	push   r14
    9042:	41 55                	push   r13
    9044:	41 54                	push   r12
    9046:	55                   	push   rbp
    9047:	49 89 f4             	mov    r12,rsi
    904a:	53                   	push   rbx
    904b:	8b 6f 04             	mov    ebp,DWORD PTR [rdi+0x4]
    904e:	48 89 fb             	mov    rbx,rdi
    9051:	44 8b 36             	mov    r14d,DWORD PTR [rsi]
    9054:	89 ef                	mov    edi,ebp
    9056:	e8 a5 c9 ff ff       	call   5a00 <__sched_get_priority_min@plt>
    905b:	89 ef                	mov    edi,ebp
    905d:	41 89 c5             	mov    r13d,eax
    9060:	e8 eb c5 ff ff       	call   5650 <__sched_get_priority_max@plt>
    9065:	45 85 ed             	test   r13d,r13d
    9068:	78 04                	js     906e <pthread_attr_setschedparam+0x2e>
    906a:	85 c0                	test   eax,eax
    906c:	79 12                	jns    9080 <pthread_attr_setschedparam+0x40>
    906e:	5b                   	pop    rbx
    906f:	b8 16 00 00 00       	mov    eax,0x16
    9074:	5d                   	pop    rbp
    9075:	41 5c                	pop    r12
    9077:	41 5d                	pop    r13
    9079:	41 5e                	pop    r14
    907b:	c3                   	ret    
    907c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    9080:	45 39 ee             	cmp    r14d,r13d
    9083:	7c e9                	jl     906e <pthread_attr_setschedparam+0x2e>
    9085:	41 39 c6             	cmp    r14d,eax
    9088:	7f e4                	jg     906e <pthread_attr_setschedparam+0x2e>
    908a:	41 8b 04 24          	mov    eax,DWORD PTR [r12]
    908e:	83 4b 08 20          	or     DWORD PTR [rbx+0x8],0x20
    9092:	89 03                	mov    DWORD PTR [rbx],eax
    9094:	31 c0                	xor    eax,eax
    9096:	5b                   	pop    rbx
    9097:	5d                   	pop    rbp
    9098:	41 5c                	pop    r12
    909a:	41 5d                	pop    r13
    909c:	41 5e                	pop    r14
    909e:	c3                   	ret    
    909f:	90                   	nop

00000000000090a0 <pthread_attr_getschedpolicy>:
    90a0:	8b 47 04             	mov    eax,DWORD PTR [rdi+0x4]
    90a3:	89 06                	mov    DWORD PTR [rsi],eax
    90a5:	31 c0                	xor    eax,eax
    90a7:	c3                   	ret    
    90a8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    90af:	00 

00000000000090b0 <pthread_attr_setschedpolicy>:
    90b0:	83 fe 02             	cmp    esi,0x2
    90b3:	76 0b                	jbe    90c0 <pthread_attr_setschedpolicy+0x10>
    90b5:	b8 16 00 00 00       	mov    eax,0x16
    90ba:	c3                   	ret    
    90bb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    90c0:	89 77 04             	mov    DWORD PTR [rdi+0x4],esi
    90c3:	83 4f 08 40          	or     DWORD PTR [rdi+0x8],0x40
    90c7:	31 c0                	xor    eax,eax
    90c9:	c3                   	ret    
    90ca:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000090d0 <pthread_attr_getinheritsched>:
    90d0:	8b 47 08             	mov    eax,DWORD PTR [rdi+0x8]
    90d3:	d1 e8                	shr    eax,1
    90d5:	83 e0 01             	and    eax,0x1
    90d8:	89 06                	mov    DWORD PTR [rsi],eax
    90da:	31 c0                	xor    eax,eax
    90dc:	c3                   	ret    
    90dd:	0f 1f 00             	nop    DWORD PTR [rax]

00000000000090e0 <pthread_attr_setinheritsched>:
    90e0:	83 fe 01             	cmp    esi,0x1
    90e3:	b8 16 00 00 00       	mov    eax,0x16
    90e8:	76 06                	jbe    90f0 <pthread_attr_setinheritsched+0x10>
    90ea:	f3 c3                	repz ret 
    90ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    90f0:	85 f6                	test   esi,esi
    90f2:	75 0c                	jne    9100 <pthread_attr_setinheritsched+0x20>
    90f4:	83 67 08 fd          	and    DWORD PTR [rdi+0x8],0xfffffffd
    90f8:	31 c0                	xor    eax,eax
    90fa:	c3                   	ret    
    90fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    9100:	83 4f 08 02          	or     DWORD PTR [rdi+0x8],0x2
    9104:	31 c0                	xor    eax,eax
    9106:	c3                   	ret    
    9107:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    910e:	00 00 

0000000000009110 <pthread_attr_getscope>:
    9110:	8b 47 08             	mov    eax,DWORD PTR [rdi+0x8]
    9113:	c1 e8 02             	shr    eax,0x2
    9116:	83 e0 01             	and    eax,0x1
    9119:	89 06                	mov    DWORD PTR [rsi],eax
    911b:	31 c0                	xor    eax,eax
    911d:	c3                   	ret    
    911e:	66 90                	xchg   ax,ax

0000000000009120 <pthread_attr_setscope>:
    9120:	85 f6                	test   esi,esi
    9122:	74 14                	je     9138 <pthread_attr_setscope+0x18>
    9124:	83 fe 01             	cmp    esi,0x1
    9127:	ba 16 00 00 00       	mov    edx,0x16
    912c:	b8 5f 00 00 00       	mov    eax,0x5f
    9131:	0f 45 c2             	cmovne eax,edx
    9134:	c3                   	ret    
    9135:	0f 1f 00             	nop    DWORD PTR [rax]
    9138:	83 67 08 fb          	and    DWORD PTR [rdi+0x8],0xfffffffb
    913c:	31 c0                	xor    eax,eax
    913e:	c3                   	ret    
    913f:	90                   	nop

0000000000009140 <pthread_attr_getstackaddr>:
    9140:	48 8b 47 18          	mov    rax,QWORD PTR [rdi+0x18]
    9144:	48 89 06             	mov    QWORD PTR [rsi],rax
    9147:	31 c0                	xor    eax,eax
    9149:	c3                   	ret    
    914a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000009150 <pthread_attr_setstackaddr>:
    9150:	48 89 77 18          	mov    QWORD PTR [rdi+0x18],rsi
    9154:	83 4f 08 08          	or     DWORD PTR [rdi+0x8],0x8
    9158:	31 c0                	xor    eax,eax
    915a:	c3                   	ret    
    915b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000009160 <pthread_attr_getstacksize>:
    9160:	48 8b 57 20          	mov    rdx,QWORD PTR [rdi+0x20]
    9164:	49 89 f0             	mov    r8,rsi
    9167:	48 85 d2             	test   rdx,rdx
    916a:	75 55                	jne    91c1 <pthread_attr_getstacksize+0x61>
    916c:	be 01 00 00 00       	mov    esi,0x1
    9171:	31 c0                	xor    eax,eax
    9173:	f0 0f b1 35 45 31 21 	lock cmpxchg DWORD PTR [rip+0x213145],esi        # 21c2c0 <__default_pthread_attr_lock>
    917a:	00 
    917b:	74 1a                	je     9197 <pthread_attr_getstacksize+0x37>
    917d:	48 8d 3d 3c 31 21 00 	lea    rdi,[rip+0x21313c]        # 21c2c0 <__default_pthread_attr_lock>
    9184:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    918b:	e8 90 70 00 00       	call   10220 <__lll_lock_wait_private>
    9190:	48 81 c4 80 00 00 00 	add    rsp,0x80
    9197:	48 8b 15 42 32 21 00 	mov    rdx,QWORD PTR [rip+0x213242]        # 21c3e0 <__default_pthread_attr+0x20>
    919e:	f0 ff 0d 1b 31 21 00 	lock dec DWORD PTR [rip+0x21311b]        # 21c2c0 <__default_pthread_attr_lock>
    91a5:	74 1a                	je     91c1 <pthread_attr_getstacksize+0x61>
    91a7:	48 8d 3d 12 31 21 00 	lea    rdi,[rip+0x213112]        # 21c2c0 <__default_pthread_attr_lock>
    91ae:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    91b5:	e8 16 71 00 00       	call   102d0 <__lll_unlock_wake_private>
    91ba:	48 81 c4 80 00 00 00 	add    rsp,0x80
    91c1:	49 89 10             	mov    QWORD PTR [r8],rdx
    91c4:	31 c0                	xor    eax,eax
    91c6:	c3                   	ret    
    91c7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    91ce:	00 00 

00000000000091d0 <pthread_attr_setstacksize>:
    91d0:	48 81 fe ff 3f 00 00 	cmp    rsi,0x3fff
    91d7:	77 07                	ja     91e0 <pthread_attr_setstacksize+0x10>
    91d9:	b8 16 00 00 00       	mov    eax,0x16
    91de:	c3                   	ret    
    91df:	90                   	nop
    91e0:	48 89 77 20          	mov    QWORD PTR [rdi+0x20],rsi
    91e4:	31 c0                	xor    eax,eax
    91e6:	c3                   	ret    
    91e7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    91ee:	00 00 

00000000000091f0 <pthread_attr_getstack>:
    91f0:	48 8b 4f 20          	mov    rcx,QWORD PTR [rdi+0x20]
    91f4:	48 8b 47 18          	mov    rax,QWORD PTR [rdi+0x18]
    91f8:	48 29 c8             	sub    rax,rcx
    91fb:	48 89 06             	mov    QWORD PTR [rsi],rax
    91fe:	48 89 0a             	mov    QWORD PTR [rdx],rcx
    9201:	31 c0                	xor    eax,eax
    9203:	c3                   	ret    
    9204:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    920b:	00 00 00 
    920e:	66 90                	xchg   ax,ax

0000000000009210 <pthread_attr_setstack>:
    9210:	48 81 fa ff 3f 00 00 	cmp    rdx,0x3fff
    9217:	77 07                	ja     9220 <pthread_attr_setstack+0x10>
    9219:	b8 16 00 00 00       	mov    eax,0x16
    921e:	c3                   	ret    
    921f:	90                   	nop
    9220:	48 89 57 20          	mov    QWORD PTR [rdi+0x20],rdx
    9224:	48 01 f2             	add    rdx,rsi
    9227:	83 4f 08 08          	or     DWORD PTR [rdi+0x8],0x8
    922b:	48 89 57 18          	mov    QWORD PTR [rdi+0x18],rdx
    922f:	31 c0                	xor    eax,eax
    9231:	c3                   	ret    
    9232:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    9239:	00 00 00 
    923c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000009240 <pthread_getattr_np>:
    9240:	41 57                	push   r15
    9242:	41 56                	push   r14
    9244:	31 c0                	xor    eax,eax
    9246:	41 55                	push   r13
    9248:	41 54                	push   r12
    924a:	55                   	push   rbp
    924b:	53                   	push   rbx
    924c:	48 89 f5             	mov    rbp,rsi
    924f:	48 89 fb             	mov    rbx,rdi
    9252:	be 01 00 00 00       	mov    esi,0x1
    9257:	48 83 ec 58          	sub    rsp,0x58
    925b:	f0 0f b1 b3 18 06 00 	lock cmpxchg DWORD PTR [rbx+0x618],esi
    9262:	00 
    9263:	74 1a                	je     927f <pthread_getattr_np+0x3f>
    9265:	48 8d bb 18 06 00 00 	lea    rdi,[rbx+0x618]
    926c:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    9273:	e8 a8 6f 00 00       	call   10220 <__lll_lock_wait_private>
    9278:	48 81 c4 80 00 00 00 	add    rsp,0x80
    927f:	8b 83 38 06 00 00    	mov    eax,DWORD PTR [rbx+0x638]
    9285:	89 45 00             	mov    DWORD PTR [rbp+0x0],eax
    9288:	8b 83 3c 06 00 00    	mov    eax,DWORD PTR [rbx+0x63c]
    928e:	48 3b 9b 28 06 00 00 	cmp    rbx,QWORD PTR [rbx+0x628]
    9295:	89 45 04             	mov    DWORD PTR [rbp+0x4],eax
    9298:	8b 83 0c 03 00 00    	mov    eax,DWORD PTR [rbx+0x30c]
    929e:	89 45 08             	mov    DWORD PTR [rbp+0x8],eax
    92a1:	0f 84 d1 00 00 00    	je     9378 <pthread_getattr_np+0x138>
    92a7:	48 8b 8b 90 06 00 00 	mov    rcx,QWORD PTR [rbx+0x690]
    92ae:	48 8b 93 a8 06 00 00 	mov    rdx,QWORD PTR [rbx+0x6a8]
    92b5:	48 85 c9             	test   rcx,rcx
    92b8:	48 89 55 10          	mov    QWORD PTR [rbp+0x10],rdx
    92bc:	0f 84 c6 00 00 00    	je     9388 <pthread_getattr_np+0x148>
    92c2:	48 8b 93 98 06 00 00 	mov    rdx,QWORD PTR [rbx+0x698]
    92c9:	83 c8 08             	or     eax,0x8
    92cc:	89 45 08             	mov    DWORD PTR [rbp+0x8],eax
    92cf:	48 89 55 20          	mov    QWORD PTR [rbp+0x20],rdx
    92d3:	48 01 ca             	add    rdx,rcx
    92d6:	48 89 55 18          	mov    QWORD PTR [rbp+0x18],rdx
    92da:	45 31 ff             	xor    r15d,r15d
    92dd:	41 bc 10 00 00 00    	mov    r12d,0x10
    92e3:	eb 22                	jmp    9307 <pthread_getattr_np+0xc7>
    92e5:	0f 1f 00             	nop    DWORD PTR [rax]
    92e8:	48 89 c2             	mov    rdx,rax
    92eb:	4c 89 e6             	mov    rsi,r12
    92ee:	48 89 df             	mov    rdi,rbx
    92f1:	e8 7a 83 00 00       	call   11670 <pthread_getaffinity_np@@GLIBC_2.3.4>
    92f6:	83 f8 16             	cmp    eax,0x16
    92f9:	4d 89 ef             	mov    r15,r13
    92fc:	75 62                	jne    9360 <pthread_getattr_np+0x120>
    92fe:	49 81 fc ff ff 0f 00 	cmp    r12,0xfffff
    9305:	77 59                	ja     9360 <pthread_getattr_np+0x120>
    9307:	4d 01 e4             	add    r12,r12
    930a:	4c 89 ff             	mov    rdi,r15
    930d:	4c 89 e6             	mov    rsi,r12
    9310:	e8 8b c5 ff ff       	call   58a0 <realloc@plt>
    9315:	48 85 c0             	test   rax,rax
    9318:	49 89 c5             	mov    r13,rax
    931b:	75 cb                	jne    92e8 <pthread_getattr_np+0xa8>
    931d:	4c 89 ff             	mov    rdi,r15
    9320:	41 be 0c 00 00 00    	mov    r14d,0xc
    9326:	e8 95 c2 ff ff       	call   55c0 <free@plt>
    932b:	f0 ff 8b 18 06 00 00 	lock dec DWORD PTR [rbx+0x618]
    9332:	74 1a                	je     934e <pthread_getattr_np+0x10e>
    9334:	48 8d bb 18 06 00 00 	lea    rdi,[rbx+0x618]
    933b:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    9342:	e8 89 6f 00 00       	call   102d0 <__lll_unlock_wake_private>
    9347:	48 81 c4 80 00 00 00 	add    rsp,0x80
    934e:	48 83 c4 58          	add    rsp,0x58
    9352:	44 89 f0             	mov    eax,r14d
    9355:	5b                   	pop    rbx
    9356:	5d                   	pop    rbp
    9357:	41 5c                	pop    r12
    9359:	41 5d                	pop    r13
    935b:	41 5e                	pop    r14
    935d:	41 5f                	pop    r15
    935f:	c3                   	ret    
    9360:	85 c0                	test   eax,eax
    9362:	41 89 c6             	mov    r14d,eax
    9365:	0f 85 07 02 00 00    	jne    9572 <pthread_getattr_np+0x332>
    936b:	4c 89 6d 28          	mov    QWORD PTR [rbp+0x28],r13
    936f:	4c 89 65 30          	mov    QWORD PTR [rbp+0x30],r12
    9373:	eb b6                	jmp    932b <pthread_getattr_np+0xeb>
    9375:	0f 1f 00             	nop    DWORD PTR [rax]
    9378:	83 c8 01             	or     eax,0x1
    937b:	89 45 08             	mov    DWORD PTR [rbp+0x8],eax
    937e:	e9 24 ff ff ff       	jmp    92a7 <pthread_getattr_np+0x67>
    9383:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    9388:	8b 83 d4 02 00 00    	mov    eax,DWORD PTR [rbx+0x2d4]
    938e:	8b 93 d4 02 00 00    	mov    edx,DWORD PTR [rbx+0x2d4]
    9394:	c1 f8 1f             	sar    eax,0x1f
    9397:	31 c2                	xor    edx,eax
    9399:	29 c2                	sub    edx,eax
    939b:	3b 93 d0 02 00 00    	cmp    edx,DWORD PTR [rbx+0x2d0]
    93a1:	0f 85 ac 01 00 00    	jne    9553 <pthread_getattr_np+0x313>
    93a7:	48 8d 35 e3 9b 00 00 	lea    rsi,[rip+0x9be3]        # 12f91 <_thread_db_pthread_list+0x21>
    93ae:	48 8d 3d e0 9b 00 00 	lea    rdi,[rip+0x9be0]        # 12f95 <_thread_db_pthread_list+0x25>
    93b5:	e8 56 c5 ff ff       	call   5910 <fopen@plt>
    93ba:	48 85 c0             	test   rax,rax
    93bd:	49 89 c4             	mov    r12,rax
    93c0:	0f 84 2f 01 00 00    	je     94f5 <pthread_getattr_np+0x2b5>
    93c6:	48 8d 74 24 40       	lea    rsi,[rsp+0x40]
    93cb:	bf 03 00 00 00       	mov    edi,0x3
    93d0:	e8 eb c5 ff ff       	call   59c0 <getrlimit@plt>
    93d5:	85 c0                	test   eax,eax
    93d7:	0f 85 c5 00 00 00    	jne    94a2 <pthread_getattr_np+0x262>
    93dd:	48 8b 05 c4 eb 20 00 	mov    rax,QWORD PTR [rip+0x20ebc4]        # 217fa8 <_DYNAMIC+0x258>
    93e4:	48 8d 4c 24 30       	lea    rcx,[rsp+0x30]
    93e9:	31 d2                	xor    edx,edx
    93eb:	48 89 1c 24          	mov    QWORD PTR [rsp],rbx
    93ef:	48 89 6c 24 08       	mov    QWORD PTR [rsp+0x8],rbp
    93f4:	4c 8d 74 24 28       	lea    r14,[rsp+0x28]
    93f9:	4c 8d 6c 24 20       	lea    r13,[rsp+0x20]
    93fe:	4c 8d 7c 24 38       	lea    r15,[rsp+0x38]
    9403:	48 89 d5             	mov    rbp,rdx
    9406:	48 8b 40 18          	mov    rax,QWORD PTR [rax+0x18]
    940a:	48 89 cb             	mov    rbx,rcx
    940d:	48 89 44 24 10       	mov    QWORD PTR [rsp+0x10],rax
    9412:	48 8b 05 87 eb 20 00 	mov    rax,QWORD PTR [rip+0x20eb87]        # 217fa0 <_DYNAMIC+0x250>
    9419:	48 8b 00             	mov    rax,QWORD PTR [rax]
    941c:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
    9421:	41 8b 04 24          	mov    eax,DWORD PTR [r12]
    9425:	80 cc 80             	or     ah,0x80
    9428:	41 89 04 24          	mov    DWORD PTR [r12],eax
    942c:	48 c7 44 24 20 00 00 	mov    QWORD PTR [rsp+0x20],0x0
    9433:	00 00 
    9435:	48 c7 44 24 28 00 00 	mov    QWORD PTR [rsp+0x28],0x0
    943c:	00 00 
    943e:	eb 04                	jmp    9444 <pthread_getattr_np+0x204>
    9440:	41 8b 04 24          	mov    eax,DWORD PTR [r12]
    9444:	a8 10                	test   al,0x10
    9446:	0f 85 8e 00 00 00    	jne    94da <pthread_getattr_np+0x29a>
    944c:	4c 89 e1             	mov    rcx,r12
    944f:	ba 0a 00 00 00       	mov    edx,0xa
    9454:	4c 89 f6             	mov    rsi,r14
    9457:	4c 89 ef             	mov    rdi,r13
    945a:	e8 11 c3 ff ff       	call   5770 <__getdelim@plt>
    945f:	48 85 c0             	test   rax,rax
    9462:	7e 76                	jle    94da <pthread_getattr_np+0x29a>
    9464:	48 8b 7c 24 20       	mov    rdi,QWORD PTR [rsp+0x20]
    9469:	48 8d 35 35 9b 00 00 	lea    rsi,[rip+0x9b35]        # 12fa5 <_thread_db_pthread_list+0x35>
    9470:	31 c0                	xor    eax,eax
    9472:	4c 89 f9             	mov    rcx,r15
    9475:	48 89 da             	mov    rdx,rbx
    9478:	e8 13 c4 ff ff       	call   5890 <sscanf@plt>
    947d:	83 f8 02             	cmp    eax,0x2
    9480:	75 be                	jne    9440 <pthread_getattr_np+0x200>
    9482:	48 8b 05 17 eb 20 00 	mov    rax,QWORD PTR [rip+0x20eb17]        # 217fa0 <_DYNAMIC+0x250>
    9489:	48 8b 00             	mov    rax,QWORD PTR [rax]
    948c:	48 39 44 24 30       	cmp    QWORD PTR [rsp+0x30],rax
    9491:	77 3d                	ja     94d0 <pthread_getattr_np+0x290>
    9493:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
    9498:	48 39 d0             	cmp    rax,rdx
    949b:	72 65                	jb     9502 <pthread_getattr_np+0x2c2>
    949d:	48 89 d5             	mov    rbp,rdx
    94a0:	eb 9e                	jmp    9440 <pthread_getattr_np+0x200>
    94a2:	48 8b 05 df ea 20 00 	mov    rax,QWORD PTR [rip+0x20eadf]        # 217f88 <_DYNAMIC+0x238>
    94a9:	64 44 8b 30          	mov    r14d,DWORD PTR fs:[rax]
    94ad:	4c 89 e7             	mov    rdi,r12
    94b0:	e8 bb c1 ff ff       	call   5670 <fclose@plt>
    94b5:	83 4d 08 08          	or     DWORD PTR [rbp+0x8],0x8
    94b9:	45 85 f6             	test   r14d,r14d
    94bc:	0f 85 69 fe ff ff    	jne    932b <pthread_getattr_np+0xeb>
    94c2:	e9 13 fe ff ff       	jmp    92da <pthread_getattr_np+0x9a>
    94c7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    94ce:	00 00 
    94d0:	48 8b 6c 24 38       	mov    rbp,QWORD PTR [rsp+0x38]
    94d5:	e9 66 ff ff ff       	jmp    9440 <pthread_getattr_np+0x200>
    94da:	48 8b 1c 24          	mov    rbx,QWORD PTR [rsp]
    94de:	48 8b 6c 24 08       	mov    rbp,QWORD PTR [rsp+0x8]
    94e3:	41 be 02 00 00 00    	mov    r14d,0x2
    94e9:	48 8b 7c 24 20       	mov    rdi,QWORD PTR [rsp+0x20]
    94ee:	e8 cd c0 ff ff       	call   55c0 <free@plt>
    94f3:	eb b8                	jmp    94ad <pthread_getattr_np+0x26d>
    94f5:	48 8b 05 8c ea 20 00 	mov    rax,QWORD PTR [rip+0x20ea8c]        # 217f88 <_DYNAMIC+0x238>
    94fc:	64 44 8b 30          	mov    r14d,DWORD PTR fs:[rax]
    9500:	eb b3                	jmp    94b5 <pthread_getattr_np+0x275>
    9502:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
    9507:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
    950c:	48 89 ef             	mov    rdi,rbp
    950f:	48 8b 6c 24 08       	mov    rbp,QWORD PTR [rsp+0x8]
    9514:	48 8b 1c 24          	mov    rbx,QWORD PTR [rsp]
    9518:	48 89 f1             	mov    rcx,rsi
    951b:	48 f7 d9             	neg    rcx
    951e:	48 21 c8             	and    rax,rcx
    9521:	48 01 f0             	add    rax,rsi
    9524:	48 89 c6             	mov    rsi,rax
    9527:	48 03 74 24 40       	add    rsi,QWORD PTR [rsp+0x40]
    952c:	48 89 45 18          	mov    QWORD PTR [rbp+0x18],rax
    9530:	48 29 f8             	sub    rax,rdi
    9533:	48 29 d6             	sub    rsi,rdx
    9536:	48 89 f2             	mov    rdx,rsi
    9539:	48 21 ca             	and    rdx,rcx
    953c:	48 39 c2             	cmp    rdx,rax
    953f:	77 09                	ja     954a <pthread_getattr_np+0x30a>
    9541:	48 89 55 20          	mov    QWORD PTR [rbp+0x20],rdx
    9545:	45 31 f6             	xor    r14d,r14d
    9548:	eb 9f                	jmp    94e9 <pthread_getattr_np+0x2a9>
    954a:	48 89 45 20          	mov    QWORD PTR [rbp+0x20],rax
    954e:	45 31 f6             	xor    r14d,r14d
    9551:	eb 96                	jmp    94e9 <pthread_getattr_np+0x2a9>
    9553:	48 8d 0d 86 9a 00 00 	lea    rcx,[rip+0x9a86]        # 12fe0 <__PRETTY_FUNCTION__.9945>
    955a:	48 8d 35 1b 9a 00 00 	lea    rsi,[rip+0x9a1b]        # 12f7c <_thread_db_pthread_list+0xc>
    9561:	48 8d 3d 48 9a 00 00 	lea    rdi,[rip+0x9a48]        # 12fb0 <_thread_db_pthread_list+0x40>
    9568:	ba 47 00 00 00       	mov    edx,0x47
    956d:	e8 5e c1 ff ff       	call   56d0 <__assert_fail@plt>
    9572:	4c 89 ef             	mov    rdi,r13
    9575:	e8 46 c0 ff ff       	call   55c0 <free@plt>
    957a:	41 83 fe 26          	cmp    r14d,0x26
    957e:	0f 85 a7 fd ff ff    	jne    932b <pthread_getattr_np+0xeb>
    9584:	48 c7 45 28 00 00 00 	mov    QWORD PTR [rbp+0x28],0x0
    958b:	00 
    958c:	48 c7 45 30 00 00 00 	mov    QWORD PTR [rbp+0x30],0x0
    9593:	00 
    9594:	45 31 f6             	xor    r14d,r14d
    9597:	e9 8f fd ff ff       	jmp    932b <pthread_getattr_np+0xeb>
    959c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000000095a0 <__pthread_mutex_init>:
    95a0:	48 83 ec 18          	sub    rsp,0x18
    95a4:	48 85 f6             	test   rsi,rsi
    95a7:	74 27                	je     95d0 <__pthread_mutex_init+0x30>
    95a9:	8b 16                	mov    edx,DWORD PTR [rsi]
    95ab:	89 d0                	mov    eax,edx
    95ad:	25 00 00 00 30       	and    eax,0x30000000
    95b2:	74 23                	je     95d7 <__pthread_mutex_init+0x37>
    95b4:	3d 00 00 00 10       	cmp    eax,0x10000000
    95b9:	74 1c                	je     95d7 <__pthread_mutex_init+0x37>
    95bb:	81 e2 00 00 00 40    	and    edx,0x40000000
    95c1:	b8 5f 00 00 00       	mov    eax,0x5f
    95c6:	74 0f                	je     95d7 <__pthread_mutex_init+0x37>
    95c8:	48 83 c4 18          	add    rsp,0x18
    95cc:	c3                   	ret    
    95cd:	0f 1f 00             	nop    DWORD PTR [rax]
    95d0:	48 8d 35 1d 9a 00 00 	lea    rsi,[rip+0x9a1d]        # 12ff4 <default_mutexattr>
    95d7:	48 c7 47 10 00 00 00 	mov    QWORD PTR [rdi+0x10],0x0
    95de:	00 
    95df:	48 c7 07 00 00 00 00 	mov    QWORD PTR [rdi],0x0
    95e6:	48 c7 47 08 00 00 00 	mov    QWORD PTR [rdi+0x8],0x0
    95ed:	00 
    95ee:	48 c7 47 18 00 00 00 	mov    QWORD PTR [rdi+0x18],0x0
    95f5:	00 
    95f6:	48 c7 47 20 00 00 00 	mov    QWORD PTR [rdi+0x20],0x0
    95fd:	00 
    95fe:	8b 06                	mov    eax,DWORD PTR [rsi]
    9600:	25 ff 0f 00 0f       	and    eax,0xf000fff
    9605:	89 47 10             	mov    DWORD PTR [rdi+0x10],eax
    9608:	8b 16                	mov    edx,DWORD PTR [rsi]
    960a:	f7 c2 00 00 00 40    	test   edx,0x40000000
    9610:	74 08                	je     961a <__pthread_mutex_init+0x7a>
    9612:	83 c8 10             	or     eax,0x10
    9615:	89 47 10             	mov    DWORD PTR [rdi+0x10],eax
    9618:	8b 16                	mov    edx,DWORD PTR [rsi]
    961a:	89 d1                	mov    ecx,edx
    961c:	81 e1 00 00 00 30    	and    ecx,0x30000000
    9622:	81 f9 00 00 00 10    	cmp    ecx,0x10000000
    9628:	74 3e                	je     9668 <__pthread_mutex_init+0xc8>
    962a:	81 f9 00 00 00 20    	cmp    ecx,0x20000000
    9630:	75 1b                	jne    964d <__pthread_mutex_init+0xad>
    9632:	83 c8 40             	or     eax,0x40
    9635:	89 47 10             	mov    DWORD PTR [rdi+0x10],eax
    9638:	8b 06                	mov    eax,DWORD PTR [rsi]
    963a:	25 00 f0 ff 00       	and    eax,0xfff000
    963f:	c1 f8 0c             	sar    eax,0xc
    9642:	85 c0                	test   eax,eax
    9644:	74 32                	je     9678 <__pthread_mutex_init+0xd8>
    9646:	c1 e0 13             	shl    eax,0x13
    9649:	89 07                	mov    DWORD PTR [rdi],eax
    964b:	8b 16                	mov    edx,DWORD PTR [rsi]
    964d:	81 e2 00 00 00 c0    	and    edx,0xc0000000
    9653:	74 07                	je     965c <__pthread_mutex_init+0xbc>
    9655:	81 4f 10 80 00 00 00 	or     DWORD PTR [rdi+0x10],0x80
    965c:	90                   	nop
    965d:	31 c0                	xor    eax,eax
    965f:	48 83 c4 18          	add    rsp,0x18
    9663:	c3                   	ret    
    9664:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    9668:	83 c8 20             	or     eax,0x20
    966b:	89 47 10             	mov    DWORD PTR [rdi+0x10],eax
    966e:	8b 16                	mov    edx,DWORD PTR [rsi]
    9670:	eb db                	jmp    964d <__pthread_mutex_init+0xad>
    9672:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    9678:	8b 05 0e ec 20 00    	mov    eax,DWORD PTR [rip+0x20ec0e]        # 21828c <__sched_fifo_min_prio>
    967e:	83 f8 ff             	cmp    eax,0xffffffff
    9681:	74 14                	je     9697 <__pthread_mutex_init+0xf7>
    9683:	8b 15 03 ec 20 00    	mov    edx,DWORD PTR [rip+0x20ec03]        # 21828c <__sched_fifo_min_prio>
    9689:	31 c0                	xor    eax,eax
    968b:	85 d2                	test   edx,edx
    968d:	7e ba                	jle    9649 <__pthread_mutex_init+0xa9>
    968f:	8b 05 f7 eb 20 00    	mov    eax,DWORD PTR [rip+0x20ebf7]        # 21828c <__sched_fifo_min_prio>
    9695:	eb af                	jmp    9646 <__pthread_mutex_init+0xa6>
    9697:	48 89 74 24 08       	mov    QWORD PTR [rsp+0x8],rsi
    969c:	48 89 3c 24          	mov    QWORD PTR [rsp],rdi
    96a0:	e8 eb 85 00 00       	call   11c90 <__init_sched_fifo_prio>
    96a5:	48 8b 74 24 08       	mov    rsi,QWORD PTR [rsp+0x8]
    96aa:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
    96ae:	eb d3                	jmp    9683 <__pthread_mutex_init+0xe3>

00000000000096b0 <__pthread_mutex_destroy>:
    96b0:	90                   	nop
    96b1:	f6 47 10 10          	test   BYTE PTR [rdi+0x10],0x10
    96b5:	75 11                	jne    96c8 <__pthread_mutex_destroy+0x18>
    96b7:	8b 57 0c             	mov    edx,DWORD PTR [rdi+0xc]
    96ba:	b8 10 00 00 00       	mov    eax,0x10
    96bf:	85 d2                	test   edx,edx
    96c1:	74 05                	je     96c8 <__pthread_mutex_destroy+0x18>
    96c3:	f3 c3                	repz ret 
    96c5:	0f 1f 00             	nop    DWORD PTR [rax]
    96c8:	c7 47 10 ff ff ff ff 	mov    DWORD PTR [rdi+0x10],0xffffffff
    96cf:	31 c0                	xor    eax,eax
    96d1:	c3                   	ret    
    96d2:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    96d9:	00 00 00 
    96dc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000000096e0 <__pthread_mutex_lock_full>:
    96e0:	41 57                	push   r15
    96e2:	41 56                	push   r14
    96e4:	41 55                	push   r13
    96e6:	41 54                	push   r12
    96e8:	55                   	push   rbp
    96e9:	53                   	push   rbx
    96ea:	48 81 ec 88 00 00 00 	sub    rsp,0x88
    96f1:	64 8b 2c 25 d0 02 00 	mov    ebp,DWORD PTR fs:0x2d0
    96f8:	00 
    96f9:	8b 47 10             	mov    eax,DWORD PTR [rdi+0x10]
    96fc:	89 c1                	mov    ecx,eax
    96fe:	83 e1 7f             	and    ecx,0x7f
    9701:	83 e9 10             	sub    ecx,0x10
    9704:	83 f9 33             	cmp    ecx,0x33
    9707:	76 17                	jbe    9720 <__pthread_mutex_lock_full+0x40>
    9709:	b8 16 00 00 00       	mov    eax,0x16
    970e:	48 81 c4 88 00 00 00 	add    rsp,0x88
    9715:	5b                   	pop    rbx
    9716:	5d                   	pop    rbp
    9717:	41 5c                	pop    r12
    9719:	41 5d                	pop    r13
    971b:	41 5e                	pop    r14
    971d:	41 5f                	pop    r15
    971f:	c3                   	ret    
    9720:	ba 01 00 00 00       	mov    edx,0x1
    9725:	48 89 fb             	mov    rbx,rdi
    9728:	48 d3 e2             	shl    rdx,cl
    972b:	48 b9 00 00 0f 00 0f 	movabs rcx,0xf000f0000
    9732:	00 00 00 
    9735:	48 85 ca             	test   rdx,rcx
    9738:	0f 84 ec 00 00 00    	je     982a <__pthread_mutex_lock_full+0x14a>
    973e:	41 89 c1             	mov    r9d,eax
    9741:	41 83 e1 03          	and    r9d,0x3
    9745:	83 e0 10             	and    eax,0x10
    9748:	41 89 c0             	mov    r8d,eax
    974b:	74 11                	je     975e <__pthread_mutex_lock_full+0x7e>
    974d:	48 8d 47 20          	lea    rax,[rdi+0x20]
    9751:	48 83 c8 01          	or     rax,0x1
    9755:	64 48 89 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,rax
    975c:	00 00 
    975e:	8b 03                	mov    eax,DWORD PTR [rbx]
    9760:	25 ff ff ff 3f       	and    eax,0x3fffffff
    9765:	39 c5                	cmp    ebp,eax
    9767:	0f 84 33 04 00 00    	je     9ba0 <__pthread_mutex_lock_full+0x4c0>
    976d:	31 c0                	xor    eax,eax
    976f:	f0 0f b1 2b          	lock cmpxchg DWORD PTR [rbx],ebp
    9773:	85 c0                	test   eax,eax
    9775:	0f 84 b2 01 00 00    	je     992d <__pthread_mutex_lock_full+0x24d>
    977b:	45 85 c0             	test   r8d,r8d
    977e:	be 06 00 00 00       	mov    esi,0x6
    9783:	75 10                	jne    9795 <__pthread_mutex_lock_full+0xb5>
    9785:	8b 73 10             	mov    esi,DWORD PTR [rbx+0x10]
    9788:	81 e6 80 00 00 00    	and    esi,0x80
    978e:	40 80 f6 86          	xor    sil,0x86
    9792:	48 63 f6             	movsxd rsi,esi
    9795:	45 31 d2             	xor    r10d,r10d
    9798:	ba 01 00 00 00       	mov    edx,0x1
    979d:	48 89 df             	mov    rdi,rbx
    97a0:	b8 ca 00 00 00       	mov    eax,0xca
    97a5:	0f 05                	syscall 
    97a7:	3d 00 f0 ff ff       	cmp    eax,0xfffff000
    97ac:	0f 86 4f 01 00 00    	jbe    9901 <__pthread_mutex_lock_full+0x221>
    97b2:	89 c2                	mov    edx,eax
    97b4:	83 e2 df             	and    edx,0xffffffdf
    97b7:	83 fa dd             	cmp    edx,0xffffffdd
    97ba:	0f 85 41 01 00 00    	jne    9901 <__pthread_mutex_lock_full+0x221>
    97c0:	83 f8 dd             	cmp    eax,0xffffffdd
    97c3:	0f 84 53 04 00 00    	je     9c1c <__pthread_mutex_lock_full+0x53c>
    97c9:	83 f8 fd             	cmp    eax,0xfffffffd
    97cc:	75 09                	jne    97d7 <__pthread_mutex_lock_full+0xf7>
    97ce:	45 85 c0             	test   r8d,r8d
    97d1:	0f 85 ff 03 00 00    	jne    9bd6 <__pthread_mutex_lock_full+0x4f6>
    97d7:	48 8b 2d aa e7 20 00 	mov    rbp,QWORD PTR [rip+0x20e7aa]        # 217f88 <_DYNAMIC+0x238>
    97de:	49 89 e0             	mov    r8,rsp
    97e1:	41 b9 0e 00 00 00    	mov    r9d,0xe
    97e7:	bb 82 00 00 00       	mov    ebx,0x82
    97ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    97f0:	41 ba 08 00 00 00    	mov    r10d,0x8
    97f6:	4c 89 c2             	mov    rdx,r8
    97f9:	31 f6                	xor    esi,esi
    97fb:	31 ff                	xor    edi,edi
    97fd:	44 89 c8             	mov    eax,r9d
    9800:	0f 05                	syscall 
    9802:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    9808:	77 18                	ja     9822 <__pthread_mutex_lock_full+0x142>
    980a:	85 c0                	test   eax,eax
    980c:	75 e2                	jne    97f0 <__pthread_mutex_lock_full+0x110>
    980e:	be 08 00 00 00       	mov    esi,0x8
    9813:	4c 89 c7             	mov    rdi,r8
    9816:	89 d8                	mov    eax,ebx
    9818:	0f 05                	syscall 
    981a:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    9820:	76 ce                	jbe    97f0 <__pthread_mutex_lock_full+0x110>
    9822:	f7 d8                	neg    eax
    9824:	64 89 45 00          	mov    DWORD PTR fs:[rbp+0x0],eax
    9828:	eb c6                	jmp    97f0 <__pthread_mutex_lock_full+0x110>
    982a:	f6 c2 0f             	test   dl,0xf
    982d:	0f 85 65 01 00 00    	jne    9998 <__pthread_mutex_lock_full+0x2b8>
    9833:	48 b9 00 00 00 00 00 	movabs rcx,0xf000000000000
    983a:	00 0f 00 
    983d:	48 85 ca             	test   rdx,rcx
    9840:	0f 84 c3 fe ff ff    	je     9709 <__pthread_mutex_lock_full+0x29>
    9846:	3b 6f 08             	cmp    ebp,DWORD PTR [rdi+0x8]
    9849:	8b 0f                	mov    ecx,DWORD PTR [rdi]
    984b:	41 bc ff ff ff ff    	mov    r12d,0xffffffff
    9851:	0f 84 9e 03 00 00    	je     9bf5 <__pthread_mutex_lock_full+0x515>
    9857:	41 be ca 00 00 00    	mov    r14d,0xca
    985d:	c1 e9 13             	shr    ecx,0x13
    9860:	41 89 cd             	mov    r13d,ecx
    9863:	e8 e8 87 00 00       	call   12050 <__pthread_current_priority>
    9868:	41 39 c5             	cmp    r13d,eax
    986b:	0f 8c d8 03 00 00    	jl     9c49 <__pthread_mutex_lock_full+0x569>
    9871:	44 89 ee             	mov    esi,r13d
    9874:	44 89 e7             	mov    edi,r12d
    9877:	e8 44 84 00 00       	call   11cc0 <__pthread_tpp_change_priority>
    987c:	85 c0                	test   eax,eax
    987e:	0f 85 8a fe ff ff    	jne    970e <__pthread_mutex_lock_full+0x2e>
    9884:	45 89 e8             	mov    r8d,r13d
    9887:	41 c1 e0 13          	shl    r8d,0x13
    988b:	45 89 c4             	mov    r12d,r8d
    988e:	44 89 c0             	mov    eax,r8d
    9891:	41 83 cc 01          	or     r12d,0x1
    9895:	f0 44 0f b1 23       	lock cmpxchg DWORD PTR [rbx],r12d
    989a:	41 39 c0             	cmp    r8d,eax
    989d:	0f 84 cf 02 00 00    	je     9b72 <__pthread_mutex_lock_full+0x492>
    98a3:	45 89 c1             	mov    r9d,r8d
    98a6:	41 83 c9 02          	or     r9d,0x2
    98aa:	4d 63 f9             	movsxd r15,r9d
    98ad:	eb 33                	jmp    98e2 <__pthread_mutex_lock_full+0x202>
    98af:	90                   	nop
    98b0:	41 39 c0             	cmp    r8d,eax
    98b3:	74 1c                	je     98d1 <__pthread_mutex_lock_full+0x1f1>
    98b5:	8b 73 10             	mov    esi,DWORD PTR [rbx+0x10]
    98b8:	45 31 d2             	xor    r10d,r10d
    98bb:	4c 89 fa             	mov    rdx,r15
    98be:	48 89 df             	mov    rdi,rbx
    98c1:	44 89 f0             	mov    eax,r14d
    98c4:	f7 d6                	not    esi
    98c6:	81 e6 80 00 00 00    	and    esi,0x80
    98cc:	48 63 f6             	movsxd rsi,esi
    98cf:	0f 05                	syscall 
    98d1:	44 89 c0             	mov    eax,r8d
    98d4:	f0 44 0f b1 0b       	lock cmpxchg DWORD PTR [rbx],r9d
    98d9:	41 39 c0             	cmp    r8d,eax
    98dc:	0f 84 90 02 00 00    	je     9b72 <__pthread_mutex_lock_full+0x492>
    98e2:	44 89 e0             	mov    eax,r12d
    98e5:	f0 44 0f b1 0b       	lock cmpxchg DWORD PTR [rbx],r9d
    98ea:	89 c2                	mov    edx,eax
    98ec:	89 c1                	mov    ecx,eax
    98ee:	81 e2 00 00 f8 ff    	and    edx,0xfff80000
    98f4:	41 39 d0             	cmp    r8d,edx
    98f7:	74 b7                	je     98b0 <__pthread_mutex_lock_full+0x1d0>
    98f9:	45 89 ec             	mov    r12d,r13d
    98fc:	e9 5c ff ff ff       	jmp    985d <__pthread_mutex_lock_full+0x17d>
    9901:	45 85 c0             	test   r8d,r8d
    9904:	8b 03                	mov    eax,DWORD PTR [rbx]
    9906:	0f 85 ec 01 00 00    	jne    9af8 <__pthread_mutex_lock_full+0x418>
    990c:	a9 00 00 00 40       	test   eax,0x40000000
    9911:	0f 85 4e 03 00 00    	jne    9c65 <__pthread_mutex_lock_full+0x585>
    9917:	c7 43 04 01 00 00 00 	mov    DWORD PTR [rbx+0x4],0x1
    991e:	89 6b 08             	mov    DWORD PTR [rbx+0x8],ebp
    9921:	83 43 0c 01          	add    DWORD PTR [rbx+0xc],0x1
    9925:	90                   	nop
    9926:	31 c0                	xor    eax,eax
    9928:	e9 e1 fd ff ff       	jmp    970e <__pthread_mutex_lock_full+0x2e>
    992d:	45 85 c0             	test   r8d,r8d
    9930:	74 e5                	je     9917 <__pthread_mutex_lock_full+0x237>
    9932:	81 7b 08 fe ff ff 7f 	cmp    DWORD PTR [rbx+0x8],0x7ffffffe
    9939:	0f 84 4f 03 00 00    	je     9c8e <__pthread_mutex_lock_full+0x5ae>
    993f:	c7 43 04 01 00 00 00 	mov    DWORD PTR [rbx+0x4],0x1
    9946:	64 48 8b 14 25 e0 02 	mov    rdx,QWORD PTR fs:0x2e0
    994d:	00 00 
    994f:	48 8d 43 20          	lea    rax,[rbx+0x20]
    9953:	48 83 e2 fe          	and    rdx,0xfffffffffffffffe
    9957:	48 89 42 f8          	mov    QWORD PTR [rdx-0x8],rax
    995b:	64 48 8b 14 25 e0 02 	mov    rdx,QWORD PTR fs:0x2e0
    9962:	00 00 
    9964:	48 89 53 20          	mov    QWORD PTR [rbx+0x20],rdx
    9968:	48 83 c8 01          	or     rax,0x1
    996c:	64 48 8b 14 25 10 00 	mov    rdx,QWORD PTR fs:0x10
    9973:	00 00 
    9975:	48 81 c2 e0 02 00 00 	add    rdx,0x2e0
    997c:	48 89 53 18          	mov    QWORD PTR [rbx+0x18],rdx
    9980:	64 48 89 04 25 e0 02 	mov    QWORD PTR fs:0x2e0,rax
    9987:	00 00 
    9989:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    9990:	00 00 00 00 00 00 
    9996:	eb 86                	jmp    991e <__pthread_mutex_lock_full+0x23e>
    9998:	4c 8d 47 20          	lea    r8,[rdi+0x20]
    999c:	64 4c 89 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,r8
    99a3:	00 00 
    99a5:	8b 17                	mov    edx,DWORD PTR [rdi]
    99a7:	45 31 d2             	xor    r10d,r10d
    99aa:	41 b9 80 00 00 00    	mov    r9d,0x80
    99b0:	89 d0                	mov    eax,edx
    99b2:	25 00 00 00 40       	and    eax,0x40000000
    99b7:	0f 85 9b 00 00 00    	jne    9a58 <__pthread_mutex_lock_full+0x378>
    99bd:	81 e2 ff ff ff 3f    	and    edx,0x3fffffff
    99c3:	39 d5                	cmp    ebp,edx
    99c5:	0f 84 ea 00 00 00    	je     9ab5 <__pthread_mutex_lock_full+0x3d5>
    99cb:	89 ef                	mov    edi,ebp
    99cd:	44 89 d0             	mov    eax,r10d
    99d0:	44 89 ce             	mov    esi,r9d
    99d3:	f0 0f b1 3b          	lock cmpxchg DWORD PTR [rbx],edi
    99d7:	74 16                	je     99ef <__pthread_mutex_lock_full+0x30f>
    99d9:	48 8d 3b             	lea    rdi,[rbx]
    99dc:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    99e3:	e8 b8 69 00 00       	call   103a0 <__lll_robust_lock_wait>
    99e8:	48 81 c4 80 00 00 00 	add    rsp,0x80
    99ef:	81 7b 08 fe ff ff 7f 	cmp    DWORD PTR [rbx+0x8],0x7ffffffe
    99f6:	89 c2                	mov    edx,eax
    99f8:	74 7d                	je     9a77 <__pthread_mutex_lock_full+0x397>
    99fa:	a9 00 00 00 40       	test   eax,0x40000000
    99ff:	75 af                	jne    99b0 <__pthread_mutex_lock_full+0x2d0>
    9a01:	c7 43 04 01 00 00 00 	mov    DWORD PTR [rbx+0x4],0x1
    9a08:	64 48 8b 04 25 e0 02 	mov    rax,QWORD PTR fs:0x2e0
    9a0f:	00 00 
    9a11:	48 83 e0 fe          	and    rax,0xfffffffffffffffe
    9a15:	4c 89 40 f8          	mov    QWORD PTR [rax-0x8],r8
    9a19:	64 48 8b 04 25 e0 02 	mov    rax,QWORD PTR fs:0x2e0
    9a20:	00 00 
    9a22:	48 89 43 20          	mov    QWORD PTR [rbx+0x20],rax
    9a26:	64 48 8b 04 25 10 00 	mov    rax,QWORD PTR fs:0x10
    9a2d:	00 00 
    9a2f:	48 05 e0 02 00 00    	add    rax,0x2e0
    9a35:	48 89 43 18          	mov    QWORD PTR [rbx+0x18],rax
    9a39:	64 4c 89 04 25 e0 02 	mov    QWORD PTR fs:0x2e0,r8
    9a40:	00 00 
    9a42:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    9a49:	00 00 00 00 00 00 
    9a4f:	e9 ca fe ff ff       	jmp    991e <__pthread_mutex_lock_full+0x23e>
    9a54:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    9a58:	89 d1                	mov    ecx,edx
    9a5a:	89 d0                	mov    eax,edx
    9a5c:	81 e1 00 00 00 80    	and    ecx,0x80000000
    9a62:	09 e9                	or     ecx,ebp
    9a64:	f0 0f b1 0b          	lock cmpxchg DWORD PTR [rbx],ecx
    9a68:	39 c2                	cmp    edx,eax
    9a6a:	0f 84 67 02 00 00    	je     9cd7 <__pthread_mutex_lock_full+0x5f7>
    9a70:	89 c2                	mov    edx,eax
    9a72:	e9 39 ff ff ff       	jmp    99b0 <__pthread_mutex_lock_full+0x2d0>
    9a77:	c7 43 04 00 00 00 00 	mov    DWORD PTR [rbx+0x4],0x0
    9a7e:	be 80 00 00 00       	mov    esi,0x80
    9a83:	f0 ff 0b             	lock dec DWORD PTR [rbx]
    9a86:	74 16                	je     9a9e <__pthread_mutex_lock_full+0x3be>
    9a88:	48 8d 3b             	lea    rdi,[rbx]
    9a8b:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    9a92:	e8 59 68 00 00       	call   102f0 <__lll_unlock_wake>
    9a97:	48 81 c4 80 00 00 00 	add    rsp,0x80
    9a9e:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    9aa5:	00 00 00 00 00 00 
    9aab:	b8 83 00 00 00       	mov    eax,0x83
    9ab0:	e9 59 fc ff ff       	jmp    970e <__pthread_mutex_lock_full+0x2e>
    9ab5:	8b 53 10             	mov    edx,DWORD PTR [rbx+0x10]
    9ab8:	83 e2 7f             	and    edx,0x7f
    9abb:	83 fa 12             	cmp    edx,0x12
    9abe:	0f 84 fc 01 00 00    	je     9cc0 <__pthread_mutex_lock_full+0x5e0>
    9ac4:	83 fa 11             	cmp    edx,0x11
    9ac7:	0f 85 fe fe ff ff    	jne    99cb <__pthread_mutex_lock_full+0x2eb>
    9acd:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    9ad4:	00 00 00 00 00 00 
    9ada:	8b 53 04             	mov    edx,DWORD PTR [rbx+0x4]
    9add:	83 fa ff             	cmp    edx,0xffffffff
    9ae0:	0f 84 2c 01 00 00    	je     9c12 <__pthread_mutex_lock_full+0x532>
    9ae6:	83 c2 01             	add    edx,0x1
    9ae9:	89 53 04             	mov    DWORD PTR [rbx+0x4],edx
    9aec:	e9 1d fc ff ff       	jmp    970e <__pthread_mutex_lock_full+0x2e>
    9af1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    9af8:	a9 00 00 00 40       	test   eax,0x40000000
    9afd:	0f 84 2f fe ff ff    	je     9932 <__pthread_mutex_lock_full+0x252>
    9b03:	f0 81 23 ff ff ff bf 	lock and DWORD PTR [rbx],0xbfffffff
    9b0a:	c7 43 04 01 00 00 00 	mov    DWORD PTR [rbx+0x4],0x1
    9b11:	c7 43 08 ff ff ff 7f 	mov    DWORD PTR [rbx+0x8],0x7fffffff
    9b18:	64 48 8b 14 25 e0 02 	mov    rdx,QWORD PTR fs:0x2e0
    9b1f:	00 00 
    9b21:	48 8d 43 20          	lea    rax,[rbx+0x20]
    9b25:	48 83 e2 fe          	and    rdx,0xfffffffffffffffe
    9b29:	48 89 42 f8          	mov    QWORD PTR [rdx-0x8],rax
    9b2d:	64 48 8b 14 25 e0 02 	mov    rdx,QWORD PTR fs:0x2e0
    9b34:	00 00 
    9b36:	48 89 53 20          	mov    QWORD PTR [rbx+0x20],rdx
    9b3a:	48 83 c8 01          	or     rax,0x1
    9b3e:	64 48 8b 14 25 10 00 	mov    rdx,QWORD PTR fs:0x10
    9b45:	00 00 
    9b47:	48 81 c2 e0 02 00 00 	add    rdx,0x2e0
    9b4e:	48 89 53 18          	mov    QWORD PTR [rbx+0x18],rdx
    9b52:	64 48 89 04 25 e0 02 	mov    QWORD PTR fs:0x2e0,rax
    9b59:	00 00 
    9b5b:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    9b62:	00 00 00 00 00 00 
    9b68:	b8 82 00 00 00       	mov    eax,0x82
    9b6d:	e9 9c fb ff ff       	jmp    970e <__pthread_mutex_lock_full+0x2e>
    9b72:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
    9b75:	85 c0                	test   eax,eax
    9b77:	0f 84 9a fd ff ff    	je     9917 <__pthread_mutex_lock_full+0x237>
    9b7d:	48 8d 0d dc 95 00 00 	lea    rcx,[rip+0x95dc]        # 13160 <__PRETTY_FUNCTION__.8794>
    9b84:	48 8d 35 6d 94 00 00 	lea    rsi,[rip+0x946d]        # 12ff8 <default_mutexattr+0x4>
    9b8b:	48 8d 3d 83 94 00 00 	lea    rdi,[rip+0x9483]        # 13015 <default_mutexattr+0x21>
    9b92:	ba ef 01 00 00       	mov    edx,0x1ef
    9b97:	e8 34 bb ff ff       	call   56d0 <__assert_fail@plt>
    9b9c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    9ba0:	41 83 f9 02          	cmp    r9d,0x2
    9ba4:	0f 84 16 01 00 00    	je     9cc0 <__pthread_mutex_lock_full+0x5e0>
    9baa:	41 83 f9 01          	cmp    r9d,0x1
    9bae:	0f 85 b9 fb ff ff    	jne    976d <__pthread_mutex_lock_full+0x8d>
    9bb4:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    9bbb:	00 00 00 00 00 00 
    9bc1:	8b 43 04             	mov    eax,DWORD PTR [rbx+0x4]
    9bc4:	83 f8 ff             	cmp    eax,0xffffffff
    9bc7:	74 49                	je     9c12 <__pthread_mutex_lock_full+0x532>
    9bc9:	83 c0 01             	add    eax,0x1
    9bcc:	89 43 04             	mov    DWORD PTR [rbx+0x4],eax
    9bcf:	31 c0                	xor    eax,eax
    9bd1:	e9 38 fb ff ff       	jmp    970e <__pthread_mutex_lock_full+0x2e>
    9bd6:	48 8d 0d 83 95 00 00 	lea    rcx,[rip+0x9583]        # 13160 <__PRETTY_FUNCTION__.8794>
    9bdd:	48 8d 35 14 94 00 00 	lea    rsi,[rip+0x9414]        # 12ff8 <default_mutexattr+0x4>
    9be4:	48 8d 3d c5 94 00 00 	lea    rdi,[rip+0x94c5]        # 130b0 <default_mutexattr+0xbc>
    9beb:	ba 60 01 00 00       	mov    edx,0x160
    9bf0:	e8 db ba ff ff       	call   56d0 <__assert_fail@plt>
    9bf5:	83 e0 03             	and    eax,0x3
    9bf8:	83 f8 02             	cmp    eax,0x2
    9bfb:	0f 84 83 00 00 00    	je     9c84 <__pthread_mutex_lock_full+0x5a4>
    9c01:	83 f8 01             	cmp    eax,0x1
    9c04:	0f 85 4d fc ff ff    	jne    9857 <__pthread_mutex_lock_full+0x177>
    9c0a:	8b 47 04             	mov    eax,DWORD PTR [rdi+0x4]
    9c0d:	44 39 e0             	cmp    eax,r12d
    9c10:	75 b7                	jne    9bc9 <__pthread_mutex_lock_full+0x4e9>
    9c12:	b8 0b 00 00 00       	mov    eax,0xb
    9c17:	e9 f2 fa ff ff       	jmp    970e <__pthread_mutex_lock_full+0x2e>
    9c1c:	41 83 e9 01          	sub    r9d,0x1
    9c20:	41 83 f9 01          	cmp    r9d,0x1
    9c24:	0f 87 ad fb ff ff    	ja     97d7 <__pthread_mutex_lock_full+0xf7>
    9c2a:	48 8d 0d 2f 95 00 00 	lea    rcx,[rip+0x952f]        # 13160 <__PRETTY_FUNCTION__.8794>
    9c31:	48 8d 35 c0 93 00 00 	lea    rsi,[rip+0x93c0]        # 12ff8 <default_mutexattr+0x4>
    9c38:	48 8d 3d f1 93 00 00 	lea    rdi,[rip+0x93f1]        # 13030 <default_mutexattr+0x3c>
    9c3f:	ba 5d 01 00 00       	mov    edx,0x15d
    9c44:	e8 87 ba ff ff       	call   56d0 <__assert_fail@plt>
    9c49:	41 83 fc ff          	cmp    r12d,0xffffffff
    9c4d:	0f 84 b6 fa ff ff    	je     9709 <__pthread_mutex_lock_full+0x29>
    9c53:	be ff ff ff ff       	mov    esi,0xffffffff
    9c58:	44 89 e7             	mov    edi,r12d
    9c5b:	e8 60 80 00 00       	call   11cc0 <__pthread_tpp_change_priority>
    9c60:	e9 a4 fa ff ff       	jmp    9709 <__pthread_mutex_lock_full+0x29>
    9c65:	48 8d 0d f4 94 00 00 	lea    rcx,[rip+0x94f4]        # 13160 <__PRETTY_FUNCTION__.8794>
    9c6c:	48 8d 35 85 93 00 00 	lea    rsi,[rip+0x9385]        # 12ff8 <default_mutexattr+0x4>
    9c73:	48 8d 3d 6e 94 00 00 	lea    rdi,[rip+0x946e]        # 130e8 <default_mutexattr+0xf4>
    9c7a:	ba 69 01 00 00       	mov    edx,0x169
    9c7f:	e8 4c ba ff ff       	call   56d0 <__assert_fail@plt>
    9c84:	b8 23 00 00 00       	mov    eax,0x23
    9c89:	e9 80 fa ff ff       	jmp    970e <__pthread_mutex_lock_full+0x2e>
    9c8e:	c7 43 04 00 00 00 00 	mov    DWORD PTR [rbx+0x4],0x0
    9c95:	45 31 d2             	xor    r10d,r10d
    9c98:	31 d2                	xor    edx,edx
    9c9a:	be 07 00 00 00       	mov    esi,0x7
    9c9f:	48 89 df             	mov    rdi,rbx
    9ca2:	b8 ca 00 00 00       	mov    eax,0xca
    9ca7:	0f 05                	syscall 
    9ca9:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    9cb0:	00 00 00 00 00 00 
    9cb6:	b8 83 00 00 00       	mov    eax,0x83
    9cbb:	e9 4e fa ff ff       	jmp    970e <__pthread_mutex_lock_full+0x2e>
    9cc0:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    9cc7:	00 00 00 00 00 00 
    9ccd:	b8 23 00 00 00       	mov    eax,0x23
    9cd2:	e9 37 fa ff ff       	jmp    970e <__pthread_mutex_lock_full+0x2e>
    9cd7:	c7 43 04 01 00 00 00 	mov    DWORD PTR [rbx+0x4],0x1
    9cde:	c7 43 08 ff ff ff 7f 	mov    DWORD PTR [rbx+0x8],0x7fffffff
    9ce5:	64 48 8b 04 25 e0 02 	mov    rax,QWORD PTR fs:0x2e0
    9cec:	00 00 
    9cee:	48 83 e0 fe          	and    rax,0xfffffffffffffffe
    9cf2:	4c 89 40 f8          	mov    QWORD PTR [rax-0x8],r8
    9cf6:	64 48 8b 04 25 e0 02 	mov    rax,QWORD PTR fs:0x2e0
    9cfd:	00 00 
    9cff:	48 89 43 20          	mov    QWORD PTR [rbx+0x20],rax
    9d03:	64 48 8b 04 25 10 00 	mov    rax,QWORD PTR fs:0x10
    9d0a:	00 00 
    9d0c:	48 05 e0 02 00 00    	add    rax,0x2e0
    9d12:	48 89 43 18          	mov    QWORD PTR [rbx+0x18],rax
    9d16:	64 4c 89 04 25 e0 02 	mov    QWORD PTR fs:0x2e0,r8
    9d1d:	00 00 
    9d1f:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    9d26:	00 00 00 00 00 00 
    9d2c:	b8 82 00 00 00       	mov    eax,0x82
    9d31:	e9 d8 f9 ff ff       	jmp    970e <__pthread_mutex_lock_full+0x2e>
    9d36:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    9d3d:	00 00 00 

0000000000009d40 <__pthread_mutex_lock>:
    9d40:	48 83 ec 08          	sub    rsp,0x8
    9d44:	8b 57 10             	mov    edx,DWORD PTR [rdi+0x10]
    9d47:	89 d1                	mov    ecx,edx
    9d49:	81 e1 7f 01 00 00    	and    ecx,0x17f
    9d4f:	90                   	nop
    9d50:	89 d0                	mov    eax,edx
    9d52:	83 e0 7c             	and    eax,0x7c
    9d55:	0f 85 95 00 00 00    	jne    9df0 <__pthread_mutex_lock+0xb0>
    9d5b:	85 c9                	test   ecx,ecx
    9d5d:	49 89 f8             	mov    r8,rdi
    9d60:	0f 85 9a 00 00 00    	jne    9e00 <__pthread_mutex_lock+0xc0>
    9d66:	8b 0d b4 26 21 00    	mov    ecx,DWORD PTR [rip+0x2126b4]        # 21c420 <__pthread_force_elision>
    9d6c:	85 c9                	test   ecx,ecx
    9d6e:	74 28                	je     9d98 <__pthread_mutex_lock+0x58>
    9d70:	f6 c6 03             	test   dh,0x3
    9d73:	75 23                	jne    9d98 <__pthread_mutex_lock+0x58>
    9d75:	80 ce 01             	or     dh,0x1
    9d78:	89 57 10             	mov    DWORD PTR [rdi+0x10],edx
    9d7b:	49 8d 70 16          	lea    rsi,[r8+0x16]
    9d7f:	81 e2 80 00 00 00    	and    edx,0x80
    9d85:	4c 89 c7             	mov    rdi,r8
    9d88:	48 83 c4 08          	add    rsp,0x8
    9d8c:	e9 7f 8a 00 00       	jmp    12810 <__lll_lock_elision>
    9d91:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    9d98:	81 e2 80 00 00 00    	and    edx,0x80
    9d9e:	bf 01 00 00 00       	mov    edi,0x1
    9da3:	31 c0                	xor    eax,eax
    9da5:	89 d6                	mov    esi,edx
    9da7:	f0 41 0f b1 38       	lock cmpxchg DWORD PTR [r8],edi
    9dac:	74 16                	je     9dc4 <__pthread_mutex_lock+0x84>
    9dae:	49 8d 38             	lea    rdi,[r8]
    9db1:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    9db8:	e8 93 64 00 00       	call   10250 <__lll_lock_wait>
    9dbd:	48 81 c4 80 00 00 00 	add    rsp,0x80
    9dc4:	41 8b 50 08          	mov    edx,DWORD PTR [r8+0x8]
    9dc8:	85 d2                	test   edx,edx
    9dca:	0f 85 79 01 00 00    	jne    9f49 <__pthread_mutex_lock+0x209>
    9dd0:	64 8b 04 25 d0 02 00 	mov    eax,DWORD PTR fs:0x2d0
    9dd7:	00 
    9dd8:	41 89 40 08          	mov    DWORD PTR [r8+0x8],eax
    9ddc:	41 83 40 0c 01       	add    DWORD PTR [r8+0xc],0x1
    9de1:	90                   	nop
    9de2:	31 c0                	xor    eax,eax
    9de4:	48 83 c4 08          	add    rsp,0x8
    9de8:	c3                   	ret    
    9de9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    9df0:	48 83 c4 08          	add    rsp,0x8
    9df4:	e9 e7 f8 ff ff       	jmp    96e0 <__pthread_mutex_lock_full>
    9df9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    9e00:	81 f9 00 01 00 00    	cmp    ecx,0x100
    9e06:	0f 84 6f ff ff ff    	je     9d7b <__pthread_mutex_lock+0x3b>
    9e0c:	89 d7                	mov    edi,edx
    9e0e:	83 e7 7f             	and    edi,0x7f
    9e11:	83 ff 01             	cmp    edi,0x1
    9e14:	75 67                	jne    9e7d <__pthread_mutex_lock+0x13d>
    9e16:	64 8b 0c 25 d0 02 00 	mov    ecx,DWORD PTR fs:0x2d0
    9e1d:	00 
    9e1e:	41 3b 48 08          	cmp    ecx,DWORD PTR [r8+0x8]
    9e22:	74 3e                	je     9e62 <__pthread_mutex_lock+0x122>
    9e24:	81 e2 80 00 00 00    	and    edx,0x80
    9e2a:	89 d6                	mov    esi,edx
    9e2c:	f0 41 0f b1 38       	lock cmpxchg DWORD PTR [r8],edi
    9e31:	74 16                	je     9e49 <__pthread_mutex_lock+0x109>
    9e33:	49 8d 38             	lea    rdi,[r8]
    9e36:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    9e3d:	e8 0e 64 00 00       	call   10250 <__lll_lock_wait>
    9e42:	48 81 c4 80 00 00 00 	add    rsp,0x80
    9e49:	41 8b 40 08          	mov    eax,DWORD PTR [r8+0x8]
    9e4d:	85 c0                	test   eax,eax
    9e4f:	0f 85 3e 01 00 00    	jne    9f93 <__pthread_mutex_lock+0x253>
    9e55:	41 c7 40 04 01 00 00 	mov    DWORD PTR [r8+0x4],0x1
    9e5c:	00 
    9e5d:	e9 6e ff ff ff       	jmp    9dd0 <__pthread_mutex_lock+0x90>
    9e62:	41 8b 40 04          	mov    eax,DWORD PTR [r8+0x4]
    9e66:	83 f8 ff             	cmp    eax,0xffffffff
    9e69:	0f 84 f9 00 00 00    	je     9f68 <__pthread_mutex_lock+0x228>
    9e6f:	83 c0 01             	add    eax,0x1
    9e72:	41 89 40 04          	mov    DWORD PTR [r8+0x4],eax
    9e76:	31 c0                	xor    eax,eax
    9e78:	e9 67 ff ff ff       	jmp    9de4 <__pthread_mutex_lock+0xa4>
    9e7d:	83 ff 03             	cmp    edi,0x3
    9e80:	0f 85 ec 00 00 00    	jne    9f72 <__pthread_mutex_lock+0x232>
    9e86:	83 3d 17 25 21 00 00 	cmp    DWORD PTR [rip+0x212517],0x0        # 21c3a4 <__is_smp>
    9e8d:	0f 84 05 ff ff ff    	je     9d98 <__pthread_mutex_lock+0x58>
    9e93:	ba 01 00 00 00       	mov    edx,0x1
    9e98:	f0 41 0f b1 10       	lock cmpxchg DWORD PTR [r8],edx
    9e9d:	85 c0                	test   eax,eax
    9e9f:	74 7e                	je     9f1f <__pthread_mutex_lock+0x1df>
    9ea1:	41 0f bf 40 14       	movsx  eax,WORD PTR [r8+0x14]
    9ea6:	be 01 00 00 00       	mov    esi,0x1
    9eab:	8d 4c 00 0a          	lea    ecx,[rax+rax*1+0xa]
    9eaf:	b8 64 00 00 00       	mov    eax,0x64
    9eb4:	83 f9 64             	cmp    ecx,0x64
    9eb7:	0f 4f c8             	cmovg  ecx,eax
    9eba:	31 d2                	xor    edx,edx
    9ebc:	31 ff                	xor    edi,edi
    9ebe:	eb 0d                	jmp    9ecd <__pthread_mutex_lock+0x18d>
    9ec0:	f3 90                	pause  
    9ec2:	89 f8                	mov    eax,edi
    9ec4:	f0 41 0f b1 30       	lock cmpxchg DWORD PTR [r8],esi
    9ec9:	85 c0                	test   eax,eax
    9ecb:	74 38                	je     9f05 <__pthread_mutex_lock+0x1c5>
    9ecd:	83 c2 01             	add    edx,0x1
    9ed0:	8d 42 ff             	lea    eax,[rdx-0x1]
    9ed3:	39 c1                	cmp    ecx,eax
    9ed5:	7f e9                	jg     9ec0 <__pthread_mutex_lock+0x180>
    9ed7:	41 8b 70 10          	mov    esi,DWORD PTR [r8+0x10]
    9edb:	bf 01 00 00 00       	mov    edi,0x1
    9ee0:	31 c0                	xor    eax,eax
    9ee2:	81 e6 80 00 00 00    	and    esi,0x80
    9ee8:	f0 41 0f b1 38       	lock cmpxchg DWORD PTR [r8],edi
    9eed:	74 16                	je     9f05 <__pthread_mutex_lock+0x1c5>
    9eef:	49 8d 38             	lea    rdi,[r8]
    9ef2:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    9ef9:	e8 52 63 00 00       	call   10250 <__lll_lock_wait>
    9efe:	48 81 c4 80 00 00 00 	add    rsp,0x80
    9f05:	41 0f bf 40 14       	movsx  eax,WORD PTR [r8+0x14]
    9f0a:	be 08 00 00 00       	mov    esi,0x8
    9f0f:	29 c2                	sub    edx,eax
    9f11:	89 c1                	mov    ecx,eax
    9f13:	89 d0                	mov    eax,edx
    9f15:	99                   	cdq    
    9f16:	f7 fe                	idiv   esi
    9f18:	01 c8                	add    eax,ecx
    9f1a:	66 41 89 40 14       	mov    WORD PTR [r8+0x14],ax
    9f1f:	41 83 78 08 00       	cmp    DWORD PTR [r8+0x8],0x0
    9f24:	0f 84 a6 fe ff ff    	je     9dd0 <__pthread_mutex_lock+0x90>
    9f2a:	48 8d 0d 4f 92 00 00 	lea    rcx,[rip+0x924f]        # 13180 <__PRETTY_FUNCTION__.8623>
    9f31:	48 8d 35 c0 90 00 00 	lea    rsi,[rip+0x90c0]        # 12ff8 <default_mutexattr+0x4>
    9f38:	48 8d 3d d6 90 00 00 	lea    rdi,[rip+0x90d6]        # 13015 <default_mutexattr+0x21>
    9f3f:	ba 90 00 00 00       	mov    edx,0x90
    9f44:	e8 87 b7 ff ff       	call   56d0 <__assert_fail@plt>
    9f49:	48 8d 0d 30 92 00 00 	lea    rcx,[rip+0x9230]        # 13180 <__PRETTY_FUNCTION__.8623>
    9f50:	48 8d 35 a1 90 00 00 	lea    rsi,[rip+0x90a1]        # 12ff8 <default_mutexattr+0x4>
    9f57:	48 8d 3d b7 90 00 00 	lea    rdi,[rip+0x90b7]        # 13015 <default_mutexattr+0x21>
    9f5e:	ba 51 00 00 00       	mov    edx,0x51
    9f63:	e8 68 b7 ff ff       	call   56d0 <__assert_fail@plt>
    9f68:	b8 0b 00 00 00       	mov    eax,0xb
    9f6d:	e9 72 fe ff ff       	jmp    9de4 <__pthread_mutex_lock+0xa4>
    9f72:	64 8b 04 25 d0 02 00 	mov    eax,DWORD PTR fs:0x2d0
    9f79:	00 
    9f7a:	83 ff 02             	cmp    edi,0x2
    9f7d:	75 33                	jne    9fb2 <__pthread_mutex_lock+0x272>
    9f7f:	41 3b 40 08          	cmp    eax,DWORD PTR [r8+0x8]
    9f83:	0f 85 0f fe ff ff    	jne    9d98 <__pthread_mutex_lock+0x58>
    9f89:	b8 23 00 00 00       	mov    eax,0x23
    9f8e:	e9 51 fe ff ff       	jmp    9de4 <__pthread_mutex_lock+0xa4>
    9f93:	48 8d 0d e6 91 00 00 	lea    rcx,[rip+0x91e6]        # 13180 <__PRETTY_FUNCTION__.8623>
    9f9a:	48 8d 35 57 90 00 00 	lea    rsi,[rip+0x9057]        # 12ff8 <default_mutexattr+0x4>
    9fa1:	48 8d 3d 6d 90 00 00 	lea    rdi,[rip+0x906d]        # 13015 <default_mutexattr+0x21>
    9fa8:	ba 75 00 00 00       	mov    edx,0x75
    9fad:	e8 1e b7 ff ff       	call   56d0 <__assert_fail@plt>
    9fb2:	48 8d 0d c7 91 00 00 	lea    rcx,[rip+0x91c7]        # 13180 <__PRETTY_FUNCTION__.8623>
    9fb9:	48 8d 35 38 90 00 00 	lea    rsi,[rip+0x9038]        # 12ff8 <default_mutexattr+0x4>
    9fc0:	48 8d 3d 51 91 00 00 	lea    rdi,[rip+0x9151]        # 13118 <default_mutexattr+0x124>
    9fc7:	ba 95 00 00 00       	mov    edx,0x95
    9fcc:	e8 ff b6 ff ff       	call   56d0 <__assert_fail@plt>
    9fd1:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    9fd8:	00 00 00 
    9fdb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000009fe0 <__pthread_mutex_trylock>:
    9fe0:	41 56                	push   r14
    9fe2:	41 55                	push   r13
    9fe4:	41 54                	push   r12
    9fe6:	55                   	push   rbp
    9fe7:	53                   	push   rbx
    9fe8:	48 89 fb             	mov    rbx,rdi
    9feb:	64 8b 2c 25 d0 02 00 	mov    ebp,DWORD PTR fs:0x2d0
    9ff2:	00 
    9ff3:	8b 57 10             	mov    edx,DWORD PTR [rdi+0x10]
    9ff6:	89 d0                	mov    eax,edx
    9ff8:	25 7f 01 00 00       	and    eax,0x17f
    9ffd:	83 f8 23             	cmp    eax,0x23
    a000:	7f 66                	jg     a068 <__pthread_mutex_trylock+0x88>
    a002:	83 f8 20             	cmp    eax,0x20
    a005:	7d 7f                	jge    a086 <__pthread_mutex_trylock+0xa6>
    a007:	83 f8 03             	cmp    eax,0x3
    a00a:	0f 8f 20 01 00 00    	jg     a130 <__pthread_mutex_trylock+0x150>
    a010:	83 f8 02             	cmp    eax,0x2
    a013:	0f 8d c7 00 00 00    	jge    a0e0 <__pthread_mutex_trylock+0x100>
    a019:	85 c0                	test   eax,eax
    a01b:	0f 85 97 01 00 00    	jne    a1b8 <__pthread_mutex_trylock+0x1d8>
    a021:	8b 05 f9 23 21 00    	mov    eax,DWORD PTR [rip+0x2123f9]        # 21c420 <__pthread_force_elision>
    a027:	85 c0                	test   eax,eax
    a029:	0f 84 b1 00 00 00    	je     a0e0 <__pthread_mutex_trylock+0x100>
    a02f:	f6 c6 03             	test   dh,0x3
    a032:	0f 85 a8 00 00 00    	jne    a0e0 <__pthread_mutex_trylock+0x100>
    a038:	80 ce 01             	or     dh,0x1
    a03b:	89 57 10             	mov    DWORD PTR [rdi+0x10],edx
    a03e:	48 8d 73 16          	lea    rsi,[rbx+0x16]
    a042:	48 89 df             	mov    rdi,rbx
    a045:	e8 96 89 00 00       	call   129e0 <__lll_trylock_elision>
    a04a:	85 c0                	test   eax,eax
    a04c:	41 89 c4             	mov    r12d,eax
    a04f:	74 06                	je     a057 <__pthread_mutex_trylock+0x77>
    a051:	41 bc 10 00 00 00    	mov    r12d,0x10
    a057:	5b                   	pop    rbx
    a058:	44 89 e0             	mov    eax,r12d
    a05b:	5d                   	pop    rbp
    a05c:	41 5c                	pop    r12
    a05e:	41 5d                	pop    r13
    a060:	41 5e                	pop    r14
    a062:	c3                   	ret    
    a063:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    a068:	83 f8 43             	cmp    eax,0x43
    a06b:	0f 8f 97 00 00 00    	jg     a108 <__pthread_mutex_trylock+0x128>
    a071:	83 f8 40             	cmp    eax,0x40
    a074:	0f 8d 7e 01 00 00    	jge    a1f8 <__pthread_mutex_trylock+0x218>
    a07a:	83 e8 30             	sub    eax,0x30
    a07d:	83 f8 03             	cmp    eax,0x3
    a080:	0f 87 98 00 00 00    	ja     a11e <__pthread_mutex_trylock+0x13e>
    a086:	89 d1                	mov    ecx,edx
    a088:	83 e1 10             	and    ecx,0x10
    a08b:	74 11                	je     a09e <__pthread_mutex_trylock+0xbe>
    a08d:	48 8d 43 20          	lea    rax,[rbx+0x20]
    a091:	48 83 c8 01          	or     rax,0x1
    a095:	64 48 89 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,rax
    a09c:	00 00 
    a09e:	8b 03                	mov    eax,DWORD PTR [rbx]
    a0a0:	25 ff ff ff 3f       	and    eax,0x3fffffff
    a0a5:	39 c5                	cmp    ebp,eax
    a0a7:	0f 84 93 04 00 00    	je     a540 <__pthread_mutex_trylock+0x560>
    a0ad:	31 c0                	xor    eax,eax
    a0af:	f0 0f b1 2b          	lock cmpxchg DWORD PTR [rbx],ebp
    a0b3:	85 c0                	test   eax,eax
    a0b5:	0f 84 65 02 00 00    	je     a320 <__pthread_mutex_trylock+0x340>
    a0bb:	a9 00 00 00 40       	test   eax,0x40000000
    a0c0:	0f 85 da 02 00 00    	jne    a3a0 <__pthread_mutex_trylock+0x3c0>
    a0c6:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    a0cd:	00 00 00 00 00 00 
    a0d3:	41 bc 10 00 00 00    	mov    r12d,0x10
    a0d9:	e9 79 ff ff ff       	jmp    a057 <__pthread_mutex_trylock+0x77>
    a0de:	66 90                	xchg   ax,ax
    a0e0:	31 c0                	xor    eax,eax
    a0e2:	ba 01 00 00 00       	mov    edx,0x1
    a0e7:	f0 0f b1 13          	lock cmpxchg DWORD PTR [rbx],edx
    a0eb:	85 c0                	test   eax,eax
    a0ed:	0f 85 5e ff ff ff    	jne    a051 <__pthread_mutex_trylock+0x71>
    a0f3:	89 6b 08             	mov    DWORD PTR [rbx+0x8],ebp
    a0f6:	83 43 0c 01          	add    DWORD PTR [rbx+0xc],0x1
    a0fa:	45 31 e4             	xor    r12d,r12d
    a0fd:	e9 55 ff ff ff       	jmp    a057 <__pthread_mutex_trylock+0x77>
    a102:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    a108:	3d 00 01 00 00       	cmp    eax,0x100
    a10d:	0f 84 2b ff ff ff    	je     a03e <__pthread_mutex_trylock+0x5e>
    a113:	3d 01 01 00 00       	cmp    eax,0x101
    a118:	0f 84 a3 00 00 00    	je     a1c1 <__pthread_mutex_trylock+0x1e1>
    a11e:	41 bc 16 00 00 00    	mov    r12d,0x16
    a124:	5b                   	pop    rbx
    a125:	44 89 e0             	mov    eax,r12d
    a128:	5d                   	pop    rbp
    a129:	41 5c                	pop    r12
    a12b:	41 5d                	pop    r13
    a12d:	41 5e                	pop    r14
    a12f:	c3                   	ret    
    a130:	83 e8 10             	sub    eax,0x10
    a133:	83 f8 03             	cmp    eax,0x3
    a136:	77 e6                	ja     a11e <__pthread_mutex_trylock+0x13e>
    a138:	48 8d 7f 20          	lea    rdi,[rdi+0x20]
    a13c:	64 48 89 3c 25 f0 02 	mov    QWORD PTR fs:0x2f0,rdi
    a143:	00 00 
    a145:	8b 13                	mov    edx,DWORD PTR [rbx]
    a147:	31 f6                	xor    esi,esi
    a149:	41 89 d4             	mov    r12d,edx
    a14c:	41 81 e4 00 00 00 40 	and    r12d,0x40000000
    a153:	75 42                	jne    a197 <__pthread_mutex_trylock+0x1b7>
    a155:	81 e2 ff ff ff 3f    	and    edx,0x3fffffff
    a15b:	39 d5                	cmp    ebp,edx
    a15d:	0f 84 7d 01 00 00    	je     a2e0 <__pthread_mutex_trylock+0x300>
    a163:	89 f0                	mov    eax,esi
    a165:	f0 0f b1 2b          	lock cmpxchg DWORD PTR [rbx],ebp
    a169:	85 c0                	test   eax,eax
    a16b:	89 c2                	mov    edx,eax
    a16d:	0f 84 15 01 00 00    	je     a288 <__pthread_mutex_trylock+0x2a8>
    a173:	a9 00 00 00 40       	test   eax,0x40000000
    a178:	0f 84 48 ff ff ff    	je     a0c6 <__pthread_mutex_trylock+0xe6>
    a17e:	81 7b 08 fe ff ff 7f 	cmp    DWORD PTR [rbx+0x8],0x7ffffffe
    a185:	0f 84 0a 01 00 00    	je     a295 <__pthread_mutex_trylock+0x2b5>
    a18b:	41 89 d4             	mov    r12d,edx
    a18e:	41 81 e4 00 00 00 40 	and    r12d,0x40000000
    a195:	74 be                	je     a155 <__pthread_mutex_trylock+0x175>
    a197:	89 d1                	mov    ecx,edx
    a199:	89 d0                	mov    eax,edx
    a19b:	81 e1 00 00 00 80    	and    ecx,0x80000000
    a1a1:	09 e9                	or     ecx,ebp
    a1a3:	f0 0f b1 0b          	lock cmpxchg DWORD PTR [rbx],ecx
    a1a7:	39 c2                	cmp    edx,eax
    a1a9:	0f 84 c9 03 00 00    	je     a578 <__pthread_mutex_trylock+0x598>
    a1af:	89 c2                	mov    edx,eax
    a1b1:	eb 96                	jmp    a149 <__pthread_mutex_trylock+0x169>
    a1b3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    a1b8:	83 f8 01             	cmp    eax,0x1
    a1bb:	0f 85 5d ff ff ff    	jne    a11e <__pthread_mutex_trylock+0x13e>
    a1c1:	3b 6b 08             	cmp    ebp,DWORD PTR [rbx+0x8]
    a1c4:	0f 84 b6 02 00 00    	je     a480 <__pthread_mutex_trylock+0x4a0>
    a1ca:	31 c0                	xor    eax,eax
    a1cc:	ba 01 00 00 00       	mov    edx,0x1
    a1d1:	f0 0f b1 13          	lock cmpxchg DWORD PTR [rbx],edx
    a1d5:	85 c0                	test   eax,eax
    a1d7:	0f 85 74 fe ff ff    	jne    a051 <__pthread_mutex_trylock+0x71>
    a1dd:	89 6b 08             	mov    DWORD PTR [rbx+0x8],ebp
    a1e0:	c7 43 04 01 00 00 00 	mov    DWORD PTR [rbx+0x4],0x1
    a1e7:	45 31 e4             	xor    r12d,r12d
    a1ea:	83 43 0c 01          	add    DWORD PTR [rbx+0xc],0x1
    a1ee:	e9 64 fe ff ff       	jmp    a057 <__pthread_mutex_trylock+0x77>
    a1f3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    a1f8:	3b 6f 08             	cmp    ebp,DWORD PTR [rdi+0x8]
    a1fb:	8b 07                	mov    eax,DWORD PTR [rdi]
    a1fd:	41 be ff ff ff ff    	mov    r14d,0xffffffff
    a203:	75 4a                	jne    a24f <__pthread_mutex_trylock+0x26f>
    a205:	e9 3e 02 00 00       	jmp    a448 <__pthread_mutex_trylock+0x468>
    a20a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    a210:	44 89 ee             	mov    esi,r13d
    a213:	44 89 f7             	mov    edi,r14d
    a216:	e8 a5 7a 00 00       	call   11cc0 <__pthread_tpp_change_priority>
    a21b:	85 c0                	test   eax,eax
    a21d:	0f 85 8d 02 00 00    	jne    a4b0 <__pthread_mutex_trylock+0x4d0>
    a223:	44 89 ea             	mov    edx,r13d
    a226:	c1 e2 13             	shl    edx,0x13
    a229:	89 d1                	mov    ecx,edx
    a22b:	89 d0                	mov    eax,edx
    a22d:	83 c9 01             	or     ecx,0x1
    a230:	f0 0f b1 0b          	lock cmpxchg DWORD PTR [rbx],ecx
    a234:	39 c2                	cmp    edx,eax
    a236:	0f 84 84 02 00 00    	je     a4c0 <__pthread_mutex_trylock+0x4e0>
    a23c:	89 c1                	mov    ecx,eax
    a23e:	45 89 ee             	mov    r14d,r13d
    a241:	81 e1 00 00 f8 ff    	and    ecx,0xfff80000
    a247:	39 ca                	cmp    edx,ecx
    a249:	0f 84 49 02 00 00    	je     a498 <__pthread_mutex_trylock+0x4b8>
    a24f:	c1 e8 13             	shr    eax,0x13
    a252:	41 89 c5             	mov    r13d,eax
    a255:	e8 f6 7d 00 00       	call   12050 <__pthread_current_priority>
    a25a:	41 39 c5             	cmp    r13d,eax
    a25d:	7d b1                	jge    a210 <__pthread_mutex_trylock+0x230>
    a25f:	41 83 fe ff          	cmp    r14d,0xffffffff
    a263:	41 bc 16 00 00 00    	mov    r12d,0x16
    a269:	0f 84 e8 fd ff ff    	je     a057 <__pthread_mutex_trylock+0x77>
    a26f:	be ff ff ff ff       	mov    esi,0xffffffff
    a274:	44 89 f7             	mov    edi,r14d
    a277:	e8 44 7a 00 00       	call   11cc0 <__pthread_tpp_change_priority>
    a27c:	e9 d6 fd ff ff       	jmp    a057 <__pthread_mutex_trylock+0x77>
    a281:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    a288:	81 7b 08 fe ff ff 7f 	cmp    DWORD PTR [rbx+0x8],0x7ffffffe
    a28f:	0f 85 4b 02 00 00    	jne    a4e0 <__pthread_mutex_trylock+0x500>
    a295:	39 c5                	cmp    ebp,eax
    a297:	c7 43 04 00 00 00 00 	mov    DWORD PTR [rbx+0x4],0x0
    a29e:	75 20                	jne    a2c0 <__pthread_mutex_trylock+0x2e0>
    a2a0:	be 80 00 00 00       	mov    esi,0x80
    a2a5:	f0 ff 0b             	lock dec DWORD PTR [rbx]
    a2a8:	74 16                	je     a2c0 <__pthread_mutex_trylock+0x2e0>
    a2aa:	48 8d 3b             	lea    rdi,[rbx]
    a2ad:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    a2b4:	e8 37 60 00 00       	call   102f0 <__lll_unlock_wake>
    a2b9:	48 81 c4 80 00 00 00 	add    rsp,0x80
    a2c0:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    a2c7:	00 00 00 00 00 00 
    a2cd:	41 bc 83 00 00 00    	mov    r12d,0x83
    a2d3:	e9 7f fd ff ff       	jmp    a057 <__pthread_mutex_trylock+0x77>
    a2d8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    a2df:	00 
    a2e0:	8b 43 10             	mov    eax,DWORD PTR [rbx+0x10]
    a2e3:	83 e0 7f             	and    eax,0x7f
    a2e6:	83 f8 12             	cmp    eax,0x12
    a2e9:	0f 84 e9 02 00 00    	je     a5d8 <__pthread_mutex_trylock+0x5f8>
    a2ef:	83 f8 11             	cmp    eax,0x11
    a2f2:	0f 85 6b fe ff ff    	jne    a163 <__pthread_mutex_trylock+0x183>
    a2f8:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    a2ff:	00 00 00 00 00 00 
    a305:	8b 43 04             	mov    eax,DWORD PTR [rbx+0x4]
    a308:	83 f8 ff             	cmp    eax,0xffffffff
    a30b:	0f 84 77 01 00 00    	je     a488 <__pthread_mutex_trylock+0x4a8>
    a311:	83 c0 01             	add    eax,0x1
    a314:	89 43 04             	mov    DWORD PTR [rbx+0x4],eax
    a317:	e9 3b fd ff ff       	jmp    a057 <__pthread_mutex_trylock+0x77>
    a31c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    a320:	85 c9                	test   ecx,ecx
    a322:	74 5d                	je     a381 <__pthread_mutex_trylock+0x3a1>
    a324:	81 7b 08 fe ff ff 7f 	cmp    DWORD PTR [rbx+0x8],0x7ffffffe
    a32b:	0f 84 bf 02 00 00    	je     a5f0 <__pthread_mutex_trylock+0x610>
    a331:	64 48 8b 14 25 e0 02 	mov    rdx,QWORD PTR fs:0x2e0
    a338:	00 00 
    a33a:	48 8d 43 20          	lea    rax,[rbx+0x20]
    a33e:	48 83 e2 fe          	and    rdx,0xfffffffffffffffe
    a342:	48 89 42 f8          	mov    QWORD PTR [rdx-0x8],rax
    a346:	64 48 8b 14 25 e0 02 	mov    rdx,QWORD PTR fs:0x2e0
    a34d:	00 00 
    a34f:	48 89 53 20          	mov    QWORD PTR [rbx+0x20],rdx
    a353:	48 83 c8 01          	or     rax,0x1
    a357:	64 48 8b 14 25 10 00 	mov    rdx,QWORD PTR fs:0x10
    a35e:	00 00 
    a360:	48 81 c2 e0 02 00 00 	add    rdx,0x2e0
    a367:	48 89 53 18          	mov    QWORD PTR [rbx+0x18],rdx
    a36b:	64 48 89 04 25 e0 02 	mov    QWORD PTR fs:0x2e0,rax
    a372:	00 00 
    a374:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    a37b:	00 00 00 00 00 00 
    a381:	89 6b 08             	mov    DWORD PTR [rbx+0x8],ebp
    a384:	83 43 0c 01          	add    DWORD PTR [rbx+0xc],0x1
    a388:	45 31 e4             	xor    r12d,r12d
    a38b:	c7 43 04 01 00 00 00 	mov    DWORD PTR [rbx+0x4],0x1
    a392:	e9 c0 fc ff ff       	jmp    a057 <__pthread_mutex_trylock+0x77>
    a397:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    a39e:	00 00 
    a3a0:	85 c9                	test   ecx,ecx
    a3a2:	0f 84 68 02 00 00    	je     a610 <__pthread_mutex_trylock+0x630>
    a3a8:	45 31 d2             	xor    r10d,r10d
    a3ab:	31 d2                	xor    edx,edx
    a3ad:	be 08 00 00 00       	mov    esi,0x8
    a3b2:	48 89 df             	mov    rdi,rbx
    a3b5:	b8 ca 00 00 00       	mov    eax,0xca
    a3ba:	0f 05                	syscall 
    a3bc:	3d 00 f0 ff ff       	cmp    eax,0xfffff000
    a3c1:	76 09                	jbe    a3cc <__pthread_mutex_trylock+0x3ec>
    a3c3:	83 f8 f5             	cmp    eax,0xfffffff5
    a3c6:	0f 84 fa fc ff ff    	je     a0c6 <__pthread_mutex_trylock+0xe6>
    a3cc:	f7 03 00 00 00 40    	test   DWORD PTR [rbx],0x40000000
    a3d2:	0f 84 4c ff ff ff    	je     a324 <__pthread_mutex_trylock+0x344>
    a3d8:	f0 81 23 ff ff ff bf 	lock and DWORD PTR [rbx],0xbfffffff
    a3df:	c7 43 04 01 00 00 00 	mov    DWORD PTR [rbx+0x4],0x1
    a3e6:	c7 43 08 ff ff ff 7f 	mov    DWORD PTR [rbx+0x8],0x7fffffff
    a3ed:	64 48 8b 04 25 e0 02 	mov    rax,QWORD PTR fs:0x2e0
    a3f4:	00 00 
    a3f6:	48 8d 53 20          	lea    rdx,[rbx+0x20]
    a3fa:	48 83 e0 fe          	and    rax,0xfffffffffffffffe
    a3fe:	48 89 50 f8          	mov    QWORD PTR [rax-0x8],rdx
    a402:	64 48 8b 04 25 e0 02 	mov    rax,QWORD PTR fs:0x2e0
    a409:	00 00 
    a40b:	48 89 43 20          	mov    QWORD PTR [rbx+0x20],rax
    a40f:	64 48 8b 04 25 10 00 	mov    rax,QWORD PTR fs:0x10
    a416:	00 00 
    a418:	48 05 e0 02 00 00    	add    rax,0x2e0
    a41e:	48 89 43 18          	mov    QWORD PTR [rbx+0x18],rax
    a422:	64 48 89 14 25 e0 02 	mov    QWORD PTR fs:0x2e0,rdx
    a429:	00 00 
    a42b:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    a432:	00 00 00 00 00 00 
    a438:	41 bc 82 00 00 00    	mov    r12d,0x82
    a43e:	e9 14 fc ff ff       	jmp    a057 <__pthread_mutex_trylock+0x77>
    a443:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    a448:	83 e2 03             	and    edx,0x3
    a44b:	83 fa 02             	cmp    edx,0x2
    a44e:	0f 84 dc 00 00 00    	je     a530 <__pthread_mutex_trylock+0x550>
    a454:	83 fa 01             	cmp    edx,0x1
    a457:	0f 85 f2 fd ff ff    	jne    a24f <__pthread_mutex_trylock+0x26f>
    a45d:	8b 47 04             	mov    eax,DWORD PTR [rdi+0x4]
    a460:	44 39 f0             	cmp    eax,r14d
    a463:	74 23                	je     a488 <__pthread_mutex_trylock+0x4a8>
    a465:	0f 1f 00             	nop    DWORD PTR [rax]
    a468:	83 c0 01             	add    eax,0x1
    a46b:	45 31 e4             	xor    r12d,r12d
    a46e:	89 43 04             	mov    DWORD PTR [rbx+0x4],eax
    a471:	e9 e1 fb ff ff       	jmp    a057 <__pthread_mutex_trylock+0x77>
    a476:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    a47d:	00 00 00 
    a480:	8b 43 04             	mov    eax,DWORD PTR [rbx+0x4]
    a483:	83 f8 ff             	cmp    eax,0xffffffff
    a486:	75 e0                	jne    a468 <__pthread_mutex_trylock+0x488>
    a488:	41 bc 0b 00 00 00    	mov    r12d,0xb
    a48e:	e9 c4 fb ff ff       	jmp    a057 <__pthread_mutex_trylock+0x77>
    a493:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    a498:	be ff ff ff ff       	mov    esi,0xffffffff
    a49d:	44 89 ef             	mov    edi,r13d
    a4a0:	e8 1b 78 00 00       	call   11cc0 <__pthread_tpp_change_priority>
    a4a5:	e9 a7 fb ff ff       	jmp    a051 <__pthread_mutex_trylock+0x71>
    a4aa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    a4b0:	41 89 c4             	mov    r12d,eax
    a4b3:	e9 9f fb ff ff       	jmp    a057 <__pthread_mutex_trylock+0x77>
    a4b8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    a4bf:	00 
    a4c0:	44 8b 63 08          	mov    r12d,DWORD PTR [rbx+0x8]
    a4c4:	45 85 e4             	test   r12d,r12d
    a4c7:	0f 85 62 01 00 00    	jne    a62f <__pthread_mutex_trylock+0x64f>
    a4cd:	89 6b 08             	mov    DWORD PTR [rbx+0x8],ebp
    a4d0:	83 43 0c 01          	add    DWORD PTR [rbx+0xc],0x1
    a4d4:	c7 43 04 01 00 00 00 	mov    DWORD PTR [rbx+0x4],0x1
    a4db:	e9 77 fb ff ff       	jmp    a057 <__pthread_mutex_trylock+0x77>
    a4e0:	64 48 8b 04 25 e0 02 	mov    rax,QWORD PTR fs:0x2e0
    a4e7:	00 00 
    a4e9:	48 83 e0 fe          	and    rax,0xfffffffffffffffe
    a4ed:	48 89 78 f8          	mov    QWORD PTR [rax-0x8],rdi
    a4f1:	64 48 8b 04 25 e0 02 	mov    rax,QWORD PTR fs:0x2e0
    a4f8:	00 00 
    a4fa:	48 89 43 20          	mov    QWORD PTR [rbx+0x20],rax
    a4fe:	64 48 8b 04 25 10 00 	mov    rax,QWORD PTR fs:0x10
    a505:	00 00 
    a507:	48 05 e0 02 00 00    	add    rax,0x2e0
    a50d:	48 89 43 18          	mov    QWORD PTR [rbx+0x18],rax
    a511:	64 48 89 3c 25 e0 02 	mov    QWORD PTR fs:0x2e0,rdi
    a518:	00 00 
    a51a:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    a521:	00 00 00 00 00 00 
    a527:	eb a4                	jmp    a4cd <__pthread_mutex_trylock+0x4ed>
    a529:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    a530:	41 bc 23 00 00 00    	mov    r12d,0x23
    a536:	e9 1c fb ff ff       	jmp    a057 <__pthread_mutex_trylock+0x77>
    a53b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    a540:	83 e2 03             	and    edx,0x3
    a543:	83 fa 02             	cmp    edx,0x2
    a546:	0f 84 8c 00 00 00    	je     a5d8 <__pthread_mutex_trylock+0x5f8>
    a54c:	83 fa 01             	cmp    edx,0x1
    a54f:	0f 85 58 fb ff ff    	jne    a0ad <__pthread_mutex_trylock+0xcd>
    a555:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    a55c:	00 00 00 00 00 00 
    a562:	8b 43 04             	mov    eax,DWORD PTR [rbx+0x4]
    a565:	83 f8 ff             	cmp    eax,0xffffffff
    a568:	0f 85 fa fe ff ff    	jne    a468 <__pthread_mutex_trylock+0x488>
    a56e:	e9 15 ff ff ff       	jmp    a488 <__pthread_mutex_trylock+0x4a8>
    a573:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    a578:	c7 43 04 01 00 00 00 	mov    DWORD PTR [rbx+0x4],0x1
    a57f:	c7 43 08 ff ff ff 7f 	mov    DWORD PTR [rbx+0x8],0x7fffffff
    a586:	64 48 8b 04 25 e0 02 	mov    rax,QWORD PTR fs:0x2e0
    a58d:	00 00 
    a58f:	48 83 e0 fe          	and    rax,0xfffffffffffffffe
    a593:	48 89 78 f8          	mov    QWORD PTR [rax-0x8],rdi
    a597:	64 48 8b 04 25 e0 02 	mov    rax,QWORD PTR fs:0x2e0
    a59e:	00 00 
    a5a0:	48 89 43 20          	mov    QWORD PTR [rbx+0x20],rax
    a5a4:	64 48 8b 04 25 10 00 	mov    rax,QWORD PTR fs:0x10
    a5ab:	00 00 
    a5ad:	48 05 e0 02 00 00    	add    rax,0x2e0
    a5b3:	48 89 43 18          	mov    QWORD PTR [rbx+0x18],rax
    a5b7:	64 48 89 3c 25 e0 02 	mov    QWORD PTR fs:0x2e0,rdi
    a5be:	00 00 
    a5c0:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    a5c7:	00 00 00 00 00 00 
    a5cd:	41 bc 82 00 00 00    	mov    r12d,0x82
    a5d3:	e9 7f fa ff ff       	jmp    a057 <__pthread_mutex_trylock+0x77>
    a5d8:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    a5df:	00 00 00 00 00 00 
    a5e5:	41 bc 23 00 00 00    	mov    r12d,0x23
    a5eb:	e9 67 fa ff ff       	jmp    a057 <__pthread_mutex_trylock+0x77>
    a5f0:	c7 43 04 00 00 00 00 	mov    DWORD PTR [rbx+0x4],0x0
    a5f7:	45 31 d2             	xor    r10d,r10d
    a5fa:	31 d2                	xor    edx,edx
    a5fc:	be 07 00 00 00       	mov    esi,0x7
    a601:	48 89 df             	mov    rdi,rbx
    a604:	b8 ca 00 00 00       	mov    eax,0xca
    a609:	0f 05                	syscall 
    a60b:	e9 b0 fc ff ff       	jmp    a2c0 <__pthread_mutex_trylock+0x2e0>
    a610:	48 8d 0d a9 8b 00 00 	lea    rcx,[rip+0x8ba9]        # 131c0 <__PRETTY_FUNCTION__.7838>
    a617:	48 8d 35 7a 8b 00 00 	lea    rsi,[rip+0x8b7a]        # 13198 <__PRETTY_FUNCTION__.8623+0x18>
    a61e:	48 8d 3d 93 8b 00 00 	lea    rdi,[rip+0x8b93]        # 131b8 <__PRETTY_FUNCTION__.8623+0x38>
    a625:	ba fa 00 00 00       	mov    edx,0xfa
    a62a:	e8 a1 b0 ff ff       	call   56d0 <__assert_fail@plt>
    a62f:	48 8d 0d 8a 8b 00 00 	lea    rcx,[rip+0x8b8a]        # 131c0 <__PRETTY_FUNCTION__.7838>
    a636:	48 8d 35 5b 8b 00 00 	lea    rsi,[rip+0x8b5b]        # 13198 <__PRETTY_FUNCTION__.8623+0x18>
    a63d:	48 8d 3d d1 89 00 00 	lea    rdi,[rip+0x89d1]        # 13015 <default_mutexattr+0x21>
    a644:	ba 82 01 00 00       	mov    edx,0x182
    a649:	e8 82 b0 ff ff       	call   56d0 <__assert_fail@plt>
    a64e:	66 90                	xchg   ax,ax

000000000000a650 <pthread_mutex_timedlock>:
    a650:	41 57                	push   r15
    a652:	41 56                	push   r14
    a654:	48 89 f2             	mov    rdx,rsi
    a657:	41 55                	push   r13
    a659:	41 54                	push   r12
    a65b:	55                   	push   rbp
    a65c:	53                   	push   rbx
    a65d:	48 89 fb             	mov    rbx,rdi
    a660:	48 83 ec 48          	sub    rsp,0x48
    a664:	48 89 74 24 18       	mov    QWORD PTR [rsp+0x18],rsi
    a669:	64 8b 2c 25 d0 02 00 	mov    ebp,DWORD PTR fs:0x2d0
    a670:	00 
    a671:	90                   	nop
    a672:	8b 4f 10             	mov    ecx,DWORD PTR [rdi+0x10]
    a675:	89 c8                	mov    eax,ecx
    a677:	25 7f 01 00 00       	and    eax,0x17f
    a67c:	83 f8 23             	cmp    eax,0x23
    a67f:	0f 8f 0b 01 00 00    	jg     a790 <pthread_mutex_timedlock+0x140>
    a685:	83 f8 20             	cmp    eax,0x20
    a688:	0f 8d 20 01 00 00    	jge    a7ae <pthread_mutex_timedlock+0x15e>
    a68e:	83 f8 02             	cmp    eax,0x2
    a691:	0f 84 39 03 00 00    	je     a9d0 <pthread_mutex_timedlock+0x380>
    a697:	0f 8e 23 02 00 00    	jle    a8c0 <pthread_mutex_timedlock+0x270>
    a69d:	83 f8 03             	cmp    eax,0x3
    a6a0:	0f 84 7a 02 00 00    	je     a920 <pthread_mutex_timedlock+0x2d0>
    a6a6:	83 e8 10             	sub    eax,0x10
    a6a9:	83 f8 03             	cmp    eax,0x3
    a6ac:	0f 87 f5 03 00 00    	ja     aaa7 <pthread_mutex_timedlock+0x457>
    a6b2:	4c 8d 67 20          	lea    r12,[rdi+0x20]
    a6b6:	64 4c 89 24 25 f0 02 	mov    QWORD PTR fs:0x2f0,r12
    a6bd:	00 00 
    a6bf:	8b 17                	mov    edx,DWORD PTR [rdi]
    a6c1:	45 31 c9             	xor    r9d,r9d
    a6c4:	41 b8 80 00 00 00    	mov    r8d,0x80
    a6ca:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    a6d0:	89 d0                	mov    eax,edx
    a6d2:	25 00 00 00 40       	and    eax,0x40000000
    a6d7:	0f 85 a3 03 00 00    	jne    aa80 <pthread_mutex_timedlock+0x430>
    a6dd:	81 e2 ff ff ff 3f    	and    edx,0x3fffffff
    a6e3:	39 d5                	cmp    ebp,edx
    a6e5:	0f 84 1d 05 00 00    	je     ac08 <pthread_mutex_timedlock+0x5b8>
    a6eb:	44 89 c8             	mov    eax,r9d
    a6ee:	89 ef                	mov    edi,ebp
    a6f0:	44 89 c6             	mov    esi,r8d
    a6f3:	f0 0f b1 3b          	lock cmpxchg DWORD PTR [rbx],edi
    a6f7:	74 1b                	je     a714 <pthread_mutex_timedlock+0xc4>
    a6f9:	48 8d 3b             	lea    rdi,[rbx]
    a6fc:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
    a701:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    a708:	e8 e3 5c 00 00       	call   103f0 <__lll_robust_timedlock_wait>
    a70d:	48 81 c4 80 00 00 00 	add    rsp,0x80
    a714:	81 7b 08 fe ff ff 7f 	cmp    DWORD PTR [rbx+0x8],0x7ffffffe
    a71b:	89 c2                	mov    edx,eax
    a71d:	0f 84 25 05 00 00    	je     ac48 <pthread_mutex_timedlock+0x5f8>
    a723:	83 f8 6e             	cmp    eax,0x6e
    a726:	0f 84 e1 01 00 00    	je     a90d <pthread_mutex_timedlock+0x2bd>
    a72c:	83 f8 16             	cmp    eax,0x16
    a72f:	0f 84 d8 01 00 00    	je     a90d <pthread_mutex_timedlock+0x2bd>
    a735:	a9 00 00 00 40       	test   eax,0x40000000
    a73a:	75 94                	jne    a6d0 <pthread_mutex_timedlock+0x80>
    a73c:	c7 43 04 01 00 00 00 	mov    DWORD PTR [rbx+0x4],0x1
    a743:	64 48 8b 04 25 e0 02 	mov    rax,QWORD PTR fs:0x2e0
    a74a:	00 00 
    a74c:	48 83 e0 fe          	and    rax,0xfffffffffffffffe
    a750:	4c 89 60 f8          	mov    QWORD PTR [rax-0x8],r12
    a754:	64 48 8b 04 25 e0 02 	mov    rax,QWORD PTR fs:0x2e0
    a75b:	00 00 
    a75d:	48 89 43 20          	mov    QWORD PTR [rbx+0x20],rax
    a761:	64 48 8b 04 25 10 00 	mov    rax,QWORD PTR fs:0x10
    a768:	00 00 
    a76a:	48 05 e0 02 00 00    	add    rax,0x2e0
    a770:	48 89 43 18          	mov    QWORD PTR [rbx+0x18],rax
    a774:	64 4c 89 24 25 e0 02 	mov    QWORD PTR fs:0x2e0,r12
    a77b:	00 00 
    a77d:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    a784:	00 00 00 00 00 00 
    a78a:	e9 7c 02 00 00       	jmp    aa0b <pthread_mutex_timedlock+0x3bb>
    a78f:	90                   	nop
    a790:	83 f8 43             	cmp    eax,0x43
    a793:	0f 8f 57 01 00 00    	jg     a8f0 <pthread_mutex_timedlock+0x2a0>
    a799:	83 f8 40             	cmp    eax,0x40
    a79c:	0f 8d 1e 03 00 00    	jge    aac0 <pthread_mutex_timedlock+0x470>
    a7a2:	83 e8 30             	sub    eax,0x30
    a7a5:	83 f8 03             	cmp    eax,0x3
    a7a8:	0f 87 f9 02 00 00    	ja     aaa7 <pthread_mutex_timedlock+0x457>
    a7ae:	41 89 c9             	mov    r9d,ecx
    a7b1:	41 83 e1 03          	and    r9d,0x3
    a7b5:	83 e1 10             	and    ecx,0x10
    a7b8:	41 89 c8             	mov    r8d,ecx
    a7bb:	74 11                	je     a7ce <pthread_mutex_timedlock+0x17e>
    a7bd:	48 8d 43 20          	lea    rax,[rbx+0x20]
    a7c1:	48 83 c8 01          	or     rax,0x1
    a7c5:	64 48 89 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,rax
    a7cc:	00 00 
    a7ce:	8b 03                	mov    eax,DWORD PTR [rbx]
    a7d0:	25 ff ff ff 3f       	and    eax,0x3fffffff
    a7d5:	39 c5                	cmp    ebp,eax
    a7d7:	0f 84 ae 06 00 00    	je     ae8b <pthread_mutex_timedlock+0x83b>
    a7dd:	31 c0                	xor    eax,eax
    a7df:	f0 0f b1 2b          	lock cmpxchg DWORD PTR [rbx],ebp
    a7e3:	85 c0                	test   eax,eax
    a7e5:	0f 84 a5 04 00 00    	je     ac90 <pthread_mutex_timedlock+0x640>
    a7eb:	45 85 c0             	test   r8d,r8d
    a7ee:	be 06 00 00 00       	mov    esi,0x6
    a7f3:	75 10                	jne    a805 <pthread_mutex_timedlock+0x1b5>
    a7f5:	8b 73 10             	mov    esi,DWORD PTR [rbx+0x10]
    a7f8:	81 e6 80 00 00 00    	and    esi,0x80
    a7fe:	40 80 f6 86          	xor    sil,0x86
    a802:	48 63 f6             	movsxd rsi,esi
    a805:	4c 8b 54 24 18       	mov    r10,QWORD PTR [rsp+0x18]
    a80a:	ba 01 00 00 00       	mov    edx,0x1
    a80f:	48 89 df             	mov    rdi,rbx
    a812:	b8 ca 00 00 00       	mov    eax,0xca
    a817:	0f 05                	syscall 
    a819:	3d 00 f0 ff ff       	cmp    eax,0xfffff000
    a81e:	0f 86 e4 04 00 00    	jbe    ad08 <pthread_mutex_timedlock+0x6b8>
    a824:	83 f8 92             	cmp    eax,0xffffff92
    a827:	0f 84 85 00 00 00    	je     a8b2 <pthread_mutex_timedlock+0x262>
    a82d:	89 c2                	mov    edx,eax
    a82f:	83 e2 df             	and    edx,0xffffffdf
    a832:	83 fa dd             	cmp    edx,0xffffffdd
    a835:	0f 85 f9 06 00 00    	jne    af34 <pthread_mutex_timedlock+0x8e4>
    a83b:	83 f8 dd             	cmp    eax,0xffffffdd
    a83e:	0f 84 4e 07 00 00    	je     af92 <pthread_mutex_timedlock+0x942>
    a844:	83 f8 fd             	cmp    eax,0xfffffffd
    a847:	75 09                	jne    a852 <pthread_mutex_timedlock+0x202>
    a849:	45 85 c0             	test   r8d,r8d
    a84c:	0f 85 99 07 00 00    	jne    afeb <pthread_mutex_timedlock+0x99b>
    a852:	48 8d 74 24 30       	lea    rsi,[rsp+0x30]
    a857:	31 ff                	xor    edi,edi
    a859:	b8 e4 00 00 00       	mov    eax,0xe4
    a85e:	0f 05                	syscall 
    a860:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
    a865:	48 8b 02             	mov    rax,QWORD PTR [rdx]
    a868:	48 8b 52 08          	mov    rdx,QWORD PTR [rdx+0x8]
    a86c:	48 2b 44 24 30       	sub    rax,QWORD PTR [rsp+0x30]
    a871:	48 2b 54 24 38       	sub    rdx,QWORD PTR [rsp+0x38]
    a876:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
    a87b:	0f 88 3f 07 00 00    	js     afc0 <pthread_mutex_timedlock+0x970>
    a881:	48 89 54 24 28       	mov    QWORD PTR [rsp+0x28],rdx
    a886:	48 85 c0             	test   rax,rax
    a889:	48 8d 54 24 20       	lea    rdx,[rsp+0x20]
    a88e:	41 b8 23 00 00 00    	mov    r8d,0x23
    a894:	78 1c                	js     a8b2 <pthread_mutex_timedlock+0x262>
    a896:	48 89 d6             	mov    rsi,rdx
    a899:	48 89 d7             	mov    rdi,rdx
    a89c:	44 89 c0             	mov    eax,r8d
    a89f:	0f 05                	syscall 
    a8a1:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    a8a7:	0f 87 2d 07 00 00    	ja     afda <pthread_mutex_timedlock+0x98a>
    a8ad:	48 85 c0             	test   rax,rax
    a8b0:	75 e4                	jne    a896 <pthread_mutex_timedlock+0x246>
    a8b2:	b8 6e 00 00 00       	mov    eax,0x6e
    a8b7:	eb 54                	jmp    a90d <pthread_mutex_timedlock+0x2bd>
    a8b9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    a8c0:	85 c0                	test   eax,eax
    a8c2:	0f 85 68 01 00 00    	jne    aa30 <pthread_mutex_timedlock+0x3e0>
    a8c8:	8b 35 52 1b 21 00    	mov    esi,DWORD PTR [rip+0x211b52]        # 21c420 <__pthread_force_elision>
    a8ce:	85 f6                	test   esi,esi
    a8d0:	0f 84 03 01 00 00    	je     a9d9 <pthread_mutex_timedlock+0x389>
    a8d6:	f6 c5 03             	test   ch,0x3
    a8d9:	0f 85 fa 00 00 00    	jne    a9d9 <pthread_mutex_timedlock+0x389>
    a8df:	80 cd 01             	or     ch,0x1
    a8e2:	89 4f 10             	mov    DWORD PTR [rdi+0x10],ecx
    a8e5:	eb 14                	jmp    a8fb <pthread_mutex_timedlock+0x2ab>
    a8e7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    a8ee:	00 00 
    a8f0:	3d 00 01 00 00       	cmp    eax,0x100
    a8f5:	0f 85 a5 01 00 00    	jne    aaa0 <pthread_mutex_timedlock+0x450>
    a8fb:	48 8d 73 14          	lea    rsi,[rbx+0x14]
    a8ff:	81 e1 80 00 00 00    	and    ecx,0x80
    a905:	48 89 df             	mov    rdi,rbx
    a908:	e8 03 80 00 00       	call   12910 <__lll_timedlock_elision>
    a90d:	48 83 c4 48          	add    rsp,0x48
    a911:	5b                   	pop    rbx
    a912:	5d                   	pop    rbp
    a913:	41 5c                	pop    r12
    a915:	41 5d                	pop    r13
    a917:	41 5e                	pop    r14
    a919:	41 5f                	pop    r15
    a91b:	c3                   	ret    
    a91c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    a920:	8b 15 7e 1a 21 00    	mov    edx,DWORD PTR [rip+0x211a7e]        # 21c3a4 <__is_smp>
    a926:	85 d2                	test   edx,edx
    a928:	0f 84 ab 00 00 00    	je     a9d9 <pthread_mutex_timedlock+0x389>
    a92e:	31 c0                	xor    eax,eax
    a930:	ba 01 00 00 00       	mov    edx,0x1
    a935:	f0 0f b1 17          	lock cmpxchg DWORD PTR [rdi],edx
    a939:	85 c0                	test   eax,eax
    a93b:	0f 84 d4 00 00 00    	je     aa15 <pthread_mutex_timedlock+0x3c5>
    a941:	0f bf 47 14          	movsx  eax,WORD PTR [rdi+0x14]
    a945:	8d 4c 00 0a          	lea    ecx,[rax+rax*1+0xa]
    a949:	b8 64 00 00 00       	mov    eax,0x64
    a94e:	83 f9 64             	cmp    ecx,0x64
    a951:	0f 4f c8             	cmovg  ecx,eax
    a954:	45 31 c0             	xor    r8d,r8d
    a957:	31 f6                	xor    esi,esi
    a959:	eb 15                	jmp    a970 <pthread_mutex_timedlock+0x320>
    a95b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    a960:	f3 90                	pause  
    a962:	89 f0                	mov    eax,esi
    a964:	f0 0f b1 13          	lock cmpxchg DWORD PTR [rbx],edx
    a968:	85 c0                	test   eax,eax
    a96a:	0f 84 9a 04 00 00    	je     ae0a <pthread_mutex_timedlock+0x7ba>
    a970:	41 83 c0 01          	add    r8d,0x1
    a974:	41 8d 40 ff          	lea    eax,[r8-0x1]
    a978:	39 c1                	cmp    ecx,eax
    a97a:	7f e4                	jg     a960 <pthread_mutex_timedlock+0x310>
    a97c:	8b 73 10             	mov    esi,DWORD PTR [rbx+0x10]
    a97f:	31 c0                	xor    eax,eax
    a981:	bf 01 00 00 00       	mov    edi,0x1
    a986:	81 e6 80 00 00 00    	and    esi,0x80
    a98c:	f0 0f b1 3b          	lock cmpxchg DWORD PTR [rbx],edi
    a990:	74 1b                	je     a9ad <pthread_mutex_timedlock+0x35d>
    a992:	48 8d 3b             	lea    rdi,[rbx]
    a995:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
    a99a:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    a9a1:	e8 da 58 00 00       	call   10280 <__lll_timedlock_wait>
    a9a6:	48 81 c4 80 00 00 00 	add    rsp,0x80
    a9ad:	89 c2                	mov    edx,eax
    a9af:	0f bf 4b 14          	movsx  ecx,WORD PTR [rbx+0x14]
    a9b3:	41 29 c8             	sub    r8d,ecx
    a9b6:	89 c8                	mov    eax,ecx
    a9b8:	41 8d 48 07          	lea    ecx,[r8+0x7]
    a9bc:	45 85 c0             	test   r8d,r8d
    a9bf:	44 0f 48 c1          	cmovs  r8d,ecx
    a9c3:	41 c1 f8 03          	sar    r8d,0x3
    a9c7:	44 01 c0             	add    eax,r8d
    a9ca:	66 89 43 14          	mov    WORD PTR [rbx+0x14],ax
    a9ce:	eb 3b                	jmp    aa0b <pthread_mutex_timedlock+0x3bb>
    a9d0:	3b 6f 08             	cmp    ebp,DWORD PTR [rdi+0x8]
    a9d3:	0f 84 27 04 00 00    	je     ae00 <pthread_mutex_timedlock+0x7b0>
    a9d9:	81 e1 80 00 00 00    	and    ecx,0x80
    a9df:	31 c0                	xor    eax,eax
    a9e1:	bf 01 00 00 00       	mov    edi,0x1
    a9e6:	89 ce                	mov    esi,ecx
    a9e8:	f0 0f b1 3b          	lock cmpxchg DWORD PTR [rbx],edi
    a9ec:	74 1b                	je     aa09 <pthread_mutex_timedlock+0x3b9>
    a9ee:	48 8d 3b             	lea    rdi,[rbx]
    a9f1:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
    a9f6:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    a9fd:	e8 7e 58 00 00       	call   10280 <__lll_timedlock_wait>
    aa02:	48 81 c4 80 00 00 00 	add    rsp,0x80
    aa09:	89 c2                	mov    edx,eax
    aa0b:	85 d2                	test   edx,edx
    aa0d:	89 d0                	mov    eax,edx
    aa0f:	0f 85 f8 fe ff ff    	jne    a90d <pthread_mutex_timedlock+0x2bd>
    aa15:	89 6b 08             	mov    DWORD PTR [rbx+0x8],ebp
    aa18:	83 43 0c 01          	add    DWORD PTR [rbx+0xc],0x1
    aa1c:	90                   	nop
    aa1d:	48 83 c4 48          	add    rsp,0x48
    aa21:	31 c0                	xor    eax,eax
    aa23:	5b                   	pop    rbx
    aa24:	5d                   	pop    rbp
    aa25:	41 5c                	pop    r12
    aa27:	41 5d                	pop    r13
    aa29:	41 5e                	pop    r14
    aa2b:	41 5f                	pop    r15
    aa2d:	c3                   	ret    
    aa2e:	66 90                	xchg   ax,ax
    aa30:	83 f8 01             	cmp    eax,0x1
    aa33:	75 72                	jne    aaa7 <pthread_mutex_timedlock+0x457>
    aa35:	3b 6b 08             	cmp    ebp,DWORD PTR [rbx+0x8]
    aa38:	0f 84 a2 03 00 00    	je     ade0 <pthread_mutex_timedlock+0x790>
    aa3e:	81 e1 80 00 00 00    	and    ecx,0x80
    aa44:	31 c0                	xor    eax,eax
    aa46:	bf 01 00 00 00       	mov    edi,0x1
    aa4b:	89 ce                	mov    esi,ecx
    aa4d:	f0 0f b1 3b          	lock cmpxchg DWORD PTR [rbx],edi
    aa51:	74 1b                	je     aa6e <pthread_mutex_timedlock+0x41e>
    aa53:	48 8d 3b             	lea    rdi,[rbx]
    aa56:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
    aa5b:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    aa62:	e8 19 58 00 00       	call   10280 <__lll_timedlock_wait>
    aa67:	48 81 c4 80 00 00 00 	add    rsp,0x80
    aa6e:	85 c0                	test   eax,eax
    aa70:	0f 85 97 fe ff ff    	jne    a90d <pthread_mutex_timedlock+0x2bd>
    aa76:	c7 43 04 01 00 00 00 	mov    DWORD PTR [rbx+0x4],0x1
    aa7d:	eb 96                	jmp    aa15 <pthread_mutex_timedlock+0x3c5>
    aa7f:	90                   	nop
    aa80:	89 d1                	mov    ecx,edx
    aa82:	89 d0                	mov    eax,edx
    aa84:	81 e1 00 00 00 80    	and    ecx,0x80000000
    aa8a:	09 e9                	or     ecx,ebp
    aa8c:	f0 0f b1 0b          	lock cmpxchg DWORD PTR [rbx],ecx
    aa90:	39 c2                	cmp    edx,eax
    aa92:	0f 84 3d 04 00 00    	je     aed5 <pthread_mutex_timedlock+0x885>
    aa98:	89 c2                	mov    edx,eax
    aa9a:	e9 31 fc ff ff       	jmp    a6d0 <pthread_mutex_timedlock+0x80>
    aa9f:	90                   	nop
    aaa0:	3d 01 01 00 00       	cmp    eax,0x101
    aaa5:	74 8e                	je     aa35 <pthread_mutex_timedlock+0x3e5>
    aaa7:	48 83 c4 48          	add    rsp,0x48
    aaab:	b8 16 00 00 00       	mov    eax,0x16
    aab0:	5b                   	pop    rbx
    aab1:	5d                   	pop    rbp
    aab2:	41 5c                	pop    r12
    aab4:	41 5d                	pop    r13
    aab6:	41 5e                	pop    r14
    aab8:	41 5f                	pop    r15
    aaba:	c3                   	ret    
    aabb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    aac0:	3b 6f 08             	cmp    ebp,DWORD PTR [rdi+0x8]
    aac3:	8b 37                	mov    esi,DWORD PTR [rdi]
    aac5:	41 bc ff ff ff ff    	mov    r12d,0xffffffff
    aacb:	0f 84 df 02 00 00    	je     adb0 <pthread_mutex_timedlock+0x760>
    aad1:	48 8d 44 24 30       	lea    rax,[rsp+0x30]
    aad6:	4c 8d 74 24 20       	lea    r14,[rsp+0x20]
    aadb:	89 6c 24 14          	mov    DWORD PTR [rsp+0x14],ebp
    aadf:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    aae4:	c1 ee 13             	shr    esi,0x13
    aae7:	41 89 f7             	mov    r15d,esi
    aaea:	89 74 24 10          	mov    DWORD PTR [rsp+0x10],esi
    aaee:	e8 5d 75 00 00       	call   12050 <__pthread_current_priority>
    aaf3:	41 39 c7             	cmp    r15d,eax
    aaf6:	0f 8c 3f 04 00 00    	jl     af3b <pthread_mutex_timedlock+0x8eb>
    aafc:	44 8b 6c 24 10       	mov    r13d,DWORD PTR [rsp+0x10]
    ab01:	44 89 e7             	mov    edi,r12d
    ab04:	44 89 ee             	mov    esi,r13d
    ab07:	e8 b4 71 00 00       	call   11cc0 <__pthread_tpp_change_priority>
    ab0c:	85 c0                	test   eax,eax
    ab0e:	0f 85 f9 fd ff ff    	jne    a90d <pthread_mutex_timedlock+0x2bd>
    ab14:	41 c1 e5 13          	shl    r13d,0x13
    ab18:	44 89 ed             	mov    ebp,r13d
    ab1b:	44 89 e8             	mov    eax,r13d
    ab1e:	83 cd 01             	or     ebp,0x1
    ab21:	f0 0f b1 2b          	lock cmpxchg DWORD PTR [rbx],ebp
    ab25:	41 39 c5             	cmp    r13d,eax
    ab28:	0f 84 12 02 00 00    	je     ad40 <pthread_mutex_timedlock+0x6f0>
    ab2e:	45 89 ef             	mov    r15d,r13d
    ab31:	41 83 cf 02          	or     r15d,0x2
    ab35:	44 89 f8             	mov    eax,r15d
    ab38:	4d 63 e7             	movsxd r12,r15d
    ab3b:	45 89 ef             	mov    r15d,r13d
    ab3e:	41 89 c5             	mov    r13d,eax
    ab41:	eb 44                	jmp    ab87 <pthread_mutex_timedlock+0x537>
    ab43:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    ab48:	48 89 54 24 38       	mov    QWORD PTR [rsp+0x38],rdx
    ab4d:	48 85 c0             	test   rax,rax
    ab50:	0f 88 4a 02 00 00    	js     ada0 <pthread_mutex_timedlock+0x750>
    ab56:	8b 73 10             	mov    esi,DWORD PTR [rbx+0x10]
    ab59:	4c 8b 54 24 08       	mov    r10,QWORD PTR [rsp+0x8]
    ab5e:	4c 89 e2             	mov    rdx,r12
    ab61:	48 89 df             	mov    rdi,rbx
    ab64:	b8 ca 00 00 00       	mov    eax,0xca
    ab69:	f7 d6                	not    esi
    ab6b:	81 e6 80 00 00 00    	and    esi,0x80
    ab71:	48 63 f6             	movsxd rsi,esi
    ab74:	0f 05                	syscall 
    ab76:	44 89 f8             	mov    eax,r15d
    ab79:	f0 44 0f b1 2b       	lock cmpxchg DWORD PTR [rbx],r13d
    ab7e:	41 39 c7             	cmp    r15d,eax
    ab81:	0f 84 b9 01 00 00    	je     ad40 <pthread_mutex_timedlock+0x6f0>
    ab87:	89 e8                	mov    eax,ebp
    ab89:	f0 44 0f b1 2b       	lock cmpxchg DWORD PTR [rbx],r13d
    ab8e:	89 c2                	mov    edx,eax
    ab90:	89 c6                	mov    esi,eax
    ab92:	81 e2 00 00 f8 ff    	and    edx,0xfff80000
    ab98:	41 39 d7             	cmp    r15d,edx
    ab9b:	0f 85 cf 01 00 00    	jne    ad70 <pthread_mutex_timedlock+0x720>
    aba1:	41 39 c7             	cmp    r15d,eax
    aba4:	74 d0                	je     ab76 <pthread_mutex_timedlock+0x526>
    aba6:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
    abab:	48 81 78 08 ff c9 9a 	cmp    QWORD PTR [rax+0x8],0x3b9ac9ff
    abb2:	3b 
    abb3:	0f 87 c7 01 00 00    	ja     ad80 <pthread_mutex_timedlock+0x730>
    abb9:	31 f6                	xor    esi,esi
    abbb:	4c 89 f7             	mov    rdi,r14
    abbe:	e8 fd aa ff ff       	call   56c0 <__gettimeofday@plt>
    abc3:	48 69 54 24 28 18 fc 	imul   rdx,QWORD PTR [rsp+0x28],0xfffffffffffffc18
    abca:	ff ff 
    abcc:	48 8b 4c 24 18       	mov    rcx,QWORD PTR [rsp+0x18]
    abd1:	48 8b 01             	mov    rax,QWORD PTR [rcx]
    abd4:	48 2b 44 24 20       	sub    rax,QWORD PTR [rsp+0x20]
    abd9:	48 03 51 08          	add    rdx,QWORD PTR [rcx+0x8]
    abdd:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
    abe2:	0f 89 60 ff ff ff    	jns    ab48 <pthread_mutex_timedlock+0x4f8>
    abe8:	48 81 c2 00 ca 9a 3b 	add    rdx,0x3b9aca00
    abef:	48 83 e8 01          	sub    rax,0x1
    abf3:	48 89 54 24 38       	mov    QWORD PTR [rsp+0x38],rdx
    abf8:	48 89 44 24 30       	mov    QWORD PTR [rsp+0x30],rax
    abfd:	e9 4b ff ff ff       	jmp    ab4d <pthread_mutex_timedlock+0x4fd>
    ac02:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    ac08:	8b 53 10             	mov    edx,DWORD PTR [rbx+0x10]
    ac0b:	83 e2 7f             	and    edx,0x7f
    ac0e:	83 fa 12             	cmp    edx,0x12
    ac11:	0f 84 a7 02 00 00    	je     aebe <pthread_mutex_timedlock+0x86e>
    ac17:	83 fa 11             	cmp    edx,0x11
    ac1a:	0f 85 cb fa ff ff    	jne    a6eb <pthread_mutex_timedlock+0x9b>
    ac20:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    ac27:	00 00 00 00 00 00 
    ac2d:	8b 53 04             	mov    edx,DWORD PTR [rbx+0x4]
    ac30:	83 fa ff             	cmp    edx,0xffffffff
    ac33:	0f 84 7b 02 00 00    	je     aeb4 <pthread_mutex_timedlock+0x864>
    ac39:	83 c2 01             	add    edx,0x1
    ac3c:	89 53 04             	mov    DWORD PTR [rbx+0x4],edx
    ac3f:	90                   	nop
    ac40:	e9 c8 fc ff ff       	jmp    a90d <pthread_mutex_timedlock+0x2bd>
    ac45:	0f 1f 00             	nop    DWORD PTR [rax]
    ac48:	c7 43 04 00 00 00 00 	mov    DWORD PTR [rbx+0x4],0x0
    ac4f:	be 80 00 00 00       	mov    esi,0x80
    ac54:	f0 ff 0b             	lock dec DWORD PTR [rbx]
    ac57:	74 16                	je     ac6f <pthread_mutex_timedlock+0x61f>
    ac59:	48 8d 3b             	lea    rdi,[rbx]
    ac5c:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    ac63:	e8 88 56 00 00       	call   102f0 <__lll_unlock_wake>
    ac68:	48 81 c4 80 00 00 00 	add    rsp,0x80
    ac6f:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    ac76:	00 00 00 00 00 00 
    ac7c:	b8 83 00 00 00       	mov    eax,0x83
    ac81:	e9 87 fc ff ff       	jmp    a90d <pthread_mutex_timedlock+0x2bd>
    ac86:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    ac8d:	00 00 00 
    ac90:	45 85 c0             	test   r8d,r8d
    ac93:	0f 84 dd fd ff ff    	je     aa76 <pthread_mutex_timedlock+0x426>
    ac99:	81 7b 08 fe ff ff 7f 	cmp    DWORD PTR [rbx+0x8],0x7ffffffe
    aca0:	0f 84 ba 02 00 00    	je     af60 <pthread_mutex_timedlock+0x910>
    aca6:	c7 43 04 01 00 00 00 	mov    DWORD PTR [rbx+0x4],0x1
    acad:	64 48 8b 14 25 e0 02 	mov    rdx,QWORD PTR fs:0x2e0
    acb4:	00 00 
    acb6:	48 8d 43 20          	lea    rax,[rbx+0x20]
    acba:	48 83 e2 fe          	and    rdx,0xfffffffffffffffe
    acbe:	48 89 42 f8          	mov    QWORD PTR [rdx-0x8],rax
    acc2:	64 48 8b 14 25 e0 02 	mov    rdx,QWORD PTR fs:0x2e0
    acc9:	00 00 
    accb:	48 89 53 20          	mov    QWORD PTR [rbx+0x20],rdx
    accf:	48 83 c8 01          	or     rax,0x1
    acd3:	64 48 8b 14 25 10 00 	mov    rdx,QWORD PTR fs:0x10
    acda:	00 00 
    acdc:	48 81 c2 e0 02 00 00 	add    rdx,0x2e0
    ace3:	48 89 53 18          	mov    QWORD PTR [rbx+0x18],rdx
    ace7:	64 48 89 04 25 e0 02 	mov    QWORD PTR fs:0x2e0,rax
    acee:	00 00 
    acf0:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    acf7:	00 00 00 00 00 00 
    acfd:	e9 13 fd ff ff       	jmp    aa15 <pthread_mutex_timedlock+0x3c5>
    ad02:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    ad08:	45 85 c0             	test   r8d,r8d
    ad0b:	8b 03                	mov    eax,DWORD PTR [rbx]
    ad0d:	0f 85 fe 00 00 00    	jne    ae11 <pthread_mutex_timedlock+0x7c1>
    ad13:	a9 00 00 00 40       	test   eax,0x40000000
    ad18:	0f 84 58 fd ff ff    	je     aa76 <pthread_mutex_timedlock+0x426>
    ad1e:	48 8d 0d db 84 00 00 	lea    rcx,[rip+0x84db]        # 13200 <__PRETTY_FUNCTION__.8787>
    ad25:	48 8d 35 ac 84 00 00 	lea    rsi,[rip+0x84ac]        # 131d8 <__PRETTY_FUNCTION__.7838+0x18>
    ad2c:	48 8d 3d b5 83 00 00 	lea    rdi,[rip+0x83b5]        # 130e8 <default_mutexattr+0xf4>
    ad33:	ba 55 01 00 00       	mov    edx,0x155
    ad38:	e8 93 a9 ff ff       	call   56d0 <__assert_fail@plt>
    ad3d:	0f 1f 00             	nop    DWORD PTR [rax]
    ad40:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
    ad43:	8b 6c 24 14          	mov    ebp,DWORD PTR [rsp+0x14]
    ad47:	85 c0                	test   eax,eax
    ad49:	0f 84 27 fd ff ff    	je     aa76 <pthread_mutex_timedlock+0x426>
    ad4f:	48 8d 0d aa 84 00 00 	lea    rcx,[rip+0x84aa]        # 13200 <__PRETTY_FUNCTION__.8787>
    ad56:	48 8d 35 7b 84 00 00 	lea    rsi,[rip+0x847b]        # 131d8 <__PRETTY_FUNCTION__.7838+0x18>
    ad5d:	48 8d 3d b1 82 00 00 	lea    rdi,[rip+0x82b1]        # 13015 <default_mutexattr+0x21>
    ad64:	ba f5 01 00 00       	mov    edx,0x1f5
    ad69:	e8 62 a9 ff ff       	call   56d0 <__assert_fail@plt>
    ad6e:	66 90                	xchg   ax,ax
    ad70:	44 8b 64 24 10       	mov    r12d,DWORD PTR [rsp+0x10]
    ad75:	e9 6a fd ff ff       	jmp    aae4 <pthread_mutex_timedlock+0x494>
    ad7a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    ad80:	8b 7c 24 10          	mov    edi,DWORD PTR [rsp+0x10]
    ad84:	bb 16 00 00 00       	mov    ebx,0x16
    ad89:	be ff ff ff ff       	mov    esi,0xffffffff
    ad8e:	e8 2d 6f 00 00       	call   11cc0 <__pthread_tpp_change_priority>
    ad93:	89 d8                	mov    eax,ebx
    ad95:	e9 73 fb ff ff       	jmp    a90d <pthread_mutex_timedlock+0x2bd>
    ad9a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    ada0:	bb 6e 00 00 00       	mov    ebx,0x6e
    ada5:	8b 7c 24 10          	mov    edi,DWORD PTR [rsp+0x10]
    ada9:	eb de                	jmp    ad89 <pthread_mutex_timedlock+0x739>
    adab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    adb0:	83 e1 03             	and    ecx,0x3
    adb3:	83 f9 02             	cmp    ecx,0x2
    adb6:	74 48                	je     ae00 <pthread_mutex_timedlock+0x7b0>
    adb8:	83 f9 01             	cmp    ecx,0x1
    adbb:	0f 85 10 fd ff ff    	jne    aad1 <pthread_mutex_timedlock+0x481>
    adc1:	8b 47 04             	mov    eax,DWORD PTR [rdi+0x4]
    adc4:	44 39 e0             	cmp    eax,r12d
    adc7:	0f 84 e7 00 00 00    	je     aeb4 <pthread_mutex_timedlock+0x864>
    adcd:	83 c0 01             	add    eax,0x1
    add0:	89 43 04             	mov    DWORD PTR [rbx+0x4],eax
    add3:	90                   	nop
    add4:	31 c0                	xor    eax,eax
    add6:	e9 32 fb ff ff       	jmp    a90d <pthread_mutex_timedlock+0x2bd>
    addb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    ade0:	8b 43 04             	mov    eax,DWORD PTR [rbx+0x4]
    ade3:	83 f8 ff             	cmp    eax,0xffffffff
    ade6:	0f 84 c8 00 00 00    	je     aeb4 <pthread_mutex_timedlock+0x864>
    adec:	83 c0 01             	add    eax,0x1
    adef:	89 43 04             	mov    DWORD PTR [rbx+0x4],eax
    adf2:	31 c0                	xor    eax,eax
    adf4:	e9 14 fb ff ff       	jmp    a90d <pthread_mutex_timedlock+0x2bd>
    adf9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    ae00:	b8 23 00 00 00       	mov    eax,0x23
    ae05:	e9 03 fb ff ff       	jmp    a90d <pthread_mutex_timedlock+0x2bd>
    ae0a:	31 d2                	xor    edx,edx
    ae0c:	e9 9e fb ff ff       	jmp    a9af <pthread_mutex_timedlock+0x35f>
    ae11:	a9 00 00 00 40       	test   eax,0x40000000
    ae16:	0f 84 7d fe ff ff    	je     ac99 <pthread_mutex_timedlock+0x649>
    ae1c:	f0 81 23 ff ff ff bf 	lock and DWORD PTR [rbx],0xbfffffff
    ae23:	c7 43 04 01 00 00 00 	mov    DWORD PTR [rbx+0x4],0x1
    ae2a:	c7 43 08 ff ff ff 7f 	mov    DWORD PTR [rbx+0x8],0x7fffffff
    ae31:	64 48 8b 14 25 e0 02 	mov    rdx,QWORD PTR fs:0x2e0
    ae38:	00 00 
    ae3a:	48 8d 43 20          	lea    rax,[rbx+0x20]
    ae3e:	48 83 e2 fe          	and    rdx,0xfffffffffffffffe
    ae42:	48 89 42 f8          	mov    QWORD PTR [rdx-0x8],rax
    ae46:	64 48 8b 14 25 e0 02 	mov    rdx,QWORD PTR fs:0x2e0
    ae4d:	00 00 
    ae4f:	48 89 53 20          	mov    QWORD PTR [rbx+0x20],rdx
    ae53:	48 83 c8 01          	or     rax,0x1
    ae57:	64 48 8b 14 25 10 00 	mov    rdx,QWORD PTR fs:0x10
    ae5e:	00 00 
    ae60:	48 81 c2 e0 02 00 00 	add    rdx,0x2e0
    ae67:	48 89 53 18          	mov    QWORD PTR [rbx+0x18],rdx
    ae6b:	64 48 89 04 25 e0 02 	mov    QWORD PTR fs:0x2e0,rax
    ae72:	00 00 
    ae74:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    ae7b:	00 00 00 00 00 00 
    ae81:	b8 82 00 00 00       	mov    eax,0x82
    ae86:	e9 82 fa ff ff       	jmp    a90d <pthread_mutex_timedlock+0x2bd>
    ae8b:	41 83 f9 02          	cmp    r9d,0x2
    ae8f:	74 2d                	je     aebe <pthread_mutex_timedlock+0x86e>
    ae91:	41 83 f9 01          	cmp    r9d,0x1
    ae95:	0f 85 42 f9 ff ff    	jne    a7dd <pthread_mutex_timedlock+0x18d>
    ae9b:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    aea2:	00 00 00 00 00 00 
    aea8:	8b 43 04             	mov    eax,DWORD PTR [rbx+0x4]
    aeab:	83 f8 ff             	cmp    eax,0xffffffff
    aeae:	0f 85 19 ff ff ff    	jne    adcd <pthread_mutex_timedlock+0x77d>
    aeb4:	b8 0b 00 00 00       	mov    eax,0xb
    aeb9:	e9 4f fa ff ff       	jmp    a90d <pthread_mutex_timedlock+0x2bd>
    aebe:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    aec5:	00 00 00 00 00 00 
    aecb:	b8 23 00 00 00       	mov    eax,0x23
    aed0:	e9 38 fa ff ff       	jmp    a90d <pthread_mutex_timedlock+0x2bd>
    aed5:	c7 43 04 01 00 00 00 	mov    DWORD PTR [rbx+0x4],0x1
    aedc:	c7 43 08 ff ff ff 7f 	mov    DWORD PTR [rbx+0x8],0x7fffffff
    aee3:	64 48 8b 04 25 e0 02 	mov    rax,QWORD PTR fs:0x2e0
    aeea:	00 00 
    aeec:	48 83 e0 fe          	and    rax,0xfffffffffffffffe
    aef0:	4c 89 60 f8          	mov    QWORD PTR [rax-0x8],r12
    aef4:	64 48 8b 04 25 e0 02 	mov    rax,QWORD PTR fs:0x2e0
    aefb:	00 00 
    aefd:	48 89 43 20          	mov    QWORD PTR [rbx+0x20],rax
    af01:	64 48 8b 04 25 10 00 	mov    rax,QWORD PTR fs:0x10
    af08:	00 00 
    af0a:	48 05 e0 02 00 00    	add    rax,0x2e0
    af10:	48 89 43 18          	mov    QWORD PTR [rbx+0x18],rax
    af14:	64 4c 89 24 25 e0 02 	mov    QWORD PTR fs:0x2e0,r12
    af1b:	00 00 
    af1d:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    af24:	00 00 00 00 00 00 
    af2a:	b8 82 00 00 00       	mov    eax,0x82
    af2f:	e9 d9 f9 ff ff       	jmp    a90d <pthread_mutex_timedlock+0x2bd>
    af34:	f7 d8                	neg    eax
    af36:	e9 d2 f9 ff ff       	jmp    a90d <pthread_mutex_timedlock+0x2bd>
    af3b:	41 83 fc ff          	cmp    r12d,0xffffffff
    af3f:	0f 84 62 fb ff ff    	je     aaa7 <pthread_mutex_timedlock+0x457>
    af45:	44 89 64 24 10       	mov    DWORD PTR [rsp+0x10],r12d
    af4a:	bb 16 00 00 00       	mov    ebx,0x16
    af4f:	44 89 e7             	mov    edi,r12d
    af52:	e9 32 fe ff ff       	jmp    ad89 <pthread_mutex_timedlock+0x739>
    af57:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    af5e:	00 00 
    af60:	c7 43 04 00 00 00 00 	mov    DWORD PTR [rbx+0x4],0x0
    af67:	45 31 d2             	xor    r10d,r10d
    af6a:	31 d2                	xor    edx,edx
    af6c:	be 07 00 00 00       	mov    esi,0x7
    af71:	48 89 df             	mov    rdi,rbx
    af74:	b8 ca 00 00 00       	mov    eax,0xca
    af79:	0f 05                	syscall 
    af7b:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    af82:	00 00 00 00 00 00 
    af88:	b8 83 00 00 00       	mov    eax,0x83
    af8d:	e9 7b f9 ff ff       	jmp    a90d <pthread_mutex_timedlock+0x2bd>
    af92:	41 83 e9 01          	sub    r9d,0x1
    af96:	41 83 f9 01          	cmp    r9d,0x1
    af9a:	0f 87 b2 f8 ff ff    	ja     a852 <pthread_mutex_timedlock+0x202>
    afa0:	48 8d 0d 59 82 00 00 	lea    rcx,[rip+0x8259]        # 13200 <__PRETTY_FUNCTION__.8787>
    afa7:	48 8d 35 2a 82 00 00 	lea    rsi,[rip+0x822a]        # 131d8 <__PRETTY_FUNCTION__.7838+0x18>
    afae:	48 8d 3d 7b 80 00 00 	lea    rdi,[rip+0x807b]        # 13030 <default_mutexattr+0x3c>
    afb5:	ba 35 01 00 00       	mov    edx,0x135
    afba:	e8 11 a7 ff ff       	call   56d0 <__assert_fail@plt>
    afbf:	90                   	nop
    afc0:	48 81 c2 00 ca 9a 3b 	add    rdx,0x3b9aca00
    afc7:	48 83 e8 01          	sub    rax,0x1
    afcb:	48 89 54 24 28       	mov    QWORD PTR [rsp+0x28],rdx
    afd0:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
    afd5:	e9 ac f8 ff ff       	jmp    a886 <pthread_mutex_timedlock+0x236>
    afda:	48 8b 0d a7 cf 20 00 	mov    rcx,QWORD PTR [rip+0x20cfa7]        # 217f88 <_DYNAMIC+0x238>
    afe1:	f7 d8                	neg    eax
    afe3:	64 89 01             	mov    DWORD PTR fs:[rcx],eax
    afe6:	e9 ab f8 ff ff       	jmp    a896 <pthread_mutex_timedlock+0x246>
    afeb:	48 8d 0d 0e 82 00 00 	lea    rcx,[rip+0x820e]        # 13200 <__PRETTY_FUNCTION__.8787>
    aff2:	48 8d 35 df 81 00 00 	lea    rsi,[rip+0x81df]        # 131d8 <__PRETTY_FUNCTION__.7838+0x18>
    aff9:	48 8d 3d b0 80 00 00 	lea    rdi,[rip+0x80b0]        # 130b0 <default_mutexattr+0xbc>
    b000:	ba 39 01 00 00       	mov    edx,0x139
    b005:	e8 c6 a6 ff ff       	call   56d0 <__assert_fail@plt>
    b00a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

000000000000b010 <__pthread_mutex_unlock_full>:
    b010:	8b 57 10             	mov    edx,DWORD PTR [rdi+0x10]
    b013:	49 89 f8             	mov    r8,rdi
    b016:	89 d0                	mov    eax,edx
    b018:	83 e0 7f             	and    eax,0x7f
    b01b:	83 e8 10             	sub    eax,0x10
    b01e:	83 f8 33             	cmp    eax,0x33
    b021:	0f 87 c8 02 00 00    	ja     b2ef <__pthread_mutex_unlock_full+0x2df>
    b027:	48 8d 0d ea 81 00 00 	lea    rcx,[rip+0x81ea]        # 13218 <__PRETTY_FUNCTION__.8787+0x18>
    b02e:	48 63 04 81          	movsxd rax,DWORD PTR [rcx+rax*4]
    b032:	48 01 c1             	add    rcx,rax
    b035:	ff e1                	jmp    rcx
    b037:	64 8b 14 25 d0 02 00 	mov    edx,DWORD PTR fs:0x2d0
    b03e:	00 
    b03f:	39 57 08             	cmp    DWORD PTR [rdi+0x8],edx
    b042:	b8 01 00 00 00       	mov    eax,0x1
    b047:	0f 84 92 02 00 00    	je     b2df <__pthread_mutex_unlock_full+0x2cf>
    b04d:	f3 c3                	repz ret 
    b04f:	64 8b 14 25 d0 02 00 	mov    edx,DWORD PTR fs:0x2d0
    b056:	00 
    b057:	39 57 08             	cmp    DWORD PTR [rdi+0x8],edx
    b05a:	b8 01 00 00 00       	mov    eax,0x1
    b05f:	75 ec                	jne    b04d <__pthread_mutex_unlock_full+0x3d>
    b061:	83 6f 04 01          	sub    DWORD PTR [rdi+0x4],0x1
    b065:	0f 85 38 02 00 00    	jne    b2a3 <__pthread_mutex_unlock_full+0x293>
    b06b:	41 8b 10             	mov    edx,DWORD PTR [r8]
    b06e:	85 f6                	test   esi,esi
    b070:	41 c7 40 08 00 00 00 	mov    DWORD PTR [r8+0x8],0x0
    b077:	00 
    b078:	74 11                	je     b08b <__pthread_mutex_unlock_full+0x7b>
    b07a:	41 83 68 0c 01       	sub    DWORD PTR [r8+0xc],0x1
    b07f:	eb 0a                	jmp    b08b <__pthread_mutex_unlock_full+0x7b>
    b081:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    b088:	41 8b 10             	mov    edx,DWORD PTR [r8]
    b08b:	41 89 d1             	mov    r9d,edx
    b08e:	89 d0                	mov    eax,edx
    b090:	41 81 e1 00 00 f8 ff 	and    r9d,0xfff80000
    b097:	f0 45 0f b1 08       	lock cmpxchg DWORD PTR [r8],r9d
    b09c:	75 ea                	jne    b088 <__pthread_mutex_unlock_full+0x78>
    b09e:	81 e2 ff ff 07 00    	and    edx,0x7ffff
    b0a4:	83 fa 01             	cmp    edx,0x1
    b0a7:	76 23                	jbe    b0cc <__pthread_mutex_unlock_full+0xbc>
    b0a9:	41 8b 70 10          	mov    esi,DWORD PTR [r8+0x10]
    b0ad:	45 31 d2             	xor    r10d,r10d
    b0b0:	ba 01 00 00 00       	mov    edx,0x1
    b0b5:	4c 89 c7             	mov    rdi,r8
    b0b8:	b8 ca 00 00 00       	mov    eax,0xca
    b0bd:	81 e6 80 00 00 00    	and    esi,0x80
    b0c3:	40 80 f6 81          	xor    sil,0x81
    b0c7:	48 63 f6             	movsxd rsi,esi
    b0ca:	0f 05                	syscall 
    b0cc:	90                   	nop
    b0cd:	44 89 cf             	mov    edi,r9d
    b0d0:	be ff ff ff ff       	mov    esi,0xffffffff
    b0d5:	c1 ff 13             	sar    edi,0x13
    b0d8:	e9 e3 6b 00 00       	jmp    11cc0 <__pthread_tpp_change_priority>
    b0dd:	8b 07                	mov    eax,DWORD PTR [rdi]
    b0df:	64 8b 0c 25 d0 02 00 	mov    ecx,DWORD PTR fs:0x2d0
    b0e6:	00 
    b0e7:	89 c7                	mov    edi,eax
    b0e9:	81 e7 ff ff ff 3f    	and    edi,0x3fffffff
    b0ef:	39 cf                	cmp    edi,ecx
    b0f1:	41 8b 48 08          	mov    ecx,DWORD PTR [r8+0x8]
    b0f5:	0f 84 89 02 00 00    	je     b384 <__pthread_mutex_unlock_full+0x374>
    b0fb:	64 8b 14 25 d0 02 00 	mov    edx,DWORD PTR fs:0x2d0
    b102:	00 
    b103:	39 ca                	cmp    edx,ecx
    b105:	b8 01 00 00 00       	mov    eax,0x1
    b10a:	0f 85 3d ff ff ff    	jne    b04d <__pthread_mutex_unlock_full+0x3d>
    b110:	41 83 68 04 01       	sub    DWORD PTR [r8+0x4],0x1
    b115:	0f 85 88 01 00 00    	jne    b2a3 <__pthread_mutex_unlock_full+0x293>
    b11b:	31 c9                	xor    ecx,ecx
    b11d:	e9 00 02 00 00       	jmp    b322 <__pthread_mutex_unlock_full+0x312>
    b122:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    b128:	64 8b 0c 25 d0 02 00 	mov    ecx,DWORD PTR fs:0x2d0
    b12f:	00 
    b130:	39 4f 08             	cmp    DWORD PTR [rdi+0x8],ecx
    b133:	b8 01 00 00 00       	mov    eax,0x1
    b138:	0f 85 0f ff ff ff    	jne    b04d <__pthread_mutex_unlock_full+0x3d>
    b13e:	83 6f 04 01          	sub    DWORD PTR [rdi+0x4],0x1
    b142:	0f 85 5b 01 00 00    	jne    b2a3 <__pthread_mutex_unlock_full+0x293>
    b148:	89 d7                	mov    edi,edx
    b14a:	41 8b 00             	mov    eax,DWORD PTR [r8]
    b14d:	31 c9                	xor    ecx,ecx
    b14f:	83 e7 10             	and    edi,0x10
    b152:	e9 16 02 00 00       	jmp    b36d <__pthread_mutex_unlock_full+0x35d>
    b157:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    b15e:	00 00 
    b160:	8b 07                	mov    eax,DWORD PTR [rdi]
    b162:	64 8b 0c 25 d0 02 00 	mov    ecx,DWORD PTR fs:0x2d0
    b169:	00 
    b16a:	89 c7                	mov    edi,eax
    b16c:	81 e7 ff ff ff 3f    	and    edi,0x3fffffff
    b172:	39 cf                	cmp    edi,ecx
    b174:	0f 85 04 02 00 00    	jne    b37e <__pthread_mutex_unlock_full+0x36e>
    b17a:	85 c0                	test   eax,eax
    b17c:	0f 84 fc 01 00 00    	je     b37e <__pthread_mutex_unlock_full+0x36e>
    b182:	f6 c2 10             	test   dl,0x10
    b185:	0f 85 82 01 00 00    	jne    b30d <__pthread_mutex_unlock_full+0x2fd>
    b18b:	31 c9                	xor    ecx,ecx
    b18d:	85 f6                	test   esi,esi
    b18f:	41 89 48 08          	mov    DWORD PTR [r8+0x8],ecx
    b193:	74 10                	je     b1a5 <__pthread_mutex_unlock_full+0x195>
    b195:	31 ff                	xor    edi,edi
    b197:	41 83 68 0c 01       	sub    DWORD PTR [r8+0xc],0x1
    b19c:	85 ff                	test   edi,edi
    b19e:	b9 80 00 00 00       	mov    ecx,0x80
    b1a3:	75 08                	jne    b1ad <__pthread_mutex_unlock_full+0x19d>
    b1a5:	89 d1                	mov    ecx,edx
    b1a7:	81 e1 80 00 00 00    	and    ecx,0x80
    b1ad:	85 c0                	test   eax,eax
    b1af:	78 11                	js     b1c2 <__pthread_mutex_unlock_full+0x1b2>
    b1b1:	64 8b 04 25 d0 02 00 	mov    eax,DWORD PTR fs:0x2d0
    b1b8:	00 
    b1b9:	31 d2                	xor    edx,edx
    b1bb:	f0 41 0f b1 10       	lock cmpxchg DWORD PTR [r8],edx
    b1c0:	74 13                	je     b1d5 <__pthread_mutex_unlock_full+0x1c5>
    b1c2:	89 ce                	mov    esi,ecx
    b1c4:	4c 89 c7             	mov    rdi,r8
    b1c7:	b8 ca 00 00 00       	mov    eax,0xca
    b1cc:	40 80 f6 87          	xor    sil,0x87
    b1d0:	48 63 f6             	movsxd rsi,esi
    b1d3:	0f 05                	syscall 
    b1d5:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    b1dc:	00 00 00 00 00 00 
    b1e2:	e9 bb 00 00 00       	jmp    b2a2 <__pthread_mutex_unlock_full+0x292>
    b1e7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    b1ee:	00 00 
    b1f0:	64 8b 14 25 d0 02 00 	mov    edx,DWORD PTR fs:0x2d0
    b1f7:	00 
    b1f8:	8b 07                	mov    eax,DWORD PTR [rdi]
    b1fa:	25 ff ff ff 3f       	and    eax,0x3fffffff
    b1ff:	39 d0                	cmp    eax,edx
    b201:	8b 57 08             	mov    edx,DWORD PTR [rdi+0x8]
    b204:	0f 84 eb 00 00 00    	je     b2f5 <__pthread_mutex_unlock_full+0x2e5>
    b20a:	64 8b 0c 25 d0 02 00 	mov    ecx,DWORD PTR fs:0x2d0
    b211:	00 
    b212:	39 d1                	cmp    ecx,edx
    b214:	b8 01 00 00 00       	mov    eax,0x1
    b219:	0f 85 2e fe ff ff    	jne    b04d <__pthread_mutex_unlock_full+0x3d>
    b21f:	41 83 68 04 01       	sub    DWORD PTR [r8+0x4],0x1
    b224:	75 7d                	jne    b2a3 <__pthread_mutex_unlock_full+0x293>
    b226:	31 d2                	xor    edx,edx
    b228:	49 8d 40 20          	lea    rax,[r8+0x20]
    b22c:	64 48 89 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,rax
    b233:	00 00 
    b235:	49 8b 48 20          	mov    rcx,QWORD PTR [r8+0x20]
    b239:	49 8b 78 18          	mov    rdi,QWORD PTR [r8+0x18]
    b23d:	48 89 c8             	mov    rax,rcx
    b240:	48 83 e0 fe          	and    rax,0xfffffffffffffffe
    b244:	48 89 78 f8          	mov    QWORD PTR [rax-0x8],rdi
    b248:	49 8b 40 18          	mov    rax,QWORD PTR [r8+0x18]
    b24c:	48 83 e0 fe          	and    rax,0xfffffffffffffffe
    b250:	85 f6                	test   esi,esi
    b252:	48 89 08             	mov    QWORD PTR [rax],rcx
    b255:	49 c7 40 18 00 00 00 	mov    QWORD PTR [r8+0x18],0x0
    b25c:	00 
    b25d:	49 c7 40 20 00 00 00 	mov    QWORD PTR [r8+0x20],0x0
    b264:	00 
    b265:	41 89 50 08          	mov    DWORD PTR [r8+0x8],edx
    b269:	74 05                	je     b270 <__pthread_mutex_unlock_full+0x260>
    b26b:	41 83 68 0c 01       	sub    DWORD PTR [r8+0xc],0x1
    b270:	be 80 00 00 00       	mov    esi,0x80
    b275:	f0 41 81 20 00 00 00 	lock and DWORD PTR [r8],0x80000000
    b27c:	80 
    b27d:	74 16                	je     b295 <__pthread_mutex_unlock_full+0x285>
    b27f:	49 8d 38             	lea    rdi,[r8]
    b282:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    b289:	e8 62 50 00 00       	call   102f0 <__lll_unlock_wake>
    b28e:	48 81 c4 80 00 00 00 	add    rsp,0x80
    b295:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    b29c:	00 00 00 00 00 00 
    b2a2:	90                   	nop
    b2a3:	31 c0                	xor    eax,eax
    b2a5:	c3                   	ret    
    b2a6:	8b 07                	mov    eax,DWORD PTR [rdi]
    b2a8:	64 8b 14 25 d0 02 00 	mov    edx,DWORD PTR fs:0x2d0
    b2af:	00 
    b2b0:	89 c1                	mov    ecx,eax
    b2b2:	81 e1 ff ff ff 3f    	and    ecx,0x3fffffff
    b2b8:	39 d1                	cmp    ecx,edx
    b2ba:	0f 85 be 00 00 00    	jne    b37e <__pthread_mutex_unlock_full+0x36e>
    b2c0:	85 c0                	test   eax,eax
    b2c2:	0f 84 b6 00 00 00    	je     b37e <__pthread_mutex_unlock_full+0x36e>
    b2c8:	81 7f 08 ff ff ff 7f 	cmp    DWORD PTR [rdi+0x8],0x7fffffff
    b2cf:	0f 85 51 ff ff ff    	jne    b226 <__pthread_mutex_unlock_full+0x216>
    b2d5:	ba fe ff ff 7f       	mov    edx,0x7ffffffe
    b2da:	e9 49 ff ff ff       	jmp    b228 <__pthread_mutex_unlock_full+0x218>
    b2df:	8b 17                	mov    edx,DWORD PTR [rdi]
    b2e1:	f7 c2 ff ff 07 00    	test   edx,0x7ffff
    b2e7:	0f 85 81 fd ff ff    	jne    b06e <__pthread_mutex_unlock_full+0x5e>
    b2ed:	f3 c3                	repz ret 
    b2ef:	b8 16 00 00 00       	mov    eax,0x16
    b2f4:	c3                   	ret    
    b2f5:	81 fa ff ff ff 7f    	cmp    edx,0x7fffffff
    b2fb:	0f 85 09 ff ff ff    	jne    b20a <__pthread_mutex_unlock_full+0x1fa>
    b301:	83 6f 04 01          	sub    DWORD PTR [rdi+0x4],0x1
    b305:	74 ce                	je     b2d5 <__pthread_mutex_unlock_full+0x2c5>
    b307:	b8 83 00 00 00       	mov    eax,0x83
    b30c:	c3                   	ret    
    b30d:	41 81 78 08 ff ff ff 	cmp    DWORD PTR [r8+0x8],0x7fffffff
    b314:	7f 
    b315:	b9 00 00 00 00       	mov    ecx,0x0
    b31a:	b8 fe ff ff 7f       	mov    eax,0x7ffffffe
    b31f:	0f 44 c8             	cmove  ecx,eax
    b322:	49 8d 40 20          	lea    rax,[r8+0x20]
    b326:	48 83 c8 01          	or     rax,0x1
    b32a:	64 48 89 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,rax
    b331:	00 00 
    b333:	49 8b 50 20          	mov    rdx,QWORD PTR [r8+0x20]
    b337:	49 8b 78 18          	mov    rdi,QWORD PTR [r8+0x18]
    b33b:	48 89 d0             	mov    rax,rdx
    b33e:	48 83 e0 fe          	and    rax,0xfffffffffffffffe
    b342:	48 89 78 f8          	mov    QWORD PTR [rax-0x8],rdi
    b346:	49 8b 40 18          	mov    rax,QWORD PTR [r8+0x18]
    b34a:	48 83 e0 fe          	and    rax,0xfffffffffffffffe
    b34e:	48 89 10             	mov    QWORD PTR [rax],rdx
    b351:	41 8b 50 10          	mov    edx,DWORD PTR [r8+0x10]
    b355:	41 8b 00             	mov    eax,DWORD PTR [r8]
    b358:	49 c7 40 18 00 00 00 	mov    QWORD PTR [r8+0x18],0x0
    b35f:	00 
    b360:	49 c7 40 20 00 00 00 	mov    QWORD PTR [r8+0x20],0x0
    b367:	00 
    b368:	89 d7                	mov    edi,edx
    b36a:	83 e7 10             	and    edi,0x10
    b36d:	85 f6                	test   esi,esi
    b36f:	41 89 48 08          	mov    DWORD PTR [r8+0x8],ecx
    b373:	0f 84 23 fe ff ff    	je     b19c <__pthread_mutex_unlock_full+0x18c>
    b379:	e9 19 fe ff ff       	jmp    b197 <__pthread_mutex_unlock_full+0x187>
    b37e:	b8 01 00 00 00       	mov    eax,0x1
    b383:	c3                   	ret    
    b384:	81 f9 ff ff ff 7f    	cmp    ecx,0x7fffffff
    b38a:	0f 85 6b fd ff ff    	jne    b0fb <__pthread_mutex_unlock_full+0xeb>
    b390:	41 8b 78 04          	mov    edi,DWORD PTR [r8+0x4]
    b394:	8d 4f ff             	lea    ecx,[rdi-0x1]
    b397:	85 c9                	test   ecx,ecx
    b399:	41 89 48 04          	mov    DWORD PTR [r8+0x4],ecx
    b39d:	0f 85 64 ff ff ff    	jne    b307 <__pthread_mutex_unlock_full+0x2f7>
    b3a3:	f6 c2 10             	test   dl,0x10
    b3a6:	b9 fe ff ff 7f       	mov    ecx,0x7ffffffe
    b3ab:	0f 84 dc fd ff ff    	je     b18d <__pthread_mutex_unlock_full+0x17d>
    b3b1:	e9 6c ff ff ff       	jmp    b322 <__pthread_mutex_unlock_full+0x312>
    b3b6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    b3bd:	00 00 00 

000000000000b3c0 <__pthread_mutex_unlock_usercnt>:
    b3c0:	48 89 fa             	mov    rdx,rdi
    b3c3:	8b 7f 10             	mov    edi,DWORD PTR [rdi+0x10]
    b3c6:	89 f8                	mov    eax,edi
    b3c8:	41 89 f8             	mov    r8d,edi
    b3cb:	25 7f 01 00 00       	and    eax,0x17f
    b3d0:	41 83 e0 7c          	and    r8d,0x7c
    b3d4:	75 4a                	jne    b420 <__pthread_mutex_unlock_usercnt+0x60>
    b3d6:	85 c0                	test   eax,eax
    b3d8:	75 56                	jne    b430 <__pthread_mutex_unlock_usercnt+0x70>
    b3da:	81 e7 80 00 00 00    	and    edi,0x80
    b3e0:	85 f6                	test   esi,esi
    b3e2:	c7 42 08 00 00 00 00 	mov    DWORD PTR [rdx+0x8],0x0
    b3e9:	75 25                	jne    b410 <__pthread_mutex_unlock_usercnt+0x50>
    b3eb:	89 fe                	mov    esi,edi
    b3ed:	f0 ff 0a             	lock dec DWORD PTR [rdx]
    b3f0:	74 16                	je     b408 <__pthread_mutex_unlock_usercnt+0x48>
    b3f2:	48 8d 3a             	lea    rdi,[rdx]
    b3f5:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    b3fc:	e8 ef 4e 00 00       	call   102f0 <__lll_unlock_wake>
    b401:	48 81 c4 80 00 00 00 	add    rsp,0x80
    b408:	90                   	nop
    b409:	44 89 c0             	mov    eax,r8d
    b40c:	c3                   	ret    
    b40d:	0f 1f 00             	nop    DWORD PTR [rax]
    b410:	83 6a 0c 01          	sub    DWORD PTR [rdx+0xc],0x1
    b414:	eb d5                	jmp    b3eb <__pthread_mutex_unlock_usercnt+0x2b>
    b416:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    b41d:	00 00 00 
    b420:	48 89 d7             	mov    rdi,rdx
    b423:	e9 e8 fb ff ff       	jmp    b010 <__pthread_mutex_unlock_full>
    b428:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    b42f:	00 
    b430:	3d 00 01 00 00       	cmp    eax,0x100
    b435:	75 10                	jne    b447 <__pthread_mutex_unlock_usercnt+0x87>
    b437:	89 fe                	mov    esi,edi
    b439:	48 89 d7             	mov    rdi,rdx
    b43c:	81 e6 80 00 00 00    	and    esi,0x80
    b442:	e9 89 74 00 00       	jmp    128d0 <__lll_unlock_elision>
    b447:	89 f9                	mov    ecx,edi
    b449:	83 e1 7f             	and    ecx,0x7f
    b44c:	83 f9 01             	cmp    ecx,0x1
    b44f:	75 21                	jne    b472 <__pthread_mutex_unlock_usercnt+0xb2>
    b451:	64 8b 04 25 d0 02 00 	mov    eax,DWORD PTR fs:0x2d0
    b458:	00 
    b459:	39 42 08             	cmp    DWORD PTR [rdx+0x8],eax
    b45c:	74 08                	je     b466 <__pthread_mutex_unlock_usercnt+0xa6>
    b45e:	41 b8 01 00 00 00    	mov    r8d,0x1
    b464:	eb a3                	jmp    b409 <__pthread_mutex_unlock_usercnt+0x49>
    b466:	83 6a 04 01          	sub    DWORD PTR [rdx+0x4],0x1
    b46a:	0f 84 6a ff ff ff    	je     b3da <__pthread_mutex_unlock_usercnt+0x1a>
    b470:	eb 97                	jmp    b409 <__pthread_mutex_unlock_usercnt+0x49>
    b472:	83 f9 03             	cmp    ecx,0x3
    b475:	0f 84 5f ff ff ff    	je     b3da <__pthread_mutex_unlock_usercnt+0x1a>
    b47b:	83 f8 02             	cmp    eax,0x2
    b47e:	75 18                	jne    b498 <__pthread_mutex_unlock_usercnt+0xd8>
    b480:	64 8b 04 25 d0 02 00 	mov    eax,DWORD PTR fs:0x2d0
    b487:	00 
    b488:	39 42 08             	cmp    DWORD PTR [rdx+0x8],eax
    b48b:	75 d1                	jne    b45e <__pthread_mutex_unlock_usercnt+0x9e>
    b48d:	83 3a 00             	cmp    DWORD PTR [rdx],0x0
    b490:	0f 85 44 ff ff ff    	jne    b3da <__pthread_mutex_unlock_usercnt+0x1a>
    b496:	eb c6                	jmp    b45e <__pthread_mutex_unlock_usercnt+0x9e>
    b498:	48 8d 0d 91 7e 00 00 	lea    rcx,[rip+0x7e91]        # 13330 <__PRETTY_FUNCTION__.7695>
    b49f:	50                   	push   rax
    b4a0:	48 8d 35 41 7e 00 00 	lea    rsi,[rip+0x7e41]        # 132e8 <__PRETTY_FUNCTION__.8787+0xe8>
    b4a7:	48 8d 3d 52 7e 00 00 	lea    rdi,[rip+0x7e52]        # 13300 <__PRETTY_FUNCTION__.8787+0x100>
    b4ae:	ba 55 00 00 00       	mov    edx,0x55
    b4b3:	e8 18 a2 ff ff       	call   56d0 <__assert_fail@plt>
    b4b8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    b4bf:	00 

000000000000b4c0 <__pthread_mutex_unlock>:
    b4c0:	8b 77 10             	mov    esi,DWORD PTR [rdi+0x10]
    b4c3:	48 89 fa             	mov    rdx,rdi
    b4c6:	89 f0                	mov    eax,esi
    b4c8:	41 89 f0             	mov    r8d,esi
    b4cb:	25 7f 01 00 00       	and    eax,0x17f
    b4d0:	41 83 e0 7c          	and    r8d,0x7c
    b4d4:	75 3a                	jne    b510 <__pthread_mutex_unlock+0x50>
    b4d6:	85 c0                	test   eax,eax
    b4d8:	75 46                	jne    b520 <__pthread_mutex_unlock+0x60>
    b4da:	c7 42 08 00 00 00 00 	mov    DWORD PTR [rdx+0x8],0x0
    b4e1:	83 6a 0c 01          	sub    DWORD PTR [rdx+0xc],0x1
    b4e5:	81 e6 80 00 00 00    	and    esi,0x80
    b4eb:	f0 ff 0a             	lock dec DWORD PTR [rdx]
    b4ee:	74 16                	je     b506 <__pthread_mutex_unlock+0x46>
    b4f0:	48 8d 3a             	lea    rdi,[rdx]
    b4f3:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    b4fa:	e8 f1 4d 00 00       	call   102f0 <__lll_unlock_wake>
    b4ff:	48 81 c4 80 00 00 00 	add    rsp,0x80
    b506:	90                   	nop
    b507:	44 89 c0             	mov    eax,r8d
    b50a:	c3                   	ret    
    b50b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    b510:	be 01 00 00 00       	mov    esi,0x1
    b515:	e9 f6 fa ff ff       	jmp    b010 <__pthread_mutex_unlock_full>
    b51a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    b520:	3d 00 01 00 00       	cmp    eax,0x100
    b525:	75 0b                	jne    b532 <__pthread_mutex_unlock+0x72>
    b527:	81 e6 80 00 00 00    	and    esi,0x80
    b52d:	e9 9e 73 00 00       	jmp    128d0 <__lll_unlock_elision>
    b532:	89 f1                	mov    ecx,esi
    b534:	83 e1 7f             	and    ecx,0x7f
    b537:	83 f9 01             	cmp    ecx,0x1
    b53a:	75 1d                	jne    b559 <__pthread_mutex_unlock+0x99>
    b53c:	64 8b 04 25 d0 02 00 	mov    eax,DWORD PTR fs:0x2d0
    b543:	00 
    b544:	39 47 08             	cmp    DWORD PTR [rdi+0x8],eax
    b547:	74 08                	je     b551 <__pthread_mutex_unlock+0x91>
    b549:	41 b8 01 00 00 00    	mov    r8d,0x1
    b54f:	eb b6                	jmp    b507 <__pthread_mutex_unlock+0x47>
    b551:	83 6f 04 01          	sub    DWORD PTR [rdi+0x4],0x1
    b555:	74 83                	je     b4da <__pthread_mutex_unlock+0x1a>
    b557:	eb ae                	jmp    b507 <__pthread_mutex_unlock+0x47>
    b559:	83 f9 03             	cmp    ecx,0x3
    b55c:	0f 84 78 ff ff ff    	je     b4da <__pthread_mutex_unlock+0x1a>
    b562:	83 f8 02             	cmp    eax,0x2
    b565:	75 18                	jne    b57f <__pthread_mutex_unlock+0xbf>
    b567:	64 8b 04 25 d0 02 00 	mov    eax,DWORD PTR fs:0x2d0
    b56e:	00 
    b56f:	39 47 08             	cmp    DWORD PTR [rdi+0x8],eax
    b572:	75 d5                	jne    b549 <__pthread_mutex_unlock+0x89>
    b574:	83 3f 00             	cmp    DWORD PTR [rdi],0x0
    b577:	0f 85 5d ff ff ff    	jne    b4da <__pthread_mutex_unlock+0x1a>
    b57d:	eb ca                	jmp    b549 <__pthread_mutex_unlock+0x89>
    b57f:	48 8d 0d aa 7d 00 00 	lea    rcx,[rip+0x7daa]        # 13330 <__PRETTY_FUNCTION__.7695>
    b586:	50                   	push   rax
    b587:	48 8d 35 5a 7d 00 00 	lea    rsi,[rip+0x7d5a]        # 132e8 <__PRETTY_FUNCTION__.8787+0xe8>
    b58e:	48 8d 3d 6b 7d 00 00 	lea    rdi,[rip+0x7d6b]        # 13300 <__PRETTY_FUNCTION__.8787+0x100>
    b595:	ba 55 00 00 00       	mov    edx,0x55
    b59a:	e8 31 a1 ff ff       	call   56d0 <__assert_fail@plt>
    b59f:	90                   	nop

000000000000b5a0 <__pthread_mutex_cond_lock_full>:
    b5a0:	41 57                	push   r15
    b5a2:	41 56                	push   r14
    b5a4:	41 55                	push   r13
    b5a6:	41 54                	push   r12
    b5a8:	55                   	push   rbp
    b5a9:	53                   	push   rbx
    b5aa:	48 81 ec 88 00 00 00 	sub    rsp,0x88
    b5b1:	64 44 8b 24 25 d0 02 	mov    r12d,DWORD PTR fs:0x2d0
    b5b8:	00 00 
    b5ba:	8b 47 10             	mov    eax,DWORD PTR [rdi+0x10]
    b5bd:	89 c1                	mov    ecx,eax
    b5bf:	83 e1 7f             	and    ecx,0x7f
    b5c2:	83 e9 10             	sub    ecx,0x10
    b5c5:	83 f9 33             	cmp    ecx,0x33
    b5c8:	76 17                	jbe    b5e1 <__pthread_mutex_cond_lock_full+0x41>
    b5ca:	b8 16 00 00 00       	mov    eax,0x16
    b5cf:	48 81 c4 88 00 00 00 	add    rsp,0x88
    b5d6:	5b                   	pop    rbx
    b5d7:	5d                   	pop    rbp
    b5d8:	41 5c                	pop    r12
    b5da:	41 5d                	pop    r13
    b5dc:	41 5e                	pop    r14
    b5de:	41 5f                	pop    r15
    b5e0:	c3                   	ret    
    b5e1:	ba 01 00 00 00       	mov    edx,0x1
    b5e6:	48 89 fb             	mov    rbx,rdi
    b5e9:	48 d3 e2             	shl    rdx,cl
    b5ec:	48 b9 00 00 0f 00 0f 	movabs rcx,0xf000f0000
    b5f3:	00 00 00 
    b5f6:	48 85 ca             	test   rdx,rcx
    b5f9:	0f 84 fb 00 00 00    	je     b6fa <__pthread_mutex_cond_lock_full+0x15a>
    b5ff:	41 89 c1             	mov    r9d,eax
    b602:	41 83 e1 03          	and    r9d,0x3
    b606:	83 e0 10             	and    eax,0x10
    b609:	41 89 c0             	mov    r8d,eax
    b60c:	74 11                	je     b61f <__pthread_mutex_cond_lock_full+0x7f>
    b60e:	48 8d 47 20          	lea    rax,[rdi+0x20]
    b612:	48 83 c8 01          	or     rax,0x1
    b616:	64 48 89 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,rax
    b61d:	00 00 
    b61f:	8b 03                	mov    eax,DWORD PTR [rbx]
    b621:	25 ff ff ff 3f       	and    eax,0x3fffffff
    b626:	41 39 c4             	cmp    r12d,eax
    b629:	0f 84 41 04 00 00    	je     ba70 <__pthread_mutex_cond_lock_full+0x4d0>
    b62f:	44 89 e2             	mov    edx,r12d
    b632:	31 c0                	xor    eax,eax
    b634:	81 ca 00 00 00 80    	or     edx,0x80000000
    b63a:	f0 0f b1 13          	lock cmpxchg DWORD PTR [rbx],edx
    b63e:	85 c0                	test   eax,eax
    b640:	0f 84 b3 01 00 00    	je     b7f9 <__pthread_mutex_cond_lock_full+0x259>
    b646:	45 85 c0             	test   r8d,r8d
    b649:	be 06 00 00 00       	mov    esi,0x6
    b64e:	75 10                	jne    b660 <__pthread_mutex_cond_lock_full+0xc0>
    b650:	8b 73 10             	mov    esi,DWORD PTR [rbx+0x10]
    b653:	81 e6 80 00 00 00    	and    esi,0x80
    b659:	40 80 f6 86          	xor    sil,0x86
    b65d:	48 63 f6             	movsxd rsi,esi
    b660:	45 31 d2             	xor    r10d,r10d
    b663:	ba 01 00 00 00       	mov    edx,0x1
    b668:	48 89 df             	mov    rdi,rbx
    b66b:	b8 ca 00 00 00       	mov    eax,0xca
    b670:	0f 05                	syscall 
    b672:	3d 00 f0 ff ff       	cmp    eax,0xfffff000
    b677:	0f 86 53 01 00 00    	jbe    b7d0 <__pthread_mutex_cond_lock_full+0x230>
    b67d:	89 c2                	mov    edx,eax
    b67f:	83 e2 df             	and    edx,0xffffffdf
    b682:	83 fa dd             	cmp    edx,0xffffffdd
    b685:	0f 85 45 01 00 00    	jne    b7d0 <__pthread_mutex_cond_lock_full+0x230>
    b68b:	83 f8 dd             	cmp    eax,0xffffffdd
    b68e:	0f 84 57 04 00 00    	je     baeb <__pthread_mutex_cond_lock_full+0x54b>
    b694:	83 f8 fd             	cmp    eax,0xfffffffd
    b697:	75 09                	jne    b6a2 <__pthread_mutex_cond_lock_full+0x102>
    b699:	45 85 c0             	test   r8d,r8d
    b69c:	0f 85 04 04 00 00    	jne    baa6 <__pthread_mutex_cond_lock_full+0x506>
    b6a2:	48 8b 2d df c8 20 00 	mov    rbp,QWORD PTR [rip+0x20c8df]        # 217f88 <_DYNAMIC+0x238>
    b6a9:	49 89 e0             	mov    r8,rsp
    b6ac:	41 b9 0e 00 00 00    	mov    r9d,0xe
    b6b2:	bb 82 00 00 00       	mov    ebx,0x82
    b6b7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    b6be:	00 00 
    b6c0:	41 ba 08 00 00 00    	mov    r10d,0x8
    b6c6:	4c 89 c2             	mov    rdx,r8
    b6c9:	31 f6                	xor    esi,esi
    b6cb:	31 ff                	xor    edi,edi
    b6cd:	44 89 c8             	mov    eax,r9d
    b6d0:	0f 05                	syscall 
    b6d2:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    b6d8:	77 18                	ja     b6f2 <__pthread_mutex_cond_lock_full+0x152>
    b6da:	85 c0                	test   eax,eax
    b6dc:	75 e2                	jne    b6c0 <__pthread_mutex_cond_lock_full+0x120>
    b6de:	be 08 00 00 00       	mov    esi,0x8
    b6e3:	4c 89 c7             	mov    rdi,r8
    b6e6:	89 d8                	mov    eax,ebx
    b6e8:	0f 05                	syscall 
    b6ea:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    b6f0:	76 ce                	jbe    b6c0 <__pthread_mutex_cond_lock_full+0x120>
    b6f2:	f7 d8                	neg    eax
    b6f4:	64 89 45 00          	mov    DWORD PTR fs:[rbp+0x0],eax
    b6f8:	eb c6                	jmp    b6c0 <__pthread_mutex_cond_lock_full+0x120>
    b6fa:	f6 c2 0f             	test   dl,0xf
    b6fd:	0f 85 61 01 00 00    	jne    b864 <__pthread_mutex_cond_lock_full+0x2c4>
    b703:	48 b9 00 00 00 00 00 	movabs rcx,0xf000000000000
    b70a:	00 0f 00 
    b70d:	48 85 ca             	test   rdx,rcx
    b710:	0f 84 b4 fe ff ff    	je     b5ca <__pthread_mutex_cond_lock_full+0x2a>
    b716:	44 3b 67 08          	cmp    r12d,DWORD PTR [rdi+0x8]
    b71a:	8b 0f                	mov    ecx,DWORD PTR [rdi]
    b71c:	bd ff ff ff ff       	mov    ebp,0xffffffff
    b721:	0f 84 9e 03 00 00    	je     bac5 <__pthread_mutex_cond_lock_full+0x525>
    b727:	41 be ca 00 00 00    	mov    r14d,0xca
    b72d:	c1 e9 13             	shr    ecx,0x13
    b730:	41 89 cd             	mov    r13d,ecx
    b733:	e8 18 69 00 00       	call   12050 <__pthread_current_priority>
    b738:	41 39 c5             	cmp    r13d,eax
    b73b:	0f 8c d7 03 00 00    	jl     bb18 <__pthread_mutex_cond_lock_full+0x578>
    b741:	44 89 ee             	mov    esi,r13d
    b744:	89 ef                	mov    edi,ebp
    b746:	e8 75 65 00 00       	call   11cc0 <__pthread_tpp_change_priority>
    b74b:	85 c0                	test   eax,eax
    b74d:	0f 85 7c fe ff ff    	jne    b5cf <__pthread_mutex_cond_lock_full+0x2f>
    b753:	45 89 e8             	mov    r8d,r13d
    b756:	41 c1 e0 13          	shl    r8d,0x13
    b75a:	45 89 c1             	mov    r9d,r8d
    b75d:	44 89 c0             	mov    eax,r8d
    b760:	41 83 c9 02          	or     r9d,0x2
    b764:	f0 44 0f b1 0b       	lock cmpxchg DWORD PTR [rbx],r9d
    b769:	41 39 c0             	cmp    r8d,eax
    b76c:	0f 84 cc 02 00 00    	je     ba3e <__pthread_mutex_cond_lock_full+0x49e>
    b772:	44 89 c5             	mov    ebp,r8d
    b775:	4d 63 f9             	movsxd r15,r9d
    b778:	83 cd 01             	or     ebp,0x1
    b77b:	eb 35                	jmp    b7b2 <__pthread_mutex_cond_lock_full+0x212>
    b77d:	0f 1f 00             	nop    DWORD PTR [rax]
    b780:	41 39 c0             	cmp    r8d,eax
    b783:	74 1c                	je     b7a1 <__pthread_mutex_cond_lock_full+0x201>
    b785:	8b 73 10             	mov    esi,DWORD PTR [rbx+0x10]
    b788:	45 31 d2             	xor    r10d,r10d
    b78b:	4c 89 fa             	mov    rdx,r15
    b78e:	48 89 df             	mov    rdi,rbx
    b791:	44 89 f0             	mov    eax,r14d
    b794:	f7 d6                	not    esi
    b796:	81 e6 80 00 00 00    	and    esi,0x80
    b79c:	48 63 f6             	movsxd rsi,esi
    b79f:	0f 05                	syscall 
    b7a1:	44 89 c0             	mov    eax,r8d
    b7a4:	f0 44 0f b1 0b       	lock cmpxchg DWORD PTR [rbx],r9d
    b7a9:	41 39 c0             	cmp    r8d,eax
    b7ac:	0f 84 8c 02 00 00    	je     ba3e <__pthread_mutex_cond_lock_full+0x49e>
    b7b2:	89 e8                	mov    eax,ebp
    b7b4:	f0 44 0f b1 0b       	lock cmpxchg DWORD PTR [rbx],r9d
    b7b9:	89 c2                	mov    edx,eax
    b7bb:	89 c1                	mov    ecx,eax
    b7bd:	81 e2 00 00 f8 ff    	and    edx,0xfff80000
    b7c3:	41 39 d0             	cmp    r8d,edx
    b7c6:	74 b8                	je     b780 <__pthread_mutex_cond_lock_full+0x1e0>
    b7c8:	44 89 ed             	mov    ebp,r13d
    b7cb:	e9 5d ff ff ff       	jmp    b72d <__pthread_mutex_cond_lock_full+0x18d>
    b7d0:	45 85 c0             	test   r8d,r8d
    b7d3:	8b 03                	mov    eax,DWORD PTR [rbx]
    b7d5:	0f 85 e5 01 00 00    	jne    b9c0 <__pthread_mutex_cond_lock_full+0x420>
    b7db:	a9 00 00 00 40       	test   eax,0x40000000
    b7e0:	0f 85 4c 03 00 00    	jne    bb32 <__pthread_mutex_cond_lock_full+0x592>
    b7e6:	c7 43 04 01 00 00 00 	mov    DWORD PTR [rbx+0x4],0x1
    b7ed:	44 89 63 08          	mov    DWORD PTR [rbx+0x8],r12d
    b7f1:	90                   	nop
    b7f2:	31 c0                	xor    eax,eax
    b7f4:	e9 d6 fd ff ff       	jmp    b5cf <__pthread_mutex_cond_lock_full+0x2f>
    b7f9:	45 85 c0             	test   r8d,r8d
    b7fc:	74 e8                	je     b7e6 <__pthread_mutex_cond_lock_full+0x246>
    b7fe:	81 7b 08 fe ff ff 7f 	cmp    DWORD PTR [rbx+0x8],0x7ffffffe
    b805:	0f 84 50 03 00 00    	je     bb5b <__pthread_mutex_cond_lock_full+0x5bb>
    b80b:	c7 43 04 01 00 00 00 	mov    DWORD PTR [rbx+0x4],0x1
    b812:	64 48 8b 14 25 e0 02 	mov    rdx,QWORD PTR fs:0x2e0
    b819:	00 00 
    b81b:	48 8d 43 20          	lea    rax,[rbx+0x20]
    b81f:	48 83 e2 fe          	and    rdx,0xfffffffffffffffe
    b823:	48 89 42 f8          	mov    QWORD PTR [rdx-0x8],rax
    b827:	64 48 8b 14 25 e0 02 	mov    rdx,QWORD PTR fs:0x2e0
    b82e:	00 00 
    b830:	48 89 53 20          	mov    QWORD PTR [rbx+0x20],rdx
    b834:	48 83 c8 01          	or     rax,0x1
    b838:	64 48 8b 14 25 10 00 	mov    rdx,QWORD PTR fs:0x10
    b83f:	00 00 
    b841:	48 81 c2 e0 02 00 00 	add    rdx,0x2e0
    b848:	48 89 53 18          	mov    QWORD PTR [rbx+0x18],rdx
    b84c:	64 48 89 04 25 e0 02 	mov    QWORD PTR fs:0x2e0,rax
    b853:	00 00 
    b855:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    b85c:	00 00 00 00 00 00 
    b862:	eb 89                	jmp    b7ed <__pthread_mutex_cond_lock_full+0x24d>
    b864:	4c 8d 47 20          	lea    r8,[rdi+0x20]
    b868:	64 4c 89 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,r8
    b86f:	00 00 
    b871:	8b 17                	mov    edx,DWORD PTR [rdi]
    b873:	45 89 e1             	mov    r9d,r12d
    b876:	31 ed                	xor    ebp,ebp
    b878:	41 81 c9 00 00 00 80 	or     r9d,0x80000000
    b87f:	41 ba 80 00 00 00    	mov    r10d,0x80
    b885:	89 d0                	mov    eax,edx
    b887:	25 00 00 00 40       	and    eax,0x40000000
    b88c:	0f 85 9e 00 00 00    	jne    b930 <__pthread_mutex_cond_lock_full+0x390>
    b892:	81 e2 ff ff ff 3f    	and    edx,0x3fffffff
    b898:	41 39 d4             	cmp    r12d,edx
    b89b:	0f 84 e3 00 00 00    	je     b984 <__pthread_mutex_cond_lock_full+0x3e4>
    b8a1:	44 89 cf             	mov    edi,r9d
    b8a4:	89 e8                	mov    eax,ebp
    b8a6:	44 89 d6             	mov    esi,r10d
    b8a9:	f0 0f b1 3b          	lock cmpxchg DWORD PTR [rbx],edi
    b8ad:	74 16                	je     b8c5 <__pthread_mutex_cond_lock_full+0x325>
    b8af:	48 8d 3b             	lea    rdi,[rbx]
    b8b2:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    b8b9:	e8 e2 4a 00 00       	call   103a0 <__lll_robust_lock_wait>
    b8be:	48 81 c4 80 00 00 00 	add    rsp,0x80
    b8c5:	81 7b 08 fe ff ff 7f 	cmp    DWORD PTR [rbx+0x8],0x7ffffffe
    b8cc:	89 c2                	mov    edx,eax
    b8ce:	74 76                	je     b946 <__pthread_mutex_cond_lock_full+0x3a6>
    b8d0:	a9 00 00 00 40       	test   eax,0x40000000
    b8d5:	75 ae                	jne    b885 <__pthread_mutex_cond_lock_full+0x2e5>
    b8d7:	c7 43 04 01 00 00 00 	mov    DWORD PTR [rbx+0x4],0x1
    b8de:	64 48 8b 04 25 e0 02 	mov    rax,QWORD PTR fs:0x2e0
    b8e5:	00 00 
    b8e7:	48 83 e0 fe          	and    rax,0xfffffffffffffffe
    b8eb:	4c 89 40 f8          	mov    QWORD PTR [rax-0x8],r8
    b8ef:	64 48 8b 04 25 e0 02 	mov    rax,QWORD PTR fs:0x2e0
    b8f6:	00 00 
    b8f8:	48 89 43 20          	mov    QWORD PTR [rbx+0x20],rax
    b8fc:	64 48 8b 04 25 10 00 	mov    rax,QWORD PTR fs:0x10
    b903:	00 00 
    b905:	48 05 e0 02 00 00    	add    rax,0x2e0
    b90b:	48 89 43 18          	mov    QWORD PTR [rbx+0x18],rax
    b90f:	64 4c 89 04 25 e0 02 	mov    QWORD PTR fs:0x2e0,r8
    b916:	00 00 
    b918:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    b91f:	00 00 00 00 00 00 
    b925:	e9 c3 fe ff ff       	jmp    b7ed <__pthread_mutex_cond_lock_full+0x24d>
    b92a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    b930:	89 d0                	mov    eax,edx
    b932:	f0 44 0f b1 0b       	lock cmpxchg DWORD PTR [rbx],r9d
    b937:	39 c2                	cmp    edx,eax
    b939:	0f 84 65 02 00 00    	je     bba4 <__pthread_mutex_cond_lock_full+0x604>
    b93f:	89 c2                	mov    edx,eax
    b941:	e9 3f ff ff ff       	jmp    b885 <__pthread_mutex_cond_lock_full+0x2e5>
    b946:	c7 43 04 00 00 00 00 	mov    DWORD PTR [rbx+0x4],0x0
    b94d:	be 80 00 00 00       	mov    esi,0x80
    b952:	f0 ff 0b             	lock dec DWORD PTR [rbx]
    b955:	74 16                	je     b96d <__pthread_mutex_cond_lock_full+0x3cd>
    b957:	48 8d 3b             	lea    rdi,[rbx]
    b95a:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    b961:	e8 8a 49 00 00       	call   102f0 <__lll_unlock_wake>
    b966:	48 81 c4 80 00 00 00 	add    rsp,0x80
    b96d:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    b974:	00 00 00 00 00 00 
    b97a:	b8 83 00 00 00       	mov    eax,0x83
    b97f:	e9 4b fc ff ff       	jmp    b5cf <__pthread_mutex_cond_lock_full+0x2f>
    b984:	8b 53 10             	mov    edx,DWORD PTR [rbx+0x10]
    b987:	83 e2 7f             	and    edx,0x7f
    b98a:	83 fa 12             	cmp    edx,0x12
    b98d:	0f 84 fa 01 00 00    	je     bb8d <__pthread_mutex_cond_lock_full+0x5ed>
    b993:	83 fa 11             	cmp    edx,0x11
    b996:	0f 85 05 ff ff ff    	jne    b8a1 <__pthread_mutex_cond_lock_full+0x301>
    b99c:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    b9a3:	00 00 00 00 00 00 
    b9a9:	8b 53 04             	mov    edx,DWORD PTR [rbx+0x4]
    b9ac:	83 fa ff             	cmp    edx,0xffffffff
    b9af:	0f 84 2c 01 00 00    	je     bae1 <__pthread_mutex_cond_lock_full+0x541>
    b9b5:	83 c2 01             	add    edx,0x1
    b9b8:	89 53 04             	mov    DWORD PTR [rbx+0x4],edx
    b9bb:	e9 0f fc ff ff       	jmp    b5cf <__pthread_mutex_cond_lock_full+0x2f>
    b9c0:	a9 00 00 00 40       	test   eax,0x40000000
    b9c5:	0f 84 33 fe ff ff    	je     b7fe <__pthread_mutex_cond_lock_full+0x25e>
    b9cb:	f0 81 23 ff ff ff bf 	lock and DWORD PTR [rbx],0xbfffffff
    b9d2:	c7 43 04 01 00 00 00 	mov    DWORD PTR [rbx+0x4],0x1
    b9d9:	c7 43 08 ff ff ff 7f 	mov    DWORD PTR [rbx+0x8],0x7fffffff
    b9e0:	64 48 8b 14 25 e0 02 	mov    rdx,QWORD PTR fs:0x2e0
    b9e7:	00 00 
    b9e9:	48 8d 43 20          	lea    rax,[rbx+0x20]
    b9ed:	48 83 e2 fe          	and    rdx,0xfffffffffffffffe
    b9f1:	48 89 42 f8          	mov    QWORD PTR [rdx-0x8],rax
    b9f5:	64 48 8b 14 25 e0 02 	mov    rdx,QWORD PTR fs:0x2e0
    b9fc:	00 00 
    b9fe:	48 89 53 20          	mov    QWORD PTR [rbx+0x20],rdx
    ba02:	48 83 c8 01          	or     rax,0x1
    ba06:	64 48 8b 14 25 10 00 	mov    rdx,QWORD PTR fs:0x10
    ba0d:	00 00 
    ba0f:	48 81 c2 e0 02 00 00 	add    rdx,0x2e0
    ba16:	48 89 53 18          	mov    QWORD PTR [rbx+0x18],rdx
    ba1a:	64 48 89 04 25 e0 02 	mov    QWORD PTR fs:0x2e0,rax
    ba21:	00 00 
    ba23:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    ba2a:	00 00 00 00 00 00 
    ba30:	b8 82 00 00 00       	mov    eax,0x82
    ba35:	83 6b 0c 01          	sub    DWORD PTR [rbx+0xc],0x1
    ba39:	e9 91 fb ff ff       	jmp    b5cf <__pthread_mutex_cond_lock_full+0x2f>
    ba3e:	8b 43 08             	mov    eax,DWORD PTR [rbx+0x8]
    ba41:	85 c0                	test   eax,eax
    ba43:	0f 84 9d fd ff ff    	je     b7e6 <__pthread_mutex_cond_lock_full+0x246>
    ba49:	48 8d 0d 10 7a 00 00 	lea    rcx,[rip+0x7a10]        # 13460 <__PRETTY_FUNCTION__.8798>
    ba50:	48 8d 35 a1 75 00 00 	lea    rsi,[rip+0x75a1]        # 12ff8 <default_mutexattr+0x4>
    ba57:	48 8d 3d b7 75 00 00 	lea    rdi,[rip+0x75b7]        # 13015 <default_mutexattr+0x21>
    ba5e:	ba ef 01 00 00       	mov    edx,0x1ef
    ba63:	e8 68 9c ff ff       	call   56d0 <__assert_fail@plt>
    ba68:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    ba6f:	00 
    ba70:	41 83 f9 02          	cmp    r9d,0x2
    ba74:	0f 84 13 01 00 00    	je     bb8d <__pthread_mutex_cond_lock_full+0x5ed>
    ba7a:	41 83 f9 01          	cmp    r9d,0x1
    ba7e:	0f 85 ab fb ff ff    	jne    b62f <__pthread_mutex_cond_lock_full+0x8f>
    ba84:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    ba8b:	00 00 00 00 00 00 
    ba91:	8b 43 04             	mov    eax,DWORD PTR [rbx+0x4]
    ba94:	83 f8 ff             	cmp    eax,0xffffffff
    ba97:	74 48                	je     bae1 <__pthread_mutex_cond_lock_full+0x541>
    ba99:	83 c0 01             	add    eax,0x1
    ba9c:	89 43 04             	mov    DWORD PTR [rbx+0x4],eax
    ba9f:	31 c0                	xor    eax,eax
    baa1:	e9 29 fb ff ff       	jmp    b5cf <__pthread_mutex_cond_lock_full+0x2f>
    baa6:	48 8d 0d b3 79 00 00 	lea    rcx,[rip+0x79b3]        # 13460 <__PRETTY_FUNCTION__.8798>
    baad:	48 8d 35 44 75 00 00 	lea    rsi,[rip+0x7544]        # 12ff8 <default_mutexattr+0x4>
    bab4:	48 8d 3d f5 75 00 00 	lea    rdi,[rip+0x75f5]        # 130b0 <default_mutexattr+0xbc>
    babb:	ba 60 01 00 00       	mov    edx,0x160
    bac0:	e8 0b 9c ff ff       	call   56d0 <__assert_fail@plt>
    bac5:	83 e0 03             	and    eax,0x3
    bac8:	83 f8 02             	cmp    eax,0x2
    bacb:	0f 84 80 00 00 00    	je     bb51 <__pthread_mutex_cond_lock_full+0x5b1>
    bad1:	83 f8 01             	cmp    eax,0x1
    bad4:	0f 85 4d fc ff ff    	jne    b727 <__pthread_mutex_cond_lock_full+0x187>
    bada:	8b 47 04             	mov    eax,DWORD PTR [rdi+0x4]
    badd:	39 e8                	cmp    eax,ebp
    badf:	75 b8                	jne    ba99 <__pthread_mutex_cond_lock_full+0x4f9>
    bae1:	b8 0b 00 00 00       	mov    eax,0xb
    bae6:	e9 e4 fa ff ff       	jmp    b5cf <__pthread_mutex_cond_lock_full+0x2f>
    baeb:	41 83 e9 01          	sub    r9d,0x1
    baef:	41 83 f9 01          	cmp    r9d,0x1
    baf3:	0f 87 a9 fb ff ff    	ja     b6a2 <__pthread_mutex_cond_lock_full+0x102>
    baf9:	48 8d 0d 60 79 00 00 	lea    rcx,[rip+0x7960]        # 13460 <__PRETTY_FUNCTION__.8798>
    bb00:	48 8d 35 f1 74 00 00 	lea    rsi,[rip+0x74f1]        # 12ff8 <default_mutexattr+0x4>
    bb07:	48 8d 3d 22 75 00 00 	lea    rdi,[rip+0x7522]        # 13030 <default_mutexattr+0x3c>
    bb0e:	ba 5d 01 00 00       	mov    edx,0x15d
    bb13:	e8 b8 9b ff ff       	call   56d0 <__assert_fail@plt>
    bb18:	83 fd ff             	cmp    ebp,0xffffffff
    bb1b:	0f 84 a9 fa ff ff    	je     b5ca <__pthread_mutex_cond_lock_full+0x2a>
    bb21:	be ff ff ff ff       	mov    esi,0xffffffff
    bb26:	89 ef                	mov    edi,ebp
    bb28:	e8 93 61 00 00       	call   11cc0 <__pthread_tpp_change_priority>
    bb2d:	e9 98 fa ff ff       	jmp    b5ca <__pthread_mutex_cond_lock_full+0x2a>
    bb32:	48 8d 0d 27 79 00 00 	lea    rcx,[rip+0x7927]        # 13460 <__PRETTY_FUNCTION__.8798>
    bb39:	48 8d 35 b8 74 00 00 	lea    rsi,[rip+0x74b8]        # 12ff8 <default_mutexattr+0x4>
    bb40:	48 8d 3d a1 75 00 00 	lea    rdi,[rip+0x75a1]        # 130e8 <default_mutexattr+0xf4>
    bb47:	ba 69 01 00 00       	mov    edx,0x169
    bb4c:	e8 7f 9b ff ff       	call   56d0 <__assert_fail@plt>
    bb51:	b8 23 00 00 00       	mov    eax,0x23
    bb56:	e9 74 fa ff ff       	jmp    b5cf <__pthread_mutex_cond_lock_full+0x2f>
    bb5b:	c7 43 04 00 00 00 00 	mov    DWORD PTR [rbx+0x4],0x0
    bb62:	45 31 d2             	xor    r10d,r10d
    bb65:	31 d2                	xor    edx,edx
    bb67:	be 07 00 00 00       	mov    esi,0x7
    bb6c:	48 89 df             	mov    rdi,rbx
    bb6f:	b8 ca 00 00 00       	mov    eax,0xca
    bb74:	0f 05                	syscall 
    bb76:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    bb7d:	00 00 00 00 00 00 
    bb83:	b8 83 00 00 00       	mov    eax,0x83
    bb88:	e9 42 fa ff ff       	jmp    b5cf <__pthread_mutex_cond_lock_full+0x2f>
    bb8d:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    bb94:	00 00 00 00 00 00 
    bb9a:	b8 23 00 00 00       	mov    eax,0x23
    bb9f:	e9 2b fa ff ff       	jmp    b5cf <__pthread_mutex_cond_lock_full+0x2f>
    bba4:	c7 43 04 01 00 00 00 	mov    DWORD PTR [rbx+0x4],0x1
    bbab:	c7 43 08 ff ff ff 7f 	mov    DWORD PTR [rbx+0x8],0x7fffffff
    bbb2:	64 48 8b 04 25 e0 02 	mov    rax,QWORD PTR fs:0x2e0
    bbb9:	00 00 
    bbbb:	48 83 e0 fe          	and    rax,0xfffffffffffffffe
    bbbf:	4c 89 40 f8          	mov    QWORD PTR [rax-0x8],r8
    bbc3:	64 48 8b 04 25 e0 02 	mov    rax,QWORD PTR fs:0x2e0
    bbca:	00 00 
    bbcc:	48 89 43 20          	mov    QWORD PTR [rbx+0x20],rax
    bbd0:	64 48 8b 04 25 10 00 	mov    rax,QWORD PTR fs:0x10
    bbd7:	00 00 
    bbd9:	48 05 e0 02 00 00    	add    rax,0x2e0
    bbdf:	48 89 43 18          	mov    QWORD PTR [rbx+0x18],rax
    bbe3:	64 4c 89 04 25 e0 02 	mov    QWORD PTR fs:0x2e0,r8
    bbea:	00 00 
    bbec:	64 48 c7 04 25 f0 02 	mov    QWORD PTR fs:0x2f0,0x0
    bbf3:	00 00 00 00 00 00 
    bbf9:	b8 82 00 00 00       	mov    eax,0x82
    bbfe:	83 6b 0c 01          	sub    DWORD PTR [rbx+0xc],0x1
    bc02:	e9 c8 f9 ff ff       	jmp    b5cf <__pthread_mutex_cond_lock_full+0x2f>
    bc07:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    bc0e:	00 00 

000000000000bc10 <__pthread_mutex_cond_lock>:
    bc10:	48 83 ec 08          	sub    rsp,0x8
    bc14:	8b 77 10             	mov    esi,DWORD PTR [rdi+0x10]
    bc17:	89 f2                	mov    edx,esi
    bc19:	81 e2 7f 01 00 00    	and    edx,0x17f
    bc1f:	90                   	nop
    bc20:	89 f0                	mov    eax,esi
    bc22:	83 e0 7c             	and    eax,0x7c
    bc25:	75 59                	jne    bc80 <__pthread_mutex_cond_lock+0x70>
    bc27:	85 d2                	test   edx,edx
    bc29:	49 89 f8             	mov    r8,rdi
    bc2c:	75 62                	jne    bc90 <__pthread_mutex_cond_lock+0x80>
    bc2e:	81 e6 80 00 00 00    	and    esi,0x80
    bc34:	bf 02 00 00 00       	mov    edi,0x2
    bc39:	31 c0                	xor    eax,eax
    bc3b:	f0 41 0f b1 38       	lock cmpxchg DWORD PTR [r8],edi
    bc40:	74 16                	je     bc58 <__pthread_mutex_cond_lock+0x48>
    bc42:	49 8d 38             	lea    rdi,[r8]
    bc45:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    bc4c:	e8 ff 45 00 00       	call   10250 <__lll_lock_wait>
    bc51:	48 81 c4 80 00 00 00 	add    rsp,0x80
    bc58:	41 8b 50 08          	mov    edx,DWORD PTR [r8+0x8]
    bc5c:	85 d2                	test   edx,edx
    bc5e:	0f 85 a5 01 00 00    	jne    be09 <__pthread_mutex_cond_lock+0x1f9>
    bc64:	64 8b 04 25 d0 02 00 	mov    eax,DWORD PTR fs:0x2d0
    bc6b:	00 
    bc6c:	41 89 40 08          	mov    DWORD PTR [r8+0x8],eax
    bc70:	90                   	nop
    bc71:	31 c0                	xor    eax,eax
    bc73:	48 83 c4 08          	add    rsp,0x8
    bc77:	c3                   	ret    
    bc78:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    bc7f:	00 
    bc80:	48 83 c4 08          	add    rsp,0x8
    bc84:	e9 17 f9 ff ff       	jmp    b5a0 <__pthread_mutex_cond_lock_full>
    bc89:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    bc90:	81 fa 00 01 00 00    	cmp    edx,0x100
    bc96:	75 2c                	jne    bcc4 <__pthread_mutex_cond_lock+0xb4>
    bc98:	81 e6 80 00 00 00    	and    esi,0x80
    bc9e:	bf 02 00 00 00       	mov    edi,0x2
    bca3:	f0 41 0f b1 38       	lock cmpxchg DWORD PTR [r8],edi
    bca8:	74 16                	je     bcc0 <__pthread_mutex_cond_lock+0xb0>
    bcaa:	49 8d 38             	lea    rdi,[r8]
    bcad:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    bcb4:	e8 97 45 00 00       	call   10250 <__lll_lock_wait>
    bcb9:	48 81 c4 80 00 00 00 	add    rsp,0x80
    bcc0:	31 c0                	xor    eax,eax
    bcc2:	eb af                	jmp    bc73 <__pthread_mutex_cond_lock+0x63>
    bcc4:	89 f2                	mov    edx,esi
    bcc6:	83 e2 7f             	and    edx,0x7f
    bcc9:	83 fa 01             	cmp    edx,0x1
    bccc:	75 67                	jne    bd35 <__pthread_mutex_cond_lock+0x125>
    bcce:	64 8b 14 25 d0 02 00 	mov    edx,DWORD PTR fs:0x2d0
    bcd5:	00 
    bcd6:	3b 57 08             	cmp    edx,DWORD PTR [rdi+0x8]
    bcd9:	74 41                	je     bd1c <__pthread_mutex_cond_lock+0x10c>
    bcdb:	81 e6 80 00 00 00    	and    esi,0x80
    bce1:	bf 02 00 00 00       	mov    edi,0x2
    bce6:	f0 41 0f b1 38       	lock cmpxchg DWORD PTR [r8],edi
    bceb:	74 16                	je     bd03 <__pthread_mutex_cond_lock+0xf3>
    bced:	49 8d 38             	lea    rdi,[r8]
    bcf0:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    bcf7:	e8 54 45 00 00       	call   10250 <__lll_lock_wait>
    bcfc:	48 81 c4 80 00 00 00 	add    rsp,0x80
    bd03:	41 8b 40 08          	mov    eax,DWORD PTR [r8+0x8]
    bd07:	85 c0                	test   eax,eax
    bd09:	0f 85 43 01 00 00    	jne    be52 <__pthread_mutex_cond_lock+0x242>
    bd0f:	41 c7 40 04 01 00 00 	mov    DWORD PTR [r8+0x4],0x1
    bd16:	00 
    bd17:	e9 48 ff ff ff       	jmp    bc64 <__pthread_mutex_cond_lock+0x54>
    bd1c:	8b 47 04             	mov    eax,DWORD PTR [rdi+0x4]
    bd1f:	83 f8 ff             	cmp    eax,0xffffffff
    bd22:	0f 84 00 01 00 00    	je     be28 <__pthread_mutex_cond_lock+0x218>
    bd28:	83 c0 01             	add    eax,0x1
    bd2b:	89 47 04             	mov    DWORD PTR [rdi+0x4],eax
    bd2e:	31 c0                	xor    eax,eax
    bd30:	e9 3e ff ff ff       	jmp    bc73 <__pthread_mutex_cond_lock+0x63>
    bd35:	83 fa 03             	cmp    edx,0x3
    bd38:	0f 85 f4 00 00 00    	jne    be32 <__pthread_mutex_cond_lock+0x222>
    bd3e:	83 3d 5f 06 21 00 00 	cmp    DWORD PTR [rip+0x21065f],0x0        # 21c3a4 <__is_smp>
    bd45:	0f 84 e3 fe ff ff    	je     bc2e <__pthread_mutex_cond_lock+0x1e>
    bd4b:	ba 02 00 00 00       	mov    edx,0x2
    bd50:	f0 0f b1 17          	lock cmpxchg DWORD PTR [rdi],edx
    bd54:	85 c0                	test   eax,eax
    bd56:	0f 84 83 00 00 00    	je     bddf <__pthread_mutex_cond_lock+0x1cf>
    bd5c:	0f bf 47 14          	movsx  eax,WORD PTR [rdi+0x14]
    bd60:	be 02 00 00 00       	mov    esi,0x2
    bd65:	8d 4c 00 0a          	lea    ecx,[rax+rax*1+0xa]
    bd69:	b8 64 00 00 00       	mov    eax,0x64
    bd6e:	83 f9 64             	cmp    ecx,0x64
    bd71:	0f 4f c8             	cmovg  ecx,eax
    bd74:	31 d2                	xor    edx,edx
    bd76:	31 ff                	xor    edi,edi
    bd78:	eb 13                	jmp    bd8d <__pthread_mutex_cond_lock+0x17d>
    bd7a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    bd80:	f3 90                	pause  
    bd82:	89 f8                	mov    eax,edi
    bd84:	f0 41 0f b1 30       	lock cmpxchg DWORD PTR [r8],esi
    bd89:	85 c0                	test   eax,eax
    bd8b:	74 38                	je     bdc5 <__pthread_mutex_cond_lock+0x1b5>
    bd8d:	83 c2 01             	add    edx,0x1
    bd90:	8d 42 ff             	lea    eax,[rdx-0x1]
    bd93:	39 c8                	cmp    eax,ecx
    bd95:	7c e9                	jl     bd80 <__pthread_mutex_cond_lock+0x170>
    bd97:	41 8b 70 10          	mov    esi,DWORD PTR [r8+0x10]
    bd9b:	bf 02 00 00 00       	mov    edi,0x2
    bda0:	31 c0                	xor    eax,eax
    bda2:	81 e6 80 00 00 00    	and    esi,0x80
    bda8:	f0 41 0f b1 38       	lock cmpxchg DWORD PTR [r8],edi
    bdad:	74 16                	je     bdc5 <__pthread_mutex_cond_lock+0x1b5>
    bdaf:	49 8d 38             	lea    rdi,[r8]
    bdb2:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    bdb9:	e8 92 44 00 00       	call   10250 <__lll_lock_wait>
    bdbe:	48 81 c4 80 00 00 00 	add    rsp,0x80
    bdc5:	41 0f bf 40 14       	movsx  eax,WORD PTR [r8+0x14]
    bdca:	be 08 00 00 00       	mov    esi,0x8
    bdcf:	29 c2                	sub    edx,eax
    bdd1:	89 c1                	mov    ecx,eax
    bdd3:	89 d0                	mov    eax,edx
    bdd5:	99                   	cdq    
    bdd6:	f7 fe                	idiv   esi
    bdd8:	01 c8                	add    eax,ecx
    bdda:	66 41 89 40 14       	mov    WORD PTR [r8+0x14],ax
    bddf:	41 83 78 08 00       	cmp    DWORD PTR [r8+0x8],0x0
    bde4:	0f 84 7a fe ff ff    	je     bc64 <__pthread_mutex_cond_lock+0x54>
    bdea:	48 8d 0d 8f 76 00 00 	lea    rcx,[rip+0x768f]        # 13480 <__PRETTY_FUNCTION__.8623>
    bdf1:	48 8d 35 00 72 00 00 	lea    rsi,[rip+0x7200]        # 12ff8 <default_mutexattr+0x4>
    bdf8:	48 8d 3d 16 72 00 00 	lea    rdi,[rip+0x7216]        # 13015 <default_mutexattr+0x21>
    bdff:	ba 90 00 00 00       	mov    edx,0x90
    be04:	e8 c7 98 ff ff       	call   56d0 <__assert_fail@plt>
    be09:	48 8d 0d 70 76 00 00 	lea    rcx,[rip+0x7670]        # 13480 <__PRETTY_FUNCTION__.8623>
    be10:	48 8d 35 e1 71 00 00 	lea    rsi,[rip+0x71e1]        # 12ff8 <default_mutexattr+0x4>
    be17:	48 8d 3d f7 71 00 00 	lea    rdi,[rip+0x71f7]        # 13015 <default_mutexattr+0x21>
    be1e:	ba 51 00 00 00       	mov    edx,0x51
    be23:	e8 a8 98 ff ff       	call   56d0 <__assert_fail@plt>
    be28:	b8 0b 00 00 00       	mov    eax,0xb
    be2d:	e9 41 fe ff ff       	jmp    bc73 <__pthread_mutex_cond_lock+0x63>
    be32:	64 8b 04 25 d0 02 00 	mov    eax,DWORD PTR fs:0x2d0
    be39:	00 
    be3a:	83 fa 02             	cmp    edx,0x2
    be3d:	75 32                	jne    be71 <__pthread_mutex_cond_lock+0x261>
    be3f:	3b 47 08             	cmp    eax,DWORD PTR [rdi+0x8]
    be42:	0f 85 e6 fd ff ff    	jne    bc2e <__pthread_mutex_cond_lock+0x1e>
    be48:	b8 23 00 00 00       	mov    eax,0x23
    be4d:	e9 21 fe ff ff       	jmp    bc73 <__pthread_mutex_cond_lock+0x63>
    be52:	48 8d 0d 27 76 00 00 	lea    rcx,[rip+0x7627]        # 13480 <__PRETTY_FUNCTION__.8623>
    be59:	48 8d 35 98 71 00 00 	lea    rsi,[rip+0x7198]        # 12ff8 <default_mutexattr+0x4>
    be60:	48 8d 3d ae 71 00 00 	lea    rdi,[rip+0x71ae]        # 13015 <default_mutexattr+0x21>
    be67:	ba 75 00 00 00       	mov    edx,0x75
    be6c:	e8 5f 98 ff ff       	call   56d0 <__assert_fail@plt>
    be71:	48 8d 0d 08 76 00 00 	lea    rcx,[rip+0x7608]        # 13480 <__PRETTY_FUNCTION__.8623>
    be78:	48 8d 35 79 71 00 00 	lea    rsi,[rip+0x7179]        # 12ff8 <default_mutexattr+0x4>
    be7f:	48 8d 3d 92 72 00 00 	lea    rdi,[rip+0x7292]        # 13118 <default_mutexattr+0x124>
    be86:	ba 95 00 00 00       	mov    edx,0x95
    be8b:	e8 40 98 ff ff       	call   56d0 <__assert_fail@plt>

000000000000be90 <__pthread_mutex_cond_lock_adjust>:
    be90:	48 83 ec 08          	sub    rsp,0x8
    be94:	8b 47 10             	mov    eax,DWORD PTR [rdi+0x10]
    be97:	a8 20                	test   al,0x20
    be99:	74 5f                	je     befa <__pthread_mutex_cond_lock_adjust+0x6a>
    be9b:	a8 10                	test   al,0x10
    be9d:	75 3c                	jne    bedb <__pthread_mutex_cond_lock_adjust+0x4b>
    be9f:	a8 80                	test   al,0x80
    bea1:	75 19                	jne    bebc <__pthread_mutex_cond_lock_adjust+0x2c>
    bea3:	64 8b 14 25 d0 02 00 	mov    edx,DWORD PTR fs:0x2d0
    beaa:	00 
    beab:	83 f8 21             	cmp    eax,0x21
    beae:	89 57 08             	mov    DWORD PTR [rdi+0x8],edx
    beb1:	75 04                	jne    beb7 <__pthread_mutex_cond_lock_adjust+0x27>
    beb3:	83 47 04 01          	add    DWORD PTR [rdi+0x4],0x1
    beb7:	48 83 c4 08          	add    rsp,0x8
    bebb:	c3                   	ret    
    bebc:	48 8d 0d 5d 75 00 00 	lea    rcx,[rip+0x755d]        # 13420 <__PRETTY_FUNCTION__.8914>
    bec3:	48 8d 35 2e 71 00 00 	lea    rsi,[rip+0x712e]        # 12ff8 <default_mutexattr+0x4>
    beca:	48 8d 3d ff 74 00 00 	lea    rdi,[rip+0x74ff]        # 133d0 <__PRETTY_FUNCTION__.7695+0xa0>
    bed1:	ba 10 02 00 00       	mov    edx,0x210
    bed6:	e8 f5 97 ff ff       	call   56d0 <__assert_fail@plt>
    bedb:	48 8d 0d 3e 75 00 00 	lea    rcx,[rip+0x753e]        # 13420 <__PRETTY_FUNCTION__.8914>
    bee2:	48 8d 35 0f 71 00 00 	lea    rsi,[rip+0x710f]        # 12ff8 <default_mutexattr+0x4>
    bee9:	48 8d 3d a0 74 00 00 	lea    rdi,[rip+0x74a0]        # 13390 <__PRETTY_FUNCTION__.7695+0x60>
    bef0:	ba 0f 02 00 00       	mov    edx,0x20f
    bef5:	e8 d6 97 ff ff       	call   56d0 <__assert_fail@plt>
    befa:	48 8d 0d 1f 75 00 00 	lea    rcx,[rip+0x751f]        # 13420 <__PRETTY_FUNCTION__.8914>
    bf01:	48 8d 35 f0 70 00 00 	lea    rsi,[rip+0x70f0]        # 12ff8 <default_mutexattr+0x4>
    bf08:	48 8d 3d 41 74 00 00 	lea    rdi,[rip+0x7441]        # 13350 <__PRETTY_FUNCTION__.7695+0x20>
    bf0f:	ba 0e 02 00 00       	mov    edx,0x20e
    bf14:	e8 b7 97 ff ff       	call   56d0 <__assert_fail@plt>
    bf19:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

000000000000bf20 <__pthread_mutexattr_init>:
    bf20:	c7 07 00 00 00 00    	mov    DWORD PTR [rdi],0x0
    bf26:	31 c0                	xor    eax,eax
    bf28:	c3                   	ret    
    bf29:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

000000000000bf30 <__pthread_mutexattr_destroy>:
    bf30:	31 c0                	xor    eax,eax
    bf32:	c3                   	ret    
    bf33:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    bf3a:	00 00 00 
    bf3d:	0f 1f 00             	nop    DWORD PTR [rax]

000000000000bf40 <pthread_mutexattr_getpshared>:
    bf40:	8b 07                	mov    eax,DWORD PTR [rdi]
    bf42:	c1 e8 1f             	shr    eax,0x1f
    bf45:	89 06                	mov    DWORD PTR [rsi],eax
    bf47:	31 c0                	xor    eax,eax
    bf49:	c3                   	ret    
    bf4a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

000000000000bf50 <pthread_mutexattr_setpshared>:
    bf50:	83 fe 01             	cmp    esi,0x1
    bf53:	76 0b                	jbe    bf60 <pthread_mutexattr_setpshared+0x10>
    bf55:	b8 16 00 00 00       	mov    eax,0x16
    bf5a:	c3                   	ret    
    bf5b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    bf60:	85 f6                	test   esi,esi
    bf62:	74 0c                	je     bf70 <pthread_mutexattr_setpshared+0x20>
    bf64:	81 0f 00 00 00 80    	or     DWORD PTR [rdi],0x80000000
    bf6a:	31 c0                	xor    eax,eax
    bf6c:	c3                   	ret    
    bf6d:	0f 1f 00             	nop    DWORD PTR [rax]
    bf70:	81 27 ff ff ff 7f    	and    DWORD PTR [rdi],0x7fffffff
    bf76:	31 c0                	xor    eax,eax
    bf78:	c3                   	ret    
    bf79:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

000000000000bf80 <pthread_mutexattr_gettype>:
    bf80:	8b 07                	mov    eax,DWORD PTR [rdi]
    bf82:	25 ff 0d 00 0f       	and    eax,0xf000dff
    bf87:	89 06                	mov    DWORD PTR [rsi],eax
    bf89:	31 c0                	xor    eax,eax
    bf8b:	c3                   	ret    
    bf8c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

000000000000bf90 <__pthread_mutexattr_settype>:
    bf90:	83 fe 03             	cmp    esi,0x3
    bf93:	b8 16 00 00 00       	mov    eax,0x16
    bf98:	76 06                	jbe    bfa0 <__pthread_mutexattr_settype+0x10>
    bf9a:	f3 c3                	repz ret 
    bf9c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    bfa0:	85 f6                	test   esi,esi
    bfa2:	b8 00 02 00 00       	mov    eax,0x200
    bfa7:	0f 44 f0             	cmove  esi,eax
    bfaa:	8b 07                	mov    eax,DWORD PTR [rdi]
    bfac:	25 00 f0 ff f0       	and    eax,0xf0fff000
    bfb1:	09 c6                	or     esi,eax
    bfb3:	31 c0                	xor    eax,eax
    bfb5:	89 37                	mov    DWORD PTR [rdi],esi
    bfb7:	c3                   	ret    
    bfb8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    bfbf:	00 

000000000000bfc0 <__pthread_rwlock_init>:
    bfc0:	48 c7 07 00 00 00 00 	mov    QWORD PTR [rdi],0x0
    bfc7:	48 c7 47 30 00 00 00 	mov    QWORD PTR [rdi+0x30],0x0
    bfce:	00 
    bfcf:	48 89 fa             	mov    rdx,rdi
    bfd2:	48 8d 05 c7 74 00 00 	lea    rax,[rip+0x74c7]        # 134a0 <default_rwlockattr>
    bfd9:	48 8d 7f 08          	lea    rdi,[rdi+0x8]
    bfdd:	48 85 f6             	test   rsi,rsi
    bfe0:	48 89 d1             	mov    rcx,rdx
    bfe3:	48 0f 44 f0          	cmove  rsi,rax
    bfe7:	48 83 e7 f8          	and    rdi,0xfffffffffffffff8
    bfeb:	31 c0                	xor    eax,eax
    bfed:	48 29 f9             	sub    rcx,rdi
    bff0:	83 c1 38             	add    ecx,0x38
    bff3:	c1 e9 03             	shr    ecx,0x3
    bff6:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
    bff9:	31 c0                	xor    eax,eax
    bffb:	b9 80 00 00 00       	mov    ecx,0x80
    c000:	83 3e 02             	cmp    DWORD PTR [rsi],0x2
    c003:	0f 94 c0             	sete   al
    c006:	89 42 30             	mov    DWORD PTR [rdx+0x30],eax
    c009:	8b 46 04             	mov    eax,DWORD PTR [rsi+0x4]
    c00c:	85 c0                	test   eax,eax
    c00e:	0f 45 c1             	cmovne eax,ecx
    c011:	89 42 1c             	mov    DWORD PTR [rdx+0x1c],eax
    c014:	31 c0                	xor    eax,eax
    c016:	c3                   	ret    
    c017:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    c01e:	00 00 

000000000000c020 <__pthread_rwlock_destroy>:
    c020:	90                   	nop
    c021:	31 c0                	xor    eax,eax
    c023:	c3                   	ret    
    c024:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    c02b:	00 00 00 
    c02e:	66 90                	xchg   ax,ax

000000000000c030 <__pthread_rwlock_rdlock_slow>:
    c030:	41 57                	push   r15
    c032:	41 56                	push   r14
    c034:	49 89 f8             	mov    r8,rdi
    c037:	41 55                	push   r13
    c039:	41 54                	push   r12
    c03b:	4c 8d 67 08          	lea    r12,[rdi+0x8]
    c03f:	55                   	push   rbp
    c040:	53                   	push   rbx
    c041:	bd ca 00 00 00       	mov    ebp,0xca
    c046:	41 bf 01 00 00 00    	mov    r15d,0x1
    c04c:	41 be 01 00 00 00    	mov    r14d,0x1
    c052:	48 83 ec 08          	sub    rsp,0x8
    c056:	8b 77 1c             	mov    esi,DWORD PTR [rdi+0x1c]
    c059:	8b 57 18             	mov    edx,DWORD PTR [rdi+0x18]
    c05c:	83 fe 01             	cmp    esi,0x1
    c05f:	48 19 db             	sbb    rbx,rbx
    c062:	81 e3 80 00 00 00    	and    ebx,0x80
    c068:	48 83 c3 01          	add    rbx,0x1
    c06c:	83 fe 01             	cmp    esi,0x1
    c06f:	4d 19 c9             	sbb    r9,r9
    c072:	45 31 ed             	xor    r13d,r13d
    c075:	41 81 e1 80 00 00 00 	and    r9d,0x80
    c07c:	64 8b 04 25 d0 02 00 	mov    eax,DWORD PTR fs:0x2d0
    c083:	00 
    c084:	39 d0                	cmp    eax,edx
    c086:	0f 84 ac 00 00 00    	je     c138 <__pthread_rwlock_rdlock_slow+0x108>
    c08c:	41 8b 50 10          	mov    edx,DWORD PTR [r8+0x10]
    c090:	8d 42 01             	lea    eax,[rdx+0x1]
    c093:	85 c0                	test   eax,eax
    c095:	41 89 40 10          	mov    DWORD PTR [r8+0x10],eax
    c099:	0f 84 f1 00 00 00    	je     c190 <__pthread_rwlock_rdlock_slow+0x160>
    c09f:	41 8b 50 08          	mov    edx,DWORD PTR [r8+0x8]
    c0a3:	f0 41 ff 08          	lock dec DWORD PTR [r8]
    c0a7:	74 16                	je     c0bf <__pthread_rwlock_rdlock_slow+0x8f>
    c0a9:	49 8d 38             	lea    rdi,[r8]
    c0ac:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    c0b3:	e8 38 42 00 00       	call   102f0 <__lll_unlock_wake>
    c0b8:	48 81 c4 80 00 00 00 	add    rsp,0x80
    c0bf:	45 31 d2             	xor    r10d,r10d
    c0c2:	4c 89 ce             	mov    rsi,r9
    c0c5:	4c 89 e7             	mov    rdi,r12
    c0c8:	89 e8                	mov    eax,ebp
    c0ca:	0f 05                	syscall 
    c0cc:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    c0d2:	0f 87 c8 00 00 00    	ja     c1a0 <__pthread_rwlock_rdlock_slow+0x170>
    c0d8:	44 89 f7             	mov    edi,r14d
    c0db:	44 89 e8             	mov    eax,r13d
    c0de:	41 8b 70 1c          	mov    esi,DWORD PTR [r8+0x1c]
    c0e2:	f0 41 0f b1 38       	lock cmpxchg DWORD PTR [r8],edi
    c0e7:	74 16                	je     c0ff <__pthread_rwlock_rdlock_slow+0xcf>
    c0e9:	49 8d 38             	lea    rdi,[r8]
    c0ec:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    c0f3:	e8 58 41 00 00       	call   10250 <__lll_lock_wait>
    c0f8:	48 81 c4 80 00 00 00 	add    rsp,0x80
    c0ff:	41 8b 40 10          	mov    eax,DWORD PTR [r8+0x10]
    c103:	41 8b 50 18          	mov    edx,DWORD PTR [r8+0x18]
    c107:	83 e8 01             	sub    eax,0x1
    c10a:	85 d2                	test   edx,edx
    c10c:	41 89 40 10          	mov    DWORD PTR [r8+0x10],eax
    c110:	75 18                	jne    c12a <__pthread_rwlock_rdlock_slow+0xfa>
    c112:	41 8b 48 14          	mov    ecx,DWORD PTR [r8+0x14]
    c116:	85 c9                	test   ecx,ecx
    c118:	0f 84 ba 00 00 00    	je     c1d8 <__pthread_rwlock_rdlock_slow+0x1a8>
    c11e:	41 8b 70 30          	mov    esi,DWORD PTR [r8+0x30]
    c122:	85 f6                	test   esi,esi
    c124:	0f 84 ae 00 00 00    	je     c1d8 <__pthread_rwlock_rdlock_slow+0x1a8>
    c12a:	41 8b 70 1c          	mov    esi,DWORD PTR [r8+0x1c]
    c12e:	e9 49 ff ff ff       	jmp    c07c <__pthread_rwlock_rdlock_slow+0x4c>
    c133:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    c138:	31 d2                	xor    edx,edx
    c13a:	41 b9 23 00 00 00    	mov    r9d,0x23
    c140:	f0 41 ff 08          	lock dec DWORD PTR [r8]
    c144:	74 16                	je     c15c <__pthread_rwlock_rdlock_slow+0x12c>
    c146:	49 8d 38             	lea    rdi,[r8]
    c149:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    c150:	e8 9b 41 00 00       	call   102f0 <__lll_unlock_wake>
    c155:	48 81 c4 80 00 00 00 	add    rsp,0x80
    c15c:	84 d2                	test   dl,dl
    c15e:	74 1e                	je     c17e <__pthread_rwlock_rdlock_slow+0x14e>
    c160:	45 31 d2             	xor    r10d,r10d
    c163:	ba ff ff ff 7f       	mov    edx,0x7fffffff
    c168:	48 89 de             	mov    rsi,rbx
    c16b:	49 8d 78 08          	lea    rdi,[r8+0x8]
    c16f:	b8 ca 00 00 00       	mov    eax,0xca
    c174:	0f 05                	syscall 
    c176:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    c17c:	77 4a                	ja     c1c8 <__pthread_rwlock_rdlock_slow+0x198>
    c17e:	48 83 c4 08          	add    rsp,0x8
    c182:	44 89 c8             	mov    eax,r9d
    c185:	5b                   	pop    rbx
    c186:	5d                   	pop    rbp
    c187:	41 5c                	pop    r12
    c189:	41 5d                	pop    r13
    c18b:	41 5e                	pop    r14
    c18d:	41 5f                	pop    r15
    c18f:	c3                   	ret    
    c190:	41 89 50 10          	mov    DWORD PTR [r8+0x10],edx
    c194:	41 b9 0b 00 00 00    	mov    r9d,0xb
    c19a:	31 d2                	xor    edx,edx
    c19c:	eb a2                	jmp    c140 <__pthread_rwlock_rdlock_slow+0x110>
    c19e:	66 90                	xchg   ax,ax
    c1a0:	8d 48 0b             	lea    ecx,[rax+0xb]
    c1a3:	83 f9 0b             	cmp    ecx,0xb
    c1a6:	77 11                	ja     c1b9 <__pthread_rwlock_rdlock_slow+0x189>
    c1a8:	4c 89 f8             	mov    rax,r15
    c1ab:	48 d3 e0             	shl    rax,cl
    c1ae:	a9 81 08 00 00       	test   eax,0x881
    c1b3:	0f 85 1f ff ff ff    	jne    c0d8 <__pthread_rwlock_rdlock_slow+0xa8>
    c1b9:	48 8d 3d 20 69 00 00 	lea    rdi,[rip+0x6920]        # 12ae0 <_fini+0xc>
    c1c0:	e8 6b 94 ff ff       	call   5630 <__libc_fatal@plt>
    c1c5:	0f 1f 00             	nop    DWORD PTR [rax]
    c1c8:	83 f8 ea             	cmp    eax,0xffffffea
    c1cb:	74 b1                	je     c17e <__pthread_rwlock_rdlock_slow+0x14e>
    c1cd:	83 f8 f2             	cmp    eax,0xfffffff2
    c1d0:	74 ac                	je     c17e <__pthread_rwlock_rdlock_slow+0x14e>
    c1d2:	eb e5                	jmp    c1b9 <__pthread_rwlock_rdlock_slow+0x189>
    c1d4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    c1d8:	41 8b 70 04          	mov    esi,DWORD PTR [r8+0x4]
    c1dc:	8d 56 01             	lea    edx,[rsi+0x1]
    c1df:	85 d2                	test   edx,edx
    c1e1:	41 89 50 04          	mov    DWORD PTR [r8+0x4],edx
    c1e5:	74 3a                	je     c221 <__pthread_rwlock_rdlock_slow+0x1f1>
    c1e7:	90                   	nop
    c1e8:	85 c0                	test   eax,eax
    c1ea:	40 0f 95 c6          	setne  sil
    c1ee:	85 c9                	test   ecx,ecx
    c1f0:	0f 95 c0             	setne  al
    c1f3:	40 84 c6             	test   sil,al
    c1f6:	74 1b                	je     c213 <__pthread_rwlock_rdlock_slow+0x1e3>
    c1f8:	83 fa 01             	cmp    edx,0x1
    c1fb:	75 16                	jne    c213 <__pthread_rwlock_rdlock_slow+0x1e3>
    c1fd:	41 83 40 08 01       	add    DWORD PTR [r8+0x8],0x1
    c202:	41 8b 70 1c          	mov    esi,DWORD PTR [r8+0x1c]
    c206:	ba 01 00 00 00       	mov    edx,0x1
    c20b:	45 31 c9             	xor    r9d,r9d
    c20e:	e9 2d ff ff ff       	jmp    c140 <__pthread_rwlock_rdlock_slow+0x110>
    c213:	41 8b 70 1c          	mov    esi,DWORD PTR [r8+0x1c]
    c217:	31 d2                	xor    edx,edx
    c219:	45 31 c9             	xor    r9d,r9d
    c21c:	e9 1f ff ff ff       	jmp    c140 <__pthread_rwlock_rdlock_slow+0x110>
    c221:	41 89 70 04          	mov    DWORD PTR [r8+0x4],esi
    c225:	41 b9 0b 00 00 00    	mov    r9d,0xb
    c22b:	41 8b 70 1c          	mov    esi,DWORD PTR [r8+0x1c]
    c22f:	e9 0c ff ff ff       	jmp    c140 <__pthread_rwlock_rdlock_slow+0x110>
    c234:	66 90                	xchg   ax,ax
    c236:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    c23d:	00 00 00 

000000000000c240 <__pthread_rwlock_rdlock>:
    c240:	53                   	push   rbx
    c241:	8b 77 1c             	mov    esi,DWORD PTR [rdi+0x1c]
    c244:	49 89 f8             	mov    r8,rdi
    c247:	83 fe 01             	cmp    esi,0x1
    c24a:	4d 19 c9             	sbb    r9,r9
    c24d:	41 81 e1 80 00 00 00 	and    r9d,0x80
    c254:	49 83 c1 01          	add    r9,0x1
    c258:	90                   	nop
    c259:	0f b6 47 20          	movzx  eax,BYTE PTR [rdi+0x20]
    c25d:	84 c0                	test   al,al
    c25f:	0f 8e d3 00 00 00    	jle    c338 <__pthread_rwlock_rdlock+0xf8>
    c265:	83 e8 01             	sub    eax,0x1
    c268:	88 47 20             	mov    BYTE PTR [rdi+0x20],al
    c26b:	bf 01 00 00 00       	mov    edi,0x1
    c270:	31 c0                	xor    eax,eax
    c272:	f0 41 0f b1 38       	lock cmpxchg DWORD PTR [r8],edi
    c277:	74 16                	je     c28f <__pthread_rwlock_rdlock+0x4f>
    c279:	49 8d 38             	lea    rdi,[r8]
    c27c:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    c283:	e8 c8 3f 00 00       	call   10250 <__lll_lock_wait>
    c288:	48 81 c4 80 00 00 00 	add    rsp,0x80
    c28f:	41 8b 70 18          	mov    esi,DWORD PTR [r8+0x18]
    c293:	85 f6                	test   esi,esi
    c295:	0f 85 8d 00 00 00    	jne    c328 <__pthread_rwlock_rdlock+0xe8>
    c29b:	41 8b 50 14          	mov    edx,DWORD PTR [r8+0x14]
    c29f:	85 d2                	test   edx,edx
    c2a1:	74 08                	je     c2ab <__pthread_rwlock_rdlock+0x6b>
    c2a3:	41 8b 48 30          	mov    ecx,DWORD PTR [r8+0x30]
    c2a7:	85 c9                	test   ecx,ecx
    c2a9:	75 7d                	jne    c328 <__pthread_rwlock_rdlock+0xe8>
    c2ab:	41 8b 48 04          	mov    ecx,DWORD PTR [r8+0x4]
    c2af:	8d 41 01             	lea    eax,[rcx+0x1]
    c2b2:	85 c0                	test   eax,eax
    c2b4:	41 89 40 04          	mov    DWORD PTR [r8+0x4],eax
    c2b8:	0f 84 5c 01 00 00    	je     c41a <__pthread_rwlock_rdlock+0x1da>
    c2be:	90                   	nop
    c2bf:	45 31 d2             	xor    r10d,r10d
    c2c2:	31 db                	xor    ebx,ebx
    c2c4:	83 f8 01             	cmp    eax,0x1
    c2c7:	0f 84 13 01 00 00    	je     c3e0 <__pthread_rwlock_rdlock+0x1a0>
    c2cd:	41 8b 70 1c          	mov    esi,DWORD PTR [r8+0x1c]
    c2d1:	f0 41 ff 08          	lock dec DWORD PTR [r8]
    c2d5:	74 16                	je     c2ed <__pthread_rwlock_rdlock+0xad>
    c2d7:	49 8d 38             	lea    rdi,[r8]
    c2da:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    c2e1:	e8 0a 40 00 00       	call   102f0 <__lll_unlock_wake>
    c2e6:	48 81 c4 80 00 00 00 	add    rsp,0x80
    c2ed:	45 84 d2             	test   r10b,r10b
    c2f0:	0f 84 e0 00 00 00    	je     c3d6 <__pthread_rwlock_rdlock+0x196>
    c2f6:	b9 ca 00 00 00       	mov    ecx,0xca
    c2fb:	45 31 d2             	xor    r10d,r10d
    c2fe:	ba ff ff ff 7f       	mov    edx,0x7fffffff
    c303:	4c 89 ce             	mov    rsi,r9
    c306:	49 8d 78 08          	lea    rdi,[r8+0x8]
    c30a:	89 c8                	mov    eax,ecx
    c30c:	0f 05                	syscall 
    c30e:	48 89 c2             	mov    rdx,rax
    c311:	89 d8                	mov    eax,ebx
    c313:	48 81 fa 00 f0 ff ff 	cmp    rdx,0xfffffffffffff000
    c31a:	0f 87 b1 00 00 00    	ja     c3d1 <__pthread_rwlock_rdlock+0x191>
    c320:	5b                   	pop    rbx
    c321:	c3                   	ret    
    c322:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    c328:	5b                   	pop    rbx
    c329:	4c 89 c7             	mov    rdi,r8
    c32c:	e9 ff fc ff ff       	jmp    c030 <__pthread_rwlock_rdlock_slow>
    c331:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    c338:	8b 15 5a bf 20 00    	mov    edx,DWORD PTR [rip+0x20bf5a]        # 218298 <__elision_aconf+0x8>
    c33e:	85 d2                	test   edx,edx
    c340:	0f 8e 25 ff ff ff    	jle    c26b <__pthread_rwlock_rdlock+0x2b>
    c346:	be ff ff ff ff       	mov    esi,0xffffffff
    c34b:	eb 2d                	jmp    c37a <__pthread_rwlock_rdlock+0x13a>
    c34d:	0f 1f 00             	nop    DWORD PTR [rax]
    c350:	a8 02                	test   al,0x2
    c352:	75 74                	jne    c3c8 <__pthread_rwlock_rdlock+0x188>
    c354:	a8 01                	test   al,0x1
    c356:	74 0a                	je     c362 <__pthread_rwlock_rdlock+0x122>
    c358:	c1 e8 18             	shr    eax,0x18
    c35b:	3d ff 00 00 00       	cmp    eax,0xff
    c360:	74 4e                	je     c3b0 <__pthread_rwlock_rdlock+0x170>
    c362:	41 0f be 48 20       	movsx  ecx,BYTE PTR [r8+0x20]
    c367:	8b 05 27 bf 20 00    	mov    eax,DWORD PTR [rip+0x20bf27]        # 218294 <__elision_aconf+0x4>
    c36d:	39 c1                	cmp    ecx,eax
    c36f:	74 04                	je     c375 <__pthread_rwlock_rdlock+0x135>
    c371:	41 88 40 20          	mov    BYTE PTR [r8+0x20],al
    c375:	83 ea 01             	sub    edx,0x1
    c378:	74 4e                	je     c3c8 <__pthread_rwlock_rdlock+0x188>
    c37a:	89 f0                	mov    eax,esi
    c37c:	c7 f8 00 00 00 00    	xbegin c382 <__pthread_rwlock_rdlock+0x142>
    c382:	83 f8 ff             	cmp    eax,0xffffffff
    c385:	75 c9                	jne    c350 <__pthread_rwlock_rdlock+0x110>
    c387:	45 8b 10             	mov    r10d,DWORD PTR [r8]
    c38a:	45 85 d2             	test   r10d,r10d
    c38d:	75 10                	jne    c39f <__pthread_rwlock_rdlock+0x15f>
    c38f:	41 8b 40 18          	mov    eax,DWORD PTR [r8+0x18]
    c393:	85 c0                	test   eax,eax
    c395:	75 08                	jne    c39f <__pthread_rwlock_rdlock+0x15f>
    c397:	41 8b 78 04          	mov    edi,DWORD PTR [r8+0x4]
    c39b:	85 ff                	test   edi,edi
    c39d:	74 81                	je     c320 <__pthread_rwlock_rdlock+0xe0>
    c39f:	c6 f8 ff             	xabort 0xff
    c3a2:	41 8b 70 1c          	mov    esi,DWORD PTR [r8+0x1c]
    c3a6:	e9 c0 fe ff ff       	jmp    c26b <__pthread_rwlock_rdlock+0x2b>
    c3ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    c3b0:	41 0f be 48 20       	movsx  ecx,BYTE PTR [r8+0x20]
    c3b5:	8b 05 d5 be 20 00    	mov    eax,DWORD PTR [rip+0x20bed5]        # 218290 <__elision_aconf>
    c3bb:	39 c1                	cmp    ecx,eax
    c3bd:	75 b2                	jne    c371 <__pthread_rwlock_rdlock+0x131>
    c3bf:	83 ea 01             	sub    edx,0x1
    c3c2:	75 b6                	jne    c37a <__pthread_rwlock_rdlock+0x13a>
    c3c4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    c3c8:	41 8b 70 1c          	mov    esi,DWORD PTR [r8+0x1c]
    c3cc:	e9 9a fe ff ff       	jmp    c26b <__pthread_rwlock_rdlock+0x2b>
    c3d1:	83 fa ea             	cmp    edx,0xffffffea
    c3d4:	75 26                	jne    c3fc <__pthread_rwlock_rdlock+0x1bc>
    c3d6:	89 d8                	mov    eax,ebx
    c3d8:	5b                   	pop    rbx
    c3d9:	c3                   	ret    
    c3da:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    c3e0:	41 8b 40 10          	mov    eax,DWORD PTR [r8+0x10]
    c3e4:	85 c0                	test   eax,eax
    c3e6:	74 28                	je     c410 <__pthread_rwlock_rdlock+0x1d0>
    c3e8:	85 d2                	test   edx,edx
    c3ea:	74 24                	je     c410 <__pthread_rwlock_rdlock+0x1d0>
    c3ec:	41 83 40 08 01       	add    DWORD PTR [r8+0x8],0x1
    c3f1:	41 ba 01 00 00 00    	mov    r10d,0x1
    c3f7:	e9 d1 fe ff ff       	jmp    c2cd <__pthread_rwlock_rdlock+0x8d>
    c3fc:	83 fa f2             	cmp    edx,0xfffffff2
    c3ff:	74 d5                	je     c3d6 <__pthread_rwlock_rdlock+0x196>
    c401:	48 8d 3d d8 66 00 00 	lea    rdi,[rip+0x66d8]        # 12ae0 <_fini+0xc>
    c408:	e8 23 92 ff ff       	call   5630 <__libc_fatal@plt>
    c40d:	0f 1f 00             	nop    DWORD PTR [rax]
    c410:	45 31 d2             	xor    r10d,r10d
    c413:	31 db                	xor    ebx,ebx
    c415:	e9 b3 fe ff ff       	jmp    c2cd <__pthread_rwlock_rdlock+0x8d>
    c41a:	41 89 48 04          	mov    DWORD PTR [r8+0x4],ecx
    c41e:	45 31 d2             	xor    r10d,r10d
    c421:	bb 0b 00 00 00       	mov    ebx,0xb
    c426:	e9 a2 fe ff ff       	jmp    c2cd <__pthread_rwlock_rdlock+0x8d>
    c42b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

000000000000c430 <pthread_rwlock_timedrdlock>:
    c430:	41 57                	push   r15
    c432:	41 56                	push   r14
    c434:	41 55                	push   r13
    c436:	41 54                	push   r12
    c438:	55                   	push   rbp
    c439:	53                   	push   rbx
    c43a:	48 89 f5             	mov    rbp,rsi
    c43d:	48 89 fb             	mov    rbx,rdi
    c440:	48 83 ec 08          	sub    rsp,0x8
    c444:	8b 77 1c             	mov    esi,DWORD PTR [rdi+0x1c]
    c447:	bf 01 00 00 00       	mov    edi,0x1
    c44c:	83 fe 01             	cmp    esi,0x1
    c44f:	4d 19 ed             	sbb    r13,r13
    c452:	41 81 e5 80 00 00 00 	and    r13d,0x80
    c459:	49 83 c5 01          	add    r13,0x1
    c45d:	83 fe 01             	cmp    esi,0x1
    c460:	4d 19 e4             	sbb    r12,r12
    c463:	31 c0                	xor    eax,eax
    c465:	41 81 e4 80 00 00 00 	and    r12d,0x80
    c46c:	49 81 c4 09 01 00 00 	add    r12,0x109
    c473:	f0 0f b1 3b          	lock cmpxchg DWORD PTR [rbx],edi
    c477:	74 16                	je     c48f <pthread_rwlock_timedrdlock+0x5f>
    c479:	48 8d 3b             	lea    rdi,[rbx]
    c47c:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    c483:	e8 c8 3d 00 00       	call   10250 <__lll_lock_wait>
    c488:	48 81 c4 80 00 00 00 	add    rsp,0x80
    c48f:	4c 8d 7b 08          	lea    r15,[rbx+0x8]
    c493:	41 be 01 00 00 00    	mov    r14d,0x1
    c499:	8b 43 18             	mov    eax,DWORD PTR [rbx+0x18]
    c49c:	85 c0                	test   eax,eax
    c49e:	75 16                	jne    c4b6 <pthread_rwlock_timedrdlock+0x86>
    c4a0:	8b 53 14             	mov    edx,DWORD PTR [rbx+0x14]
    c4a3:	85 d2                	test   edx,edx
    c4a5:	0f 84 8d 01 00 00    	je     c638 <pthread_rwlock_timedrdlock+0x208>
    c4ab:	8b 4b 30             	mov    ecx,DWORD PTR [rbx+0x30]
    c4ae:	85 c9                	test   ecx,ecx
    c4b0:	0f 84 82 01 00 00    	je     c638 <pthread_rwlock_timedrdlock+0x208>
    c4b6:	64 8b 14 25 d0 02 00 	mov    edx,DWORD PTR fs:0x2d0
    c4bd:	00 
    c4be:	39 d0                	cmp    eax,edx
    c4c0:	0f 84 b2 00 00 00    	je     c578 <pthread_rwlock_timedrdlock+0x148>
    c4c6:	48 81 7d 08 ff c9 9a 	cmp    QWORD PTR [rbp+0x8],0x3b9ac9ff
    c4cd:	3b 
    c4ce:	0f 87 04 01 00 00    	ja     c5d8 <pthread_rwlock_timedrdlock+0x1a8>
    c4d4:	8b 53 10             	mov    edx,DWORD PTR [rbx+0x10]
    c4d7:	8d 42 01             	lea    eax,[rdx+0x1]
    c4da:	85 c0                	test   eax,eax
    c4dc:	89 43 10             	mov    DWORD PTR [rbx+0x10],eax
    c4df:	0f 84 7b 01 00 00    	je     c660 <pthread_rwlock_timedrdlock+0x230>
    c4e5:	8b 53 08             	mov    edx,DWORD PTR [rbx+0x8]
    c4e8:	8b 73 1c             	mov    esi,DWORD PTR [rbx+0x1c]
    c4eb:	f0 ff 0b             	lock dec DWORD PTR [rbx]
    c4ee:	74 16                	je     c506 <pthread_rwlock_timedrdlock+0xd6>
    c4f0:	48 8d 3b             	lea    rdi,[rbx]
    c4f3:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    c4fa:	e8 f1 3d 00 00       	call   102f0 <__lll_unlock_wake>
    c4ff:	48 81 c4 80 00 00 00 	add    rsp,0x80
    c506:	48 83 7d 00 00       	cmp    QWORD PTR [rbp+0x0],0x0
    c50b:	0f 88 d7 00 00 00    	js     c5e8 <pthread_rwlock_timedrdlock+0x1b8>
    c511:	41 b9 ff ff ff ff    	mov    r9d,0xffffffff
    c517:	45 31 c0             	xor    r8d,r8d
    c51a:	49 89 ea             	mov    r10,rbp
    c51d:	4c 89 e6             	mov    rsi,r12
    c520:	4c 89 ff             	mov    rdi,r15
    c523:	b8 ca 00 00 00       	mov    eax,0xca
    c528:	0f 05                	syscall 
    c52a:	31 d2                	xor    edx,edx
    c52c:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    c532:	0f 87 c0 00 00 00    	ja     c5f8 <pthread_rwlock_timedrdlock+0x1c8>
    c538:	8b 73 1c             	mov    esi,DWORD PTR [rbx+0x1c]
    c53b:	44 89 f7             	mov    edi,r14d
    c53e:	31 c0                	xor    eax,eax
    c540:	f0 0f b1 3b          	lock cmpxchg DWORD PTR [rbx],edi
    c544:	74 16                	je     c55c <pthread_rwlock_timedrdlock+0x12c>
    c546:	48 8d 3b             	lea    rdi,[rbx]
    c549:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    c550:	e8 fb 3c 00 00       	call   10250 <__lll_lock_wait>
    c555:	48 81 c4 80 00 00 00 	add    rsp,0x80
    c55c:	83 6b 10 01          	sub    DWORD PTR [rbx+0x10],0x1
    c560:	83 fa 6e             	cmp    edx,0x6e
    c563:	0f 85 30 ff ff ff    	jne    c499 <pthread_rwlock_timedrdlock+0x69>
    c569:	45 31 c0             	xor    r8d,r8d
    c56c:	41 b9 6e 00 00 00    	mov    r9d,0x6e
    c572:	eb 0d                	jmp    c581 <pthread_rwlock_timedrdlock+0x151>
    c574:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    c578:	45 31 c0             	xor    r8d,r8d
    c57b:	41 b9 23 00 00 00    	mov    r9d,0x23
    c581:	8b 73 1c             	mov    esi,DWORD PTR [rbx+0x1c]
    c584:	f0 ff 0b             	lock dec DWORD PTR [rbx]
    c587:	74 16                	je     c59f <pthread_rwlock_timedrdlock+0x16f>
    c589:	48 8d 3b             	lea    rdi,[rbx]
    c58c:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    c593:	e8 58 3d 00 00       	call   102f0 <__lll_unlock_wake>
    c598:	48 81 c4 80 00 00 00 	add    rsp,0x80
    c59f:	45 84 c0             	test   r8b,r8b
    c5a2:	74 1e                	je     c5c2 <pthread_rwlock_timedrdlock+0x192>
    c5a4:	45 31 d2             	xor    r10d,r10d
    c5a7:	ba ff ff ff 7f       	mov    edx,0x7fffffff
    c5ac:	4c 89 ee             	mov    rsi,r13
    c5af:	48 8d 7b 08          	lea    rdi,[rbx+0x8]
    c5b3:	b8 ca 00 00 00       	mov    eax,0xca
    c5b8:	0f 05                	syscall 
    c5ba:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    c5c0:	77 66                	ja     c628 <pthread_rwlock_timedrdlock+0x1f8>
    c5c2:	48 83 c4 08          	add    rsp,0x8
    c5c6:	44 89 c8             	mov    eax,r9d
    c5c9:	5b                   	pop    rbx
    c5ca:	5d                   	pop    rbp
    c5cb:	41 5c                	pop    r12
    c5cd:	41 5d                	pop    r13
    c5cf:	41 5e                	pop    r14
    c5d1:	41 5f                	pop    r15
    c5d3:	c3                   	ret    
    c5d4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    c5d8:	45 31 c0             	xor    r8d,r8d
    c5db:	41 b9 16 00 00 00    	mov    r9d,0x16
    c5e1:	eb 9e                	jmp    c581 <pthread_rwlock_timedrdlock+0x151>
    c5e3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    c5e8:	8b 73 1c             	mov    esi,DWORD PTR [rbx+0x1c]
    c5eb:	ba 6e 00 00 00       	mov    edx,0x6e
    c5f0:	e9 46 ff ff ff       	jmp    c53b <pthread_rwlock_timedrdlock+0x10b>
    c5f5:	0f 1f 00             	nop    DWORD PTR [rax]
    c5f8:	83 f8 f5             	cmp    eax,0xfffffff5
    c5fb:	74 1b                	je     c618 <pthread_rwlock_timedrdlock+0x1e8>
    c5fd:	83 f8 fc             	cmp    eax,0xfffffffc
    c600:	74 16                	je     c618 <pthread_rwlock_timedrdlock+0x1e8>
    c602:	83 f8 92             	cmp    eax,0xffffff92
    c605:	74 11                	je     c618 <pthread_rwlock_timedrdlock+0x1e8>
    c607:	48 8d 3d d2 64 00 00 	lea    rdi,[rip+0x64d2]        # 12ae0 <_fini+0xc>
    c60e:	e8 1d 90 ff ff       	call   5630 <__libc_fatal@plt>
    c613:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    c618:	89 c2                	mov    edx,eax
    c61a:	f7 da                	neg    edx
    c61c:	e9 17 ff ff ff       	jmp    c538 <pthread_rwlock_timedrdlock+0x108>
    c621:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    c628:	83 f8 ea             	cmp    eax,0xffffffea
    c62b:	74 95                	je     c5c2 <pthread_rwlock_timedrdlock+0x192>
    c62d:	83 f8 f2             	cmp    eax,0xfffffff2
    c630:	74 90                	je     c5c2 <pthread_rwlock_timedrdlock+0x192>
    c632:	eb d3                	jmp    c607 <pthread_rwlock_timedrdlock+0x1d7>
    c634:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    c638:	8b 4b 04             	mov    ecx,DWORD PTR [rbx+0x4]
    c63b:	8d 41 01             	lea    eax,[rcx+0x1]
    c63e:	85 c0                	test   eax,eax
    c640:	89 43 04             	mov    DWORD PTR [rbx+0x4],eax
    c643:	75 2c                	jne    c671 <pthread_rwlock_timedrdlock+0x241>
    c645:	89 4b 04             	mov    DWORD PTR [rbx+0x4],ecx
    c648:	45 31 c0             	xor    r8d,r8d
    c64b:	41 b9 0b 00 00 00    	mov    r9d,0xb
    c651:	e9 2b ff ff ff       	jmp    c581 <pthread_rwlock_timedrdlock+0x151>
    c656:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    c65d:	00 00 00 
    c660:	89 53 10             	mov    DWORD PTR [rbx+0x10],edx
    c663:	45 31 c0             	xor    r8d,r8d
    c666:	41 b9 0b 00 00 00    	mov    r9d,0xb
    c66c:	e9 10 ff ff ff       	jmp    c581 <pthread_rwlock_timedrdlock+0x151>
    c671:	45 31 c0             	xor    r8d,r8d
    c674:	45 31 c9             	xor    r9d,r9d
    c677:	83 f8 01             	cmp    eax,0x1
    c67a:	0f 85 01 ff ff ff    	jne    c581 <pthread_rwlock_timedrdlock+0x151>
    c680:	8b 43 10             	mov    eax,DWORD PTR [rbx+0x10]
    c683:	85 c0                	test   eax,eax
    c685:	74 13                	je     c69a <pthread_rwlock_timedrdlock+0x26a>
    c687:	85 d2                	test   edx,edx
    c689:	74 0f                	je     c69a <pthread_rwlock_timedrdlock+0x26a>
    c68b:	83 43 08 01          	add    DWORD PTR [rbx+0x8],0x1
    c68f:	41 b8 01 00 00 00    	mov    r8d,0x1
    c695:	e9 e7 fe ff ff       	jmp    c581 <pthread_rwlock_timedrdlock+0x151>
    c69a:	45 31 c0             	xor    r8d,r8d
    c69d:	45 31 c9             	xor    r9d,r9d
    c6a0:	e9 dc fe ff ff       	jmp    c581 <pthread_rwlock_timedrdlock+0x151>
    c6a5:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    c6ac:	00 00 00 
    c6af:	90                   	nop

000000000000c6b0 <__pthread_rwlock_wrlock_slow>:
    c6b0:	41 56                	push   r14
    c6b2:	41 55                	push   r13
    c6b4:	49 89 f8             	mov    r8,rdi
    c6b7:	41 54                	push   r12
    c6b9:	55                   	push   rbp
    c6ba:	41 be 01 00 00 00    	mov    r14d,0x1
    c6c0:	53                   	push   rbx
    c6c1:	8b 77 1c             	mov    esi,DWORD PTR [rdi+0x1c]
    c6c4:	48 8d 6f 0c          	lea    rbp,[rdi+0xc]
    c6c8:	8b 47 18             	mov    eax,DWORD PTR [rdi+0x18]
    c6cb:	bb ca 00 00 00       	mov    ebx,0xca
    c6d0:	41 bd 01 00 00 00    	mov    r13d,0x1
    c6d6:	83 fe 01             	cmp    esi,0x1
    c6d9:	4d 19 c9             	sbb    r9,r9
    c6dc:	45 31 e4             	xor    r12d,r12d
    c6df:	41 81 e1 80 00 00 00 	and    r9d,0x80
    c6e6:	e9 91 00 00 00       	jmp    c77c <__pthread_rwlock_wrlock_slow+0xcc>
    c6eb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    c6f0:	41 8b 50 14          	mov    edx,DWORD PTR [r8+0x14]
    c6f4:	8d 42 01             	lea    eax,[rdx+0x1]
    c6f7:	85 c0                	test   eax,eax
    c6f9:	41 89 40 14          	mov    DWORD PTR [r8+0x14],eax
    c6fd:	0f 84 e5 00 00 00    	je     c7e8 <__pthread_rwlock_wrlock_slow+0x138>
    c703:	41 8b 50 0c          	mov    edx,DWORD PTR [r8+0xc]
    c707:	f0 41 ff 08          	lock dec DWORD PTR [r8]
    c70b:	74 16                	je     c723 <__pthread_rwlock_wrlock_slow+0x73>
    c70d:	49 8d 38             	lea    rdi,[r8]
    c710:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    c717:	e8 d4 3b 00 00       	call   102f0 <__lll_unlock_wake>
    c71c:	48 81 c4 80 00 00 00 	add    rsp,0x80
    c723:	45 31 d2             	xor    r10d,r10d
    c726:	4c 89 ce             	mov    rsi,r9
    c729:	48 89 ef             	mov    rdi,rbp
    c72c:	89 d8                	mov    eax,ebx
    c72e:	0f 05                	syscall 
    c730:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    c736:	0f 87 84 00 00 00    	ja     c7c0 <__pthread_rwlock_wrlock_slow+0x110>
    c73c:	44 89 ef             	mov    edi,r13d
    c73f:	44 89 e0             	mov    eax,r12d
    c742:	41 8b 70 1c          	mov    esi,DWORD PTR [r8+0x1c]
    c746:	f0 41 0f b1 38       	lock cmpxchg DWORD PTR [r8],edi
    c74b:	74 16                	je     c763 <__pthread_rwlock_wrlock_slow+0xb3>
    c74d:	49 8d 38             	lea    rdi,[r8]
    c750:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    c757:	e8 f4 3a 00 00       	call   10250 <__lll_lock_wait>
    c75c:	48 81 c4 80 00 00 00 	add    rsp,0x80
    c763:	41 8b 40 18          	mov    eax,DWORD PTR [r8+0x18]
    c767:	41 83 68 14 01       	sub    DWORD PTR [r8+0x14],0x1
    c76c:	85 c0                	test   eax,eax
    c76e:	75 08                	jne    c778 <__pthread_rwlock_wrlock_slow+0xc8>
    c770:	41 8b 50 04          	mov    edx,DWORD PTR [r8+0x4]
    c774:	85 d2                	test   edx,edx
    c776:	74 7b                	je     c7f3 <__pthread_rwlock_wrlock_slow+0x143>
    c778:	41 8b 70 1c          	mov    esi,DWORD PTR [r8+0x1c]
    c77c:	64 8b 14 25 d0 02 00 	mov    edx,DWORD PTR fs:0x2d0
    c783:	00 
    c784:	39 c2                	cmp    edx,eax
    c786:	0f 85 64 ff ff ff    	jne    c6f0 <__pthread_rwlock_wrlock_slow+0x40>
    c78c:	ba 23 00 00 00       	mov    edx,0x23
    c791:	f0 41 ff 08          	lock dec DWORD PTR [r8]
    c795:	74 16                	je     c7ad <__pthread_rwlock_wrlock_slow+0xfd>
    c797:	49 8d 38             	lea    rdi,[r8]
    c79a:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    c7a1:	e8 4a 3b 00 00       	call   102f0 <__lll_unlock_wake>
    c7a6:	48 81 c4 80 00 00 00 	add    rsp,0x80
    c7ad:	5b                   	pop    rbx
    c7ae:	89 d0                	mov    eax,edx
    c7b0:	5d                   	pop    rbp
    c7b1:	41 5c                	pop    r12
    c7b3:	41 5d                	pop    r13
    c7b5:	41 5e                	pop    r14
    c7b7:	c3                   	ret    
    c7b8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    c7bf:	00 
    c7c0:	8d 48 0b             	lea    ecx,[rax+0xb]
    c7c3:	83 f9 0b             	cmp    ecx,0xb
    c7c6:	77 11                	ja     c7d9 <__pthread_rwlock_wrlock_slow+0x129>
    c7c8:	4c 89 f0             	mov    rax,r14
    c7cb:	48 d3 e0             	shl    rax,cl
    c7ce:	a9 81 08 00 00       	test   eax,0x881
    c7d3:	0f 85 63 ff ff ff    	jne    c73c <__pthread_rwlock_wrlock_slow+0x8c>
    c7d9:	48 8d 3d 00 63 00 00 	lea    rdi,[rip+0x6300]        # 12ae0 <_fini+0xc>
    c7e0:	e8 4b 8e ff ff       	call   5630 <__libc_fatal@plt>
    c7e5:	0f 1f 00             	nop    DWORD PTR [rax]
    c7e8:	41 89 50 14          	mov    DWORD PTR [r8+0x14],edx
    c7ec:	ba 0b 00 00 00       	mov    edx,0xb
    c7f1:	eb 9e                	jmp    c791 <__pthread_rwlock_wrlock_slow+0xe1>
    c7f3:	64 8b 04 25 d0 02 00 	mov    eax,DWORD PTR fs:0x2d0
    c7fa:	00 
    c7fb:	41 89 40 18          	mov    DWORD PTR [r8+0x18],eax
    c7ff:	90                   	nop
    c800:	31 d2                	xor    edx,edx
    c802:	41 8b 70 1c          	mov    esi,DWORD PTR [r8+0x1c]
    c806:	eb 89                	jmp    c791 <__pthread_rwlock_wrlock_slow+0xe1>
    c808:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    c80f:	00 

000000000000c810 <__pthread_rwlock_wrlock>:
    c810:	48 89 fa             	mov    rdx,rdi
    c813:	90                   	nop
    c814:	0f b6 47 20          	movzx  eax,BYTE PTR [rdi+0x20]
    c818:	84 c0                	test   al,al
    c81a:	7e 6c                	jle    c888 <__pthread_rwlock_wrlock+0x78>
    c81c:	83 e8 01             	sub    eax,0x1
    c81f:	88 47 20             	mov    BYTE PTR [rdi+0x20],al
    c822:	bf 01 00 00 00       	mov    edi,0x1
    c827:	31 c0                	xor    eax,eax
    c829:	8b 72 1c             	mov    esi,DWORD PTR [rdx+0x1c]
    c82c:	f0 0f b1 3a          	lock cmpxchg DWORD PTR [rdx],edi
    c830:	74 16                	je     c848 <__pthread_rwlock_wrlock+0x38>
    c832:	48 8d 3a             	lea    rdi,[rdx]
    c835:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    c83c:	e8 0f 3a 00 00       	call   10250 <__lll_lock_wait>
    c841:	48 81 c4 80 00 00 00 	add    rsp,0x80
    c848:	8b 42 18             	mov    eax,DWORD PTR [rdx+0x18]
    c84b:	0b 42 04             	or     eax,DWORD PTR [rdx+0x4]
    c84e:	0f 85 bc 00 00 00    	jne    c910 <__pthread_rwlock_wrlock+0x100>
    c854:	64 8b 04 25 d0 02 00 	mov    eax,DWORD PTR fs:0x2d0
    c85b:	00 
    c85c:	89 42 18             	mov    DWORD PTR [rdx+0x18],eax
    c85f:	90                   	nop
    c860:	8b 72 1c             	mov    esi,DWORD PTR [rdx+0x1c]
    c863:	f0 ff 0a             	lock dec DWORD PTR [rdx]
    c866:	74 16                	je     c87e <__pthread_rwlock_wrlock+0x6e>
    c868:	48 8d 3a             	lea    rdi,[rdx]
    c86b:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    c872:	e8 79 3a 00 00       	call   102f0 <__lll_unlock_wake>
    c877:	48 81 c4 80 00 00 00 	add    rsp,0x80
    c87e:	31 c0                	xor    eax,eax
    c880:	c3                   	ret    
    c881:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    c888:	8b 0d 0a ba 20 00    	mov    ecx,DWORD PTR [rip+0x20ba0a]        # 218298 <__elision_aconf+0x8>
    c88e:	bf ff ff ff ff       	mov    edi,0xffffffff
    c893:	85 c9                	test   ecx,ecx
    c895:	7f 39                	jg     c8d0 <__pthread_rwlock_wrlock+0xc0>
    c897:	eb 89                	jmp    c822 <__pthread_rwlock_wrlock+0x12>
    c899:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    c8a0:	a8 02                	test   al,0x2
    c8a2:	0f 85 7a ff ff ff    	jne    c822 <__pthread_rwlock_wrlock+0x12>
    c8a8:	a8 01                	test   al,0x1
    c8aa:	74 0a                	je     c8b6 <__pthread_rwlock_wrlock+0xa6>
    c8ac:	c1 e8 18             	shr    eax,0x18
    c8af:	3d ff 00 00 00       	cmp    eax,0xff
    c8b4:	74 4a                	je     c900 <__pthread_rwlock_wrlock+0xf0>
    c8b6:	0f be 72 20          	movsx  esi,BYTE PTR [rdx+0x20]
    c8ba:	8b 05 d4 b9 20 00    	mov    eax,DWORD PTR [rip+0x20b9d4]        # 218294 <__elision_aconf+0x4>
    c8c0:	39 c6                	cmp    esi,eax
    c8c2:	74 03                	je     c8c7 <__pthread_rwlock_wrlock+0xb7>
    c8c4:	88 42 20             	mov    BYTE PTR [rdx+0x20],al
    c8c7:	83 e9 01             	sub    ecx,0x1
    c8ca:	0f 84 52 ff ff ff    	je     c822 <__pthread_rwlock_wrlock+0x12>

    c8d0:	89 f8                	mov    eax,edi
    c8d2:	c7 f8 00 00 00 00    	xbegin c8d8 <__pthread_rwlock_wrlock+0xc8>
    c8d8:	83 f8 ff             	cmp    eax,0xffffffff
    c8db:	75 c3                	jne    c8a0 <__pthread_rwlock_wrlock+0x90>
	
    c8dd:	8b 32                	mov    esi,DWORD PTR [rdx]
    c8df:	85 f6                	test   esi,esi
    c8e1:	75 0e                	jne    c8f1 <__pthread_rwlock_wrlock+0xe1>
    c8e3:	8b 4a 18             	mov    ecx,DWORD PTR [rdx+0x18]
    c8e6:	85 c9                	test   ecx,ecx
    c8e8:	75 07                	jne    c8f1 <__pthread_rwlock_wrlock+0xe1>
    c8ea:	8b 42 04             	mov    eax,DWORD PTR [rdx+0x4]
    c8ed:	85 c0                	test   eax,eax
    c8ef:	74 8d                	je     c87e <__pthread_rwlock_wrlock+0x6e>
    c8f1:	c6 f8 ff             	xabort 0xff
    c8f4:	e9 29 ff ff ff       	jmp    c822 <__pthread_rwlock_wrlock+0x12>
    c8f9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    c900:	0f be 72 20          	movsx  esi,BYTE PTR [rdx+0x20]
    c904:	8b 05 86 b9 20 00    	mov    eax,DWORD PTR [rip+0x20b986]        # 218290 <__elision_aconf>
    c90a:	39 c6                	cmp    esi,eax
    c90c:	75 b6                	jne    c8c4 <__pthread_rwlock_wrlock+0xb4>
    c90e:	eb b7                	jmp    c8c7 <__pthread_rwlock_wrlock+0xb7>
    c910:	48 89 d7             	mov    rdi,rdx
    c913:	e9 98 fd ff ff       	jmp    c6b0 <__pthread_rwlock_wrlock_slow>
    c918:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    c91f:	00 

000000000000c920 <pthread_rwlock_timedwrlock>:
    c920:	41 57                	push   r15
    c922:	41 56                	push   r14
    c924:	41 55                	push   r13
    c926:	41 54                	push   r12
    c928:	55                   	push   rbp
    c929:	53                   	push   rbx
    c92a:	48 89 f5             	mov    rbp,rsi
    c92d:	48 89 fb             	mov    rbx,rdi
    c930:	48 83 ec 08          	sub    rsp,0x8
    c934:	8b 77 1c             	mov    esi,DWORD PTR [rdi+0x1c]
    c937:	bf 01 00 00 00       	mov    edi,0x1
    c93c:	83 fe 01             	cmp    esi,0x1
    c93f:	4d 19 ed             	sbb    r13,r13
    c942:	41 81 e5 80 00 00 00 	and    r13d,0x80
    c949:	49 83 c5 01          	add    r13,0x1
    c94d:	83 fe 01             	cmp    esi,0x1
    c950:	4d 19 e4             	sbb    r12,r12
    c953:	31 c0                	xor    eax,eax
    c955:	41 81 e4 80 00 00 00 	and    r12d,0x80
    c95c:	49 81 c4 09 01 00 00 	add    r12,0x109
    c963:	f0 0f b1 3b          	lock cmpxchg DWORD PTR [rbx],edi
    c967:	74 16                	je     c97f <pthread_rwlock_timedwrlock+0x5f>
    c969:	48 8d 3b             	lea    rdi,[rbx]
    c96c:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    c973:	e8 d8 38 00 00       	call   10250 <__lll_lock_wait>
    c978:	48 81 c4 80 00 00 00 	add    rsp,0x80
    c97f:	4c 8d 7b 0c          	lea    r15,[rbx+0xc]
    c983:	41 be 01 00 00 00    	mov    r14d,0x1
    c989:	8b 43 18             	mov    eax,DWORD PTR [rbx+0x18]
    c98c:	85 c0                	test   eax,eax
    c98e:	75 0b                	jne    c99b <pthread_rwlock_timedwrlock+0x7b>
    c990:	8b 7b 04             	mov    edi,DWORD PTR [rbx+0x4]
    c993:	85 ff                	test   edi,edi
    c995:	0f 84 cb 01 00 00    	je     cb66 <pthread_rwlock_timedwrlock+0x246>
    c99b:	64 8b 14 25 d0 02 00 	mov    edx,DWORD PTR fs:0x2d0
    c9a2:	00 
    c9a3:	39 d0                	cmp    eax,edx
    c9a5:	0f 84 d5 00 00 00    	je     ca80 <pthread_rwlock_timedwrlock+0x160>
    c9ab:	48 81 7d 08 ff c9 9a 	cmp    QWORD PTR [rbp+0x8],0x3b9ac9ff
    c9b2:	3b 
    c9b3:	0f 87 27 01 00 00    	ja     cae0 <pthread_rwlock_timedwrlock+0x1c0>
    c9b9:	8b 53 14             	mov    edx,DWORD PTR [rbx+0x14]
    c9bc:	8d 42 01             	lea    eax,[rdx+0x1]
    c9bf:	85 c0                	test   eax,eax
    c9c1:	89 43 14             	mov    DWORD PTR [rbx+0x14],eax
    c9c4:	0f 84 76 01 00 00    	je     cb40 <pthread_rwlock_timedwrlock+0x220>
    c9ca:	8b 53 0c             	mov    edx,DWORD PTR [rbx+0xc]
    c9cd:	8b 73 1c             	mov    esi,DWORD PTR [rbx+0x1c]
    c9d0:	f0 ff 0b             	lock dec DWORD PTR [rbx]
    c9d3:	74 16                	je     c9eb <pthread_rwlock_timedwrlock+0xcb>
    c9d5:	48 8d 3b             	lea    rdi,[rbx]
    c9d8:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    c9df:	e8 0c 39 00 00       	call   102f0 <__lll_unlock_wake>
    c9e4:	48 81 c4 80 00 00 00 	add    rsp,0x80
    c9eb:	48 83 7d 00 00       	cmp    QWORD PTR [rbp+0x0],0x0
    c9f0:	0f 88 fa 00 00 00    	js     caf0 <pthread_rwlock_timedwrlock+0x1d0>
    c9f6:	41 b9 ff ff ff ff    	mov    r9d,0xffffffff
    c9fc:	45 31 c0             	xor    r8d,r8d
    c9ff:	49 89 ea             	mov    r10,rbp
    ca02:	4c 89 e6             	mov    rsi,r12
    ca05:	4c 89 ff             	mov    rdi,r15
    ca08:	b8 ca 00 00 00       	mov    eax,0xca
    ca0d:	0f 05                	syscall 
    ca0f:	31 d2                	xor    edx,edx
    ca11:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    ca17:	0f 87 e3 00 00 00    	ja     cb00 <pthread_rwlock_timedwrlock+0x1e0>
    ca1d:	8b 73 1c             	mov    esi,DWORD PTR [rbx+0x1c]
    ca20:	44 89 f7             	mov    edi,r14d
    ca23:	31 c0                	xor    eax,eax
    ca25:	f0 0f b1 3b          	lock cmpxchg DWORD PTR [rbx],edi
    ca29:	74 16                	je     ca41 <pthread_rwlock_timedwrlock+0x121>
    ca2b:	48 8d 3b             	lea    rdi,[rbx]
    ca2e:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    ca35:	e8 16 38 00 00       	call   10250 <__lll_lock_wait>
    ca3a:	48 81 c4 80 00 00 00 	add    rsp,0x80
    ca41:	8b 43 14             	mov    eax,DWORD PTR [rbx+0x14]
    ca44:	83 e8 01             	sub    eax,0x1
    ca47:	83 fa 6e             	cmp    edx,0x6e
    ca4a:	89 43 14             	mov    DWORD PTR [rbx+0x14],eax
    ca4d:	0f 85 36 ff ff ff    	jne    c989 <pthread_rwlock_timedwrlock+0x69>
    ca53:	8b 73 30             	mov    esi,DWORD PTR [rbx+0x30]
    ca56:	85 f6                	test   esi,esi
    ca58:	0f 84 f2 00 00 00    	je     cb50 <pthread_rwlock_timedwrlock+0x230>
    ca5e:	8b 4b 10             	mov    ecx,DWORD PTR [rbx+0x10]
    ca61:	31 d2                	xor    edx,edx
    ca63:	41 b8 6e 00 00 00    	mov    r8d,0x6e
    ca69:	85 c9                	test   ecx,ecx
    ca6b:	74 1b                	je     ca88 <pthread_rwlock_timedwrlock+0x168>
    ca6d:	8b 43 18             	mov    eax,DWORD PTR [rbx+0x18]
    ca70:	85 c0                	test   eax,eax
    ca72:	75 14                	jne    ca88 <pthread_rwlock_timedwrlock+0x168>
    ca74:	83 43 08 01          	add    DWORD PTR [rbx+0x8],0x1
    ca78:	ba 01 00 00 00       	mov    edx,0x1
    ca7d:	eb 09                	jmp    ca88 <pthread_rwlock_timedwrlock+0x168>
    ca7f:	90                   	nop
    ca80:	31 d2                	xor    edx,edx
    ca82:	41 b8 23 00 00 00    	mov    r8d,0x23
    ca88:	8b 73 1c             	mov    esi,DWORD PTR [rbx+0x1c]
    ca8b:	f0 ff 0b             	lock dec DWORD PTR [rbx]
    ca8e:	74 16                	je     caa6 <pthread_rwlock_timedwrlock+0x186>
    ca90:	48 8d 3b             	lea    rdi,[rbx]
    ca93:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    ca9a:	e8 51 38 00 00       	call   102f0 <__lll_unlock_wake>
    ca9f:	48 81 c4 80 00 00 00 	add    rsp,0x80
    caa6:	84 d2                	test   dl,dl
    caa8:	74 1e                	je     cac8 <pthread_rwlock_timedwrlock+0x1a8>
    caaa:	45 31 d2             	xor    r10d,r10d
    caad:	ba ff ff ff 7f       	mov    edx,0x7fffffff
    cab2:	4c 89 ee             	mov    rsi,r13
    cab5:	48 8d 7b 08          	lea    rdi,[rbx+0x8]
    cab9:	b8 ca 00 00 00       	mov    eax,0xca
    cabe:	0f 05                	syscall 
    cac0:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    cac6:	77 68                	ja     cb30 <pthread_rwlock_timedwrlock+0x210>
    cac8:	48 83 c4 08          	add    rsp,0x8
    cacc:	44 89 c0             	mov    eax,r8d
    cacf:	5b                   	pop    rbx
    cad0:	5d                   	pop    rbp
    cad1:	41 5c                	pop    r12
    cad3:	41 5d                	pop    r13
    cad5:	41 5e                	pop    r14
    cad7:	41 5f                	pop    r15
    cad9:	c3                   	ret    
    cada:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    cae0:	31 d2                	xor    edx,edx
    cae2:	41 b8 16 00 00 00    	mov    r8d,0x16
    cae8:	eb 9e                	jmp    ca88 <pthread_rwlock_timedwrlock+0x168>
    caea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    caf0:	8b 73 1c             	mov    esi,DWORD PTR [rbx+0x1c]
    caf3:	ba 6e 00 00 00       	mov    edx,0x6e
    caf8:	e9 23 ff ff ff       	jmp    ca20 <pthread_rwlock_timedwrlock+0x100>
    cafd:	0f 1f 00             	nop    DWORD PTR [rax]
    cb00:	83 f8 f5             	cmp    eax,0xfffffff5
    cb03:	74 1b                	je     cb20 <pthread_rwlock_timedwrlock+0x200>
    cb05:	83 f8 fc             	cmp    eax,0xfffffffc
    cb08:	74 16                	je     cb20 <pthread_rwlock_timedwrlock+0x200>
    cb0a:	83 f8 92             	cmp    eax,0xffffff92
    cb0d:	74 11                	je     cb20 <pthread_rwlock_timedwrlock+0x200>
    cb0f:	48 8d 3d ca 5f 00 00 	lea    rdi,[rip+0x5fca]        # 12ae0 <_fini+0xc>
    cb16:	e8 15 8b ff ff       	call   5630 <__libc_fatal@plt>
    cb1b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    cb20:	89 c2                	mov    edx,eax
    cb22:	f7 da                	neg    edx
    cb24:	e9 f4 fe ff ff       	jmp    ca1d <pthread_rwlock_timedwrlock+0xfd>
    cb29:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    cb30:	83 f8 ea             	cmp    eax,0xffffffea
    cb33:	74 93                	je     cac8 <pthread_rwlock_timedwrlock+0x1a8>
    cb35:	83 f8 f2             	cmp    eax,0xfffffff2
    cb38:	74 8e                	je     cac8 <pthread_rwlock_timedwrlock+0x1a8>
    cb3a:	eb d3                	jmp    cb0f <pthread_rwlock_timedwrlock+0x1ef>
    cb3c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    cb40:	89 53 14             	mov    DWORD PTR [rbx+0x14],edx
    cb43:	41 b8 0b 00 00 00    	mov    r8d,0xb
    cb49:	31 d2                	xor    edx,edx
    cb4b:	e9 38 ff ff ff       	jmp    ca88 <pthread_rwlock_timedwrlock+0x168>
    cb50:	31 d2                	xor    edx,edx
    cb52:	0b 43 04             	or     eax,DWORD PTR [rbx+0x4]
    cb55:	41 b8 6e 00 00 00    	mov    r8d,0x6e
    cb5b:	0f 85 27 ff ff ff    	jne    ca88 <pthread_rwlock_timedwrlock+0x168>
    cb61:	e9 f8 fe ff ff       	jmp    ca5e <pthread_rwlock_timedwrlock+0x13e>
    cb66:	64 8b 04 25 d0 02 00 	mov    eax,DWORD PTR fs:0x2d0
    cb6d:	00 
    cb6e:	31 d2                	xor    edx,edx
    cb70:	89 43 18             	mov    DWORD PTR [rbx+0x18],eax
    cb73:	45 31 c0             	xor    r8d,r8d
    cb76:	e9 0d ff ff ff       	jmp    ca88 <pthread_rwlock_timedwrlock+0x168>
    cb7b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

000000000000cb80 <__pthread_rwlock_tryrdlock>:
    cb80:	53                   	push   rbx
    cb81:	8b 77 1c             	mov    esi,DWORD PTR [rdi+0x1c]
    cb84:	49 89 f8             	mov    r8,rdi
    cb87:	8b 15 0b b7 20 00    	mov    edx,DWORD PTR [rip+0x20b70b]        # 218298 <__elision_aconf+0x8>
    cb8d:	83 fe 01             	cmp    esi,0x1
    cb90:	4d 19 c9             	sbb    r9,r9
    cb93:	41 81 e1 80 00 00 00 	and    r9d,0x80
    cb9a:	49 83 c1 01          	add    r9,0x1
    cb9e:	85 d2                	test   edx,edx
    cba0:	7e 12                	jle    cbb4 <__pthread_rwlock_tryrdlock+0x34>
    cba2:	0f b6 47 20          	movzx  eax,BYTE PTR [rdi+0x20]
    cba6:	84 c0                	test   al,al
    cba8:	0f 8e 12 01 00 00    	jle    ccc0 <__pthread_rwlock_tryrdlock+0x140>
    cbae:	83 e8 01             	sub    eax,0x1
    cbb1:	88 47 20             	mov    BYTE PTR [rdi+0x20],al
    cbb4:	bf 01 00 00 00       	mov    edi,0x1
    cbb9:	31 c0                	xor    eax,eax
    cbbb:	f0 41 0f b1 38       	lock cmpxchg DWORD PTR [r8],edi
    cbc0:	74 16                	je     cbd8 <__pthread_rwlock_tryrdlock+0x58>
    cbc2:	49 8d 38             	lea    rdi,[r8]
    cbc5:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    cbcc:	e8 7f 36 00 00       	call   10250 <__lll_lock_wait>
    cbd1:	48 81 c4 80 00 00 00 	add    rsp,0x80
    cbd8:	41 8b 48 18          	mov    ecx,DWORD PTR [r8+0x18]
    cbdc:	85 c9                	test   ecx,ecx
    cbde:	74 58                	je     cc38 <__pthread_rwlock_tryrdlock+0xb8>
    cbe0:	41 8b 70 1c          	mov    esi,DWORD PTR [r8+0x1c]
    cbe4:	31 d2                	xor    edx,edx
    cbe6:	bb 10 00 00 00       	mov    ebx,0x10
    cbeb:	f0 41 ff 08          	lock dec DWORD PTR [r8]
    cbef:	74 16                	je     cc07 <__pthread_rwlock_tryrdlock+0x87>
    cbf1:	49 8d 38             	lea    rdi,[r8]
    cbf4:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    cbfb:	e8 f0 36 00 00       	call   102f0 <__lll_unlock_wake>
    cc00:	48 81 c4 80 00 00 00 	add    rsp,0x80
    cc07:	84 d2                	test   dl,dl
    cc09:	74 6b                	je     cc76 <__pthread_rwlock_tryrdlock+0xf6>
    cc0b:	b9 ca 00 00 00       	mov    ecx,0xca
    cc10:	45 31 d2             	xor    r10d,r10d
    cc13:	ba ff ff ff 7f       	mov    edx,0x7fffffff
    cc18:	4c 89 ce             	mov    rsi,r9
    cc1b:	49 8d 78 08          	lea    rdi,[r8+0x8]
    cc1f:	89 c8                	mov    eax,ecx
    cc21:	0f 05                	syscall 
    cc23:	48 89 c2             	mov    rdx,rax
    cc26:	89 d8                	mov    eax,ebx
    cc28:	48 81 fa 00 f0 ff ff 	cmp    rdx,0xfffffffffffff000
    cc2f:	77 37                	ja     cc68 <__pthread_rwlock_tryrdlock+0xe8>
    cc31:	5b                   	pop    rbx
    cc32:	c3                   	ret    
    cc33:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    cc38:	41 8b 48 14          	mov    ecx,DWORD PTR [r8+0x14]
    cc3c:	85 c9                	test   ecx,ecx
    cc3e:	75 40                	jne    cc80 <__pthread_rwlock_tryrdlock+0x100>
    cc40:	41 8b 50 04          	mov    edx,DWORD PTR [r8+0x4]
    cc44:	8d 42 01             	lea    eax,[rdx+0x1]
    cc47:	85 c0                	test   eax,eax
    cc49:	41 89 40 04          	mov    DWORD PTR [r8+0x4],eax
    cc4d:	0f 84 ff 00 00 00    	je     cd52 <__pthread_rwlock_tryrdlock+0x1d2>
    cc53:	31 d2                	xor    edx,edx
    cc55:	31 db                	xor    ebx,ebx
    cc57:	83 f8 01             	cmp    eax,0x1
    cc5a:	74 3c                	je     cc98 <__pthread_rwlock_tryrdlock+0x118>
    cc5c:	41 8b 70 1c          	mov    esi,DWORD PTR [r8+0x1c]
    cc60:	eb 89                	jmp    cbeb <__pthread_rwlock_tryrdlock+0x6b>
    cc62:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    cc68:	83 fa ea             	cmp    edx,0xffffffea
    cc6b:	74 09                	je     cc76 <__pthread_rwlock_tryrdlock+0xf6>
    cc6d:	83 fa f2             	cmp    edx,0xfffffff2
    cc70:	0f 85 f0 00 00 00    	jne    cd66 <__pthread_rwlock_tryrdlock+0x1e6>
    cc76:	89 d8                	mov    eax,ebx
    cc78:	5b                   	pop    rbx
    cc79:	c3                   	ret    
    cc7a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    cc80:	41 8b 50 30          	mov    edx,DWORD PTR [r8+0x30]
    cc84:	85 d2                	test   edx,edx
    cc86:	74 b8                	je     cc40 <__pthread_rwlock_tryrdlock+0xc0>
    cc88:	31 d2                	xor    edx,edx
    cc8a:	bb 10 00 00 00       	mov    ebx,0x10
    cc8f:	eb cb                	jmp    cc5c <__pthread_rwlock_tryrdlock+0xdc>
    cc91:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    cc98:	41 8b 40 10          	mov    eax,DWORD PTR [r8+0x10]
    cc9c:	85 c0                	test   eax,eax
    cc9e:	0f 84 a5 00 00 00    	je     cd49 <__pthread_rwlock_tryrdlock+0x1c9>
    cca4:	85 c9                	test   ecx,ecx
    cca6:	0f 84 9d 00 00 00    	je     cd49 <__pthread_rwlock_tryrdlock+0x1c9>
    ccac:	41 83 40 08 01       	add    DWORD PTR [r8+0x8],0x1
    ccb1:	ba 01 00 00 00       	mov    edx,0x1
    ccb6:	eb a4                	jmp    cc5c <__pthread_rwlock_tryrdlock+0xdc>
    ccb8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    ccbf:	00 
    ccc0:	be ff ff ff ff       	mov    esi,0xffffffff
    ccc5:	eb 33                	jmp    ccfa <__pthread_rwlock_tryrdlock+0x17a>
    ccc7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    ccce:	00 00 
    ccd0:	a8 02                	test   al,0x2
    ccd2:	75 6c                	jne    cd40 <__pthread_rwlock_tryrdlock+0x1c0>
    ccd4:	a8 01                	test   al,0x1
    ccd6:	74 0a                	je     cce2 <__pthread_rwlock_tryrdlock+0x162>
    ccd8:	c1 e8 18             	shr    eax,0x18
    ccdb:	3d ff 00 00 00       	cmp    eax,0xff
    cce0:	74 46                	je     cd28 <__pthread_rwlock_tryrdlock+0x1a8>
    cce2:	41 0f be 48 20       	movsx  ecx,BYTE PTR [r8+0x20]
    cce7:	8b 05 a7 b5 20 00    	mov    eax,DWORD PTR [rip+0x20b5a7]        # 218294 <__elision_aconf+0x4>
    cced:	39 c1                	cmp    ecx,eax
    ccef:	74 04                	je     ccf5 <__pthread_rwlock_tryrdlock+0x175>
    ccf1:	41 88 40 20          	mov    BYTE PTR [r8+0x20],al
    ccf5:	83 ea 01             	sub    edx,0x1
    ccf8:	74 46                	je     cd40 <__pthread_rwlock_tryrdlock+0x1c0>
    ccfa:	89 f0                	mov    eax,esi
    ccfc:	c7 f8 00 00 00 00    	xbegin cd02 <__pthread_rwlock_tryrdlock+0x182>
    cd02:	83 f8 ff             	cmp    eax,0xffffffff
    cd05:	75 c9                	jne    ccd0 <__pthread_rwlock_tryrdlock+0x150>
    cd07:	49 83 38 00          	cmp    QWORD PTR [r8],0x0
    cd0b:	75 08                	jne    cd15 <__pthread_rwlock_tryrdlock+0x195>
    cd0d:	41 8b 70 18          	mov    esi,DWORD PTR [r8+0x18]
    cd11:	85 f6                	test   esi,esi
    cd13:	75 4d                	jne    cd62 <__pthread_rwlock_tryrdlock+0x1e2>
    cd15:	c6 f8 ff             	xabort 0xff
    cd18:	41 8b 70 1c          	mov    esi,DWORD PTR [r8+0x1c]
    cd1c:	e9 93 fe ff ff       	jmp    cbb4 <__pthread_rwlock_tryrdlock+0x34>
    cd21:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    cd28:	41 0f be 48 20       	movsx  ecx,BYTE PTR [r8+0x20]
    cd2d:	8b 05 5d b5 20 00    	mov    eax,DWORD PTR [rip+0x20b55d]        # 218290 <__elision_aconf>
    cd33:	39 c1                	cmp    ecx,eax
    cd35:	75 ba                	jne    ccf1 <__pthread_rwlock_tryrdlock+0x171>
    cd37:	eb bc                	jmp    ccf5 <__pthread_rwlock_tryrdlock+0x175>
    cd39:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    cd40:	41 8b 70 1c          	mov    esi,DWORD PTR [r8+0x1c]
    cd44:	e9 6b fe ff ff       	jmp    cbb4 <__pthread_rwlock_tryrdlock+0x34>
    cd49:	31 d2                	xor    edx,edx
    cd4b:	31 db                	xor    ebx,ebx
    cd4d:	e9 0a ff ff ff       	jmp    cc5c <__pthread_rwlock_tryrdlock+0xdc>
    cd52:	41 89 50 04          	mov    DWORD PTR [r8+0x4],edx
    cd56:	bb 0b 00 00 00       	mov    ebx,0xb
    cd5b:	31 d2                	xor    edx,edx
    cd5d:	e9 fa fe ff ff       	jmp    cc5c <__pthread_rwlock_tryrdlock+0xdc>
    cd62:	31 c0                	xor    eax,eax
    cd64:	5b                   	pop    rbx
    cd65:	c3                   	ret    
    cd66:	48 8d 3d 73 5d 00 00 	lea    rdi,[rip+0x5d73]        # 12ae0 <_fini+0xc>
    cd6d:	e8 be 88 ff ff       	call   5630 <__libc_fatal@plt>
    cd72:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    cd79:	00 00 00 
    cd7c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

000000000000cd80 <__pthread_rwlock_trywrlock>:
    cd80:	48 89 fa             	mov    rdx,rdi
    cd83:	8b 3d 0f b5 20 00    	mov    edi,DWORD PTR [rip+0x20b50f]        # 218298 <__elision_aconf+0x8>
    cd89:	85 ff                	test   edi,edi
    cd8b:	7e 15                	jle    cda2 <__pthread_rwlock_trywrlock+0x22>
    cd8d:	c6 f8 fd             	xabort 0xfd
    cd90:	0f b6 42 20          	movzx  eax,BYTE PTR [rdx+0x20]
    cd94:	84 c0                	test   al,al
    cd96:	0f 8e 84 00 00 00    	jle    ce20 <__pthread_rwlock_trywrlock+0xa0>
    cd9c:	83 e8 01             	sub    eax,0x1
    cd9f:	88 42 20             	mov    BYTE PTR [rdx+0x20],al
    cda2:	8b 72 1c             	mov    esi,DWORD PTR [rdx+0x1c]
    cda5:	bf 01 00 00 00       	mov    edi,0x1
    cdaa:	31 c0                	xor    eax,eax
    cdac:	f0 0f b1 3a          	lock cmpxchg DWORD PTR [rdx],edi
    cdb0:	74 16                	je     cdc8 <__pthread_rwlock_trywrlock+0x48>
    cdb2:	48 8d 3a             	lea    rdi,[rdx]
    cdb5:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    cdbc:	e8 8f 34 00 00       	call   10250 <__lll_lock_wait>
    cdc1:	48 81 c4 80 00 00 00 	add    rsp,0x80
    cdc8:	8b 4a 18             	mov    ecx,DWORD PTR [rdx+0x18]
    cdcb:	85 c9                	test   ecx,ecx
    cdcd:	74 31                	je     ce00 <__pthread_rwlock_trywrlock+0x80>
    cdcf:	8b 72 1c             	mov    esi,DWORD PTR [rdx+0x1c]
    cdd2:	41 b8 10 00 00 00    	mov    r8d,0x10
    cdd8:	f0 ff 0a             	lock dec DWORD PTR [rdx]
    cddb:	74 16                	je     cdf3 <__pthread_rwlock_trywrlock+0x73>
    cddd:	48 8d 3a             	lea    rdi,[rdx]
    cde0:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    cde7:	e8 04 35 00 00       	call   102f0 <__lll_unlock_wake>
    cdec:	48 81 c4 80 00 00 00 	add    rsp,0x80
    cdf3:	44 89 c0             	mov    eax,r8d
    cdf6:	c3                   	ret    
    cdf7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    cdfe:	00 00 
    ce00:	8b 42 04             	mov    eax,DWORD PTR [rdx+0x4]
    ce03:	41 b8 10 00 00 00    	mov    r8d,0x10
    ce09:	85 c0                	test   eax,eax
    ce0b:	75 0e                	jne    ce1b <__pthread_rwlock_trywrlock+0x9b>
    ce0d:	64 8b 04 25 d0 02 00 	mov    eax,DWORD PTR fs:0x2d0
    ce14:	00 
    ce15:	45 31 c0             	xor    r8d,r8d
    ce18:	89 42 18             	mov    DWORD PTR [rdx+0x18],eax
    ce1b:	8b 72 1c             	mov    esi,DWORD PTR [rdx+0x1c]
    ce1e:	eb b8                	jmp    cdd8 <__pthread_rwlock_trywrlock+0x58>
    ce20:	8b 0d 72 b4 20 00    	mov    ecx,DWORD PTR [rip+0x20b472]        # 218298 <__elision_aconf+0x8>
    ce26:	bf ff ff ff ff       	mov    edi,0xffffffff
    ce2b:	85 c9                	test   ecx,ecx
    ce2d:	7f 39                	jg     ce68 <__pthread_rwlock_trywrlock+0xe8>
    ce2f:	e9 6e ff ff ff       	jmp    cda2 <__pthread_rwlock_trywrlock+0x22>
    ce34:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    ce38:	a8 02                	test   al,0x2
    ce3a:	0f 85 62 ff ff ff    	jne    cda2 <__pthread_rwlock_trywrlock+0x22>
    ce40:	a8 01                	test   al,0x1
    ce42:	74 0a                	je     ce4e <__pthread_rwlock_trywrlock+0xce>
    ce44:	c1 e8 18             	shr    eax,0x18
    ce47:	3d ff 00 00 00       	cmp    eax,0xff
    ce4c:	74 42                	je     ce90 <__pthread_rwlock_trywrlock+0x110>
    ce4e:	0f be 72 20          	movsx  esi,BYTE PTR [rdx+0x20]
    ce52:	8b 05 3c b4 20 00    	mov    eax,DWORD PTR [rip+0x20b43c]        # 218294 <__elision_aconf+0x4>
    ce58:	39 c6                	cmp    esi,eax
    ce5a:	74 03                	je     ce5f <__pthread_rwlock_trywrlock+0xdf>
    ce5c:	88 42 20             	mov    BYTE PTR [rdx+0x20],al
    ce5f:	83 e9 01             	sub    ecx,0x1
    ce62:	0f 84 3a ff ff ff    	je     cda2 <__pthread_rwlock_trywrlock+0x22>
    ce68:	89 f8                	mov    eax,edi
    ce6a:	c7 f8 00 00 00 00    	xbegin ce70 <__pthread_rwlock_trywrlock+0xf0>
    ce70:	83 f8 ff             	cmp    eax,0xffffffff
    ce73:	75 c3                	jne    ce38 <__pthread_rwlock_trywrlock+0xb8>
    ce75:	48 83 3a 00          	cmp    QWORD PTR [rdx],0x0
    ce79:	75 07                	jne    ce82 <__pthread_rwlock_trywrlock+0x102>
    ce7b:	8b 72 18             	mov    esi,DWORD PTR [rdx+0x18]
    ce7e:	85 f6                	test   esi,esi
    ce80:	75 1e                	jne    cea0 <__pthread_rwlock_trywrlock+0x120>
    ce82:	c6 f8 ff             	xabort 0xff
    ce85:	e9 18 ff ff ff       	jmp    cda2 <__pthread_rwlock_trywrlock+0x22>
    ce8a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    ce90:	0f be 72 20          	movsx  esi,BYTE PTR [rdx+0x20]
    ce94:	8b 05 f6 b3 20 00    	mov    eax,DWORD PTR [rip+0x20b3f6]        # 218290 <__elision_aconf>
    ce9a:	39 c6                	cmp    esi,eax
    ce9c:	75 be                	jne    ce5c <__pthread_rwlock_trywrlock+0xdc>
    ce9e:	eb bf                	jmp    ce5f <__pthread_rwlock_trywrlock+0xdf>
    cea0:	31 c0                	xor    eax,eax
    cea2:	c3                   	ret    
    cea3:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    ceaa:	00 00 00 
    cead:	0f 1f 00             	nop    DWORD PTR [rax]

000000000000ceb0 <__pthread_rwlock_unlock>:
    ceb0:	48 83 ec 08          	sub    rsp,0x8
    ceb4:	8b 77 1c             	mov    esi,DWORD PTR [rdi+0x1c]
    ceb7:	48 89 fa             	mov    rdx,rdi
    ceba:	83 fe 01             	cmp    esi,0x1
    cebd:	4d 19 c0             	sbb    r8,r8
    cec0:	41 81 e0 80 00 00 00 	and    r8d,0x80
    cec7:	49 83 c0 01          	add    r8,0x1
    cecb:	90                   	nop
    cecc:	44 8b 4f 18          	mov    r9d,DWORD PTR [rdi+0x18]
    ced0:	45 85 c9             	test   r9d,r9d
    ced3:	75 1b                	jne    cef0 <__pthread_rwlock_unlock+0x40>
    ced5:	8b 7f 04             	mov    edi,DWORD PTR [rdi+0x4]
    ced8:	85 ff                	test   edi,edi
    ceda:	75 14                	jne    cef0 <__pthread_rwlock_unlock+0x40>
    cedc:	0f 01 d5             	xend   
    cedf:	31 c0                	xor    eax,eax
    cee1:	48 83 c4 08          	add    rsp,0x8
    cee5:	c3                   	ret    
    cee6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    ceed:	00 00 00 
    cef0:	bf 01 00 00 00       	mov    edi,0x1
    cef5:	31 c0                	xor    eax,eax
    cef7:	f0 0f b1 3a          	lock cmpxchg DWORD PTR [rdx],edi
    cefb:	74 16                	je     cf13 <__pthread_rwlock_unlock+0x63>
    cefd:	48 8d 3a             	lea    rdi,[rdx]
    cf00:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    cf07:	e8 44 33 00 00       	call   10250 <__lll_lock_wait>
    cf0c:	48 81 c4 80 00 00 00 	add    rsp,0x80
    cf13:	8b 72 18             	mov    esi,DWORD PTR [rdx+0x18]
    cf16:	85 f6                	test   esi,esi
    cf18:	0f 85 92 00 00 00    	jne    cfb0 <__pthread_rwlock_unlock+0x100>
    cf1e:	8b 42 04             	mov    eax,DWORD PTR [rdx+0x4]
    cf21:	83 e8 01             	sub    eax,0x1
    cf24:	85 c0                	test   eax,eax
    cf26:	89 42 04             	mov    DWORD PTR [rdx+0x4],eax
    cf29:	0f 85 93 00 00 00    	jne    cfc2 <__pthread_rwlock_unlock+0x112>
    cf2f:	8b 4a 14             	mov    ecx,DWORD PTR [rdx+0x14]
    cf32:	49 89 d1             	mov    r9,rdx
    cf35:	85 c9                	test   ecx,ecx
    cf37:	0f 85 b3 00 00 00    	jne    cff0 <__pthread_rwlock_unlock+0x140>
    cf3d:	8b 42 10             	mov    eax,DWORD PTR [rdx+0x10]
    cf40:	85 c0                	test   eax,eax
    cf42:	74 7e                	je     cfc2 <__pthread_rwlock_unlock+0x112>
    cf44:	83 42 08 01          	add    DWORD PTR [rdx+0x8],0x1
    cf48:	8b 72 1c             	mov    esi,DWORD PTR [rdx+0x1c]
    cf4b:	f0 ff 0a             	lock dec DWORD PTR [rdx]
    cf4e:	74 16                	je     cf66 <__pthread_rwlock_unlock+0xb6>
    cf50:	48 8d 3a             	lea    rdi,[rdx]
    cf53:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    cf5a:	e8 91 33 00 00       	call   102f0 <__lll_unlock_wake>
    cf5f:	48 81 c4 80 00 00 00 	add    rsp,0x80
    cf66:	45 31 d2             	xor    r10d,r10d
    cf69:	ba ff ff ff 7f       	mov    edx,0x7fffffff
    cf6e:	4c 89 c6             	mov    rsi,r8
    cf71:	49 8d 79 08          	lea    rdi,[r9+0x8]
    cf75:	b8 ca 00 00 00       	mov    eax,0xca
    cf7a:	0f 05                	syscall 
    cf7c:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    cf82:	0f 86 57 ff ff ff    	jbe    cedf <__pthread_rwlock_unlock+0x2f>
    cf88:	83 f8 ea             	cmp    eax,0xffffffea
    cf8b:	0f 84 4e ff ff ff    	je     cedf <__pthread_rwlock_unlock+0x2f>
    cf91:	83 f8 f2             	cmp    eax,0xfffffff2
    cf94:	0f 84 45 ff ff ff    	je     cedf <__pthread_rwlock_unlock+0x2f>
    cf9a:	48 8d 3d 3f 5b 00 00 	lea    rdi,[rip+0x5b3f]        # 12ae0 <_fini+0xc>
    cfa1:	e8 8a 86 ff ff       	call   5630 <__libc_fatal@plt>
    cfa6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    cfad:	00 00 00 
    cfb0:	8b 42 04             	mov    eax,DWORD PTR [rdx+0x4]
    cfb3:	c7 42 18 00 00 00 00 	mov    DWORD PTR [rdx+0x18],0x0
    cfba:	85 c0                	test   eax,eax
    cfbc:	0f 84 6d ff ff ff    	je     cf2f <__pthread_rwlock_unlock+0x7f>
    cfc2:	8b 72 1c             	mov    esi,DWORD PTR [rdx+0x1c]
    cfc5:	f0 ff 0a             	lock dec DWORD PTR [rdx]
    cfc8:	74 16                	je     cfe0 <__pthread_rwlock_unlock+0x130>
    cfca:	48 8d 3a             	lea    rdi,[rdx]
    cfcd:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    cfd4:	e8 17 33 00 00       	call   102f0 <__lll_unlock_wake>
    cfd9:	48 81 c4 80 00 00 00 	add    rsp,0x80
    cfe0:	31 c0                	xor    eax,eax
    cfe2:	48 83 c4 08          	add    rsp,0x8
    cfe6:	c3                   	ret    
    cfe7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    cfee:	00 00 
    cff0:	83 42 0c 01          	add    DWORD PTR [rdx+0xc],0x1
    cff4:	8b 72 1c             	mov    esi,DWORD PTR [rdx+0x1c]
    cff7:	f0 ff 0a             	lock dec DWORD PTR [rdx]
    cffa:	74 16                	je     d012 <__pthread_rwlock_unlock+0x162>
    cffc:	48 8d 3a             	lea    rdi,[rdx]
    cfff:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    d006:	e8 e5 32 00 00       	call   102f0 <__lll_unlock_wake>
    d00b:	48 81 c4 80 00 00 00 	add    rsp,0x80
    d012:	45 31 d2             	xor    r10d,r10d
    d015:	ba 01 00 00 00       	mov    edx,0x1
    d01a:	4c 89 c6             	mov    rsi,r8
    d01d:	49 8d 79 0c          	lea    rdi,[r9+0xc]
    d021:	b8 ca 00 00 00       	mov    eax,0xca
    d026:	0f 05                	syscall 
    d028:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    d02e:	0f 87 54 ff ff ff    	ja     cf88 <__pthread_rwlock_unlock+0xd8>
    d034:	31 c0                	xor    eax,eax
    d036:	48 83 c4 08          	add    rsp,0x8
    d03a:	c3                   	ret    
    d03b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

000000000000d040 <pthread_rwlockattr_init>:
    d040:	c7 07 00 00 00 00    	mov    DWORD PTR [rdi],0x0
    d046:	c7 47 04 00 00 00 00 	mov    DWORD PTR [rdi+0x4],0x0
    d04d:	31 c0                	xor    eax,eax
    d04f:	c3                   	ret    

000000000000d050 <pthread_rwlockattr_destroy>:
    d050:	31 c0                	xor    eax,eax
    d052:	c3                   	ret    
    d053:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    d05a:	00 00 00 
    d05d:	0f 1f 00             	nop    DWORD PTR [rax]

000000000000d060 <pthread_rwlockattr_getpshared>:
    d060:	8b 47 04             	mov    eax,DWORD PTR [rdi+0x4]
    d063:	89 06                	mov    DWORD PTR [rsi],eax
    d065:	31 c0                	xor    eax,eax
    d067:	c3                   	ret    
    d068:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    d06f:	00 

000000000000d070 <pthread_rwlockattr_setpshared>:
    d070:	83 fe 01             	cmp    esi,0x1
    d073:	76 0b                	jbe    d080 <pthread_rwlockattr_setpshared+0x10>
    d075:	b8 16 00 00 00       	mov    eax,0x16
    d07a:	c3                   	ret    
    d07b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    d080:	89 77 04             	mov    DWORD PTR [rdi+0x4],esi
    d083:	31 c0                	xor    eax,eax
    d085:	c3                   	ret    
    d086:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    d08d:	00 00 00 

000000000000d090 <pthread_rwlockattr_getkind_np>:
    d090:	8b 07                	mov    eax,DWORD PTR [rdi]
    d092:	89 06                	mov    DWORD PTR [rsi],eax
    d094:	31 c0                	xor    eax,eax
    d096:	c3                   	ret    
    d097:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    d09e:	00 00 

000000000000d0a0 <pthread_rwlockattr_setkind_np>:
    d0a0:	83 fe 02             	cmp    esi,0x2
    d0a3:	77 0b                	ja     d0b0 <pthread_rwlockattr_setkind_np+0x10>
    d0a5:	89 37                	mov    DWORD PTR [rdi],esi
    d0a7:	31 c0                	xor    eax,eax
    d0a9:	c3                   	ret    
    d0aa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    d0b0:	b8 16 00 00 00       	mov    eax,0x16
    d0b5:	c3                   	ret    
    d0b6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    d0bd:	00 00 00 

000000000000d0c0 <pthread_cond_init@@GLIBC_2.3.2>:
    d0c0:	48 85 f6             	test   rsi,rsi
    d0c3:	c7 07 00 00 00 00    	mov    DWORD PTR [rdi],0x0
    d0c9:	c7 47 04 00 00 00 00 	mov    DWORD PTR [rdi+0x4],0x0
    d0d0:	74 3e                	je     d110 <pthread_cond_init@@GLIBC_2.3.2+0x50>
    d0d2:	8b 06                	mov    eax,DWORD PTR [rsi]
    d0d4:	48 c7 47 08 00 00 00 	mov    QWORD PTR [rdi+0x8],0x0
    d0db:	00 
    d0dc:	48 c7 47 10 00 00 00 	mov    QWORD PTR [rdi+0x10],0x0
    d0e3:	00 
    d0e4:	48 c7 47 18 00 00 00 	mov    QWORD PTR [rdi+0x18],0x0
    d0eb:	00 
    d0ec:	d1 f8                	sar    eax,1
    d0ee:	83 e0 01             	and    eax,0x1
    d0f1:	89 47 28             	mov    DWORD PTR [rdi+0x28],eax
    d0f4:	8b 06                	mov    eax,DWORD PTR [rsi]
    d0f6:	48 c1 e0 3f          	shl    rax,0x3f
    d0fa:	48 c1 f8 3f          	sar    rax,0x3f
    d0fe:	48 89 47 20          	mov    QWORD PTR [rdi+0x20],rax
    d102:	c7 47 2c 00 00 00 00 	mov    DWORD PTR [rdi+0x2c],0x0
    d109:	90                   	nop
    d10a:	31 c0                	xor    eax,eax
    d10c:	c3                   	ret    
    d10d:	0f 1f 00             	nop    DWORD PTR [rax]
    d110:	c7 47 28 00 00 00 00 	mov    DWORD PTR [rdi+0x28],0x0
    d117:	48 c7 47 08 00 00 00 	mov    QWORD PTR [rdi+0x8],0x0
    d11e:	00 
    d11f:	31 c0                	xor    eax,eax
    d121:	48 c7 47 10 00 00 00 	mov    QWORD PTR [rdi+0x10],0x0
    d128:	00 
    d129:	48 c7 47 18 00 00 00 	mov    QWORD PTR [rdi+0x18],0x0
    d130:	00 
    d131:	eb cb                	jmp    d0fe <pthread_cond_init@@GLIBC_2.3.2+0x3e>
    d133:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    d13a:	00 00 00 
    d13d:	0f 1f 00             	nop    DWORD PTR [rax]

000000000000d140 <pthread_cond_destroy@@GLIBC_2.3.2>:
    d140:	41 57                	push   r15
    d142:	41 56                	push   r14
    d144:	b8 00 00 00 00       	mov    eax,0x0
    d149:	41 55                	push   r13
    d14b:	41 54                	push   r12
    d14d:	41 b9 80 00 00 00    	mov    r9d,0x80
    d153:	55                   	push   rbp
    d154:	53                   	push   rbx
    d155:	bb 80 00 00 00       	mov    ebx,0x80
    d15a:	48 83 7f 20 ff       	cmp    QWORD PTR [rdi+0x20],0xffffffffffffffff
    d15f:	49 89 f8             	mov    r8,rdi
    d162:	48 0f 44 d8          	cmove  rbx,rax
    d166:	44 0f 45 c8          	cmovne r9d,eax
    d16a:	90                   	nop
    d16b:	bf 01 00 00 00       	mov    edi,0x1
    d170:	44 89 ce             	mov    esi,r9d
    d173:	f0 41 0f b1 38       	lock cmpxchg DWORD PTR [r8],edi
    d178:	74 16                	je     d190 <pthread_cond_destroy@@GLIBC_2.3.2+0x50>
    d17a:	49 8d 38             	lea    rdi,[r8]
    d17d:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    d184:	e8 c7 30 00 00       	call   10250 <__lll_lock_wait>
    d189:	48 81 c4 80 00 00 00 	add    rsp,0x80
    d190:	49 8b 40 10          	mov    rax,QWORD PTR [r8+0x10]
    d194:	49 39 40 08          	cmp    QWORD PTR [r8+0x8],rax
    d198:	0f 87 ca 00 00 00    	ja     d268 <pthread_cond_destroy@@GLIBC_2.3.2+0x128>
    d19e:	45 8b 78 28          	mov    r15d,DWORD PTR [r8+0x28]
    d1a2:	49 c7 40 08 ff ff ff 	mov    QWORD PTR [r8+0x8],0xffffffffffffffff
    d1a9:	ff 
    d1aa:	41 83 ff 01          	cmp    r15d,0x1
    d1ae:	0f 86 a3 00 00 00    	jbe    d257 <pthread_cond_destroy@@GLIBC_2.3.2+0x117>
    d1b4:	49 8b 78 20          	mov    rdi,QWORD PTR [r8+0x20]
    d1b8:	48 8d 47 ff          	lea    rax,[rdi-0x1]
    d1bc:	48 83 f8 fd          	cmp    rax,0xfffffffffffffffd
    d1c0:	77 1f                	ja     d1e1 <pthread_cond_destroy@@GLIBC_2.3.2+0xa1>
    d1c2:	8b 77 10             	mov    esi,DWORD PTR [rdi+0x10]
    d1c5:	45 31 d2             	xor    r10d,r10d
    d1c8:	ba ff ff ff 7f       	mov    edx,0x7fffffff
    d1cd:	b8 ca 00 00 00       	mov    eax,0xca
    d1d2:	81 e6 80 00 00 00    	and    esi,0x80
    d1d8:	40 80 f6 81          	xor    sil,0x81
    d1dc:	48 63 f6             	movsxd rsi,esi
    d1df:	0f 05                	syscall 
    d1e1:	4d 8d 70 28          	lea    r14,[r8+0x28]
    d1e5:	41 bd ca 00 00 00    	mov    r13d,0xca
    d1eb:	41 bc 01 00 00 00    	mov    r12d,0x1
    d1f1:	31 ed                	xor    ebp,ebp
    d1f3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    d1f8:	44 89 ce             	mov    esi,r9d
    d1fb:	f0 41 ff 08          	lock dec DWORD PTR [r8]
    d1ff:	74 16                	je     d217 <pthread_cond_destroy@@GLIBC_2.3.2+0xd7>
    d201:	49 8d 38             	lea    rdi,[r8]
    d204:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    d20b:	e8 e0 30 00 00       	call   102f0 <__lll_unlock_wake>
    d210:	48 81 c4 80 00 00 00 	add    rsp,0x80
    d217:	45 31 d2             	xor    r10d,r10d
    d21a:	44 89 fa             	mov    edx,r15d
    d21d:	48 89 de             	mov    rsi,rbx
    d220:	4c 89 f7             	mov    rdi,r14
    d223:	44 89 e8             	mov    eax,r13d
    d226:	0f 05                	syscall 
    d228:	44 89 e7             	mov    edi,r12d
    d22b:	89 e8                	mov    eax,ebp
    d22d:	44 89 ce             	mov    esi,r9d
    d230:	f0 41 0f b1 38       	lock cmpxchg DWORD PTR [r8],edi
    d235:	74 16                	je     d24d <pthread_cond_destroy@@GLIBC_2.3.2+0x10d>
    d237:	49 8d 38             	lea    rdi,[r8]
    d23a:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    d241:	e8 0a 30 00 00       	call   10250 <__lll_lock_wait>
    d246:	48 81 c4 80 00 00 00 	add    rsp,0x80
    d24d:	45 8b 78 28          	mov    r15d,DWORD PTR [r8+0x28]
    d251:	41 83 ff 01          	cmp    r15d,0x1
    d255:	77 a1                	ja     d1f8 <pthread_cond_destroy@@GLIBC_2.3.2+0xb8>
    d257:	5b                   	pop    rbx
    d258:	31 c0                	xor    eax,eax
    d25a:	5d                   	pop    rbp
    d25b:	41 5c                	pop    r12
    d25d:	41 5d                	pop    r13
    d25f:	41 5e                	pop    r14
    d261:	41 5f                	pop    r15
    d263:	c3                   	ret    
    d264:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    d268:	44 89 ce             	mov    esi,r9d
    d26b:	f0 41 ff 08          	lock dec DWORD PTR [r8]
    d26f:	74 16                	je     d287 <pthread_cond_destroy@@GLIBC_2.3.2+0x147>
    d271:	49 8d 38             	lea    rdi,[r8]
    d274:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    d27b:	e8 70 30 00 00       	call   102f0 <__lll_unlock_wake>
    d280:	48 81 c4 80 00 00 00 	add    rsp,0x80
    d287:	b8 10 00 00 00       	mov    eax,0x10
    d28c:	5b                   	pop    rbx
    d28d:	5d                   	pop    rbp
    d28e:	41 5c                	pop    r12
    d290:	41 5d                	pop    r13
    d292:	41 5e                	pop    r14
    d294:	41 5f                	pop    r15
    d296:	c3                   	ret    
    d297:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    d29e:	00 00 

000000000000d2a0 <pthread_cond_wait@@GLIBC_2.3.2>:
    d2a0:	48 8d 64 24 d8       	lea    rsp,[rsp-0x28]
    d2a5:	90                   	nop
    d2a6:	48 83 7f 20 ff       	cmp    QWORD PTR [rdi+0x20],0xffffffffffffffff
    d2ab:	48 89 7c 24 08       	mov    QWORD PTR [rsp+0x8],rdi
    d2b0:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
    d2b5:	74 04                	je     d2bb <pthread_cond_wait@@GLIBC_2.3.2+0x1b>
    d2b7:	48 89 77 20          	mov    QWORD PTR [rdi+0x20],rsi
    d2bb:	be 01 00 00 00       	mov    esi,0x1
    d2c0:	31 c0                	xor    eax,eax
    d2c2:	f0 0f b1 37          	lock cmpxchg DWORD PTR [rdi],esi
    d2c6:	0f 85 5a 01 00 00    	jne    d426 <pthread_cond_wait@@GLIBC_2.3.2+0x186>
    d2cc:	48 8b 7c 24 10       	mov    rdi,QWORD PTR [rsp+0x10]
    d2d1:	31 f6                	xor    esi,esi
    d2d3:	e8 e8 e0 ff ff       	call   b3c0 <__pthread_mutex_unlock_usercnt>
    d2d8:	85 c0                	test   eax,eax
    d2da:	0f 85 b6 01 00 00    	jne    d496 <pthread_cond_wait@@GLIBC_2.3.2+0x1f6>
    d2e0:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    d2e5:	48 ff 47 08          	inc    QWORD PTR [rdi+0x8]
    d2e9:	ff 47 04             	inc    DWORD PTR [rdi+0x4]
    d2ec:	83 47 28 02          	add    DWORD PTR [rdi+0x28],0x2
    d2f0:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    d2f5:	4c 8b 4f 10          	mov    r9,QWORD PTR [rdi+0x10]
    d2f9:	8b 57 2c             	mov    edx,DWORD PTR [rdi+0x2c]
    d2fc:	4c 89 4c 24 18       	mov    QWORD PTR [rsp+0x18],r9
    d301:	89 54 24 04          	mov    DWORD PTR [rsp+0x4],edx
    d305:	8b 57 04             	mov    edx,DWORD PTR [rdi+0x4]
    d308:	f0 ff 0f             	lock dec DWORD PTR [rdi]
    d30b:	0f 85 31 01 00 00    	jne    d442 <pthread_cond_wait@@GLIBC_2.3.2+0x1a2>
    d311:	e8 4a 2e 00 00       	call   10160 <__pthread_enable_asynccancel>
    d316:	89 04 24             	mov    DWORD PTR [rsp],eax
    d319:	4d 31 d2             	xor    r10,r10
    d31c:	48 83 7f 20 ff       	cmp    QWORD PTR [rdi+0x20],0xffffffffffffffff
    d321:	48 8d 7f 04          	lea    rdi,[rdi+0x4]
    d325:	be 00 00 00 00       	mov    esi,0x0
    d32a:	74 2a                	je     d356 <pthread_cond_wait@@GLIBC_2.3.2+0xb6>
    d32c:	4c 8b 47 1c          	mov    r8,QWORD PTR [rdi+0x1c]
    d330:	41 8b 40 10          	mov    eax,DWORD PTR [r8+0x10]
    d334:	83 e0 30             	and    eax,0x30
    d337:	83 f8 20             	cmp    eax,0x20
    d33a:	75 15                	jne    d351 <pthread_cond_wait@@GLIBC_2.3.2+0xb1>
    d33c:	be 8b 00 00 00       	mov    esi,0x8b
    d341:	b8 ca 00 00 00       	mov    eax,0xca
    d346:	0f 05                	syscall 
    d348:	83 f8 00             	cmp    eax,0x0
    d34b:	41 0f 94 c0          	sete   r8b
    d34f:	eb 0f                	jmp    d360 <pthread_cond_wait@@GLIBC_2.3.2+0xc0>
    d351:	be 80 00 00 00       	mov    esi,0x80
    d356:	45 30 c0             	xor    r8b,r8b
    d359:	b8 ca 00 00 00       	mov    eax,0xca
    d35e:	0f 05                	syscall 
    d360:	8b 3c 24             	mov    edi,DWORD PTR [rsp]
    d363:	e8 58 2e 00 00       	call   101c0 <__pthread_disable_asynccancel>
    d368:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    d36d:	be 01 00 00 00       	mov    esi,0x1
    d372:	31 c0                	xor    eax,eax
    d374:	f0 0f b1 37          	lock cmpxchg DWORD PTR [rdi],esi
    d378:	0f 85 e0 00 00 00    	jne    d45e <pthread_cond_wait@@GLIBC_2.3.2+0x1be>
    d37e:	8b 57 2c             	mov    edx,DWORD PTR [rdi+0x2c]
    d381:	48 8b 47 18          	mov    rax,QWORD PTR [rdi+0x18]
    d385:	4c 8b 4f 10          	mov    r9,QWORD PTR [rdi+0x10]
    d389:	3b 54 24 04          	cmp    edx,DWORD PTR [rsp+0x4]
    d38d:	75 10                	jne    d39f <pthread_cond_wait@@GLIBC_2.3.2+0xff>
    d38f:	4c 3b 4c 24 18       	cmp    r9,QWORD PTR [rsp+0x18]
    d394:	76 69                	jbe    d3ff <pthread_cond_wait@@GLIBC_2.3.2+0x15f>
    d396:	49 39 c1             	cmp    r9,rax
    d399:	76 64                	jbe    d3ff <pthread_cond_wait@@GLIBC_2.3.2+0x15f>
    d39b:	48 ff 47 18          	inc    QWORD PTR [rdi+0x18]
    d39f:	83 6f 28 02          	sub    DWORD PTR [rdi+0x28],0x2
    d3a3:	48 83 7f 08 ff       	cmp    QWORD PTR [rdi+0x8],0xffffffffffffffff
    d3a8:	75 2e                	jne    d3d8 <pthread_cond_wait@@GLIBC_2.3.2+0x138>
    d3aa:	8b 47 28             	mov    eax,DWORD PTR [rdi+0x28]
    d3ad:	83 e0 fe             	and    eax,0xfffffffe
    d3b0:	75 26                	jne    d3d8 <pthread_cond_wait@@GLIBC_2.3.2+0x138>
    d3b2:	48 83 c7 28          	add    rdi,0x28
    d3b6:	48 83 7f f8 ff       	cmp    QWORD PTR [rdi-0x8],0xffffffffffffffff
    d3bb:	ba 01 00 00 00       	mov    edx,0x1
    d3c0:	b8 01 00 00 00       	mov    eax,0x1
    d3c5:	be 81 00 00 00       	mov    esi,0x81
    d3ca:	0f 44 f0             	cmove  esi,eax
    d3cd:	b8 ca 00 00 00       	mov    eax,0xca
    d3d2:	0f 05                	syscall 
    d3d4:	48 83 ef 28          	sub    rdi,0x28
    d3d8:	f0 ff 0f             	lock dec DWORD PTR [rdi]
    d3db:	0f 85 99 00 00 00    	jne    d47a <pthread_cond_wait@@GLIBC_2.3.2+0x1da>
    d3e1:	48 8b 7c 24 10       	mov    rdi,QWORD PTR [rsp+0x10]
    d3e6:	45 84 c0             	test   r8b,r8b
    d3e9:	75 0b                	jne    d3f6 <pthread_cond_wait@@GLIBC_2.3.2+0x156>
    d3eb:	e8 20 e8 ff ff       	call   bc10 <__pthread_mutex_cond_lock>
    d3f0:	48 8d 64 24 28       	lea    rsp,[rsp+0x28]
    d3f5:	c3                   	ret    
    d3f6:	e8 95 ea ff ff       	call   be90 <__pthread_mutex_cond_lock_adjust>
    d3fb:	31 c0                	xor    eax,eax
    d3fd:	eb f1                	jmp    d3f0 <pthread_cond_wait@@GLIBC_2.3.2+0x150>
    d3ff:	45 84 c0             	test   r8b,r8b
    d402:	0f 84 fd fe ff ff    	je     d305 <pthread_cond_wait@@GLIBC_2.3.2+0x65>
    d408:	48 8b 7c 24 10       	mov    rdi,QWORD PTR [rsp+0x10]
    d40d:	e8 7e ea ff ff       	call   be90 <__pthread_mutex_cond_lock_adjust>
    d412:	49 89 f8             	mov    r8,rdi
    d415:	31 f6                	xor    esi,esi
    d417:	e8 a4 df ff ff       	call   b3c0 <__pthread_mutex_unlock_usercnt>
    d41c:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    d421:	e9 df fe ff ff       	jmp    d305 <pthread_cond_wait@@GLIBC_2.3.2+0x65>
    d426:	48 83 7f 20 ff       	cmp    QWORD PTR [rdi+0x20],0xffffffffffffffff
    d42b:	b8 00 00 00 00       	mov    eax,0x0
    d430:	be 80 00 00 00       	mov    esi,0x80
    d435:	0f 45 f0             	cmovne esi,eax
    d438:	e8 13 2e 00 00       	call   10250 <__lll_lock_wait>
    d43d:	e9 8a fe ff ff       	jmp    d2cc <pthread_cond_wait@@GLIBC_2.3.2+0x2c>
    d442:	48 83 7f 20 ff       	cmp    QWORD PTR [rdi+0x20],0xffffffffffffffff
    d447:	b8 00 00 00 00       	mov    eax,0x0
    d44c:	be 80 00 00 00       	mov    esi,0x80
    d451:	0f 45 f0             	cmovne esi,eax
    d454:	e8 97 2e 00 00       	call   102f0 <__lll_unlock_wake>
    d459:	e9 b3 fe ff ff       	jmp    d311 <pthread_cond_wait@@GLIBC_2.3.2+0x71>
    d45e:	48 83 7f 20 ff       	cmp    QWORD PTR [rdi+0x20],0xffffffffffffffff
    d463:	b8 00 00 00 00       	mov    eax,0x0
    d468:	be 80 00 00 00       	mov    esi,0x80
    d46d:	0f 45 f0             	cmovne esi,eax
    d470:	e8 db 2d 00 00       	call   10250 <__lll_lock_wait>
    d475:	e9 04 ff ff ff       	jmp    d37e <pthread_cond_wait@@GLIBC_2.3.2+0xde>
    d47a:	48 83 7f 20 ff       	cmp    QWORD PTR [rdi+0x20],0xffffffffffffffff
    d47f:	b8 00 00 00 00       	mov    eax,0x0
    d484:	be 80 00 00 00       	mov    esi,0x80
    d489:	0f 45 f0             	cmovne esi,eax
    d48c:	e8 5f 2e 00 00       	call   102f0 <__lll_unlock_wake>
    d491:	e9 4b ff ff ff       	jmp    d3e1 <pthread_cond_wait@@GLIBC_2.3.2+0x141>
    d496:	49 89 c2             	mov    r10,rax
    d499:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    d49e:	f0 ff 0f             	lock dec DWORD PTR [rdi]
    d4a1:	74 17                	je     d4ba <pthread_cond_wait@@GLIBC_2.3.2+0x21a>
    d4a3:	48 83 7f 20 ff       	cmp    QWORD PTR [rdi+0x20],0xffffffffffffffff
    d4a8:	b8 00 00 00 00       	mov    eax,0x0
    d4ad:	be 80 00 00 00       	mov    esi,0x80
    d4b2:	0f 45 f0             	cmovne esi,eax
    d4b5:	e8 36 2e 00 00       	call   102f0 <__lll_unlock_wake>
    d4ba:	4c 89 d0             	mov    rax,r10
    d4bd:	e9 2e ff ff ff       	jmp    d3f0 <pthread_cond_wait@@GLIBC_2.3.2+0x150>
    d4c2:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    d4c6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    d4cd:	00 00 00 

000000000000d4d0 <__condvar_cleanup1>:
    d4d0:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
    d4d5:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    d4da:	be 01 00 00 00       	mov    esi,0x1
    d4df:	31 c0                	xor    eax,eax
    d4e1:	f0 0f b1 37          	lock cmpxchg DWORD PTR [rdi],esi
    d4e5:	74 17                	je     d4fe <__condvar_cleanup1+0x2e>
    d4e7:	48 83 7f 20 ff       	cmp    QWORD PTR [rdi+0x20],0xffffffffffffffff
    d4ec:	b8 00 00 00 00       	mov    eax,0x0
    d4f1:	be 80 00 00 00       	mov    esi,0x80
    d4f6:	0f 45 f0             	cmovne esi,eax
    d4f9:	e8 52 2d 00 00       	call   10250 <__lll_lock_wait>
    d4fe:	8b 57 2c             	mov    edx,DWORD PTR [rdi+0x2c]
    d501:	3b 54 24 04          	cmp    edx,DWORD PTR [rsp+0x4]
    d505:	75 15                	jne    d51c <__condvar_cleanup1+0x4c>
    d507:	48 8b 47 08          	mov    rax,QWORD PTR [rdi+0x8]
    d50b:	48 3b 47 10          	cmp    rax,QWORD PTR [rdi+0x10]
    d50f:	76 07                	jbe    d518 <__condvar_cleanup1+0x48>
    d511:	48 ff 47 10          	inc    QWORD PTR [rdi+0x10]
    d515:	ff 47 04             	inc    DWORD PTR [rdi+0x4]
    d518:	48 ff 47 18          	inc    QWORD PTR [rdi+0x18]
    d51c:	83 6f 28 02          	sub    DWORD PTR [rdi+0x28],0x2
    d520:	31 c9                	xor    ecx,ecx
    d522:	48 83 7f 08 ff       	cmp    QWORD PTR [rdi+0x8],0xffffffffffffffff
    d527:	75 33                	jne    d55c <__condvar_cleanup1+0x8c>
    d529:	8b 47 28             	mov    eax,DWORD PTR [rdi+0x28]
    d52c:	83 e0 fe             	and    eax,0xfffffffe
    d52f:	75 2b                	jne    d55c <__condvar_cleanup1+0x8c>
    d531:	48 83 7f 20 ff       	cmp    QWORD PTR [rdi+0x20],0xffffffffffffffff
    d536:	48 8d 7f 28          	lea    rdi,[rdi+0x28]
    d53a:	ba 01 00 00 00       	mov    edx,0x1
    d53f:	b8 01 00 00 00       	mov    eax,0x1
    d544:	be 81 00 00 00       	mov    esi,0x81
    d549:	0f 44 f0             	cmove  esi,eax
    d54c:	b8 ca 00 00 00       	mov    eax,0xca
    d551:	0f 05                	syscall 
    d553:	48 83 ef 28          	sub    rdi,0x28
    d557:	b9 01 00 00 00       	mov    ecx,0x1
    d55c:	f0 ff 0f             	lock dec DWORD PTR [rdi]
    d55f:	74 17                	je     d578 <__condvar_cleanup1+0xa8>
    d561:	48 83 7f 20 ff       	cmp    QWORD PTR [rdi+0x20],0xffffffffffffffff
    d566:	b8 00 00 00 00       	mov    eax,0x0
    d56b:	be 80 00 00 00       	mov    esi,0x80
    d570:	0f 45 f0             	cmovne esi,eax
    d573:	e8 78 2d 00 00       	call   102f0 <__lll_unlock_wake>
    d578:	85 c9                	test   ecx,ecx
    d57a:	75 22                	jne    d59e <__condvar_cleanup1+0xce>
    d57c:	48 83 c7 04          	add    rdi,0x4
    d580:	48 83 7f 1c ff       	cmp    QWORD PTR [rdi+0x1c],0xffffffffffffffff
    d585:	ba ff ff ff 7f       	mov    edx,0x7fffffff
    d58a:	b8 01 00 00 00       	mov    eax,0x1
    d58f:	be 81 00 00 00       	mov    esi,0x81
    d594:	0f 44 f0             	cmove  esi,eax
    d597:	b8 ca 00 00 00       	mov    eax,0xca
    d59c:	0f 05                	syscall 
    d59e:	48 8b 7c 24 10       	mov    rdi,QWORD PTR [rsp+0x10]
    d5a3:	8b 47 10             	mov    eax,DWORD PTR [rdi+0x10]
    d5a6:	83 e0 30             	and    eax,0x30
    d5a9:	83 f8 20             	cmp    eax,0x20
    d5ac:	75 18                	jne    d5c6 <__condvar_cleanup1+0xf6>
    d5ae:	8b 07                	mov    eax,DWORD PTR [rdi]
    d5b0:	25 ff ff ff 3f       	and    eax,0x3fffffff
    d5b5:	64 39 04 25 d0 02 00 	cmp    DWORD PTR fs:0x2d0,eax
    d5bc:	00 
    d5bd:	75 07                	jne    d5c6 <__condvar_cleanup1+0xf6>
    d5bf:	e8 cc e8 ff ff       	call   be90 <__pthread_mutex_cond_lock_adjust>
    d5c4:	eb 05                	jmp    d5cb <__condvar_cleanup1+0xfb>
    d5c6:	e8 45 e6 ff ff       	call   bc10 <__pthread_mutex_cond_lock>
    d5cb:	48 8b 7c 24 18       	mov    rdi,QWORD PTR [rsp+0x18]
    d5d0:	e8 2b 44 00 00       	call   11a00 <_Unwind_Resume>
    d5d5:	f4                   	hlt    
    d5d6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    d5dd:	00 00 00 

000000000000d5e0 <pthread_cond_timedwait@@GLIBC_2.3.2>:
    d5e0:	41 54                	push   r12
    d5e2:	41 55                	push   r13
    d5e4:	41 56                	push   r14
    d5e6:	41 57                	push   r15
    d5e8:	48 83 ec 28          	sub    rsp,0x28
    d5ec:	90                   	nop
    d5ed:	48 81 7a 08 00 ca 9a 	cmp    QWORD PTR [rdx+0x8],0x3b9aca00
    d5f4:	3b 
    d5f5:	b8 16 00 00 00       	mov    eax,0x16
    d5fa:	0f 83 e2 01 00 00    	jae    d7e2 <pthread_cond_timedwait@@GLIBC_2.3.2+0x202>
    d600:	48 83 7f 20 ff       	cmp    QWORD PTR [rdi+0x20],0xffffffffffffffff
    d605:	48 89 7c 24 08       	mov    QWORD PTR [rsp+0x8],rdi
    d60a:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
    d60f:	49 89 d5             	mov    r13,rdx
    d612:	74 04                	je     d618 <pthread_cond_timedwait@@GLIBC_2.3.2+0x38>
    d614:	48 89 77 20          	mov    QWORD PTR [rdi+0x20],rsi
    d618:	45 30 ff             	xor    r15b,r15b
    d61b:	be 01 00 00 00       	mov    esi,0x1
    d620:	31 c0                	xor    eax,eax
    d622:	f0 0f b1 37          	lock cmpxchg DWORD PTR [rdi],esi
    d626:	0f 85 cd 01 00 00    	jne    d7f9 <pthread_cond_timedwait@@GLIBC_2.3.2+0x219>
    d62c:	48 8b 7c 24 10       	mov    rdi,QWORD PTR [rsp+0x10]
    d631:	31 f6                	xor    esi,esi
    d633:	e8 88 dd ff ff       	call   b3c0 <__pthread_mutex_unlock_usercnt>
    d638:	85 c0                	test   eax,eax
    d63a:	0f 85 29 02 00 00    	jne    d869 <pthread_cond_timedwait@@GLIBC_2.3.2+0x289>
    d640:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    d645:	48 ff 47 08          	inc    QWORD PTR [rdi+0x8]
    d649:	ff 47 04             	inc    DWORD PTR [rdi+0x4]
    d64c:	83 47 28 02          	add    DWORD PTR [rdi+0x28],0x2
    d650:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    d655:	4c 8b 4f 10          	mov    r9,QWORD PTR [rdi+0x10]
    d659:	8b 57 2c             	mov    edx,DWORD PTR [rdi+0x2c]
    d65c:	4c 89 4c 24 18       	mov    QWORD PTR [rsp+0x18],r9
    d661:	89 54 24 04          	mov    DWORD PTR [rsp+0x4],edx
    d665:	49 83 7d 00 00       	cmp    QWORD PTR [r13+0x0],0x0
    d66a:	49 c7 c6 92 ff ff ff 	mov    r14,0xffffffffffffff92
    d671:	0f 88 b3 00 00 00    	js     d72a <pthread_cond_timedwait@@GLIBC_2.3.2+0x14a>
    d677:	44 8b 67 04          	mov    r12d,DWORD PTR [rdi+0x4]
    d67b:	f0 ff 0f             	lock dec DWORD PTR [rdi]
    d67e:	0f 85 91 01 00 00    	jne    d815 <pthread_cond_timedwait@@GLIBC_2.3.2+0x235>
    d684:	e8 d7 2a 00 00       	call   10160 <__pthread_enable_asynccancel>
    d689:	89 04 24             	mov    DWORD PTR [rsp],eax
    d68c:	4d 89 ea             	mov    r10,r13
    d68f:	be 09 00 00 00       	mov    esi,0x9
    d694:	48 83 7f 20 ff       	cmp    QWORD PTR [rdi+0x20],0xffffffffffffffff
    d699:	74 44                	je     d6df <pthread_cond_timedwait@@GLIBC_2.3.2+0xff>
    d69b:	4c 8b 47 20          	mov    r8,QWORD PTR [rdi+0x20]
    d69f:	41 8b 40 10          	mov    eax,DWORD PTR [r8+0x10]
    d6a3:	83 e0 30             	and    eax,0x30
    d6a6:	83 f8 20             	cmp    eax,0x20
    d6a9:	75 2f                	jne    d6da <pthread_cond_timedwait@@GLIBC_2.3.2+0xfa>
    d6ab:	be 8b 00 00 00       	mov    esi,0x8b
    d6b0:	31 c0                	xor    eax,eax
    d6b2:	f7 47 28 01 00 00 00 	test   DWORD PTR [rdi+0x28],0x1
    d6b9:	ba 00 01 00 00       	mov    edx,0x100
    d6be:	0f 44 c2             	cmove  eax,edx
    d6c1:	09 c6                	or     esi,eax
    d6c3:	4c 89 e2             	mov    rdx,r12
    d6c6:	48 83 c7 04          	add    rdi,0x4
    d6ca:	b8 ca 00 00 00       	mov    eax,0xca
    d6cf:	0f 05                	syscall 
    d6d1:	83 f8 00             	cmp    eax,0x0
    d6d4:	41 0f 94 c7          	sete   r15b
    d6d8:	eb 2f                	jmp    d709 <pthread_cond_timedwait@@GLIBC_2.3.2+0x129>
    d6da:	be 89 00 00 00       	mov    esi,0x89
    d6df:	45 30 ff             	xor    r15b,r15b
    d6e2:	31 c0                	xor    eax,eax
    d6e4:	f7 47 28 01 00 00 00 	test   DWORD PTR [rdi+0x28],0x1
    d6eb:	ba 00 01 00 00       	mov    edx,0x100
    d6f0:	41 b9 ff ff ff ff    	mov    r9d,0xffffffff
    d6f6:	0f 44 c2             	cmove  eax,edx
    d6f9:	09 c6                	or     esi,eax
    d6fb:	4c 89 e2             	mov    rdx,r12
    d6fe:	48 83 c7 04          	add    rdi,0x4
    d702:	b8 ca 00 00 00       	mov    eax,0xca
    d707:	0f 05                	syscall 
    d709:	49 89 c6             	mov    r14,rax
    d70c:	8b 3c 24             	mov    edi,DWORD PTR [rsp]
    d70f:	e8 ac 2a 00 00       	call   101c0 <__pthread_disable_asynccancel>
    d714:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    d719:	be 01 00 00 00       	mov    esi,0x1
    d71e:	31 c0                	xor    eax,eax
    d720:	f0 0f b1 37          	lock cmpxchg DWORD PTR [rdi],esi
    d724:	0f 85 07 01 00 00    	jne    d831 <pthread_cond_timedwait@@GLIBC_2.3.2+0x251>
    d72a:	8b 57 2c             	mov    edx,DWORD PTR [rdi+0x2c]
    d72d:	48 8b 47 18          	mov    rax,QWORD PTR [rdi+0x18]
    d731:	4c 8b 4f 10          	mov    r9,QWORD PTR [rdi+0x10]
    d735:	3b 54 24 04          	cmp    edx,DWORD PTR [rsp+0x4]
    d739:	75 43                	jne    d77e <pthread_cond_timedwait@@GLIBC_2.3.2+0x19e>
    d73b:	4c 3b 4c 24 18       	cmp    r9,QWORD PTR [rsp+0x18]
    d740:	76 05                	jbe    d747 <pthread_cond_timedwait@@GLIBC_2.3.2+0x167>
    d742:	49 39 c1             	cmp    r9,rax
    d745:	77 3c                	ja     d783 <pthread_cond_timedwait@@GLIBC_2.3.2+0x1a3>
    d747:	49 83 fe 92          	cmp    r14,0xffffffffffffff92
    d74b:	74 22                	je     d76f <pthread_cond_timedwait@@GLIBC_2.3.2+0x18f>
    d74d:	45 84 ff             	test   r15b,r15b
    d750:	0f 84 21 ff ff ff    	je     d677 <pthread_cond_timedwait@@GLIBC_2.3.2+0x97>
    d756:	4c 89 c7             	mov    rdi,r8
    d759:	e8 32 e7 ff ff       	call   be90 <__pthread_mutex_cond_lock_adjust>
    d75e:	31 f6                	xor    esi,esi
    d760:	e8 5b dc ff ff       	call   b3c0 <__pthread_mutex_unlock_usercnt>
    d765:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    d76a:	e9 08 ff ff ff       	jmp    d677 <pthread_cond_timedwait@@GLIBC_2.3.2+0x97>
    d76f:	48 ff 47 10          	inc    QWORD PTR [rdi+0x10]
    d773:	ff 47 04             	inc    DWORD PTR [rdi+0x4]
    d776:	41 be 6e 00 00 00    	mov    r14d,0x6e
    d77c:	eb 08                	jmp    d786 <pthread_cond_timedwait@@GLIBC_2.3.2+0x1a6>
    d77e:	4d 31 f6             	xor    r14,r14
    d781:	eb 07                	jmp    d78a <pthread_cond_timedwait@@GLIBC_2.3.2+0x1aa>
    d783:	4d 31 f6             	xor    r14,r14
    d786:	48 ff 47 18          	inc    QWORD PTR [rdi+0x18]
    d78a:	83 6f 28 02          	sub    DWORD PTR [rdi+0x28],0x2
    d78e:	48 83 7f 08 ff       	cmp    QWORD PTR [rdi+0x8],0xffffffffffffffff
    d793:	75 2e                	jne    d7c3 <pthread_cond_timedwait@@GLIBC_2.3.2+0x1e3>
    d795:	8b 47 28             	mov    eax,DWORD PTR [rdi+0x28]
    d798:	83 e0 fe             	and    eax,0xfffffffe
    d79b:	75 26                	jne    d7c3 <pthread_cond_timedwait@@GLIBC_2.3.2+0x1e3>
    d79d:	48 83 c7 28          	add    rdi,0x28
    d7a1:	48 83 7f f8 ff       	cmp    QWORD PTR [rdi-0x8],0xffffffffffffffff
    d7a6:	ba 01 00 00 00       	mov    edx,0x1
    d7ab:	b8 01 00 00 00       	mov    eax,0x1
    d7b0:	be 81 00 00 00       	mov    esi,0x81
    d7b5:	0f 44 f0             	cmove  esi,eax
    d7b8:	b8 ca 00 00 00       	mov    eax,0xca
    d7bd:	0f 05                	syscall 
    d7bf:	48 83 ef 28          	sub    rdi,0x28
    d7c3:	f0 ff 0f             	lock dec DWORD PTR [rdi]
    d7c6:	0f 85 81 00 00 00    	jne    d84d <pthread_cond_timedwait@@GLIBC_2.3.2+0x26d>
    d7cc:	48 8b 7c 24 10       	mov    rdi,QWORD PTR [rsp+0x10]
    d7d1:	45 84 ff             	test   r15b,r15b
    d7d4:	75 19                	jne    d7ef <pthread_cond_timedwait@@GLIBC_2.3.2+0x20f>
    d7d6:	e8 35 e4 ff ff       	call   bc10 <__pthread_mutex_cond_lock>
    d7db:	48 85 c0             	test   rax,rax
    d7de:	49 0f 44 c6          	cmove  rax,r14
    d7e2:	48 83 c4 28          	add    rsp,0x28
    d7e6:	41 5f                	pop    r15
    d7e8:	41 5e                	pop    r14
    d7ea:	41 5d                	pop    r13
    d7ec:	41 5c                	pop    r12
    d7ee:	c3                   	ret    
    d7ef:	e8 9c e6 ff ff       	call   be90 <__pthread_mutex_cond_lock_adjust>
    d7f4:	4c 89 f0             	mov    rax,r14
    d7f7:	eb e9                	jmp    d7e2 <pthread_cond_timedwait@@GLIBC_2.3.2+0x202>
    d7f9:	48 83 7f 20 ff       	cmp    QWORD PTR [rdi+0x20],0xffffffffffffffff
    d7fe:	b8 00 00 00 00       	mov    eax,0x0
    d803:	be 80 00 00 00       	mov    esi,0x80
    d808:	0f 45 f0             	cmovne esi,eax
    d80b:	e8 40 2a 00 00       	call   10250 <__lll_lock_wait>
    d810:	e9 17 fe ff ff       	jmp    d62c <pthread_cond_timedwait@@GLIBC_2.3.2+0x4c>
    d815:	48 83 7f 20 ff       	cmp    QWORD PTR [rdi+0x20],0xffffffffffffffff
    d81a:	b8 00 00 00 00       	mov    eax,0x0
    d81f:	be 80 00 00 00       	mov    esi,0x80
    d824:	0f 45 f0             	cmovne esi,eax
    d827:	e8 c4 2a 00 00       	call   102f0 <__lll_unlock_wake>
    d82c:	e9 53 fe ff ff       	jmp    d684 <pthread_cond_timedwait@@GLIBC_2.3.2+0xa4>
    d831:	48 83 7f 20 ff       	cmp    QWORD PTR [rdi+0x20],0xffffffffffffffff
    d836:	b8 00 00 00 00       	mov    eax,0x0
    d83b:	be 80 00 00 00       	mov    esi,0x80
    d840:	0f 45 f0             	cmovne esi,eax
    d843:	e8 08 2a 00 00       	call   10250 <__lll_lock_wait>
    d848:	e9 dd fe ff ff       	jmp    d72a <pthread_cond_timedwait@@GLIBC_2.3.2+0x14a>
    d84d:	48 83 7f 20 ff       	cmp    QWORD PTR [rdi+0x20],0xffffffffffffffff
    d852:	b8 00 00 00 00       	mov    eax,0x0
    d857:	be 80 00 00 00       	mov    esi,0x80
    d85c:	0f 45 f0             	cmovne esi,eax
    d85f:	e8 8c 2a 00 00       	call   102f0 <__lll_unlock_wake>
    d864:	e9 63 ff ff ff       	jmp    d7cc <pthread_cond_timedwait@@GLIBC_2.3.2+0x1ec>
    d869:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    d86e:	48 89 04 24          	mov    QWORD PTR [rsp],rax
    d872:	f0 ff 0f             	lock dec DWORD PTR [rdi]
    d875:	75 17                	jne    d88e <pthread_cond_timedwait@@GLIBC_2.3.2+0x2ae>
    d877:	48 83 7f 20 ff       	cmp    QWORD PTR [rdi+0x20],0xffffffffffffffff
    d87c:	b8 00 00 00 00       	mov    eax,0x0
    d881:	be 80 00 00 00       	mov    esi,0x80
    d886:	0f 45 f0             	cmovne esi,eax
    d889:	e8 62 2a 00 00       	call   102f0 <__lll_unlock_wake>
    d88e:	48 8b 04 24          	mov    rax,QWORD PTR [rsp]
    d892:	e9 4b ff ff ff       	jmp    d7e2 <pthread_cond_timedwait@@GLIBC_2.3.2+0x202>
    d897:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    d89e:	00 00 

000000000000d8a0 <__condvar_cleanup2>:
    d8a0:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
    d8a5:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
    d8aa:	be 01 00 00 00       	mov    esi,0x1
    d8af:	31 c0                	xor    eax,eax
    d8b1:	f0 0f b1 37          	lock cmpxchg DWORD PTR [rdi],esi
    d8b5:	74 17                	je     d8ce <__condvar_cleanup2+0x2e>
    d8b7:	48 83 7f 20 ff       	cmp    QWORD PTR [rdi+0x20],0xffffffffffffffff
    d8bc:	b8 00 00 00 00       	mov    eax,0x0
    d8c1:	be 80 00 00 00       	mov    esi,0x80
    d8c6:	0f 45 f0             	cmovne esi,eax
    d8c9:	e8 82 29 00 00       	call   10250 <__lll_lock_wait>
    d8ce:	8b 57 2c             	mov    edx,DWORD PTR [rdi+0x2c]
    d8d1:	3b 54 24 04          	cmp    edx,DWORD PTR [rsp+0x4]
    d8d5:	75 15                	jne    d8ec <__condvar_cleanup2+0x4c>
    d8d7:	48 8b 47 08          	mov    rax,QWORD PTR [rdi+0x8]
    d8db:	48 3b 47 10          	cmp    rax,QWORD PTR [rdi+0x10]
    d8df:	76 07                	jbe    d8e8 <__condvar_cleanup2+0x48>
    d8e1:	48 ff 47 10          	inc    QWORD PTR [rdi+0x10]
    d8e5:	ff 47 04             	inc    DWORD PTR [rdi+0x4]
    d8e8:	48 ff 47 18          	inc    QWORD PTR [rdi+0x18]
    d8ec:	83 6f 28 02          	sub    DWORD PTR [rdi+0x28],0x2
    d8f0:	4d 31 e4             	xor    r12,r12
    d8f3:	48 83 7f 08 ff       	cmp    QWORD PTR [rdi+0x8],0xffffffffffffffff
    d8f8:	75 34                	jne    d92e <__condvar_cleanup2+0x8e>
    d8fa:	8b 47 28             	mov    eax,DWORD PTR [rdi+0x28]
    d8fd:	83 e0 fe             	and    eax,0xfffffffe
    d900:	75 2c                	jne    d92e <__condvar_cleanup2+0x8e>
    d902:	48 83 7f 20 ff       	cmp    QWORD PTR [rdi+0x20],0xffffffffffffffff
    d907:	48 8d 7f 28          	lea    rdi,[rdi+0x28]
    d90b:	ba 01 00 00 00       	mov    edx,0x1
    d910:	b8 01 00 00 00       	mov    eax,0x1
    d915:	be 81 00 00 00       	mov    esi,0x81
    d91a:	0f 44 f0             	cmove  esi,eax
    d91d:	b8 ca 00 00 00       	mov    eax,0xca
    d922:	0f 05                	syscall 
    d924:	48 83 ef 28          	sub    rdi,0x28
    d928:	41 bc 01 00 00 00    	mov    r12d,0x1
    d92e:	f0 ff 0f             	lock dec DWORD PTR [rdi]
    d931:	74 17                	je     d94a <__condvar_cleanup2+0xaa>
    d933:	48 83 7f 20 ff       	cmp    QWORD PTR [rdi+0x20],0xffffffffffffffff
    d938:	b8 00 00 00 00       	mov    eax,0x0
    d93d:	be 80 00 00 00       	mov    esi,0x80
    d942:	0f 45 f0             	cmovne esi,eax
    d945:	e8 a6 29 00 00       	call   102f0 <__lll_unlock_wake>
    d94a:	4d 85 e4             	test   r12,r12
    d94d:	75 22                	jne    d971 <__condvar_cleanup2+0xd1>
    d94f:	48 83 c7 04          	add    rdi,0x4
    d953:	48 83 7f 1c ff       	cmp    QWORD PTR [rdi+0x1c],0xffffffffffffffff
    d958:	ba ff ff ff 7f       	mov    edx,0x7fffffff
    d95d:	b8 01 00 00 00       	mov    eax,0x1
    d962:	be 81 00 00 00       	mov    esi,0x81
    d967:	0f 44 f0             	cmove  esi,eax
    d96a:	b8 ca 00 00 00       	mov    eax,0xca
    d96f:	0f 05                	syscall 
    d971:	48 8b 7c 24 10       	mov    rdi,QWORD PTR [rsp+0x10]
    d976:	8b 47 10             	mov    eax,DWORD PTR [rdi+0x10]
    d979:	83 e0 30             	and    eax,0x30
    d97c:	83 f8 20             	cmp    eax,0x20
    d97f:	75 18                	jne    d999 <__condvar_cleanup2+0xf9>
    d981:	8b 07                	mov    eax,DWORD PTR [rdi]
    d983:	25 ff ff ff 3f       	and    eax,0x3fffffff
    d988:	64 39 04 25 d0 02 00 	cmp    DWORD PTR fs:0x2d0,eax
    d98f:	00 
    d990:	75 07                	jne    d999 <__condvar_cleanup2+0xf9>
    d992:	e8 f9 e4 ff ff       	call   be90 <__pthread_mutex_cond_lock_adjust>
    d997:	eb 05                	jmp    d99e <__condvar_cleanup2+0xfe>
    d999:	e8 72 e2 ff ff       	call   bc10 <__pthread_mutex_cond_lock>
    d99e:	48 8b 7c 24 18       	mov    rdi,QWORD PTR [rsp+0x18]
    d9a3:	4c 8b 7c 24 28       	mov    r15,QWORD PTR [rsp+0x28]
    d9a8:	4c 8b 74 24 30       	mov    r14,QWORD PTR [rsp+0x30]
    d9ad:	4c 8b 6c 24 38       	mov    r13,QWORD PTR [rsp+0x38]
    d9b2:	4c 8b 64 24 40       	mov    r12,QWORD PTR [rsp+0x40]
    d9b7:	e8 44 40 00 00       	call   11a00 <_Unwind_Resume>
    d9bc:	f4                   	hlt    
    d9bd:	0f 1f 00             	nop    DWORD PTR [rax]

000000000000d9c0 <pthread_cond_signal@@GLIBC_2.3.2>:
    d9c0:	90                   	nop
    d9c1:	49 89 f8             	mov    r8,rdi
    d9c4:	be 01 00 00 00       	mov    esi,0x1
    d9c9:	31 c0                	xor    eax,eax
    d9cb:	f0 0f b1 37          	lock cmpxchg DWORD PTR [rdi],esi
    d9cf:	0f 85 91 00 00 00    	jne    da66 <pthread_cond_signal@@GLIBC_2.3.2+0xa6>
    d9d5:	48 83 c7 04          	add    rdi,0x4
    d9d9:	49 8b 48 08          	mov    rcx,QWORD PTR [r8+0x8]
    d9dd:	49 3b 48 10          	cmp    rcx,QWORD PTR [r8+0x10]
    d9e1:	76 7a                	jbe    da5d <pthread_cond_signal@@GLIBC_2.3.2+0x9d>
    d9e3:	49 83 40 10 01       	add    QWORD PTR [r8+0x10],0x1
    d9e8:	83 07 01             	add    DWORD PTR [rdi],0x1
    d9eb:	49 83 78 20 ff       	cmp    QWORD PTR [r8+0x20],0xffffffffffffffff
    d9f0:	be 05 00 00 00       	mov    esi,0x5
    d9f5:	ba 01 00 00 00       	mov    edx,0x1
    d9fa:	b8 ca 00 00 00       	mov    eax,0xca
    d9ff:	74 17                	je     da18 <pthread_cond_signal@@GLIBC_2.3.2+0x58>
    da01:	49 8b 48 20          	mov    rcx,QWORD PTR [r8+0x20]
    da05:	44 8b 59 10          	mov    r11d,DWORD PTR [rcx+0x10]
    da09:	41 83 e3 30          	and    r11d,0x30
    da0d:	41 83 fb 20          	cmp    r11d,0x20
    da11:	74 1e                	je     da31 <pthread_cond_signal@@GLIBC_2.3.2+0x71>
    da13:	be 85 00 00 00       	mov    esi,0x85
    da18:	41 ba 01 00 00 00    	mov    r10d,0x1
    da1e:	41 b9 01 00 00 04    	mov    r9d,0x4000001
    da24:	0f 05                	syscall 
    da26:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
    da2c:	73 1f                	jae    da4d <pthread_cond_signal@@GLIBC_2.3.2+0x8d>
    da2e:	31 c0                	xor    eax,eax
    da30:	c3                   	ret    
    da31:	be 8c 00 00 00       	mov    esi,0x8c
    da36:	49 89 c8             	mov    r8,rcx
    da39:	4d 31 d2             	xor    r10,r10
    da3c:	44 8b 0f             	mov    r9d,DWORD PTR [rdi]
    da3f:	0f 05                	syscall 
    da41:	4c 8d 47 fc          	lea    r8,[rdi-0x4]
    da45:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
    da4b:	72 10                	jb     da5d <pthread_cond_signal@@GLIBC_2.3.2+0x9d>
    da4d:	81 e6 80 00 00 00    	and    esi,0x80
    da53:	83 ce 01             	or     esi,0x1
    da56:	b8 ca 00 00 00       	mov    eax,0xca
    da5b:	0f 05                	syscall 
    da5d:	f0 41 ff 08          	lock dec DWORD PTR [r8]
    da61:	75 1f                	jne    da82 <pthread_cond_signal@@GLIBC_2.3.2+0xc2>
    da63:	31 c0                	xor    eax,eax
    da65:	c3                   	ret    
    da66:	48 83 7f 20 ff       	cmp    QWORD PTR [rdi+0x20],0xffffffffffffffff
    da6b:	b8 00 00 00 00       	mov    eax,0x0
    da70:	be 80 00 00 00       	mov    esi,0x80
    da75:	0f 45 f0             	cmovne esi,eax
    da78:	e8 d3 27 00 00       	call   10250 <__lll_lock_wait>
    da7d:	e9 53 ff ff ff       	jmp    d9d5 <pthread_cond_signal@@GLIBC_2.3.2+0x15>
    da82:	4c 89 c7             	mov    rdi,r8
    da85:	48 83 7f 20 ff       	cmp    QWORD PTR [rdi+0x20],0xffffffffffffffff
    da8a:	b8 00 00 00 00       	mov    eax,0x0
    da8f:	be 80 00 00 00       	mov    esi,0x80
    da94:	0f 45 f0             	cmovne esi,eax
    da97:	e8 54 28 00 00       	call   102f0 <__lll_unlock_wake>
    da9c:	eb c5                	jmp    da63 <pthread_cond_signal@@GLIBC_2.3.2+0xa3>
    da9e:	66 90                	xchg   ax,ax

000000000000daa0 <pthread_cond_broadcast@@GLIBC_2.3.2>:
    daa0:	90                   	nop
    daa1:	be 01 00 00 00       	mov    esi,0x1
    daa6:	31 c0                	xor    eax,eax
    daa8:	f0 0f b1 37          	lock cmpxchg DWORD PTR [rdi],esi
    daac:	0f 85 a7 00 00 00    	jne    db59 <pthread_cond_broadcast@@GLIBC_2.3.2+0xb9>
    dab2:	48 83 c7 04          	add    rdi,0x4
    dab6:	4c 8b 4f 04          	mov    r9,QWORD PTR [rdi+0x4]
    daba:	4c 3b 4f 0c          	cmp    r9,QWORD PTR [rdi+0xc]
    dabe:	0f 86 8c 00 00 00    	jbe    db50 <pthread_cond_broadcast@@GLIBC_2.3.2+0xb0>
    dac4:	4c 89 4f 0c          	mov    QWORD PTR [rdi+0xc],r9
    dac8:	4c 89 4f 14          	mov    QWORD PTR [rdi+0x14],r9
    dacc:	4d 01 c9             	add    r9,r9
    dacf:	44 89 0f             	mov    DWORD PTR [rdi],r9d
    dad2:	ff 47 28             	inc    DWORD PTR [rdi+0x28]
    dad5:	4c 8b 47 1c          	mov    r8,QWORD PTR [rdi+0x1c]
    dad9:	f0 ff 4f fc          	lock dec DWORD PTR [rdi-0x4]
    dadd:	0f 85 af 00 00 00    	jne    db92 <pthread_cond_broadcast@@GLIBC_2.3.2+0xf2>
    dae3:	49 83 f8 ff          	cmp    r8,0xffffffffffffffff
    dae7:	0f 84 c8 00 00 00    	je     dbb5 <pthread_cond_broadcast@@GLIBC_2.3.2+0x115>
    daed:	41 f7 40 10 80 00 00 	test   DWORD PTR [r8+0x10],0x80
    daf4:	00 
    daf5:	0f 85 ba 00 00 00    	jne    dbb5 <pthread_cond_broadcast@@GLIBC_2.3.2+0x115>
    dafb:	41 8b 40 10          	mov    eax,DWORD PTR [r8+0x10]
    daff:	83 e0 30             	and    eax,0x30
    db02:	83 f8 20             	cmp    eax,0x20
    db05:	74 26                	je     db2d <pthread_cond_broadcast@@GLIBC_2.3.2+0x8d>
    db07:	be 84 00 00 00       	mov    esi,0x84
    db0c:	b8 ca 00 00 00       	mov    eax,0xca
    db11:	ba 01 00 00 00       	mov    edx,0x1
    db16:	41 ba ff ff ff 7f    	mov    r10d,0x7fffffff
    db1c:	0f 05                	syscall 
    db1e:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
    db24:	0f 83 8b 00 00 00    	jae    dbb5 <pthread_cond_broadcast@@GLIBC_2.3.2+0x115>
    db2a:	31 c0                	xor    eax,eax
    db2c:	c3                   	ret    
    db2d:	be 8c 00 00 00       	mov    esi,0x8c
    db32:	b8 ca 00 00 00       	mov    eax,0xca
    db37:	ba 01 00 00 00       	mov    edx,0x1
    db3c:	41 ba ff ff ff 7f    	mov    r10d,0x7fffffff
    db42:	0f 05                	syscall 
    db44:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
    db4a:	72 de                	jb     db2a <pthread_cond_broadcast@@GLIBC_2.3.2+0x8a>
    db4c:	eb 67                	jmp    dbb5 <pthread_cond_broadcast@@GLIBC_2.3.2+0x115>
    db4e:	66 90                	xchg   ax,ax
    db50:	f0 ff 4f fc          	lock dec DWORD PTR [rdi-0x4]
    db54:	75 1f                	jne    db75 <pthread_cond_broadcast@@GLIBC_2.3.2+0xd5>
    db56:	31 c0                	xor    eax,eax
    db58:	c3                   	ret    
    db59:	48 83 7f 20 ff       	cmp    QWORD PTR [rdi+0x20],0xffffffffffffffff
    db5e:	b8 00 00 00 00       	mov    eax,0x0
    db63:	be 80 00 00 00       	mov    esi,0x80
    db68:	0f 45 f0             	cmovne esi,eax
    db6b:	e8 e0 26 00 00       	call   10250 <__lll_lock_wait>
    db70:	e9 3d ff ff ff       	jmp    dab2 <pthread_cond_broadcast@@GLIBC_2.3.2+0x12>
    db75:	48 83 c7 fc          	add    rdi,0xfffffffffffffffc
    db79:	48 83 7f 20 ff       	cmp    QWORD PTR [rdi+0x20],0xffffffffffffffff
    db7e:	b8 00 00 00 00       	mov    eax,0x0
    db83:	be 80 00 00 00       	mov    esi,0x80
    db88:	0f 45 f0             	cmovne esi,eax
    db8b:	e8 60 27 00 00       	call   102f0 <__lll_unlock_wake>
    db90:	eb c4                	jmp    db56 <pthread_cond_broadcast@@GLIBC_2.3.2+0xb6>
    db92:	48 83 c7 fc          	add    rdi,0xfffffffffffffffc
    db96:	49 83 f8 ff          	cmp    r8,0xffffffffffffffff
    db9a:	b8 00 00 00 00       	mov    eax,0x0
    db9f:	be 80 00 00 00       	mov    esi,0x80
    dba4:	0f 45 f0             	cmovne esi,eax
    dba7:	e8 44 27 00 00       	call   102f0 <__lll_unlock_wake>
    dbac:	48 83 ef fc          	sub    rdi,0xfffffffffffffffc
    dbb0:	e9 2e ff ff ff       	jmp    dae3 <pthread_cond_broadcast@@GLIBC_2.3.2+0x43>
    dbb5:	49 83 f8 ff          	cmp    r8,0xffffffffffffffff
    dbb9:	ba ff ff ff 7f       	mov    edx,0x7fffffff
    dbbe:	b8 01 00 00 00       	mov    eax,0x1
    dbc3:	be 81 00 00 00       	mov    esi,0x81
    dbc8:	0f 44 f0             	cmove  esi,eax
    dbcb:	b8 ca 00 00 00       	mov    eax,0xca
    dbd0:	0f 05                	syscall 
    dbd2:	e9 53 ff ff ff       	jmp    db2a <pthread_cond_broadcast@@GLIBC_2.3.2+0x8a>
    dbd7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    dbde:	00 00 

000000000000dbe0 <pthread_cond_init@GLIBC_2.2.5>:
    dbe0:	48 85 f6             	test   rsi,rsi
    dbe3:	48 c7 07 00 00 00 00 	mov    QWORD PTR [rdi],0x0
    dbea:	74 14                	je     dc00 <pthread_cond_init@GLIBC_2.2.5+0x20>
    dbec:	8b 06                	mov    eax,DWORD PTR [rsi]
    dbee:	ba 16 00 00 00       	mov    edx,0x16
    dbf3:	85 c0                	test   eax,eax
    dbf5:	0f 45 c2             	cmovne eax,edx
    dbf8:	c3                   	ret    
    dbf9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    dc00:	31 c0                	xor    eax,eax
    dc02:	c3                   	ret    
    dc03:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    dc0a:	00 00 00 
    dc0d:	0f 1f 00             	nop    DWORD PTR [rax]

000000000000dc10 <pthread_cond_destroy@GLIBC_2.2.5>:
    dc10:	48 83 ec 08          	sub    rsp,0x8
    dc14:	48 8b 3f             	mov    rdi,QWORD PTR [rdi]
    dc17:	e8 a4 79 ff ff       	call   55c0 <free@plt>
    dc1c:	31 c0                	xor    eax,eax
    dc1e:	48 83 c4 08          	add    rsp,0x8
    dc22:	c3                   	ret    
    dc23:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    dc2a:	00 00 00 
    dc2d:	0f 1f 00             	nop    DWORD PTR [rax]

000000000000dc30 <pthread_cond_wait@GLIBC_2.2.5>:
    dc30:	41 54                	push   r12
    dc32:	55                   	push   rbp
    dc33:	49 89 f4             	mov    r12,rsi
    dc36:	53                   	push   rbx
    dc37:	48 8b 1f             	mov    rbx,QWORD PTR [rdi]
    dc3a:	48 85 db             	test   rbx,rbx
    dc3d:	74 11                	je     dc50 <pthread_cond_wait@GLIBC_2.2.5+0x20>
    dc3f:	4c 89 e6             	mov    rsi,r12
    dc42:	48 89 df             	mov    rdi,rbx
    dc45:	5b                   	pop    rbx
    dc46:	5d                   	pop    rbp
    dc47:	41 5c                	pop    r12
    dc49:	e9 52 f6 ff ff       	jmp    d2a0 <pthread_cond_wait@@GLIBC_2.3.2>
    dc4e:	66 90                	xchg   ax,ax
    dc50:	48 89 fd             	mov    rbp,rdi
    dc53:	be 01 00 00 00       	mov    esi,0x1
    dc58:	bf 30 00 00 00       	mov    edi,0x30
    dc5d:	e8 fe 7a ff ff       	call   5760 <calloc@plt>
    dc62:	48 85 c0             	test   rax,rax
    dc65:	48 89 c7             	mov    rdi,rax
    dc68:	74 16                	je     dc80 <pthread_cond_wait@GLIBC_2.2.5+0x50>
    dc6a:	48 89 d8             	mov    rax,rbx
    dc6d:	f0 48 0f b1 7d 00    	lock cmpxchg QWORD PTR [rbp+0x0],rdi
    dc73:	74 05                	je     dc7a <pthread_cond_wait@GLIBC_2.2.5+0x4a>
    dc75:	e8 46 79 ff ff       	call   55c0 <free@plt>
    dc7a:	48 8b 5d 00          	mov    rbx,QWORD PTR [rbp+0x0]
    dc7e:	eb bf                	jmp    dc3f <pthread_cond_wait@GLIBC_2.2.5+0xf>
    dc80:	5b                   	pop    rbx
    dc81:	b8 0c 00 00 00       	mov    eax,0xc
    dc86:	5d                   	pop    rbp
    dc87:	41 5c                	pop    r12
    dc89:	c3                   	ret    
    dc8a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

000000000000dc90 <pthread_cond_timedwait@GLIBC_2.2.5>:
    dc90:	41 54                	push   r12
    dc92:	55                   	push   rbp
    dc93:	49 89 f4             	mov    r12,rsi
    dc96:	53                   	push   rbx
    dc97:	48 83 ec 10          	sub    rsp,0x10
    dc9b:	48 8b 1f             	mov    rbx,QWORD PTR [rdi]
    dc9e:	48 85 db             	test   rbx,rbx
    dca1:	74 1d                	je     dcc0 <pthread_cond_timedwait@GLIBC_2.2.5+0x30>
    dca3:	48 83 c4 10          	add    rsp,0x10
    dca7:	4c 89 e6             	mov    rsi,r12
    dcaa:	48 89 df             	mov    rdi,rbx
    dcad:	5b                   	pop    rbx
    dcae:	5d                   	pop    rbp
    dcaf:	41 5c                	pop    r12
    dcb1:	e9 2a f9 ff ff       	jmp    d5e0 <pthread_cond_timedwait@@GLIBC_2.3.2>
    dcb6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    dcbd:	00 00 00 
    dcc0:	48 89 fd             	mov    rbp,rdi
    dcc3:	be 01 00 00 00       	mov    esi,0x1
    dcc8:	bf 30 00 00 00       	mov    edi,0x30
    dccd:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
    dcd2:	e8 89 7a ff ff       	call   5760 <calloc@plt>
    dcd7:	48 85 c0             	test   rax,rax
    dcda:	48 89 c7             	mov    rdi,rax
    dcdd:	74 29                	je     dd08 <pthread_cond_timedwait@GLIBC_2.2.5+0x78>
    dcdf:	48 89 d8             	mov    rax,rbx
    dce2:	f0 48 0f b1 7d 00    	lock cmpxchg QWORD PTR [rbp+0x0],rdi
    dce8:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
    dced:	74 27                	je     dd16 <pthread_cond_timedwait@GLIBC_2.2.5+0x86>
    dcef:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
    dcf4:	e8 c7 78 ff ff       	call   55c0 <free@plt>
    dcf9:	48 8b 5d 00          	mov    rbx,QWORD PTR [rbp+0x0]
    dcfd:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
    dd02:	eb 9f                	jmp    dca3 <pthread_cond_timedwait@GLIBC_2.2.5+0x13>
    dd04:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    dd08:	48 83 c4 10          	add    rsp,0x10
    dd0c:	b8 0c 00 00 00       	mov    eax,0xc
    dd11:	5b                   	pop    rbx
    dd12:	5d                   	pop    rbp
    dd13:	41 5c                	pop    r12
    dd15:	c3                   	ret    
    dd16:	48 8b 5d 00          	mov    rbx,QWORD PTR [rbp+0x0]
    dd1a:	eb 87                	jmp    dca3 <pthread_cond_timedwait@GLIBC_2.2.5+0x13>
    dd1c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

000000000000dd20 <pthread_cond_signal@GLIBC_2.2.5>:
    dd20:	55                   	push   rbp
    dd21:	53                   	push   rbx
    dd22:	48 83 ec 08          	sub    rsp,0x8
    dd26:	48 8b 1f             	mov    rbx,QWORD PTR [rdi]
    dd29:	48 85 db             	test   rbx,rbx
    dd2c:	74 12                	je     dd40 <pthread_cond_signal@GLIBC_2.2.5+0x20>
    dd2e:	48 83 c4 08          	add    rsp,0x8
    dd32:	48 89 df             	mov    rdi,rbx
    dd35:	5b                   	pop    rbx
    dd36:	5d                   	pop    rbp
    dd37:	e9 84 fc ff ff       	jmp    d9c0 <pthread_cond_signal@@GLIBC_2.3.2>
    dd3c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    dd40:	48 89 fd             	mov    rbp,rdi
    dd43:	be 01 00 00 00       	mov    esi,0x1
    dd48:	bf 30 00 00 00       	mov    edi,0x30
    dd4d:	e8 0e 7a ff ff       	call   5760 <calloc@plt>
    dd52:	48 85 c0             	test   rax,rax
    dd55:	48 89 c7             	mov    rdi,rax
    dd58:	74 16                	je     dd70 <pthread_cond_signal@GLIBC_2.2.5+0x50>
    dd5a:	48 89 d8             	mov    rax,rbx
    dd5d:	f0 48 0f b1 7d 00    	lock cmpxchg QWORD PTR [rbp+0x0],rdi
    dd63:	74 05                	je     dd6a <pthread_cond_signal@GLIBC_2.2.5+0x4a>
    dd65:	e8 56 78 ff ff       	call   55c0 <free@plt>
    dd6a:	48 8b 5d 00          	mov    rbx,QWORD PTR [rbp+0x0]
    dd6e:	eb be                	jmp    dd2e <pthread_cond_signal@GLIBC_2.2.5+0xe>
    dd70:	48 83 c4 08          	add    rsp,0x8
    dd74:	b8 0c 00 00 00       	mov    eax,0xc
    dd79:	5b                   	pop    rbx
    dd7a:	5d                   	pop    rbp
    dd7b:	c3                   	ret    
    dd7c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

000000000000dd80 <pthread_cond_broadcast@GLIBC_2.2.5>:
    dd80:	55                   	push   rbp
    dd81:	53                   	push   rbx
    dd82:	48 83 ec 08          	sub    rsp,0x8
    dd86:	48 8b 1f             	mov    rbx,QWORD PTR [rdi]
    dd89:	48 85 db             	test   rbx,rbx
    dd8c:	74 12                	je     dda0 <pthread_cond_broadcast@GLIBC_2.2.5+0x20>
    dd8e:	48 83 c4 08          	add    rsp,0x8
    dd92:	48 89 df             	mov    rdi,rbx
    dd95:	5b                   	pop    rbx
    dd96:	5d                   	pop    rbp
    dd97:	e9 04 fd ff ff       	jmp    daa0 <pthread_cond_broadcast@@GLIBC_2.3.2>
    dd9c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    dda0:	48 89 fd             	mov    rbp,rdi
    dda3:	be 01 00 00 00       	mov    esi,0x1
    dda8:	bf 30 00 00 00       	mov    edi,0x30
    ddad:	e8 ae 79 ff ff       	call   5760 <calloc@plt>
    ddb2:	48 85 c0             	test   rax,rax
    ddb5:	48 89 c7             	mov    rdi,rax
    ddb8:	74 16                	je     ddd0 <pthread_cond_broadcast@GLIBC_2.2.5+0x50>
    ddba:	48 89 d8             	mov    rax,rbx
    ddbd:	f0 48 0f b1 7d 00    	lock cmpxchg QWORD PTR [rbp+0x0],rdi
    ddc3:	74 05                	je     ddca <pthread_cond_broadcast@GLIBC_2.2.5+0x4a>
    ddc5:	e8 f6 77 ff ff       	call   55c0 <free@plt>
    ddca:	48 8b 5d 00          	mov    rbx,QWORD PTR [rbp+0x0]
    ddce:	eb be                	jmp    dd8e <pthread_cond_broadcast@GLIBC_2.2.5+0xe>
    ddd0:	48 83 c4 08          	add    rsp,0x8
    ddd4:	b8 0c 00 00 00       	mov    eax,0xc
    ddd9:	5b                   	pop    rbx
    ddda:	5d                   	pop    rbp
    dddb:	c3                   	ret    
    dddc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

000000000000dde0 <pthread_condattr_init>:
    dde0:	c7 07 00 00 00 00    	mov    DWORD PTR [rdi],0x0
    dde6:	31 c0                	xor    eax,eax
    dde8:	c3                   	ret    
    dde9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

000000000000ddf0 <pthread_condattr_destroy>:
    ddf0:	31 c0                	xor    eax,eax
    ddf2:	c3                   	ret    
    ddf3:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    ddfa:	00 00 00 
    ddfd:	0f 1f 00             	nop    DWORD PTR [rax]

000000000000de00 <pthread_condattr_getpshared>:
    de00:	8b 07                	mov    eax,DWORD PTR [rdi]
    de02:	83 e0 01             	and    eax,0x1
    de05:	89 06                	mov    DWORD PTR [rsi],eax
    de07:	31 c0                	xor    eax,eax
    de09:	c3                   	ret    
    de0a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

000000000000de10 <pthread_condattr_setpshared>:
    de10:	83 fe 01             	cmp    esi,0x1
    de13:	76 0b                	jbe    de20 <pthread_condattr_setpshared+0x10>
    de15:	b8 16 00 00 00       	mov    eax,0x16
    de1a:	c3                   	ret    
    de1b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    de20:	8b 07                	mov    eax,DWORD PTR [rdi]
    de22:	83 e0 fe             	and    eax,0xfffffffe
    de25:	09 c6                	or     esi,eax
    de27:	31 c0                	xor    eax,eax
    de29:	89 37                	mov    DWORD PTR [rdi],esi
    de2b:	c3                   	ret    
    de2c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

000000000000de30 <pthread_condattr_getclock>:
    de30:	8b 07                	mov    eax,DWORD PTR [rdi]
    de32:	d1 f8                	sar    eax,1
    de34:	83 e0 01             	and    eax,0x1
    de37:	89 06                	mov    DWORD PTR [rsi],eax
    de39:	31 c0                	xor    eax,eax
    de3b:	c3                   	ret    
    de3c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

000000000000de40 <pthread_condattr_setclock>:
    de40:	83 fe 01             	cmp    esi,0x1
    de43:	b8 16 00 00 00       	mov    eax,0x16
    de48:	76 06                	jbe    de50 <pthread_condattr_setclock+0x10>
    de4a:	f3 c3                	repz ret 
    de4c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    de50:	8b 07                	mov    eax,DWORD PTR [rdi]
    de52:	01 f6                	add    esi,esi
    de54:	83 e0 fd             	and    eax,0xfffffffd
    de57:	09 c6                	or     esi,eax
    de59:	31 c0                	xor    eax,eax
    de5b:	89 37                	mov    DWORD PTR [rdi],esi
    de5d:	c3                   	ret    
    de5e:	66 90                	xchg   ax,ax

000000000000de60 <pthread_spin_destroy>:
    de60:	31 c0                	xor    eax,eax
    de62:	c3                   	ret    
    de63:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    de6a:	00 00 00 
    de6d:	0f 1f 00             	nop    DWORD PTR [rax]

000000000000de70 <pthread_spin_lock>:
    de70:	f0 ff 0f             	lock dec DWORD PTR [rdi]
    de73:	75 0b                	jne    de80 <pthread_spin_lock+0x10>
    de75:	31 c0                	xor    eax,eax
    de77:	c3                   	ret    
    de78:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    de7f:	00 
    de80:	f3 90                	pause  
    de82:	83 3f 00             	cmp    DWORD PTR [rdi],0x0
    de85:	7f e9                	jg     de70 <pthread_spin_lock>
    de87:	eb f7                	jmp    de80 <pthread_spin_lock+0x10>
    de89:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

000000000000de90 <pthread_spin_trylock>:
    de90:	b8 01 00 00 00       	mov    eax,0x1
    de95:	31 c9                	xor    ecx,ecx
    de97:	f0 0f b1 0f          	lock cmpxchg DWORD PTR [rdi],ecx
    de9b:	b8 10 00 00 00       	mov    eax,0x10
    dea0:	0f 44 c1             	cmove  eax,ecx
    dea3:	c3                   	ret    
    dea4:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    deab:	00 00 00 
    deae:	66 90                	xchg   ax,ax

000000000000deb0 <pthread_spin_init>:
    deb0:	c7 07 01 00 00 00    	mov    DWORD PTR [rdi],0x1
    deb6:	31 c0                	xor    eax,eax
    deb8:	c3                   	ret    
    deb9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

000000000000dec0 <__pthread_barrier_init>:
    dec0:	8d 42 ff             	lea    eax,[rdx-0x1]
    dec3:	3d fd ff ff 7f       	cmp    eax,0x7ffffffd
    dec8:	77 56                	ja     df20 <__pthread_barrier_init+0x60>
    deca:	48 85 f6             	test   rsi,rsi
    decd:	74 31                	je     df00 <__pthread_barrier_init+0x40>
    decf:	8b 06                	mov    eax,DWORD PTR [rsi]
    ded1:	89 57 08             	mov    DWORD PTR [rdi+0x8],edx
    ded4:	ba 80 00 00 00       	mov    edx,0x80
    ded9:	c7 07 00 00 00 00    	mov    DWORD PTR [rdi],0x0
    dedf:	c7 47 10 00 00 00 00 	mov    DWORD PTR [rdi+0x10],0x0
    dee6:	c7 47 04 00 00 00 00 	mov    DWORD PTR [rdi+0x4],0x0
    deed:	85 c0                	test   eax,eax
    deef:	0f 45 c2             	cmovne eax,edx
    def2:	89 47 0c             	mov    DWORD PTR [rdi+0xc],eax
    def5:	31 c0                	xor    eax,eax
    def7:	c3                   	ret    
    def8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    deff:	00 
    df00:	31 c0                	xor    eax,eax
    df02:	c7 07 00 00 00 00    	mov    DWORD PTR [rdi],0x0
    df08:	c7 47 10 00 00 00 00 	mov    DWORD PTR [rdi+0x10],0x0
    df0f:	89 47 0c             	mov    DWORD PTR [rdi+0xc],eax
    df12:	89 57 08             	mov    DWORD PTR [rdi+0x8],edx
    df15:	31 c0                	xor    eax,eax
    df17:	c7 47 04 00 00 00 00 	mov    DWORD PTR [rdi+0x4],0x0
    df1e:	c3                   	ret    
    df1f:	90                   	nop
    df20:	b8 16 00 00 00       	mov    eax,0x16
    df25:	c3                   	ret    
    df26:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    df2d:	00 00 00 

000000000000df30 <pthread_barrier_destroy>:
    df30:	b9 ff ff ff 7f       	mov    ecx,0x7fffffff
    df35:	31 d2                	xor    edx,edx
    df37:	89 c8                	mov    eax,ecx
    df39:	f7 77 08             	div    DWORD PTR [rdi+0x8]
    df3c:	29 d1                	sub    ecx,edx
    df3e:	8b 17                	mov    edx,DWORD PTR [rdi]
    df40:	29 d1                	sub    ecx,edx
    df42:	f0 0f c1 4f 10       	lock xadd DWORD PTR [rdi+0x10],ecx
    df47:	39 ca                	cmp    edx,ecx
    df49:	76 69                	jbe    dfb4 <pthread_barrier_destroy+0x84>
    df4b:	85 d2                	test   edx,edx
    df4d:	74 65                	je     dfb4 <pthread_barrier_destroy+0x84>
    df4f:	53                   	push   rbx
    df50:	49 89 f8             	mov    r8,rdi
    df53:	41 b9 ca 00 00 00    	mov    r9d,0xca
    df59:	bb 01 00 00 00       	mov    ebx,0x1
    df5e:	eb 07                	jmp    df67 <pthread_barrier_destroy+0x37>
    df60:	41 8b 10             	mov    edx,DWORD PTR [r8]
    df63:	85 d2                	test   edx,edx
    df65:	74 49                	je     dfb0 <pthread_barrier_destroy+0x80>
    df67:	41 8b 70 0c          	mov    esi,DWORD PTR [r8+0xc]
    df6b:	45 31 d2             	xor    r10d,r10d
    df6e:	4c 89 c7             	mov    rdi,r8
    df71:	44 89 c8             	mov    eax,r9d
    df74:	40 80 f6 80          	xor    sil,0x80
    df78:	48 63 f6             	movsxd rsi,esi
    df7b:	0f 05                	syscall 
    df7d:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    df83:	76 db                	jbe    df60 <pthread_barrier_destroy+0x30>
    df85:	8d 48 0b             	lea    ecx,[rax+0xb]
    df88:	83 f9 0b             	cmp    ecx,0xb
    df8b:	77 0d                	ja     df9a <pthread_barrier_destroy+0x6a>
    df8d:	48 89 d8             	mov    rax,rbx
    df90:	48 d3 e0             	shl    rax,cl
    df93:	a9 81 08 00 00       	test   eax,0x881
    df98:	75 c6                	jne    df60 <pthread_barrier_destroy+0x30>
    df9a:	48 8d 3d 3f 4b 00 00 	lea    rdi,[rip+0x4b3f]        # 12ae0 <_fini+0xc>
    dfa1:	e8 8a 76 ff ff       	call   5630 <__libc_fatal@plt>
    dfa6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    dfad:	00 00 00 
    dfb0:	31 c0                	xor    eax,eax
    dfb2:	5b                   	pop    rbx
    dfb3:	c3                   	ret    
    dfb4:	31 c0                	xor    eax,eax
    dfb6:	c3                   	ret    
    dfb7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    dfbe:	00 00 

000000000000dfc0 <__pthread_barrier_wait>:
    dfc0:	41 56                	push   r14
    dfc2:	41 55                	push   r13
    dfc4:	49 89 f9             	mov    r9,rdi
    dfc7:	41 54                	push   r12
    dfc9:	55                   	push   rbp
    dfca:	41 bd ff ff ff 7f    	mov    r13d,0x7fffffff
    dfd0:	53                   	push   rbx
    dfd1:	bd ca 00 00 00       	mov    ebp,0xca
    dfd6:	41 bc 01 00 00 00    	mov    r12d,0x1
    dfdc:	48 83 ec 10          	sub    rsp,0x10
    dfe0:	41 b8 01 00 00 00    	mov    r8d,0x1
    dfe6:	f0 45 0f c1 01       	lock xadd DWORD PTR [r9],r8d
    dfeb:	45 8b 71 08          	mov    r14d,DWORD PTR [r9+0x8]
    dfef:	31 d2                	xor    edx,edx
    dff1:	44 89 e8             	mov    eax,r13d
    dff4:	44 89 eb             	mov    ebx,r13d
    dff7:	41 83 c0 01          	add    r8d,0x1
    dffb:	41 f7 f6             	div    r14d
    dffe:	29 d3                	sub    ebx,edx
    e000:	41 39 d8             	cmp    r8d,ebx
    e003:	77 13                	ja     e018 <__pthread_barrier_wait+0x58>
    e005:	eb 52                	jmp    e059 <__pthread_barrier_wait+0x99>
    e007:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    e00e:	00 00 
    e010:	45 8b 01             	mov    r8d,DWORD PTR [r9]
    e013:	44 39 c3             	cmp    ebx,r8d
    e016:	73 c8                	jae    dfe0 <__pthread_barrier_wait+0x20>
    e018:	41 8b 71 0c          	mov    esi,DWORD PTR [r9+0xc]
    e01c:	45 31 d2             	xor    r10d,r10d
    e01f:	44 89 c2             	mov    edx,r8d
    e022:	4c 89 cf             	mov    rdi,r9
    e025:	89 e8                	mov    eax,ebp
    e027:	40 80 f6 80          	xor    sil,0x80
    e02b:	48 63 f6             	movsxd rsi,esi
    e02e:	0f 05                	syscall 
    e030:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    e036:	76 d8                	jbe    e010 <__pthread_barrier_wait+0x50>
    e038:	8d 48 0b             	lea    ecx,[rax+0xb]
    e03b:	83 f9 0b             	cmp    ecx,0xb
    e03e:	77 0d                	ja     e04d <__pthread_barrier_wait+0x8d>
    e040:	4c 89 e0             	mov    rax,r12
    e043:	48 d3 e0             	shl    rax,cl
    e046:	a9 81 08 00 00       	test   eax,0x881
    e04b:	75 c3                	jne    e010 <__pthread_barrier_wait+0x50>
    e04d:	48 8d 3d 8c 4a 00 00 	lea    rdi,[rip+0x4a8c]        # 12ae0 <_fini+0xc>
    e054:	e8 d7 75 ff ff       	call   5630 <__libc_fatal@plt>
    e059:	41 8b 41 04          	mov    eax,DWORD PTR [r9+0x4]
    e05d:	49 8d 69 04          	lea    rbp,[r9+0x4]
    e061:	41 8d 14 06          	lea    edx,[r14+rax*1]
    e065:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
    e069:	41 39 d0             	cmp    r8d,edx
    e06c:	0f 82 a7 00 00 00    	jb     e119 <__pthread_barrier_wait+0x159>
    e072:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    e078:	44 89 c0             	mov    eax,r8d
    e07b:	31 d2                	xor    edx,edx
    e07d:	41 f7 f6             	div    r14d
    e080:	44 89 c0             	mov    eax,r8d
    e083:	29 d0                	sub    eax,edx
    e085:	89 c2                	mov    edx,eax
    e087:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
    e08b:	f0 0f b1 55 00       	lock cmpxchg DWORD PTR [rbp+0x0],edx
    e090:	75 76                	jne    e108 <__pthread_barrier_wait+0x148>
    e092:	41 8b 71 0c          	mov    esi,DWORD PTR [r9+0xc]
    e096:	89 54 24 0c          	mov    DWORD PTR [rsp+0xc],edx
    e09a:	45 31 d2             	xor    r10d,r10d
    e09d:	ba ff ff ff 7f       	mov    edx,0x7fffffff
    e0a2:	48 89 ef             	mov    rdi,rbp
    e0a5:	b8 ca 00 00 00       	mov    eax,0xca
    e0aa:	40 80 f6 81          	xor    sil,0x81
    e0ae:	48 63 f6             	movsxd rsi,esi
    e0b1:	0f 05                	syscall 
    e0b3:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    e0b9:	76 0a                	jbe    e0c5 <__pthread_barrier_wait+0x105>
    e0bb:	83 f8 ea             	cmp    eax,0xffffffea
    e0be:	74 05                	je     e0c5 <__pthread_barrier_wait+0x105>
    e0c0:	83 f8 f2             	cmp    eax,0xfffffff2
    e0c3:	75 88                	jne    e04d <__pthread_barrier_wait+0x8d>
    e0c5:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
    e0c9:	41 39 c0             	cmp    r8d,eax
    e0cc:	77 50                	ja     e11e <__pthread_barrier_wait+0x15e>
    e0ce:	49 8d 51 10          	lea    rdx,[r9+0x10]
    e0d2:	b8 01 00 00 00       	mov    eax,0x1
    e0d7:	f0 0f c1 02          	lock xadd DWORD PTR [rdx],eax
    e0db:	83 c0 01             	add    eax,0x1
    e0de:	39 c3                	cmp    ebx,eax
    e0e0:	0f 84 9a 00 00 00    	je     e180 <__pthread_barrier_wait+0x1c0>
    e0e6:	31 d2                	xor    edx,edx
    e0e8:	44 89 c0             	mov    eax,r8d
    e0eb:	41 f7 f6             	div    r14d
    e0ee:	31 c0                	xor    eax,eax
    e0f0:	85 d2                	test   edx,edx
    e0f2:	0f 94 c0             	sete   al
    e0f5:	48 83 c4 10          	add    rsp,0x10
    e0f9:	5b                   	pop    rbx
    e0fa:	f7 d8                	neg    eax
    e0fc:	5d                   	pop    rbp
    e0fd:	41 5c                	pop    r12
    e0ff:	41 5d                	pop    r13
    e101:	41 5e                	pop    r14
    e103:	c3                   	ret    
    e104:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    e108:	41 8d 14 06          	lea    edx,[r14+rax*1]
    e10c:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
    e110:	41 39 d0             	cmp    r8d,edx
    e113:	0f 83 5f ff ff ff    	jae    e078 <__pthread_barrier_wait+0xb8>
    e119:	41 39 c0             	cmp    r8d,eax
    e11c:	76 b0                	jbe    e0ce <__pthread_barrier_wait+0x10e>
    e11e:	41 bc ca 00 00 00    	mov    r12d,0xca
    e124:	41 bd 01 00 00 00    	mov    r13d,0x1
    e12a:	eb 10                	jmp    e13c <__pthread_barrier_wait+0x17c>
    e12c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    e130:	8b 45 00             	mov    eax,DWORD PTR [rbp+0x0]
    e133:	41 39 c0             	cmp    r8d,eax
    e136:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
    e13a:	76 92                	jbe    e0ce <__pthread_barrier_wait+0x10e>
    e13c:	41 8b 71 0c          	mov    esi,DWORD PTR [r9+0xc]
    e140:	89 c2                	mov    edx,eax
    e142:	45 31 d2             	xor    r10d,r10d
    e145:	48 89 ef             	mov    rdi,rbp
    e148:	44 89 e0             	mov    eax,r12d
    e14b:	40 80 f6 80          	xor    sil,0x80
    e14f:	48 63 f6             	movsxd rsi,esi
    e152:	0f 05                	syscall 
    e154:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    e15a:	76 d4                	jbe    e130 <__pthread_barrier_wait+0x170>
    e15c:	8d 48 0b             	lea    ecx,[rax+0xb]
    e15f:	83 f9 0b             	cmp    ecx,0xb
    e162:	0f 87 e5 fe ff ff    	ja     e04d <__pthread_barrier_wait+0x8d>
    e168:	4c 89 e8             	mov    rax,r13
    e16b:	48 d3 e0             	shl    rax,cl
    e16e:	a9 81 08 00 00       	test   eax,0x881
    e173:	75 bb                	jne    e130 <__pthread_barrier_wait+0x170>
    e175:	e9 d3 fe ff ff       	jmp    e04d <__pthread_barrier_wait+0x8d>
    e17a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    e180:	41 c7 41 04 00 00 00 	mov    DWORD PTR [r9+0x4],0x0
    e187:	00 
    e188:	41 c7 41 10 00 00 00 	mov    DWORD PTR [r9+0x10],0x0
    e18f:	00 
    e190:	41 8b 71 0c          	mov    esi,DWORD PTR [r9+0xc]
    e194:	45 31 d2             	xor    r10d,r10d
    e197:	ba ff ff ff 7f       	mov    edx,0x7fffffff
    e19c:	41 c7 01 00 00 00 00 	mov    DWORD PTR [r9],0x0
    e1a3:	4c 89 cf             	mov    rdi,r9
    e1a6:	b8 ca 00 00 00       	mov    eax,0xca
    e1ab:	40 80 f6 81          	xor    sil,0x81
    e1af:	48 63 f6             	movsxd rsi,esi
    e1b2:	0f 05                	syscall 
    e1b4:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    e1ba:	0f 86 26 ff ff ff    	jbe    e0e6 <__pthread_barrier_wait+0x126>
    e1c0:	83 f8 ea             	cmp    eax,0xffffffea
    e1c3:	0f 84 1d ff ff ff    	je     e0e6 <__pthread_barrier_wait+0x126>
    e1c9:	83 f8 f2             	cmp    eax,0xfffffff2
    e1cc:	0f 84 14 ff ff ff    	je     e0e6 <__pthread_barrier_wait+0x126>
    e1d2:	e9 76 fe ff ff       	jmp    e04d <__pthread_barrier_wait+0x8d>
    e1d7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    e1de:	00 00 

000000000000e1e0 <pthread_barrierattr_init>:
    e1e0:	c7 07 00 00 00 00    	mov    DWORD PTR [rdi],0x0
    e1e6:	31 c0                	xor    eax,eax
    e1e8:	c3                   	ret    
    e1e9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

000000000000e1f0 <pthread_barrierattr_destroy>:
    e1f0:	31 c0                	xor    eax,eax
    e1f2:	c3                   	ret    
    e1f3:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    e1fa:	00 00 00 
    e1fd:	0f 1f 00             	nop    DWORD PTR [rax]

000000000000e200 <pthread_barrierattr_getpshared>:
    e200:	8b 07                	mov    eax,DWORD PTR [rdi]
    e202:	89 06                	mov    DWORD PTR [rsi],eax
    e204:	31 c0                	xor    eax,eax
    e206:	c3                   	ret    
    e207:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    e20e:	00 00 

000000000000e210 <pthread_barrierattr_setpshared>:
    e210:	83 fe 01             	cmp    esi,0x1
    e213:	76 0b                	jbe    e220 <pthread_barrierattr_setpshared+0x10>
    e215:	b8 16 00 00 00       	mov    eax,0x16
    e21a:	c3                   	ret    
    e21b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    e220:	89 37                	mov    DWORD PTR [rdi],esi
    e222:	31 c0                	xor    eax,eax
    e224:	c3                   	ret    
    e225:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    e22c:	00 00 00 
    e22f:	90                   	nop

000000000000e230 <__pthread_key_create>:
    e230:	4c 8d 0d 89 a0 20 00 	lea    r9,[rip+0x20a089]        # 2182c0 <__GI___pthread_keys>
    e237:	31 c9                	xor    ecx,ecx
    e239:	4c 89 ca             	mov    rdx,r9
    e23c:	eb 13                	jmp    e251 <__pthread_key_create+0x21>
    e23e:	66 90                	xchg   ax,ax
    e240:	48 83 c1 01          	add    rcx,0x1
    e244:	48 83 c2 10          	add    rdx,0x10
    e248:	48 81 f9 00 04 00 00 	cmp    rcx,0x400
    e24f:	74 2f                	je     e280 <__pthread_key_create+0x50>
    e251:	48 8b 02             	mov    rax,QWORD PTR [rdx]
    e254:	a8 01                	test   al,0x1
    e256:	75 e8                	jne    e240 <__pthread_key_create+0x10>
    e258:	4c 8d 40 02          	lea    r8,[rax+0x2]
    e25c:	4c 39 c0             	cmp    rax,r8
    e25f:	73 df                	jae    e240 <__pthread_key_create+0x10>
    e261:	4c 8d 40 01          	lea    r8,[rax+0x1]
    e265:	f0 4c 0f b1 02       	lock cmpxchg QWORD PTR [rdx],r8
    e26a:	75 d4                	jne    e240 <__pthread_key_create+0x10>
    e26c:	48 89 c8             	mov    rax,rcx
    e26f:	48 c1 e0 04          	shl    rax,0x4
    e273:	49 89 74 01 08       	mov    QWORD PTR [r9+rax*1+0x8],rsi
    e278:	89 0f                	mov    DWORD PTR [rdi],ecx
    e27a:	31 c0                	xor    eax,eax
    e27c:	c3                   	ret    
    e27d:	0f 1f 00             	nop    DWORD PTR [rax]
    e280:	b8 0b 00 00 00       	mov    eax,0xb
    e285:	c3                   	ret    
    e286:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    e28d:	00 00 00 

000000000000e290 <pthread_key_delete>:
    e290:	81 ff ff 03 00 00    	cmp    edi,0x3ff
    e296:	77 23                	ja     e2bb <pthread_key_delete+0x2b>
    e298:	48 8d 15 21 a0 20 00 	lea    rdx,[rip+0x20a021]        # 2182c0 <__GI___pthread_keys>
    e29f:	89 ff                	mov    edi,edi
    e2a1:	48 c1 e7 04          	shl    rdi,0x4
    e2a5:	48 8b 0c 3a          	mov    rcx,QWORD PTR [rdx+rdi*1]
    e2a9:	f6 c1 01             	test   cl,0x1
    e2ac:	74 0d                	je     e2bb <pthread_key_delete+0x2b>
    e2ae:	89 c8                	mov    eax,ecx
    e2b0:	83 c1 01             	add    ecx,0x1
    e2b3:	f0 48 0f b1 0c 3a    	lock cmpxchg QWORD PTR [rdx+rdi*1],rcx
    e2b9:	74 06                	je     e2c1 <pthread_key_delete+0x31>
    e2bb:	b8 16 00 00 00       	mov    eax,0x16
    e2c0:	c3                   	ret    
    e2c1:	31 c0                	xor    eax,eax
    e2c3:	c3                   	ret    
    e2c4:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    e2cb:	00 00 00 
    e2ce:	66 90                	xchg   ax,ax

000000000000e2d0 <__pthread_getspecific>:
    e2d0:	83 ff 1f             	cmp    edi,0x1f
    e2d3:	77 53                	ja     e328 <__pthread_getspecific+0x58>
    e2d5:	89 f8                	mov    eax,edi
    e2d7:	48 83 c0 30          	add    rax,0x30
    e2db:	48 c1 e0 04          	shl    rax,0x4
    e2df:	64 48 8b 14 25 10 00 	mov    rdx,QWORD PTR fs:0x10
    e2e6:	00 00 
    e2e8:	48 8d 54 02 10       	lea    rdx,[rdx+rax*1+0x10]
    e2ed:	48 8b 42 08          	mov    rax,QWORD PTR [rdx+0x8]
    e2f1:	48 85 c0             	test   rax,rax
    e2f4:	74 2a                	je     e320 <__pthread_getspecific+0x50>
    e2f6:	89 ff                	mov    edi,edi
    e2f8:	48 8d 0d c1 9f 20 00 	lea    rcx,[rip+0x209fc1]        # 2182c0 <__GI___pthread_keys>
    e2ff:	48 c1 e7 04          	shl    rdi,0x4
    e303:	48 8b 34 39          	mov    rsi,QWORD PTR [rcx+rdi*1]
    e307:	48 39 32             	cmp    QWORD PTR [rdx],rsi
    e30a:	75 04                	jne    e310 <__pthread_getspecific+0x40>
    e30c:	f3 c3                	repz ret 
    e30e:	66 90                	xchg   ax,ax
    e310:	48 c7 42 08 00 00 00 	mov    QWORD PTR [rdx+0x8],0x0
    e317:	00 
    e318:	31 c0                	xor    eax,eax
    e31a:	c3                   	ret    
    e31b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    e320:	31 c0                	xor    eax,eax
    e322:	c3                   	ret    
    e323:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    e328:	81 ff ff 03 00 00    	cmp    edi,0x3ff
    e32e:	77 f0                	ja     e320 <__pthread_getspecific+0x50>
    e330:	89 f8                	mov    eax,edi
    e332:	89 fa                	mov    edx,edi
    e334:	83 e0 1f             	and    eax,0x1f
    e337:	c1 ea 05             	shr    edx,0x5
    e33a:	64 48 8b 14 d5 10 05 	mov    rdx,QWORD PTR fs:[rdx*8+0x510]
    e341:	00 00 
    e343:	48 85 d2             	test   rdx,rdx
    e346:	74 d8                	je     e320 <__pthread_getspecific+0x50>
    e348:	48 c1 e0 04          	shl    rax,0x4
    e34c:	48 01 c2             	add    rdx,rax
    e34f:	eb 9c                	jmp    e2ed <__pthread_getspecific+0x1d>
    e351:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    e358:	00 00 00 
    e35b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

000000000000e360 <__pthread_setspecific>:
    e360:	41 55                	push   r13
    e362:	41 54                	push   r12
    e364:	55                   	push   rbp
    e365:	53                   	push   rbx
    e366:	48 89 f5             	mov    rbp,rsi
    e369:	64 48 8b 0c 25 10 00 	mov    rcx,QWORD PTR fs:0x10
    e370:	00 00 
    e372:	48 83 ec 08          	sub    rsp,0x8
    e376:	83 ff 1f             	cmp    edi,0x1f
    e379:	77 6d                	ja     e3e8 <__pthread_setspecific+0x88>
    e37b:	89 ff                	mov    edi,edi
    e37d:	48 8d 15 3c 9f 20 00 	lea    rdx,[rip+0x209f3c]        # 2182c0 <__GI___pthread_keys>
    e384:	48 89 f8             	mov    rax,rdi
    e387:	48 c1 e0 04          	shl    rax,0x4
    e38b:	48 8b 14 02          	mov    rdx,QWORD PTR [rdx+rax*1]
    e38f:	b8 16 00 00 00       	mov    eax,0x16
    e394:	41 89 d4             	mov    r12d,edx
    e397:	83 e2 01             	and    edx,0x1
    e39a:	75 14                	jne    e3b0 <__pthread_setspecific+0x50>
    e39c:	48 83 c4 08          	add    rsp,0x8
    e3a0:	5b                   	pop    rbx
    e3a1:	5d                   	pop    rbp
    e3a2:	41 5c                	pop    r12
    e3a4:	41 5d                	pop    r13
    e3a6:	c3                   	ret    
    e3a7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    e3ae:	00 00 
    e3b0:	48 83 c7 30          	add    rdi,0x30
    e3b4:	48 c1 e7 04          	shl    rdi,0x4
    e3b8:	48 85 f6             	test   rsi,rsi
    e3bb:	48 8d 44 39 10       	lea    rax,[rcx+rdi*1+0x10]
    e3c0:	74 09                	je     e3cb <__pthread_setspecific+0x6b>
    e3c2:	64 c6 04 25 10 06 00 	mov    BYTE PTR fs:0x610,0x1
    e3c9:	00 01 
    e3cb:	44 89 e3             	mov    ebx,r12d
    e3ce:	48 89 68 08          	mov    QWORD PTR [rax+0x8],rbp
    e3d2:	48 89 18             	mov    QWORD PTR [rax],rbx
    e3d5:	48 83 c4 08          	add    rsp,0x8
    e3d9:	31 c0                	xor    eax,eax
    e3db:	5b                   	pop    rbx
    e3dc:	5d                   	pop    rbp
    e3dd:	41 5c                	pop    r12
    e3df:	41 5d                	pop    r13
    e3e1:	c3                   	ret    
    e3e2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    e3e8:	81 ff ff 03 00 00    	cmp    edi,0x3ff
    e3ee:	b8 16 00 00 00       	mov    eax,0x16
    e3f3:	77 a7                	ja     e39c <__pthread_setspecific+0x3c>
    e3f5:	89 fa                	mov    edx,edi
    e3f7:	48 8d 0d c2 9e 20 00 	lea    rcx,[rip+0x209ec2]        # 2182c0 <__GI___pthread_keys>
    e3fe:	48 c1 e2 04          	shl    rdx,0x4
    e402:	48 8b 14 11          	mov    rdx,QWORD PTR [rcx+rdx*1]
    e406:	41 89 d4             	mov    r12d,edx
    e409:	83 e2 01             	and    edx,0x1
    e40c:	74 8e                	je     e39c <__pthread_setspecific+0x3c>
    e40e:	41 89 fd             	mov    r13d,edi
    e411:	89 fb                	mov    ebx,edi
    e413:	41 c1 ed 05          	shr    r13d,0x5
    e417:	83 e3 1f             	and    ebx,0x1f
    e41a:	64 4a 8b 04 ed 10 05 	mov    rax,QWORD PTR fs:[r13*8+0x510]
    e421:	00 00 
    e423:	48 85 c0             	test   rax,rax
    e426:	48 89 c2             	mov    rdx,rax
    e429:	74 0c                	je     e437 <__pthread_setspecific+0xd7>
    e42b:	89 df                	mov    edi,ebx
    e42d:	48 c1 e7 04          	shl    rdi,0x4
    e431:	48 8d 04 3a          	lea    rax,[rdx+rdi*1]
    e435:	eb 8b                	jmp    e3c2 <__pthread_setspecific+0x62>
    e437:	31 c0                	xor    eax,eax
    e439:	48 85 f6             	test   rsi,rsi
    e43c:	0f 84 5a ff ff ff    	je     e39c <__pthread_setspecific+0x3c>
    e442:	be 10 00 00 00       	mov    esi,0x10
    e447:	bf 20 00 00 00       	mov    edi,0x20
    e44c:	e8 0f 73 ff ff       	call   5760 <calloc@plt>
    e451:	48 89 c2             	mov    rdx,rax
    e454:	b8 0c 00 00 00       	mov    eax,0xc
    e459:	48 85 d2             	test   rdx,rdx
    e45c:	0f 84 3a ff ff ff    	je     e39c <__pthread_setspecific+0x3c>
    e462:	64 4a 89 14 ed 10 05 	mov    QWORD PTR fs:[r13*8+0x510],rdx
    e469:	00 00 
    e46b:	eb be                	jmp    e42b <__pthread_setspecific+0xcb>
    e46d:	0f 1f 00             	nop    DWORD PTR [rax]

000000000000e470 <pthread_sigmask>:
    e470:	48 83 ec 10          	sub    rsp,0x10
    e474:	48 85 f6             	test   rsi,rsi
    e477:	0f 84 e3 00 00 00    	je     e560 <pthread_sigmask+0xf0>
    e47d:	48 8b 06             	mov    rax,QWORD PTR [rsi]
    e480:	48 b9 00 00 00 80 01 	movabs rcx,0x180000000
    e487:	00 00 00 
    e48a:	48 85 c8             	test   rax,rcx
    e48d:	75 29                	jne    e4b8 <pthread_sigmask+0x48>
    e48f:	41 ba 08 00 00 00    	mov    r10d,0x8
    e495:	48 63 ff             	movsxd rdi,edi
    e498:	b8 0e 00 00 00       	mov    eax,0xe
    e49d:	0f 05                	syscall 
    e49f:	89 c2                	mov    edx,eax
    e4a1:	f7 da                	neg    edx
    e4a3:	3d 00 f0 ff ff       	cmp    eax,0xfffff000
    e4a8:	b8 00 00 00 00       	mov    eax,0x0
    e4ad:	0f 47 c2             	cmova  eax,edx
    e4b0:	48 83 c4 10          	add    rsp,0x10
    e4b4:	c3                   	ret    
    e4b5:	0f 1f 00             	nop    DWORD PTR [rax]
    e4b8:	48 8b 4e 08          	mov    rcx,QWORD PTR [rsi+0x8]
    e4bc:	48 89 4c 24 90       	mov    QWORD PTR [rsp-0x70],rcx
    e4c1:	48 8b 4e 10          	mov    rcx,QWORD PTR [rsi+0x10]
    e4c5:	48 89 4c 24 98       	mov    QWORD PTR [rsp-0x68],rcx
    e4ca:	48 8b 4e 18          	mov    rcx,QWORD PTR [rsi+0x18]
    e4ce:	48 89 4c 24 a0       	mov    QWORD PTR [rsp-0x60],rcx
    e4d3:	48 8b 4e 20          	mov    rcx,QWORD PTR [rsi+0x20]
    e4d7:	48 89 4c 24 a8       	mov    QWORD PTR [rsp-0x58],rcx
    e4dc:	48 8b 4e 28          	mov    rcx,QWORD PTR [rsi+0x28]
    e4e0:	48 89 4c 24 b0       	mov    QWORD PTR [rsp-0x50],rcx
    e4e5:	48 8b 4e 30          	mov    rcx,QWORD PTR [rsi+0x30]
    e4e9:	48 89 4c 24 b8       	mov    QWORD PTR [rsp-0x48],rcx
    e4ee:	48 8b 4e 38          	mov    rcx,QWORD PTR [rsi+0x38]
    e4f2:	48 89 4c 24 c0       	mov    QWORD PTR [rsp-0x40],rcx
    e4f7:	48 8b 4e 40          	mov    rcx,QWORD PTR [rsi+0x40]
    e4fb:	48 89 4c 24 c8       	mov    QWORD PTR [rsp-0x38],rcx
    e500:	48 8b 4e 48          	mov    rcx,QWORD PTR [rsi+0x48]
    e504:	48 89 4c 24 d0       	mov    QWORD PTR [rsp-0x30],rcx
    e509:	48 8b 4e 50          	mov    rcx,QWORD PTR [rsi+0x50]
    e50d:	48 89 4c 24 d8       	mov    QWORD PTR [rsp-0x28],rcx
    e512:	48 8b 4e 58          	mov    rcx,QWORD PTR [rsi+0x58]
    e516:	48 89 4c 24 e0       	mov    QWORD PTR [rsp-0x20],rcx
    e51b:	48 8b 4e 60          	mov    rcx,QWORD PTR [rsi+0x60]
    e51f:	48 89 4c 24 e8       	mov    QWORD PTR [rsp-0x18],rcx
    e524:	48 8b 4e 68          	mov    rcx,QWORD PTR [rsi+0x68]
    e528:	48 89 4c 24 f0       	mov    QWORD PTR [rsp-0x10],rcx
    e52d:	48 8b 4e 70          	mov    rcx,QWORD PTR [rsi+0x70]
    e531:	48 89 4c 24 f8       	mov    QWORD PTR [rsp-0x8],rcx
    e536:	48 8b 4e 78          	mov    rcx,QWORD PTR [rsi+0x78]
    e53a:	48 8d 74 24 88       	lea    rsi,[rsp-0x78]
    e53f:	48 89 0c 24          	mov    QWORD PTR [rsp],rcx
    e543:	48 b9 ff ff ff 7f fe 	movabs rcx,0xfffffffe7fffffff
    e54a:	ff ff ff 
    e54d:	48 21 c8             	and    rax,rcx
    e550:	48 89 44 24 88       	mov    QWORD PTR [rsp-0x78],rax
    e555:	e9 35 ff ff ff       	jmp    e48f <pthread_sigmask+0x1f>
    e55a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    e560:	31 f6                	xor    esi,esi
    e562:	e9 28 ff ff ff       	jmp    e48f <pthread_sigmask+0x1f>
    e567:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    e56e:	00 00 

000000000000e570 <pthread_kill>:
    e570:	8b 8f d0 02 00 00    	mov    ecx,DWORD PTR [rdi+0x2d0]
    e576:	85 c9                	test   ecx,ecx
    e578:	7e 3e                	jle    e5b8 <pthread_kill+0x48>
    e57a:	8d 56 e0             	lea    edx,[rsi-0x20]
    e57d:	b8 16 00 00 00       	mov    eax,0x16
    e582:	83 fa 01             	cmp    edx,0x1
    e585:	76 36                	jbe    e5bd <pthread_kill+0x4d>
    e587:	64 8b 3c 25 d4 02 00 	mov    edi,DWORD PTR fs:0x2d4
    e58e:	00 
    e58f:	b8 ea 00 00 00       	mov    eax,0xea
    e594:	48 63 d6             	movsxd rdx,esi
    e597:	48 63 ff             	movsxd rdi,edi
    e59a:	48 63 f1             	movsxd rsi,ecx
    e59d:	0f 05                	syscall 
    e59f:	89 c2                	mov    edx,eax
    e5a1:	f7 da                	neg    edx
    e5a3:	3d 00 f0 ff ff       	cmp    eax,0xfffff000
    e5a8:	b8 00 00 00 00       	mov    eax,0x0
    e5ad:	0f 47 c2             	cmova  eax,edx
    e5b0:	c3                   	ret    
    e5b1:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    e5b8:	b8 03 00 00 00       	mov    eax,0x3
    e5bd:	f3 c3                	repz ret 
    e5bf:	90                   	nop

000000000000e5c0 <pthread_sigqueue>:
    e5c0:	41 55                	push   r13
    e5c2:	41 54                	push   r12
    e5c4:	55                   	push   rbp
    e5c5:	53                   	push   rbx
    e5c6:	48 81 ec 88 00 00 00 	sub    rsp,0x88
    e5cd:	8b 9f d0 02 00 00    	mov    ebx,DWORD PTR [rdi+0x2d0]
    e5d3:	85 db                	test   ebx,ebx
    e5d5:	0f 8e 85 00 00 00    	jle    e660 <pthread_sigqueue+0xa0>
    e5db:	8d 4e e0             	lea    ecx,[rsi-0x20]
    e5de:	b8 16 00 00 00       	mov    eax,0x16
    e5e3:	83 f9 01             	cmp    ecx,0x1
    e5e6:	76 63                	jbe    e64b <pthread_sigqueue+0x8b>
    e5e8:	31 c0                	xor    eax,eax
    e5ea:	48 89 e7             	mov    rdi,rsp
    e5ed:	b9 10 00 00 00       	mov    ecx,0x10
    e5f2:	f3 48 ab             	rep stos QWORD PTR es:[rdi],rax
    e5f5:	49 89 d4             	mov    r12,rdx
    e5f8:	89 f5                	mov    ebp,esi
    e5fa:	89 34 24             	mov    DWORD PTR [rsp],esi
    e5fd:	c7 44 24 08 ff ff ff 	mov    DWORD PTR [rsp+0x8],0xffffffff
    e604:	ff 
    e605:	64 8b 04 25 d4 02 00 	mov    eax,DWORD PTR fs:0x2d4
    e60c:	00 
    e60d:	89 44 24 10          	mov    DWORD PTR [rsp+0x10],eax
    e611:	e8 7a 70 ff ff       	call   5690 <getuid@plt>
    e616:	4c 89 64 24 18       	mov    QWORD PTR [rsp+0x18],r12
    e61b:	89 44 24 14          	mov    DWORD PTR [rsp+0x14],eax
    e61f:	64 8b 3c 25 d4 02 00 	mov    edi,DWORD PTR fs:0x2d4
    e626:	00 
    e627:	b8 29 01 00 00       	mov    eax,0x129
    e62c:	49 89 e2             	mov    r10,rsp
    e62f:	48 63 d5             	movsxd rdx,ebp
    e632:	48 63 f3             	movsxd rsi,ebx
    e635:	48 63 ff             	movsxd rdi,edi
    e638:	0f 05                	syscall 
    e63a:	89 c2                	mov    edx,eax
    e63c:	f7 da                	neg    edx
    e63e:	3d 00 f0 ff ff       	cmp    eax,0xfffff000
    e643:	b8 00 00 00 00       	mov    eax,0x0
    e648:	0f 47 c2             	cmova  eax,edx
    e64b:	48 81 c4 88 00 00 00 	add    rsp,0x88
    e652:	5b                   	pop    rbx
    e653:	5d                   	pop    rbp
    e654:	41 5c                	pop    r12
    e656:	41 5d                	pop    r13
    e658:	c3                   	ret    
    e659:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    e660:	48 81 c4 88 00 00 00 	add    rsp,0x88
    e667:	b8 03 00 00 00       	mov    eax,0x3
    e66c:	5b                   	pop    rbx
    e66d:	5d                   	pop    rbp
    e66e:	41 5c                	pop    r12
    e670:	41 5d                	pop    r13
    e672:	c3                   	ret    
    e673:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    e67a:	00 00 00 
    e67d:	0f 1f 00             	nop    DWORD PTR [rax]

000000000000e680 <pthread_cancel>:
    e680:	48 85 ff             	test   rdi,rdi
    e683:	0f 84 a7 00 00 00    	je     e730 <pthread_cancel+0xb0>
    e689:	8b 87 d0 02 00 00    	mov    eax,DWORD PTR [rdi+0x2d0]
    e68f:	85 c0                	test   eax,eax
    e691:	0f 8e 99 00 00 00    	jle    e730 <pthread_cancel+0xb0>
    e697:	53                   	push   rbx
    e698:	48 89 fb             	mov    rbx,rdi
    e69b:	e8 50 32 00 00       	call   118f0 <pthread_cancel_init>
    e6a0:	8b 83 08 03 00 00    	mov    eax,DWORD PTR [rbx+0x308]
    e6a6:	89 c2                	mov    edx,eax
    e6a8:	83 ca 0c             	or     edx,0xc
    e6ab:	39 d0                	cmp    eax,edx
    e6ad:	74 37                	je     e6e6 <pthread_cancel+0x66>
    e6af:	89 d1                	mov    ecx,edx
    e6b1:	83 e1 bb             	and    ecx,0xffffffbb
    e6b4:	83 f9 0a             	cmp    ecx,0xa
    e6b7:	74 37                	je     e6f0 <pthread_cancel+0x70>
    e6b9:	64 c7 04 25 18 00 00 	mov    DWORD PTR fs:0x18,0x1
    e6c0:	00 01 00 00 00 
    e6c5:	48 8b 0d ac dc 20 00 	mov    rcx,QWORD PTR [rip+0x20dcac]        # 21c378 <__libc_multiple_threads_ptr>
    e6cc:	c7 01 01 00 00 00    	mov    DWORD PTR [rcx],0x1
    e6d2:	c7 05 c4 dc 20 00 01 	mov    DWORD PTR [rip+0x20dcc4],0x1        # 21c3a0 <__pthread_multiple_threads>
    e6d9:	00 00 00 
    e6dc:	f0 0f b1 93 08 03 00 	lock cmpxchg DWORD PTR [rbx+0x308],edx
    e6e3:	00 
    e6e4:	75 ba                	jne    e6a0 <pthread_cancel+0x20>
    e6e6:	31 c0                	xor    eax,eax
    e6e8:	5b                   	pop    rbx
    e6e9:	c3                   	ret    
    e6ea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    e6f0:	89 c2                	mov    edx,eax
    e6f2:	83 ca 04             	or     edx,0x4
    e6f5:	f0 0f b1 93 08 03 00 	lock cmpxchg DWORD PTR [rbx+0x308],edx
    e6fc:	00 
    e6fd:	75 a1                	jne    e6a0 <pthread_cancel+0x20>
    e6ff:	48 63 b3 d0 02 00 00 	movsxd rsi,DWORD PTR [rbx+0x2d0]
    e706:	64 8b 3c 25 d4 02 00 	mov    edi,DWORD PTR fs:0x2d4
    e70d:	00 
    e70e:	ba 20 00 00 00       	mov    edx,0x20
    e713:	48 63 ff             	movsxd rdi,edi
    e716:	b8 ea 00 00 00       	mov    eax,0xea
    e71b:	0f 05                	syscall 
    e71d:	3d 00 f0 ff ff       	cmp    eax,0xfffff000
    e722:	76 c2                	jbe    e6e6 <pthread_cancel+0x66>
    e724:	f7 d8                	neg    eax
    e726:	5b                   	pop    rbx
    e727:	c3                   	ret    
    e728:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    e72f:	00 
    e730:	b8 03 00 00 00       	mov    eax,0x3
    e735:	c3                   	ret    
    e736:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    e73d:	00 00 00 

000000000000e740 <pthread_testcancel>:
    e740:	64 8b 04 25 08 03 00 	mov    eax,DWORD PTR fs:0x308
    e747:	00 
    e748:	83 e0 b9             	and    eax,0xffffffb9
    e74b:	83 f8 08             	cmp    eax,0x8
    e74e:	74 02                	je     e752 <pthread_testcancel+0x12>
    e750:	f3 c3                	repz ret 
    e752:	50                   	push   rax
    e753:	64 48 c7 04 25 30 06 	mov    QWORD PTR fs:0x630,0xffffffffffffffff
    e75a:	00 00 ff ff ff ff 
    e760:	f0 64 83 0c 25 08 03 	lock or DWORD PTR fs:0x308,0x10
    e767:	00 00 10 
    e76a:	64 48 8b 3c 25 00 03 	mov    rdi,QWORD PTR fs:0x300
    e771:	00 00 
    e773:	e8 b8 18 00 00       	call   10030 <__pthread_unwind>
    e778:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    e77f:	00 

000000000000e780 <pthread_setcancelstate>:
    e780:	83 ff 01             	cmp    edi,0x1
    e783:	76 0b                	jbe    e790 <pthread_setcancelstate+0x10>
    e785:	b8 16 00 00 00       	mov    eax,0x16
    e78a:	c3                   	ret    
    e78b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    e790:	48 83 ec 18          	sub    rsp,0x18
    e794:	64 8b 04 25 08 03 00 	mov    eax,DWORD PTR fs:0x308
    e79b:	00 
    e79c:	83 ff 01             	cmp    edi,0x1
    e79f:	89 44 24 08          	mov    DWORD PTR [rsp+0x8],eax
    e7a3:	8b 54 24 08          	mov    edx,DWORD PTR [rsp+0x8]
    e7a7:	74 77                	je     e820 <pthread_setcancelstate+0xa0>
    e7a9:	48 85 f6             	test   rsi,rsi
    e7ac:	74 42                	je     e7f0 <pthread_setcancelstate+0x70>
    e7ae:	89 d1                	mov    ecx,edx
    e7b0:	89 d0                	mov    eax,edx
    e7b2:	83 e1 fe             	and    ecx,0xfffffffe
    e7b5:	83 e0 01             	and    eax,0x1
    e7b8:	39 ca                	cmp    edx,ecx
    e7ba:	89 06                	mov    DWORD PTR [rsi],eax
    e7bc:	74 28                	je     e7e6 <pthread_setcancelstate+0x66>
    e7be:	89 d0                	mov    eax,edx
    e7c0:	f0 64 0f b1 0c 25 08 	lock cmpxchg DWORD PTR fs:0x308,ecx
    e7c7:	03 00 00 
    e7ca:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
    e7ce:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
    e7d2:	39 c2                	cmp    edx,eax
    e7d4:	0f 85 be 00 00 00    	jne    e898 <pthread_setcancelstate+0x118>
    e7da:	83 e1 bb             	and    ecx,0xffffffbb
    e7dd:	83 f9 0a             	cmp    ecx,0xa
    e7e0:	0f 84 b9 00 00 00    	je     e89f <pthread_setcancelstate+0x11f>
    e7e6:	31 c0                	xor    eax,eax
    e7e8:	48 83 c4 18          	add    rsp,0x18
    e7ec:	c3                   	ret    
    e7ed:	0f 1f 00             	nop    DWORD PTR [rax]
    e7f0:	89 d1                	mov    ecx,edx
    e7f2:	83 e1 fe             	and    ecx,0xfffffffe
    e7f5:	39 ca                	cmp    edx,ecx
    e7f7:	74 ed                	je     e7e6 <pthread_setcancelstate+0x66>
    e7f9:	89 d0                	mov    eax,edx
    e7fb:	f0 64 0f b1 0c 25 08 	lock cmpxchg DWORD PTR fs:0x308,ecx
    e802:	03 00 00 
    e805:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
    e809:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
    e80d:	39 c2                	cmp    edx,eax
    e80f:	74 c9                	je     e7da <pthread_setcancelstate+0x5a>
    e811:	89 c2                	mov    edx,eax
    e813:	89 d1                	mov    ecx,edx
    e815:	83 e1 fe             	and    ecx,0xfffffffe
    e818:	39 ca                	cmp    edx,ecx
    e81a:	75 dd                	jne    e7f9 <pthread_setcancelstate+0x79>
    e81c:	eb c8                	jmp    e7e6 <pthread_setcancelstate+0x66>
    e81e:	66 90                	xchg   ax,ax
    e820:	48 85 f6             	test   rsi,rsi
    e823:	74 43                	je     e868 <pthread_setcancelstate+0xe8>
    e825:	89 d1                	mov    ecx,edx
    e827:	89 d0                	mov    eax,edx
    e829:	83 c9 01             	or     ecx,0x1
    e82c:	83 e0 01             	and    eax,0x1
    e82f:	39 ca                	cmp    edx,ecx
    e831:	89 06                	mov    DWORD PTR [rsi],eax
    e833:	74 b1                	je     e7e6 <pthread_setcancelstate+0x66>
    e835:	89 d0                	mov    eax,edx
    e837:	f0 64 0f b1 0c 25 08 	lock cmpxchg DWORD PTR fs:0x308,ecx
    e83e:	03 00 00 
    e841:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
    e845:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
    e849:	39 c2                	cmp    edx,eax
    e84b:	74 8d                	je     e7da <pthread_setcancelstate+0x5a>
    e84d:	89 c2                	mov    edx,eax
    e84f:	89 d1                	mov    ecx,edx
    e851:	89 d0                	mov    eax,edx
    e853:	83 c9 01             	or     ecx,0x1
    e856:	83 e0 01             	and    eax,0x1
    e859:	39 ca                	cmp    edx,ecx
    e85b:	89 06                	mov    DWORD PTR [rsi],eax
    e85d:	75 d6                	jne    e835 <pthread_setcancelstate+0xb5>
    e85f:	eb 85                	jmp    e7e6 <pthread_setcancelstate+0x66>
    e861:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    e868:	89 d1                	mov    ecx,edx
    e86a:	83 c9 01             	or     ecx,0x1
    e86d:	39 ca                	cmp    edx,ecx
    e86f:	0f 84 71 ff ff ff    	je     e7e6 <pthread_setcancelstate+0x66>
    e875:	89 d0                	mov    eax,edx
    e877:	f0 64 0f b1 0c 25 08 	lock cmpxchg DWORD PTR fs:0x308,ecx
    e87e:	03 00 00 
    e881:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
    e885:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
    e889:	39 c2                	cmp    edx,eax
    e88b:	0f 84 49 ff ff ff    	je     e7da <pthread_setcancelstate+0x5a>
    e891:	89 c2                	mov    edx,eax
    e893:	eb d3                	jmp    e868 <pthread_setcancelstate+0xe8>
    e895:	0f 1f 00             	nop    DWORD PTR [rax]
    e898:	89 c2                	mov    edx,eax
    e89a:	e9 0f ff ff ff       	jmp    e7ae <pthread_setcancelstate+0x2e>
    e89f:	f0 64 83 0c 25 08 03 	lock or DWORD PTR fs:0x308,0x10
    e8a6:	00 00 10 
    e8a9:	64 48 8b 3c 25 00 03 	mov    rdi,QWORD PTR fs:0x300
    e8b0:	00 00 
    e8b2:	e8 79 17 00 00       	call   10030 <__pthread_unwind>
    e8b7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    e8be:	00 00 

000000000000e8c0 <pthread_setcanceltype>:
    e8c0:	83 ff 01             	cmp    edi,0x1
    e8c3:	76 0b                	jbe    e8d0 <pthread_setcanceltype+0x10>
    e8c5:	b8 16 00 00 00       	mov    eax,0x16
    e8ca:	c3                   	ret    
    e8cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    e8d0:	48 83 ec 18          	sub    rsp,0x18
    e8d4:	64 8b 04 25 08 03 00 	mov    eax,DWORD PTR fs:0x308
    e8db:	00 
    e8dc:	83 ff 01             	cmp    edi,0x1
    e8df:	89 44 24 08          	mov    DWORD PTR [rsp+0x8],eax
    e8e3:	8b 54 24 08          	mov    edx,DWORD PTR [rsp+0x8]
    e8e7:	74 77                	je     e960 <pthread_setcanceltype+0xa0>
    e8e9:	48 85 f6             	test   rsi,rsi
    e8ec:	74 42                	je     e930 <pthread_setcanceltype+0x70>
    e8ee:	89 d1                	mov    ecx,edx
    e8f0:	89 d0                	mov    eax,edx
    e8f2:	d1 e8                	shr    eax,1
    e8f4:	83 e1 fd             	and    ecx,0xfffffffd
    e8f7:	83 e0 01             	and    eax,0x1
    e8fa:	39 ca                	cmp    edx,ecx
    e8fc:	89 06                	mov    DWORD PTR [rsi],eax
    e8fe:	74 28                	je     e928 <pthread_setcanceltype+0x68>
    e900:	89 d0                	mov    eax,edx
    e902:	f0 64 0f b1 0c 25 08 	lock cmpxchg DWORD PTR fs:0x308,ecx
    e909:	03 00 00 
    e90c:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
    e910:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
    e914:	39 c2                	cmp    edx,eax
    e916:	0f 85 a4 00 00 00    	jne    e9c0 <pthread_setcanceltype+0x100>
    e91c:	83 e1 bb             	and    ecx,0xffffffbb
    e91f:	83 f9 0a             	cmp    ecx,0xa
    e922:	0f 84 9f 00 00 00    	je     e9c7 <pthread_setcanceltype+0x107>
    e928:	31 c0                	xor    eax,eax
    e92a:	48 83 c4 18          	add    rsp,0x18
    e92e:	c3                   	ret    
    e92f:	90                   	nop
    e930:	89 d1                	mov    ecx,edx
    e932:	83 e1 fd             	and    ecx,0xfffffffd
    e935:	39 ca                	cmp    edx,ecx
    e937:	74 ef                	je     e928 <pthread_setcanceltype+0x68>
    e939:	89 d0                	mov    eax,edx
    e93b:	f0 64 0f b1 0c 25 08 	lock cmpxchg DWORD PTR fs:0x308,ecx
    e942:	03 00 00 
    e945:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
    e949:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
    e94d:	39 c2                	cmp    edx,eax
    e94f:	74 cb                	je     e91c <pthread_setcanceltype+0x5c>
    e951:	89 c2                	mov    edx,eax
    e953:	89 d1                	mov    ecx,edx
    e955:	83 e1 fd             	and    ecx,0xfffffffd
    e958:	39 ca                	cmp    edx,ecx
    e95a:	75 dd                	jne    e939 <pthread_setcanceltype+0x79>
    e95c:	eb ca                	jmp    e928 <pthread_setcanceltype+0x68>
    e95e:	66 90                	xchg   ax,ax
    e960:	48 85 f6             	test   rsi,rsi
    e963:	74 2e                	je     e993 <pthread_setcanceltype+0xd3>
    e965:	89 d1                	mov    ecx,edx
    e967:	89 d0                	mov    eax,edx
    e969:	d1 e8                	shr    eax,1
    e96b:	83 c9 02             	or     ecx,0x2
    e96e:	83 e0 01             	and    eax,0x1
    e971:	39 ca                	cmp    edx,ecx
    e973:	89 06                	mov    DWORD PTR [rsi],eax
    e975:	74 b1                	je     e928 <pthread_setcanceltype+0x68>
    e977:	89 d0                	mov    eax,edx
    e979:	f0 64 0f b1 0c 25 08 	lock cmpxchg DWORD PTR fs:0x308,ecx
    e980:	03 00 00 
    e983:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
    e987:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
    e98b:	39 c2                	cmp    edx,eax
    e98d:	74 8d                	je     e91c <pthread_setcanceltype+0x5c>
    e98f:	89 c2                	mov    edx,eax
    e991:	eb d2                	jmp    e965 <pthread_setcanceltype+0xa5>
    e993:	89 d1                	mov    ecx,edx
    e995:	83 c9 02             	or     ecx,0x2
    e998:	39 ca                	cmp    edx,ecx
    e99a:	74 8c                	je     e928 <pthread_setcanceltype+0x68>
    e99c:	89 d0                	mov    eax,edx
    e99e:	f0 64 0f b1 0c 25 08 	lock cmpxchg DWORD PTR fs:0x308,ecx
    e9a5:	03 00 00 
    e9a8:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
    e9ac:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
    e9b0:	39 c2                	cmp    edx,eax
    e9b2:	0f 84 64 ff ff ff    	je     e91c <pthread_setcanceltype+0x5c>
    e9b8:	89 c2                	mov    edx,eax
    e9ba:	eb d7                	jmp    e993 <pthread_setcanceltype+0xd3>
    e9bc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    e9c0:	89 c2                	mov    edx,eax
    e9c2:	e9 27 ff ff ff       	jmp    e8ee <pthread_setcanceltype+0x2e>
    e9c7:	64 48 c7 04 25 30 06 	mov    QWORD PTR fs:0x630,0xffffffffffffffff
    e9ce:	00 00 ff ff ff ff 
    e9d4:	f0 64 83 0c 25 08 03 	lock or DWORD PTR fs:0x308,0x10
    e9db:	00 00 10 
    e9de:	64 48 8b 3c 25 00 03 	mov    rdi,QWORD PTR fs:0x300
    e9e5:	00 00 
    e9e7:	e8 44 16 00 00       	call   10030 <__pthread_unwind>
    e9ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

000000000000e9f0 <__pthread_once_slow>:
    e9f0:	41 54                	push   r12
    e9f2:	55                   	push   rbp
    e9f3:	41 b8 ca 00 00 00    	mov    r8d,0xca
    e9f9:	53                   	push   rbx
    e9fa:	48 89 f5             	mov    rbp,rsi
    e9fd:	48 89 fb             	mov    rbx,rdi
    ea00:	41 b9 01 00 00 00    	mov    r9d,0x1
    ea06:	48 83 ec 30          	sub    rsp,0x30
    ea0a:	8b 03                	mov    eax,DWORD PTR [rbx]
    ea0c:	a8 02                	test   al,0x2
    ea0e:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
    ea12:	74 0c                	je     ea20 <__pthread_once_slow+0x30>
    ea14:	48 83 c4 30          	add    rsp,0x30
    ea18:	31 c0                	xor    eax,eax
    ea1a:	5b                   	pop    rbx
    ea1b:	5d                   	pop    rbp
    ea1c:	41 5c                	pop    r12
    ea1e:	c3                   	ret    
    ea1f:	90                   	nop
    ea20:	8b 15 e2 d9 20 00    	mov    edx,DWORD PTR [rip+0x20d9e2]        # 21c408 <__fork_generation>
    ea26:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
    ea2a:	83 ca 01             	or     edx,0x1
    ea2d:	f0 0f b1 13          	lock cmpxchg DWORD PTR [rbx],edx
    ea31:	75 d9                	jne    ea0c <__pthread_once_slow+0x1c>
    ea33:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
    ea37:	39 c2                	cmp    edx,eax
    ea39:	75 45                	jne    ea80 <__pthread_once_slow+0x90>
    ea3b:	a8 01                	test   al,0x1
    ea3d:	74 41                	je     ea80 <__pthread_once_slow+0x90>
    ea3f:	45 31 d2             	xor    r10d,r10d
    ea42:	be 80 00 00 00       	mov    esi,0x80
    ea47:	48 89 df             	mov    rdi,rbx
    ea4a:	44 89 c0             	mov    eax,r8d
    ea4d:	0f 05                	syscall 
    ea4f:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    ea55:	76 b3                	jbe    ea0a <__pthread_once_slow+0x1a>
    ea57:	8d 48 0b             	lea    ecx,[rax+0xb]
    ea5a:	83 f9 0b             	cmp    ecx,0xb
    ea5d:	77 0d                	ja     ea6c <__pthread_once_slow+0x7c>
    ea5f:	4c 89 c8             	mov    rax,r9
    ea62:	48 d3 e0             	shl    rax,cl
    ea65:	a9 81 08 00 00       	test   eax,0x881
    ea6a:	75 9e                	jne    ea0a <__pthread_once_slow+0x1a>
    ea6c:	48 8d 3d 6d 40 00 00 	lea    rdi,[rip+0x406d]        # 12ae0 <_fini+0xc>
    ea73:	e8 b8 6b ff ff       	call   5630 <__libc_fatal@plt>
    ea78:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    ea7f:	00 
    ea80:	4c 8d 64 24 10       	lea    r12,[rsp+0x10]
    ea85:	48 8d 35 54 00 00 00 	lea    rsi,[rip+0x54]        # eae0 <clear_once_control>
    ea8c:	48 89 da             	mov    rdx,rbx
    ea8f:	4c 89 e7             	mov    rdi,r12
    ea92:	e8 f9 12 00 00       	call   fd90 <_pthread_cleanup_push>
    ea97:	ff d5                	call   rbp
    ea99:	31 f6                	xor    esi,esi
    ea9b:	4c 89 e7             	mov    rdi,r12
    ea9e:	e8 0d 13 00 00       	call   fdb0 <_pthread_cleanup_pop>
    eaa3:	c7 03 02 00 00 00    	mov    DWORD PTR [rbx],0x2
    eaa9:	45 31 d2             	xor    r10d,r10d
    eaac:	ba ff ff ff 7f       	mov    edx,0x7fffffff
    eab1:	be 81 00 00 00       	mov    esi,0x81
    eab6:	48 89 df             	mov    rdi,rbx
    eab9:	b8 ca 00 00 00       	mov    eax,0xca
    eabe:	0f 05                	syscall 
    eac0:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    eac6:	0f 86 48 ff ff ff    	jbe    ea14 <__pthread_once_slow+0x24>
    eacc:	83 f8 ea             	cmp    eax,0xffffffea
    eacf:	0f 84 3f ff ff ff    	je     ea14 <__pthread_once_slow+0x24>
    ead5:	83 f8 f2             	cmp    eax,0xfffffff2
    ead8:	0f 84 36 ff ff ff    	je     ea14 <__pthread_once_slow+0x24>
    eade:	eb 8c                	jmp    ea6c <__pthread_once_slow+0x7c>

000000000000eae0 <clear_once_control>:
    eae0:	c7 07 00 00 00 00    	mov    DWORD PTR [rdi],0x0
    eae6:	45 31 d2             	xor    r10d,r10d
    eae9:	ba ff ff ff 7f       	mov    edx,0x7fffffff
    eaee:	be 81 00 00 00       	mov    esi,0x81
    eaf3:	b8 ca 00 00 00       	mov    eax,0xca
    eaf8:	0f 05                	syscall 
    eafa:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    eb00:	77 06                	ja     eb08 <clear_once_control+0x28>
    eb02:	f3 c3                	repz ret 
    eb04:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    eb08:	83 f8 ea             	cmp    eax,0xffffffea
    eb0b:	74 f5                	je     eb02 <clear_once_control+0x22>
    eb0d:	83 f8 f2             	cmp    eax,0xfffffff2
    eb10:	74 f0                	je     eb02 <clear_once_control+0x22>
    eb12:	48 8d 3d c7 3f 00 00 	lea    rdi,[rip+0x3fc7]        # 12ae0 <_fini+0xc>
    eb19:	50                   	push   rax
    eb1a:	e8 11 6b ff ff       	call   5630 <__libc_fatal@plt>
    eb1f:	90                   	nop

000000000000eb20 <__pthread_once>:
    eb20:	8b 07                	mov    eax,DWORD PTR [rdi]
    eb22:	a8 02                	test   al,0x2
    eb24:	74 0a                	je     eb30 <__pthread_once+0x10>
    eb26:	31 c0                	xor    eax,eax
    eb28:	c3                   	ret    
    eb29:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    eb30:	e9 bb fe ff ff       	jmp    e9f0 <__pthread_once_slow>
    eb35:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    eb3c:	00 00 00 
    eb3f:	90                   	nop

000000000000eb40 <pthread_atfork@GLIBC_2.2.5>:
    eb40:	48 8d 05 09 97 20 00 	lea    rax,[rip+0x209709]        # 218250 <__dso_handle>
    eb47:	48 85 c0             	test   rax,rax
    eb4a:	74 0c                	je     eb58 <pthread_atfork@GLIBC_2.2.5+0x18>
    eb4c:	48 8b 08             	mov    rcx,QWORD PTR [rax]
    eb4f:	e9 ac 6b ff ff       	jmp    5700 <__register_atfork@plt>
    eb54:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    eb58:	31 c9                	xor    ecx,ecx
    eb5a:	e9 a1 6b ff ff       	jmp    5700 <__register_atfork@plt>
    eb5f:	90                   	nop

000000000000eb60 <pthread_getcpuclockid>:
    eb60:	48 85 ff             	test   rdi,rdi
    eb63:	74 1b                	je     eb80 <pthread_getcpuclockid+0x20>
    eb65:	8b 87 d0 02 00 00    	mov    eax,DWORD PTR [rdi+0x2d0]
    eb6b:	85 c0                	test   eax,eax
    eb6d:	7e 11                	jle    eb80 <pthread_getcpuclockid+0x20>
    eb6f:	f7 d0                	not    eax
    eb71:	8d 04 c5 06 00 00 00 	lea    eax,[rax*8+0x6]
    eb78:	89 06                	mov    DWORD PTR [rsi],eax
    eb7a:	31 c0                	xor    eax,eax
    eb7c:	c3                   	ret    
    eb7d:	0f 1f 00             	nop    DWORD PTR [rax]
    eb80:	b8 03 00 00 00       	mov    eax,0x3
    eb85:	c3                   	ret    
    eb86:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    eb8d:	00 00 00 

000000000000eb90 <__pthread_clock_gettime>:
    eb90:	55                   	push   rbp
    eb91:	53                   	push   rbx
    eb92:	48 89 d5             	mov    rbp,rdx
    eb95:	48 83 ec 18          	sub    rsp,0x18
    eb99:	0f 31                	rdtsc  
    eb9b:	48 c1 e2 20          	shl    rdx,0x20
    eb9f:	89 c0                	mov    eax,eax
    eba1:	c1 ef 03             	shr    edi,0x3
    eba4:	48 89 d3             	mov    rbx,rdx
    eba7:	48 09 c3             	or     rbx,rax
    ebaa:	85 ff                	test   edi,edi
    ebac:	74 32                	je     ebe0 <__pthread_clock_gettime+0x50>
    ebae:	64 8b 04 25 d0 02 00 	mov    eax,DWORD PTR fs:0x2d0
    ebb5:	00 
    ebb6:	39 c7                	cmp    edi,eax
    ebb8:	74 26                	je     ebe0 <__pthread_clock_gettime+0x50>
    ebba:	48 89 74 24 08       	mov    QWORD PTR [rsp+0x8],rsi
    ebbf:	e8 cc 7f ff ff       	call   6b90 <__find_thread_by_id>
    ebc4:	48 85 c0             	test   rax,rax
    ebc7:	48 8b 74 24 08       	mov    rsi,QWORD PTR [rsp+0x8]
    ebcc:	74 43                	je     ec11 <__pthread_clock_gettime+0x81>
    ebce:	48 2b 98 20 06 00 00 	sub    rbx,QWORD PTR [rax+0x620]
    ebd5:	48 89 d8             	mov    rax,rbx
    ebd8:	eb 15                	jmp    ebef <__pthread_clock_gettime+0x5f>
    ebda:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    ebe0:	64 48 8b 04 25 20 06 	mov    rax,QWORD PTR fs:0x620
    ebe7:	00 00 
    ebe9:	48 29 c3             	sub    rbx,rax
    ebec:	48 89 d8             	mov    rax,rbx
    ebef:	31 d2                	xor    edx,edx
    ebf1:	48 f7 f6             	div    rsi
    ebf4:	48 89 45 00          	mov    QWORD PTR [rbp+0x0],rax
    ebf8:	48 69 c2 00 ca 9a 3b 	imul   rax,rdx,0x3b9aca00
    ebff:	31 d2                	xor    edx,edx
    ec01:	48 f7 f6             	div    rsi
    ec04:	48 89 45 08          	mov    QWORD PTR [rbp+0x8],rax
    ec08:	31 c0                	xor    eax,eax
    ec0a:	48 83 c4 18          	add    rsp,0x18
    ec0e:	5b                   	pop    rbx
    ec0f:	5d                   	pop    rbp
    ec10:	c3                   	ret    
    ec11:	48 8b 05 70 93 20 00 	mov    rax,QWORD PTR [rip+0x209370]        # 217f88 <_DYNAMIC+0x238>
    ec18:	64 c7 00 16 00 00 00 	mov    DWORD PTR fs:[rax],0x16
    ec1f:	b8 ff ff ff ff       	mov    eax,0xffffffff
    ec24:	eb e4                	jmp    ec0a <__pthread_clock_gettime+0x7a>
    ec26:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    ec2d:	00 00 00 

000000000000ec30 <__pthread_clock_settime>:
    ec30:	c1 ef 03             	shr    edi,0x3
    ec33:	85 ff                	test   edi,edi
    ec35:	74 29                	je     ec60 <__pthread_clock_settime+0x30>
    ec37:	64 8b 04 25 d0 02 00 	mov    eax,DWORD PTR fs:0x2d0
    ec3e:	00 
    ec3f:	39 c7                	cmp    edi,eax
    ec41:	74 1d                	je     ec60 <__pthread_clock_settime+0x30>
    ec43:	53                   	push   rbx
    ec44:	48 89 f3             	mov    rbx,rsi
    ec47:	e8 44 7f ff ff       	call   6b90 <__find_thread_by_id>
    ec4c:	48 85 c0             	test   rax,rax
    ec4f:	74 1b                	je     ec6c <__pthread_clock_settime+0x3c>
    ec51:	48 89 98 20 06 00 00 	mov    QWORD PTR [rax+0x620],rbx
    ec58:	31 c0                	xor    eax,eax
    ec5a:	5b                   	pop    rbx
    ec5b:	c3                   	ret    
    ec5c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    ec60:	64 48 89 34 25 20 06 	mov    QWORD PTR fs:0x620,rsi
    ec67:	00 00 
    ec69:	31 c0                	xor    eax,eax
    ec6b:	c3                   	ret    
    ec6c:	48 8b 05 15 93 20 00 	mov    rax,QWORD PTR [rip+0x209315]        # 217f88 <_DYNAMIC+0x238>
    ec73:	64 c7 00 16 00 00 00 	mov    DWORD PTR fs:[rax],0x16
    ec7a:	b8 ff ff ff ff       	mov    eax,0xffffffff
    ec7f:	5b                   	pop    rbx
    ec80:	c3                   	ret    
    ec81:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    ec88:	00 00 00 
    ec8b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

000000000000ec90 <where_is_shmfs>:
    ec90:	41 57                	push   r15
    ec92:	41 56                	push   r14
    ec94:	48 8d 3d 2d 48 00 00 	lea    rdi,[rip+0x482d]        # 134c8 <defaultdir>
    ec9b:	41 55                	push   r13
    ec9d:	41 54                	push   r12
    ec9f:	55                   	push   rbp
    eca0:	53                   	push   rbx
    eca1:	48 81 ec c8 02 00 00 	sub    rsp,0x2c8
    eca8:	4c 8d 74 24 40       	lea    r14,[rsp+0x40]
    ecad:	4c 89 f6             	mov    rsi,r14
    ecb0:	e8 8b 69 ff ff       	call   5640 <__statfs@plt>
    ecb5:	85 c0                	test   eax,eax
    ecb7:	75 1f                	jne    ecd8 <where_is_shmfs+0x48>
    ecb9:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
    ecbe:	48 3d 94 19 02 01    	cmp    rax,0x1021994
    ecc4:	0f 84 2e 01 00 00    	je     edf8 <where_is_shmfs+0x168>
    ecca:	ba f6 58 84 85       	mov    edx,0x858458f6
    eccf:	48 39 d0             	cmp    rax,rdx
    ecd2:	0f 84 20 01 00 00    	je     edf8 <where_is_shmfs+0x168>
    ecd8:	48 8d 35 c9 47 00 00 	lea    rsi,[rip+0x47c9]        # 134a8 <default_rwlockattr+0x8>
    ecdf:	48 8d 3d c4 47 00 00 	lea    rdi,[rip+0x47c4]        # 134aa <default_rwlockattr+0xa>
    ece6:	e8 65 6c ff ff       	call   5950 <__setmntent@plt>
    eceb:	48 85 c0             	test   rax,rax
    ecee:	48 89 c5             	mov    rbp,rax
    ecf1:	0f 84 1c 01 00 00    	je     ee13 <where_is_shmfs+0x183>
    ecf7:	4c 8d ac 24 c0 00 00 	lea    r13,[rsp+0xc0]
    ecfe:	00 
    ecff:	4c 8d 64 24 10       	lea    r12,[rsp+0x10]
    ed04:	41 bf f6 58 84 85    	mov    r15d,0x858458f6
    ed0a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    ed10:	b9 00 02 00 00       	mov    ecx,0x200
    ed15:	4c 89 ea             	mov    rdx,r13
    ed18:	4c 89 e6             	mov    rsi,r12
    ed1b:	48 89 ef             	mov    rdi,rbp
    ed1e:	e8 5d 6a ff ff       	call   5780 <__getmntent_r@plt>
    ed23:	48 85 c0             	test   rax,rax
    ed26:	48 89 c3             	mov    rbx,rax
    ed29:	0f 84 ac 00 00 00    	je     eddb <where_is_shmfs+0x14b>
    ed2f:	48 8b 43 10          	mov    rax,QWORD PTR [rbx+0x10]
    ed33:	48 8d 3d 88 47 00 00 	lea    rdi,[rip+0x4788]        # 134c2 <default_rwlockattr+0x22>
    ed3a:	b9 06 00 00 00       	mov    ecx,0x6
    ed3f:	48 89 c6             	mov    rsi,rax
    ed42:	f3 a6                	repz cmps BYTE PTR ds:[rsi],BYTE PTR es:[rdi]
    ed44:	74 17                	je     ed5d <where_is_shmfs+0xcd>
    ed46:	80 38 73             	cmp    BYTE PTR [rax],0x73
    ed49:	75 c5                	jne    ed10 <where_is_shmfs+0x80>
    ed4b:	80 78 01 68          	cmp    BYTE PTR [rax+0x1],0x68
    ed4f:	75 bf                	jne    ed10 <where_is_shmfs+0x80>
    ed51:	80 78 02 6d          	cmp    BYTE PTR [rax+0x2],0x6d
    ed55:	75 b9                	jne    ed10 <where_is_shmfs+0x80>
    ed57:	80 78 03 00          	cmp    BYTE PTR [rax+0x3],0x0
    ed5b:	75 b3                	jne    ed10 <where_is_shmfs+0x80>
    ed5d:	48 8b 7b 08          	mov    rdi,QWORD PTR [rbx+0x8]
    ed61:	4c 89 f6             	mov    rsi,r14
    ed64:	e8 d7 68 ff ff       	call   5640 <__statfs@plt>
    ed69:	85 c0                	test   eax,eax
    ed6b:	75 a3                	jne    ed10 <where_is_shmfs+0x80>
    ed6d:	48 8b 44 24 40       	mov    rax,QWORD PTR [rsp+0x40]
    ed72:	48 3d 94 19 02 01    	cmp    rax,0x1021994
    ed78:	74 05                	je     ed7f <where_is_shmfs+0xef>
    ed7a:	4c 39 f8             	cmp    rax,r15
    ed7d:	75 91                	jne    ed10 <where_is_shmfs+0x80>
    ed7f:	48 8b 5b 08          	mov    rbx,QWORD PTR [rbx+0x8]
    ed83:	48 89 df             	mov    rdi,rbx
    ed86:	e8 f5 68 ff ff       	call   5680 <strlen@plt>
    ed8b:	48 85 c0             	test   rax,rax
    ed8e:	74 80                	je     ed10 <where_is_shmfs+0x80>
    ed90:	48 8d 78 02          	lea    rdi,[rax+0x2]
    ed94:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    ed99:	e8 a2 6a ff ff       	call   5840 <malloc@plt>
    ed9e:	48 85 c0             	test   rax,rax
    eda1:	48 89 05 78 d5 20 00 	mov    QWORD PTR [rip+0x20d578],rax        # 21c320 <mountpoint>
    eda8:	74 31                	je     eddb <where_is_shmfs+0x14b>
    edaa:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
    edaf:	48 89 de             	mov    rsi,rbx
    edb2:	48 89 c7             	mov    rdi,rax
    edb5:	e8 a6 68 ff ff       	call   5660 <__mempcpy@plt>
    edba:	80 78 ff 2f          	cmp    BYTE PTR [rax-0x1],0x2f
    edbe:	48 89 c2             	mov    rdx,rax
    edc1:	74 07                	je     edca <where_is_shmfs+0x13a>
    edc3:	48 83 c0 01          	add    rax,0x1
    edc7:	c6 02 2f             	mov    BYTE PTR [rdx],0x2f
    edca:	c6 00 00             	mov    BYTE PTR [rax],0x0
    edcd:	48 2b 05 4c d5 20 00 	sub    rax,QWORD PTR [rip+0x20d54c]        # 21c320 <mountpoint>
    edd4:	48 89 05 4d d5 20 00 	mov    QWORD PTR [rip+0x20d54d],rax        # 21c328 <mountpoint+0x8>
    eddb:	48 89 ef             	mov    rdi,rbp
    edde:	e8 dd 69 ff ff       	call   57c0 <__endmntent@plt>
    ede3:	48 81 c4 c8 02 00 00 	add    rsp,0x2c8
    edea:	5b                   	pop    rbx
    edeb:	5d                   	pop    rbp
    edec:	41 5c                	pop    r12
    edee:	41 5d                	pop    r13
    edf0:	41 5e                	pop    r14
    edf2:	41 5f                	pop    r15
    edf4:	c3                   	ret    
    edf5:	0f 1f 00             	nop    DWORD PTR [rax]
    edf8:	48 8d 05 c9 46 00 00 	lea    rax,[rip+0x46c9]        # 134c8 <defaultdir>
    edff:	48 c7 05 1e d5 20 00 	mov    QWORD PTR [rip+0x20d51e],0x9        # 21c328 <mountpoint+0x8>
    ee06:	09 00 00 00 
    ee0a:	48 89 05 0f d5 20 00 	mov    QWORD PTR [rip+0x20d50f],rax        # 21c320 <mountpoint>
    ee11:	eb d0                	jmp    ede3 <where_is_shmfs+0x153>
    ee13:	48 8d 35 8e 46 00 00 	lea    rsi,[rip+0x468e]        # 134a8 <default_rwlockattr+0x8>
    ee1a:	48 8d 3d 96 46 00 00 	lea    rdi,[rip+0x4696]        # 134b7 <default_rwlockattr+0x17>
    ee21:	e8 2a 6b ff ff       	call   5950 <__setmntent@plt>
    ee26:	48 85 c0             	test   rax,rax
    ee29:	48 89 c5             	mov    rbp,rax
    ee2c:	0f 85 c5 fe ff ff    	jne    ecf7 <where_is_shmfs+0x67>
    ee32:	eb af                	jmp    ede3 <where_is_shmfs+0x153>
    ee34:	66 90                	xchg   ax,ax
    ee36:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    ee3d:	00 00 00 

000000000000ee40 <__shm_directory>:
    ee40:	53                   	push   rbx
    ee41:	48 8d 35 48 fe ff ff 	lea    rsi,[rip+0xfffffffffffffe48]        # ec90 <where_is_shmfs>
    ee48:	48 89 fb             	mov    rbx,rdi
    ee4b:	48 8d 3d be d4 20 00 	lea    rdi,[rip+0x20d4be]        # 21c310 <once>
    ee52:	e8 c9 fc ff ff       	call   eb20 <__pthread_once>
    ee57:	48 8b 05 c2 d4 20 00 	mov    rax,QWORD PTR [rip+0x20d4c2]        # 21c320 <mountpoint>
    ee5e:	48 85 c0             	test   rax,rax
    ee61:	74 0d                	je     ee70 <__shm_directory+0x30>
    ee63:	48 8b 15 be d4 20 00 	mov    rdx,QWORD PTR [rip+0x20d4be]        # 21c328 <mountpoint+0x8>
    ee6a:	48 89 13             	mov    QWORD PTR [rbx],rdx
    ee6d:	5b                   	pop    rbx
    ee6e:	c3                   	ret    
    ee6f:	90                   	nop
    ee70:	48 8b 05 11 91 20 00 	mov    rax,QWORD PTR [rip+0x209111]        # 217f88 <_DYNAMIC+0x238>
    ee77:	64 c7 00 26 00 00 00 	mov    DWORD PTR fs:[rax],0x26
    ee7e:	31 c0                	xor    eax,eax
    ee80:	5b                   	pop    rbx
    ee81:	c3                   	ret    
    ee82:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    ee89:	00 00 00 
    ee8c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

000000000000ee90 <sem_init@@GLIBC_2.2.5>:
    ee90:	85 d2                	test   edx,edx
    ee92:	78 1c                	js     eeb0 <sem_init@@GLIBC_2.2.5+0x20>
    ee94:	83 fe 01             	cmp    esi,0x1
    ee97:	89 d0                	mov    eax,edx
    ee99:	48 89 07             	mov    QWORD PTR [rdi],rax
    ee9c:	19 c0                	sbb    eax,eax
    ee9e:	f7 d0                	not    eax
    eea0:	25 80 00 00 00       	and    eax,0x80
    eea5:	89 47 08             	mov    DWORD PTR [rdi+0x8],eax
    eea8:	31 c0                	xor    eax,eax
    eeaa:	c3                   	ret    
    eeab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    eeb0:	48 8b 05 d1 90 20 00 	mov    rax,QWORD PTR [rip+0x2090d1]        # 217f88 <_DYNAMIC+0x238>
    eeb7:	64 c7 00 16 00 00 00 	mov    DWORD PTR fs:[rax],0x16
    eebe:	b8 ff ff ff ff       	mov    eax,0xffffffff
    eec3:	c3                   	ret    
    eec4:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    eecb:	00 00 00 
    eece:	66 90                	xchg   ax,ax

000000000000eed0 <sem_destroy@@GLIBC_2.2.5>:
    eed0:	31 c0                	xor    eax,eax
    eed2:	c3                   	ret    
    eed3:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    eeda:	00 00 00 
    eedd:	0f 1f 00             	nop    DWORD PTR [rax]

000000000000eee0 <check_add_mapping>:
    eee0:	55                   	push   rbp
    eee1:	48 89 e5             	mov    rbp,rsp
    eee4:	41 57                	push   r15
    eee6:	41 56                	push   r14
    eee8:	41 55                	push   r13
    eeea:	41 54                	push   r12
    eeec:	41 89 d5             	mov    r13d,edx
    eeef:	53                   	push   rbx
    eef0:	48 8d 95 40 ff ff ff 	lea    rdx,[rbp-0xc0]
    eef7:	49 89 fe             	mov    r14,rdi
    eefa:	49 89 f4             	mov    r12,rsi
    eefd:	bf 01 00 00 00       	mov    edi,0x1
    ef02:	44 89 ee             	mov    esi,r13d
    ef05:	48 81 ec a8 00 00 00 	sub    rsp,0xa8
    ef0c:	48 89 cb             	mov    rbx,rcx
    ef0f:	e8 7c 68 ff ff       	call   5790 <__fxstat64@plt>
    ef14:	85 c0                	test   eax,eax
    ef16:	0f 85 0c 01 00 00    	jne    f028 <check_add_mapping+0x148>
    ef1c:	be 01 00 00 00       	mov    esi,0x1
    ef21:	f0 0f b1 35 07 d4 20 	lock cmpxchg DWORD PTR [rip+0x20d407],esi        # 21c330 <__sem_mappings_lock>
    ef28:	00 
    ef29:	74 1a                	je     ef45 <check_add_mapping+0x65>
    ef2b:	48 8d 3d fe d3 20 00 	lea    rdi,[rip+0x20d3fe]        # 21c330 <__sem_mappings_lock>
    ef32:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    ef39:	e8 e2 12 00 00       	call   10220 <__lll_lock_wait_private>
    ef3e:	48 81 c4 80 00 00 00 	add    rsp,0x80
    ef45:	49 8d 44 24 20       	lea    rax,[r12+0x20]
    ef4a:	4c 89 e2             	mov    rdx,r12
    ef4d:	4c 89 f6             	mov    rsi,r14
    ef50:	48 89 85 38 ff ff ff 	mov    QWORD PTR [rbp-0xc8],rax
    ef57:	49 8d 44 24 3e       	lea    rax,[r12+0x3e]
    ef5c:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
    ef60:	48 29 c4             	sub    rsp,rax
    ef63:	48 8d 4c 24 0f       	lea    rcx,[rsp+0xf]
    ef68:	48 83 e1 f0          	and    rcx,0xfffffffffffffff0
    ef6c:	48 8d 79 20          	lea    rdi,[rcx+0x20]
    ef70:	49 89 cf             	mov    r15,rcx
    ef73:	e8 58 68 ff ff       	call   57d0 <memcpy@plt>
    ef78:	48 8b 85 40 ff ff ff 	mov    rax,QWORD PTR [rbp-0xc0]
    ef7f:	48 8d 15 7a 01 00 00 	lea    rdx,[rip+0x17a]        # f100 <__sem_search>
    ef86:	48 8d 35 83 d4 20 00 	lea    rsi,[rip+0x20d483]        # 21c410 <__sem_mappings>
    ef8d:	4c 89 ff             	mov    rdi,r15
    ef90:	49 89 07             	mov    QWORD PTR [r15],rax
    ef93:	48 8b 85 48 ff ff ff 	mov    rax,QWORD PTR [rbp-0xb8]
    ef9a:	49 89 47 08          	mov    QWORD PTR [r15+0x8],rax
    ef9e:	e8 1d 69 ff ff       	call   58c0 <__tfind@plt>
    efa3:	48 85 c0             	test   rax,rax
    efa6:	0f 84 94 00 00 00    	je     f040 <check_add_mapping+0x160>
    efac:	48 8b 00             	mov    rax,QWORD PTR [rax]
    efaf:	4c 8b 60 18          	mov    r12,QWORD PTR [rax+0x18]
    efb3:	83 40 10 01          	add    DWORD PTR [rax+0x10],0x1
    efb7:	48 8d 43 ff          	lea    rax,[rbx-0x1]
    efbb:	48 83 f8 fd          	cmp    rax,0xfffffffffffffffd
    efbf:	0f 96 c2             	setbe  dl
    efc2:	4c 39 e3             	cmp    rbx,r12
    efc5:	0f 95 c0             	setne  al
    efc8:	21 c2                	and    edx,eax
    efca:	f0 ff 0d 5f d3 20 00 	lock dec DWORD PTR [rip+0x20d35f]        # 21c330 <__sem_mappings_lock>
    efd1:	74 1a                	je     efed <check_add_mapping+0x10d>
    efd3:	48 8d 3d 56 d3 20 00 	lea    rdi,[rip+0x20d356]        # 21c330 <__sem_mappings_lock>
    efda:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    efe1:	e8 ea 12 00 00       	call   102d0 <__lll_unlock_wake_private>
    efe6:	48 81 c4 80 00 00 00 	add    rsp,0x80
    efed:	84 d2                	test   dl,dl
    efef:	74 1e                	je     f00f <check_add_mapping+0x12f>
    eff1:	4c 8b 2d 90 8f 20 00 	mov    r13,QWORD PTR [rip+0x208f90]        # 217f88 <_DYNAMIC+0x238>
    eff8:	be 20 00 00 00       	mov    esi,0x20
    effd:	48 89 df             	mov    rdi,rbx
    f000:	64 45 8b 75 00       	mov    r14d,DWORD PTR fs:[r13+0x0]
    f005:	e8 c6 68 ff ff       	call   58d0 <munmap@plt>
    f00a:	64 45 89 75 00       	mov    DWORD PTR fs:[r13+0x0],r14d
    f00f:	48 8d 65 d8          	lea    rsp,[rbp-0x28]
    f013:	4c 89 e0             	mov    rax,r12
    f016:	5b                   	pop    rbx
    f017:	41 5c                	pop    r12
    f019:	41 5d                	pop    r13
    f01b:	41 5e                	pop    r14
    f01d:	41 5f                	pop    r15
    f01f:	5d                   	pop    rbp
    f020:	c3                   	ret    
    f021:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    f028:	48 8d 43 ff          	lea    rax,[rbx-0x1]
    f02c:	48 83 f8 fd          	cmp    rax,0xfffffffffffffffd
    f030:	0f 96 c2             	setbe  dl
    f033:	48 85 db             	test   rbx,rbx
    f036:	0f 95 c0             	setne  al
    f039:	45 31 e4             	xor    r12d,r12d
    f03c:	21 c2                	and    edx,eax
    f03e:	eb ad                	jmp    efed <check_add_mapping+0x10d>
    f040:	49 8d 7c 24 20       	lea    rdi,[r12+0x20]
    f045:	e8 f6 67 ff ff       	call   5840 <malloc@plt>
    f04a:	48 85 c0             	test   rax,rax
    f04d:	49 89 c7             	mov    r15,rax
    f050:	74 66                	je     f0b8 <check_add_mapping+0x1d8>
    f052:	48 85 db             	test   rbx,rbx
    f055:	74 7c                	je     f0d3 <check_add_mapping+0x1f3>
    f057:	66 0f 6f 85 40 ff ff 	movdqa xmm0,XMMWORD PTR [rbp-0xc0]
    f05e:	ff 
    f05f:	49 8d 7f 20          	lea    rdi,[r15+0x20]
    f063:	4c 89 e2             	mov    rdx,r12
    f066:	41 c7 47 10 01 00 00 	mov    DWORD PTR [r15+0x10],0x1
    f06d:	00 
    f06e:	49 89 5f 18          	mov    QWORD PTR [r15+0x18],rbx
    f072:	4c 89 f6             	mov    rsi,r14
    f075:	41 0f 11 07          	movups XMMWORD PTR [r15],xmm0
    f079:	e8 52 67 ff ff       	call   57d0 <memcpy@plt>
    f07e:	48 83 fb ff          	cmp    rbx,0xffffffffffffffff
    f082:	74 2c                	je     f0b0 <check_add_mapping+0x1d0>
    f084:	48 8d 15 75 00 00 00 	lea    rdx,[rip+0x75]        # f100 <__sem_search>
    f08b:	48 8d 35 7e d3 20 00 	lea    rsi,[rip+0x20d37e]        # 21c410 <__sem_mappings>
    f092:	4c 89 ff             	mov    rdi,r15
    f095:	e8 06 65 ff ff       	call   55a0 <__tsearch@plt>
    f09a:	48 85 c0             	test   rax,rax
    f09d:	74 11                	je     f0b0 <check_add_mapping+0x1d0>
    f09f:	49 89 dc             	mov    r12,rbx
    f0a2:	31 d2                	xor    edx,edx
    f0a4:	e9 21 ff ff ff       	jmp    efca <check_add_mapping+0xea>
    f0a9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    f0b0:	4c 89 ff             	mov    rdi,r15
    f0b3:	e8 08 65 ff ff       	call   55c0 <free@plt>
    f0b8:	48 8d 43 ff          	lea    rax,[rbx-0x1]
    f0bc:	48 83 f8 fd          	cmp    rax,0xfffffffffffffffd
    f0c0:	0f 96 c2             	setbe  dl
    f0c3:	48 85 db             	test   rbx,rbx
    f0c6:	0f 95 c0             	setne  al
    f0c9:	45 31 e4             	xor    r12d,r12d
    f0cc:	21 c2                	and    edx,eax
    f0ce:	e9 f7 fe ff ff       	jmp    efca <check_add_mapping+0xea>
    f0d3:	45 31 c9             	xor    r9d,r9d
    f0d6:	45 89 e8             	mov    r8d,r13d
    f0d9:	b9 01 00 00 00       	mov    ecx,0x1
    f0de:	ba 03 00 00 00       	mov    edx,0x3
    f0e3:	be 20 00 00 00       	mov    esi,0x20
    f0e8:	31 ff                	xor    edi,edi
    f0ea:	e8 b1 65 ff ff       	call   56a0 <mmap@plt>
    f0ef:	48 89 c3             	mov    rbx,rax
    f0f2:	e9 60 ff ff ff       	jmp    f057 <check_add_mapping+0x177>
    f0f7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    f0fe:	00 00 

000000000000f100 <__sem_search>:
    f100:	48 8b 46 08          	mov    rax,QWORD PTR [rsi+0x8]
    f104:	48 39 47 08          	cmp    QWORD PTR [rdi+0x8],rax
    f108:	74 06                	je     f110 <__sem_search+0x10>
    f10a:	19 c0                	sbb    eax,eax
    f10c:	83 c8 01             	or     eax,0x1
    f10f:	c3                   	ret    
    f110:	48 8b 06             	mov    rax,QWORD PTR [rsi]
    f113:	48 39 07             	cmp    QWORD PTR [rdi],rax
    f116:	75 f2                	jne    f10a <__sem_search+0xa>
    f118:	48 83 c6 20          	add    rsi,0x20
    f11c:	48 83 c7 20          	add    rdi,0x20
    f120:	e9 7b 66 ff ff       	jmp    57a0 <strcmp@plt>
    f125:	90                   	nop
    f126:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    f12d:	00 00 00 

000000000000f130 <sem_open>:
    f130:	55                   	push   rbp
    f131:	48 89 e5             	mov    rbp,rsp
    f134:	41 57                	push   r15
    f136:	41 56                	push   r14
    f138:	41 55                	push   r13
    f13a:	41 54                	push   r12
    f13c:	53                   	push   rbx
    f13d:	48 89 fb             	mov    rbx,rdi
    f140:	48 8d bd 60 ff ff ff 	lea    rdi,[rbp-0xa0]
    f147:	48 81 ec a8 00 00 00 	sub    rsp,0xa8
    f14e:	89 b5 58 ff ff ff    	mov    DWORD PTR [rbp-0xa8],esi
    f154:	48 89 55 b0          	mov    QWORD PTR [rbp-0x50],rdx
    f158:	48 89 4d b8          	mov    QWORD PTR [rbp-0x48],rcx
    f15c:	e8 df fc ff ff       	call   ee40 <__shm_directory>
    f161:	48 85 c0             	test   rax,rax
    f164:	0f 84 8e 03 00 00    	je     f4f8 <sem_open+0x3c8>
    f16a:	80 3b 2f             	cmp    BYTE PTR [rbx],0x2f
    f16d:	49 89 c7             	mov    r15,rax
    f170:	75 0f                	jne    f181 <sem_open+0x51>
    f172:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    f178:	48 83 c3 01          	add    rbx,0x1
    f17c:	80 3b 2f             	cmp    BYTE PTR [rbx],0x2f
    f17f:	74 f7                	je     f178 <sem_open+0x48>
    f181:	48 89 df             	mov    rdi,rbx
    f184:	e8 f7 64 ff ff       	call   5680 <strlen@plt>
    f189:	4c 8d 60 01          	lea    r12,[rax+0x1]
    f18d:	49 83 fc 01          	cmp    r12,0x1
    f191:	74 1b                	je     f1ae <sem_open+0x7e>
    f193:	49 81 fc fe 00 00 00 	cmp    r12,0xfe
    f19a:	77 12                	ja     f1ae <sem_open+0x7e>
    f19c:	be 2f 00 00 00       	mov    esi,0x2f
    f1a1:	48 89 df             	mov    rdi,rbx
    f1a4:	e8 07 65 ff ff       	call   56b0 <strchr@plt>
    f1a9:	48 85 c0             	test   rax,rax
    f1ac:	74 22                	je     f1d0 <sem_open+0xa0>
    f1ae:	48 8b 05 d3 8d 20 00 	mov    rax,QWORD PTR [rip+0x208dd3]        # 217f88 <_DYNAMIC+0x238>
    f1b5:	64 c7 00 16 00 00 00 	mov    DWORD PTR fs:[rax],0x16
    f1bc:	31 c0                	xor    eax,eax
    f1be:	48 8d 65 d8          	lea    rsp,[rbp-0x28]
    f1c2:	5b                   	pop    rbx
    f1c3:	41 5c                	pop    r12
    f1c5:	41 5d                	pop    r13
    f1c7:	41 5e                	pop    r14
    f1c9:	41 5f                	pop    r15
    f1cb:	5d                   	pop    rbp
    f1cc:	c3                   	ret    
    f1cd:	0f 1f 00             	nop    DWORD PTR [rax]
    f1d0:	48 8b 95 60 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xa0]
    f1d7:	4c 89 fe             	mov    rsi,r15
    f1da:	49 8d 44 14 22       	lea    rax,[r12+rdx*1+0x22]
    f1df:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
    f1e3:	48 29 c4             	sub    rsp,rax
    f1e6:	48 8d 44 24 0f       	lea    rax,[rsp+0xf]
    f1eb:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
    f1ef:	48 89 c7             	mov    rdi,rax
    f1f2:	48 89 85 40 ff ff ff 	mov    QWORD PTR [rbp-0xc0],rax
    f1f9:	e8 62 64 ff ff       	call   5660 <__mempcpy@plt>
    f1fe:	48 8d 35 cd 42 00 00 	lea    rsi,[rip+0x42cd]        # 134d2 <defaultdir+0xa>
    f205:	ba 04 00 00 00       	mov    edx,0x4
    f20a:	48 89 c7             	mov    rdi,rax
    f20d:	e8 4e 64 ff ff       	call   5660 <__mempcpy@plt>
    f212:	4c 89 e2             	mov    rdx,r12
    f215:	48 89 de             	mov    rsi,rbx
    f218:	48 89 c7             	mov    rdi,rax
    f21b:	e8 40 64 ff ff       	call   5660 <__mempcpy@plt>
    f220:	8b 85 58 ff ff ff    	mov    eax,DWORD PTR [rbp-0xa8]
    f226:	25 c0 00 00 00       	and    eax,0xc0
    f22b:	3d c0 00 00 00       	cmp    eax,0xc0
    f230:	0f 84 ba 00 00 00    	je     f2f0 <sem_open+0x1c0>
    f236:	44 8b b5 58 ff ff ff 	mov    r14d,DWORD PTR [rbp-0xa8]
    f23d:	48 8b bd 40 ff ff ff 	mov    rdi,QWORD PTR [rbp-0xc0]
    f244:	31 c0                	xor    eax,eax
    f246:	44 89 f6             	mov    esi,r14d
    f249:	81 e6 bc ff fd ff    	and    esi,0xfffdffbc
    f24f:	81 ce 02 00 02 00    	or     esi,0x20002
    f255:	e8 f6 19 00 00       	call   10c50 <__open>
    f25a:	83 f8 ff             	cmp    eax,0xffffffff
    f25d:	74 69                	je     f2c8 <sem_open+0x198>
    f25f:	31 c9                	xor    ecx,ecx
    f261:	89 c2                	mov    edx,eax
    f263:	4c 89 e6             	mov    rsi,r12
    f266:	48 89 df             	mov    rdi,rbx
    f269:	89 85 58 ff ff ff    	mov    DWORD PTR [rbp-0xa8],eax
    f26f:	e8 6c fc ff ff       	call   eee0 <check_add_mapping>
    f274:	4c 8b 1d 0d 8d 20 00 	mov    r11,QWORD PTR [rip+0x208d0d]        # 217f88 <_DYNAMIC+0x238>
    f27b:	44 8b 95 58 ff ff ff 	mov    r10d,DWORD PTR [rbp-0xa8]
    f282:	49 89 c5             	mov    r13,rax
    f285:	49 83 fd ff          	cmp    r13,0xffffffffffffffff
    f289:	b8 00 00 00 00       	mov    eax,0x0
    f28e:	44 89 d7             	mov    edi,r10d
    f291:	4c 0f 44 e8          	cmove  r13,rax
    f295:	64 41 8b 1b          	mov    ebx,DWORD PTR fs:[r11]
    f299:	4c 89 9d 58 ff ff ff 	mov    QWORD PTR [rbp-0xa8],r11
    f2a0:	e8 ab 12 00 00       	call   10550 <__close>
    f2a5:	4c 8b 9d 58 ff ff ff 	mov    r11,QWORD PTR [rbp-0xa8]
    f2ac:	4c 89 e8             	mov    rax,r13
    f2af:	64 41 89 1b          	mov    DWORD PTR fs:[r11],ebx
    f2b3:	48 8d 65 d8          	lea    rsp,[rbp-0x28]
    f2b7:	5b                   	pop    rbx
    f2b8:	41 5c                	pop    r12
    f2ba:	41 5d                	pop    r13
    f2bc:	41 5e                	pop    r14
    f2be:	41 5f                	pop    r15
    f2c0:	5d                   	pop    rbp
    f2c1:	c3                   	ret    
    f2c2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    f2c8:	44 89 f6             	mov    esi,r14d
    f2cb:	31 c0                	xor    eax,eax
    f2cd:	83 e6 40             	and    esi,0x40
    f2d0:	0f 84 e8 fe ff ff    	je     f1be <sem_open+0x8e>
    f2d6:	4c 8b 1d ab 8c 20 00 	mov    r11,QWORD PTR [rip+0x208cab]        # 217f88 <_DYNAMIC+0x238>
    f2dd:	64 41 83 3b 02       	cmp    DWORD PTR fs:[r11],0x2
    f2e2:	0f 85 d6 fe ff ff    	jne    f1be <sem_open+0x8e>
    f2e8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    f2ef:	00 
    f2f0:	48 8d 45 10          	lea    rax,[rbp+0x10]
    f2f4:	c7 85 68 ff ff ff 18 	mov    DWORD PTR [rbp-0x98],0x18
    f2fb:	00 00 00 
    f2fe:	48 89 85 70 ff ff ff 	mov    QWORD PTR [rbp-0x90],rax
    f305:	48 8d 45 a0          	lea    rax,[rbp-0x60]
    f309:	8b 48 10             	mov    ecx,DWORD PTR [rax+0x10]
    f30c:	48 89 85 78 ff ff ff 	mov    QWORD PTR [rbp-0x88],rax
    f313:	8b 40 18             	mov    eax,DWORD PTR [rax+0x18]
    f316:	89 8d 50 ff ff ff    	mov    DWORD PTR [rbp-0xb0],ecx
    f31c:	85 c0                	test   eax,eax
    f31e:	0f 88 02 02 00 00    	js     f526 <sem_open+0x3f6>
    f324:	48 8b 95 60 ff ff ff 	mov    rdx,QWORD PTR [rbp-0xa0]
    f32b:	48 89 45 80          	mov    QWORD PTR [rbp-0x80],rax
    f32f:	48 8d 45 80          	lea    rax,[rbp-0x80]
    f333:	4c 89 fe             	mov    rsi,r15
    f336:	c7 45 88 80 00 00 00 	mov    DWORD PTR [rbp-0x78],0x80
    f33d:	48 c7 45 90 00 00 00 	mov    QWORD PTR [rbp-0x70],0x0
    f344:	00 
    f345:	48 89 85 38 ff ff ff 	mov    QWORD PTR [rbp-0xc8],rax
    f34c:	48 c7 45 98 00 00 00 	mov    QWORD PTR [rbp-0x68],0x0
    f353:	00 
    f354:	48 8d 42 29          	lea    rax,[rdx+0x29]
    f358:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
    f35c:	48 29 c4             	sub    rsp,rax
    f35f:	4c 8d 74 24 0f       	lea    r14,[rsp+0xf]
    f364:	49 83 e6 f0          	and    r14,0xfffffffffffffff0
    f368:	4c 89 f7             	mov    rdi,r14
    f36b:	e8 f0 62 ff ff       	call   5660 <__mempcpy@plt>
    f370:	c7 85 48 ff ff ff 32 	mov    DWORD PTR [rbp-0xb8],0x32
    f377:	00 00 00 
    f37a:	49 89 c5             	mov    r13,rax
    f37d:	eb 39                	jmp    f3b8 <sem_open+0x288>
    f37f:	90                   	nop
    f380:	8b 95 50 ff ff ff    	mov    edx,DWORD PTR [rbp-0xb0]
    f386:	31 c0                	xor    eax,eax
    f388:	be c2 00 00 00       	mov    esi,0xc2
    f38d:	4c 89 f7             	mov    rdi,r14
    f390:	e8 bb 18 00 00       	call   10c50 <__open>
    f395:	83 f8 ff             	cmp    eax,0xffffffff
    f398:	41 89 c2             	mov    r10d,eax
    f39b:	4c 8b 1d e6 8b 20 00 	mov    r11,QWORD PTR [rip+0x208be6]        # 217f88 <_DYNAMIC+0x238>
    f3a2:	75 4f                	jne    f3f3 <sem_open+0x2c3>
    f3a4:	64 41 83 3b 11       	cmp    DWORD PTR fs:[r11],0x11
    f3a9:	75 31                	jne    f3dc <sem_open+0x2ac>
    f3ab:	83 ad 48 ff ff ff 01 	sub    DWORD PTR [rbp-0xb8],0x1
    f3b2:	0f 84 5f 01 00 00    	je     f517 <sem_open+0x3e7>
    f3b8:	b8 58 58 00 00       	mov    eax,0x5858
    f3bd:	41 c7 45 00 58 58 58 	mov    DWORD PTR [r13+0x0],0x58585858
    f3c4:	58 
    f3c5:	41 c6 45 06 00       	mov    BYTE PTR [r13+0x6],0x0
    f3ca:	66 41 89 45 04       	mov    WORD PTR [r13+0x4],ax
    f3cf:	4c 89 f7             	mov    rdi,r14
    f3d2:	e8 49 65 ff ff       	call   5920 <__mktemp@plt>
    f3d7:	48 85 c0             	test   rax,rax
    f3da:	75 a4                	jne    f380 <sem_open+0x250>
    f3dc:	31 c0                	xor    eax,eax
    f3de:	e9 db fd ff ff       	jmp    f1be <sem_open+0x8e>
    f3e3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    f3e8:	64 41 83 3b 04       	cmp    DWORD PTR fs:[r11],0x4
    f3ed:	0f 85 d5 00 00 00    	jne    f4c8 <sem_open+0x398>
    f3f3:	48 8b b5 38 ff ff ff 	mov    rsi,QWORD PTR [rbp-0xc8]
    f3fa:	44 89 d7             	mov    edi,r10d
    f3fd:	ba 20 00 00 00       	mov    edx,0x20
    f402:	4c 89 9d 48 ff ff ff 	mov    QWORD PTR [rbp-0xb8],r11
    f409:	44 89 95 50 ff ff ff 	mov    DWORD PTR [rbp-0xb0],r10d
    f410:	e8 7b 10 00 00       	call   10490 <__write>
    f415:	48 83 f8 ff          	cmp    rax,0xffffffffffffffff
    f419:	44 8b 95 50 ff ff ff 	mov    r10d,DWORD PTR [rbp-0xb0]
    f420:	4c 8b 9d 48 ff ff ff 	mov    r11,QWORD PTR [rbp-0xb8]
    f427:	74 bf                	je     f3e8 <sem_open+0x2b8>
    f429:	48 83 f8 20          	cmp    rax,0x20
    f42d:	0f 85 95 00 00 00    	jne    f4c8 <sem_open+0x398>
    f433:	45 31 c9             	xor    r9d,r9d
    f436:	45 89 d0             	mov    r8d,r10d
    f439:	31 ff                	xor    edi,edi
    f43b:	b9 01 00 00 00       	mov    ecx,0x1
    f440:	ba 03 00 00 00       	mov    edx,0x3
    f445:	be 20 00 00 00       	mov    esi,0x20
    f44a:	4c 89 9d 48 ff ff ff 	mov    QWORD PTR [rbp-0xb8],r11
    f451:	44 89 95 50 ff ff ff 	mov    DWORD PTR [rbp-0xb0],r10d
    f458:	e8 43 62 ff ff       	call   56a0 <mmap@plt>
    f45d:	48 83 f8 ff          	cmp    rax,0xffffffffffffffff
    f461:	49 89 c5             	mov    r13,rax
    f464:	44 8b 95 50 ff ff ff 	mov    r10d,DWORD PTR [rbp-0xb0]
    f46b:	4c 8b 9d 48 ff ff ff 	mov    r11,QWORD PTR [rbp-0xb8]
    f472:	74 57                	je     f4cb <sem_open+0x39b>
    f474:	48 8b b5 40 ff ff ff 	mov    rsi,QWORD PTR [rbp-0xc0]
    f47b:	4c 89 f7             	mov    rdi,r14
    f47e:	e8 0d 65 ff ff       	call   5990 <link@plt>
    f483:	85 c0                	test   eax,eax
    f485:	44 8b 95 50 ff ff ff 	mov    r10d,DWORD PTR [rbp-0xb0]
    f48c:	4c 8b 9d 48 ff ff ff 	mov    r11,QWORD PTR [rbp-0xb8]
    f493:	0f 84 a2 00 00 00    	je     f53b <sem_open+0x40b>
    f499:	be 20 00 00 00       	mov    esi,0x20
    f49e:	4c 89 ef             	mov    rdi,r13
    f4a1:	e8 2a 64 ff ff       	call   58d0 <munmap@plt>
    f4a6:	f6 85 58 ff ff ff 80 	test   BYTE PTR [rbp-0xa8],0x80
    f4ad:	44 8b 95 50 ff ff ff 	mov    r10d,DWORD PTR [rbp-0xb0]
    f4b4:	4c 8b 9d 48 ff ff ff 	mov    r11,QWORD PTR [rbp-0xb8]
    f4bb:	75 0b                	jne    f4c8 <sem_open+0x398>
    f4bd:	64 41 83 3b 11       	cmp    DWORD PTR fs:[r11],0x11
    f4c2:	0f 84 a8 00 00 00    	je     f570 <sem_open+0x440>
    f4c8:	45 31 ed             	xor    r13d,r13d
    f4cb:	4c 89 f7             	mov    rdi,r14
    f4ce:	4c 89 9d 50 ff ff ff 	mov    QWORD PTR [rbp-0xb0],r11
    f4d5:	44 89 95 58 ff ff ff 	mov    DWORD PTR [rbp-0xa8],r10d
    f4dc:	e8 0f 61 ff ff       	call   55f0 <unlink@plt>
    f4e1:	44 8b 95 58 ff ff ff 	mov    r10d,DWORD PTR [rbp-0xa8]
    f4e8:	4c 8b 9d 50 ff ff ff 	mov    r11,QWORD PTR [rbp-0xb0]
    f4ef:	e9 91 fd ff ff       	jmp    f285 <sem_open+0x155>
    f4f4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    f4f8:	48 8b 05 89 8a 20 00 	mov    rax,QWORD PTR [rip+0x208a89]        # 217f88 <_DYNAMIC+0x238>
    f4ff:	64 c7 00 26 00 00 00 	mov    DWORD PTR fs:[rax],0x26
    f506:	48 8d 65 d8          	lea    rsp,[rbp-0x28]
    f50a:	31 c0                	xor    eax,eax
    f50c:	5b                   	pop    rbx
    f50d:	41 5c                	pop    r12
    f50f:	41 5d                	pop    r13
    f511:	41 5e                	pop    r14
    f513:	41 5f                	pop    r15
    f515:	5d                   	pop    rbp
    f516:	c3                   	ret    
    f517:	64 41 c7 03 0b 00 00 	mov    DWORD PTR fs:[r11],0xb
    f51e:	00 
    f51f:	31 c0                	xor    eax,eax
    f521:	e9 98 fc ff ff       	jmp    f1be <sem_open+0x8e>
    f526:	48 8b 05 5b 8a 20 00 	mov    rax,QWORD PTR [rip+0x208a5b]        # 217f88 <_DYNAMIC+0x238>
    f52d:	64 c7 00 16 00 00 00 	mov    DWORD PTR fs:[rax],0x16
    f534:	31 c0                	xor    eax,eax
    f536:	e9 83 fc ff ff       	jmp    f1be <sem_open+0x8e>
    f53b:	4c 89 e9             	mov    rcx,r13
    f53e:	44 89 d2             	mov    edx,r10d
    f541:	4c 89 e6             	mov    rsi,r12
    f544:	48 89 df             	mov    rdi,rbx
    f547:	4c 89 9d 50 ff ff ff 	mov    QWORD PTR [rbp-0xb0],r11
    f54e:	44 89 95 58 ff ff ff 	mov    DWORD PTR [rbp-0xa8],r10d
    f555:	e8 86 f9 ff ff       	call   eee0 <check_add_mapping>
    f55a:	4c 8b 9d 50 ff ff ff 	mov    r11,QWORD PTR [rbp-0xb0]
    f561:	49 89 c5             	mov    r13,rax
    f564:	44 8b 95 58 ff ff ff 	mov    r10d,DWORD PTR [rbp-0xa8]
    f56b:	e9 5b ff ff ff       	jmp    f4cb <sem_open+0x39b>
    f570:	4c 89 f7             	mov    rdi,r14
    f573:	e8 78 60 ff ff       	call   55f0 <unlink@plt>
    f578:	44 8b 95 50 ff ff ff 	mov    r10d,DWORD PTR [rbp-0xb0]
    f57f:	44 89 d7             	mov    edi,r10d
    f582:	e8 c9 0f 00 00       	call   10550 <__close>
    f587:	e9 aa fc ff ff       	jmp    f236 <sem_open+0x106>
    f58c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

000000000000f590 <walker>:
    f590:	48 8b 07             	mov    rax,QWORD PTR [rdi]
    f593:	48 8b 15 a6 cd 20 00 	mov    rdx,QWORD PTR [rip+0x20cda6]        # 21c340 <the_sem>
    f59a:	48 39 50 18          	cmp    QWORD PTR [rax+0x18],rdx
    f59e:	74 08                	je     f5a8 <walker+0x18>
    f5a0:	f3 c3                	repz ret 
    f5a2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    f5a8:	48 89 05 89 cd 20 00 	mov    QWORD PTR [rip+0x20cd89],rax        # 21c338 <rec>
    f5af:	c3                   	ret    

000000000000f5b0 <sem_close>:
    f5b0:	53                   	push   rbx
    f5b1:	48 89 fa             	mov    rdx,rdi
    f5b4:	be 01 00 00 00       	mov    esi,0x1
    f5b9:	31 c0                	xor    eax,eax
    f5bb:	f0 0f b1 35 6d cd 20 	lock cmpxchg DWORD PTR [rip+0x20cd6d],esi        # 21c330 <__sem_mappings_lock>
    f5c2:	00 
    f5c3:	74 1a                	je     f5df <sem_close+0x2f>
    f5c5:	48 8d 3d 64 cd 20 00 	lea    rdi,[rip+0x20cd64]        # 21c330 <__sem_mappings_lock>
    f5cc:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    f5d3:	e8 48 0c 00 00       	call   10220 <__lll_lock_wait_private>
    f5d8:	48 81 c4 80 00 00 00 	add    rsp,0x80
    f5df:	48 8b 3d 2a ce 20 00 	mov    rdi,QWORD PTR [rip+0x20ce2a]        # 21c410 <__sem_mappings>
    f5e6:	48 8d 35 a3 ff ff ff 	lea    rsi,[rip+0xffffffffffffffa3]        # f590 <walker>
    f5ed:	48 c7 05 40 cd 20 00 	mov    QWORD PTR [rip+0x20cd40],0x0        # 21c338 <rec>
    f5f4:	00 00 00 00 
    f5f8:	48 89 15 41 cd 20 00 	mov    QWORD PTR [rip+0x20cd41],rdx        # 21c340 <the_sem>
    f5ff:	e8 2c 63 ff ff       	call   5930 <__twalk@plt>
    f604:	48 8b 3d 2d cd 20 00 	mov    rdi,QWORD PTR [rip+0x20cd2d]        # 21c338 <rec>
    f60b:	48 85 ff             	test   rdi,rdi
    f60e:	74 78                	je     f688 <sem_close+0xd8>
    f610:	8b 47 10             	mov    eax,DWORD PTR [rdi+0x10]
    f613:	31 db                	xor    ebx,ebx
    f615:	83 e8 01             	sub    eax,0x1
    f618:	85 c0                	test   eax,eax
    f61a:	89 47 10             	mov    DWORD PTR [rdi+0x10],eax
    f61d:	74 31                	je     f650 <sem_close+0xa0>
    f61f:	f0 ff 0d 0a cd 20 00 	lock dec DWORD PTR [rip+0x20cd0a]        # 21c330 <__sem_mappings_lock>
    f626:	74 1a                	je     f642 <sem_close+0x92>
    f628:	48 8d 3d 01 cd 20 00 	lea    rdi,[rip+0x20cd01]        # 21c330 <__sem_mappings_lock>
    f62f:	48 81 ec 80 00 00 00 	sub    rsp,0x80
    f636:	e8 95 0c 00 00       	call   102d0 <__lll_unlock_wake_private>
    f63b:	48 81 c4 80 00 00 00 	add    rsp,0x80
    f642:	89 d8                	mov    eax,ebx
    f644:	5b                   	pop    rbx
    f645:	c3                   	ret    
    f646:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    f64d:	00 00 00 
    f650:	48 8d 15 a9 fa ff ff 	lea    rdx,[rip+0xfffffffffffffaa9]        # f100 <__sem_search>
    f657:	48 8d 35 b2 cd 20 00 	lea    rsi,[rip+0x20cdb2]        # 21c410 <__sem_mappings>
    f65e:	e8 9d 61 ff ff       	call   5800 <__tdelete@plt>
    f663:	48 8b 05 ce cc 20 00 	mov    rax,QWORD PTR [rip+0x20ccce]        # 21c338 <rec>
    f66a:	be 20 00 00 00       	mov    esi,0x20
    f66f:	48 8b 78 18          	mov    rdi,QWORD PTR [rax+0x18]
    f673:	e8 58 62 ff ff       	call   58d0 <munmap@plt>
    f678:	48 8b 3d b9 cc 20 00 	mov    rdi,QWORD PTR [rip+0x20ccb9]        # 21c338 <rec>
    f67f:	89 c3                	mov    ebx,eax
    f681:	e8 3a 5f ff ff       	call   55c0 <free@plt>
    f686:	eb 97                	jmp    f61f <sem_close+0x6f>
    f688:	48 8b 05 f9 88 20 00 	mov    rax,QWORD PTR [rip+0x2088f9]        # 217f88 <_DYNAMIC+0x238>
    f68f:	bb ff ff ff ff       	mov    ebx,0xffffffff
    f694:	64 c7 00 16 00 00 00 	mov    DWORD PTR fs:[rax],0x16
    f69b:	eb 82                	jmp    f61f <sem_close+0x6f>
    f69d:	0f 1f 00             	nop    DWORD PTR [rax]

000000000000f6a0 <sem_unlink>:
    f6a0:	55                   	push   rbp
    f6a1:	48 89 e5             	mov    rbp,rsp
    f6a4:	41 56                	push   r14
    f6a6:	41 55                	push   r13
    f6a8:	41 54                	push   r12
    f6aa:	53                   	push   rbx
    f6ab:	48 89 fb             	mov    rbx,rdi
    f6ae:	48 8d 7d d8          	lea    rdi,[rbp-0x28]
    f6b2:	48 83 ec 10          	sub    rsp,0x10
    f6b6:	e8 85 f7 ff ff       	call   ee40 <__shm_directory>
    f6bb:	48 85 c0             	test   rax,rax
    f6be:	0f 84 ec 00 00 00    	je     f7b0 <sem_unlink+0x110>
    f6c4:	80 3b 2f             	cmp    BYTE PTR [rbx],0x2f
    f6c7:	49 89 c6             	mov    r14,rax
    f6ca:	75 0d                	jne    f6d9 <sem_unlink+0x39>
    f6cc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    f6d0:	48 83 c3 01          	add    rbx,0x1
    f6d4:	80 3b 2f             	cmp    BYTE PTR [rbx],0x2f
    f6d7:	74 f7                	je     f6d0 <sem_unlink+0x30>
    f6d9:	48 89 df             	mov    rdi,rbx
    f6dc:	e8 9f 5f ff ff       	call   5680 <strlen@plt>
    f6e1:	4c 8d 60 01          	lea    r12,[rax+0x1]
    f6e5:	49 83 fc 01          	cmp    r12,0x1
    f6e9:	0f 84 a1 00 00 00    	je     f790 <sem_unlink+0xf0>
    f6ef:	49 81 fc fe 00 00 00 	cmp    r12,0xfe
    f6f6:	0f 87 94 00 00 00    	ja     f790 <sem_unlink+0xf0>
    f6fc:	be 2f 00 00 00       	mov    esi,0x2f
    f701:	48 89 df             	mov    rdi,rbx
    f704:	e8 a7 5f ff ff       	call   56b0 <strchr@plt>
    f709:	48 85 c0             	test   rax,rax
    f70c:	0f 85 7e 00 00 00    	jne    f790 <sem_unlink+0xf0>
    f712:	48 8b 55 d8          	mov    rdx,QWORD PTR [rbp-0x28]
    f716:	4c 89 f6             	mov    rsi,r14
    f719:	49 8d 44 14 22       	lea    rax,[r12+rdx*1+0x22]
    f71e:	48 83 e0 f0          	and    rax,0xfffffffffffffff0
    f722:	48 29 c4             	sub    rsp,rax
    f725:	4c 8d 6c 24 0f       	lea    r13,[rsp+0xf]
    f72a:	49 83 e5 f0          	and    r13,0xfffffffffffffff0
    f72e:	4c 89 ef             	mov    rdi,r13
    f731:	e8 2a 5f ff ff       	call   5660 <__mempcpy@plt>
    f736:	48 8d 35 95 3d 00 00 	lea    rsi,[rip+0x3d95]        # 134d2 <defaultdir+0xa>
    f73d:	ba 04 00 00 00       	mov    edx,0x4
    f742:	48 89 c7             	mov    rdi,rax
    f745:	e8 16 5f ff ff       	call   5660 <__mempcpy@plt>
    f74a:	4c 89 e2             	mov    rdx,r12
    f74d:	48 89 de             	mov    rsi,rbx
    f750:	48 89 c7             	mov    rdi,rax
    f753:	e8 08 5f ff ff       	call   5660 <__mempcpy@plt>
    f758:	4c 89 ef             	mov    rdi,r13
    f75b:	e8 90 5e ff ff       	call   55f0 <unlink@plt>
    f760:	85 c0                	test   eax,eax
    f762:	78 14                	js     f778 <sem_unlink+0xd8>
    f764:	48 8d 65 e0          	lea    rsp,[rbp-0x20]
    f768:	5b                   	pop    rbx
    f769:	41 5c                	pop    r12
    f76b:	41 5d                	pop    r13
    f76d:	41 5e                	pop    r14
    f76f:	5d                   	pop    rbp
    f770:	c3                   	ret    
    f771:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    f778:	48 8b 15 09 88 20 00 	mov    rdx,QWORD PTR [rip+0x208809]        # 217f88 <_DYNAMIC+0x238>
    f77f:	64 83 3a 01          	cmp    DWORD PTR fs:[rdx],0x1
    f783:	75 df                	jne    f764 <sem_unlink+0xc4>
    f785:	64 c7 02 0d 00 00 00 	mov    DWORD PTR fs:[rdx],0xd
    f78c:	eb d6                	jmp    f764 <sem_unlink+0xc4>
    f78e:	66 90                	xchg   ax,ax
    f790:	48 8b 05 f1 87 20 00 	mov    rax,QWORD PTR [rip+0x2087f1]        # 217f88 <_DYNAMIC+0x238>
    f797:	64 c7 00 02 00 00 00 	mov    DWORD PTR fs:[rax],0x2
    f79e:	48 8d 65 e0          	lea    rsp,[rbp-0x20]
    f7a2:	b8 ff ff ff ff       	mov    eax,0xffffffff
    f7a7:	5b                   	pop    rbx
    f7a8:	41 5c                	pop    r12
    f7aa:	41 5d                	pop    r13
    f7ac:	41 5e                	pop    r14
    f7ae:	5d                   	pop    rbp
    f7af:	c3                   	ret    
    f7b0:	48 8b 05 d1 87 20 00 	mov    rax,QWORD PTR [rip+0x2087d1]        # 217f88 <_DYNAMIC+0x238>
    f7b7:	64 c7 00 26 00 00 00 	mov    DWORD PTR fs:[rax],0x26
    f7be:	48 8d 65 e0          	lea    rsp,[rbp-0x20]
    f7c2:	b8 ff ff ff ff       	mov    eax,0xffffffff
    f7c7:	5b                   	pop    rbx
    f7c8:	41 5c                	pop    r12
    f7ca:	41 5d                	pop    r13
    f7cc:	41 5e                	pop    r14
    f7ce:	5d                   	pop    rbp
    f7cf:	c3                   	ret    

000000000000f7d0 <sem_getvalue@@GLIBC_2.2.5>:
    f7d0:	48 8b 07             	mov    rax,QWORD PTR [rdi]
    f7d3:	89 06                	mov    DWORD PTR [rsi],eax
    f7d5:	31 c0                	xor    eax,eax
    f7d7:	c3                   	ret    
    f7d8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    f7df:	00 

000000000000f7e0 <__sem_wait_cleanup>:
    f7e0:	48 b8 00 00 00 00 ff 	movabs rax,0xffffffff00000000
    f7e7:	ff ff ff 
    f7ea:	f0 48 01 07          	lock add QWORD PTR [rdi],rax
    f7ee:	c3                   	ret    
    f7ef:	90                   	nop

000000000000f7f0 <do_futex_wait.constprop.3>:
    f7f0:	41 54                	push   r12
    f7f2:	55                   	push   rbp
    f7f3:	48 89 fd             	mov    rbp,rdi
    f7f6:	53                   	push   rbx
    f7f7:	48 83 ec 10          	sub    rsp,0x10
    f7fb:	8b 5f 08             	mov    ebx,DWORD PTR [rdi+0x8]
    f7fe:	e8 5d 09 00 00       	call   10160 <__pthread_enable_asynccancel>
    f803:	41 b9 ff ff ff ff    	mov    r9d,0xffffffff
    f809:	41 89 c4             	mov    r12d,eax
    f80c:	45 31 c0             	xor    r8d,r8d
    f80f:	81 f3 89 01 00 00    	xor    ebx,0x189
    f815:	45 31 d2             	xor    r10d,r10d
    f818:	31 d2                	xor    edx,edx
    f81a:	48 63 f3             	movsxd rsi,ebx
    f81d:	48 89 ef             	mov    rdi,rbp
    f820:	b8 ca 00 00 00       	mov    eax,0xca
    f825:	0f 05                	syscall 
    f827:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    f82d:	77 19                	ja     f848 <do_futex_wait.constprop.3+0x58>
    f82f:	44 89 e7             	mov    edi,r12d
    f832:	e8 89 09 00 00       	call   101c0 <__pthread_disable_asynccancel>
    f837:	31 c0                	xor    eax,eax
    f839:	48 83 c4 10          	add    rsp,0x10
    f83d:	5b                   	pop    rbx
    f83e:	5d                   	pop    rbp
    f83f:	41 5c                	pop    r12
    f841:	c3                   	ret    
    f842:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    f848:	44 89 e7             	mov    edi,r12d
    f84b:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    f850:	e8 6b 09 00 00       	call   101c0 <__pthread_disable_asynccancel>
    f855:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
    f85a:	83 f8 f5             	cmp    eax,0xfffffff5
    f85d:	74 19                	je     f878 <do_futex_wait.constprop.3+0x88>
    f85f:	83 f8 fc             	cmp    eax,0xfffffffc
    f862:	74 14                	je     f878 <do_futex_wait.constprop.3+0x88>
    f864:	83 f8 92             	cmp    eax,0xffffff92
    f867:	74 0f                	je     f878 <do_futex_wait.constprop.3+0x88>
    f869:	48 8d 3d 70 32 00 00 	lea    rdi,[rip+0x3270]        # 12ae0 <_fini+0xc>
    f870:	e8 bb 5d ff ff       	call   5630 <__libc_fatal@plt>
    f875:	0f 1f 00             	nop    DWORD PTR [rax]
    f878:	f7 d8                	neg    eax
    f87a:	eb bd                	jmp    f839 <do_futex_wait.constprop.3+0x49>
    f87c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

000000000000f880 <__new_sem_wait_slow.constprop.0>:
    f880:	41 54                	push   r12
    f882:	55                   	push   rbp
    f883:	48 b8 00 00 00 00 01 	movabs rax,0x100000000
    f88a:	00 00 00 
    f88d:	53                   	push   rbx
    f88e:	48 89 fb             	mov    rbx,rdi
    f891:	48 83 ec 30          	sub    rsp,0x30
    f895:	f0 48 0f c1 07       	lock xadd QWORD PTR [rdi],rax
    f89a:	48 8d 35 3f ff ff ff 	lea    rsi,[rip+0xffffffffffffff3f]        # f7e0 <__sem_wait_cleanup>
    f8a1:	48 bd ff ff ff ff fe 	movabs rbp,0xfffffffeffffffff
    f8a8:	ff ff ff 
    f8ab:	4c 8d 64 24 10       	lea    r12,[rsp+0x10]
    f8b0:	48 89 fa             	mov    rdx,rdi
    f8b3:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    f8b8:	4c 89 e7             	mov    rdi,r12
    f8bb:	e8 d0 04 00 00       	call   fd90 <_pthread_cleanup_push>
    f8c0:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
    f8c5:	0f 1f 00             	nop    DWORD PTR [rax]
    f8c8:	85 c0                	test   eax,eax
    f8ca:	75 1e                	jne    f8ea <__new_sem_wait_slow.constprop.0+0x6a>
    f8cc:	48 89 df             	mov    rdi,rbx
    f8cf:	e8 1c ff ff ff       	call   f7f0 <do_futex_wait.constprop.3>
    f8d4:	83 f8 6e             	cmp    eax,0x6e
    f8d7:	74 47                	je     f920 <__new_sem_wait_slow.constprop.0+0xa0>
    f8d9:	83 f8 04             	cmp    eax,0x4
    f8dc:	74 42                	je     f920 <__new_sem_wait_slow.constprop.0+0xa0>
    f8de:	48 8b 03             	mov    rax,QWORD PTR [rbx]
    f8e1:	85 c0                	test   eax,eax
    f8e3:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    f8e8:	74 e2                	je     f8cc <__new_sem_wait_slow.constprop.0+0x4c>
    f8ea:	48 8d 14 28          	lea    rdx,[rax+rbp*1]
    f8ee:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
    f8f3:	f0 48 0f b1 13       	lock cmpxchg QWORD PTR [rbx],rdx
    f8f8:	75 1e                	jne    f918 <__new_sem_wait_slow.constprop.0+0x98>
    f8fa:	31 db                	xor    ebx,ebx
    f8fc:	4c 89 e7             	mov    rdi,r12
    f8ff:	31 f6                	xor    esi,esi
    f901:	e8 aa 04 00 00       	call   fdb0 <_pthread_cleanup_pop>
    f906:	48 83 c4 30          	add    rsp,0x30
    f90a:	89 d8                	mov    eax,ebx
    f90c:	5b                   	pop    rbx
    f90d:	5d                   	pop    rbp
    f90e:	41 5c                	pop    r12
    f910:	c3                   	ret    
    f911:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    f918:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    f91d:	eb a9                	jmp    f8c8 <__new_sem_wait_slow.constprop.0+0x48>
    f91f:	90                   	nop
    f920:	48 8b 15 61 86 20 00 	mov    rdx,QWORD PTR [rip+0x208661]        # 217f88 <_DYNAMIC+0x238>
    f927:	64 89 02             	mov    DWORD PTR fs:[rdx],eax
    f92a:	48 b8 00 00 00 00 ff 	movabs rax,0xffffffff00000000
    f931:	ff ff ff 
    f934:	f0 48 01 03          	lock add QWORD PTR [rbx],rax
    f938:	bb ff ff ff ff       	mov    ebx,0xffffffff
    f93d:	eb bd                	jmp    f8fc <__new_sem_wait_slow.constprop.0+0x7c>
    f93f:	90                   	nop

000000000000f940 <sem_wait@@GLIBC_2.2.5>:
    f940:	48 83 ec 18          	sub    rsp,0x18
    f944:	48 8b 07             	mov    rax,QWORD PTR [rdi]
    f947:	85 c0                	test   eax,eax
    f949:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    f94e:	74 25                	je     f975 <sem_wait@@GLIBC_2.2.5+0x35>
    f950:	48 8d 50 ff          	lea    rdx,[rax-0x1]
    f954:	f0 48 0f b1 17       	lock cmpxchg QWORD PTR [rdi],rdx
    f959:	48 89 c2             	mov    rdx,rax
    f95c:	b8 00 00 00 00       	mov    eax,0x0
    f961:	75 0d                	jne    f970 <sem_wait@@GLIBC_2.2.5+0x30>
    f963:	48 83 c4 18          	add    rsp,0x18
    f967:	c3                   	ret    
    f968:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    f96f:	00 
    f970:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
    f975:	e8 06 ff ff ff       	call   f880 <__new_sem_wait_slow.constprop.0>
    f97a:	48 83 c4 18          	add    rsp,0x18
    f97e:	c3                   	ret    
    f97f:	90                   	nop

000000000000f980 <sem_trywait@@GLIBC_2.2.5>:
    f980:	48 8b 07             	mov    rax,QWORD PTR [rdi]
    f983:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    f988:	85 c0                	test   eax,eax
    f98a:	48 89 44 24 f8       	mov    QWORD PTR [rsp-0x8],rax
    f98f:	74 17                	je     f9a8 <sem_trywait@@GLIBC_2.2.5+0x28>
    f991:	48 8d 50 ff          	lea    rdx,[rax-0x1]
    f995:	48 8b 44 24 f8       	mov    rax,QWORD PTR [rsp-0x8]
    f99a:	f0 48 0f b1 17       	lock cmpxchg QWORD PTR [rdi],rdx
    f99f:	75 e7                	jne    f988 <sem_trywait@@GLIBC_2.2.5+0x8>
    f9a1:	31 c0                	xor    eax,eax
    f9a3:	c3                   	ret    
    f9a4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    f9a8:	48 8b 05 d9 85 20 00 	mov    rax,QWORD PTR [rip+0x2085d9]        # 217f88 <_DYNAMIC+0x238>
    f9af:	64 c7 00 0b 00 00 00 	mov    DWORD PTR fs:[rax],0xb
    f9b6:	b8 ff ff ff ff       	mov    eax,0xffffffff
    f9bb:	c3                   	ret    
    f9bc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

000000000000f9c0 <__sem_wait_cleanup>:
    f9c0:	48 b8 00 00 00 00 ff 	movabs rax,0xffffffff00000000
    f9c7:	ff ff ff 
    f9ca:	f0 48 01 07          	lock add QWORD PTR [rdi],rax
    f9ce:	c3                   	ret    
    f9cf:	90                   	nop

000000000000f9d0 <do_futex_wait>:
    f9d0:	41 55                	push   r13
    f9d2:	41 54                	push   r12
    f9d4:	55                   	push   rbp
    f9d5:	53                   	push   rbx
    f9d6:	48 83 ec 18          	sub    rsp,0x18
    f9da:	48 85 f6             	test   rsi,rsi
    f9dd:	44 8b 67 08          	mov    r12d,DWORD PTR [rdi+0x8]
    f9e1:	75 55                	jne    fa38 <do_futex_wait+0x68>
    f9e3:	48 89 f3             	mov    rbx,rsi
    f9e6:	48 89 fd             	mov    rbp,rdi
    f9e9:	e8 72 07 00 00       	call   10160 <__pthread_enable_asynccancel>
    f9ee:	44 89 e6             	mov    esi,r12d
    f9f1:	41 89 c5             	mov    r13d,eax
    f9f4:	41 b9 ff ff ff ff    	mov    r9d,0xffffffff
    f9fa:	81 f6 89 01 00 00    	xor    esi,0x189
    fa00:	45 31 c0             	xor    r8d,r8d
    fa03:	49 89 da             	mov    r10,rbx
    fa06:	31 d2                	xor    edx,edx
    fa08:	48 63 f6             	movsxd rsi,esi
    fa0b:	48 89 ef             	mov    rdi,rbp
    fa0e:	b8 ca 00 00 00       	mov    eax,0xca
    fa13:	0f 05                	syscall 
    fa15:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    fa1b:	77 2b                	ja     fa48 <do_futex_wait+0x78>
    fa1d:	44 89 ef             	mov    edi,r13d
    fa20:	e8 9b 07 00 00       	call   101c0 <__pthread_disable_asynccancel>
    fa25:	31 c0                	xor    eax,eax
    fa27:	48 83 c4 18          	add    rsp,0x18
    fa2b:	5b                   	pop    rbx
    fa2c:	5d                   	pop    rbp
    fa2d:	41 5c                	pop    r12
    fa2f:	41 5d                	pop    r13
    fa31:	c3                   	ret    
    fa32:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    fa38:	48 83 3e 00          	cmp    QWORD PTR [rsi],0x0
    fa3c:	79 a5                	jns    f9e3 <do_futex_wait+0x13>
    fa3e:	b8 6e 00 00 00       	mov    eax,0x6e
    fa43:	eb e2                	jmp    fa27 <do_futex_wait+0x57>
    fa45:	0f 1f 00             	nop    DWORD PTR [rax]
    fa48:	44 89 ef             	mov    edi,r13d
    fa4b:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    fa50:	e8 6b 07 00 00       	call   101c0 <__pthread_disable_asynccancel>
    fa55:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
    fa5a:	83 f8 f5             	cmp    eax,0xfffffff5
    fa5d:	74 19                	je     fa78 <do_futex_wait+0xa8>
    fa5f:	83 f8 fc             	cmp    eax,0xfffffffc
    fa62:	74 14                	je     fa78 <do_futex_wait+0xa8>
    fa64:	83 f8 92             	cmp    eax,0xffffff92
    fa67:	74 0f                	je     fa78 <do_futex_wait+0xa8>
    fa69:	48 8d 3d 70 30 00 00 	lea    rdi,[rip+0x3070]        # 12ae0 <_fini+0xc>
    fa70:	e8 bb 5b ff ff       	call   5630 <__libc_fatal@plt>
    fa75:	0f 1f 00             	nop    DWORD PTR [rax]
    fa78:	f7 d8                	neg    eax
    fa7a:	eb ab                	jmp    fa27 <do_futex_wait+0x57>
    fa7c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

000000000000fa80 <__new_sem_wait_slow>:
    fa80:	41 55                	push   r13
    fa82:	41 54                	push   r12
    fa84:	48 b8 00 00 00 00 01 	movabs rax,0x100000000
    fa8b:	00 00 00 
    fa8e:	55                   	push   rbp
    fa8f:	53                   	push   rbx
    fa90:	49 89 f4             	mov    r12,rsi
    fa93:	48 89 fb             	mov    rbx,rdi
    fa96:	48 83 ec 38          	sub    rsp,0x38
    fa9a:	f0 48 0f c1 07       	lock xadd QWORD PTR [rdi],rax
    fa9f:	48 8d 35 1a ff ff ff 	lea    rsi,[rip+0xffffffffffffff1a]        # f9c0 <__sem_wait_cleanup>
    faa6:	48 bd ff ff ff ff fe 	movabs rbp,0xfffffffeffffffff
    faad:	ff ff ff 
    fab0:	4c 8d 6c 24 10       	lea    r13,[rsp+0x10]
    fab5:	48 89 fa             	mov    rdx,rdi
    fab8:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    fabd:	4c 89 ef             	mov    rdi,r13
    fac0:	e8 cb 02 00 00       	call   fd90 <_pthread_cleanup_push>
    fac5:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
    faca:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    fad0:	85 c0                	test   eax,eax
    fad2:	75 21                	jne    faf5 <__new_sem_wait_slow+0x75>
    fad4:	4c 89 e6             	mov    rsi,r12
    fad7:	48 89 df             	mov    rdi,rbx
    fada:	e8 f1 fe ff ff       	call   f9d0 <do_futex_wait>
    fadf:	83 f8 6e             	cmp    eax,0x6e
    fae2:	74 4c                	je     fb30 <__new_sem_wait_slow+0xb0>
    fae4:	83 f8 04             	cmp    eax,0x4
    fae7:	74 47                	je     fb30 <__new_sem_wait_slow+0xb0>
    fae9:	48 8b 03             	mov    rax,QWORD PTR [rbx]
    faec:	85 c0                	test   eax,eax
    faee:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    faf3:	74 df                	je     fad4 <__new_sem_wait_slow+0x54>
    faf5:	48 8d 14 28          	lea    rdx,[rax+rbp*1]
    faf9:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
    fafe:	f0 48 0f b1 13       	lock cmpxchg QWORD PTR [rbx],rdx
    fb03:	75 1b                	jne    fb20 <__new_sem_wait_slow+0xa0>
    fb05:	31 db                	xor    ebx,ebx
    fb07:	4c 89 ef             	mov    rdi,r13
    fb0a:	31 f6                	xor    esi,esi
    fb0c:	e8 9f 02 00 00       	call   fdb0 <_pthread_cleanup_pop>
    fb11:	48 83 c4 38          	add    rsp,0x38
    fb15:	89 d8                	mov    eax,ebx
    fb17:	5b                   	pop    rbx
    fb18:	5d                   	pop    rbp
    fb19:	41 5c                	pop    r12
    fb1b:	41 5d                	pop    r13
    fb1d:	c3                   	ret    
    fb1e:	66 90                	xchg   ax,ax
    fb20:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    fb25:	eb a9                	jmp    fad0 <__new_sem_wait_slow+0x50>
    fb27:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    fb2e:	00 00 
    fb30:	48 8b 15 51 84 20 00 	mov    rdx,QWORD PTR [rip+0x208451]        # 217f88 <_DYNAMIC+0x238>
    fb37:	64 89 02             	mov    DWORD PTR fs:[rdx],eax
    fb3a:	48 b8 00 00 00 00 ff 	movabs rax,0xffffffff00000000
    fb41:	ff ff ff 
    fb44:	f0 48 01 03          	lock add QWORD PTR [rbx],rax
    fb48:	bb ff ff ff ff       	mov    ebx,0xffffffff
    fb4d:	eb b8                	jmp    fb07 <__new_sem_wait_slow+0x87>
    fb4f:	90                   	nop

000000000000fb50 <sem_timedwait>:
    fb50:	48 81 7e 08 ff c9 9a 	cmp    QWORD PTR [rsi+0x8],0x3b9ac9ff
    fb57:	3b 
    fb58:	77 46                	ja     fba0 <sem_timedwait+0x50>
    fb5a:	48 83 ec 18          	sub    rsp,0x18
    fb5e:	48 8b 07             	mov    rax,QWORD PTR [rdi]
    fb61:	85 c0                	test   eax,eax
    fb63:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    fb68:	74 23                	je     fb8d <sem_timedwait+0x3d>
    fb6a:	48 8d 50 ff          	lea    rdx,[rax-0x1]
    fb6e:	f0 48 0f b1 17       	lock cmpxchg QWORD PTR [rdi],rdx
    fb73:	48 89 c2             	mov    rdx,rax
    fb76:	b8 00 00 00 00       	mov    eax,0x0
    fb7b:	75 0b                	jne    fb88 <sem_timedwait+0x38>
    fb7d:	48 83 c4 18          	add    rsp,0x18
    fb81:	c3                   	ret    
    fb82:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    fb88:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
    fb8d:	e8 ee fe ff ff       	call   fa80 <__new_sem_wait_slow>
    fb92:	48 83 c4 18          	add    rsp,0x18
    fb96:	c3                   	ret    
    fb97:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
    fb9e:	00 00 
    fba0:	48 8b 05 e1 83 20 00 	mov    rax,QWORD PTR [rip+0x2083e1]        # 217f88 <_DYNAMIC+0x238>
    fba7:	64 c7 00 16 00 00 00 	mov    DWORD PTR fs:[rax],0x16
    fbae:	b8 ff ff ff ff       	mov    eax,0xffffffff
    fbb3:	c3                   	ret    
    fbb4:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    fbbb:	00 00 00 
    fbbe:	66 90                	xchg   ax,ax

000000000000fbc0 <sem_post@@GLIBC_2.2.5>:
    fbc0:	48 83 ec 18          	sub    rsp,0x18
    fbc4:	8b 4f 08             	mov    ecx,DWORD PTR [rdi+0x8]
    fbc7:	48 8b 07             	mov    rax,QWORD PTR [rdi]
    fbca:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    fbd0:	3d ff ff ff 7f       	cmp    eax,0x7fffffff
    fbd5:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
    fbda:	74 44                	je     fc20 <sem_post@@GLIBC_2.2.5+0x60>
    fbdc:	48 8d 50 01          	lea    rdx,[rax+0x1]
    fbe0:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
    fbe5:	f0 48 0f b1 17       	lock cmpxchg QWORD PTR [rdi],rdx
    fbea:	75 e4                	jne    fbd0 <sem_post@@GLIBC_2.2.5+0x10>
    fbec:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
    fbf0:	85 c0                	test   eax,eax
    fbf2:	74 20                	je     fc14 <sem_post@@GLIBC_2.2.5+0x54>
    fbf4:	89 ce                	mov    esi,ecx
    fbf6:	45 31 d2             	xor    r10d,r10d
    fbf9:	ba 01 00 00 00       	mov    edx,0x1
    fbfe:	40 80 f6 81          	xor    sil,0x81
    fc02:	b8 ca 00 00 00       	mov    eax,0xca
    fc07:	48 63 f6             	movsxd rsi,esi
    fc0a:	0f 05                	syscall 
    fc0c:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
    fc12:	77 24                	ja     fc38 <sem_post@@GLIBC_2.2.5+0x78>
    fc14:	31 c0                	xor    eax,eax
    fc16:	eb 1b                	jmp    fc33 <sem_post@@GLIBC_2.2.5+0x73>
    fc18:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    fc1f:	00 
    fc20:	48 8b 05 61 83 20 00 	mov    rax,QWORD PTR [rip+0x208361]        # 217f88 <_DYNAMIC+0x238>
    fc27:	64 c7 00 4b 00 00 00 	mov    DWORD PTR fs:[rax],0x4b
    fc2e:	b8 ff ff ff ff       	mov    eax,0xffffffff
    fc33:	48 83 c4 18          	add    rsp,0x18
    fc37:	c3                   	ret    
    fc38:	83 f8 ea             	cmp    eax,0xffffffea
    fc3b:	74 d7                	je     fc14 <sem_post@@GLIBC_2.2.5+0x54>
    fc3d:	83 f8 f2             	cmp    eax,0xfffffff2
    fc40:	74 d2                	je     fc14 <sem_post@@GLIBC_2.2.5+0x54>
    fc42:	48 8d 3d 97 2e 00 00 	lea    rdi,[rip+0x2e97]        # 12ae0 <_fini+0xc>
    fc49:	e8 e2 59 ff ff       	call   5630 <__libc_fatal@plt>
    fc4e:	66 90                	xchg   ax,ax

000000000000fc50 <__pthread_register_cancel>:
    fc50:	64 48 8b 04 25 00 03 	mov    rax,QWORD PTR fs:0x300
    fc57:	00 00 
    fc59:	48 89 47 48          	mov    QWORD PTR [rdi+0x48],rax
    fc5d:	64 48 8b 04 25 f8 02 	mov    rax,QWORD PTR fs:0x2f8
    fc64:	00 00 
    fc66:	48 89 47 50          	mov    QWORD PTR [rdi+0x50],rax
    fc6a:	64 48 89 3c 25 00 03 	mov    QWORD PTR fs:0x300,rdi
    fc71:	00 00 
    fc73:	c3                   	ret    
    fc74:	66 90                	xchg   ax,ax
    fc76:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    fc7d:	00 00 00 

000000000000fc80 <__pthread_unregister_cancel>:
    fc80:	48 8b 47 48          	mov    rax,QWORD PTR [rdi+0x48]
    fc84:	64 48 89 04 25 00 03 	mov    QWORD PTR fs:0x300,rax
    fc8b:	00 00 
    fc8d:	c3                   	ret    
    fc8e:	66 90                	xchg   ax,ax

000000000000fc90 <__pthread_register_cancel_defer>:
    fc90:	64 48 8b 04 25 00 03 	mov    rax,QWORD PTR fs:0x300
    fc97:	00 00 
    fc99:	48 89 47 48          	mov    QWORD PTR [rdi+0x48],rax
    fc9d:	64 48 8b 04 25 f8 02 	mov    rax,QWORD PTR fs:0x2f8
    fca4:	00 00 
    fca6:	48 89 47 50          	mov    QWORD PTR [rdi+0x50],rax
    fcaa:	64 8b 14 25 08 03 00 	mov    edx,DWORD PTR fs:0x308
    fcb1:	00 
    fcb2:	89 d0                	mov    eax,edx
    fcb4:	83 e0 02             	and    eax,0x2
    fcb7:	75 1f                	jne    fcd8 <__pthread_register_cancel_defer+0x48>
    fcb9:	85 c0                	test   eax,eax
    fcbb:	0f 95 c0             	setne  al
    fcbe:	0f b6 c0             	movzx  eax,al
    fcc1:	89 47 58             	mov    DWORD PTR [rdi+0x58],eax
    fcc4:	64 48 89 3c 25 00 03 	mov    QWORD PTR fs:0x300,rdi
    fccb:	00 00 
    fccd:	c3                   	ret    
    fcce:	66 90                	xchg   ax,ax
    fcd0:	89 c2                	mov    edx,eax
    fcd2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    fcd8:	89 d1                	mov    ecx,edx
    fcda:	89 d0                	mov    eax,edx
    fcdc:	83 e1 fd             	and    ecx,0xfffffffd
    fcdf:	f0 64 0f b1 0c 25 08 	lock cmpxchg DWORD PTR fs:0x308,ecx
    fce6:	03 00 00 
    fce9:	39 c2                	cmp    edx,eax
    fceb:	75 e3                	jne    fcd0 <__pthread_register_cancel_defer+0x40>
    fced:	89 d0                	mov    eax,edx
    fcef:	83 e0 02             	and    eax,0x2
    fcf2:	eb c5                	jmp    fcb9 <__pthread_register_cancel_defer+0x29>
    fcf4:	66 90                	xchg   ax,ax
    fcf6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    fcfd:	00 00 00 

000000000000fd00 <__pthread_unregister_cancel_restore>:
    fd00:	48 8b 47 48          	mov    rax,QWORD PTR [rdi+0x48]
    fd04:	64 48 89 04 25 00 03 	mov    QWORD PTR fs:0x300,rax
    fd0b:	00 00 
    fd0d:	8b 57 58             	mov    edx,DWORD PTR [rdi+0x58]
    fd10:	85 d2                	test   edx,edx
    fd12:	74 32                	je     fd46 <__pthread_unregister_cancel_restore+0x46>
    fd14:	64 8b 14 25 08 03 00 	mov    edx,DWORD PTR fs:0x308
    fd1b:	00 
    fd1c:	f6 c2 02             	test   dl,0x2
    fd1f:	75 2f                	jne    fd50 <__pthread_unregister_cancel_restore+0x50>
    fd21:	89 d1                	mov    ecx,edx
    fd23:	89 d0                	mov    eax,edx
    fd25:	83 c9 02             	or     ecx,0x2
    fd28:	f0 64 0f b1 0c 25 08 	lock cmpxchg DWORD PTR fs:0x308,ecx
    fd2f:	03 00 00 
    fd32:	39 c2                	cmp    edx,eax
    fd34:	75 4a                	jne    fd80 <__pthread_unregister_cancel_restore+0x80>
    fd36:	64 8b 04 25 08 03 00 	mov    eax,DWORD PTR fs:0x308
    fd3d:	00 
    fd3e:	83 e0 b9             	and    eax,0xffffffb9
    fd41:	83 f8 08             	cmp    eax,0x8
    fd44:	74 0c                	je     fd52 <__pthread_unregister_cancel_restore+0x52>
    fd46:	f3 c3                	repz ret 
    fd48:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    fd4f:	00 
    fd50:	f3 c3                	repz ret 
    fd52:	50                   	push   rax
    fd53:	64 48 c7 04 25 30 06 	mov    QWORD PTR fs:0x630,0xffffffffffffffff
    fd5a:	00 00 ff ff ff ff 
    fd60:	f0 64 83 0c 25 08 03 	lock or DWORD PTR fs:0x308,0x10
    fd67:	00 00 10 
    fd6a:	64 48 8b 3c 25 00 03 	mov    rdi,QWORD PTR fs:0x300
    fd71:	00 00 
    fd73:	e8 b8 02 00 00       	call   10030 <__pthread_unwind>
    fd78:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    fd7f:	00 
    fd80:	89 c2                	mov    edx,eax
    fd82:	eb 9d                	jmp    fd21 <__pthread_unregister_cancel_restore+0x21>
    fd84:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    fd8b:	00 00 00 
    fd8e:	66 90                	xchg   ax,ax

000000000000fd90 <_pthread_cleanup_push>:
    fd90:	48 89 37             	mov    QWORD PTR [rdi],rsi
    fd93:	48 89 57 08          	mov    QWORD PTR [rdi+0x8],rdx
    fd97:	64 48 8b 04 25 f8 02 	mov    rax,QWORD PTR fs:0x2f8
    fd9e:	00 00 
    fda0:	48 89 47 18          	mov    QWORD PTR [rdi+0x18],rax
    fda4:	64 48 89 3c 25 f8 02 	mov    QWORD PTR fs:0x2f8,rdi
    fdab:	00 00 
    fdad:	c3                   	ret    
    fdae:	66 90                	xchg   ax,ax

000000000000fdb0 <_pthread_cleanup_pop>:
    fdb0:	48 8b 47 18          	mov    rax,QWORD PTR [rdi+0x18]
    fdb4:	64 48 89 04 25 f8 02 	mov    QWORD PTR fs:0x2f8,rax
    fdbb:	00 00 
    fdbd:	85 f6                	test   esi,esi
    fdbf:	75 07                	jne    fdc8 <_pthread_cleanup_pop+0x18>
    fdc1:	f3 c3                	repz ret 
    fdc3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
    fdc8:	48 8b 57 08          	mov    rdx,QWORD PTR [rdi+0x8]
    fdcc:	48 8b 07             	mov    rax,QWORD PTR [rdi]
    fdcf:	48 89 d7             	mov    rdi,rdx
    fdd2:	ff e0                	jmp    rax
    fdd4:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    fddb:	00 00 00 
    fdde:	66 90                	xchg   ax,ax

000000000000fde0 <_pthread_cleanup_push_defer>:
    fde0:	48 89 37             	mov    QWORD PTR [rdi],rsi
    fde3:	48 89 57 08          	mov    QWORD PTR [rdi+0x8],rdx
    fde7:	64 48 8b 04 25 f8 02 	mov    rax,QWORD PTR fs:0x2f8
    fdee:	00 00 
    fdf0:	48 89 47 18          	mov    QWORD PTR [rdi+0x18],rax
    fdf4:	64 8b 14 25 08 03 00 	mov    edx,DWORD PTR fs:0x308
    fdfb:	00 
    fdfc:	89 d0                	mov    eax,edx
    fdfe:	83 e0 02             	and    eax,0x2
    fe01:	75 25                	jne    fe28 <_pthread_cleanup_push_defer+0x48>
    fe03:	85 c0                	test   eax,eax
    fe05:	0f 95 c0             	setne  al
    fe08:	0f b6 c0             	movzx  eax,al
    fe0b:	89 47 10             	mov    DWORD PTR [rdi+0x10],eax
    fe0e:	64 48 89 3c 25 f8 02 	mov    QWORD PTR fs:0x2f8,rdi
    fe15:	00 00 
    fe17:	c3                   	ret    
    fe18:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    fe1f:	00 
    fe20:	89 c2                	mov    edx,eax
    fe22:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    fe28:	89 d1                	mov    ecx,edx
    fe2a:	89 d0                	mov    eax,edx
    fe2c:	83 e1 fd             	and    ecx,0xfffffffd
    fe2f:	f0 64 0f b1 0c 25 08 	lock cmpxchg DWORD PTR fs:0x308,ecx
    fe36:	03 00 00 
    fe39:	39 c2                	cmp    edx,eax
    fe3b:	75 e3                	jne    fe20 <_pthread_cleanup_push_defer+0x40>
    fe3d:	89 d0                	mov    eax,edx
    fe3f:	83 e0 02             	and    eax,0x2
    fe42:	eb bf                	jmp    fe03 <_pthread_cleanup_push_defer+0x23>
    fe44:	66 90                	xchg   ax,ax
    fe46:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    fe4d:	00 00 00 

000000000000fe50 <_pthread_cleanup_pop_restore>:
    fe50:	48 8b 47 18          	mov    rax,QWORD PTR [rdi+0x18]
    fe54:	64 48 89 04 25 f8 02 	mov    QWORD PTR fs:0x2f8,rax
    fe5b:	00 00 
    fe5d:	8b 57 10             	mov    edx,DWORD PTR [rdi+0x10]
    fe60:	85 d2                	test   edx,edx
    fe62:	75 1c                	jne    fe80 <_pthread_cleanup_pop_restore+0x30>
    fe64:	85 f6                	test   esi,esi
    fe66:	75 08                	jne    fe70 <_pthread_cleanup_pop_restore+0x20>
    fe68:	f3 c3                	repz ret 
    fe6a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
    fe70:	48 8b 57 08          	mov    rdx,QWORD PTR [rdi+0x8]
    fe74:	48 8b 07             	mov    rax,QWORD PTR [rdi]
    fe77:	48 89 d7             	mov    rdi,rdx
    fe7a:	ff e0                	jmp    rax
    fe7c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    fe80:	64 8b 14 25 08 03 00 	mov    edx,DWORD PTR fs:0x308
    fe87:	00 
    fe88:	f6 c2 02             	test   dl,0x2
    fe8b:	75 d7                	jne    fe64 <_pthread_cleanup_pop_restore+0x14>
    fe8d:	89 d1                	mov    ecx,edx
    fe8f:	89 d0                	mov    eax,edx
    fe91:	83 c9 02             	or     ecx,0x2
    fe94:	f0 64 0f b1 0c 25 08 	lock cmpxchg DWORD PTR fs:0x308,ecx
    fe9b:	03 00 00 
    fe9e:	39 c2                	cmp    edx,eax
    fea0:	75 3e                	jne    fee0 <_pthread_cleanup_pop_restore+0x90>
    fea2:	64 8b 04 25 08 03 00 	mov    eax,DWORD PTR fs:0x308
    fea9:	00 
    feaa:	83 e0 b9             	and    eax,0xffffffb9
    fead:	83 f8 08             	cmp    eax,0x8
    feb0:	75 b2                	jne    fe64 <_pthread_cleanup_pop_restore+0x14>
    feb2:	50                   	push   rax
    feb3:	64 48 c7 04 25 30 06 	mov    QWORD PTR fs:0x630,0xffffffffffffffff
    feba:	00 00 ff ff ff ff 
    fec0:	f0 64 83 0c 25 08 03 	lock or DWORD PTR fs:0x308,0x10
    fec7:	00 00 10 
    feca:	64 48 8b 3c 25 00 03 	mov    rdi,QWORD PTR fs:0x300
    fed1:	00 00 
    fed3:	e8 58 01 00 00       	call   10030 <__pthread_unwind>
    fed8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
    fedf:	00 
    fee0:	89 c2                	mov    edx,eax
    fee2:	eb a9                	jmp    fe8d <_pthread_cleanup_pop_restore+0x3d>
    fee4:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
    feeb:	00 00 00 
    feee:	66 90                	xchg   ax,ax

000000000000fef0 <unwind_stop>:
    fef0:	41 57                	push   r15
    fef2:	41 56                	push   r14
    fef4:	41 55                	push   r13
    fef6:	41 54                	push   r12
    fef8:	4d 89 cd             	mov    r13,r9
    fefb:	55                   	push   rbp
    fefc:	53                   	push   rbx
    fefd:	64 48 8b 04 25 10 00 	mov    rax,QWORD PTR fs:0x10
    ff04:	00 00 
    ff06:	48 83 ec 18          	sub    rsp,0x18
    ff0a:	64 48 8b 2c 25 f8 02 	mov    rbp,QWORD PTR fs:0x2f8
    ff11:	00 00 
    ff13:	48 8b 90 98 06 00 00 	mov    rdx,QWORD PTR [rax+0x698]
    ff1a:	48 03 90 90 06 00 00 	add    rdx,QWORD PTR [rax+0x690]
    ff21:	83 e6 10             	and    esi,0x10
    ff24:	48 89 eb             	mov    rbx,rbp
    ff27:	74 57                	je     ff80 <unwind_stop+0x90>
    ff29:	48 85 ed             	test   rbp,rbp
    ff2c:	74 11                	je     ff3f <unwind_stop+0x4f>
    ff2e:	4d 8b 65 50          	mov    r12,QWORD PTR [r13+0x50]
    ff32:	4c 89 c7             	mov    rdi,r8
    ff35:	e8 e6 1b 00 00       	call   11b20 <_Unwind_GetCFA>
    ff3a:	4c 39 e5             	cmp    rbp,r12
    ff3d:	75 11                	jne    ff50 <unwind_stop+0x60>
    ff3f:	be 01 00 00 00       	mov    esi,0x1
    ff44:	4c 89 ef             	mov    rdi,r13
    ff47:	e8 cc 5a ff ff       	call   5a18 <__sched_get_priority_min@plt+0x18>
    ff4c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
    ff50:	48 8b 6b 18          	mov    rbp,QWORD PTR [rbx+0x18]
    ff54:	48 8b 7b 08          	mov    rdi,QWORD PTR [rbx+0x8]
    ff58:	ff 13                	call   QWORD PTR [rbx]
    ff5a:	4c 39 e5             	cmp    rbp,r12
    ff5d:	48 89 eb             	mov    rbx,rbp
    ff60:	75 ee                	jne    ff50 <unwind_stop+0x60>
    ff62:	b8 01 00 00 00       	mov    eax,0x1
    ff67:	4c 89 e5             	mov    rbp,r12
    ff6a:	64 48 89 2c 25 f8 02 	mov    QWORD PTR fs:0x2f8,rbp
    ff71:	00 00 
    ff73:	85 c0                	test   eax,eax
    ff75:	74 43                	je     ffba <unwind_stop+0xca>
    ff77:	eb c6                	jmp    ff3f <unwind_stop+0x4f>
    ff79:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
    ff80:	49 89 d7             	mov    r15,rdx
    ff83:	4c 89 c7             	mov    rdi,r8
    ff86:	4c 89 44 24 08       	mov    QWORD PTR [rsp+0x8],r8
    ff8b:	e8 90 1b 00 00       	call   11b20 <_Unwind_GetCFA>
    ff90:	49 8b 55 30          	mov    rdx,QWORD PTR [r13+0x30]
    ff94:	4c 29 f8             	sub    rax,r15
    ff97:	4c 8b 44 24 08       	mov    r8,QWORD PTR [rsp+0x8]
    ff9c:	48 c1 ca 11          	ror    rdx,0x11
    ffa0:	64 48 33 14 25 30 00 	xor    rdx,QWORD PTR fs:0x30
    ffa7:	00 00 
    ffa9:	4c 29 fa             	sub    rdx,r15
    ffac:	48 39 d0             	cmp    rax,rdx
    ffaf:	0f 83 74 ff ff ff    	jae    ff29 <unwind_stop+0x39>
    ffb5:	48 85 ed             	test   rbp,rbp
    ffb8:	75 11                	jne    ffcb <unwind_stop+0xdb>
    ffba:	48 83 c4 18          	add    rsp,0x18
    ffbe:	31 c0                	xor    eax,eax
    ffc0:	5b                   	pop    rbx
    ffc1:	5d                   	pop    rbp
    ffc2:	41 5c                	pop    r12
    ffc4:	41 5d                	pop    r13
    ffc6:	41 5e                	pop    r14
    ffc8:	41 5f                	pop    r15
    ffca:	c3                   	ret    
    ffcb:	4d 8b 65 50          	mov    r12,QWORD PTR [r13+0x50]
    ffcf:	4c 89 c7             	mov    rdi,r8
    ffd2:	e8 49 1b 00 00       	call   11b20 <_Unwind_GetCFA>
    ffd7:	49 39 ec             	cmp    r12,rbp
    ffda:	74 de                	je     ffba <unwind_stop+0xca>
    ffdc:	4c 29 f8             	sub    rax,r15
    ffdf:	49 89 c6             	mov    r14,rax
    ffe2:	48 89 d8             	mov    rax,rbx
    ffe5:	4c 29 f8             	sub    rax,r15
    ffe8:	49 39 c6             	cmp    r14,rax
    ffeb:	72 cd                	jb     ffba <unwind_stop+0xca>
    ffed:	0f 1f 00             	nop    DWORD PTR [rax]
    fff0:	48 8b 6b 18          	mov    rbp,QWORD PTR [rbx+0x18]
    fff4:	48 8b 7b 08          	mov    rdi,QWORD PTR [rbx+0x8]
    fff8:	ff 13                	call   QWORD PTR [rbx]
    fffa:	49 39 ec             	cmp    r12,rbp
    fffd:	74 19                	je     10018 <unwind_stop+0x128>
    ffff:	48 89 e8             	mov    rax,rbp
   10002:	48 89 eb             	mov    rbx,rbp
   10005:	4c 29 f8             	sub    rax,r15
   10008:	49 39 c6             	cmp    r14,rax
   1000b:	73 e3                	jae    fff0 <unwind_stop+0x100>
   1000d:	31 c0                	xor    eax,eax
   1000f:	e9 56 ff ff ff       	jmp    ff6a <unwind_stop+0x7a>
   10014:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   10018:	31 c0                	xor    eax,eax
   1001a:	e9 48 ff ff ff       	jmp    ff67 <unwind_stop+0x77>
   1001f:	90                   	nop

0000000000010020 <unwind_cleanup>:
   10020:	48 8d 3d b1 34 00 00 	lea    rdi,[rip+0x34b1]        # 134d8 <defaultdir+0x10>
   10027:	48 83 ec 08          	sub    rsp,0x8
   1002b:	e8 00 56 ff ff       	call   5630 <__libc_fatal@plt>

0000000000010030 <__pthread_unwind>:
   10030:	48 83 ec 08          	sub    rsp,0x8
   10034:	48 89 fa             	mov    rdx,rdi
   10037:	64 48 8b 04 25 10 00 	mov    rax,QWORD PTR fs:0x10
   1003e:	00 00 
   10040:	64 48 c7 04 25 70 06 	mov    QWORD PTR fs:0x670,0x0
   10047:	00 00 00 00 00 00 
   1004d:	48 8d 0d cc ff ff ff 	lea    rcx,[rip+0xffffffffffffffcc]        # 10020 <unwind_cleanup>
   10054:	64 48 89 0c 25 78 06 	mov    QWORD PTR fs:0x678,rcx
   1005b:	00 00 
   1005d:	48 8d 35 8c fe ff ff 	lea    rsi,[rip+0xfffffffffffffe8c]        # fef0 <unwind_stop>
   10064:	48 8d b8 70 06 00 00 	lea    rdi,[rax+0x670]
   1006b:	e8 50 1a 00 00       	call   11ac0 <_Unwind_ForcedUnwind>
   10070:	e8 6b 55 ff ff       	call   55e0 <abort@plt>
   10075:	90                   	nop
   10076:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   1007d:	00 00 00 

0000000000010080 <__pthread_unwind_next>:
   10080:	48 83 ec 08          	sub    rsp,0x8
   10084:	48 8b 7f 48          	mov    rdi,QWORD PTR [rdi+0x48]
   10088:	e8 a3 ff ff ff       	call   10030 <__pthread_unwind>
   1008d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000010090 <longjmp_resolve>:
   10090:	48 8b 05 49 7f 20 00 	mov    rax,QWORD PTR [rip+0x207f49]        # 217fe0 <_DYNAMIC+0x290>
   10097:	c3                   	ret    
   10098:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1009f:	00 

00000000000100a0 <__GI___pthread_cleanup_upto>:
   100a0:	41 55                	push   r13
   100a2:	41 54                	push   r12
   100a4:	55                   	push   rbp
   100a5:	53                   	push   rbx
   100a6:	64 48 8b 04 25 10 00 	mov    rax,QWORD PTR fs:0x10
   100ad:	00 00 
   100af:	48 83 ec 08          	sub    rsp,0x8
   100b3:	48 8b a8 98 06 00 00 	mov    rbp,QWORD PTR [rax+0x698]
   100ba:	48 03 a8 90 06 00 00 	add    rbp,QWORD PTR [rax+0x690]
   100c1:	48 29 ee             	sub    rsi,rbp
   100c4:	64 48 8b 1c 25 f8 02 	mov    rbx,QWORD PTR fs:0x2f8
   100cb:	00 00 
   100cd:	48 85 db             	test   rbx,rbx
   100d0:	74 6c                	je     1013e <__GI___pthread_cleanup_upto+0x9e>
   100d2:	48 89 da             	mov    rdx,rbx
   100d5:	48 8b 47 30          	mov    rax,QWORD PTR [rdi+0x30]
   100d9:	48 89 d9             	mov    rcx,rbx
   100dc:	48 c1 c8 11          	ror    rax,0x11
   100e0:	64 48 33 04 25 30 00 	xor    rax,QWORD PTR fs:0x30
   100e7:	00 00 
   100e9:	48 29 ea             	sub    rdx,rbp
   100ec:	48 29 e8             	sub    rax,rbp
   100ef:	48 39 c2             	cmp    rdx,rax
   100f2:	73 4c                	jae    10140 <__GI___pthread_cleanup_upto+0xa0>
   100f4:	48 39 d6             	cmp    rsi,rdx
   100f7:	49 89 f4             	mov    r12,rsi
   100fa:	49 89 fd             	mov    r13,rdi
   100fd:	72 30                	jb     1012f <__GI___pthread_cleanup_upto+0x8f>
   100ff:	eb 3d                	jmp    1013e <__GI___pthread_cleanup_upto+0x9e>
   10101:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   10108:	48 89 da             	mov    rdx,rbx
   1010b:	49 8b 45 30          	mov    rax,QWORD PTR [r13+0x30]
   1010f:	48 89 d9             	mov    rcx,rbx
   10112:	48 c1 c8 11          	ror    rax,0x11
   10116:	64 48 33 04 25 30 00 	xor    rax,QWORD PTR fs:0x30
   1011d:	00 00 
   1011f:	48 29 ea             	sub    rdx,rbp
   10122:	48 29 e8             	sub    rax,rbp
   10125:	48 39 c2             	cmp    rdx,rax
   10128:	73 16                	jae    10140 <__GI___pthread_cleanup_upto+0xa0>
   1012a:	49 39 d4             	cmp    r12,rdx
   1012d:	73 0f                	jae    1013e <__GI___pthread_cleanup_upto+0x9e>
   1012f:	48 8b 7b 08          	mov    rdi,QWORD PTR [rbx+0x8]
   10133:	ff 13                	call   QWORD PTR [rbx]
   10135:	48 8b 5b 18          	mov    rbx,QWORD PTR [rbx+0x18]
   10139:	48 85 db             	test   rbx,rbx
   1013c:	75 ca                	jne    10108 <__GI___pthread_cleanup_upto+0x68>
   1013e:	31 c9                	xor    ecx,ecx
   10140:	64 48 89 0c 25 f8 02 	mov    QWORD PTR fs:0x2f8,rcx
   10147:	00 00 
   10149:	48 83 c4 08          	add    rsp,0x8
   1014d:	5b                   	pop    rbx
   1014e:	5d                   	pop    rbp
   1014f:	41 5c                	pop    r12
   10151:	41 5d                	pop    r13
   10153:	c3                   	ret    
   10154:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   1015b:	00 00 00 
   1015e:	66 90                	xchg   ax,ax

0000000000010160 <__pthread_enable_asynccancel>:
   10160:	64 8b 04 25 08 03 00 	mov    eax,DWORD PTR fs:0x308
   10167:	00 
   10168:	41 89 c3             	mov    r11d,eax
   1016b:	41 83 cb 02          	or     r11d,0x2
   1016f:	41 39 c3             	cmp    r11d,eax
   10172:	74 17                	je     1018b <__pthread_enable_asynccancel+0x2b>
   10174:	f0 64 44 0f b1 1c 25 	lock cmpxchg DWORD PTR fs:0x308,r11d
   1017b:	08 03 00 00 
   1017f:	75 e7                	jne    10168 <__pthread_enable_asynccancel+0x8>
   10181:	41 83 e3 bb          	and    r11d,0xffffffbb
   10185:	41 83 fb 0a          	cmp    r11d,0xa
   10189:	74 01                	je     1018c <__pthread_enable_asynccancel+0x2c>
   1018b:	c3                   	ret    
   1018c:	48 83 ec 08          	sub    rsp,0x8
   10190:	64 48 c7 04 25 30 06 	mov    QWORD PTR fs:0x630,0xffffffffffffffff
   10197:	00 00 ff ff ff ff 
   1019d:	f0 64 83 0c 25 08 03 	lock or DWORD PTR fs:0x308,0x10
   101a4:	00 00 10 
   101a7:	64 48 8b 3c 25 00 03 	mov    rdi,QWORD PTR fs:0x300
   101ae:	00 00 
   101b0:	e8 7b fe ff ff       	call   10030 <__pthread_unwind>
   101b5:	f4                   	hlt    
   101b6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   101bd:	00 00 00 

00000000000101c0 <__pthread_disable_asynccancel>:
   101c0:	f7 c7 02 00 00 00    	test   edi,0x2
   101c6:	75 27                	jne    101ef <__pthread_disable_asynccancel+0x2f>
   101c8:	64 8b 04 25 08 03 00 	mov    eax,DWORD PTR fs:0x308
   101cf:	00 
   101d0:	41 89 c3             	mov    r11d,eax
   101d3:	41 83 e3 fd          	and    r11d,0xfffffffd
   101d7:	f0 64 44 0f b1 1c 25 	lock cmpxchg DWORD PTR fs:0x308,r11d
   101de:	08 03 00 00 
   101e2:	75 ec                	jne    101d0 <__pthread_disable_asynccancel+0x10>
   101e4:	44 89 d8             	mov    eax,r11d
   101e7:	83 e0 0c             	and    eax,0xc
   101ea:	83 f8 04             	cmp    eax,0x4
   101ed:	74 01                	je     101f0 <__pthread_disable_asynccancel+0x30>
   101ef:	c3                   	ret    
   101f0:	64 48 8b 3c 25 00 00 	mov    rdi,QWORD PTR fs:0x0
   101f7:	00 00 
   101f9:	b8 ca 00 00 00       	mov    eax,0xca
   101fe:	4d 31 d2             	xor    r10,r10
   10201:	48 81 c7 08 03 00 00 	add    rdi,0x308
   10208:	be 80 00 00 00       	mov    esi,0x80
   1020d:	0f 05                	syscall 
   1020f:	64 8b 04 25 08 03 00 	mov    eax,DWORD PTR fs:0x308
   10216:	00 
   10217:	eb ce                	jmp    101e7 <__pthread_disable_asynccancel+0x27>
   10219:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000010220 <__lll_lock_wait_private>:
   10220:	41 52                	push   r10
   10222:	52                   	push   rdx
   10223:	4d 31 d2             	xor    r10,r10
   10226:	ba 02 00 00 00       	mov    edx,0x2
   1022b:	be 80 00 00 00       	mov    esi,0x80
   10230:	39 d0                	cmp    eax,edx
   10232:	75 08                	jne    1023c <__lll_lock_wait_private+0x1c>
   10234:	90                   	nop
   10235:	b8 ca 00 00 00       	mov    eax,0xca
   1023a:	0f 05                	syscall 
   1023c:	89 d0                	mov    eax,edx
   1023e:	87 07                	xchg   DWORD PTR [rdi],eax
   10240:	85 c0                	test   eax,eax
   10242:	75 f0                	jne    10234 <__lll_lock_wait_private+0x14>
   10244:	5a                   	pop    rdx
   10245:	41 5a                	pop    r10
   10247:	c3                   	ret    
   10248:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1024f:	00 

0000000000010250 <__lll_lock_wait>:
   10250:	41 52                	push   r10
   10252:	52                   	push   rdx
   10253:	4d 31 d2             	xor    r10,r10
   10256:	ba 02 00 00 00       	mov    edx,0x2
   1025b:	81 f6 80 00 00 00    	xor    esi,0x80
   10261:	39 d0                	cmp    eax,edx
   10263:	75 08                	jne    1026d <__lll_lock_wait+0x1d>
   10265:	90                   	nop
   10266:	b8 ca 00 00 00       	mov    eax,0xca
   1026b:	0f 05                	syscall 
   1026d:	89 d0                	mov    eax,edx
   1026f:	87 07                	xchg   DWORD PTR [rdi],eax
   10271:	85 c0                	test   eax,eax
   10273:	75 f0                	jne    10265 <__lll_lock_wait+0x15>
   10275:	5a                   	pop    rdx
   10276:	41 5a                	pop    r10
   10278:	c3                   	ret    
   10279:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000010280 <__lll_timedlock_wait>:
   10280:	48 83 3a 00          	cmp    QWORD PTR [rdx],0x0
   10284:	78 3f                	js     102c5 <__lll_timedlock_wait+0x45>
   10286:	41 51                	push   r9
   10288:	49 89 d2             	mov    r10,rdx
   1028b:	41 b9 ff ff ff ff    	mov    r9d,0xffffffff
   10291:	81 f6 89 01 00 00    	xor    esi,0x189
   10297:	ba 02 00 00 00       	mov    edx,0x2
   1029c:	39 d0                	cmp    eax,edx
   1029e:	75 0c                	jne    102ac <__lll_timedlock_wait+0x2c>
   102a0:	b8 ca 00 00 00       	mov    eax,0xca
   102a5:	ba 02 00 00 00       	mov    edx,0x2
   102aa:	0f 05                	syscall 
   102ac:	87 17                	xchg   DWORD PTR [rdi],edx
   102ae:	85 d2                	test   edx,edx
   102b0:	74 0e                	je     102c0 <__lll_timedlock_wait+0x40>
   102b2:	83 f8 92             	cmp    eax,0xffffff92
   102b5:	74 05                	je     102bc <__lll_timedlock_wait+0x3c>
   102b7:	83 f8 ea             	cmp    eax,0xffffffea
   102ba:	75 e4                	jne    102a0 <__lll_timedlock_wait+0x20>
   102bc:	89 c2                	mov    edx,eax
   102be:	f7 da                	neg    edx
   102c0:	89 d0                	mov    eax,edx
   102c2:	41 59                	pop    r9
   102c4:	c3                   	ret    
   102c5:	b8 6e 00 00 00       	mov    eax,0x6e
   102ca:	c3                   	ret    
   102cb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000102d0 <__lll_unlock_wake_private>:
   102d0:	56                   	push   rsi
   102d1:	52                   	push   rdx
   102d2:	c7 07 00 00 00 00    	mov    DWORD PTR [rdi],0x0
   102d8:	be 81 00 00 00       	mov    esi,0x81
   102dd:	ba 01 00 00 00       	mov    edx,0x1
   102e2:	b8 ca 00 00 00       	mov    eax,0xca
   102e7:	0f 05                	syscall 
   102e9:	5a                   	pop    rdx
   102ea:	5e                   	pop    rsi
   102eb:	c3                   	ret    
   102ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000000102f0 <__lll_unlock_wake>:
   102f0:	56                   	push   rsi
   102f1:	52                   	push   rdx
   102f2:	c7 07 00 00 00 00    	mov    DWORD PTR [rdi],0x0
   102f8:	81 f6 81 00 00 00    	xor    esi,0x81
   102fe:	ba 01 00 00 00       	mov    edx,0x1
   10303:	b8 ca 00 00 00       	mov    eax,0xca
   10308:	0f 05                	syscall 
   1030a:	5a                   	pop    rdx
   1030b:	5e                   	pop    rsi
   1030c:	c3                   	ret    
   1030d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000010310 <__lll_timedwait_tid>:
   10310:	41 54                	push   r12
   10312:	41 55                	push   r13
   10314:	49 89 fc             	mov    r12,rdi
   10317:	49 89 f5             	mov    r13,rsi
   1031a:	48 83 ec 18          	sub    rsp,0x18
   1031e:	48 89 e7             	mov    rdi,rsp
   10321:	31 f6                	xor    esi,esi
   10323:	e8 98 53 ff ff       	call   56c0 <__gettimeofday@plt>
   10328:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
   1032d:	bf e8 03 00 00       	mov    edi,0x3e8
   10332:	48 f7 e7             	mul    rdi
   10335:	49 8b 7d 00          	mov    rdi,QWORD PTR [r13+0x0]
   10339:	49 8b 75 08          	mov    rsi,QWORD PTR [r13+0x8]
   1033d:	48 2b 3c 24          	sub    rdi,QWORD PTR [rsp]
   10341:	48 29 c6             	sub    rsi,rax
   10344:	79 0a                	jns    10350 <__lll_timedwait_tid+0x40>
   10346:	48 81 c6 00 ca 9a 3b 	add    rsi,0x3b9aca00
   1034d:	48 ff cf             	dec    rdi
   10350:	48 85 ff             	test   rdi,rdi
   10353:	78 36                	js     1038b <__lll_timedwait_tid+0x7b>
   10355:	48 89 3c 24          	mov    QWORD PTR [rsp],rdi
   10359:	48 89 74 24 08       	mov    QWORD PTR [rsp+0x8],rsi
   1035e:	41 8b 14 24          	mov    edx,DWORD PTR [r12]
   10362:	85 d2                	test   edx,edx
   10364:	74 14                	je     1037a <__lll_timedwait_tid+0x6a>
   10366:	49 89 e2             	mov    r10,rsp
   10369:	31 f6                	xor    esi,esi
   1036b:	4c 89 e7             	mov    rdi,r12
   1036e:	b8 ca 00 00 00       	mov    eax,0xca
   10373:	0f 05                	syscall 
   10375:	83 3f 00             	cmp    DWORD PTR [rdi],0x0
   10378:	75 0b                	jne    10385 <__lll_timedwait_tid+0x75>
   1037a:	31 c0                	xor    eax,eax
   1037c:	48 83 c4 18          	add    rsp,0x18
   10380:	41 5d                	pop    r13
   10382:	41 5c                	pop    r12
   10384:	c3                   	ret    
   10385:	48 83 f8 92          	cmp    rax,0xffffffffffffff92
   10389:	75 93                	jne    1031e <__lll_timedwait_tid+0xe>
   1038b:	b8 6e 00 00 00       	mov    eax,0x6e
   10390:	eb ea                	jmp    1037c <__lll_timedwait_tid+0x6c>
   10392:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   10399:	00 00 00 
   1039c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000000103a0 <__lll_robust_lock_wait>:
   103a0:	41 52                	push   r10
   103a2:	52                   	push   rdx
   103a3:	4d 31 d2             	xor    r10,r10
   103a6:	81 f6 80 00 00 00    	xor    esi,0x80
   103ac:	89 c2                	mov    edx,eax
   103ae:	81 ca 00 00 00 80    	or     edx,0x80000000
   103b4:	a9 00 00 00 40       	test   eax,0x40000000
   103b9:	75 2b                	jne    103e6 <__lll_robust_lock_wait+0x46>
   103bb:	39 d0                	cmp    eax,edx
   103bd:	74 06                	je     103c5 <__lll_robust_lock_wait+0x25>
   103bf:	f0 0f b1 17          	lock cmpxchg DWORD PTR [rdi],edx
   103c3:	75 09                	jne    103ce <__lll_robust_lock_wait+0x2e>
   103c5:	b8 ca 00 00 00       	mov    eax,0xca
   103ca:	0f 05                	syscall 
   103cc:	8b 07                	mov    eax,DWORD PTR [rdi]
   103ce:	85 c0                	test   eax,eax
   103d0:	75 da                	jne    103ac <__lll_robust_lock_wait+0xc>
   103d2:	64 8b 14 25 d0 02 00 	mov    edx,DWORD PTR fs:0x2d0
   103d9:	00 
   103da:	81 ca 00 00 00 80    	or     edx,0x80000000
   103e0:	f0 0f b1 17          	lock cmpxchg DWORD PTR [rdi],edx
   103e4:	75 c6                	jne    103ac <__lll_robust_lock_wait+0xc>
   103e6:	5a                   	pop    rdx
   103e7:	41 5a                	pop    r10
   103e9:	c3                   	ret    
   103ea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000103f0 <__lll_robust_timedlock_wait>:
   103f0:	48 83 3a 00          	cmp    QWORD PTR [rdx],0x0
   103f4:	78 67                	js     1045d <__lll_robust_timedlock_wait+0x6d>
   103f6:	41 51                	push   r9
   103f8:	49 89 d2             	mov    r10,rdx
   103fb:	41 b9 ff ff ff ff    	mov    r9d,0xffffffff
   10401:	81 f6 89 01 00 00    	xor    esi,0x189
   10407:	a9 00 00 00 40       	test   eax,0x40000000
   1040c:	75 3c                	jne    1044a <__lll_robust_timedlock_wait+0x5a>
   1040e:	89 c2                	mov    edx,eax
   10410:	81 ca 00 00 00 80    	or     edx,0x80000000
   10416:	39 c2                	cmp    edx,eax
   10418:	74 0d                	je     10427 <__lll_robust_timedlock_wait+0x37>
   1041a:	f0 0f b1 17          	lock cmpxchg DWORD PTR [rdi],edx
   1041e:	48 c7 c1 00 00 00 00 	mov    rcx,0x0
   10425:	75 0b                	jne    10432 <__lll_robust_timedlock_wait+0x42>
   10427:	b8 ca 00 00 00       	mov    eax,0xca
   1042c:	0f 05                	syscall 
   1042e:	89 c1                	mov    ecx,eax
   10430:	8b 07                	mov    eax,DWORD PTR [rdi]
   10432:	85 c0                	test   eax,eax
   10434:	75 17                	jne    1044d <__lll_robust_timedlock_wait+0x5d>
   10436:	64 8b 14 25 d0 02 00 	mov    edx,DWORD PTR fs:0x2d0
   1043d:	00 
   1043e:	81 ca 00 00 00 80    	or     edx,0x80000000
   10444:	f0 0f b1 17          	lock cmpxchg DWORD PTR [rdi],edx
   10448:	75 03                	jne    1044d <__lll_robust_timedlock_wait+0x5d>
   1044a:	41 59                	pop    r9
   1044c:	c3                   	ret    
   1044d:	83 f9 92             	cmp    ecx,0xffffff92
   10450:	74 05                	je     10457 <__lll_robust_timedlock_wait+0x67>
   10452:	83 f9 ea             	cmp    ecx,0xffffffea
   10455:	75 b0                	jne    10407 <__lll_robust_timedlock_wait+0x17>
   10457:	89 c8                	mov    eax,ecx
   10459:	f7 d8                	neg    eax
   1045b:	eb ed                	jmp    1044a <__lll_robust_timedlock_wait+0x5a>
   1045d:	b8 6e 00 00 00       	mov    eax,0x6e
   10462:	c3                   	ret    
   10463:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   1046a:	00 00 00 
   1046d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000010470 <__fork@GLIBC_2.2.5>:
   10470:	e9 7b 52 ff ff       	jmp    56f0 <__libc_fork@plt>
   10475:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   1047c:	00 00 00 
   1047f:	90                   	nop

0000000000010480 <vfork_resolve>:
   10480:	48 8b 05 29 7b 20 00 	mov    rax,QWORD PTR [rip+0x207b29]        # 217fb0 <_DYNAMIC+0x260>
   10487:	c3                   	ret    
   10488:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1048f:	00 

0000000000010490 <__write>:
   10490:	83 3d 09 bf 20 00 00 	cmp    DWORD PTR [rip+0x20bf09],0x0        # 21c3a0 <__pthread_multiple_threads>
   10497:	75 10                	jne    104a9 <__write_nocancel+0x10>

0000000000010499 <__write_nocancel>:
   10499:	b8 01 00 00 00       	mov    eax,0x1
   1049e:	0f 05                	syscall 
   104a0:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   104a6:	73 31                	jae    104d9 <__write_nocancel+0x40>
   104a8:	c3                   	ret    
   104a9:	48 83 ec 08          	sub    rsp,0x8
   104ad:	e8 ae fc ff ff       	call   10160 <__pthread_enable_asynccancel>
   104b2:	48 89 04 24          	mov    QWORD PTR [rsp],rax
   104b6:	b8 01 00 00 00       	mov    eax,0x1
   104bb:	0f 05                	syscall 
   104bd:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
   104c1:	48 89 c2             	mov    rdx,rax
   104c4:	e8 f7 fc ff ff       	call   101c0 <__pthread_disable_asynccancel>
   104c9:	48 89 d0             	mov    rax,rdx
   104cc:	48 83 c4 08          	add    rsp,0x8
   104d0:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   104d6:	73 01                	jae    104d9 <__write_nocancel+0x40>
   104d8:	c3                   	ret    
   104d9:	48 8b 0d a8 7a 20 00 	mov    rcx,QWORD PTR [rip+0x207aa8]        # 217f88 <_DYNAMIC+0x238>
   104e0:	f7 d8                	neg    eax
   104e2:	64 89 01             	mov    DWORD PTR fs:[rcx],eax
   104e5:	48 83 c8 ff          	or     rax,0xffffffffffffffff
   104e9:	c3                   	ret    
   104ea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000104f0 <__read>:
   104f0:	83 3d a9 be 20 00 00 	cmp    DWORD PTR [rip+0x20bea9],0x0        # 21c3a0 <__pthread_multiple_threads>
   104f7:	75 10                	jne    10509 <__read_nocancel+0x10>

00000000000104f9 <__read_nocancel>:
   104f9:	b8 00 00 00 00       	mov    eax,0x0
   104fe:	0f 05                	syscall 
   10500:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   10506:	73 31                	jae    10539 <__read_nocancel+0x40>
   10508:	c3                   	ret    
   10509:	48 83 ec 08          	sub    rsp,0x8
   1050d:	e8 4e fc ff ff       	call   10160 <__pthread_enable_asynccancel>
   10512:	48 89 04 24          	mov    QWORD PTR [rsp],rax
   10516:	b8 00 00 00 00       	mov    eax,0x0
   1051b:	0f 05                	syscall 
   1051d:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
   10521:	48 89 c2             	mov    rdx,rax
   10524:	e8 97 fc ff ff       	call   101c0 <__pthread_disable_asynccancel>
   10529:	48 89 d0             	mov    rax,rdx
   1052c:	48 83 c4 08          	add    rsp,0x8
   10530:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   10536:	73 01                	jae    10539 <__read_nocancel+0x40>
   10538:	c3                   	ret    
   10539:	48 8b 0d 48 7a 20 00 	mov    rcx,QWORD PTR [rip+0x207a48]        # 217f88 <_DYNAMIC+0x238>
   10540:	f7 d8                	neg    eax
   10542:	64 89 01             	mov    DWORD PTR fs:[rcx],eax
   10545:	48 83 c8 ff          	or     rax,0xffffffffffffffff
   10549:	c3                   	ret    
   1054a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000010550 <__close>:
   10550:	83 3d 49 be 20 00 00 	cmp    DWORD PTR [rip+0x20be49],0x0        # 21c3a0 <__pthread_multiple_threads>
   10557:	75 10                	jne    10569 <__close_nocancel+0x10>

0000000000010559 <__close_nocancel>:
   10559:	b8 03 00 00 00       	mov    eax,0x3
   1055e:	0f 05                	syscall 
   10560:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   10566:	73 31                	jae    10599 <__close_nocancel+0x40>
   10568:	c3                   	ret    
   10569:	48 83 ec 08          	sub    rsp,0x8
   1056d:	e8 ee fb ff ff       	call   10160 <__pthread_enable_asynccancel>
   10572:	48 89 04 24          	mov    QWORD PTR [rsp],rax
   10576:	b8 03 00 00 00       	mov    eax,0x3
   1057b:	0f 05                	syscall 
   1057d:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
   10581:	48 89 c2             	mov    rdx,rax
   10584:	e8 37 fc ff ff       	call   101c0 <__pthread_disable_asynccancel>
   10589:	48 89 d0             	mov    rax,rdx
   1058c:	48 83 c4 08          	add    rsp,0x8
   10590:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   10596:	73 01                	jae    10599 <__close_nocancel+0x40>
   10598:	c3                   	ret    
   10599:	48 8b 0d e8 79 20 00 	mov    rcx,QWORD PTR [rip+0x2079e8]        # 217f88 <_DYNAMIC+0x238>
   105a0:	f7 d8                	neg    eax
   105a2:	64 89 01             	mov    DWORD PTR fs:[rcx],eax
   105a5:	48 83 c8 ff          	or     rax,0xffffffffffffffff
   105a9:	c3                   	ret    
   105aa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000105b0 <__fcntl_nocancel>:
   105b0:	48 8d 44 24 08       	lea    rax,[rsp+0x8]
   105b5:	83 fe 09             	cmp    esi,0x9
   105b8:	48 89 54 24 d8       	mov    QWORD PTR [rsp-0x28],rdx
   105bd:	c7 44 24 b0 10 00 00 	mov    DWORD PTR [rsp-0x50],0x10
   105c4:	00 
   105c5:	48 89 44 24 b8       	mov    QWORD PTR [rsp-0x48],rax
   105ca:	48 8d 44 24 c8       	lea    rax,[rsp-0x38]
   105cf:	48 89 44 24 c0       	mov    QWORD PTR [rsp-0x40],rax
   105d4:	74 1a                	je     105f0 <__fcntl_nocancel+0x40>
   105d6:	48 63 f6             	movsxd rsi,esi
   105d9:	48 63 ff             	movsxd rdi,edi
   105dc:	b8 48 00 00 00       	mov    eax,0x48
   105e1:	0f 05                	syscall 
   105e3:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
   105e9:	77 35                	ja     10620 <__fcntl_nocancel+0x70>
   105eb:	f3 c3                	repz ret 
   105ed:	0f 1f 00             	nop    DWORD PTR [rax]
   105f0:	48 8d 54 24 a8       	lea    rdx,[rsp-0x58]
   105f5:	be 10 00 00 00       	mov    esi,0x10
   105fa:	48 63 ff             	movsxd rdi,edi
   105fd:	b8 48 00 00 00       	mov    eax,0x48
   10602:	0f 05                	syscall 
   10604:	3d 00 f0 ff ff       	cmp    eax,0xfffff000
   10609:	77 15                	ja     10620 <__fcntl_nocancel+0x70>
   1060b:	8b 44 24 ac          	mov    eax,DWORD PTR [rsp-0x54]
   1060f:	89 c2                	mov    edx,eax
   10611:	f7 da                	neg    edx
   10613:	83 7c 24 a8 02       	cmp    DWORD PTR [rsp-0x58],0x2
   10618:	0f 44 c2             	cmove  eax,edx
   1061b:	c3                   	ret    
   1061c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   10620:	48 8b 15 61 79 20 00 	mov    rdx,QWORD PTR [rip+0x207961]        # 217f88 <_DYNAMIC+0x238>
   10627:	f7 d8                	neg    eax
   10629:	64 89 02             	mov    DWORD PTR fs:[rdx],eax
   1062c:	b8 ff ff ff ff       	mov    eax,0xffffffff
   10631:	c3                   	ret    
   10632:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   10636:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   1063d:	00 00 00 

0000000000010640 <__fcntl>:
   10640:	53                   	push   rbx
   10641:	48 83 ec 60          	sub    rsp,0x60
   10645:	48 8d 44 24 70       	lea    rax,[rsp+0x70]
   1064a:	48 89 54 24 40       	mov    QWORD PTR [rsp+0x40],rdx
   1064f:	c7 44 24 18 10 00 00 	mov    DWORD PTR [rsp+0x18],0x10
   10656:	00 
   10657:	48 89 44 24 20       	mov    QWORD PTR [rsp+0x20],rax
   1065c:	48 8d 44 24 30       	lea    rax,[rsp+0x30]
   10661:	48 89 44 24 28       	mov    QWORD PTR [rsp+0x28],rax
   10666:	8b 05 34 bd 20 00    	mov    eax,DWORD PTR [rip+0x20bd34]        # 21c3a0 <__pthread_multiple_threads>
   1066c:	85 c0                	test   eax,eax
   1066e:	74 05                	je     10675 <__fcntl+0x35>
   10670:	83 fe 07             	cmp    esi,0x7
   10673:	74 73                	je     106e8 <__fcntl+0xa8>
   10675:	83 fe 09             	cmp    esi,0x9
   10678:	74 1e                	je     10698 <__fcntl+0x58>
   1067a:	48 63 f6             	movsxd rsi,esi
   1067d:	48 63 ff             	movsxd rdi,edi
   10680:	b8 48 00 00 00       	mov    eax,0x48
   10685:	0f 05                	syscall 
   10687:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
   1068d:	77 41                	ja     106d0 <__fcntl+0x90>
   1068f:	48 83 c4 60          	add    rsp,0x60
   10693:	5b                   	pop    rbx
   10694:	c3                   	ret    
   10695:	0f 1f 00             	nop    DWORD PTR [rax]
   10698:	48 8d 54 24 10       	lea    rdx,[rsp+0x10]
   1069d:	be 10 00 00 00       	mov    esi,0x10
   106a2:	48 63 ff             	movsxd rdi,edi
   106a5:	b8 48 00 00 00       	mov    eax,0x48
   106aa:	0f 05                	syscall 
   106ac:	3d 00 f0 ff ff       	cmp    eax,0xfffff000
   106b1:	77 1d                	ja     106d0 <__fcntl+0x90>
   106b3:	8b 44 24 14          	mov    eax,DWORD PTR [rsp+0x14]
   106b7:	89 c2                	mov    edx,eax
   106b9:	f7 da                	neg    edx
   106bb:	83 7c 24 10 02       	cmp    DWORD PTR [rsp+0x10],0x2
   106c0:	0f 44 c2             	cmove  eax,edx
   106c3:	48 83 c4 60          	add    rsp,0x60
   106c7:	5b                   	pop    rbx
   106c8:	c3                   	ret    
   106c9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   106d0:	48 8b 15 b1 78 20 00 	mov    rdx,QWORD PTR [rip+0x2078b1]        # 217f88 <_DYNAMIC+0x238>
   106d7:	f7 d8                	neg    eax
   106d9:	64 89 02             	mov    DWORD PTR fs:[rdx],eax
   106dc:	b8 ff ff ff ff       	mov    eax,0xffffffff
   106e1:	eb ac                	jmp    1068f <__fcntl+0x4f>
   106e3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   106e8:	89 fb                	mov    ebx,edi
   106ea:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
   106ef:	e8 6c fa ff ff       	call   10160 <__pthread_enable_asynccancel>
   106f4:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
   106f9:	41 89 c0             	mov    r8d,eax
   106fc:	be 07 00 00 00       	mov    esi,0x7
   10701:	48 63 fb             	movsxd rdi,ebx
   10704:	b8 48 00 00 00       	mov    eax,0x48
   10709:	0f 05                	syscall 
   1070b:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
   10711:	77 15                	ja     10728 <__fcntl+0xe8>
   10713:	44 89 c7             	mov    edi,r8d
   10716:	89 44 24 08          	mov    DWORD PTR [rsp+0x8],eax
   1071a:	e8 a1 fa ff ff       	call   101c0 <__pthread_disable_asynccancel>
   1071f:	8b 44 24 08          	mov    eax,DWORD PTR [rsp+0x8]
   10723:	e9 67 ff ff ff       	jmp    1068f <__fcntl+0x4f>
   10728:	48 8b 15 59 78 20 00 	mov    rdx,QWORD PTR [rip+0x207859]        # 217f88 <_DYNAMIC+0x238>
   1072f:	f7 d8                	neg    eax
   10731:	64 89 02             	mov    DWORD PTR fs:[rdx],eax
   10734:	b8 ff ff ff ff       	mov    eax,0xffffffff
   10739:	eb d8                	jmp    10713 <__fcntl+0xd3>
   1073b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000010740 <accept>:
   10740:	83 3d 59 bc 20 00 00 	cmp    DWORD PTR [rip+0x20bc59],0x0        # 21c3a0 <__pthread_multiple_threads>
   10747:	75 10                	jne    10759 <__accept_nocancel+0x10>

0000000000010749 <__accept_nocancel>:
   10749:	b8 2b 00 00 00       	mov    eax,0x2b
   1074e:	0f 05                	syscall 
   10750:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   10756:	73 31                	jae    10789 <__accept_nocancel+0x40>
   10758:	c3                   	ret    
   10759:	48 83 ec 08          	sub    rsp,0x8
   1075d:	e8 fe f9 ff ff       	call   10160 <__pthread_enable_asynccancel>
   10762:	48 89 04 24          	mov    QWORD PTR [rsp],rax
   10766:	b8 2b 00 00 00       	mov    eax,0x2b
   1076b:	0f 05                	syscall 
   1076d:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
   10771:	48 89 c2             	mov    rdx,rax
   10774:	e8 47 fa ff ff       	call   101c0 <__pthread_disable_asynccancel>
   10779:	48 89 d0             	mov    rax,rdx
   1077c:	48 83 c4 08          	add    rsp,0x8
   10780:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   10786:	73 01                	jae    10789 <__accept_nocancel+0x40>
   10788:	c3                   	ret    
   10789:	48 8b 0d f8 77 20 00 	mov    rcx,QWORD PTR [rip+0x2077f8]        # 217f88 <_DYNAMIC+0x238>
   10790:	f7 d8                	neg    eax
   10792:	64 89 01             	mov    DWORD PTR fs:[rcx],eax
   10795:	48 83 c8 ff          	or     rax,0xffffffffffffffff
   10799:	c3                   	ret    
   1079a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000107a0 <__connect>:
   107a0:	83 3d f9 bb 20 00 00 	cmp    DWORD PTR [rip+0x20bbf9],0x0        # 21c3a0 <__pthread_multiple_threads>
   107a7:	75 10                	jne    107b9 <__connect_nocancel+0x10>

00000000000107a9 <__connect_nocancel>:
   107a9:	b8 2a 00 00 00       	mov    eax,0x2a
   107ae:	0f 05                	syscall 
   107b0:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   107b6:	73 31                	jae    107e9 <__connect_nocancel+0x40>
   107b8:	c3                   	ret    
   107b9:	48 83 ec 08          	sub    rsp,0x8
   107bd:	e8 9e f9 ff ff       	call   10160 <__pthread_enable_asynccancel>
   107c2:	48 89 04 24          	mov    QWORD PTR [rsp],rax
   107c6:	b8 2a 00 00 00       	mov    eax,0x2a
   107cb:	0f 05                	syscall 
   107cd:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
   107d1:	48 89 c2             	mov    rdx,rax
   107d4:	e8 e7 f9 ff ff       	call   101c0 <__pthread_disable_asynccancel>
   107d9:	48 89 d0             	mov    rax,rdx
   107dc:	48 83 c4 08          	add    rsp,0x8
   107e0:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   107e6:	73 01                	jae    107e9 <__connect_nocancel+0x40>
   107e8:	c3                   	ret    
   107e9:	48 8b 0d 98 77 20 00 	mov    rcx,QWORD PTR [rip+0x207798]        # 217f88 <_DYNAMIC+0x238>
   107f0:	f7 d8                	neg    eax
   107f2:	64 89 01             	mov    DWORD PTR fs:[rcx],eax
   107f5:	48 83 c8 ff          	or     rax,0xffffffffffffffff
   107f9:	c3                   	ret    
   107fa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000010800 <recv>:
   10800:	8b 05 9a bb 20 00    	mov    eax,DWORD PTR [rip+0x20bb9a]        # 21c3a0 <__pthread_multiple_threads>
   10806:	85 c0                	test   eax,eax
   10808:	75 3e                	jne    10848 <recv+0x48>
   1080a:	45 31 c9             	xor    r9d,r9d
   1080d:	45 31 c0             	xor    r8d,r8d
   10810:	4c 63 d1             	movsxd r10,ecx
   10813:	48 63 ff             	movsxd rdi,edi
   10816:	b8 2d 00 00 00       	mov    eax,0x2d
   1081b:	0f 05                	syscall 
   1081d:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
   10823:	77 0b                	ja     10830 <recv+0x30>
   10825:	c3                   	ret    
   10826:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   1082d:	00 00 00 
   10830:	48 8b 15 51 77 20 00 	mov    rdx,QWORD PTR [rip+0x207751]        # 217f88 <_DYNAMIC+0x238>
   10837:	f7 d8                	neg    eax
   10839:	64 89 02             	mov    DWORD PTR fs:[rdx],eax
   1083c:	48 c7 c0 ff ff ff ff 	mov    rax,0xffffffffffffffff
   10843:	c3                   	ret    
   10844:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   10848:	41 56                	push   r14
   1084a:	41 55                	push   r13
   1084c:	49 89 d6             	mov    r14,rdx
   1084f:	41 54                	push   r12
   10851:	55                   	push   rbp
   10852:	41 89 cd             	mov    r13d,ecx
   10855:	53                   	push   rbx
   10856:	49 89 f4             	mov    r12,rsi
   10859:	89 fb                	mov    ebx,edi
   1085b:	48 83 ec 10          	sub    rsp,0x10
   1085f:	e8 fc f8 ff ff       	call   10160 <__pthread_enable_asynccancel>
   10864:	45 31 c9             	xor    r9d,r9d
   10867:	89 c5                	mov    ebp,eax
   10869:	45 31 c0             	xor    r8d,r8d
   1086c:	4d 63 d5             	movsxd r10,r13d
   1086f:	4c 89 f2             	mov    rdx,r14
   10872:	4c 89 e6             	mov    rsi,r12
   10875:	48 63 fb             	movsxd rdi,ebx
   10878:	b8 2d 00 00 00       	mov    eax,0x2d
   1087d:	0f 05                	syscall 
   1087f:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
   10885:	77 1e                	ja     108a5 <recv+0xa5>
   10887:	89 ef                	mov    edi,ebp
   10889:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
   1088e:	e8 2d f9 ff ff       	call   101c0 <__pthread_disable_asynccancel>
   10893:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
   10898:	48 83 c4 10          	add    rsp,0x10
   1089c:	5b                   	pop    rbx
   1089d:	5d                   	pop    rbp
   1089e:	41 5c                	pop    r12
   108a0:	41 5d                	pop    r13
   108a2:	41 5e                	pop    r14
   108a4:	c3                   	ret    
   108a5:	48 8b 15 dc 76 20 00 	mov    rdx,QWORD PTR [rip+0x2076dc]        # 217f88 <_DYNAMIC+0x238>
   108ac:	f7 d8                	neg    eax
   108ae:	64 89 02             	mov    DWORD PTR fs:[rdx],eax
   108b1:	48 c7 c0 ff ff ff ff 	mov    rax,0xffffffffffffffff
   108b8:	eb cd                	jmp    10887 <recv+0x87>
   108ba:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000108c0 <recvfrom>:
   108c0:	83 3d d9 ba 20 00 00 	cmp    DWORD PTR [rip+0x20bad9],0x0        # 21c3a0 <__pthread_multiple_threads>
   108c7:	75 13                	jne    108dc <__recvfrom_nocancel+0x13>

00000000000108c9 <__recvfrom_nocancel>:
   108c9:	49 89 ca             	mov    r10,rcx
   108cc:	b8 2d 00 00 00       	mov    eax,0x2d
   108d1:	0f 05                	syscall 
   108d3:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   108d9:	73 34                	jae    1090f <__recvfrom_nocancel+0x46>
   108db:	c3                   	ret    
   108dc:	48 83 ec 08          	sub    rsp,0x8
   108e0:	e8 7b f8 ff ff       	call   10160 <__pthread_enable_asynccancel>
   108e5:	48 89 04 24          	mov    QWORD PTR [rsp],rax
   108e9:	49 89 ca             	mov    r10,rcx
   108ec:	b8 2d 00 00 00       	mov    eax,0x2d
   108f1:	0f 05                	syscall 
   108f3:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
   108f7:	48 89 c2             	mov    rdx,rax
   108fa:	e8 c1 f8 ff ff       	call   101c0 <__pthread_disable_asynccancel>
   108ff:	48 89 d0             	mov    rax,rdx
   10902:	48 83 c4 08          	add    rsp,0x8
   10906:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   1090c:	73 01                	jae    1090f <__recvfrom_nocancel+0x46>
   1090e:	c3                   	ret    
   1090f:	48 8b 0d 72 76 20 00 	mov    rcx,QWORD PTR [rip+0x207672]        # 217f88 <_DYNAMIC+0x238>
   10916:	f7 d8                	neg    eax
   10918:	64 89 01             	mov    DWORD PTR fs:[rcx],eax
   1091b:	48 83 c8 ff          	or     rax,0xffffffffffffffff
   1091f:	c3                   	ret    

0000000000010920 <recvmsg>:
   10920:	83 3d 79 ba 20 00 00 	cmp    DWORD PTR [rip+0x20ba79],0x0        # 21c3a0 <__pthread_multiple_threads>
   10927:	75 10                	jne    10939 <__recvmsg_nocancel+0x10>

0000000000010929 <__recvmsg_nocancel>:
   10929:	b8 2f 00 00 00       	mov    eax,0x2f
   1092e:	0f 05                	syscall 
   10930:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   10936:	73 31                	jae    10969 <__recvmsg_nocancel+0x40>
   10938:	c3                   	ret    
   10939:	48 83 ec 08          	sub    rsp,0x8
   1093d:	e8 1e f8 ff ff       	call   10160 <__pthread_enable_asynccancel>
   10942:	48 89 04 24          	mov    QWORD PTR [rsp],rax
   10946:	b8 2f 00 00 00       	mov    eax,0x2f
   1094b:	0f 05                	syscall 
   1094d:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
   10951:	48 89 c2             	mov    rdx,rax
   10954:	e8 67 f8 ff ff       	call   101c0 <__pthread_disable_asynccancel>
   10959:	48 89 d0             	mov    rax,rdx
   1095c:	48 83 c4 08          	add    rsp,0x8
   10960:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   10966:	73 01                	jae    10969 <__recvmsg_nocancel+0x40>
   10968:	c3                   	ret    
   10969:	48 8b 0d 18 76 20 00 	mov    rcx,QWORD PTR [rip+0x207618]        # 217f88 <_DYNAMIC+0x238>
   10970:	f7 d8                	neg    eax
   10972:	64 89 01             	mov    DWORD PTR fs:[rcx],eax
   10975:	48 83 c8 ff          	or     rax,0xffffffffffffffff
   10979:	c3                   	ret    
   1097a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000010980 <__send>:
   10980:	8b 05 1a ba 20 00    	mov    eax,DWORD PTR [rip+0x20ba1a]        # 21c3a0 <__pthread_multiple_threads>
   10986:	85 c0                	test   eax,eax
   10988:	75 3e                	jne    109c8 <__send+0x48>
   1098a:	45 31 c9             	xor    r9d,r9d
   1098d:	45 31 c0             	xor    r8d,r8d
   10990:	4c 63 d1             	movsxd r10,ecx
   10993:	48 63 ff             	movsxd rdi,edi
   10996:	b8 2c 00 00 00       	mov    eax,0x2c
   1099b:	0f 05                	syscall 
   1099d:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
   109a3:	77 0b                	ja     109b0 <__send+0x30>
   109a5:	c3                   	ret    
   109a6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   109ad:	00 00 00 
   109b0:	48 8b 15 d1 75 20 00 	mov    rdx,QWORD PTR [rip+0x2075d1]        # 217f88 <_DYNAMIC+0x238>
   109b7:	f7 d8                	neg    eax
   109b9:	64 89 02             	mov    DWORD PTR fs:[rdx],eax
   109bc:	48 c7 c0 ff ff ff ff 	mov    rax,0xffffffffffffffff
   109c3:	c3                   	ret    
   109c4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   109c8:	41 56                	push   r14
   109ca:	41 55                	push   r13
   109cc:	49 89 d6             	mov    r14,rdx
   109cf:	41 54                	push   r12
   109d1:	55                   	push   rbp
   109d2:	41 89 cd             	mov    r13d,ecx
   109d5:	53                   	push   rbx
   109d6:	49 89 f4             	mov    r12,rsi
   109d9:	89 fb                	mov    ebx,edi
   109db:	48 83 ec 10          	sub    rsp,0x10
   109df:	e8 7c f7 ff ff       	call   10160 <__pthread_enable_asynccancel>
   109e4:	45 31 c9             	xor    r9d,r9d
   109e7:	89 c5                	mov    ebp,eax
   109e9:	45 31 c0             	xor    r8d,r8d
   109ec:	4d 63 d5             	movsxd r10,r13d
   109ef:	4c 89 f2             	mov    rdx,r14
   109f2:	4c 89 e6             	mov    rsi,r12
   109f5:	48 63 fb             	movsxd rdi,ebx
   109f8:	b8 2c 00 00 00       	mov    eax,0x2c
   109fd:	0f 05                	syscall 
   109ff:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
   10a05:	77 1e                	ja     10a25 <__send+0xa5>
   10a07:	89 ef                	mov    edi,ebp
   10a09:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
   10a0e:	e8 ad f7 ff ff       	call   101c0 <__pthread_disable_asynccancel>
   10a13:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
   10a18:	48 83 c4 10          	add    rsp,0x10
   10a1c:	5b                   	pop    rbx
   10a1d:	5d                   	pop    rbp
   10a1e:	41 5c                	pop    r12
   10a20:	41 5d                	pop    r13
   10a22:	41 5e                	pop    r14
   10a24:	c3                   	ret    
   10a25:	48 8b 15 5c 75 20 00 	mov    rdx,QWORD PTR [rip+0x20755c]        # 217f88 <_DYNAMIC+0x238>
   10a2c:	f7 d8                	neg    eax
   10a2e:	64 89 02             	mov    DWORD PTR fs:[rdx],eax
   10a31:	48 c7 c0 ff ff ff ff 	mov    rax,0xffffffffffffffff
   10a38:	eb cd                	jmp    10a07 <__send+0x87>
   10a3a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000010a40 <sendmsg>:
   10a40:	83 3d 59 b9 20 00 00 	cmp    DWORD PTR [rip+0x20b959],0x0        # 21c3a0 <__pthread_multiple_threads>
   10a47:	75 10                	jne    10a59 <__sendmsg_nocancel+0x10>

0000000000010a49 <__sendmsg_nocancel>:
   10a49:	b8 2e 00 00 00       	mov    eax,0x2e
   10a4e:	0f 05                	syscall 
   10a50:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   10a56:	73 31                	jae    10a89 <__sendmsg_nocancel+0x40>
   10a58:	c3                   	ret    
   10a59:	48 83 ec 08          	sub    rsp,0x8
   10a5d:	e8 fe f6 ff ff       	call   10160 <__pthread_enable_asynccancel>
   10a62:	48 89 04 24          	mov    QWORD PTR [rsp],rax
   10a66:	b8 2e 00 00 00       	mov    eax,0x2e
   10a6b:	0f 05                	syscall 
   10a6d:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
   10a71:	48 89 c2             	mov    rdx,rax
   10a74:	e8 47 f7 ff ff       	call   101c0 <__pthread_disable_asynccancel>
   10a79:	48 89 d0             	mov    rax,rdx
   10a7c:	48 83 c4 08          	add    rsp,0x8
   10a80:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   10a86:	73 01                	jae    10a89 <__sendmsg_nocancel+0x40>
   10a88:	c3                   	ret    
   10a89:	48 8b 0d f8 74 20 00 	mov    rcx,QWORD PTR [rip+0x2074f8]        # 217f88 <_DYNAMIC+0x238>
   10a90:	f7 d8                	neg    eax
   10a92:	64 89 01             	mov    DWORD PTR fs:[rcx],eax
   10a95:	48 83 c8 ff          	or     rax,0xffffffffffffffff
   10a99:	c3                   	ret    
   10a9a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000010aa0 <sendto>:
   10aa0:	83 3d f9 b8 20 00 00 	cmp    DWORD PTR [rip+0x20b8f9],0x0        # 21c3a0 <__pthread_multiple_threads>
   10aa7:	75 13                	jne    10abc <__sendto_nocancel+0x13>

0000000000010aa9 <__sendto_nocancel>:
   10aa9:	49 89 ca             	mov    r10,rcx
   10aac:	b8 2c 00 00 00       	mov    eax,0x2c
   10ab1:	0f 05                	syscall 
   10ab3:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   10ab9:	73 34                	jae    10aef <__sendto_nocancel+0x46>
   10abb:	c3                   	ret    
   10abc:	48 83 ec 08          	sub    rsp,0x8
   10ac0:	e8 9b f6 ff ff       	call   10160 <__pthread_enable_asynccancel>
   10ac5:	48 89 04 24          	mov    QWORD PTR [rsp],rax
   10ac9:	49 89 ca             	mov    r10,rcx
   10acc:	b8 2c 00 00 00       	mov    eax,0x2c
   10ad1:	0f 05                	syscall 
   10ad3:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
   10ad7:	48 89 c2             	mov    rdx,rax
   10ada:	e8 e1 f6 ff ff       	call   101c0 <__pthread_disable_asynccancel>
   10adf:	48 89 d0             	mov    rax,rdx
   10ae2:	48 83 c4 08          	add    rsp,0x8
   10ae6:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   10aec:	73 01                	jae    10aef <__sendto_nocancel+0x46>
   10aee:	c3                   	ret    
   10aef:	48 8b 0d 92 74 20 00 	mov    rcx,QWORD PTR [rip+0x207492]        # 217f88 <_DYNAMIC+0x238>
   10af6:	f7 d8                	neg    eax
   10af8:	64 89 01             	mov    DWORD PTR fs:[rcx],eax
   10afb:	48 83 c8 ff          	or     rax,0xffffffffffffffff
   10aff:	c3                   	ret    

0000000000010b00 <fsync>:
   10b00:	83 3d 99 b8 20 00 00 	cmp    DWORD PTR [rip+0x20b899],0x0        # 21c3a0 <__pthread_multiple_threads>
   10b07:	75 10                	jne    10b19 <__fsync_nocancel+0x10>

0000000000010b09 <__fsync_nocancel>:
   10b09:	b8 4a 00 00 00       	mov    eax,0x4a
   10b0e:	0f 05                	syscall 
   10b10:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   10b16:	73 31                	jae    10b49 <__fsync_nocancel+0x40>
   10b18:	c3                   	ret    
   10b19:	48 83 ec 08          	sub    rsp,0x8
   10b1d:	e8 3e f6 ff ff       	call   10160 <__pthread_enable_asynccancel>
   10b22:	48 89 04 24          	mov    QWORD PTR [rsp],rax
   10b26:	b8 4a 00 00 00       	mov    eax,0x4a
   10b2b:	0f 05                	syscall 
   10b2d:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
   10b31:	48 89 c2             	mov    rdx,rax
   10b34:	e8 87 f6 ff ff       	call   101c0 <__pthread_disable_asynccancel>
   10b39:	48 89 d0             	mov    rax,rdx
   10b3c:	48 83 c4 08          	add    rsp,0x8
   10b40:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   10b46:	73 01                	jae    10b49 <__fsync_nocancel+0x40>
   10b48:	c3                   	ret    
   10b49:	48 8b 0d 38 74 20 00 	mov    rcx,QWORD PTR [rip+0x207438]        # 217f88 <_DYNAMIC+0x238>
   10b50:	f7 d8                	neg    eax
   10b52:	64 89 01             	mov    DWORD PTR fs:[rcx],eax
   10b55:	48 83 c8 ff          	or     rax,0xffffffffffffffff
   10b59:	c3                   	ret    
   10b5a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000010b60 <__lseek>:
   10b60:	b8 08 00 00 00       	mov    eax,0x8
   10b65:	0f 05                	syscall 
   10b67:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   10b6d:	73 01                	jae    10b70 <__lseek+0x10>
   10b6f:	c3                   	ret    
   10b70:	48 8b 0d 11 74 20 00 	mov    rcx,QWORD PTR [rip+0x207411]        # 217f88 <_DYNAMIC+0x238>
   10b77:	f7 d8                	neg    eax
   10b79:	64 89 01             	mov    DWORD PTR fs:[rcx],eax
   10b7c:	48 83 c8 ff          	or     rax,0xffffffffffffffff
   10b80:	c3                   	ret    
   10b81:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   10b88:	00 00 00 
   10b8b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000010b90 <msync>:
   10b90:	83 3d 09 b8 20 00 00 	cmp    DWORD PTR [rip+0x20b809],0x0        # 21c3a0 <__pthread_multiple_threads>
   10b97:	75 10                	jne    10ba9 <__msync_nocancel+0x10>

0000000000010b99 <__msync_nocancel>:
   10b99:	b8 1a 00 00 00       	mov    eax,0x1a
   10b9e:	0f 05                	syscall 
   10ba0:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   10ba6:	73 31                	jae    10bd9 <__msync_nocancel+0x40>
   10ba8:	c3                   	ret    
   10ba9:	48 83 ec 08          	sub    rsp,0x8
   10bad:	e8 ae f5 ff ff       	call   10160 <__pthread_enable_asynccancel>
   10bb2:	48 89 04 24          	mov    QWORD PTR [rsp],rax
   10bb6:	b8 1a 00 00 00       	mov    eax,0x1a
   10bbb:	0f 05                	syscall 
   10bbd:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
   10bc1:	48 89 c2             	mov    rdx,rax
   10bc4:	e8 f7 f5 ff ff       	call   101c0 <__pthread_disable_asynccancel>
   10bc9:	48 89 d0             	mov    rax,rdx
   10bcc:	48 83 c4 08          	add    rsp,0x8
   10bd0:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   10bd6:	73 01                	jae    10bd9 <__msync_nocancel+0x40>
   10bd8:	c3                   	ret    
   10bd9:	48 8b 0d a8 73 20 00 	mov    rcx,QWORD PTR [rip+0x2073a8]        # 217f88 <_DYNAMIC+0x238>
   10be0:	f7 d8                	neg    eax
   10be2:	64 89 01             	mov    DWORD PTR fs:[rcx],eax
   10be5:	48 83 c8 ff          	or     rax,0xffffffffffffffff
   10be9:	c3                   	ret    
   10bea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000010bf0 <__nanosleep>:
   10bf0:	83 3d a9 b7 20 00 00 	cmp    DWORD PTR [rip+0x20b7a9],0x0        # 21c3a0 <__pthread_multiple_threads>
   10bf7:	75 10                	jne    10c09 <__nanosleep_nocancel+0x10>

0000000000010bf9 <__nanosleep_nocancel>:
   10bf9:	b8 23 00 00 00       	mov    eax,0x23
   10bfe:	0f 05                	syscall 
   10c00:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   10c06:	73 31                	jae    10c39 <__nanosleep_nocancel+0x40>
   10c08:	c3                   	ret    
   10c09:	48 83 ec 08          	sub    rsp,0x8
   10c0d:	e8 4e f5 ff ff       	call   10160 <__pthread_enable_asynccancel>
   10c12:	48 89 04 24          	mov    QWORD PTR [rsp],rax
   10c16:	b8 23 00 00 00       	mov    eax,0x23
   10c1b:	0f 05                	syscall 
   10c1d:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
   10c21:	48 89 c2             	mov    rdx,rax
   10c24:	e8 97 f5 ff ff       	call   101c0 <__pthread_disable_asynccancel>
   10c29:	48 89 d0             	mov    rax,rdx
   10c2c:	48 83 c4 08          	add    rsp,0x8
   10c30:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   10c36:	73 01                	jae    10c39 <__nanosleep_nocancel+0x40>
   10c38:	c3                   	ret    
   10c39:	48 8b 0d 48 73 20 00 	mov    rcx,QWORD PTR [rip+0x207348]        # 217f88 <_DYNAMIC+0x238>
   10c40:	f7 d8                	neg    eax
   10c42:	64 89 01             	mov    DWORD PTR fs:[rcx],eax
   10c45:	48 83 c8 ff          	or     rax,0xffffffffffffffff
   10c49:	c3                   	ret    
   10c4a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000010c50 <__open>:
   10c50:	83 3d 49 b7 20 00 00 	cmp    DWORD PTR [rip+0x20b749],0x0        # 21c3a0 <__pthread_multiple_threads>
   10c57:	75 10                	jne    10c69 <__open_nocancel+0x10>

0000000000010c59 <__open_nocancel>:
   10c59:	b8 02 00 00 00       	mov    eax,0x2
   10c5e:	0f 05                	syscall 
   10c60:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   10c66:	73 31                	jae    10c99 <__open_nocancel+0x40>
   10c68:	c3                   	ret    
   10c69:	48 83 ec 08          	sub    rsp,0x8
   10c6d:	e8 ee f4 ff ff       	call   10160 <__pthread_enable_asynccancel>
   10c72:	48 89 04 24          	mov    QWORD PTR [rsp],rax
   10c76:	b8 02 00 00 00       	mov    eax,0x2
   10c7b:	0f 05                	syscall 
   10c7d:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
   10c81:	48 89 c2             	mov    rdx,rax
   10c84:	e8 37 f5 ff ff       	call   101c0 <__pthread_disable_asynccancel>
   10c89:	48 89 d0             	mov    rax,rdx
   10c8c:	48 83 c4 08          	add    rsp,0x8
   10c90:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   10c96:	73 01                	jae    10c99 <__open_nocancel+0x40>
   10c98:	c3                   	ret    
   10c99:	48 8b 0d e8 72 20 00 	mov    rcx,QWORD PTR [rip+0x2072e8]        # 217f88 <_DYNAMIC+0x238>
   10ca0:	f7 d8                	neg    eax
   10ca2:	64 89 01             	mov    DWORD PTR fs:[rcx],eax
   10ca5:	48 83 c8 ff          	or     rax,0xffffffffffffffff
   10ca9:	c3                   	ret    
   10caa:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000010cb0 <pause>:
   10cb0:	83 3d e9 b6 20 00 00 	cmp    DWORD PTR [rip+0x20b6e9],0x0        # 21c3a0 <__pthread_multiple_threads>
   10cb7:	75 10                	jne    10cc9 <__pause_nocancel+0x10>

0000000000010cb9 <__pause_nocancel>:
   10cb9:	b8 22 00 00 00       	mov    eax,0x22
   10cbe:	0f 05                	syscall 
   10cc0:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   10cc6:	73 31                	jae    10cf9 <__pause_nocancel+0x40>
   10cc8:	c3                   	ret    
   10cc9:	48 83 ec 08          	sub    rsp,0x8
   10ccd:	e8 8e f4 ff ff       	call   10160 <__pthread_enable_asynccancel>
   10cd2:	48 89 04 24          	mov    QWORD PTR [rsp],rax
   10cd6:	b8 22 00 00 00       	mov    eax,0x22
   10cdb:	0f 05                	syscall 
   10cdd:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
   10ce1:	48 89 c2             	mov    rdx,rax
   10ce4:	e8 d7 f4 ff ff       	call   101c0 <__pthread_disable_asynccancel>
   10ce9:	48 89 d0             	mov    rax,rdx
   10cec:	48 83 c4 08          	add    rsp,0x8
   10cf0:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   10cf6:	73 01                	jae    10cf9 <__pause_nocancel+0x40>
   10cf8:	c3                   	ret    
   10cf9:	48 8b 0d 88 72 20 00 	mov    rcx,QWORD PTR [rip+0x207288]        # 217f88 <_DYNAMIC+0x238>
   10d00:	f7 d8                	neg    eax
   10d02:	64 89 01             	mov    DWORD PTR fs:[rcx],eax
   10d05:	48 83 c8 ff          	or     rax,0xffffffffffffffff
   10d09:	c3                   	ret    
   10d0a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000010d10 <__pread64>:
   10d10:	83 3d 89 b6 20 00 00 	cmp    DWORD PTR [rip+0x20b689],0x0        # 21c3a0 <__pthread_multiple_threads>
   10d17:	75 13                	jne    10d2c <__pread_nocancel+0x13>

0000000000010d19 <__pread_nocancel>:
   10d19:	49 89 ca             	mov    r10,rcx
   10d1c:	b8 11 00 00 00       	mov    eax,0x11
   10d21:	0f 05                	syscall 
   10d23:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   10d29:	73 34                	jae    10d5f <__pread_nocancel+0x46>
   10d2b:	c3                   	ret    
   10d2c:	48 83 ec 08          	sub    rsp,0x8
   10d30:	e8 2b f4 ff ff       	call   10160 <__pthread_enable_asynccancel>
   10d35:	48 89 04 24          	mov    QWORD PTR [rsp],rax
   10d39:	49 89 ca             	mov    r10,rcx
   10d3c:	b8 11 00 00 00       	mov    eax,0x11
   10d41:	0f 05                	syscall 
   10d43:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
   10d47:	48 89 c2             	mov    rdx,rax
   10d4a:	e8 71 f4 ff ff       	call   101c0 <__pthread_disable_asynccancel>
   10d4f:	48 89 d0             	mov    rax,rdx
   10d52:	48 83 c4 08          	add    rsp,0x8
   10d56:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   10d5c:	73 01                	jae    10d5f <__pread_nocancel+0x46>
   10d5e:	c3                   	ret    
   10d5f:	48 8b 0d 22 72 20 00 	mov    rcx,QWORD PTR [rip+0x207222]        # 217f88 <_DYNAMIC+0x238>
   10d66:	f7 d8                	neg    eax
   10d68:	64 89 01             	mov    DWORD PTR fs:[rcx],eax
   10d6b:	48 83 c8 ff          	or     rax,0xffffffffffffffff
   10d6f:	c3                   	ret    

0000000000010d70 <__pwrite64>:
   10d70:	83 3d 29 b6 20 00 00 	cmp    DWORD PTR [rip+0x20b629],0x0        # 21c3a0 <__pthread_multiple_threads>
   10d77:	75 13                	jne    10d8c <__pwrite_nocancel+0x13>

0000000000010d79 <__pwrite_nocancel>:
   10d79:	49 89 ca             	mov    r10,rcx
   10d7c:	b8 12 00 00 00       	mov    eax,0x12
   10d81:	0f 05                	syscall 
   10d83:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   10d89:	73 34                	jae    10dbf <__pwrite_nocancel+0x46>
   10d8b:	c3                   	ret    
   10d8c:	48 83 ec 08          	sub    rsp,0x8
   10d90:	e8 cb f3 ff ff       	call   10160 <__pthread_enable_asynccancel>
   10d95:	48 89 04 24          	mov    QWORD PTR [rsp],rax
   10d99:	49 89 ca             	mov    r10,rcx
   10d9c:	b8 12 00 00 00       	mov    eax,0x12
   10da1:	0f 05                	syscall 
   10da3:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
   10da7:	48 89 c2             	mov    rdx,rax
   10daa:	e8 11 f4 ff ff       	call   101c0 <__pthread_disable_asynccancel>
   10daf:	48 89 d0             	mov    rax,rdx
   10db2:	48 83 c4 08          	add    rsp,0x8
   10db6:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   10dbc:	73 01                	jae    10dbf <__pwrite_nocancel+0x46>
   10dbe:	c3                   	ret    
   10dbf:	48 8b 0d c2 71 20 00 	mov    rcx,QWORD PTR [rip+0x2071c2]        # 217f88 <_DYNAMIC+0x238>
   10dc6:	f7 d8                	neg    eax
   10dc8:	64 89 01             	mov    DWORD PTR fs:[rcx],eax
   10dcb:	48 83 c8 ff          	or     rax,0xffffffffffffffff
   10dcf:	c3                   	ret    

0000000000010dd0 <tcdrain>:
   10dd0:	8b 05 ca b5 20 00    	mov    eax,DWORD PTR [rip+0x20b5ca]        # 21c3a0 <__pthread_multiple_threads>
   10dd6:	85 c0                	test   eax,eax
   10dd8:	75 3e                	jne    10e18 <tcdrain+0x48>
   10dda:	ba 01 00 00 00       	mov    edx,0x1
   10ddf:	be 09 54 00 00       	mov    esi,0x5409
   10de4:	48 63 ff             	movsxd rdi,edi
   10de7:	b8 10 00 00 00       	mov    eax,0x10
   10dec:	0f 05                	syscall 
   10dee:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
   10df4:	77 0a                	ja     10e00 <tcdrain+0x30>
   10df6:	c3                   	ret    
   10df7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   10dfe:	00 00 
   10e00:	48 8b 15 81 71 20 00 	mov    rdx,QWORD PTR [rip+0x207181]        # 217f88 <_DYNAMIC+0x238>
   10e07:	f7 d8                	neg    eax
   10e09:	64 89 02             	mov    DWORD PTR fs:[rdx],eax
   10e0c:	b8 ff ff ff ff       	mov    eax,0xffffffff
   10e11:	c3                   	ret    
   10e12:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   10e18:	53                   	push   rbx
   10e19:	89 fb                	mov    ebx,edi
   10e1b:	48 83 ec 10          	sub    rsp,0x10
   10e1f:	e8 3c f3 ff ff       	call   10160 <__pthread_enable_asynccancel>
   10e24:	ba 01 00 00 00       	mov    edx,0x1
   10e29:	41 89 c0             	mov    r8d,eax
   10e2c:	be 09 54 00 00       	mov    esi,0x5409
   10e31:	48 63 fb             	movsxd rdi,ebx
   10e34:	b8 10 00 00 00       	mov    eax,0x10
   10e39:	0f 05                	syscall 
   10e3b:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
   10e41:	77 16                	ja     10e59 <tcdrain+0x89>
   10e43:	44 89 c7             	mov    edi,r8d
   10e46:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
   10e4a:	e8 71 f3 ff ff       	call   101c0 <__pthread_disable_asynccancel>
   10e4f:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
   10e53:	48 83 c4 10          	add    rsp,0x10
   10e57:	5b                   	pop    rbx
   10e58:	c3                   	ret    
   10e59:	48 8b 15 28 71 20 00 	mov    rdx,QWORD PTR [rip+0x207128]        # 217f88 <_DYNAMIC+0x238>
   10e60:	f7 d8                	neg    eax
   10e62:	64 89 02             	mov    DWORD PTR fs:[rdx],eax
   10e65:	b8 ff ff ff ff       	mov    eax,0xffffffff
   10e6a:	eb d7                	jmp    10e43 <tcdrain+0x73>
   10e6c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000010e70 <__wait>:
   10e70:	8b 05 2a b5 20 00    	mov    eax,DWORD PTR [rip+0x20b52a]        # 21c3a0 <__pthread_multiple_threads>
   10e76:	85 c0                	test   eax,eax
   10e78:	75 3e                	jne    10eb8 <__wait+0x48>
   10e7a:	48 89 fe             	mov    rsi,rdi
   10e7d:	45 31 d2             	xor    r10d,r10d
   10e80:	31 d2                	xor    edx,edx
   10e82:	48 c7 c7 ff ff ff ff 	mov    rdi,0xffffffffffffffff
   10e89:	b8 3d 00 00 00       	mov    eax,0x3d
   10e8e:	0f 05                	syscall 
   10e90:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
   10e96:	77 08                	ja     10ea0 <__wait+0x30>
   10e98:	c3                   	ret    
   10e99:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   10ea0:	48 8b 15 e1 70 20 00 	mov    rdx,QWORD PTR [rip+0x2070e1]        # 217f88 <_DYNAMIC+0x238>
   10ea7:	f7 d8                	neg    eax
   10ea9:	64 89 02             	mov    DWORD PTR fs:[rdx],eax
   10eac:	b8 ff ff ff ff       	mov    eax,0xffffffff
   10eb1:	c3                   	ret    
   10eb2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   10eb8:	53                   	push   rbx
   10eb9:	48 89 fb             	mov    rbx,rdi
   10ebc:	48 83 ec 10          	sub    rsp,0x10
   10ec0:	e8 9b f2 ff ff       	call   10160 <__pthread_enable_asynccancel>
   10ec5:	45 31 d2             	xor    r10d,r10d
   10ec8:	41 89 c0             	mov    r8d,eax
   10ecb:	31 d2                	xor    edx,edx
   10ecd:	48 89 de             	mov    rsi,rbx
   10ed0:	48 c7 c7 ff ff ff ff 	mov    rdi,0xffffffffffffffff
   10ed7:	b8 3d 00 00 00       	mov    eax,0x3d
   10edc:	0f 05                	syscall 
   10ede:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
   10ee4:	77 16                	ja     10efc <__wait+0x8c>
   10ee6:	44 89 c7             	mov    edi,r8d
   10ee9:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
   10eed:	e8 ce f2 ff ff       	call   101c0 <__pthread_disable_asynccancel>
   10ef2:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
   10ef6:	48 83 c4 10          	add    rsp,0x10
   10efa:	5b                   	pop    rbx
   10efb:	c3                   	ret    
   10efc:	48 8b 15 85 70 20 00 	mov    rdx,QWORD PTR [rip+0x207085]        # 217f88 <_DYNAMIC+0x238>
   10f03:	f7 d8                	neg    eax
   10f05:	64 89 02             	mov    DWORD PTR fs:[rdx],eax
   10f08:	b8 ff ff ff ff       	mov    eax,0xffffffff
   10f0d:	eb d7                	jmp    10ee6 <__wait+0x76>
   10f0f:	90                   	nop

0000000000010f10 <waitpid>:
   10f10:	8b 05 8a b4 20 00    	mov    eax,DWORD PTR [rip+0x20b48a]        # 21c3a0 <__pthread_multiple_threads>
   10f16:	85 c0                	test   eax,eax
   10f18:	75 36                	jne    10f50 <waitpid+0x40>
   10f1a:	45 31 d2             	xor    r10d,r10d
   10f1d:	48 63 d2             	movsxd rdx,edx
   10f20:	48 63 ff             	movsxd rdi,edi
   10f23:	b8 3d 00 00 00       	mov    eax,0x3d
   10f28:	0f 05                	syscall 
   10f2a:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
   10f30:	77 06                	ja     10f38 <waitpid+0x28>
   10f32:	c3                   	ret    
   10f33:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   10f38:	48 8b 15 49 70 20 00 	mov    rdx,QWORD PTR [rip+0x207049]        # 217f88 <_DYNAMIC+0x238>
   10f3f:	f7 d8                	neg    eax
   10f41:	64 89 02             	mov    DWORD PTR fs:[rdx],eax
   10f44:	b8 ff ff ff ff       	mov    eax,0xffffffff
   10f49:	c3                   	ret    
   10f4a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   10f50:	41 54                	push   r12
   10f52:	55                   	push   rbp
   10f53:	41 89 d4             	mov    r12d,edx
   10f56:	53                   	push   rbx
   10f57:	48 89 f5             	mov    rbp,rsi
   10f5a:	89 fb                	mov    ebx,edi
   10f5c:	48 83 ec 10          	sub    rsp,0x10
   10f60:	e8 fb f1 ff ff       	call   10160 <__pthread_enable_asynccancel>
   10f65:	45 31 d2             	xor    r10d,r10d
   10f68:	41 89 c0             	mov    r8d,eax
   10f6b:	49 63 d4             	movsxd rdx,r12d
   10f6e:	48 89 ee             	mov    rsi,rbp
   10f71:	48 63 fb             	movsxd rdi,ebx
   10f74:	b8 3d 00 00 00       	mov    eax,0x3d
   10f79:	0f 05                	syscall 
   10f7b:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
   10f81:	77 19                	ja     10f9c <waitpid+0x8c>
   10f83:	44 89 c7             	mov    edi,r8d
   10f86:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
   10f8a:	e8 31 f2 ff ff       	call   101c0 <__pthread_disable_asynccancel>
   10f8f:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
   10f93:	48 83 c4 10          	add    rsp,0x10
   10f97:	5b                   	pop    rbx
   10f98:	5d                   	pop    rbp
   10f99:	41 5c                	pop    r12
   10f9b:	c3                   	ret    
   10f9c:	48 8b 15 e5 6f 20 00 	mov    rdx,QWORD PTR [rip+0x206fe5]        # 217f88 <_DYNAMIC+0x238>
   10fa3:	f7 d8                	neg    eax
   10fa5:	64 89 02             	mov    DWORD PTR fs:[rdx],eax
   10fa8:	b8 ff ff ff ff       	mov    eax,0xffffffff
   10fad:	eb d4                	jmp    10f83 <waitpid+0x73>
   10faf:	90                   	nop

0000000000010fb0 <__GI___msgrcv>:
   10fb0:	83 3d e9 b3 20 00 00 	cmp    DWORD PTR [rip+0x20b3e9],0x0        # 21c3a0 <__pthread_multiple_threads>
   10fb7:	75 13                	jne    10fcc <__msgrcv_nocancel+0x13>

0000000000010fb9 <__msgrcv_nocancel>:
   10fb9:	49 89 ca             	mov    r10,rcx
   10fbc:	b8 46 00 00 00       	mov    eax,0x46
   10fc1:	0f 05                	syscall 
   10fc3:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   10fc9:	73 34                	jae    10fff <__msgrcv_nocancel+0x46>
   10fcb:	c3                   	ret    
   10fcc:	48 83 ec 08          	sub    rsp,0x8
   10fd0:	e8 8b f1 ff ff       	call   10160 <__pthread_enable_asynccancel>
   10fd5:	48 89 04 24          	mov    QWORD PTR [rsp],rax
   10fd9:	49 89 ca             	mov    r10,rcx
   10fdc:	b8 46 00 00 00       	mov    eax,0x46
   10fe1:	0f 05                	syscall 
   10fe3:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
   10fe7:	48 89 c2             	mov    rdx,rax
   10fea:	e8 d1 f1 ff ff       	call   101c0 <__pthread_disable_asynccancel>
   10fef:	48 89 d0             	mov    rax,rdx
   10ff2:	48 83 c4 08          	add    rsp,0x8
   10ff6:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   10ffc:	73 01                	jae    10fff <__msgrcv_nocancel+0x46>
   10ffe:	c3                   	ret    
   10fff:	48 8b 0d 82 6f 20 00 	mov    rcx,QWORD PTR [rip+0x206f82]        # 217f88 <_DYNAMIC+0x238>
   11006:	f7 d8                	neg    eax
   11008:	64 89 01             	mov    DWORD PTR fs:[rcx],eax
   1100b:	48 83 c8 ff          	or     rax,0xffffffffffffffff
   1100f:	c3                   	ret    

0000000000011010 <__GI___msgsnd>:
   11010:	83 3d 89 b3 20 00 00 	cmp    DWORD PTR [rip+0x20b389],0x0        # 21c3a0 <__pthread_multiple_threads>
   11017:	75 13                	jne    1102c <__msgsnd_nocancel+0x13>

0000000000011019 <__msgsnd_nocancel>:
   11019:	49 89 ca             	mov    r10,rcx
   1101c:	b8 45 00 00 00       	mov    eax,0x45
   11021:	0f 05                	syscall 
   11023:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   11029:	73 34                	jae    1105f <__msgsnd_nocancel+0x46>
   1102b:	c3                   	ret    
   1102c:	48 83 ec 08          	sub    rsp,0x8
   11030:	e8 2b f1 ff ff       	call   10160 <__pthread_enable_asynccancel>
   11035:	48 89 04 24          	mov    QWORD PTR [rsp],rax
   11039:	49 89 ca             	mov    r10,rcx
   1103c:	b8 45 00 00 00       	mov    eax,0x45
   11041:	0f 05                	syscall 
   11043:	48 8b 3c 24          	mov    rdi,QWORD PTR [rsp]
   11047:	48 89 c2             	mov    rdx,rax
   1104a:	e8 71 f1 ff ff       	call   101c0 <__pthread_disable_asynccancel>
   1104f:	48 89 d0             	mov    rax,rdx
   11052:	48 83 c4 08          	add    rsp,0x8
   11056:	48 3d 01 f0 ff ff    	cmp    rax,0xfffffffffffff001
   1105c:	73 01                	jae    1105f <__msgsnd_nocancel+0x46>
   1105e:	c3                   	ret    
   1105f:	48 8b 0d 22 6f 20 00 	mov    rcx,QWORD PTR [rip+0x206f22]        # 217f88 <_DYNAMIC+0x238>
   11066:	f7 d8                	neg    eax
   11068:	64 89 01             	mov    DWORD PTR fs:[rcx],eax
   1106b:	48 83 c8 ff          	or     rax,0xffffffffffffffff
   1106f:	c3                   	ret    

0000000000011070 <sigwait>:
   11070:	55                   	push   rbp
   11071:	53                   	push   rbx
   11072:	48 89 f3             	mov    rbx,rsi
   11075:	48 81 ec 88 00 00 00 	sub    rsp,0x88
   1107c:	8b 05 1e b3 20 00    	mov    eax,DWORD PTR [rip+0x20b31e]        # 21c3a0 <__pthread_multiple_threads>
   11082:	85 c0                	test   eax,eax
   11084:	0f 85 83 00 00 00    	jne    1110d <sigwait+0x9d>
   1108a:	48 85 ff             	test   rdi,rdi
   1108d:	74 79                	je     11108 <sigwait+0x98>
   1108f:	48 8b 07             	mov    rax,QWORD PTR [rdi]
   11092:	48 ba 00 00 00 80 01 	movabs rdx,0x180000000
   11099:	00 00 00 
   1109c:	48 85 d0             	test   rax,rdx
   1109f:	75 4b                	jne    110ec <sigwait+0x7c>
   110a1:	49 89 f8             	mov    r8,rdi
   110a4:	41 b9 80 00 00 00    	mov    r9d,0x80
   110aa:	eb 09                	jmp    110b5 <sigwait+0x45>
   110ac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   110b0:	83 f8 fc             	cmp    eax,0xfffffffc
   110b3:	75 1d                	jne    110d2 <sigwait+0x62>
   110b5:	41 ba 08 00 00 00    	mov    r10d,0x8
   110bb:	31 d2                	xor    edx,edx
   110bd:	31 f6                	xor    esi,esi
   110bf:	4c 89 c7             	mov    rdi,r8
   110c2:	44 89 c8             	mov    eax,r9d
   110c5:	0f 05                	syscall 
   110c7:	3d 00 f0 ff ff       	cmp    eax,0xfffff000
   110cc:	89 c2                	mov    edx,eax
   110ce:	89 c1                	mov    ecx,eax
   110d0:	77 de                	ja     110b0 <sigwait+0x40>
   110d2:	89 d0                	mov    eax,edx
   110d4:	f7 d8                	neg    eax
   110d6:	81 f9 00 f0 ff ff    	cmp    ecx,0xfffff000
   110dc:	77 04                	ja     110e2 <sigwait+0x72>
   110de:	89 13                	mov    DWORD PTR [rbx],edx
   110e0:	31 c0                	xor    eax,eax
   110e2:	48 81 c4 88 00 00 00 	add    rsp,0x88
   110e9:	5b                   	pop    rbx
   110ea:	5d                   	pop    rbp
   110eb:	c3                   	ret    
   110ec:	48 ba ff ff ff 7f fe 	movabs rdx,0xfffffffe7fffffff
   110f3:	ff ff ff 
   110f6:	49 89 e0             	mov    r8,rsp
   110f9:	48 21 d0             	and    rax,rdx
   110fc:	48 89 04 24          	mov    QWORD PTR [rsp],rax
   11100:	eb a2                	jmp    110a4 <sigwait+0x34>
   11102:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   11108:	45 31 c0             	xor    r8d,r8d
   1110b:	eb 97                	jmp    110a4 <sigwait+0x34>
   1110d:	48 89 fb             	mov    rbx,rdi
   11110:	48 89 f5             	mov    rbp,rsi
   11113:	e8 48 f0 ff ff       	call   10160 <__pthread_enable_asynccancel>
   11118:	48 85 db             	test   rbx,rbx
   1111b:	41 89 c1             	mov    r9d,eax
   1111e:	74 7c                	je     1119c <sigwait+0x12c>
   11120:	48 8b 03             	mov    rax,QWORD PTR [rbx]
   11123:	48 ba 00 00 00 80 01 	movabs rdx,0x180000000
   1112a:	00 00 00 
   1112d:	48 85 d0             	test   rax,rdx
   11130:	75 54                	jne    11186 <sigwait+0x116>
   11132:	49 89 d8             	mov    r8,rbx
   11135:	bb 80 00 00 00       	mov    ebx,0x80
   1113a:	eb 09                	jmp    11145 <sigwait+0xd5>
   1113c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   11140:	83 f8 fc             	cmp    eax,0xfffffffc
   11143:	75 1c                	jne    11161 <sigwait+0xf1>
   11145:	41 ba 08 00 00 00    	mov    r10d,0x8
   1114b:	31 d2                	xor    edx,edx
   1114d:	31 f6                	xor    esi,esi
   1114f:	4c 89 c7             	mov    rdi,r8
   11152:	89 d8                	mov    eax,ebx
   11154:	0f 05                	syscall 
   11156:	3d 00 f0 ff ff       	cmp    eax,0xfffff000
   1115b:	89 c2                	mov    edx,eax
   1115d:	89 c1                	mov    ecx,eax
   1115f:	77 df                	ja     11140 <sigwait+0xd0>
   11161:	89 d3                	mov    ebx,edx
   11163:	f7 db                	neg    ebx
   11165:	81 f9 00 f0 ff ff    	cmp    ecx,0xfffff000
   1116b:	77 05                	ja     11172 <sigwait+0x102>
   1116d:	89 55 00             	mov    DWORD PTR [rbp+0x0],edx
   11170:	31 db                	xor    ebx,ebx
   11172:	44 89 cf             	mov    edi,r9d
   11175:	e8 46 f0 ff ff       	call   101c0 <__pthread_disable_asynccancel>
   1117a:	48 81 c4 88 00 00 00 	add    rsp,0x88
   11181:	89 d8                	mov    eax,ebx
   11183:	5b                   	pop    rbx
   11184:	5d                   	pop    rbp
   11185:	c3                   	ret    
   11186:	48 ba ff ff ff 7f fe 	movabs rdx,0xfffffffe7fffffff
   1118d:	ff ff ff 
   11190:	49 89 e0             	mov    r8,rsp
   11193:	48 21 d0             	and    rax,rdx
   11196:	48 89 04 24          	mov    QWORD PTR [rsp],rax
   1119a:	eb 99                	jmp    11135 <sigwait+0xc5>
   1119c:	45 31 c0             	xor    r8d,r8d
   1119f:	eb 94                	jmp    11135 <sigwait+0xc5>
   111a1:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   111a8:	00 00 00 
   111ab:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

00000000000111b0 <__libc_sigsuspend>:
   111b0:	8b 05 ea b1 20 00    	mov    eax,DWORD PTR [rip+0x20b1ea]        # 21c3a0 <__pthread_multiple_threads>
   111b6:	85 c0                	test   eax,eax
   111b8:	75 2e                	jne    111e8 <__libc_sigsuspend+0x38>
   111ba:	be 08 00 00 00       	mov    esi,0x8
   111bf:	b8 82 00 00 00       	mov    eax,0x82
   111c4:	0f 05                	syscall 
   111c6:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
   111cc:	77 02                	ja     111d0 <__libc_sigsuspend+0x20>
   111ce:	c3                   	ret    
   111cf:	90                   	nop
   111d0:	48 8b 15 b1 6d 20 00 	mov    rdx,QWORD PTR [rip+0x206db1]        # 217f88 <_DYNAMIC+0x238>
   111d7:	f7 d8                	neg    eax
   111d9:	64 89 02             	mov    DWORD PTR fs:[rdx],eax
   111dc:	b8 ff ff ff ff       	mov    eax,0xffffffff
   111e1:	c3                   	ret    
   111e2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   111e8:	53                   	push   rbx
   111e9:	48 89 fb             	mov    rbx,rdi
   111ec:	48 83 ec 10          	sub    rsp,0x10
   111f0:	e8 6b ef ff ff       	call   10160 <__pthread_enable_asynccancel>
   111f5:	be 08 00 00 00       	mov    esi,0x8
   111fa:	89 c2                	mov    edx,eax
   111fc:	48 89 df             	mov    rdi,rbx
   111ff:	b8 82 00 00 00       	mov    eax,0x82
   11204:	0f 05                	syscall 
   11206:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
   1120c:	77 15                	ja     11223 <__libc_sigsuspend+0x73>
   1120e:	89 d7                	mov    edi,edx
   11210:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
   11214:	e8 a7 ef ff ff       	call   101c0 <__pthread_disable_asynccancel>
   11219:	8b 44 24 0c          	mov    eax,DWORD PTR [rsp+0xc]
   1121d:	48 83 c4 10          	add    rsp,0x10
   11221:	5b                   	pop    rbx
   11222:	c3                   	ret    
   11223:	48 8b 0d 5e 6d 20 00 	mov    rcx,QWORD PTR [rip+0x206d5e]        # 217f88 <_DYNAMIC+0x238>
   1122a:	f7 d8                	neg    eax
   1122c:	64 89 01             	mov    DWORD PTR fs:[rcx],eax
   1122f:	b8 ff ff ff ff       	mov    eax,0xffffffff
   11234:	eb d8                	jmp    1120e <__libc_sigsuspend+0x5e>
   11236:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   1123d:	00 00 00 

0000000000011240 <raise>:
   11240:	64 8b 04 25 d4 02 00 	mov    eax,DWORD PTR fs:0x2d4
   11247:	00 
   11248:	64 8b 34 25 d0 02 00 	mov    esi,DWORD PTR fs:0x2d0
   1124f:	00 
   11250:	89 c1                	mov    ecx,eax
   11252:	48 63 d7             	movsxd rdx,edi
   11255:	48 63 f6             	movsxd rsi,esi
   11258:	c1 f9 1f             	sar    ecx,0x1f
   1125b:	31 c8                	xor    eax,ecx
   1125d:	29 c8                	sub    eax,ecx
   1125f:	48 63 f8             	movsxd rdi,eax
   11262:	b8 ea 00 00 00       	mov    eax,0xea
   11267:	0f 05                	syscall 
   11269:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
   1126f:	77 07                	ja     11278 <raise+0x38>
   11271:	f3 c3                	repz ret 
   11273:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   11278:	48 8b 15 09 6d 20 00 	mov    rdx,QWORD PTR [rip+0x206d09]        # 217f88 <_DYNAMIC+0x238>
   1127f:	f7 d8                	neg    eax
   11281:	64 89 02             	mov    DWORD PTR fs:[rdx],eax
   11284:	b8 ff ff ff ff       	mov    eax,0xffffffff
   11289:	c3                   	ret    
   1128a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000011290 <system_resolve>:
   11290:	48 8b 05 01 6d 20 00 	mov    rax,QWORD PTR [rip+0x206d01]        # 217f98 <_DYNAMIC+0x248>
   11297:	c3                   	ret    
   11298:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1129f:	00 

00000000000112a0 <_IO_flockfile>:
   112a0:	48 8b 97 88 00 00 00 	mov    rdx,QWORD PTR [rdi+0x88]
   112a7:	49 89 f9             	mov    r9,rdi
   112aa:	64 4c 8b 04 25 10 00 	mov    r8,QWORD PTR fs:0x10
   112b1:	00 00 
   112b3:	4c 3b 42 08          	cmp    r8,QWORD PTR [rdx+0x8]
   112b7:	74 2e                	je     112e7 <_IO_flockfile+0x47>
   112b9:	be 01 00 00 00       	mov    esi,0x1
   112be:	31 c0                	xor    eax,eax
   112c0:	f0 0f b1 32          	lock cmpxchg DWORD PTR [rdx],esi
   112c4:	74 16                	je     112dc <_IO_flockfile+0x3c>
   112c6:	48 8d 3a             	lea    rdi,[rdx]
   112c9:	48 81 ec 80 00 00 00 	sub    rsp,0x80
   112d0:	e8 4b ef ff ff       	call   10220 <__lll_lock_wait_private>
   112d5:	48 81 c4 80 00 00 00 	add    rsp,0x80
   112dc:	49 8b 91 88 00 00 00 	mov    rdx,QWORD PTR [r9+0x88]
   112e3:	4c 89 42 08          	mov    QWORD PTR [rdx+0x8],r8
   112e7:	83 42 04 01          	add    DWORD PTR [rdx+0x4],0x1
   112eb:	c3                   	ret    
   112ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000000112f0 <_IO_ftrylockfile>:
   112f0:	48 8b 97 88 00 00 00 	mov    rdx,QWORD PTR [rdi+0x88]
   112f7:	64 4c 8b 04 25 10 00 	mov    r8,QWORD PTR fs:0x10
   112fe:	00 00 
   11300:	4c 3b 42 08          	cmp    r8,QWORD PTR [rdx+0x8]
   11304:	74 32                	je     11338 <_IO_ftrylockfile+0x48>
   11306:	31 c9                	xor    ecx,ecx
   11308:	be 01 00 00 00       	mov    esi,0x1
   1130d:	89 c8                	mov    eax,ecx
   1130f:	f0 0f b1 32          	lock cmpxchg DWORD PTR [rdx],esi
   11313:	89 c1                	mov    ecx,eax
   11315:	b8 10 00 00 00       	mov    eax,0x10
   1131a:	85 c9                	test   ecx,ecx
   1131c:	74 02                	je     11320 <_IO_ftrylockfile+0x30>
   1131e:	f3 c3                	repz ret 
   11320:	48 8b 87 88 00 00 00 	mov    rax,QWORD PTR [rdi+0x88]
   11327:	4c 89 40 08          	mov    QWORD PTR [rax+0x8],r8
   1132b:	c7 40 04 01 00 00 00 	mov    DWORD PTR [rax+0x4],0x1
   11332:	31 c0                	xor    eax,eax
   11334:	c3                   	ret    
   11335:	0f 1f 00             	nop    DWORD PTR [rax]
   11338:	83 42 04 01          	add    DWORD PTR [rdx+0x4],0x1
   1133c:	31 c0                	xor    eax,eax
   1133e:	c3                   	ret    
   1133f:	90                   	nop

0000000000011340 <_IO_funlockfile>:
   11340:	48 8b 97 88 00 00 00 	mov    rdx,QWORD PTR [rdi+0x88]
   11347:	83 6a 04 01          	sub    DWORD PTR [rdx+0x4],0x1
   1134b:	75 23                	jne    11370 <_IO_funlockfile+0x30>
   1134d:	48 c7 42 08 00 00 00 	mov    QWORD PTR [rdx+0x8],0x0
   11354:	00 
   11355:	f0 ff 0a             	lock dec DWORD PTR [rdx]
   11358:	74 16                	je     11370 <_IO_funlockfile+0x30>
   1135a:	48 8d 3a             	lea    rdi,[rdx]
   1135d:	48 81 ec 80 00 00 00 	sub    rsp,0x80
   11364:	e8 67 ef ff ff       	call   102d0 <__lll_unlock_wake_private>
   11369:	48 81 c4 80 00 00 00 	add    rsp,0x80
   11370:	f3 c3                	repz ret 
   11372:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   11379:	00 00 00 
   1137c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   11380:	90                   	nop
   11381:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   11386:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   1138d:	00 00 00 

0000000000011390 <__restore_rt>:
   11390:	48 c7 c0 0f 00 00 00 	mov    rax,0xf
   11397:	0f 05                	syscall 
   11399:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

00000000000113a0 <__libc_sigaction>:
   113a0:	48 81 ec d0 00 00 00 	sub    rsp,0xd0
   113a7:	48 85 f6             	test   rsi,rsi
   113aa:	49 89 d0             	mov    r8,rdx
   113ad:	0f 84 d5 01 00 00    	je     11588 <__libc_sigaction+0x1e8>
   113b3:	4c 8b 4e 08          	mov    r9,QWORD PTR [rsi+0x8]
   113b7:	48 8d 4c 24 88       	lea    rcx,[rsp-0x78]
   113bc:	48 8b 06             	mov    rax,QWORD PTR [rsi]
   113bf:	4c 89 4c 24 a0       	mov    QWORD PTR [rsp-0x60],r9
   113c4:	4c 8b 4e 10          	mov    r9,QWORD PTR [rsi+0x10]
   113c8:	48 89 44 24 88       	mov    QWORD PTR [rsp-0x78],rax
   113cd:	4c 89 49 20          	mov    QWORD PTR [rcx+0x20],r9
   113d1:	4c 8b 4e 18          	mov    r9,QWORD PTR [rsi+0x18]
   113d5:	4c 89 49 28          	mov    QWORD PTR [rcx+0x28],r9
   113d9:	4c 8b 4e 20          	mov    r9,QWORD PTR [rsi+0x20]
   113dd:	4c 89 49 30          	mov    QWORD PTR [rcx+0x30],r9
   113e1:	4c 8b 4e 28          	mov    r9,QWORD PTR [rsi+0x28]
   113e5:	4c 89 49 38          	mov    QWORD PTR [rcx+0x38],r9
   113e9:	4c 8b 4e 30          	mov    r9,QWORD PTR [rsi+0x30]
   113ed:	4c 89 49 40          	mov    QWORD PTR [rcx+0x40],r9
   113f1:	4c 8b 4e 38          	mov    r9,QWORD PTR [rsi+0x38]
   113f5:	4c 89 49 48          	mov    QWORD PTR [rcx+0x48],r9
   113f9:	4c 8b 4e 40          	mov    r9,QWORD PTR [rsi+0x40]
   113fd:	4c 89 49 50          	mov    QWORD PTR [rcx+0x50],r9
   11401:	4c 8b 4e 48          	mov    r9,QWORD PTR [rsi+0x48]
   11405:	4c 89 49 58          	mov    QWORD PTR [rcx+0x58],r9
   11409:	4c 8b 4e 50          	mov    r9,QWORD PTR [rsi+0x50]
   1140d:	4c 89 49 60          	mov    QWORD PTR [rcx+0x60],r9
   11411:	4c 8b 4e 58          	mov    r9,QWORD PTR [rsi+0x58]
   11415:	4c 89 49 68          	mov    QWORD PTR [rcx+0x68],r9
   11419:	4c 8b 4e 60          	mov    r9,QWORD PTR [rsi+0x60]
   1141d:	4c 89 49 70          	mov    QWORD PTR [rcx+0x70],r9
   11421:	4c 8b 4e 68          	mov    r9,QWORD PTR [rsi+0x68]
   11425:	4c 89 49 78          	mov    QWORD PTR [rcx+0x78],r9
   11429:	4c 8b 4e 70          	mov    r9,QWORD PTR [rsi+0x70]
   1142d:	4c 89 89 80 00 00 00 	mov    QWORD PTR [rcx+0x80],r9
   11434:	4c 8b 4e 78          	mov    r9,QWORD PTR [rsi+0x78]
   11438:	4c 89 89 88 00 00 00 	mov    QWORD PTR [rcx+0x88],r9
   1143f:	48 8b 96 80 00 00 00 	mov    rdx,QWORD PTR [rsi+0x80]
   11446:	8b 86 88 00 00 00    	mov    eax,DWORD PTR [rsi+0x88]
   1144c:	48 89 91 90 00 00 00 	mov    QWORD PTR [rcx+0x90],rdx
   11453:	0d 00 00 00 04       	or     eax,0x4000000
   11458:	4d 85 c0             	test   r8,r8
   1145b:	48 98                	cdqe   
   1145d:	48 89 44 24 90       	mov    QWORD PTR [rsp-0x70],rax
   11462:	48 8d 05 27 ff ff ff 	lea    rax,[rip+0xffffffffffffff27]        # 11390 <__restore_rt>
   11469:	48 89 44 24 98       	mov    QWORD PTR [rsp-0x68],rax
   1146e:	0f 84 55 01 00 00    	je     115c9 <__libc_sigaction+0x229>
   11474:	48 8d 54 24 28       	lea    rdx,[rsp+0x28]
   11479:	48 89 ce             	mov    rsi,rcx
   1147c:	b9 0d 00 00 00       	mov    ecx,0xd
   11481:	41 ba 08 00 00 00    	mov    r10d,0x8
   11487:	48 63 ff             	movsxd rdi,edi
   1148a:	89 c8                	mov    eax,ecx
   1148c:	0f 05                	syscall 
   1148e:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
   11494:	48 89 c2             	mov    rdx,rax
   11497:	0f 87 13 01 00 00    	ja     115b0 <__libc_sigaction+0x210>
   1149d:	4d 85 c0             	test   r8,r8
   114a0:	0f 84 d3 00 00 00    	je     11579 <__libc_sigaction+0x1d9>
   114a6:	85 c0                	test   eax,eax
   114a8:	0f 88 cb 00 00 00    	js     11579 <__libc_sigaction+0x1d9>
   114ae:	48 8b 74 24 40       	mov    rsi,QWORD PTR [rsp+0x40]
   114b3:	48 8b 54 24 28       	mov    rdx,QWORD PTR [rsp+0x28]
   114b8:	49 89 70 08          	mov    QWORD PTR [r8+0x8],rsi
   114bc:	48 8b 74 24 48       	mov    rsi,QWORD PTR [rsp+0x48]
   114c1:	49 89 10             	mov    QWORD PTR [r8],rdx
   114c4:	49 89 70 10          	mov    QWORD PTR [r8+0x10],rsi
   114c8:	48 8b 74 24 50       	mov    rsi,QWORD PTR [rsp+0x50]
   114cd:	49 89 70 18          	mov    QWORD PTR [r8+0x18],rsi
   114d1:	48 8b 74 24 58       	mov    rsi,QWORD PTR [rsp+0x58]
   114d6:	49 89 70 20          	mov    QWORD PTR [r8+0x20],rsi
   114da:	48 8b 74 24 60       	mov    rsi,QWORD PTR [rsp+0x60]
   114df:	49 89 70 28          	mov    QWORD PTR [r8+0x28],rsi
   114e3:	48 8b 74 24 68       	mov    rsi,QWORD PTR [rsp+0x68]
   114e8:	49 89 70 30          	mov    QWORD PTR [r8+0x30],rsi
   114ec:	48 8b 74 24 70       	mov    rsi,QWORD PTR [rsp+0x70]
   114f1:	49 89 70 38          	mov    QWORD PTR [r8+0x38],rsi
   114f5:	48 8b 74 24 78       	mov    rsi,QWORD PTR [rsp+0x78]
   114fa:	49 89 70 40          	mov    QWORD PTR [r8+0x40],rsi
   114fe:	48 8b b4 24 80 00 00 	mov    rsi,QWORD PTR [rsp+0x80]
   11505:	00 
   11506:	49 89 70 48          	mov    QWORD PTR [r8+0x48],rsi
   1150a:	48 8b b4 24 88 00 00 	mov    rsi,QWORD PTR [rsp+0x88]
   11511:	00 
   11512:	49 89 70 50          	mov    QWORD PTR [r8+0x50],rsi
   11516:	48 8b b4 24 90 00 00 	mov    rsi,QWORD PTR [rsp+0x90]
   1151d:	00 
   1151e:	49 89 70 58          	mov    QWORD PTR [r8+0x58],rsi
   11522:	48 8b b4 24 98 00 00 	mov    rsi,QWORD PTR [rsp+0x98]
   11529:	00 
   1152a:	49 89 70 60          	mov    QWORD PTR [r8+0x60],rsi
   1152e:	48 8b b4 24 a0 00 00 	mov    rsi,QWORD PTR [rsp+0xa0]
   11535:	00 
   11536:	49 89 70 68          	mov    QWORD PTR [r8+0x68],rsi
   1153a:	48 8b b4 24 a8 00 00 	mov    rsi,QWORD PTR [rsp+0xa8]
   11541:	00 
   11542:	49 89 70 70          	mov    QWORD PTR [r8+0x70],rsi
   11546:	48 8b b4 24 b0 00 00 	mov    rsi,QWORD PTR [rsp+0xb0]
   1154d:	00 
   1154e:	49 89 70 78          	mov    QWORD PTR [r8+0x78],rsi
   11552:	48 8b 8c 24 b8 00 00 	mov    rcx,QWORD PTR [rsp+0xb8]
   11559:	00 
   1155a:	48 8b 54 24 30       	mov    rdx,QWORD PTR [rsp+0x30]
   1155f:	49 89 88 80 00 00 00 	mov    QWORD PTR [r8+0x80],rcx
   11566:	41 89 90 88 00 00 00 	mov    DWORD PTR [r8+0x88],edx
   1156d:	48 8b 54 24 38       	mov    rdx,QWORD PTR [rsp+0x38]
   11572:	49 89 90 90 00 00 00 	mov    QWORD PTR [r8+0x90],rdx
   11579:	48 81 c4 d0 00 00 00 	add    rsp,0xd0
   11580:	c3                   	ret    
   11581:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   11588:	48 85 d2             	test   rdx,rdx
   1158b:	74 13                	je     115a0 <__libc_sigaction+0x200>
   1158d:	48 8d 54 24 28       	lea    rdx,[rsp+0x28]
   11592:	31 f6                	xor    esi,esi
   11594:	e9 e3 fe ff ff       	jmp    1147c <__libc_sigaction+0xdc>
   11599:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   115a0:	31 d2                	xor    edx,edx
   115a2:	31 f6                	xor    esi,esi
   115a4:	e9 d3 fe ff ff       	jmp    1147c <__libc_sigaction+0xdc>
   115a9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   115b0:	48 8b 05 d1 69 20 00 	mov    rax,QWORD PTR [rip+0x2069d1]        # 217f88 <_DYNAMIC+0x238>
   115b7:	f7 da                	neg    edx
   115b9:	64 89 10             	mov    DWORD PTR fs:[rax],edx
   115bc:	b8 ff ff ff ff       	mov    eax,0xffffffff
   115c1:	48 81 c4 d0 00 00 00 	add    rsp,0xd0
   115c8:	c3                   	ret    
   115c9:	31 d2                	xor    edx,edx
   115cb:	e9 a9 fe ff ff       	jmp    11479 <__libc_sigaction+0xd9>

00000000000115d0 <__sigaction>:
   115d0:	8d 47 e0             	lea    eax,[rdi-0x20]
   115d3:	83 f8 01             	cmp    eax,0x1
   115d6:	76 08                	jbe    115e0 <__sigaction+0x10>
   115d8:	e9 c3 fd ff ff       	jmp    113a0 <__libc_sigaction>
   115dd:	0f 1f 00             	nop    DWORD PTR [rax]
   115e0:	48 8b 05 a1 69 20 00 	mov    rax,QWORD PTR [rip+0x2069a1]        # 217f88 <_DYNAMIC+0x238>
   115e7:	64 c7 00 16 00 00 00 	mov    DWORD PTR fs:[rax],0x16
   115ee:	b8 ff ff ff ff       	mov    eax,0xffffffff
   115f3:	c3                   	ret    
   115f4:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   115fb:	00 00 00 
   115fe:	66 90                	xchg   ax,ax

0000000000011600 <__h_errno_location>:
   11600:	48 8b 05 b9 69 20 00 	mov    rax,QWORD PTR [rip+0x2069b9]        # 217fc0 <_DYNAMIC+0x270>
   11607:	64 48 03 04 25 00 00 	add    rax,QWORD PTR fs:0x0
   1160e:	00 00 
   11610:	c3                   	ret    
   11611:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   11618:	00 00 00 
   1161b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000011620 <__res_state>:
   11620:	48 8b 05 69 69 20 00 	mov    rax,QWORD PTR [rip+0x206969]        # 217f90 <_DYNAMIC+0x240>
   11627:	64 48 8b 00          	mov    rax,QWORD PTR fs:[rax]
   1162b:	c3                   	ret    
   1162c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000011630 <__libc_current_sigrtmin>:
   11630:	e9 ab 42 ff ff       	jmp    58e0 <__libc_current_sigrtmin_private@plt>
   11635:	90                   	nop
   11636:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   1163d:	00 00 00 

0000000000011640 <__libc_current_sigrtmax>:
   11640:	e9 ab 41 ff ff       	jmp    57f0 <__libc_current_sigrtmax_private@plt>
   11645:	90                   	nop
   11646:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   1164d:	00 00 00 

0000000000011650 <__libc_allocate_rtsig>:
   11650:	e9 9b 43 ff ff       	jmp    59f0 <__libc_allocate_rtsig_private@plt>
   11655:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   1165c:	00 00 00 
   1165f:	90                   	nop

0000000000011660 <pthread_kill_other_threads_np@GLIBC_2.2.5>:
   11660:	f3 c3                	repz ret 
   11662:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   11669:	00 00 00 
   1166c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000011670 <pthread_getaffinity_np@@GLIBC_2.3.4>:
   11670:	49 89 f0             	mov    r8,rsi
   11673:	48 81 fe ff ff ff 7f 	cmp    rsi,0x7fffffff
   1167a:	be ff ff ff 7f       	mov    esi,0x7fffffff
   1167f:	49 89 d1             	mov    r9,rdx
   11682:	48 63 bf d0 02 00 00 	movsxd rdi,DWORD PTR [rdi+0x2d0]
   11689:	49 0f 46 f0          	cmovbe rsi,r8
   1168d:	b8 cc 00 00 00       	mov    eax,0xcc
   11692:	0f 05                	syscall 
   11694:	3d 00 f0 ff ff       	cmp    eax,0xfffff000
   11699:	76 05                	jbe    116a0 <pthread_getaffinity_np@@GLIBC_2.3.4+0x30>
   1169b:	f7 d8                	neg    eax
   1169d:	c3                   	ret    
   1169e:	66 90                	xchg   ax,ax
   116a0:	48 98                	cdqe   
   116a2:	4c 89 c2             	mov    rdx,r8
   116a5:	48 83 ec 08          	sub    rsp,0x8
   116a9:	49 8d 3c 01          	lea    rdi,[r9+rax*1]
   116ad:	48 29 c2             	sub    rdx,rax
   116b0:	31 f6                	xor    esi,esi
   116b2:	e8 29 40 ff ff       	call   56e0 <memset@plt>
   116b7:	31 c0                	xor    eax,eax
   116b9:	48 83 c4 08          	add    rsp,0x8
   116bd:	c3                   	ret    
   116be:	66 90                	xchg   ax,ax

00000000000116c0 <pthread_getaffinity_np@GLIBC_2.3.3>:
   116c0:	48 89 f2             	mov    rdx,rsi
   116c3:	be 80 00 00 00       	mov    esi,0x80
   116c8:	e9 a3 ff ff ff       	jmp    11670 <pthread_getaffinity_np@@GLIBC_2.3.4>
   116cd:	0f 1f 00             	nop    DWORD PTR [rax]

00000000000116d0 <pthread_setaffinity_np@@GLIBC_2.3.4>:
   116d0:	b9 cb 00 00 00       	mov    ecx,0xcb
   116d5:	48 63 bf d0 02 00 00 	movsxd rdi,DWORD PTR [rdi+0x2d0]
   116dc:	89 c8                	mov    eax,ecx
   116de:	0f 05                	syscall 
   116e0:	48 89 c2             	mov    rdx,rax
   116e3:	f7 d8                	neg    eax
   116e5:	81 fa 00 f0 ff ff    	cmp    edx,0xfffff000
   116eb:	77 1a                	ja     11707 <pthread_setaffinity_np@@GLIBC_2.3.4+0x37>
   116ed:	64 c7 04 25 38 00 00 	mov    DWORD PTR fs:0x38,0x0
   116f4:	00 00 00 00 00 
   116f9:	64 c7 04 25 40 00 00 	mov    DWORD PTR fs:0x40,0x0
   11700:	00 00 00 00 00 
   11705:	31 c0                	xor    eax,eax
   11707:	f3 c3                	repz ret 
   11709:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000011710 <pthread_setaffinity_np@GLIBC_2.3.3>:
   11710:	48 89 f2             	mov    rdx,rsi
   11713:	be 80 00 00 00       	mov    esi,0x80
   11718:	e9 b3 ff ff ff       	jmp    116d0 <pthread_setaffinity_np@@GLIBC_2.3.4>
   1171d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000011720 <pthread_attr_getaffinity_np@@GLIBC_2.3.4>:
   11720:	55                   	push   rbp
   11721:	53                   	push   rbx
   11722:	48 89 fd             	mov    rbp,rdi
   11725:	48 89 f3             	mov    rbx,rsi
   11728:	48 89 d7             	mov    rdi,rdx
   1172b:	48 83 ec 08          	sub    rsp,0x8
   1172f:	48 8b 75 28          	mov    rsi,QWORD PTR [rbp+0x28]
   11733:	48 85 f6             	test   rsi,rsi
   11736:	0f 84 7d 00 00 00    	je     117b9 <pthread_attr_getaffinity_np@@GLIBC_2.3.4+0x99>
   1173c:	48 8b 55 30          	mov    rdx,QWORD PTR [rbp+0x30]
   11740:	48 39 d3             	cmp    rbx,rdx
   11743:	73 2a                	jae    1176f <pthread_attr_getaffinity_np@@GLIBC_2.3.4+0x4f>
   11745:	80 3c 1e 00          	cmp    BYTE PTR [rsi+rbx*1],0x0
   11749:	75 45                	jne    11790 <pthread_attr_getaffinity_np@@GLIBC_2.3.4+0x70>
   1174b:	48 8d 44 1e 01       	lea    rax,[rsi+rbx*1+0x1]
   11750:	48 8d 0c 16          	lea    rcx,[rsi+rdx*1]
   11754:	eb 14                	jmp    1176a <pthread_attr_getaffinity_np@@GLIBC_2.3.4+0x4a>
   11756:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   1175d:	00 00 00 
   11760:	48 83 c0 01          	add    rax,0x1
   11764:	80 78 ff 00          	cmp    BYTE PTR [rax-0x1],0x0
   11768:	75 26                	jne    11790 <pthread_attr_getaffinity_np@@GLIBC_2.3.4+0x70>
   1176a:	48 39 c8             	cmp    rax,rcx
   1176d:	75 f1                	jne    11760 <pthread_attr_getaffinity_np@@GLIBC_2.3.4+0x40>
   1176f:	48 39 d3             	cmp    rbx,rdx
   11772:	48 0f 46 d3          	cmovbe rdx,rbx
   11776:	e8 e5 3e ff ff       	call   5660 <__mempcpy@plt>
   1177b:	48 8b 55 30          	mov    rdx,QWORD PTR [rbp+0x30]
   1177f:	31 ed                	xor    ebp,ebp
   11781:	48 39 d3             	cmp    rbx,rdx
   11784:	77 1a                	ja     117a0 <pthread_attr_getaffinity_np@@GLIBC_2.3.4+0x80>
   11786:	48 83 c4 08          	add    rsp,0x8
   1178a:	89 e8                	mov    eax,ebp
   1178c:	5b                   	pop    rbx
   1178d:	5d                   	pop    rbp
   1178e:	c3                   	ret    
   1178f:	90                   	nop
   11790:	bd 16 00 00 00       	mov    ebp,0x16
   11795:	48 83 c4 08          	add    rsp,0x8
   11799:	89 e8                	mov    eax,ebp
   1179b:	5b                   	pop    rbx
   1179c:	5d                   	pop    rbp
   1179d:	c3                   	ret    
   1179e:	66 90                	xchg   ax,ax
   117a0:	48 29 d3             	sub    rbx,rdx
   117a3:	31 f6                	xor    esi,esi
   117a5:	48 89 c7             	mov    rdi,rax
   117a8:	48 89 da             	mov    rdx,rbx
   117ab:	e8 30 3f ff ff       	call   56e0 <memset@plt>
   117b0:	48 83 c4 08          	add    rsp,0x8
   117b4:	89 e8                	mov    eax,ebp
   117b6:	5b                   	pop    rbx
   117b7:	5d                   	pop    rbp
   117b8:	c3                   	ret    
   117b9:	48 89 da             	mov    rdx,rbx
   117bc:	be ff ff ff ff       	mov    esi,0xffffffff
   117c1:	31 ed                	xor    ebp,ebp
   117c3:	e8 18 3f ff ff       	call   56e0 <memset@plt>
   117c8:	eb bc                	jmp    11786 <pthread_attr_getaffinity_np@@GLIBC_2.3.4+0x66>
   117ca:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000117d0 <pthread_attr_getaffinity_np@GLIBC_2.3.3>:
   117d0:	48 89 f2             	mov    rdx,rsi
   117d3:	be 80 00 00 00       	mov    esi,0x80
   117d8:	e9 43 ff ff ff       	jmp    11720 <pthread_attr_getaffinity_np@@GLIBC_2.3.4>
   117dd:	0f 1f 00             	nop    DWORD PTR [rax]

00000000000117e0 <pthread_attr_setaffinity_np@@GLIBC_2.3.4>:
   117e0:	48 85 d2             	test   rdx,rdx
   117e3:	41 54                	push   r12
   117e5:	55                   	push   rbp
   117e6:	48 89 fd             	mov    rbp,rdi
   117e9:	53                   	push   rbx
   117ea:	74 44                	je     11830 <pthread_attr_setaffinity_np@@GLIBC_2.3.4+0x50>
   117ec:	48 85 f6             	test   rsi,rsi
   117ef:	48 89 f3             	mov    rbx,rsi
   117f2:	74 3c                	je     11830 <pthread_attr_setaffinity_np@@GLIBC_2.3.4+0x50>
   117f4:	48 3b 77 30          	cmp    rsi,QWORD PTR [rdi+0x30]
   117f8:	49 89 d4             	mov    r12,rdx
   117fb:	48 8b 7f 28          	mov    rdi,QWORD PTR [rdi+0x28]
   117ff:	74 1a                	je     1181b <pthread_attr_setaffinity_np@@GLIBC_2.3.4+0x3b>
   11801:	e8 9a 40 ff ff       	call   58a0 <realloc@plt>
   11806:	48 89 c7             	mov    rdi,rax
   11809:	b8 0c 00 00 00       	mov    eax,0xc
   1180e:	48 85 ff             	test   rdi,rdi
   11811:	74 15                	je     11828 <pthread_attr_setaffinity_np@@GLIBC_2.3.4+0x48>
   11813:	48 89 7d 28          	mov    QWORD PTR [rbp+0x28],rdi
   11817:	48 89 5d 30          	mov    QWORD PTR [rbp+0x30],rbx
   1181b:	48 89 da             	mov    rdx,rbx
   1181e:	4c 89 e6             	mov    rsi,r12
   11821:	e8 aa 3f ff ff       	call   57d0 <memcpy@plt>
   11826:	31 c0                	xor    eax,eax
   11828:	5b                   	pop    rbx
   11829:	5d                   	pop    rbp
   1182a:	41 5c                	pop    r12
   1182c:	c3                   	ret    
   1182d:	0f 1f 00             	nop    DWORD PTR [rax]
   11830:	48 8b 7d 28          	mov    rdi,QWORD PTR [rbp+0x28]
   11834:	e8 87 3d ff ff       	call   55c0 <free@plt>
   11839:	48 c7 45 28 00 00 00 	mov    QWORD PTR [rbp+0x28],0x0
   11840:	00 
   11841:	48 c7 45 30 00 00 00 	mov    QWORD PTR [rbp+0x30],0x0
   11848:	00 
   11849:	31 c0                	xor    eax,eax
   1184b:	5b                   	pop    rbx
   1184c:	5d                   	pop    rbp
   1184d:	41 5c                	pop    r12
   1184f:	c3                   	ret    

0000000000011850 <pthread_attr_setaffinity_np@GLIBC_2.3.3>:
   11850:	48 89 f2             	mov    rdx,rsi
   11853:	be 80 00 00 00       	mov    esi,0x80
   11858:	e9 83 ff ff ff       	jmp    117e0 <pthread_attr_setaffinity_np@@GLIBC_2.3.4>
   1185d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000011860 <pthread_mutexattr_getrobust>:
   11860:	8b 07                	mov    eax,DWORD PTR [rdi]
   11862:	c1 e8 1e             	shr    eax,0x1e
   11865:	83 e0 01             	and    eax,0x1
   11868:	89 06                	mov    DWORD PTR [rsi],eax
   1186a:	31 c0                	xor    eax,eax
   1186c:	c3                   	ret    
   1186d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000011870 <pthread_mutexattr_setrobust>:
   11870:	85 f6                	test   esi,esi
   11872:	75 0c                	jne    11880 <pthread_mutexattr_setrobust+0x10>
   11874:	81 27 ff ff ff bf    	and    DWORD PTR [rdi],0xbfffffff
   1187a:	31 c0                	xor    eax,eax
   1187c:	c3                   	ret    
   1187d:	0f 1f 00             	nop    DWORD PTR [rax]
   11880:	83 fe 01             	cmp    esi,0x1
   11883:	75 0b                	jne    11890 <pthread_mutexattr_setrobust+0x20>
   11885:	81 0f 00 00 00 40    	or     DWORD PTR [rdi],0x40000000
   1188b:	31 c0                	xor    eax,eax
   1188d:	c3                   	ret    
   1188e:	66 90                	xchg   ax,ax
   11890:	b8 16 00 00 00       	mov    eax,0x16
   11895:	c3                   	ret    
   11896:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   1189d:	00 00 00 

00000000000118a0 <pthread_mutex_consistent>:
   118a0:	f6 47 10 10          	test   BYTE PTR [rdi+0x10],0x10
   118a4:	b8 16 00 00 00       	mov    eax,0x16
   118a9:	75 05                	jne    118b0 <pthread_mutex_consistent+0x10>
   118ab:	f3 c3                	repz ret 
   118ad:	0f 1f 00             	nop    DWORD PTR [rax]
   118b0:	81 7f 08 ff ff ff 7f 	cmp    DWORD PTR [rdi+0x8],0x7fffffff
   118b7:	75 f2                	jne    118ab <pthread_mutex_consistent+0xb>
   118b9:	64 8b 04 25 d0 02 00 	mov    eax,DWORD PTR fs:0x2d0
   118c0:	00 
   118c1:	89 47 08             	mov    DWORD PTR [rdi+0x8],eax
   118c4:	31 c0                	xor    eax,eax
   118c6:	c3                   	ret    
   118c7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   118ce:	00 00 

00000000000118d0 <__pthread_cleanup_routine>:
   118d0:	8b 47 10             	mov    eax,DWORD PTR [rdi+0x10]
   118d3:	85 c0                	test   eax,eax
   118d5:	75 09                	jne    118e0 <__pthread_cleanup_routine+0x10>
   118d7:	f3 c3                	repz ret 
   118d9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   118e0:	48 8b 57 08          	mov    rdx,QWORD PTR [rdi+0x8]
   118e4:	48 8b 07             	mov    rax,QWORD PTR [rdi]
   118e7:	48 89 d7             	mov    rdi,rdx
   118ea:	ff e0                	jmp    rax
   118ec:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000000118f0 <pthread_cancel_init>:
   118f0:	48 83 3d 68 aa 20 00 	cmp    QWORD PTR [rip+0x20aa68],0x0        # 21c360 <libgcc_s_handle>
   118f7:	00 
   118f8:	74 06                	je     11900 <pthread_cancel_init+0x10>
   118fa:	c3                   	ret    
   118fb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   11900:	41 55                	push   r13
   11902:	41 54                	push   r12
   11904:	48 8d 3d ec 1b 00 00 	lea    rdi,[rip+0x1bec]        # 134f7 <defaultdir+0x2f>
   1190b:	55                   	push   rbp
   1190c:	53                   	push   rbx
   1190d:	be 01 00 00 80       	mov    esi,0x80000001
   11912:	48 83 ec 08          	sub    rsp,0x8
   11916:	e8 05 3f ff ff       	call   5820 <__libc_dlopen_mode@plt>
   1191b:	48 85 c0             	test   rax,rax
   1191e:	48 89 c3             	mov    rbx,rax
   11921:	0f 84 cc 00 00 00    	je     119f3 <pthread_cancel_init+0x103>
   11927:	48 8d 35 d7 1b 00 00 	lea    rsi,[rip+0x1bd7]        # 13505 <defaultdir+0x3d>
   1192e:	48 89 c7             	mov    rdi,rax
   11931:	e8 7a 3f ff ff       	call   58b0 <__libc_dlsym@plt>
   11936:	48 85 c0             	test   rax,rax
   11939:	48 89 c5             	mov    rbp,rax
   1193c:	0f 84 b1 00 00 00    	je     119f3 <pthread_cancel_init+0x103>
   11942:	48 8d 35 cb 1b 00 00 	lea    rsi,[rip+0x1bcb]        # 13514 <defaultdir+0x4c>
   11949:	48 89 df             	mov    rdi,rbx
   1194c:	e8 5f 3f ff ff       	call   58b0 <__libc_dlsym@plt>
   11951:	48 85 c0             	test   rax,rax
   11954:	49 89 c5             	mov    r13,rax
   11957:	0f 84 96 00 00 00    	je     119f3 <pthread_cancel_init+0x103>
   1195d:	48 8d 35 c5 1b 00 00 	lea    rsi,[rip+0x1bc5]        # 13529 <defaultdir+0x61>
   11964:	48 89 df             	mov    rdi,rbx
   11967:	e8 44 3f ff ff       	call   58b0 <__libc_dlsym@plt>
   1196c:	48 85 c0             	test   rax,rax
   1196f:	49 89 c4             	mov    r12,rax
   11972:	74 7f                	je     119f3 <pthread_cancel_init+0x103>
   11974:	48 8d 35 c3 1b 00 00 	lea    rsi,[rip+0x1bc3]        # 1353e <defaultdir+0x76>
   1197b:	48 89 df             	mov    rdi,rbx
   1197e:	e8 2d 3f ff ff       	call   58b0 <__libc_dlsym@plt>
   11983:	48 85 c0             	test   rax,rax
   11986:	74 6b                	je     119f3 <pthread_cancel_init+0x103>
   11988:	48 89 ea             	mov    rdx,rbp
   1198b:	64 48 33 04 25 30 00 	xor    rax,QWORD PTR fs:0x30
   11992:	00 00 
   11994:	48 c1 c0 11          	rol    rax,0x11
   11998:	64 48 33 14 25 30 00 	xor    rdx,QWORD PTR fs:0x30
   1199f:	00 00 
   119a1:	48 c1 c2 11          	rol    rdx,0x11
   119a5:	48 89 05 9c a9 20 00 	mov    QWORD PTR [rip+0x20a99c],rax        # 21c348 <libgcc_s_getcfa>
   119ac:	48 89 15 65 aa 20 00 	mov    QWORD PTR [rip+0x20aa65],rdx        # 21c418 <__libgcc_s_resume>
   119b3:	4c 89 ea             	mov    rdx,r13
   119b6:	64 48 33 14 25 30 00 	xor    rdx,QWORD PTR fs:0x30
   119bd:	00 00 
   119bf:	48 c1 c2 11          	rol    rdx,0x11
   119c3:	48 89 15 8e a9 20 00 	mov    QWORD PTR [rip+0x20a98e],rdx        # 21c358 <libgcc_s_personality>
   119ca:	4c 89 e2             	mov    rdx,r12
   119cd:	64 48 33 14 25 30 00 	xor    rdx,QWORD PTR fs:0x30
   119d4:	00 00 
   119d6:	48 c1 c2 11          	rol    rdx,0x11
   119da:	48 89 15 6f a9 20 00 	mov    QWORD PTR [rip+0x20a96f],rdx        # 21c350 <libgcc_s_forcedunwind>
   119e1:	48 89 1d 78 a9 20 00 	mov    QWORD PTR [rip+0x20a978],rbx        # 21c360 <libgcc_s_handle>
   119e8:	48 83 c4 08          	add    rsp,0x8
   119ec:	5b                   	pop    rbx
   119ed:	5d                   	pop    rbp
   119ee:	41 5c                	pop    r12
   119f0:	41 5d                	pop    r13
   119f2:	c3                   	ret    
   119f3:	48 8d 3d 56 1b 00 00 	lea    rdi,[rip+0x1b56]        # 13550 <defaultdir+0x88>
   119fa:	e8 31 3c ff ff       	call   5630 <__libc_fatal@plt>
   119ff:	90                   	nop

0000000000011a00 <_Unwind_Resume>:
   11a00:	48 83 ec 18          	sub    rsp,0x18
   11a04:	48 83 3d 54 a9 20 00 	cmp    QWORD PTR [rip+0x20a954],0x0        # 21c360 <libgcc_s_handle>
   11a0b:	00 
   11a0c:	74 22                	je     11a30 <_Unwind_Resume+0x30>
   11a0e:	48 8b 05 03 aa 20 00 	mov    rax,QWORD PTR [rip+0x20aa03]        # 21c418 <__libgcc_s_resume>
   11a15:	48 83 c4 18          	add    rsp,0x18
   11a19:	48 c1 c8 11          	ror    rax,0x11
   11a1d:	64 48 33 04 25 30 00 	xor    rax,QWORD PTR fs:0x30
   11a24:	00 00 
   11a26:	ff e0                	jmp    rax
   11a28:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   11a2f:	00 
   11a30:	48 89 7c 24 08       	mov    QWORD PTR [rsp+0x8],rdi
   11a35:	e8 b6 fe ff ff       	call   118f0 <pthread_cancel_init>
   11a3a:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
   11a3f:	eb cd                	jmp    11a0e <_Unwind_Resume+0xe>
   11a41:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   11a46:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   11a4d:	00 00 00 

0000000000011a50 <__gcc_personality_v0>:
   11a50:	48 83 ec 28          	sub    rsp,0x28
   11a54:	48 83 3d 04 a9 20 00 	cmp    QWORD PTR [rip+0x20a904],0x0        # 21c360 <libgcc_s_handle>
   11a5b:	00 
   11a5c:	74 22                	je     11a80 <__gcc_personality_v0+0x30>
   11a5e:	48 8b 05 f3 a8 20 00 	mov    rax,QWORD PTR [rip+0x20a8f3]        # 21c358 <libgcc_s_personality>
   11a65:	48 83 c4 28          	add    rsp,0x28
   11a69:	48 c1 c8 11          	ror    rax,0x11
   11a6d:	64 48 33 04 25 30 00 	xor    rax,QWORD PTR fs:0x30
   11a74:	00 00 
   11a76:	ff e0                	jmp    rax
   11a78:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   11a7f:	00 
   11a80:	4c 89 44 24 18       	mov    QWORD PTR [rsp+0x18],r8
   11a85:	48 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],rcx
   11a8a:	48 89 54 24 08       	mov    QWORD PTR [rsp+0x8],rdx
   11a8f:	89 74 24 04          	mov    DWORD PTR [rsp+0x4],esi
   11a93:	89 3c 24             	mov    DWORD PTR [rsp],edi
   11a96:	e8 55 fe ff ff       	call   118f0 <pthread_cancel_init>
   11a9b:	8b 3c 24             	mov    edi,DWORD PTR [rsp]
   11a9e:	8b 74 24 04          	mov    esi,DWORD PTR [rsp+0x4]
   11aa2:	48 8b 54 24 08       	mov    rdx,QWORD PTR [rsp+0x8]
   11aa7:	48 8b 4c 24 10       	mov    rcx,QWORD PTR [rsp+0x10]
   11aac:	4c 8b 44 24 18       	mov    r8,QWORD PTR [rsp+0x18]
   11ab1:	eb ab                	jmp    11a5e <__gcc_personality_v0+0xe>
   11ab3:	0f 1f 00             	nop    DWORD PTR [rax]
   11ab6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   11abd:	00 00 00 

0000000000011ac0 <_Unwind_ForcedUnwind>:
   11ac0:	48 83 ec 28          	sub    rsp,0x28
   11ac4:	48 83 3d 94 a8 20 00 	cmp    QWORD PTR [rip+0x20a894],0x0        # 21c360 <libgcc_s_handle>
   11acb:	00 
   11acc:	74 22                	je     11af0 <_Unwind_ForcedUnwind+0x30>
   11ace:	48 8b 05 7b a8 20 00 	mov    rax,QWORD PTR [rip+0x20a87b]        # 21c350 <libgcc_s_forcedunwind>
   11ad5:	48 83 c4 28          	add    rsp,0x28
   11ad9:	48 c1 c8 11          	ror    rax,0x11
   11add:	64 48 33 04 25 30 00 	xor    rax,QWORD PTR fs:0x30
   11ae4:	00 00 
   11ae6:	ff e0                	jmp    rax
   11ae8:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   11aef:	00 
   11af0:	48 89 54 24 18       	mov    QWORD PTR [rsp+0x18],rdx
   11af5:	48 89 74 24 10       	mov    QWORD PTR [rsp+0x10],rsi
   11afa:	48 89 7c 24 08       	mov    QWORD PTR [rsp+0x8],rdi
   11aff:	e8 ec fd ff ff       	call   118f0 <pthread_cancel_init>
   11b04:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
   11b09:	48 8b 74 24 10       	mov    rsi,QWORD PTR [rsp+0x10]
   11b0e:	48 8b 54 24 18       	mov    rdx,QWORD PTR [rsp+0x18]
   11b13:	eb b9                	jmp    11ace <_Unwind_ForcedUnwind+0xe>
   11b15:	90                   	nop
   11b16:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   11b1d:	00 00 00 

0000000000011b20 <_Unwind_GetCFA>:
   11b20:	48 83 ec 18          	sub    rsp,0x18
   11b24:	48 83 3d 34 a8 20 00 	cmp    QWORD PTR [rip+0x20a834],0x0        # 21c360 <libgcc_s_handle>
   11b2b:	00 
   11b2c:	74 22                	je     11b50 <_Unwind_GetCFA+0x30>
   11b2e:	48 8b 05 13 a8 20 00 	mov    rax,QWORD PTR [rip+0x20a813]        # 21c348 <libgcc_s_getcfa>
   11b35:	48 83 c4 18          	add    rsp,0x18
   11b39:	48 c1 c8 11          	ror    rax,0x11
   11b3d:	64 48 33 04 25 30 00 	xor    rax,QWORD PTR fs:0x30
   11b44:	00 00 
   11b46:	ff e0                	jmp    rax
   11b48:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   11b4f:	00 
   11b50:	48 89 7c 24 08       	mov    QWORD PTR [rsp+0x8],rdi
   11b55:	e8 96 fd ff ff       	call   118f0 <pthread_cancel_init>
   11b5a:	48 8b 7c 24 08       	mov    rdi,QWORD PTR [rsp+0x8]
   11b5f:	eb cd                	jmp    11b2e <_Unwind_GetCFA+0xe>
   11b61:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   11b68:	00 00 00 
   11b6b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000011b70 <pthread_mutexattr_getprotocol>:
   11b70:	8b 07                	mov    eax,DWORD PTR [rdi]
   11b72:	25 00 00 00 30       	and    eax,0x30000000
   11b77:	c1 f8 1c             	sar    eax,0x1c
   11b7a:	89 06                	mov    DWORD PTR [rsi],eax
   11b7c:	31 c0                	xor    eax,eax
   11b7e:	c3                   	ret    
   11b7f:	90                   	nop

0000000000011b80 <pthread_mutexattr_setprotocol>:
   11b80:	83 fe 02             	cmp    esi,0x2
   11b83:	77 1b                	ja     11ba0 <pthread_mutexattr_setprotocol+0x20>
   11b85:	8b 07                	mov    eax,DWORD PTR [rdi]
   11b87:	c1 e6 1c             	shl    esi,0x1c
   11b8a:	25 ff ff ff cf       	and    eax,0xcfffffff
   11b8f:	09 c6                	or     esi,eax
   11b91:	31 c0                	xor    eax,eax
   11b93:	89 37                	mov    DWORD PTR [rdi],esi
   11b95:	c3                   	ret    
   11b96:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   11b9d:	00 00 00 
   11ba0:	b8 16 00 00 00       	mov    eax,0x16
   11ba5:	c3                   	ret    
   11ba6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   11bad:	00 00 00 

0000000000011bb0 <pthread_mutexattr_getprioceiling>:
   11bb0:	53                   	push   rbx
   11bb1:	48 83 ec 10          	sub    rsp,0x10
   11bb5:	8b 1f                	mov    ebx,DWORD PTR [rdi]
   11bb7:	81 e3 00 f0 ff 00    	and    ebx,0xfff000
   11bbd:	c1 fb 0c             	sar    ebx,0xc
   11bc0:	85 db                	test   ebx,ebx
   11bc2:	74 0c                	je     11bd0 <pthread_mutexattr_getprioceiling+0x20>
   11bc4:	89 1e                	mov    DWORD PTR [rsi],ebx
   11bc6:	48 83 c4 10          	add    rsp,0x10
   11bca:	31 c0                	xor    eax,eax
   11bcc:	5b                   	pop    rbx
   11bcd:	c3                   	ret    
   11bce:	66 90                	xchg   ax,ax
   11bd0:	8b 05 b6 66 20 00    	mov    eax,DWORD PTR [rip+0x2066b6]        # 21828c <__sched_fifo_min_prio>
   11bd6:	83 f8 ff             	cmp    eax,0xffffffff
   11bd9:	74 1d                	je     11bf8 <pthread_mutexattr_getprioceiling+0x48>
   11bdb:	8b 05 ab 66 20 00    	mov    eax,DWORD PTR [rip+0x2066ab]        # 21828c <__sched_fifo_min_prio>
   11be1:	85 c0                	test   eax,eax
   11be3:	7e df                	jle    11bc4 <pthread_mutexattr_getprioceiling+0x14>
   11be5:	8b 1d a1 66 20 00    	mov    ebx,DWORD PTR [rip+0x2066a1]        # 21828c <__sched_fifo_min_prio>
   11beb:	31 c0                	xor    eax,eax
   11bed:	89 1e                	mov    DWORD PTR [rsi],ebx
   11bef:	48 83 c4 10          	add    rsp,0x10
   11bf3:	5b                   	pop    rbx
   11bf4:	c3                   	ret    
   11bf5:	0f 1f 00             	nop    DWORD PTR [rax]
   11bf8:	48 89 74 24 08       	mov    QWORD PTR [rsp+0x8],rsi
   11bfd:	e8 8e 00 00 00       	call   11c90 <__init_sched_fifo_prio>
   11c02:	48 8b 74 24 08       	mov    rsi,QWORD PTR [rsp+0x8]
   11c07:	eb d2                	jmp    11bdb <pthread_mutexattr_getprioceiling+0x2b>
   11c09:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000011c10 <pthread_mutexattr_setprioceiling>:
   11c10:	55                   	push   rbp
   11c11:	53                   	push   rbx
   11c12:	48 89 fd             	mov    rbp,rdi
   11c15:	89 f3                	mov    ebx,esi
   11c17:	48 83 ec 08          	sub    rsp,0x8
   11c1b:	8b 05 6b 66 20 00    	mov    eax,DWORD PTR [rip+0x20666b]        # 21828c <__sched_fifo_min_prio>
   11c21:	83 f8 ff             	cmp    eax,0xffffffff
   11c24:	74 4a                	je     11c70 <pthread_mutexattr_setprioceiling+0x60>
   11c26:	8b 05 5c 66 20 00    	mov    eax,DWORD PTR [rip+0x20665c]        # 218288 <__sched_fifo_max_prio>
   11c2c:	83 f8 ff             	cmp    eax,0xffffffff
   11c2f:	74 3f                	je     11c70 <pthread_mutexattr_setprioceiling+0x60>
   11c31:	8b 05 55 66 20 00    	mov    eax,DWORD PTR [rip+0x206655]        # 21828c <__sched_fifo_min_prio>
   11c37:	39 d8                	cmp    eax,ebx
   11c39:	7f 44                	jg     11c7f <pthread_mutexattr_setprioceiling+0x6f>
   11c3b:	8b 05 47 66 20 00    	mov    eax,DWORD PTR [rip+0x206647]        # 218288 <__sched_fifo_max_prio>
   11c41:	39 c3                	cmp    ebx,eax
   11c43:	7f 3a                	jg     11c7f <pthread_mutexattr_setprioceiling+0x6f>
   11c45:	89 d8                	mov    eax,ebx
   11c47:	25 ff 0f 00 00       	and    eax,0xfff
   11c4c:	39 c3                	cmp    ebx,eax
   11c4e:	75 2f                	jne    11c7f <pthread_mutexattr_setprioceiling+0x6f>
   11c50:	8b 75 00             	mov    esi,DWORD PTR [rbp+0x0]
   11c53:	c1 e3 0c             	shl    ebx,0xc
   11c56:	31 c0                	xor    eax,eax
   11c58:	81 e6 ff 0f 00 ff    	and    esi,0xff000fff
   11c5e:	09 f3                	or     ebx,esi
   11c60:	89 5d 00             	mov    DWORD PTR [rbp+0x0],ebx
   11c63:	48 83 c4 08          	add    rsp,0x8
   11c67:	5b                   	pop    rbx
   11c68:	5d                   	pop    rbp
   11c69:	c3                   	ret    
   11c6a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   11c70:	e8 1b 00 00 00       	call   11c90 <__init_sched_fifo_prio>
   11c75:	8b 05 11 66 20 00    	mov    eax,DWORD PTR [rip+0x206611]        # 21828c <__sched_fifo_min_prio>
   11c7b:	39 d8                	cmp    eax,ebx
   11c7d:	7e bc                	jle    11c3b <pthread_mutexattr_setprioceiling+0x2b>
   11c7f:	48 83 c4 08          	add    rsp,0x8
   11c83:	b8 16 00 00 00       	mov    eax,0x16
   11c88:	5b                   	pop    rbx
   11c89:	5d                   	pop    rbp
   11c8a:	c3                   	ret    
   11c8b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000011c90 <__init_sched_fifo_prio>:
   11c90:	48 83 ec 08          	sub    rsp,0x8
   11c94:	bf 01 00 00 00       	mov    edi,0x1
   11c99:	e8 12 3d ff ff       	call   59b0 <sched_get_priority_max@plt>
   11c9e:	89 05 e4 65 20 00    	mov    DWORD PTR [rip+0x2065e4],eax        # 218288 <__sched_fifo_max_prio>
   11ca4:	bf 01 00 00 00       	mov    edi,0x1
   11ca9:	e8 a2 3b ff ff       	call   5850 <sched_get_priority_min@plt>
   11cae:	89 05 d8 65 20 00    	mov    DWORD PTR [rip+0x2065d8],eax        # 21828c <__sched_fifo_min_prio>
   11cb4:	48 83 c4 08          	add    rsp,0x8
   11cb8:	c3                   	ret    
   11cb9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]

0000000000011cc0 <__pthread_tpp_change_priority>:
   11cc0:	41 56                	push   r14
   11cc2:	41 55                	push   r13
   11cc4:	41 89 fd             	mov    r13d,edi
   11cc7:	41 54                	push   r12
   11cc9:	55                   	push   rbp
   11cca:	53                   	push   rbx
   11ccb:	89 f3                	mov    ebx,esi
   11ccd:	64 48 8b 2c 25 10 00 	mov    rbp,QWORD PTR fs:0x10
   11cd4:	00 00 
   11cd6:	48 83 ec 10          	sub    rsp,0x10
   11cda:	64 48 8b 14 25 b0 06 	mov    rdx,QWORD PTR fs:0x6b0
   11ce1:	00 00 
   11ce3:	48 85 d2             	test   rdx,rdx
   11ce6:	44 8b 25 9f 65 20 00 	mov    r12d,DWORD PTR [rip+0x20659f]        # 21828c <__sched_fifo_min_prio>
   11ced:	44 8b 35 94 65 20 00 	mov    r14d,DWORD PTR [rip+0x206594]        # 218288 <__sched_fifo_max_prio>
   11cf4:	0f 84 5e 02 00 00    	je     11f58 <__pthread_tpp_change_priority+0x298>
   11cfa:	83 fb ff             	cmp    ebx,0xffffffff
   11cfd:	0f 84 9d 01 00 00    	je     11ea0 <__pthread_tpp_change_priority+0x1e0>
   11d03:	41 39 dc             	cmp    r12d,ebx
   11d06:	0f 8f fe 02 00 00    	jg     1200a <__pthread_tpp_change_priority+0x34a>
   11d0c:	41 39 de             	cmp    r14d,ebx
   11d0f:	0f 8c f5 02 00 00    	jl     1200a <__pthread_tpp_change_priority+0x34a>
   11d15:	41 83 fd ff          	cmp    r13d,0xffffffff
   11d19:	0f 84 71 01 00 00    	je     11e90 <__pthread_tpp_change_priority+0x1d0>
   11d1f:	45 39 ec             	cmp    r12d,r13d
   11d22:	0f 8f 01 03 00 00    	jg     12029 <__pthread_tpp_change_priority+0x369>
   11d28:	45 39 ee             	cmp    r14d,r13d
   11d2b:	0f 8c f8 02 00 00    	jl     12029 <__pthread_tpp_change_priority+0x369>
   11d31:	83 fb ff             	cmp    ebx,0xffffffff
   11d34:	44 8b 32             	mov    r14d,DWORD PTR [rdx]
   11d37:	74 59                	je     11d92 <__pthread_tpp_change_priority+0xd2>
   11d39:	89 d8                	mov    eax,ebx
   11d3b:	44 29 e0             	sub    eax,r12d
   11d3e:	48 98                	cdqe   
   11d40:	48 8d 34 82          	lea    rsi,[rdx+rax*4]
   11d44:	b8 0b 00 00 00       	mov    eax,0xb
   11d49:	8b 4e 04             	mov    ecx,DWORD PTR [rsi+0x4]
   11d4c:	83 f9 ff             	cmp    ecx,0xffffffff
   11d4f:	0f 84 0a 01 00 00    	je     11e5f <__pthread_tpp_change_priority+0x19f>
   11d55:	83 c1 01             	add    ecx,0x1
   11d58:	41 39 de             	cmp    r14d,ebx
   11d5b:	89 4e 04             	mov    DWORD PTR [rsi+0x4],ecx
   11d5e:	7d 28                	jge    11d88 <__pthread_tpp_change_priority+0xc8>
   11d60:	41 83 fd ff          	cmp    r13d,0xffffffff
   11d64:	74 73                	je     11dd9 <__pthread_tpp_change_priority+0x119>
   11d66:	44 89 e8             	mov    eax,r13d
   11d69:	44 29 e0             	sub    eax,r12d
   11d6c:	48 98                	cdqe   
   11d6e:	48 8d 0c 82          	lea    rcx,[rdx+rax*4]
   11d72:	83 69 04 01          	sub    DWORD PTR [rcx+0x4],0x1
   11d76:	75 61                	jne    11dd9 <__pthread_tpp_change_priority+0x119>
   11d78:	45 39 ee             	cmp    r14d,r13d
   11d7b:	75 5c                	jne    11dd9 <__pthread_tpp_change_priority+0x119>
   11d7d:	44 39 eb             	cmp    ebx,r13d
   11d80:	7c 38                	jl     11dba <__pthread_tpp_change_priority+0xfa>
   11d82:	eb 55                	jmp    11dd9 <__pthread_tpp_change_priority+0x119>
   11d84:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   11d88:	41 83 fd ff          	cmp    r13d,0xffffffff
   11d8c:	0f 84 18 01 00 00    	je     11eaa <__pthread_tpp_change_priority+0x1ea>
   11d92:	44 89 e8             	mov    eax,r13d
   11d95:	44 29 e0             	sub    eax,r12d
   11d98:	48 98                	cdqe   
   11d9a:	48 8d 0c 82          	lea    rcx,[rdx+rax*4]
   11d9e:	83 69 04 01          	sub    DWORD PTR [rcx+0x4],0x1
   11da2:	0f 85 02 01 00 00    	jne    11eaa <__pthread_tpp_change_priority+0x1ea>
   11da8:	45 39 f5             	cmp    r13d,r14d
   11dab:	0f 85 f9 00 00 00    	jne    11eaa <__pthread_tpp_change_priority+0x1ea>
   11db1:	44 39 eb             	cmp    ebx,r13d
   11db4:	0f 8d f0 00 00 00    	jge    11eaa <__pthread_tpp_change_priority+0x1ea>
   11dba:	41 8d 5d ff          	lea    ebx,[r13-0x1]
   11dbe:	41 39 dc             	cmp    r12d,ebx
   11dc1:	0f 8e b5 00 00 00    	jle    11e7c <__pthread_tpp_change_priority+0x1bc>
   11dc7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   11dce:	00 00 
   11dd0:	44 39 f3             	cmp    ebx,r14d
   11dd3:	0f 84 d1 00 00 00    	je     11eaa <__pthread_tpp_change_priority+0x1ea>
   11dd9:	be 01 00 00 00       	mov    esi,0x1
   11dde:	31 c0                	xor    eax,eax
   11de0:	f0 0f b1 b5 18 06 00 	lock cmpxchg DWORD PTR [rbp+0x618],esi
   11de7:	00 
   11de8:	74 1a                	je     11e04 <__pthread_tpp_change_priority+0x144>
   11dea:	48 8d bd 18 06 00 00 	lea    rdi,[rbp+0x618]
   11df1:	48 81 ec 80 00 00 00 	sub    rsp,0x80
   11df8:	e8 23 e4 ff ff       	call   10220 <__lll_lock_wait_private>
   11dfd:	48 81 c4 80 00 00 00 	add    rsp,0x80
   11e04:	8b 85 0c 03 00 00    	mov    eax,DWORD PTR [rbp+0x30c]
   11e0a:	89 1a                	mov    DWORD PTR [rdx],ebx
   11e0c:	a8 20                	test   al,0x20
   11e0e:	0f 84 14 01 00 00    	je     11f28 <__pthread_tpp_change_priority+0x268>
   11e14:	a8 40                	test   al,0x40
   11e16:	0f 84 d4 00 00 00    	je     11ef0 <__pthread_tpp_change_priority+0x230>
   11e1c:	8b 85 38 06 00 00    	mov    eax,DWORD PTR [rbp+0x638]
   11e22:	39 d8                	cmp    eax,ebx
   11e24:	89 04 24             	mov    DWORD PTR [rsp],eax
   11e27:	0f 8c 93 00 00 00    	jl     11ec0 <__pthread_tpp_change_priority+0x200>
   11e2d:	44 39 f0             	cmp    eax,r14d
   11e30:	0f 8c 8d 00 00 00    	jl     11ec3 <__pthread_tpp_change_priority+0x203>
   11e36:	45 31 e4             	xor    r12d,r12d
   11e39:	f0 ff 8d 18 06 00 00 	lock dec DWORD PTR [rbp+0x618]
   11e40:	74 1a                	je     11e5c <__pthread_tpp_change_priority+0x19c>
   11e42:	48 8d bd 18 06 00 00 	lea    rdi,[rbp+0x618]
   11e49:	48 81 ec 80 00 00 00 	sub    rsp,0x80
   11e50:	e8 7b e4 ff ff       	call   102d0 <__lll_unlock_wake_private>
   11e55:	48 81 c4 80 00 00 00 	add    rsp,0x80
   11e5c:	44 89 e0             	mov    eax,r12d
   11e5f:	48 83 c4 10          	add    rsp,0x10
   11e63:	5b                   	pop    rbx
   11e64:	5d                   	pop    rbp
   11e65:	41 5c                	pop    r12
   11e67:	41 5d                	pop    r13
   11e69:	41 5e                	pop    r14
   11e6b:	c3                   	ret    
   11e6c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   11e70:	83 eb 01             	sub    ebx,0x1
   11e73:	41 39 dc             	cmp    r12d,ebx
   11e76:	0f 8f 54 ff ff ff    	jg     11dd0 <__pthread_tpp_change_priority+0x110>
   11e7c:	89 d8                	mov    eax,ebx
   11e7e:	44 29 e0             	sub    eax,r12d
   11e81:	48 98                	cdqe   
   11e83:	8b 44 82 04          	mov    eax,DWORD PTR [rdx+rax*4+0x4]
   11e87:	85 c0                	test   eax,eax
   11e89:	74 e5                	je     11e70 <__pthread_tpp_change_priority+0x1b0>
   11e8b:	e9 40 ff ff ff       	jmp    11dd0 <__pthread_tpp_change_priority+0x110>
   11e90:	44 8b 32             	mov    r14d,DWORD PTR [rdx]
   11e93:	e9 a1 fe ff ff       	jmp    11d39 <__pthread_tpp_change_priority+0x79>
   11e98:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   11e9f:	00 
   11ea0:	41 83 fd ff          	cmp    r13d,0xffffffff
   11ea4:	0f 85 75 fe ff ff    	jne    11d1f <__pthread_tpp_change_priority+0x5f>
   11eaa:	48 83 c4 10          	add    rsp,0x10
   11eae:	31 c0                	xor    eax,eax
   11eb0:	5b                   	pop    rbx
   11eb1:	5d                   	pop    rbp
   11eb2:	41 5c                	pop    r12
   11eb4:	41 5d                	pop    r13
   11eb6:	41 5e                	pop    r14
   11eb8:	c3                   	ret    
   11eb9:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   11ec0:	89 1c 24             	mov    DWORD PTR [rsp],ebx
   11ec3:	8b b5 3c 06 00 00    	mov    esi,DWORD PTR [rbp+0x63c]
   11ec9:	8b bd d0 02 00 00    	mov    edi,DWORD PTR [rbp+0x2d0]
   11ecf:	48 89 e2             	mov    rdx,rsp
   11ed2:	e8 39 39 ff ff       	call   5810 <__sched_setscheduler@plt>
   11ed7:	85 c0                	test   eax,eax
   11ed9:	0f 89 57 ff ff ff    	jns    11e36 <__pthread_tpp_change_priority+0x176>
   11edf:	48 8b 05 a2 60 20 00 	mov    rax,QWORD PTR [rip+0x2060a2]        # 217f88 <_DYNAMIC+0x238>
   11ee6:	64 44 8b 20          	mov    r12d,DWORD PTR fs:[rax]
   11eea:	e9 4a ff ff ff       	jmp    11e39 <__pthread_tpp_change_priority+0x179>
   11eef:	90                   	nop
   11ef0:	45 31 e4             	xor    r12d,r12d
   11ef3:	8b bd d0 02 00 00    	mov    edi,DWORD PTR [rbp+0x2d0]
   11ef9:	e8 12 37 ff ff       	call   5610 <__sched_getscheduler@plt>
   11efe:	83 f8 ff             	cmp    eax,0xffffffff
   11f01:	89 85 3c 06 00 00    	mov    DWORD PTR [rbp+0x63c],eax
   11f07:	0f 84 e3 00 00 00    	je     11ff0 <__pthread_tpp_change_priority+0x330>
   11f0d:	83 8d 0c 03 00 00 40 	or     DWORD PTR [rbp+0x30c],0x40
   11f14:	45 85 e4             	test   r12d,r12d
   11f17:	0f 85 1c ff ff ff    	jne    11e39 <__pthread_tpp_change_priority+0x179>
   11f1d:	e9 fa fe ff ff       	jmp    11e1c <__pthread_tpp_change_priority+0x15c>
   11f22:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   11f28:	8b bd d0 02 00 00    	mov    edi,DWORD PTR [rbp+0x2d0]
   11f2e:	48 8d b5 38 06 00 00 	lea    rsi,[rbp+0x638]
   11f35:	e8 06 38 ff ff       	call   5740 <__sched_getparam@plt>
   11f3a:	85 c0                	test   eax,eax
   11f3c:	74 62                	je     11fa0 <__pthread_tpp_change_priority+0x2e0>
   11f3e:	f6 85 0c 03 00 00 40 	test   BYTE PTR [rbp+0x30c],0x40
   11f45:	48 8b 05 3c 60 20 00 	mov    rax,QWORD PTR [rip+0x20603c]        # 217f88 <_DYNAMIC+0x238>
   11f4c:	64 44 8b 20          	mov    r12d,DWORD PTR fs:[rax]
   11f50:	75 c2                	jne    11f14 <__pthread_tpp_change_priority+0x254>
   11f52:	eb 9f                	jmp    11ef3 <__pthread_tpp_change_priority+0x233>
   11f54:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   11f58:	41 83 fc ff          	cmp    r12d,0xffffffff
   11f5c:	74 5a                	je     11fb8 <__pthread_tpp_change_priority+0x2f8>
   11f5e:	41 83 fe ff          	cmp    r14d,0xffffffff
   11f62:	74 54                	je     11fb8 <__pthread_tpp_change_priority+0x2f8>
   11f64:	44 89 f0             	mov    eax,r14d
   11f67:	be 01 00 00 00       	mov    esi,0x1
   11f6c:	44 29 e0             	sub    eax,r12d
   11f6f:	83 c0 01             	add    eax,0x1
   11f72:	48 98                	cdqe   
   11f74:	48 8d 3c 85 04 00 00 	lea    rdi,[rax*4+0x4]
   11f7b:	00 
   11f7c:	e8 df 37 ff ff       	call   5760 <calloc@plt>
   11f81:	48 85 c0             	test   rax,rax
   11f84:	48 89 c2             	mov    rdx,rax
   11f87:	74 77                	je     12000 <__pthread_tpp_change_priority+0x340>
   11f89:	41 8d 44 24 ff       	lea    eax,[r12-0x1]
   11f8e:	89 02                	mov    DWORD PTR [rdx],eax
   11f90:	64 48 89 14 25 b0 06 	mov    QWORD PTR fs:0x6b0,rdx
   11f97:	00 00 
   11f99:	e9 5c fd ff ff       	jmp    11cfa <__pthread_tpp_change_priority+0x3a>
   11f9e:	66 90                	xchg   ax,ax
   11fa0:	8b 85 0c 03 00 00    	mov    eax,DWORD PTR [rbp+0x30c]
   11fa6:	83 c8 20             	or     eax,0x20
   11fa9:	89 85 0c 03 00 00    	mov    DWORD PTR [rbp+0x30c],eax
   11faf:	e9 60 fe ff ff       	jmp    11e14 <__pthread_tpp_change_priority+0x154>
   11fb4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   11fb8:	bf 01 00 00 00       	mov    edi,0x1
   11fbd:	e8 ee 39 ff ff       	call   59b0 <sched_get_priority_max@plt>
   11fc2:	89 05 c0 62 20 00    	mov    DWORD PTR [rip+0x2062c0],eax        # 218288 <__sched_fifo_max_prio>
   11fc8:	bf 01 00 00 00       	mov    edi,0x1
   11fcd:	e8 7e 38 ff ff       	call   5850 <sched_get_priority_min@plt>
   11fd2:	89 05 b4 62 20 00    	mov    DWORD PTR [rip+0x2062b4],eax        # 21828c <__sched_fifo_min_prio>
   11fd8:	44 8b 25 ad 62 20 00 	mov    r12d,DWORD PTR [rip+0x2062ad]        # 21828c <__sched_fifo_min_prio>
   11fdf:	44 8b 35 a2 62 20 00 	mov    r14d,DWORD PTR [rip+0x2062a2]        # 218288 <__sched_fifo_max_prio>
   11fe6:	e9 79 ff ff ff       	jmp    11f64 <__pthread_tpp_change_priority+0x2a4>
   11feb:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   11ff0:	48 8b 05 91 5f 20 00 	mov    rax,QWORD PTR [rip+0x205f91]        # 217f88 <_DYNAMIC+0x238>
   11ff7:	64 44 8b 20          	mov    r12d,DWORD PTR fs:[rax]
   11ffb:	e9 14 ff ff ff       	jmp    11f14 <__pthread_tpp_change_priority+0x254>
   12000:	b8 0c 00 00 00       	mov    eax,0xc
   12005:	e9 55 fe ff ff       	jmp    11e5f <__pthread_tpp_change_priority+0x19f>
   1200a:	48 8d 0d 3f 16 00 00 	lea    rcx,[rip+0x163f]        # 13650 <__PRETTY_FUNCTION__.7703>
   12011:	48 8d 35 74 15 00 00 	lea    rsi,[rip+0x1574]        # 1358c <defaultdir+0xc4>
   12018:	48 8d 3d 79 15 00 00 	lea    rdi,[rip+0x1579]        # 13598 <defaultdir+0xd0>
   1201f:	ba 54 00 00 00       	mov    edx,0x54
   12024:	e8 a7 36 ff ff       	call   56d0 <__assert_fail@plt>
   12029:	48 8d 0d 20 16 00 00 	lea    rcx,[rip+0x1620]        # 13650 <__PRETTY_FUNCTION__.7703>
   12030:	48 8d 35 55 15 00 00 	lea    rsi,[rip+0x1555]        # 1358c <defaultdir+0xc4>
   12037:	48 8d 3d aa 15 00 00 	lea    rdi,[rip+0x15aa]        # 135e8 <defaultdir+0x120>
   1203e:	ba 57 00 00 00       	mov    edx,0x57
   12043:	e8 88 36 ff ff       	call   56d0 <__assert_fail@plt>
   12048:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   1204f:	00 

0000000000012050 <__pthread_current_priority>:
   12050:	53                   	push   rbx
   12051:	64 48 8b 1c 25 10 00 	mov    rbx,QWORD PTR fs:0x10
   12058:	00 00 
   1205a:	8b 83 0c 03 00 00    	mov    eax,DWORD PTR [rbx+0x30c]
   12060:	83 e0 60             	and    eax,0x60
   12063:	83 f8 60             	cmp    eax,0x60
   12066:	0f 84 fc 00 00 00    	je     12168 <__pthread_current_priority+0x118>
   1206c:	be 01 00 00 00       	mov    esi,0x1
   12071:	31 c0                	xor    eax,eax
   12073:	f0 0f b1 b3 18 06 00 	lock cmpxchg DWORD PTR [rbx+0x618],esi
   1207a:	00 
   1207b:	74 1a                	je     12097 <__pthread_current_priority+0x47>
   1207d:	48 8d bb 18 06 00 00 	lea    rdi,[rbx+0x618]
   12084:	48 81 ec 80 00 00 00 	sub    rsp,0x80
   1208b:	e8 90 e1 ff ff       	call   10220 <__lll_lock_wait_private>
   12090:	48 81 c4 80 00 00 00 	add    rsp,0x80
   12097:	8b 83 0c 03 00 00    	mov    eax,DWORD PTR [rbx+0x30c]
   1209d:	a8 20                	test   al,0x20
   1209f:	74 3f                	je     120e0 <__pthread_current_priority+0x90>
   120a1:	a8 40                	test   al,0x40
   120a3:	0f 84 97 00 00 00    	je     12140 <__pthread_current_priority+0xf0>
   120a9:	8b 93 38 06 00 00    	mov    edx,DWORD PTR [rbx+0x638]
   120af:	f0 ff 8b 18 06 00 00 	lock dec DWORD PTR [rbx+0x618]
   120b6:	74 1a                	je     120d2 <__pthread_current_priority+0x82>
   120b8:	48 8d bb 18 06 00 00 	lea    rdi,[rbx+0x618]
   120bf:	48 81 ec 80 00 00 00 	sub    rsp,0x80
   120c6:	e8 05 e2 ff ff       	call   102d0 <__lll_unlock_wake_private>
   120cb:	48 81 c4 80 00 00 00 	add    rsp,0x80
   120d2:	89 d0                	mov    eax,edx
   120d4:	5b                   	pop    rbx
   120d5:	c3                   	ret    
   120d6:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   120dd:	00 00 00 
   120e0:	8b bb d0 02 00 00    	mov    edi,DWORD PTR [rbx+0x2d0]
   120e6:	48 8d b3 38 06 00 00 	lea    rsi,[rbx+0x638]
   120ed:	e8 4e 36 ff ff       	call   5740 <__sched_getparam@plt>
   120f2:	85 c0                	test   eax,eax
   120f4:	74 32                	je     12128 <__pthread_current_priority+0xd8>
   120f6:	f6 83 0c 03 00 00 40 	test   BYTE PTR [rbx+0x30c],0x40
   120fd:	75 1d                	jne    1211c <__pthread_current_priority+0xcc>
   120ff:	8b bb d0 02 00 00    	mov    edi,DWORD PTR [rbx+0x2d0]
   12105:	e8 06 35 ff ff       	call   5610 <__sched_getscheduler@plt>
   1210a:	83 f8 ff             	cmp    eax,0xffffffff
   1210d:	89 83 3c 06 00 00    	mov    DWORD PTR [rbx+0x63c],eax
   12113:	74 07                	je     1211c <__pthread_current_priority+0xcc>
   12115:	83 8b 0c 03 00 00 40 	or     DWORD PTR [rbx+0x30c],0x40
   1211c:	ba ff ff ff ff       	mov    edx,0xffffffff
   12121:	eb 8c                	jmp    120af <__pthread_current_priority+0x5f>
   12123:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   12128:	8b 83 0c 03 00 00    	mov    eax,DWORD PTR [rbx+0x30c]
   1212e:	83 c8 20             	or     eax,0x20
   12131:	a8 40                	test   al,0x40
   12133:	89 83 0c 03 00 00    	mov    DWORD PTR [rbx+0x30c],eax
   12139:	0f 85 6a ff ff ff    	jne    120a9 <__pthread_current_priority+0x59>
   1213f:	90                   	nop
   12140:	8b bb d0 02 00 00    	mov    edi,DWORD PTR [rbx+0x2d0]
   12146:	e8 c5 34 ff ff       	call   5610 <__sched_getscheduler@plt>
   1214b:	83 f8 ff             	cmp    eax,0xffffffff
   1214e:	89 83 3c 06 00 00    	mov    DWORD PTR [rbx+0x63c],eax
   12154:	74 c6                	je     1211c <__pthread_current_priority+0xcc>
   12156:	83 8b 0c 03 00 00 40 	or     DWORD PTR [rbx+0x30c],0x40
   1215d:	e9 47 ff ff ff       	jmp    120a9 <__pthread_current_priority+0x59>
   12162:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   12168:	8b 83 38 06 00 00    	mov    eax,DWORD PTR [rbx+0x638]
   1216e:	5b                   	pop    rbx
   1216f:	c3                   	ret    

0000000000012170 <pthread_mutex_getprioceiling>:
   12170:	f6 47 10 40          	test   BYTE PTR [rdi+0x10],0x40
   12174:	74 0a                	je     12180 <pthread_mutex_getprioceiling+0x10>
   12176:	8b 07                	mov    eax,DWORD PTR [rdi]
   12178:	c1 e8 13             	shr    eax,0x13
   1217b:	89 06                	mov    DWORD PTR [rsi],eax
   1217d:	31 c0                	xor    eax,eax
   1217f:	c3                   	ret    
   12180:	b8 16 00 00 00       	mov    eax,0x16
   12185:	c3                   	ret    
   12186:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   1218d:	00 00 00 

0000000000012190 <pthread_mutex_setprioceiling>:
   12190:	f6 47 10 40          	test   BYTE PTR [rdi+0x10],0x40
   12194:	75 0a                	jne    121a0 <pthread_mutex_setprioceiling+0x10>
   12196:	b8 16 00 00 00       	mov    eax,0x16
   1219b:	c3                   	ret    
   1219c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   121a0:	41 57                	push   r15
   121a2:	41 56                	push   r14
   121a4:	41 55                	push   r13
   121a6:	41 54                	push   r12
   121a8:	49 89 d4             	mov    r12,rdx
   121ab:	55                   	push   rbp
   121ac:	53                   	push   rbx
   121ad:	89 f5                	mov    ebp,esi
   121af:	48 89 fb             	mov    rbx,rdi
   121b2:	48 83 ec 08          	sub    rsp,0x8
   121b6:	8b 05 d0 60 20 00    	mov    eax,DWORD PTR [rip+0x2060d0]        # 21828c <__sched_fifo_min_prio>
   121bc:	83 f8 ff             	cmp    eax,0xffffffff
   121bf:	0f 84 13 01 00 00    	je     122d8 <pthread_mutex_setprioceiling+0x148>
   121c5:	8b 05 bd 60 20 00    	mov    eax,DWORD PTR [rip+0x2060bd]        # 218288 <__sched_fifo_max_prio>
   121cb:	83 f8 ff             	cmp    eax,0xffffffff
   121ce:	0f 84 04 01 00 00    	je     122d8 <pthread_mutex_setprioceiling+0x148>
   121d4:	8b 05 b2 60 20 00    	mov    eax,DWORD PTR [rip+0x2060b2]        # 21828c <__sched_fifo_min_prio>
   121da:	39 e8                	cmp    eax,ebp
   121dc:	0f 8f 06 01 00 00    	jg     122e8 <pthread_mutex_setprioceiling+0x158>
   121e2:	8b 05 a0 60 20 00    	mov    eax,DWORD PTR [rip+0x2060a0]        # 218288 <__sched_fifo_max_prio>
   121e8:	39 c5                	cmp    ebp,eax
   121ea:	0f 8f f8 00 00 00    	jg     122e8 <pthread_mutex_setprioceiling+0x158>
   121f0:	89 e8                	mov    eax,ebp
   121f2:	25 ff 0f 00 00       	and    eax,0xfff
   121f7:	39 c5                	cmp    ebp,eax
   121f9:	0f 85 e9 00 00 00    	jne    122e8 <pthread_mutex_setprioceiling+0x158>
   121ff:	64 8b 04 25 d0 02 00 	mov    eax,DWORD PTR fs:0x2d0
   12206:	00 
   12207:	39 43 08             	cmp    DWORD PTR [rbx+0x8],eax
   1220a:	0f 84 e0 00 00 00    	je     122f0 <pthread_mutex_setprioceiling+0x160>
   12210:	44 8b 03             	mov    r8d,DWORD PTR [rbx]
   12213:	41 81 e0 00 00 f8 ff 	and    r8d,0xfff80000
   1221a:	45 89 c6             	mov    r14d,r8d
   1221d:	44 89 c0             	mov    eax,r8d
   12220:	41 83 ce 01          	or     r14d,0x1
   12224:	f0 44 0f b1 33       	lock cmpxchg DWORD PTR [rbx],r14d
   12229:	41 39 c0             	cmp    r8d,eax
   1222c:	45 89 c1             	mov    r9d,r8d
   1222f:	74 54                	je     12285 <pthread_mutex_setprioceiling+0xf5>
   12231:	45 89 c5             	mov    r13d,r8d
   12234:	41 83 cd 02          	or     r13d,0x2
   12238:	4d 63 fd             	movsxd r15,r13d
   1223b:	eb 33                	jmp    12270 <pthread_mutex_setprioceiling+0xe0>
   1223d:	0f 1f 00             	nop    DWORD PTR [rax]
   12240:	45 39 c8             	cmp    r8d,r9d
   12243:	74 1e                	je     12263 <pthread_mutex_setprioceiling+0xd3>
   12245:	8b 73 10             	mov    esi,DWORD PTR [rbx+0x10]
   12248:	45 31 d2             	xor    r10d,r10d
   1224b:	4c 89 fa             	mov    rdx,r15
   1224e:	48 89 df             	mov    rdi,rbx
   12251:	b8 ca 00 00 00       	mov    eax,0xca
   12256:	f7 d6                	not    esi
   12258:	81 e6 80 00 00 00    	and    esi,0x80
   1225e:	48 63 f6             	movsxd rsi,esi
   12261:	0f 05                	syscall 
   12263:	44 89 c0             	mov    eax,r8d
   12266:	f0 44 0f b1 2b       	lock cmpxchg DWORD PTR [rbx],r13d
   1226b:	41 39 c0             	cmp    r8d,eax
   1226e:	74 15                	je     12285 <pthread_mutex_setprioceiling+0xf5>
   12270:	44 89 f0             	mov    eax,r14d
   12273:	f0 44 0f b1 2b       	lock cmpxchg DWORD PTR [rbx],r13d
   12278:	41 89 c1             	mov    r9d,eax
   1227b:	25 00 00 f8 ff       	and    eax,0xfff80000
   12280:	41 39 c0             	cmp    r8d,eax
   12283:	74 bb                	je     12240 <pthread_mutex_setprioceiling+0xb0>
   12285:	41 c1 e9 13          	shr    r9d,0x13
   12289:	4d 85 e4             	test   r12,r12
   1228c:	74 04                	je     12292 <pthread_mutex_setprioceiling+0x102>
   1228e:	45 89 0c 24          	mov    DWORD PTR [r12],r9d
   12292:	31 c0                	xor    eax,eax
   12294:	c1 e5 13             	shl    ebp,0x13
   12297:	09 c5                	or     ebp,eax
   12299:	89 2b                	mov    DWORD PTR [rbx],ebp
   1229b:	f0 83 0c 24 00       	lock or DWORD PTR [rsp],0x0
   122a0:	8b 73 10             	mov    esi,DWORD PTR [rbx+0x10]
   122a3:	45 31 d2             	xor    r10d,r10d
   122a6:	ba ff ff ff 7f       	mov    edx,0x7fffffff
   122ab:	48 89 df             	mov    rdi,rbx
   122ae:	b8 ca 00 00 00       	mov    eax,0xca
   122b3:	81 e6 80 00 00 00    	and    esi,0x80
   122b9:	40 80 f6 81          	xor    sil,0x81
   122bd:	48 63 f6             	movsxd rsi,esi
   122c0:	0f 05                	syscall 
   122c2:	31 c0                	xor    eax,eax
   122c4:	48 83 c4 08          	add    rsp,0x8
   122c8:	5b                   	pop    rbx
   122c9:	5d                   	pop    rbp
   122ca:	41 5c                	pop    r12
   122cc:	41 5d                	pop    r13
   122ce:	41 5e                	pop    r14
   122d0:	41 5f                	pop    r15
   122d2:	c3                   	ret    
   122d3:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   122d8:	e8 b3 f9 ff ff       	call   11c90 <__init_sched_fifo_prio>
   122dd:	e9 f2 fe ff ff       	jmp    121d4 <pthread_mutex_setprioceiling+0x44>
   122e2:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   122e8:	b8 16 00 00 00       	mov    eax,0x16
   122ed:	eb d5                	jmp    122c4 <pthread_mutex_setprioceiling+0x134>
   122ef:	90                   	nop
   122f0:	8b 53 10             	mov    edx,DWORD PTR [rbx+0x10]
   122f3:	b8 23 00 00 00       	mov    eax,0x23
   122f8:	83 e2 7f             	and    edx,0x7f
   122fb:	83 fa 42             	cmp    edx,0x42
   122fe:	74 c4                	je     122c4 <pthread_mutex_setprioceiling+0x134>
   12300:	83 fa 41             	cmp    edx,0x41
   12303:	0f 85 07 ff ff ff    	jne    12210 <pthread_mutex_setprioceiling+0x80>
   12309:	44 8b 2b             	mov    r13d,DWORD PTR [rbx]
   1230c:	89 ee                	mov    esi,ebp
   1230e:	41 c1 ed 13          	shr    r13d,0x13
   12312:	44 89 ef             	mov    edi,r13d
   12315:	e8 a6 f9 ff ff       	call   11cc0 <__pthread_tpp_change_priority>
   1231a:	85 c0                	test   eax,eax
   1231c:	75 a6                	jne    122c4 <pthread_mutex_setprioceiling+0x134>
   1231e:	4d 85 e4             	test   r12,r12
   12321:	74 04                	je     12327 <pthread_mutex_setprioceiling+0x197>
   12323:	45 89 2c 24          	mov    DWORD PTR [r12],r13d
   12327:	8b 03                	mov    eax,DWORD PTR [rbx]
   12329:	25 ff ff 07 00       	and    eax,0x7ffff
   1232e:	e9 61 ff ff ff       	jmp    12294 <pthread_mutex_setprioceiling+0x104>
   12333:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   1233a:	00 00 00 
   1233d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000012340 <pthread_setname_np>:
   12340:	41 54                	push   r12
   12342:	55                   	push   rbp
   12343:	49 89 fc             	mov    r12,rdi
   12346:	53                   	push   rbx
   12347:	48 89 f7             	mov    rdi,rsi
   1234a:	48 89 f5             	mov    rbp,rsi
   1234d:	48 83 ec 20          	sub    rsp,0x20
   12351:	e8 2a 33 ff ff       	call   5680 <strlen@plt>
   12356:	48 89 c3             	mov    rbx,rax
   12359:	b8 22 00 00 00       	mov    eax,0x22
   1235e:	48 83 fb 0f          	cmp    rbx,0xf
   12362:	76 0c                	jbe    12370 <pthread_setname_np+0x30>
   12364:	48 83 c4 20          	add    rsp,0x20
   12368:	5b                   	pop    rbx
   12369:	5d                   	pop    rbp
   1236a:	41 5c                	pop    r12
   1236c:	c3                   	ret    
   1236d:	0f 1f 00             	nop    DWORD PTR [rax]
   12370:	64 48 8b 04 25 10 00 	mov    rax,QWORD PTR fs:0x10
   12377:	00 00 
   12379:	49 39 c4             	cmp    r12,rax
   1237c:	0f 84 9e 00 00 00    	je     12420 <pthread_setname_np+0xe0>
   12382:	41 8b 94 24 d0 02 00 	mov    edx,DWORD PTR [r12+0x2d0]
   12389:	00 
   1238a:	48 8d 35 df 12 00 00 	lea    rsi,[rip+0x12df]        # 13670 <__PRETTY_FUNCTION__.7703+0x20>
   12391:	48 89 e7             	mov    rdi,rsp
   12394:	31 c0                	xor    eax,eax
   12396:	e8 e5 35 ff ff       	call   5980 <sprintf@plt>
   1239b:	be 02 00 00 00       	mov    esi,0x2
   123a0:	48 89 e7             	mov    rdi,rsp
   123a3:	b8 02 00 00 00       	mov    eax,0x2
   123a8:	0f 05                	syscall 
   123aa:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
   123b0:	0f 87 9a 00 00 00    	ja     12450 <pthread_setname_np+0x110>
   123b6:	83 f8 ff             	cmp    eax,0xffffffff
   123b9:	4c 63 c0             	movsxd r8,eax
   123bc:	41 b9 01 00 00 00    	mov    r9d,0x1
   123c2:	74 73                	je     12437 <pthread_setname_np+0xf7>
   123c4:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   123c8:	48 89 da             	mov    rdx,rbx
   123cb:	48 89 ee             	mov    rsi,rbp
   123ce:	4c 89 c7             	mov    rdi,r8
   123d1:	44 89 c8             	mov    eax,r9d
   123d4:	0f 05                	syscall 
   123d6:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
   123dc:	77 2a                	ja     12408 <pthread_setname_np+0xc8>
   123de:	48 85 c0             	test   rax,rax
   123e1:	78 7e                	js     12461 <pthread_setname_np+0x121>
   123e3:	31 d2                	xor    edx,edx
   123e5:	48 39 c3             	cmp    rbx,rax
   123e8:	0f 95 c2             	setne  dl
   123eb:	8d 14 92             	lea    edx,[rdx+rdx*4]
   123ee:	4c 89 c7             	mov    rdi,r8
   123f1:	b8 03 00 00 00       	mov    eax,0x3
   123f6:	0f 05                	syscall 
   123f8:	48 83 c4 20          	add    rsp,0x20
   123fc:	89 d0                	mov    eax,edx
   123fe:	5b                   	pop    rbx
   123ff:	5d                   	pop    rbp
   12400:	41 5c                	pop    r12
   12402:	c3                   	ret    
   12403:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   12408:	48 8b 15 79 5b 20 00 	mov    rdx,QWORD PTR [rip+0x205b79]        # 217f88 <_DYNAMIC+0x238>
   1240f:	f7 d8                	neg    eax
   12411:	83 f8 04             	cmp    eax,0x4
   12414:	64 89 02             	mov    DWORD PTR fs:[rdx],eax
   12417:	74 af                	je     123c8 <pthread_setname_np+0x88>
   12419:	89 c2                	mov    edx,eax
   1241b:	eb d1                	jmp    123ee <pthread_setname_np+0xae>
   1241d:	0f 1f 00             	nop    DWORD PTR [rax]
   12420:	31 c0                	xor    eax,eax
   12422:	48 89 ee             	mov    rsi,rbp
   12425:	bf 0f 00 00 00       	mov    edi,0xf
   1242a:	e8 b1 33 ff ff       	call   57e0 <prctl@plt>
   1242f:	85 c0                	test   eax,eax
   12431:	0f 84 2d ff ff ff    	je     12364 <pthread_setname_np+0x24>
   12437:	48 8b 05 4a 5b 20 00 	mov    rax,QWORD PTR [rip+0x205b4a]        # 217f88 <_DYNAMIC+0x238>
   1243e:	64 8b 00             	mov    eax,DWORD PTR fs:[rax]
   12441:	e9 1e ff ff ff       	jmp    12364 <pthread_setname_np+0x24>
   12446:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   1244d:	00 00 00 
   12450:	48 8b 15 31 5b 20 00 	mov    rdx,QWORD PTR [rip+0x205b31]        # 217f88 <_DYNAMIC+0x238>
   12457:	f7 d8                	neg    eax
   12459:	64 89 02             	mov    DWORD PTR fs:[rdx],eax
   1245c:	e9 03 ff ff ff       	jmp    12364 <pthread_setname_np+0x24>
   12461:	48 8b 05 20 5b 20 00 	mov    rax,QWORD PTR [rip+0x205b20]        # 217f88 <_DYNAMIC+0x238>
   12468:	64 8b 10             	mov    edx,DWORD PTR fs:[rax]
   1246b:	eb 81                	jmp    123ee <pthread_setname_np+0xae>
   1246d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000012470 <pthread_getname_np>:
   12470:	48 83 fa 0f          	cmp    rdx,0xf
   12474:	b8 22 00 00 00       	mov    eax,0x22
   12479:	77 05                	ja     12480 <pthread_getname_np+0x10>
   1247b:	c3                   	ret    
   1247c:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   12480:	41 54                	push   r12
   12482:	55                   	push   rbp
   12483:	48 89 f5             	mov    rbp,rsi
   12486:	53                   	push   rbx
   12487:	48 89 d3             	mov    rbx,rdx
   1248a:	64 48 8b 04 25 10 00 	mov    rax,QWORD PTR fs:0x10
   12491:	00 00 
   12493:	48 83 ec 20          	sub    rsp,0x20
   12497:	48 39 c7             	cmp    rdi,rax
   1249a:	0f 84 a8 00 00 00    	je     12548 <pthread_getname_np+0xd8>
   124a0:	8b 97 d0 02 00 00    	mov    edx,DWORD PTR [rdi+0x2d0]
   124a6:	48 8d 35 c3 11 00 00 	lea    rsi,[rip+0x11c3]        # 13670 <__PRETTY_FUNCTION__.7703+0x20>
   124ad:	48 89 e7             	mov    rdi,rsp
   124b0:	31 c0                	xor    eax,eax
   124b2:	e8 c9 34 ff ff       	call   5980 <sprintf@plt>
   124b7:	31 f6                	xor    esi,esi
   124b9:	48 89 e7             	mov    rdi,rsp
   124bc:	b8 02 00 00 00       	mov    eax,0x2
   124c1:	0f 05                	syscall 
   124c3:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
   124c9:	0f 87 a1 00 00 00    	ja     12570 <pthread_getname_np+0x100>
   124cf:	45 31 c9             	xor    r9d,r9d
   124d2:	83 f8 ff             	cmp    eax,0xffffffff
   124d5:	4c 63 c0             	movsxd r8,eax
   124d8:	74 7e                	je     12558 <pthread_getname_np+0xe8>
   124da:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   124e0:	48 89 da             	mov    rdx,rbx
   124e3:	48 89 ee             	mov    rsi,rbp
   124e6:	4c 89 c7             	mov    rdi,r8
   124e9:	44 89 c8             	mov    eax,r9d
   124ec:	0f 05                	syscall 
   124ee:	48 3d 00 f0 ff ff    	cmp    rax,0xfffffffffffff000
   124f4:	77 3a                	ja     12530 <pthread_getname_np+0xc0>
   124f6:	48 85 c0             	test   rax,rax
   124f9:	0f 88 7f 00 00 00    	js     1257e <pthread_getname_np+0x10e>
   124ff:	48 8d 54 05 ff       	lea    rdx,[rbp+rax*1-0x1]
   12504:	80 3a 0a             	cmp    BYTE PTR [rdx],0xa
   12507:	74 5f                	je     12568 <pthread_getname_np+0xf8>
   12509:	48 39 c3             	cmp    rbx,rax
   1250c:	ba 22 00 00 00       	mov    edx,0x22
   12511:	74 07                	je     1251a <pthread_getname_np+0xaa>
   12513:	c6 44 05 00 00       	mov    BYTE PTR [rbp+rax*1+0x0],0x0
   12518:	31 d2                	xor    edx,edx
   1251a:	4c 89 c7             	mov    rdi,r8
   1251d:	b8 03 00 00 00       	mov    eax,0x3
   12522:	0f 05                	syscall 
   12524:	89 d0                	mov    eax,edx
   12526:	48 83 c4 20          	add    rsp,0x20
   1252a:	5b                   	pop    rbx
   1252b:	5d                   	pop    rbp
   1252c:	41 5c                	pop    r12
   1252e:	c3                   	ret    
   1252f:	90                   	nop
   12530:	48 8b 15 51 5a 20 00 	mov    rdx,QWORD PTR [rip+0x205a51]        # 217f88 <_DYNAMIC+0x238>
   12537:	f7 d8                	neg    eax
   12539:	83 f8 04             	cmp    eax,0x4
   1253c:	64 89 02             	mov    DWORD PTR fs:[rdx],eax
   1253f:	74 9f                	je     124e0 <pthread_getname_np+0x70>
   12541:	89 c2                	mov    edx,eax
   12543:	eb d5                	jmp    1251a <pthread_getname_np+0xaa>
   12545:	0f 1f 00             	nop    DWORD PTR [rax]
   12548:	31 c0                	xor    eax,eax
   1254a:	bf 10 00 00 00       	mov    edi,0x10
   1254f:	e8 8c 32 ff ff       	call   57e0 <prctl@plt>
   12554:	85 c0                	test   eax,eax
   12556:	74 ce                	je     12526 <pthread_getname_np+0xb6>
   12558:	48 8b 05 29 5a 20 00 	mov    rax,QWORD PTR [rip+0x205a29]        # 217f88 <_DYNAMIC+0x238>
   1255f:	64 8b 00             	mov    eax,DWORD PTR fs:[rax]
   12562:	eb c2                	jmp    12526 <pthread_getname_np+0xb6>
   12564:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   12568:	c6 02 00             	mov    BYTE PTR [rdx],0x0
   1256b:	31 d2                	xor    edx,edx
   1256d:	eb ab                	jmp    1251a <pthread_getname_np+0xaa>
   1256f:	90                   	nop
   12570:	48 8b 15 11 5a 20 00 	mov    rdx,QWORD PTR [rip+0x205a11]        # 217f88 <_DYNAMIC+0x238>
   12577:	f7 d8                	neg    eax
   12579:	64 89 02             	mov    DWORD PTR fs:[rdx],eax
   1257c:	eb a8                	jmp    12526 <pthread_getname_np+0xb6>
   1257e:	48 8b 05 03 5a 20 00 	mov    rax,QWORD PTR [rip+0x205a03]        # 217f88 <_DYNAMIC+0x238>
   12585:	64 8b 10             	mov    edx,DWORD PTR fs:[rax]
   12588:	eb 90                	jmp    1251a <pthread_getname_np+0xaa>
   1258a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

0000000000012590 <pthread_setattr_default_np>:
   12590:	41 57                	push   r15
   12592:	41 56                	push   r14
   12594:	41 55                	push   r13
   12596:	41 54                	push   r12
   12598:	55                   	push   rbp
   12599:	53                   	push   rbx
   1259a:	48 83 ec 28          	sub    rsp,0x28
   1259e:	8b 6f 04             	mov    ebp,DWORD PTR [rdi+0x4]
   125a1:	83 fd 02             	cmp    ebp,0x2
   125a4:	77 25                	ja     125cb <pthread_setattr_default_np+0x3b>
   125a6:	44 8b 27             	mov    r12d,DWORD PTR [rdi]
   125a9:	48 89 fb             	mov    rbx,rdi
   125ac:	45 85 e4             	test   r12d,r12d
   125af:	7e 3f                	jle    125f0 <pthread_setattr_default_np+0x60>
   125b1:	89 ef                	mov    edi,ebp
   125b3:	e8 48 34 ff ff       	call   5a00 <__sched_get_priority_min@plt>
   125b8:	89 ef                	mov    edi,ebp
   125ba:	41 89 c5             	mov    r13d,eax
   125bd:	e8 8e 30 ff ff       	call   5650 <__sched_get_priority_max@plt>
   125c2:	45 85 ed             	test   r13d,r13d
   125c5:	78 04                	js     125cb <pthread_setattr_default_np+0x3b>
   125c7:	85 c0                	test   eax,eax
   125c9:	79 15                	jns    125e0 <pthread_setattr_default_np+0x50>
   125cb:	48 83 c4 28          	add    rsp,0x28
   125cf:	b8 16 00 00 00       	mov    eax,0x16
   125d4:	5b                   	pop    rbx
   125d5:	5d                   	pop    rbp
   125d6:	41 5c                	pop    r12
   125d8:	41 5d                	pop    r13
   125da:	41 5e                	pop    r14
   125dc:	41 5f                	pop    r15
   125de:	c3                   	ret    
   125df:	90                   	nop
   125e0:	45 39 ec             	cmp    r12d,r13d
   125e3:	7c e6                	jl     125cb <pthread_setattr_default_np+0x3b>
   125e5:	41 39 c4             	cmp    r12d,eax
   125e8:	7f e1                	jg     125cb <pthread_setattr_default_np+0x3b>
   125ea:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   125f0:	48 8b 6b 20          	mov    rbp,QWORD PTR [rbx+0x20]
   125f4:	48 8d 45 ff          	lea    rax,[rbp-0x1]
   125f8:	48 3d fe 3f 00 00    	cmp    rax,0x3ffe
   125fe:	76 cb                	jbe    125cb <pthread_setattr_default_np+0x3b>
   12600:	44 8b 7b 08          	mov    r15d,DWORD PTR [rbx+0x8]
   12604:	44 89 f8             	mov    eax,r15d
   12607:	83 e0 08             	and    eax,0x8
   1260a:	75 bf                	jne    125cb <pthread_setattr_default_np+0x3b>
   1260c:	48 8b 4b 10          	mov    rcx,QWORD PTR [rbx+0x10]
   12610:	44 8b 33             	mov    r14d,DWORD PTR [rbx]
   12613:	be 01 00 00 00       	mov    esi,0x1
   12618:	44 8b 6b 04          	mov    r13d,DWORD PTR [rbx+0x4]
   1261c:	4c 8b 4b 28          	mov    r9,QWORD PTR [rbx+0x28]
   12620:	4c 8b 63 30          	mov    r12,QWORD PTR [rbx+0x30]
   12624:	48 89 4c 24 08       	mov    QWORD PTR [rsp+0x8],rcx
   12629:	48 8b 4b 18          	mov    rcx,QWORD PTR [rbx+0x18]
   1262d:	48 89 4c 24 10       	mov    QWORD PTR [rsp+0x10],rcx
   12632:	f0 0f b1 35 86 9c 20 	lock cmpxchg DWORD PTR [rip+0x209c86],esi        # 21c2c0 <__default_pthread_attr_lock>
   12639:	00 
   1263a:	74 1a                	je     12656 <pthread_setattr_default_np+0xc6>
   1263c:	48 8d 3d 7d 9c 20 00 	lea    rdi,[rip+0x209c7d]        # 21c2c0 <__default_pthread_attr_lock>
   12643:	48 81 ec 80 00 00 00 	sub    rsp,0x80
   1264a:	e8 d1 db ff ff       	call   10220 <__lll_lock_wait_private>
   1264f:	48 81 c4 80 00 00 00 	add    rsp,0x80
   12656:	4d 85 e4             	test   r12,r12
   12659:	0f 84 c1 00 00 00    	je     12720 <pthread_setattr_default_np+0x190>
   1265f:	4c 39 25 8a 9d 20 00 	cmp    QWORD PTR [rip+0x209d8a],r12        # 21c3f0 <__default_pthread_attr+0x30>
   12666:	4c 8b 0d 7b 9d 20 00 	mov    r9,QWORD PTR [rip+0x209d7b]        # 21c3e8 <__default_pthread_attr+0x28>
   1266d:	74 1c                	je     1268b <pthread_setattr_default_np+0xfb>
   1266f:	48 8b 3d 72 9d 20 00 	mov    rdi,QWORD PTR [rip+0x209d72]        # 21c3e8 <__default_pthread_attr+0x28>
   12676:	4c 89 e6             	mov    rsi,r12
   12679:	e8 22 32 ff ff       	call   58a0 <realloc@plt>
   1267e:	48 85 c0             	test   rax,rax
   12681:	49 89 c1             	mov    r9,rax
   12684:	ba 0c 00 00 00       	mov    edx,0xc
   12689:	74 61                	je     126ec <pthread_setattr_default_np+0x15c>
   1268b:	48 8b 73 28          	mov    rsi,QWORD PTR [rbx+0x28]
   1268f:	4c 89 cf             	mov    rdi,r9
   12692:	4c 89 e2             	mov    rdx,r12
   12695:	e8 36 31 ff ff       	call   57d0 <memcpy@plt>
   1269a:	49 89 c1             	mov    r9,rax
   1269d:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
   126a2:	48 85 ed             	test   rbp,rbp
   126a5:	48 0f 44 2d 33 9d 20 	cmove  rbp,QWORD PTR [rip+0x209d33]        # 21c3e0 <__default_pthread_attr+0x20>
   126ac:	00 
   126ad:	44 89 35 0c 9d 20 00 	mov    DWORD PTR [rip+0x209d0c],r14d        # 21c3c0 <__default_pthread_attr>
   126b4:	44 89 2d 09 9d 20 00 	mov    DWORD PTR [rip+0x209d09],r13d        # 21c3c4 <__default_pthread_attr+0x4>
   126bb:	31 d2                	xor    edx,edx
   126bd:	44 89 3d 04 9d 20 00 	mov    DWORD PTR [rip+0x209d04],r15d        # 21c3c8 <__default_pthread_attr+0x8>
   126c4:	4c 89 0d 1d 9d 20 00 	mov    QWORD PTR [rip+0x209d1d],r9        # 21c3e8 <__default_pthread_attr+0x28>
   126cb:	48 89 05 fe 9c 20 00 	mov    QWORD PTR [rip+0x209cfe],rax        # 21c3d0 <__default_pthread_attr+0x10>
   126d2:	48 8b 44 24 10       	mov    rax,QWORD PTR [rsp+0x10]
   126d7:	48 89 2d 02 9d 20 00 	mov    QWORD PTR [rip+0x209d02],rbp        # 21c3e0 <__default_pthread_attr+0x20>
   126de:	4c 89 25 0b 9d 20 00 	mov    QWORD PTR [rip+0x209d0b],r12        # 21c3f0 <__default_pthread_attr+0x30>
   126e5:	48 89 05 ec 9c 20 00 	mov    QWORD PTR [rip+0x209cec],rax        # 21c3d8 <__default_pthread_attr+0x18>
   126ec:	f0 ff 0d cd 9b 20 00 	lock dec DWORD PTR [rip+0x209bcd]        # 21c2c0 <__default_pthread_attr_lock>
   126f3:	74 1a                	je     1270f <pthread_setattr_default_np+0x17f>
   126f5:	48 8d 3d c4 9b 20 00 	lea    rdi,[rip+0x209bc4]        # 21c2c0 <__default_pthread_attr_lock>
   126fc:	48 81 ec 80 00 00 00 	sub    rsp,0x80
   12703:	e8 c8 db ff ff       	call   102d0 <__lll_unlock_wake_private>
   12708:	48 81 c4 80 00 00 00 	add    rsp,0x80
   1270f:	48 83 c4 28          	add    rsp,0x28
   12713:	89 d0                	mov    eax,edx
   12715:	5b                   	pop    rbx
   12716:	5d                   	pop    rbp
   12717:	41 5c                	pop    r12
   12719:	41 5d                	pop    r13
   1271b:	41 5e                	pop    r14
   1271d:	41 5f                	pop    r15
   1271f:	c3                   	ret    
   12720:	48 8b 3d c1 9c 20 00 	mov    rdi,QWORD PTR [rip+0x209cc1]        # 21c3e8 <__default_pthread_attr+0x28>
   12727:	4c 89 4c 24 18       	mov    QWORD PTR [rsp+0x18],r9
   1272c:	e8 8f 2e ff ff       	call   55c0 <free@plt>
   12731:	4c 8b 4c 24 18       	mov    r9,QWORD PTR [rsp+0x18]
   12736:	e9 62 ff ff ff       	jmp    1269d <pthread_setattr_default_np+0x10d>
   1273b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000012740 <pthread_getattr_default_np>:
   12740:	48 89 fa             	mov    rdx,rdi
   12743:	be 01 00 00 00       	mov    esi,0x1
   12748:	31 c0                	xor    eax,eax
   1274a:	f0 0f b1 35 6e 9b 20 	lock cmpxchg DWORD PTR [rip+0x209b6e],esi        # 21c2c0 <__default_pthread_attr_lock>
   12751:	00 
   12752:	74 1a                	je     1276e <pthread_getattr_default_np+0x2e>
   12754:	48 8d 3d 65 9b 20 00 	lea    rdi,[rip+0x209b65]        # 21c2c0 <__default_pthread_attr_lock>
   1275b:	48 81 ec 80 00 00 00 	sub    rsp,0x80
   12762:	e8 b9 da ff ff       	call   10220 <__lll_lock_wait_private>
   12767:	48 81 c4 80 00 00 00 	add    rsp,0x80
   1276e:	48 8b 05 4b 9c 20 00 	mov    rax,QWORD PTR [rip+0x209c4b]        # 21c3c0 <__default_pthread_attr>
   12775:	48 89 02             	mov    QWORD PTR [rdx],rax
   12778:	48 8b 05 49 9c 20 00 	mov    rax,QWORD PTR [rip+0x209c49]        # 21c3c8 <__default_pthread_attr+0x8>
   1277f:	48 89 42 08          	mov    QWORD PTR [rdx+0x8],rax
   12783:	48 8b 05 46 9c 20 00 	mov    rax,QWORD PTR [rip+0x209c46]        # 21c3d0 <__default_pthread_attr+0x10>
   1278a:	48 89 42 10          	mov    QWORD PTR [rdx+0x10],rax
   1278e:	48 8b 05 43 9c 20 00 	mov    rax,QWORD PTR [rip+0x209c43]        # 21c3d8 <__default_pthread_attr+0x18>
   12795:	48 89 42 18          	mov    QWORD PTR [rdx+0x18],rax
   12799:	48 8b 05 40 9c 20 00 	mov    rax,QWORD PTR [rip+0x209c40]        # 21c3e0 <__default_pthread_attr+0x20>
   127a0:	48 89 42 20          	mov    QWORD PTR [rdx+0x20],rax
   127a4:	48 8b 05 3d 9c 20 00 	mov    rax,QWORD PTR [rip+0x209c3d]        # 21c3e8 <__default_pthread_attr+0x28>
   127ab:	48 89 42 28          	mov    QWORD PTR [rdx+0x28],rax
   127af:	48 8b 05 3a 9c 20 00 	mov    rax,QWORD PTR [rip+0x209c3a]        # 21c3f0 <__default_pthread_attr+0x30>
   127b6:	48 89 42 30          	mov    QWORD PTR [rdx+0x30],rax
   127ba:	f0 ff 0d ff 9a 20 00 	lock dec DWORD PTR [rip+0x209aff]        # 21c2c0 <__default_pthread_attr_lock>
   127c1:	74 1a                	je     127dd <pthread_getattr_default_np+0x9d>
   127c3:	48 8d 3d f6 9a 20 00 	lea    rdi,[rip+0x209af6]        # 21c2c0 <__default_pthread_attr_lock>
   127ca:	48 81 ec 80 00 00 00 	sub    rsp,0x80
   127d1:	e8 fa da ff ff       	call   102d0 <__lll_unlock_wake_private>
   127d6:	48 81 c4 80 00 00 00 	add    rsp,0x80
   127dd:	31 c0                	xor    eax,eax
   127df:	c3                   	ret    

00000000000127e0 <elision_init>:
   127e0:	48 8b 05 c1 57 20 00 	mov    rax,QWORD PTR [rip+0x2057c1]        # 217fa8 <_DYNAMIC+0x258>
   127e7:	31 d2                	xor    edx,edx
   127e9:	8b 80 8c 00 00 00    	mov    eax,DWORD PTR [rax+0x8c]
   127ef:	25 00 08 00 00       	and    eax,0x800
   127f4:	0f 95 c2             	setne  dl
   127f7:	89 15 27 9c 20 00    	mov    DWORD PTR [rip+0x209c27],edx        # 21c424 <__elision_available>
   127fd:	75 0a                	jne    12809 <elision_init+0x29>
   127ff:	c7 05 8f 5a 20 00 00 	mov    DWORD PTR [rip+0x205a8f],0x0        # 218298 <__elision_aconf+0x8>
   12806:	00 00 00 
   12809:	f3 c3                	repz ret 
   1280b:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000012810 <__lll_lock_elision>:
   12810:	0f b7 06             	movzx  eax,WORD PTR [rsi]
   12813:	49 89 f8             	mov    r8,rdi
   12816:	66 85 c0             	test   ax,ax
   12819:	7e 35                	jle    12850 <__lll_lock_elision+0x40>
   1281b:	83 e8 01             	sub    eax,0x1
   1281e:	66 89 06             	mov    WORD PTR [rsi],ax
   12821:	bf 01 00 00 00       	mov    edi,0x1
   12826:	31 c0                	xor    eax,eax
   12828:	89 d6                	mov    esi,edx
   1282a:	f0 41 0f b1 38       	lock cmpxchg DWORD PTR [r8],edi
   1282f:	74 16                	je     12847 <__lll_lock_elision+0x37>
   12831:	49 8d 38             	lea    rdi,[r8]
   12834:	48 81 ec 80 00 00 00 	sub    rsp,0x80
   1283b:	e8 10 da ff ff       	call   10250 <__lll_lock_wait>
   12840:	48 81 c4 80 00 00 00 	add    rsp,0x80
   12847:	31 c0                	xor    eax,eax
   12849:	c3                   	ret    
   1284a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   12850:	8b 0d 42 5a 20 00    	mov    ecx,DWORD PTR [rip+0x205a42]        # 218298 <__elision_aconf+0x8>
   12856:	bf ff ff ff ff       	mov    edi,0xffffffff
   1285b:	85 c9                	test   ecx,ecx
   1285d:	7f 12                	jg     12871 <__lll_lock_elision+0x61>
   1285f:	eb c0                	jmp    12821 <__lll_lock_elision+0x11>
   12861:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   12868:	a8 02                	test   al,0x2
   1286a:	74 24                	je     12890 <__lll_lock_elision+0x80>
   1286c:	83 e9 01             	sub    ecx,0x1
   1286f:	74 b0                	je     12821 <__lll_lock_elision+0x11>
   12871:	89 f8                	mov    eax,edi
   12873:	c7 f8 00 00 00 00    	xbegin 12879 <__lll_lock_elision+0x69>
   12879:	83 f8 ff             	cmp    eax,0xffffffff
   1287c:	75 ea                	jne    12868 <__lll_lock_elision+0x58>
   1287e:	41 8b 00             	mov    eax,DWORD PTR [r8]
   12881:	85 c0                	test   eax,eax
   12883:	74 c2                	je     12847 <__lll_lock_elision+0x37>
   12885:	c6 f8 ff             	xabort 0xff
   12888:	eb e2                	jmp    1286c <__lll_lock_elision+0x5c>
   1288a:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   12890:	a8 01                	test   al,0x1
   12892:	74 0a                	je     1289e <__lll_lock_elision+0x8e>
   12894:	c1 e8 18             	shr    eax,0x18
   12897:	3d ff 00 00 00       	cmp    eax,0xff
   1289c:	74 16                	je     128b4 <__lll_lock_elision+0xa4>
   1289e:	0f bf 0e             	movsx  ecx,WORD PTR [rsi]
   128a1:	8b 05 ed 59 20 00    	mov    eax,DWORD PTR [rip+0x2059ed]        # 218294 <__elision_aconf+0x4>
   128a7:	39 c1                	cmp    ecx,eax
   128a9:	0f 85 6f ff ff ff    	jne    1281e <__lll_lock_elision+0xe>
   128af:	e9 6d ff ff ff       	jmp    12821 <__lll_lock_elision+0x11>
   128b4:	0f bf 0e             	movsx  ecx,WORD PTR [rsi]
   128b7:	8b 05 d3 59 20 00    	mov    eax,DWORD PTR [rip+0x2059d3]        # 218290 <__elision_aconf>
   128bd:	39 c1                	cmp    ecx,eax
   128bf:	0f 85 59 ff ff ff    	jne    1281e <__lll_lock_elision+0xe>
   128c5:	e9 57 ff ff ff       	jmp    12821 <__lll_lock_elision+0x11>
   128ca:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]

00000000000128d0 <__lll_unlock_elision>:
   128d0:	8b 07                	mov    eax,DWORD PTR [rdi]
   128d2:	48 89 fa             	mov    rdx,rdi
   128d5:	85 c0                	test   eax,eax
   128d7:	74 27                	je     12900 <__lll_unlock_elision+0x30>
   128d9:	f0 ff 0a             	lock dec DWORD PTR [rdx]
   128dc:	74 16                	je     128f4 <__lll_unlock_elision+0x24>
   128de:	48 8d 3a             	lea    rdi,[rdx]
   128e1:	48 81 ec 80 00 00 00 	sub    rsp,0x80
   128e8:	e8 03 da ff ff       	call   102f0 <__lll_unlock_wake>
   128ed:	48 81 c4 80 00 00 00 	add    rsp,0x80
   128f4:	31 c0                	xor    eax,eax
   128f6:	c3                   	ret    
   128f7:	66 0f 1f 84 00 00 00 	nop    WORD PTR [rax+rax*1+0x0]
   128fe:	00 00 
   12900:	0f 01 d5             	xend   
   12903:	31 c0                	xor    eax,eax
   12905:	c3                   	ret    
   12906:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   1290d:	00 00 00 

0000000000012910 <__lll_timedlock_elision>:
   12910:	0f b7 06             	movzx  eax,WORD PTR [rsi]
   12913:	49 89 f8             	mov    r8,rdi
   12916:	48 89 54 24 f8       	mov    QWORD PTR [rsp-0x8],rdx
   1291b:	66 85 c0             	test   ax,ax
   1291e:	7e 38                	jle    12958 <__lll_timedlock_elision+0x48>
   12920:	83 e8 01             	sub    eax,0x1
   12923:	66 89 06             	mov    WORD PTR [rsi],ax
   12926:	31 c0                	xor    eax,eax
   12928:	bf 01 00 00 00       	mov    edi,0x1
   1292d:	89 ce                	mov    esi,ecx
   1292f:	f0 41 0f b1 38       	lock cmpxchg DWORD PTR [r8],edi
   12934:	74 1b                	je     12951 <__lll_timedlock_elision+0x41>
   12936:	49 8d 38             	lea    rdi,[r8]
   12939:	48 8b 54 24 f8       	mov    rdx,QWORD PTR [rsp-0x8]
   1293e:	48 81 ec 80 00 00 00 	sub    rsp,0x80
   12945:	e8 36 d9 ff ff       	call   10280 <__lll_timedlock_wait>
   1294a:	48 81 c4 80 00 00 00 	add    rsp,0x80
   12951:	f3 c3                	repz ret 
   12953:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   12958:	8b 15 3a 59 20 00    	mov    edx,DWORD PTR [rip+0x20593a]        # 218298 <__elision_aconf+0x8>
   1295e:	bf ff ff ff ff       	mov    edi,0xffffffff
   12963:	85 d2                	test   edx,edx
   12965:	7f 12                	jg     12979 <__lll_timedlock_elision+0x69>
   12967:	eb bd                	jmp    12926 <__lll_timedlock_elision+0x16>
   12969:	0f 1f 80 00 00 00 00 	nop    DWORD PTR [rax+0x0]
   12970:	a8 02                	test   al,0x2
   12972:	74 24                	je     12998 <__lll_timedlock_elision+0x88>
   12974:	83 ea 01             	sub    edx,0x1
   12977:	74 ad                	je     12926 <__lll_timedlock_elision+0x16>
   12979:	89 f8                	mov    eax,edi
   1297b:	c7 f8 00 00 00 00    	xbegin 12981 <__lll_timedlock_elision+0x71>
   12981:	83 f8 ff             	cmp    eax,0xffffffff
   12984:	75 ea                	jne    12970 <__lll_timedlock_elision+0x60>
   12986:	41 8b 00             	mov    eax,DWORD PTR [r8]
   12989:	85 c0                	test   eax,eax
   1298b:	74 c4                	je     12951 <__lll_timedlock_elision+0x41>
   1298d:	c6 f8 ff             	xabort 0xff
   12990:	eb e2                	jmp    12974 <__lll_timedlock_elision+0x64>
   12992:	66 0f 1f 44 00 00    	nop    WORD PTR [rax+rax*1+0x0]
   12998:	a8 01                	test   al,0x1
   1299a:	74 0a                	je     129a6 <__lll_timedlock_elision+0x96>
   1299c:	c1 e8 18             	shr    eax,0x18
   1299f:	3d ff 00 00 00       	cmp    eax,0xff
   129a4:	74 16                	je     129bc <__lll_timedlock_elision+0xac>
   129a6:	0f bf 16             	movsx  edx,WORD PTR [rsi]
   129a9:	8b 05 e5 58 20 00    	mov    eax,DWORD PTR [rip+0x2058e5]        # 218294 <__elision_aconf+0x4>
   129af:	39 c2                	cmp    edx,eax
   129b1:	0f 85 6c ff ff ff    	jne    12923 <__lll_timedlock_elision+0x13>
   129b7:	e9 6a ff ff ff       	jmp    12926 <__lll_timedlock_elision+0x16>
   129bc:	0f bf 16             	movsx  edx,WORD PTR [rsi]
   129bf:	8b 05 cb 58 20 00    	mov    eax,DWORD PTR [rip+0x2058cb]        # 218290 <__elision_aconf>
   129c5:	39 c2                	cmp    edx,eax
   129c7:	0f 85 56 ff ff ff    	jne    12923 <__lll_timedlock_elision+0x13>
   129cd:	e9 54 ff ff ff       	jmp    12926 <__lll_timedlock_elision+0x16>
   129d2:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   129d9:	00 00 00 
   129dc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

00000000000129e0 <__lll_trylock_elision>:
   129e0:	c6 f8 fd             	xabort 0xfd
   129e3:	0f b7 06             	movzx  eax,WORD PTR [rsi]
   129e6:	66 85 c0             	test   ax,ax
   129e9:	7e 15                	jle    12a00 <__lll_trylock_elision+0x20>
   129eb:	83 e8 01             	sub    eax,0x1
   129ee:	66 89 06             	mov    WORD PTR [rsi],ax
   129f1:	31 c0                	xor    eax,eax
   129f3:	ba 01 00 00 00       	mov    edx,0x1
   129f8:	f0 0f b1 17          	lock cmpxchg DWORD PTR [rdi],edx
   129fc:	f3 c3                	repz ret 
   129fe:	66 90                	xchg   ax,ax
   12a00:	b8 ff ff ff ff       	mov    eax,0xffffffff
   12a05:	c7 f8 00 00 00 00    	xbegin 12a0b <__lll_trylock_elision+0x2b>
   12a0b:	83 f8 ff             	cmp    eax,0xffffffff
   12a0e:	74 18                	je     12a28 <__lll_trylock_elision+0x48>
   12a10:	a8 02                	test   al,0x2
   12a12:	75 dd                	jne    129f1 <__lll_trylock_elision+0x11>
   12a14:	0f bf 16             	movsx  edx,WORD PTR [rsi]
   12a17:	8b 05 7f 58 20 00    	mov    eax,DWORD PTR [rip+0x20587f]        # 21829c <__elision_aconf+0xc>
   12a1d:	39 c2                	cmp    edx,eax
   12a1f:	75 cd                	jne    129ee <__lll_trylock_elision+0xe>
   12a21:	eb ce                	jmp    129f1 <__lll_trylock_elision+0x11>
   12a23:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]
   12a28:	8b 07                	mov    eax,DWORD PTR [rdi]
   12a2a:	85 c0                	test   eax,eax
   12a2c:	74 ce                	je     129fc <__lll_trylock_elision+0x1c>
   12a2e:	c6 f8 ff             	xabort 0xff
   12a31:	eb be                	jmp    129f1 <__lll_trylock_elision+0x11>
   12a33:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   12a3a:	00 00 00 
   12a3d:	0f 1f 00             	nop    DWORD PTR [rax]

0000000000012a40 <__errno_location>:
   12a40:	48 8b 05 41 55 20 00 	mov    rax,QWORD PTR [rip+0x205541]        # 217f88 <_DYNAMIC+0x238>
   12a47:	64 48 03 04 25 00 00 	add    rax,QWORD PTR fs:0x0
   12a4e:	00 00 
   12a50:	c3                   	ret    

Disassembly of section __libc_freeres_fn:

0000000000012a60 <nptl_freeres>:
   12a60:	48 83 ec 08          	sub    rsp,0x8
   12a64:	e8 47 00 00 00       	call   12ab0 <__unwind_freeres>
   12a69:	31 ff                	xor    edi,edi
   12a6b:	48 83 c4 08          	add    rsp,0x8
   12a6f:	e9 8c 3a ff ff       	jmp    6500 <__free_stacks>
   12a74:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   12a7b:	00 00 00 
   12a7e:	66 90                	xchg   ax,ax

0000000000012a80 <freeit>:
   12a80:	48 8b 3d 99 98 20 00 	mov    rdi,QWORD PTR [rip+0x209899]        # 21c320 <mountpoint>
   12a87:	48 8d 05 3a 0a 00 00 	lea    rax,[rip+0xa3a]        # 134c8 <defaultdir>
   12a8e:	48 39 c7             	cmp    rdi,rax
   12a91:	74 0d                	je     12aa0 <freeit+0x20>
   12a93:	e9 28 2b ff ff       	jmp    55c0 <free@plt>
   12a98:	0f 1f 84 00 00 00 00 	nop    DWORD PTR [rax+rax*1+0x0]
   12a9f:	00 
   12aa0:	f3 c3                	repz ret 
   12aa2:	66 2e 0f 1f 84 00 00 	nop    WORD PTR cs:[rax+rax*1+0x0]
   12aa9:	00 00 00 
   12aac:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]

0000000000012ab0 <__unwind_freeres>:
   12ab0:	48 8b 3d a9 98 20 00 	mov    rdi,QWORD PTR [rip+0x2098a9]        # 21c360 <libgcc_s_handle>
   12ab7:	48 85 ff             	test   rdi,rdi
   12aba:	74 14                	je     12ad0 <__unwind_freeres+0x20>
   12abc:	48 c7 05 99 98 20 00 	mov    QWORD PTR [rip+0x209899],0x0        # 21c360 <libgcc_s_handle>
   12ac3:	00 00 00 00 
   12ac7:	e9 54 2b ff ff       	jmp    5620 <__libc_dlclose@plt>
   12acc:	0f 1f 40 00          	nop    DWORD PTR [rax+0x0]
   12ad0:	f3 c3                	repz ret 

Disassembly of section .fini:

0000000000012ad4 <_fini>:
   12ad4:	48 83 ec 08          	sub    rsp,0x8
   12ad8:	48 83 c4 08          	add    rsp,0x8
   12adc:	c3                   	ret    
