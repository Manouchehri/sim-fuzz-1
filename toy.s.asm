	.text
	.intel_syntax noprefix
	.file	"toy.bc"
	.file	1 "toy.c"
	.file	2 "/usr/include/stdint.h"
	.globl	lava_set
	.align	16, 0x90
	.type	lava_set,@function
lava_set:                               # @lava_set
.Lfunc_begin0:
	.loc	1 5 0                   # toy.c:5:0
	.cfi_startproc
# BB#0:
	push	rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
.Ltmp1:
	.cfi_offset rbp, -16
	mov	rbp, rsp
.Ltmp2:
	.cfi_def_cfa_register rbp
	#DEBUG_VALUE: lava_set:bug_num <- [%RBP+-4]
	#DEBUG_VALUE: lava_set:val <- [%RBP+-8]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	.loc	1 5 57 prologue_end     # toy.c:5:57
.Ltmp3:
	mov	eax, dword ptr [rbp - 4]
	.loc	1 5 75 is_stmt 0        # toy.c:5:75
	mov	dword ptr [4*rax + lava_val], esi
	.loc	1 5 82                  # toy.c:5:82
	pop	rbp
	ret
.Ltmp4:
.Lfunc_end0:
	.size	lava_set, .Lfunc_end0-lava_set
	.cfi_endproc

	.globl	lava_get
	.align	16, 0x90
	.type	lava_get,@function
lava_get:                               # @lava_get
.Lfunc_begin1:
	.loc	1 7 0 is_stmt 1         # toy.c:7:0
	.cfi_startproc
# BB#0:
	push	rbp
.Ltmp5:
	.cfi_def_cfa_offset 16
.Ltmp6:
	.cfi_offset rbp, -16
	mov	rbp, rsp
.Ltmp7:
	.cfi_def_cfa_register rbp
	#DEBUG_VALUE: lava_get:bug_num <- [%RBP+-4]
	mov	dword ptr [rbp - 4], edi
	.loc	1 7 54 prologue_end     # toy.c:7:54
.Ltmp8:
	mov	eax, dword ptr [rbp - 4]
	mov	eax, dword ptr [4*rax + lava_val]
	.loc	1 7 47 is_stmt 0        # toy.c:7:47
	pop	rbp
	ret
.Ltmp9:
.Lfunc_end1:
	.size	lava_get, .Lfunc_end1-lava_get
	.cfi_endproc

	.globl	parse_header
	.align	16, 0x90
	.type	parse_header,@function
parse_header:                           # @parse_header
.Lfunc_begin2:
	.loc	1 37 0 is_stmt 1        # toy.c:37:0
	.cfi_startproc
# BB#0:
	push	rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset rbp, -16
	mov	rbp, rsp
.Ltmp12:
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	rax, rsi
	#DEBUG_VALUE: parse_header:hdr <- [%RBP+-16]
	#DEBUG_VALUE: parse_header:f <- [%RBP+-8]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 16], rax
	.loc	1 38 49 prologue_end    # toy.c:38:49
.Ltmp13:
	mov	rcx, qword ptr [rbp - 8]
	.loc	1 38 14 is_stmt 0       # toy.c:38:14
	mov	esi, 16
	mov	edx, 1
	mov	rdi, rax
	call	fread
.Ltmp14:
	.loc	1 38 9                  # toy.c:38:9
	cmp	rax, 1
	jne	.LBB2_3
# BB#1:
	#DEBUG_VALUE: parse_header:f <- [%RBP+-8]
	#DEBUG_VALUE: parse_header:hdr <- [%RBP+-16]
	.loc	1 40 9 is_stmt 1        # toy.c:40:9
.Ltmp15:
	mov	rax, qword ptr [rbp - 16]
.Ltmp16:
	.loc	1 40 9 is_stmt 0        # toy.c:40:9
	cmp	dword ptr [rax], 1279350337
	jne	.LBB2_3
# BB#2:
	#DEBUG_VALUE: parse_header:hdr <- [%RBP+-16]
	#DEBUG_VALUE: parse_header:f <- [%RBP+-8]
	.loc	1 42 1 is_stmt 1        # toy.c:42:1
	add	rsp, 16
	pop	rbp
	ret
.LBB2_3:
	#DEBUG_VALUE: parse_header:hdr <- [%RBP+-16]
	#DEBUG_VALUE: parse_header:f <- [%RBP+-8]
	.loc	1 41 9                  # toy.c:41:9
.Ltmp17:
	mov	edi, 1
	call	exit
.Ltmp18:
.Lfunc_end2:
	.size	parse_header, .Lfunc_end2-parse_header
	.cfi_endproc

	.globl	parse_record
	.align	16, 0x90
	.type	parse_record,@function
parse_record:                           # @parse_record
.Lfunc_begin3:
	.loc	1 44 0                  # toy.c:44:0
	.cfi_startproc
# BB#0:
	push	rbp
.Ltmp19:
	.cfi_def_cfa_offset 16
.Ltmp20:
	.cfi_offset rbp, -16
	mov	rbp, rsp
.Ltmp21:
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	#DEBUG_VALUE: parse_record:f <- [%RBP+-8]
	mov	qword ptr [rbp - 8], rdi
	.loc	1 45 38 prologue_end    # toy.c:45:38
.Ltmp22:
	mov	edi, 24
	call	malloc
	.loc	1 45 17 is_stmt 0       # toy.c:45:17
	mov	qword ptr [rbp - 16], rax
	.loc	1 46 48 is_stmt 1       # toy.c:46:48
.Ltmp23:
	mov	rcx, qword ptr [rbp - 8]
.Ltmp24:
	.loc	1 45 38                 # toy.c:45:38
	mov	esi, 24
	.loc	1 46 14                 # toy.c:46:14
.Ltmp25:
	mov	edx, 1
	mov	rdi, rax
	call	fread
.Ltmp26:
	.loc	1 46 9 is_stmt 0        # toy.c:46:9
	cmp	rax, 1
	jne	.LBB3_2
# BB#1:
	#DEBUG_VALUE: parse_record:f <- [%RBP+-8]
	.loc	1 48 12 is_stmt 1       # toy.c:48:12
	mov	rax, qword ptr [rbp - 16]
	.loc	1 48 5 is_stmt 0        # toy.c:48:5
	add	rsp, 16
	pop	rbp
	ret
.LBB3_2:
	#DEBUG_VALUE: parse_record:f <- [%RBP+-8]
	.loc	1 47 9 is_stmt 1        # toy.c:47:9
.Ltmp27:
	mov	edi, 1
	call	exit
.Ltmp28:
.Lfunc_end3:
	.size	parse_record, .Lfunc_end3-parse_record
	.cfi_endproc

	.globl	consume_record
	.align	16, 0x90
	.type	consume_record,@function
consume_record:                         # @consume_record
.Lfunc_begin4:
	.loc	1 51 0                  # toy.c:51:0
	.cfi_startproc
# BB#0:
	push	rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset rbp, -16
	mov	rbp, rsp
.Ltmp31:
	.cfi_def_cfa_register rbp
	sub	rsp, 16
	mov	rcx, rdi
	#DEBUG_VALUE: consume_record:ent <- [%RBP+-8]
	mov	qword ptr [rbp - 8], rcx
	.loc	1 52 5 prologue_end     # toy.c:52:5
.Ltmp32:
	mov	edi, .L.str
	xor	eax, eax
	mov	rsi, rcx
	call	printf
	.loc	1 53 9                  # toy.c:53:9
.Ltmp33:
	mov	rax, qword ptr [rbp - 8]
.Ltmp34:
	.loc	1 53 9 is_stmt 0        # toy.c:53:9
	cmp	dword ptr [rax + 16], 1
	jne	.LBB4_9
# BB#1:
	#DEBUG_VALUE: consume_record:ent <- [%RBP+-8]
	.loc	1 54 21 is_stmt 1       # toy.c:54:21
.Ltmp35:
	cmp	qword ptr [rbp - 8], 0
	je	.LBB4_4
# BB#2:
	#DEBUG_VALUE: consume_record:ent <- [%RBP+-8]
	.loc	1 54 13 is_stmt 0 discriminator 1 # toy.c:54:13
	cmp	qword ptr [rbp - 8], 0
	je	.LBB4_4
# BB#3:
	#DEBUG_VALUE: consume_record:ent <- [%RBP+-8]
.Ltmp36:
	#DEBUG_VALUE: lava_131 <- [%RBP+-12]
	.loc	1 55 17 is_stmt 1       # toy.c:55:17
	mov	dword ptr [rbp - 12], 0
	.loc	1 56 45                 # toy.c:56:45
	mov	rax, qword ptr [rbp - 8]
	.loc	1 56 25 is_stmt 0       # toy.c:56:25
	movzx	eax, byte ptr [rax]
	.loc	1 56 22                 # toy.c:56:22
	mov	dword ptr [rbp - 12], eax
	.loc	1 57 45 is_stmt 1       # toy.c:57:45
	mov	rcx, qword ptr [rbp - 8]
	.loc	1 57 25 is_stmt 0       # toy.c:57:25
	movzx	ecx, byte ptr [rcx + 1]
	.loc	1 57 54                 # toy.c:57:54
	shl	ecx, 8
	.loc	1 57 22                 # toy.c:57:22
	or	ecx, eax
	mov	dword ptr [rbp - 12], ecx
	.loc	1 58 45 is_stmt 1       # toy.c:58:45
	mov	rax, qword ptr [rbp - 8]
	.loc	1 58 25 is_stmt 0       # toy.c:58:25
	movzx	eax, byte ptr [rax + 2]
	.loc	1 58 54                 # toy.c:58:54
	shl	eax, 16
	.loc	1 58 22                 # toy.c:58:22
	or	eax, ecx
	mov	dword ptr [rbp - 12], eax
	.loc	1 59 45 is_stmt 1       # toy.c:59:45
	mov	rcx, qword ptr [rbp - 8]
	.loc	1 59 25 is_stmt 0       # toy.c:59:25
	movzx	esi, byte ptr [rcx + 3]
	.loc	1 59 54                 # toy.c:59:54
	shl	esi, 24
	.loc	1 59 22                 # toy.c:59:22
	or	esi, eax
	mov	dword ptr [rbp - 12], esi
	.loc	1 60 13 is_stmt 1       # toy.c:60:13
	mov	edi, 131
	call	lava_set
.Ltmp37:
.LBB4_4:
	#DEBUG_VALUE: consume_record:ent <- [%RBP+-8]
	.loc	1 62 25                 # toy.c:62:25
	mov	edi, 131
	call	lava_get
	.loc	1 62 23 is_stmt 0       # toy.c:62:23
	cmp	eax, 1818326494
	je	.LBB4_6
# BB#5:
	#DEBUG_VALUE: consume_record:ent <- [%RBP+-8]
	.loc	1 62 52 discriminator 1 # toy.c:62:52
	mov	edi, 131
	call	lava_get
	.loc	1 62 13 discriminator 1 # toy.c:62:13
	cmp	eax, -562732692
	jne	.LBB4_7
.LBB4_6:
	#DEBUG_VALUE: consume_record:ent <- [%RBP+-8]
	.loc	1 63 35 is_stmt 1       # toy.c:63:35
	mov	edi, 131
	call	lava_get
	.loc	1 63 34 is_stmt 0       # toy.c:63:34
	mov	eax, eax
	lea	rdi, [rax + .L.str.1]
	.loc	1 63 50                 # toy.c:63:50
	mov	rax, qword ptr [rbp - 8]
	movss	xmm0, dword ptr [rax + 20] # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	jmp	.LBB4_8
.Ltmp38:
.LBB4_9:
	#DEBUG_VALUE: consume_record:ent <- [%RBP+-8]
	.loc	1 67 14 is_stmt 1       # toy.c:67:14
	mov	rax, qword ptr [rbp - 8]
.Ltmp39:
	.loc	1 67 14 is_stmt 0       # toy.c:67:14
	cmp	dword ptr [rax + 16], 2
	jne	.LBB4_12
# BB#10:
	#DEBUG_VALUE: consume_record:ent <- [%RBP+-8]
	.loc	1 68 34 is_stmt 1       # toy.c:68:34
.Ltmp40:
	mov	rax, qword ptr [rbp - 8]
	.loc	1 68 44 is_stmt 0       # toy.c:68:44
	mov	esi, dword ptr [rax + 20]
	.loc	1 68 9                  # toy.c:68:9
	mov	edi, .L.str.2
	xor	eax, eax
	call	printf
	jmp	.LBB4_11
.Ltmp41:
.LBB4_7:
	#DEBUG_VALUE: consume_record:ent <- [%RBP+-8]
	.loc	1 65 36 is_stmt 1       # toy.c:65:36
	mov	rax, qword ptr [rbp - 8]
	movss	xmm0, dword ptr [rax + 20] # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	xmm0, xmm0
	.loc	1 65 13 is_stmt 0       # toy.c:65:13
	mov	edi, .L.str.1
.LBB4_8:
	#DEBUG_VALUE: consume_record:ent <- [%RBP+-8]
	mov	al, 1
	call	printf
.Ltmp42:
.LBB4_11:
	#DEBUG_VALUE: consume_record:ent <- [%RBP+-8]
	.loc	1 74 10 is_stmt 1       # toy.c:74:10
	mov	rdi, qword ptr [rbp - 8]
	.loc	1 74 5 is_stmt 0        # toy.c:74:5
	call	free
	.loc	1 75 1 is_stmt 1        # toy.c:75:1
	add	rsp, 16
	pop	rbp
	ret
.LBB4_12:
	#DEBUG_VALUE: consume_record:ent <- [%RBP+-8]
	.loc	1 71 37                 # toy.c:71:37
.Ltmp43:
	mov	rax, qword ptr [rbp - 8]
	.loc	1 71 42 is_stmt 0       # toy.c:71:42
	mov	esi, dword ptr [rax + 16]
	.loc	1 71 9                  # toy.c:71:9
	mov	edi, .L.str.3
	xor	eax, eax
	call	printf
	.loc	1 72 9 is_stmt 1        # toy.c:72:9
	mov	edi, 1
	call	exit
.Ltmp44:
.Lfunc_end4:
	.size	consume_record, .Lfunc_end4-consume_record
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin5:
	.loc	1 77 0                  # toy.c:77:0
	.cfi_startproc
# BB#0:
	push	rbp
.Ltmp45:
	.cfi_def_cfa_offset 16
.Ltmp46:
	.cfi_offset rbp, -16
	mov	rbp, rsp
.Ltmp47:
	.cfi_def_cfa_register rbp
	sub	rsp, 64
	#DEBUG_VALUE: main:argc <- [%RBP+-8]
	#DEBUG_VALUE: main:argv <- [%RBP+-16]
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 16], rsi
	.loc	1 78 21 prologue_end    # toy.c:78:21
.Ltmp48:
	mov	rdi, qword ptr [rsi + 8]
	.loc	1 78 15 is_stmt 0       # toy.c:78:15
	mov	esi, .L.str.4
	call	fopen
	.loc	1 78 11                 # toy.c:78:11
	mov	qword ptr [rbp - 24], rax
	lea	rsi, [rbp - 40]
	.loc	1 81 5 is_stmt 1        # toy.c:81:5
	mov	rdi, rax
	call	parse_header
	.loc	1 82 41                 # toy.c:82:41
	mov	esi, dword ptr [rbp - 28]
	.loc	1 82 5 is_stmt 0        # toy.c:82:5
	mov	edi, .L.str.5
	xor	eax, eax
	call	printf
	.loc	1 85 12 is_stmt 1       # toy.c:85:12
.Ltmp49:
	mov	dword ptr [rbp - 44], 0
	jmp	.LBB5_1
	.align	16, 0x90
.LBB5_2:                                #   in Loop: Header=BB5_1 Depth=1
.Ltmp50:
	#DEBUG_VALUE: ent <- [%RBP+-56]
	.loc	1 86 40                 # toy.c:86:40
	mov	rdi, qword ptr [rbp - 24]
	.loc	1 86 27 is_stmt 0       # toy.c:86:27
	call	parse_record
	.loc	1 86 21                 # toy.c:86:21
	mov	qword ptr [rbp - 56], rax
	.loc	1 87 9 is_stmt 1        # toy.c:87:9
	mov	rdi, rax
	call	consume_record
.Ltmp51:
	.loc	1 85 37 discriminator 2 # toy.c:85:37
	inc	dword ptr [rbp - 44]
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	.loc	1 85 21 is_stmt 0 discriminator 1 # toy.c:85:21
	movzx	eax, word ptr [rbp - 32]
	.loc	1 85 5 discriminator 1  # toy.c:85:5
	cmp	dword ptr [rbp - 44], eax
	jb	.LBB5_2
.Ltmp52:
# BB#3:
	.loc	1 89 5 is_stmt 1        # toy.c:89:5
	xor	eax, eax
	add	rsp, 64
	pop	rbp
	ret
.Ltmp53:
.Lfunc_end5:
	.size	main, .Lfunc_end5-main
	.cfi_endproc

	.type	lava_val,@object        # @lava_val
	.local	lava_val
	.comm	lava_val,4000000,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Entry: bar = %s, "
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"fdata = %f\n"
	.size	.L.str.1, 12

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"intdata = %u\n"
	.size	.L.str.2, 14

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"Unknown type %x\n"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"rb"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"File timestamp: %u\n"
	.size	.L.str.5, 20

	.file	3 "/usr/include/libio.h"
	.file	4 "/usr/include/bits/types.h"
	.file	5 "/usr/bin/../lib/clang/3.8.0/include/stddef.h"
	.file	6 "/usr/include/stdio.h"
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 3.8.0 (tags/RELEASE_380/final)" # string offset=0
.Linfo_string1:
	.asciz	"toy.c"                 # string offset=45
.Linfo_string2:
	.asciz	"/home/dave/sim-fuzz-1" # string offset=51
.Linfo_string3:
	.asciz	"lava_val"              # string offset=73
.Linfo_string4:
	.asciz	"unsigned int"          # string offset=82
.Linfo_string5:
	.asciz	"sizetype"              # string offset=95
.Linfo_string6:
	.asciz	"TYPEA"                 # string offset=104
.Linfo_string7:
	.asciz	"TYPEB"                 # string offset=110
.Linfo_string8:
	.asciz	"bar"                   # string offset=116
.Linfo_string9:
	.asciz	"char"                  # string offset=120
.Linfo_string10:
	.asciz	"type"                  # string offset=125
.Linfo_string11:
	.asciz	"uint32_t"              # string offset=130
.Linfo_string12:
	.asciz	"data"                  # string offset=139
.Linfo_string13:
	.asciz	"fdata"                 # string offset=144
.Linfo_string14:
	.asciz	"float"                 # string offset=150
.Linfo_string15:
	.asciz	"intdata"               # string offset=156
.Linfo_string16:
	.asciz	"file_entry"            # string offset=164
.Linfo_string17:
	.asciz	"unsigned char"         # string offset=175
.Linfo_string18:
	.asciz	"lava_set"              # string offset=189
.Linfo_string19:
	.asciz	"lava_get"              # string offset=198
.Linfo_string20:
	.asciz	"parse_header"          # string offset=207
.Linfo_string21:
	.asciz	"parse_record"          # string offset=220
.Linfo_string22:
	.asciz	"consume_record"        # string offset=233
.Linfo_string23:
	.asciz	"main"                  # string offset=248
.Linfo_string24:
	.asciz	"int"                   # string offset=253
.Linfo_string25:
	.asciz	"bug_num"               # string offset=257
.Linfo_string26:
	.asciz	"val"                   # string offset=265
.Linfo_string27:
	.asciz	"f"                     # string offset=269
.Linfo_string28:
	.asciz	"_flags"                # string offset=271
.Linfo_string29:
	.asciz	"_IO_read_ptr"          # string offset=278
.Linfo_string30:
	.asciz	"_IO_read_end"          # string offset=291
.Linfo_string31:
	.asciz	"_IO_read_base"         # string offset=304
.Linfo_string32:
	.asciz	"_IO_write_base"        # string offset=318
.Linfo_string33:
	.asciz	"_IO_write_ptr"         # string offset=333
.Linfo_string34:
	.asciz	"_IO_write_end"         # string offset=347
.Linfo_string35:
	.asciz	"_IO_buf_base"          # string offset=361
.Linfo_string36:
	.asciz	"_IO_buf_end"           # string offset=374
.Linfo_string37:
	.asciz	"_IO_save_base"         # string offset=386
.Linfo_string38:
	.asciz	"_IO_backup_base"       # string offset=400
.Linfo_string39:
	.asciz	"_IO_save_end"          # string offset=416
.Linfo_string40:
	.asciz	"_markers"              # string offset=429
.Linfo_string41:
	.asciz	"_next"                 # string offset=438
.Linfo_string42:
	.asciz	"_sbuf"                 # string offset=444
.Linfo_string43:
	.asciz	"_pos"                  # string offset=450
.Linfo_string44:
	.asciz	"_IO_marker"            # string offset=455
.Linfo_string45:
	.asciz	"_chain"                # string offset=466
.Linfo_string46:
	.asciz	"_fileno"               # string offset=473
.Linfo_string47:
	.asciz	"_flags2"               # string offset=481
.Linfo_string48:
	.asciz	"_old_offset"           # string offset=489
.Linfo_string49:
	.asciz	"long int"              # string offset=501
.Linfo_string50:
	.asciz	"__off_t"               # string offset=510
.Linfo_string51:
	.asciz	"_cur_column"           # string offset=518
.Linfo_string52:
	.asciz	"unsigned short"        # string offset=530
.Linfo_string53:
	.asciz	"_vtable_offset"        # string offset=545
.Linfo_string54:
	.asciz	"signed char"           # string offset=560
.Linfo_string55:
	.asciz	"_shortbuf"             # string offset=572
.Linfo_string56:
	.asciz	"_lock"                 # string offset=582
.Linfo_string57:
	.asciz	"_IO_lock_t"            # string offset=588
.Linfo_string58:
	.asciz	"_offset"               # string offset=599
.Linfo_string59:
	.asciz	"__off64_t"             # string offset=607
.Linfo_string60:
	.asciz	"__pad1"                # string offset=617
.Linfo_string61:
	.asciz	"__pad2"                # string offset=624
.Linfo_string62:
	.asciz	"__pad3"                # string offset=631
.Linfo_string63:
	.asciz	"__pad4"                # string offset=638
.Linfo_string64:
	.asciz	"__pad5"                # string offset=645
.Linfo_string65:
	.asciz	"long unsigned int"     # string offset=652
.Linfo_string66:
	.asciz	"size_t"                # string offset=670
.Linfo_string67:
	.asciz	"_mode"                 # string offset=677
.Linfo_string68:
	.asciz	"_unused2"              # string offset=683
.Linfo_string69:
	.asciz	"_IO_FILE"              # string offset=692
.Linfo_string70:
	.asciz	"FILE"                  # string offset=701
.Linfo_string71:
	.asciz	"hdr"                   # string offset=706
.Linfo_string72:
	.asciz	"magic"                 # string offset=710
.Linfo_string73:
	.asciz	"reserved"              # string offset=716
.Linfo_string74:
	.asciz	"num_recs"              # string offset=725
.Linfo_string75:
	.asciz	"uint16_t"              # string offset=734
.Linfo_string76:
	.asciz	"flags"                 # string offset=743
.Linfo_string77:
	.asciz	"timestamp"             # string offset=749
.Linfo_string78:
	.asciz	"file_header"           # string offset=759
.Linfo_string79:
	.asciz	"ret"                   # string offset=771
.Linfo_string80:
	.asciz	"ent"                   # string offset=775
.Linfo_string81:
	.asciz	"lava_131"              # string offset=779
.Linfo_string82:
	.asciz	"argc"                  # string offset=788
.Linfo_string83:
	.asciz	"argv"                  # string offset=793
.Linfo_string84:
	.asciz	"head"                  # string offset=798
.Linfo_string85:
	.asciz	"i"                     # string offset=803
	.section	.debug_loc,"",@progbits
	.section	.debug_abbrev,"",@progbits
.Lsection_abbrev:
	.byte	1                       # Abbreviation Code
	.byte	17                      # DW_TAG_compile_unit
	.byte	1                       # DW_CHILDREN_yes
	.byte	37                      # DW_AT_producer
	.byte	14                      # DW_FORM_strp
	.byte	19                      # DW_AT_language
	.byte	5                       # DW_FORM_data2
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	16                      # DW_AT_stmt_list
	.byte	23                      # DW_FORM_sec_offset
	.byte	27                      # DW_AT_comp_dir
	.byte	14                      # DW_FORM_strp
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	2                       # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	3                       # Abbreviation Code
	.byte	1                       # DW_TAG_array_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	4                       # Abbreviation Code
	.byte	33                      # DW_TAG_subrange_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	55                      # DW_AT_count
	.byte	6                       # DW_FORM_data4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	5                       # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	6                       # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	7                       # Abbreviation Code
	.byte	4                       # DW_TAG_enumeration_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	8                       # Abbreviation Code
	.byte	40                      # DW_TAG_enumerator
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	28                      # DW_AT_const_value
	.byte	13                      # DW_FORM_sdata
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	9                       # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	10                      # Abbreviation Code
	.byte	22                      # DW_TAG_typedef
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	11                      # Abbreviation Code
	.byte	19                      # DW_TAG_structure_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	12                      # Abbreviation Code
	.byte	13                      # DW_TAG_member
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	56                      # DW_AT_data_member_location
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	13                      # Abbreviation Code
	.byte	23                      # DW_TAG_union_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	14                      # Abbreviation Code
	.byte	33                      # DW_TAG_subrange_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	55                      # DW_AT_count
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	15                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	64                      # DW_AT_frame_base
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	39                      # DW_AT_prototyped
	.byte	25                      # DW_FORM_flag_present
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	16                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	17                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	64                      # DW_AT_frame_base
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	39                      # DW_AT_prototyped
	.byte	25                      # DW_FORM_flag_present
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	63                      # DW_AT_external
	.byte	25                      # DW_FORM_flag_present
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	18                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	24                      # DW_FORM_exprloc
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	19                      # Abbreviation Code
	.byte	11                      # DW_TAG_lexical_block
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	6                       # DW_FORM_data4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	20                      # Abbreviation Code
	.byte	19                      # DW_TAG_structure_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	21                      # Abbreviation Code
	.byte	13                      # DW_TAG_member
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	56                      # DW_AT_data_member_location
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	22                      # Abbreviation Code
	.byte	22                      # DW_TAG_typedef
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	23                      # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	0                       # EOM(3)
	.section	.debug_info,"",@progbits
.Lsection_info:
.Lcu_begin0:
	.long	1278                    # Length of Unit
	.short	4                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x4f7 DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string1          # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string2          # DW_AT_comp_dir
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin0 # DW_AT_high_pc
	.byte	2                       # Abbrev [2] 0x2a:0x15 DW_TAG_variable
	.long	.Linfo_string3          # DW_AT_name
	.long	63                      # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	3                       # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	lava_val
	.byte	3                       # Abbrev [3] 0x3f:0xf DW_TAG_array_type
	.long	78                      # DW_AT_type
	.byte	4                       # Abbrev [4] 0x44:0x9 DW_TAG_subrange_type
	.long	85                      # DW_AT_type
	.long	1000000                 # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0x4e:0x7 DW_TAG_base_type
	.long	.Linfo_string4          # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	6                       # Abbrev [6] 0x55:0x7 DW_TAG_base_type
	.long	.Linfo_string5          # DW_AT_name
	.byte	8                       # DW_AT_byte_size
	.byte	7                       # DW_AT_encoding
	.byte	7                       # Abbrev [7] 0x5c:0x11 DW_TAG_enumeration_type
	.byte	4                       # DW_AT_byte_size
	.byte	1                       # DW_AT_decl_file
	.byte	15                      # DW_AT_decl_line
	.byte	8                       # Abbrev [8] 0x60:0x6 DW_TAG_enumerator
	.long	.Linfo_string6          # DW_AT_name
	.byte	1                       # DW_AT_const_value
	.byte	8                       # Abbrev [8] 0x66:0x6 DW_TAG_enumerator
	.long	.Linfo_string7          # DW_AT_name
	.byte	2                       # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	9                       # Abbrev [9] 0x6d:0x5 DW_TAG_pointer_type
	.long	114                     # DW_AT_type
	.byte	10                      # Abbrev [10] 0x72:0xb DW_TAG_typedef
	.long	125                     # DW_AT_type
	.long	.Linfo_string16         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	35                      # DW_AT_decl_line
	.byte	11                      # Abbrev [11] 0x7d:0x46 DW_TAG_structure_type
	.byte	24                      # DW_AT_byte_size
	.byte	1                       # DW_AT_decl_file
	.byte	28                      # DW_AT_decl_line
	.byte	12                      # Abbrev [12] 0x81:0xc DW_TAG_member
	.long	.Linfo_string8          # DW_AT_name
	.long	195                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	29                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	12                      # Abbrev [12] 0x8d:0xc DW_TAG_member
	.long	.Linfo_string10         # DW_AT_name
	.long	214                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	30                      # DW_AT_decl_line
	.byte	16                      # DW_AT_data_member_location
	.byte	12                      # Abbrev [12] 0x99:0xc DW_TAG_member
	.long	.Linfo_string12         # DW_AT_name
	.long	165                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	34                      # DW_AT_decl_line
	.byte	20                      # DW_AT_data_member_location
	.byte	13                      # Abbrev [13] 0xa5:0x1d DW_TAG_union_type
	.byte	4                       # DW_AT_byte_size
	.byte	1                       # DW_AT_decl_file
	.byte	31                      # DW_AT_decl_line
	.byte	12                      # Abbrev [12] 0xa9:0xc DW_TAG_member
	.long	.Linfo_string13         # DW_AT_name
	.long	225                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	32                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	12                      # Abbrev [12] 0xb5:0xc DW_TAG_member
	.long	.Linfo_string15         # DW_AT_name
	.long	214                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	33                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	3                       # Abbrev [3] 0xc3:0xc DW_TAG_array_type
	.long	207                     # DW_AT_type
	.byte	14                      # Abbrev [14] 0xc8:0x6 DW_TAG_subrange_type
	.long	85                      # DW_AT_type
	.byte	16                      # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0xcf:0x7 DW_TAG_base_type
	.long	.Linfo_string9          # DW_AT_name
	.byte	6                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	10                      # Abbrev [10] 0xd6:0xb DW_TAG_typedef
	.long	78                      # DW_AT_type
	.long	.Linfo_string11         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	51                      # DW_AT_decl_line
	.byte	5                       # Abbrev [5] 0xe1:0x7 DW_TAG_base_type
	.long	.Linfo_string14         # DW_AT_name
	.byte	4                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	9                       # Abbrev [9] 0xe8:0x5 DW_TAG_pointer_type
	.long	237                     # DW_AT_type
	.byte	5                       # Abbrev [5] 0xed:0x7 DW_TAG_base_type
	.long	.Linfo_string17         # DW_AT_name
	.byte	8                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	15                      # Abbrev [15] 0xf4:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string18         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	5                       # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	16                      # Abbrev [16] 0x109:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string25         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	5                       # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	16                      # Abbrev [16] 0x117:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string26         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	5                       # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	17                      # Abbrev [17] 0x126:0x28 DW_TAG_subprogram
	.quad	.Lfunc_begin1           # DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string19         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	78                      # DW_AT_type
                                        # DW_AT_external
	.byte	16                      # Abbrev [16] 0x13f:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	124
	.long	.Linfo_string25         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	15                      # Abbrev [15] 0x14e:0x32 DW_TAG_subprogram
	.quad	.Lfunc_begin2           # DW_AT_low_pc
	.long	.Lfunc_end2-.Lfunc_begin2 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string20         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	37                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	16                      # Abbrev [16] 0x163:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string27         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	37                      # DW_AT_decl_line
	.long	633                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x171:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string71         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	37                      # DW_AT_decl_line
	.long	1184                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	17                      # Abbrev [17] 0x180:0x36 DW_TAG_subprogram
	.quad	.Lfunc_begin3           # DW_AT_low_pc
	.long	.Lfunc_end3-.Lfunc_begin3 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string21         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	44                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	109                     # DW_AT_type
                                        # DW_AT_external
	.byte	16                      # Abbrev [16] 0x199:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string27         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	44                      # DW_AT_decl_line
	.long	633                     # DW_AT_type
	.byte	18                      # Abbrev [18] 0x1a7:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string79         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	45                      # DW_AT_decl_line
	.long	109                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	15                      # Abbrev [15] 0x1b6:0x40 DW_TAG_subprogram
	.quad	.Lfunc_begin4           # DW_AT_low_pc
	.long	.Lfunc_end4-.Lfunc_begin4 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string22         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	51                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.byte	16                      # Abbrev [16] 0x1cb:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string80         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	51                      # DW_AT_decl_line
	.long	109                     # DW_AT_type
	.byte	19                      # Abbrev [19] 0x1d9:0x1c DW_TAG_lexical_block
	.quad	.Ltmp36                 # DW_AT_low_pc
	.long	.Ltmp37-.Ltmp36         # DW_AT_high_pc
	.byte	18                      # Abbrev [18] 0x1e6:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	116
	.long	.Linfo_string81         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	55                      # DW_AT_decl_line
	.long	626                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	17                      # Abbrev [17] 0x1f6:0x7c DW_TAG_subprogram
	.quad	.Lfunc_begin5           # DW_AT_low_pc
	.long	.Lfunc_end5-.Lfunc_begin5 # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.long	.Linfo_string23         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	77                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	626                     # DW_AT_type
                                        # DW_AT_external
	.byte	16                      # Abbrev [16] 0x20f:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.long	.Linfo_string82         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	77                      # DW_AT_decl_line
	.long	626                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x21d:0xe DW_TAG_formal_parameter
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.long	.Linfo_string83         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	77                      # DW_AT_decl_line
	.long	1276                    # DW_AT_type
	.byte	18                      # Abbrev [18] 0x22b:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	104
	.long	.Linfo_string27         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	78                      # DW_AT_decl_line
	.long	633                     # DW_AT_type
	.byte	18                      # Abbrev [18] 0x239:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string84         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	79                      # DW_AT_decl_line
	.long	1189                    # DW_AT_type
	.byte	18                      # Abbrev [18] 0x247:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	84
	.long	.Linfo_string85         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	84                      # DW_AT_decl_line
	.long	78                      # DW_AT_type
	.byte	19                      # Abbrev [19] 0x255:0x1c DW_TAG_lexical_block
	.quad	.Ltmp50                 # DW_AT_low_pc
	.long	.Ltmp51-.Ltmp50         # DW_AT_high_pc
	.byte	18                      # Abbrev [18] 0x262:0xe DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	72
	.long	.Linfo_string80         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	86                      # DW_AT_decl_line
	.long	109                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0x272:0x7 DW_TAG_base_type
	.long	.Linfo_string24         # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	9                       # Abbrev [9] 0x279:0x5 DW_TAG_pointer_type
	.long	638                     # DW_AT_type
	.byte	10                      # Abbrev [10] 0x27e:0xb DW_TAG_typedef
	.long	649                     # DW_AT_type
	.long	.Linfo_string70         # DW_AT_name
	.byte	6                       # DW_AT_decl_file
	.byte	48                      # DW_AT_decl_line
	.byte	20                      # Abbrev [20] 0x289:0x179 DW_TAG_structure_type
	.long	.Linfo_string69         # DW_AT_name
	.byte	216                     # DW_AT_byte_size
	.byte	3                       # DW_AT_decl_file
	.byte	241                     # DW_AT_decl_line
	.byte	12                      # Abbrev [12] 0x291:0xc DW_TAG_member
	.long	.Linfo_string28         # DW_AT_name
	.long	626                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	242                     # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	12                      # Abbrev [12] 0x29d:0xc DW_TAG_member
	.long	.Linfo_string29         # DW_AT_name
	.long	1026                    # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	247                     # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	12                      # Abbrev [12] 0x2a9:0xc DW_TAG_member
	.long	.Linfo_string30         # DW_AT_name
	.long	1026                    # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	248                     # DW_AT_decl_line
	.byte	16                      # DW_AT_data_member_location
	.byte	12                      # Abbrev [12] 0x2b5:0xc DW_TAG_member
	.long	.Linfo_string31         # DW_AT_name
	.long	1026                    # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	249                     # DW_AT_decl_line
	.byte	24                      # DW_AT_data_member_location
	.byte	12                      # Abbrev [12] 0x2c1:0xc DW_TAG_member
	.long	.Linfo_string32         # DW_AT_name
	.long	1026                    # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	250                     # DW_AT_decl_line
	.byte	32                      # DW_AT_data_member_location
	.byte	12                      # Abbrev [12] 0x2cd:0xc DW_TAG_member
	.long	.Linfo_string33         # DW_AT_name
	.long	1026                    # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	251                     # DW_AT_decl_line
	.byte	40                      # DW_AT_data_member_location
	.byte	12                      # Abbrev [12] 0x2d9:0xc DW_TAG_member
	.long	.Linfo_string34         # DW_AT_name
	.long	1026                    # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	252                     # DW_AT_decl_line
	.byte	48                      # DW_AT_data_member_location
	.byte	12                      # Abbrev [12] 0x2e5:0xc DW_TAG_member
	.long	.Linfo_string35         # DW_AT_name
	.long	1026                    # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	253                     # DW_AT_decl_line
	.byte	56                      # DW_AT_data_member_location
	.byte	12                      # Abbrev [12] 0x2f1:0xc DW_TAG_member
	.long	.Linfo_string36         # DW_AT_name
	.long	1026                    # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	254                     # DW_AT_decl_line
	.byte	64                      # DW_AT_data_member_location
	.byte	21                      # Abbrev [21] 0x2fd:0xd DW_TAG_member
	.long	.Linfo_string37         # DW_AT_name
	.long	1026                    # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.short	256                     # DW_AT_decl_line
	.byte	72                      # DW_AT_data_member_location
	.byte	21                      # Abbrev [21] 0x30a:0xd DW_TAG_member
	.long	.Linfo_string38         # DW_AT_name
	.long	1026                    # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.short	257                     # DW_AT_decl_line
	.byte	80                      # DW_AT_data_member_location
	.byte	21                      # Abbrev [21] 0x317:0xd DW_TAG_member
	.long	.Linfo_string39         # DW_AT_name
	.long	1026                    # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.short	258                     # DW_AT_decl_line
	.byte	88                      # DW_AT_data_member_location
	.byte	21                      # Abbrev [21] 0x324:0xd DW_TAG_member
	.long	.Linfo_string40         # DW_AT_name
	.long	1031                    # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.short	260                     # DW_AT_decl_line
	.byte	96                      # DW_AT_data_member_location
	.byte	21                      # Abbrev [21] 0x331:0xd DW_TAG_member
	.long	.Linfo_string45         # DW_AT_name
	.long	1081                    # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.short	262                     # DW_AT_decl_line
	.byte	104                     # DW_AT_data_member_location
	.byte	21                      # Abbrev [21] 0x33e:0xd DW_TAG_member
	.long	.Linfo_string46         # DW_AT_name
	.long	626                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.short	264                     # DW_AT_decl_line
	.byte	112                     # DW_AT_data_member_location
	.byte	21                      # Abbrev [21] 0x34b:0xd DW_TAG_member
	.long	.Linfo_string47         # DW_AT_name
	.long	626                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.short	268                     # DW_AT_decl_line
	.byte	116                     # DW_AT_data_member_location
	.byte	21                      # Abbrev [21] 0x358:0xd DW_TAG_member
	.long	.Linfo_string48         # DW_AT_name
	.long	1086                    # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.short	270                     # DW_AT_decl_line
	.byte	120                     # DW_AT_data_member_location
	.byte	21                      # Abbrev [21] 0x365:0xd DW_TAG_member
	.long	.Linfo_string51         # DW_AT_name
	.long	1104                    # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.short	274                     # DW_AT_decl_line
	.byte	128                     # DW_AT_data_member_location
	.byte	21                      # Abbrev [21] 0x372:0xd DW_TAG_member
	.long	.Linfo_string53         # DW_AT_name
	.long	1111                    # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.short	275                     # DW_AT_decl_line
	.byte	130                     # DW_AT_data_member_location
	.byte	21                      # Abbrev [21] 0x37f:0xd DW_TAG_member
	.long	.Linfo_string55         # DW_AT_name
	.long	1118                    # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.short	276                     # DW_AT_decl_line
	.byte	131                     # DW_AT_data_member_location
	.byte	21                      # Abbrev [21] 0x38c:0xd DW_TAG_member
	.long	.Linfo_string56         # DW_AT_name
	.long	1130                    # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.short	280                     # DW_AT_decl_line
	.byte	136                     # DW_AT_data_member_location
	.byte	21                      # Abbrev [21] 0x399:0xd DW_TAG_member
	.long	.Linfo_string58         # DW_AT_name
	.long	1142                    # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.short	289                     # DW_AT_decl_line
	.byte	144                     # DW_AT_data_member_location
	.byte	21                      # Abbrev [21] 0x3a6:0xd DW_TAG_member
	.long	.Linfo_string60         # DW_AT_name
	.long	1153                    # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.short	297                     # DW_AT_decl_line
	.byte	152                     # DW_AT_data_member_location
	.byte	21                      # Abbrev [21] 0x3b3:0xd DW_TAG_member
	.long	.Linfo_string61         # DW_AT_name
	.long	1153                    # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.short	298                     # DW_AT_decl_line
	.byte	160                     # DW_AT_data_member_location
	.byte	21                      # Abbrev [21] 0x3c0:0xd DW_TAG_member
	.long	.Linfo_string62         # DW_AT_name
	.long	1153                    # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.short	299                     # DW_AT_decl_line
	.byte	168                     # DW_AT_data_member_location
	.byte	21                      # Abbrev [21] 0x3cd:0xd DW_TAG_member
	.long	.Linfo_string63         # DW_AT_name
	.long	1153                    # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.short	300                     # DW_AT_decl_line
	.byte	176                     # DW_AT_data_member_location
	.byte	21                      # Abbrev [21] 0x3da:0xd DW_TAG_member
	.long	.Linfo_string64         # DW_AT_name
	.long	1154                    # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.short	302                     # DW_AT_decl_line
	.byte	184                     # DW_AT_data_member_location
	.byte	21                      # Abbrev [21] 0x3e7:0xd DW_TAG_member
	.long	.Linfo_string67         # DW_AT_name
	.long	626                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.short	303                     # DW_AT_decl_line
	.byte	192                     # DW_AT_data_member_location
	.byte	21                      # Abbrev [21] 0x3f4:0xd DW_TAG_member
	.long	.Linfo_string68         # DW_AT_name
	.long	1172                    # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.short	305                     # DW_AT_decl_line
	.byte	196                     # DW_AT_data_member_location
	.byte	0                       # End Of Children Mark
	.byte	9                       # Abbrev [9] 0x402:0x5 DW_TAG_pointer_type
	.long	207                     # DW_AT_type
	.byte	9                       # Abbrev [9] 0x407:0x5 DW_TAG_pointer_type
	.long	1036                    # DW_AT_type
	.byte	20                      # Abbrev [20] 0x40c:0x2d DW_TAG_structure_type
	.long	.Linfo_string44         # DW_AT_name
	.byte	24                      # DW_AT_byte_size
	.byte	3                       # DW_AT_decl_file
	.byte	156                     # DW_AT_decl_line
	.byte	12                      # Abbrev [12] 0x414:0xc DW_TAG_member
	.long	.Linfo_string41         # DW_AT_name
	.long	1031                    # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	157                     # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	12                      # Abbrev [12] 0x420:0xc DW_TAG_member
	.long	.Linfo_string42         # DW_AT_name
	.long	1081                    # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	158                     # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	12                      # Abbrev [12] 0x42c:0xc DW_TAG_member
	.long	.Linfo_string43         # DW_AT_name
	.long	626                     # DW_AT_type
	.byte	3                       # DW_AT_decl_file
	.byte	162                     # DW_AT_decl_line
	.byte	16                      # DW_AT_data_member_location
	.byte	0                       # End Of Children Mark
	.byte	9                       # Abbrev [9] 0x439:0x5 DW_TAG_pointer_type
	.long	649                     # DW_AT_type
	.byte	10                      # Abbrev [10] 0x43e:0xb DW_TAG_typedef
	.long	1097                    # DW_AT_type
	.long	.Linfo_string50         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	131                     # DW_AT_decl_line
	.byte	5                       # Abbrev [5] 0x449:0x7 DW_TAG_base_type
	.long	.Linfo_string49         # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	5                       # Abbrev [5] 0x450:0x7 DW_TAG_base_type
	.long	.Linfo_string52         # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	2                       # DW_AT_byte_size
	.byte	5                       # Abbrev [5] 0x457:0x7 DW_TAG_base_type
	.long	.Linfo_string54         # DW_AT_name
	.byte	6                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	3                       # Abbrev [3] 0x45e:0xc DW_TAG_array_type
	.long	207                     # DW_AT_type
	.byte	14                      # Abbrev [14] 0x463:0x6 DW_TAG_subrange_type
	.long	85                      # DW_AT_type
	.byte	1                       # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	9                       # Abbrev [9] 0x46a:0x5 DW_TAG_pointer_type
	.long	1135                    # DW_AT_type
	.byte	22                      # Abbrev [22] 0x46f:0x7 DW_TAG_typedef
	.long	.Linfo_string57         # DW_AT_name
	.byte	3                       # DW_AT_decl_file
	.byte	150                     # DW_AT_decl_line
	.byte	10                      # Abbrev [10] 0x476:0xb DW_TAG_typedef
	.long	1097                    # DW_AT_type
	.long	.Linfo_string59         # DW_AT_name
	.byte	4                       # DW_AT_decl_file
	.byte	132                     # DW_AT_decl_line
	.byte	23                      # Abbrev [23] 0x481:0x1 DW_TAG_pointer_type
	.byte	10                      # Abbrev [10] 0x482:0xb DW_TAG_typedef
	.long	1165                    # DW_AT_type
	.long	.Linfo_string66         # DW_AT_name
	.byte	5                       # DW_AT_decl_file
	.byte	62                      # DW_AT_decl_line
	.byte	5                       # Abbrev [5] 0x48d:0x7 DW_TAG_base_type
	.long	.Linfo_string65         # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	3                       # Abbrev [3] 0x494:0xc DW_TAG_array_type
	.long	207                     # DW_AT_type
	.byte	14                      # Abbrev [14] 0x499:0x6 DW_TAG_subrange_type
	.long	85                      # DW_AT_type
	.byte	20                      # DW_AT_count
	.byte	0                       # End Of Children Mark
	.byte	9                       # Abbrev [9] 0x4a0:0x5 DW_TAG_pointer_type
	.long	1189                    # DW_AT_type
	.byte	10                      # Abbrev [10] 0x4a5:0xb DW_TAG_typedef
	.long	1200                    # DW_AT_type
	.long	.Linfo_string78         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	26                      # DW_AT_decl_line
	.byte	11                      # Abbrev [11] 0x4b0:0x41 DW_TAG_structure_type
	.byte	16                      # DW_AT_byte_size
	.byte	1                       # DW_AT_decl_file
	.byte	20                      # DW_AT_decl_line
	.byte	12                      # Abbrev [12] 0x4b4:0xc DW_TAG_member
	.long	.Linfo_string72         # DW_AT_name
	.long	214                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	21                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	12                      # Abbrev [12] 0x4c0:0xc DW_TAG_member
	.long	.Linfo_string73         # DW_AT_name
	.long	214                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	22                      # DW_AT_decl_line
	.byte	4                       # DW_AT_data_member_location
	.byte	12                      # Abbrev [12] 0x4cc:0xc DW_TAG_member
	.long	.Linfo_string74         # DW_AT_name
	.long	1265                    # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	23                      # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	12                      # Abbrev [12] 0x4d8:0xc DW_TAG_member
	.long	.Linfo_string76         # DW_AT_name
	.long	1265                    # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	24                      # DW_AT_decl_line
	.byte	10                      # DW_AT_data_member_location
	.byte	12                      # Abbrev [12] 0x4e4:0xc DW_TAG_member
	.long	.Linfo_string77         # DW_AT_name
	.long	214                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
	.byte	12                      # DW_AT_data_member_location
	.byte	0                       # End Of Children Mark
	.byte	10                      # Abbrev [10] 0x4f1:0xb DW_TAG_typedef
	.long	1104                    # DW_AT_type
	.long	.Linfo_string75         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	49                      # DW_AT_decl_line
	.byte	9                       # Abbrev [9] 0x4fc:0x5 DW_TAG_pointer_type
	.long	1026                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.section	.debug_ranges,"",@progbits
.Ldebug_range:
	.section	.debug_macinfo,"",@progbits
	.byte	0                       # End Of Macro List Mark
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_begin0 # Length of Public Names Info
.LpubNames_begin0:
	.short	2                       # DWARF Version
	.long	.Lcu_begin0             # Offset of Compilation Unit Info
	.long	1282                    # Compilation Unit Length
	.long	294                     # DIE offset
	.asciz	"lava_get"              # External Name
	.long	334                     # DIE offset
	.asciz	"parse_header"          # External Name
	.long	502                     # DIE offset
	.asciz	"main"                  # External Name
	.long	42                      # DIE offset
	.asciz	"lava_val"              # External Name
	.long	438                     # DIE offset
	.asciz	"consume_record"        # External Name
	.long	384                     # DIE offset
	.asciz	"parse_record"          # External Name
	.long	244                     # DIE offset
	.asciz	"lava_set"              # External Name
	.long	0                       # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_begin0 # Length of Public Types Info
.LpubTypes_begin0:
	.short	2                       # DWARF Version
	.long	.Lcu_begin0             # Offset of Compilation Unit Info
	.long	1282                    # Compilation Unit Length
	.long	638                     # DIE offset
	.asciz	"FILE"                  # External Name
	.long	1111                    # DIE offset
	.asciz	"signed char"           # External Name
	.long	1142                    # DIE offset
	.asciz	"__off64_t"             # External Name
	.long	1165                    # DIE offset
	.asciz	"long unsigned int"     # External Name
	.long	78                      # DIE offset
	.asciz	"unsigned int"          # External Name
	.long	1189                    # DIE offset
	.asciz	"file_header"           # External Name
	.long	626                     # DIE offset
	.asciz	"int"                   # External Name
	.long	1086                    # DIE offset
	.asciz	"__off_t"               # External Name
	.long	1104                    # DIE offset
	.asciz	"unsigned short"        # External Name
	.long	1154                    # DIE offset
	.asciz	"size_t"                # External Name
	.long	114                     # DIE offset
	.asciz	"file_entry"            # External Name
	.long	1135                    # DIE offset
	.asciz	"_IO_lock_t"            # External Name
	.long	225                     # DIE offset
	.asciz	"float"                 # External Name
	.long	649                     # DIE offset
	.asciz	"_IO_FILE"              # External Name
	.long	1036                    # DIE offset
	.asciz	"_IO_marker"            # External Name
	.long	214                     # DIE offset
	.asciz	"uint32_t"              # External Name
	.long	1265                    # DIE offset
	.asciz	"uint16_t"              # External Name
	.long	1097                    # DIE offset
	.asciz	"long int"              # External Name
	.long	237                     # DIE offset
	.asciz	"unsigned char"         # External Name
	.long	207                     # DIE offset
	.asciz	"char"                  # External Name
	.long	0                       # End Mark
.LpubTypes_end0:

	.ident	"clang version 3.8.0 (tags/RELEASE_380/final)"
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
