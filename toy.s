	.file	"toy.bc"
	.section	.debug_info,"",@progbits
.Lsection_info:
	.section	.debug_abbrev,"",@progbits
.Lsection_abbrev:
	.section	.debug_aranges,"",@progbits
	.section	.debug_macinfo,"",@progbits
	.section	.debug_line,"",@progbits
.Lsection_line:
	.section	.debug_loc,"",@progbits
	.section	.debug_pubnames,"",@progbits
	.section	.debug_pubtypes,"",@progbits
	.section	.debug_str,"MS",@progbits,1
.Linfo_string:
	.section	.debug_ranges,"",@progbits
.Ldebug_range:
	.section	.debug_loc,"",@progbits
.Lsection_debug_loc:
	.text
.Ltext_begin:
	.data
	.file	1 "toy.c"
	.text
	.globl	lava_set
	.align	16, 0x90
	.type	lava_set,@function
lava_set:                               # @lava_set
	.cfi_startproc
.Lfunc_begin0:
	.loc	1 5 0                   # toy.c:5:0
# BB#0:
	pushq	%rbp
.Ltmp2:
	.cfi_def_cfa_offset 16
.Ltmp3:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp4:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	.loc	1 5 0 prologue_end      # toy.c:5:0
.Ltmp5:
	movl	-4(%rbp), %eax
	movl	%esi, lava_val(,%rax,4)
	popq	%rbp
	ret
.Ltmp6:
.Ltmp7:
	.size	lava_set, .Ltmp7-lava_set
.Lfunc_end0:
	.cfi_endproc

	.globl	lava_get
	.align	16, 0x90
	.type	lava_get,@function
lava_get:                               # @lava_get
	.cfi_startproc
.Lfunc_begin1:
	.loc	1 7 0                   # toy.c:7:0
# BB#0:
	pushq	%rbp
.Ltmp10:
	.cfi_def_cfa_offset 16
.Ltmp11:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp12:
	.cfi_def_cfa_register %rbp
	movl	%edi, -4(%rbp)
	.loc	1 7 0 prologue_end      # toy.c:7:0
.Ltmp13:
	movl	-4(%rbp), %eax
	movl	lava_val(,%rax,4), %eax
	popq	%rbp
	ret
.Ltmp14:
.Ltmp15:
	.size	lava_get, .Ltmp15-lava_get
.Lfunc_end1:
	.cfi_endproc

	.globl	parse_header
	.align	16, 0x90
	.type	parse_header,@function
parse_header:                           # @parse_header
	.cfi_startproc
.Lfunc_begin2:
	.loc	1 37 0                  # toy.c:37:0
# BB#0:
	pushq	%rbp
.Ltmp18:
	.cfi_def_cfa_offset 16
.Ltmp19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp20:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rsi, %rax
	movq	%rdi, -8(%rbp)
	movq	%rax, -16(%rbp)
	.loc	1 38 0 prologue_end     # toy.c:38:0
.Ltmp21:
	movq	-8(%rbp), %rcx
	movl	$16, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	fread
	cmpq	$1, %rax
	jne	.LBB2_3
.Ltmp22:
# BB#1:
	.loc	1 40 0                  # toy.c:40:0
	movq	-16(%rbp), %rax
	cmpl	$1279350337, (%rax)     # imm = 0x4C415641
	jne	.LBB2_3
.Ltmp23:
# BB#2:
	.loc	1 42 0                  # toy.c:42:0
	addq	$16, %rsp
	popq	%rbp
	ret
.LBB2_3:
	movl	$1, %edi
	.loc	1 41 0                  # toy.c:41:0
.Ltmp24:
	callq	exit
.Ltmp25:
.Ltmp26:
	.size	parse_header, .Ltmp26-parse_header
.Lfunc_end2:
	.file	2 "/usr/include/libio.h"
	.cfi_endproc

	.globl	parse_record
	.align	16, 0x90
	.type	parse_record,@function
parse_record:                           # @parse_record
	.cfi_startproc
.Lfunc_begin3:
	.loc	1 44 0                  # toy.c:44:0
# BB#0:
	pushq	%rbp
.Ltmp29:
	.cfi_def_cfa_offset 16
.Ltmp30:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp31:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	$24, %edi
	.loc	1 45 0 prologue_end     # toy.c:45:0
.Ltmp32:
	callq	malloc
	movq	%rax, -16(%rbp)
	.loc	1 46 0                  # toy.c:46:0
.Ltmp33:
	movq	-8(%rbp), %rcx
	movl	$24, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	fread
	cmpq	$1, %rax
	jne	.LBB3_2
.Ltmp34:
# BB#1:
	.loc	1 48 0                  # toy.c:48:0
	movq	-16(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	ret
.LBB3_2:
	movl	$1, %edi
	.loc	1 47 0                  # toy.c:47:0
.Ltmp35:
	callq	exit
.Ltmp36:
.Ltmp37:
	.size	parse_record, .Ltmp37-parse_record
.Lfunc_end3:
	.cfi_endproc

	.globl	consume_record
	.align	16, 0x90
	.type	consume_record,@function
consume_record:                         # @consume_record
	.cfi_startproc
.Lfunc_begin4:
	.loc	1 51 0                  # toy.c:51:0
# BB#0:
	pushq	%rbp
.Ltmp40:
	.cfi_def_cfa_offset 16
.Ltmp41:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp42:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movq	%rdi, %rcx
	movq	%rcx, -8(%rbp)
	.loc	1 52 0 prologue_end     # toy.c:52:0
.Ltmp43:
	movl	$.L.str, %edi
	xorl	%eax, %eax
	movq	%rcx, %rsi
	callq	printf
	.loc	1 53 0                  # toy.c:53:0
.Ltmp44:
	movq	-8(%rbp), %rax
	cmpl	$1, 16(%rax)
	jne	.LBB4_9
# BB#1:
	.loc	1 54 0                  # toy.c:54:0
.Ltmp45:
	cmpq	$0, -8(%rbp)
	je	.LBB4_4
# BB#2:
	cmpq	$0, -8(%rbp)
	je	.LBB4_4
# BB#3:
.Ltmp46:
	#DEBUG_VALUE: lava_131 <- [RBP+-12]
	.loc	1 55 0                  # toy.c:55:0
	movl	$0, -12(%rbp)
	.loc	1 56 0                  # toy.c:56:0
	movq	-8(%rbp), %rax
	movzbl	(%rax), %eax
	movl	%eax, -12(%rbp)
	.loc	1 57 0                  # toy.c:57:0
	movq	-8(%rbp), %rcx
	movzbl	1(%rcx), %ecx
	shll	$8, %ecx
	orl	%eax, %ecx
	movl	%ecx, -12(%rbp)
	.loc	1 58 0                  # toy.c:58:0
	movq	-8(%rbp), %rax
	movzbl	2(%rax), %eax
	shll	$16, %eax
	orl	%ecx, %eax
	movl	%eax, -12(%rbp)
	.loc	1 59 0                  # toy.c:59:0
	movq	-8(%rbp), %rcx
	movzbl	3(%rcx), %esi
	shll	$24, %esi
	orl	%eax, %esi
	movl	%esi, -12(%rbp)
	movl	$131, %edi
	.loc	1 60 0                  # toy.c:60:0
	callq	lava_set
.Ltmp47:
.LBB4_4:
	movl	$131, %edi
	.loc	1 62 0                  # toy.c:62:0
.Ltmp48:
	callq	lava_get
	cmpl	$1818326494, %eax       # imm = 0x6C6175DE
	je	.LBB4_6
# BB#5:
	movl	$131, %edi
	callq	lava_get
	cmpl	$-562732692, %eax       # imm = 0xFFFFFFFFDE75616C
	jne	.LBB4_7
.LBB4_6:
	movl	$131, %edi
	.loc	1 63 0                  # toy.c:63:0
	callq	lava_get
	movl	%eax, %eax
	leaq	.L.str1(%rax), %rdi
	movq	-8(%rbp), %rax
	vmovss	20(%rax), %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	jmp	.LBB4_8
.Ltmp49:
.LBB4_9:
	.loc	1 67 0                  # toy.c:67:0
	movq	-8(%rbp), %rax
	cmpl	$2, 16(%rax)
	jne	.LBB4_12
# BB#10:
	.loc	1 68 0                  # toy.c:68:0
.Ltmp50:
	movq	-8(%rbp), %rax
	movl	20(%rax), %esi
	movl	$.L.str2, %edi
	xorl	%eax, %eax
	callq	printf
	jmp	.LBB4_11
.Ltmp51:
.LBB4_7:
	.loc	1 65 0                  # toy.c:65:0
	movq	-8(%rbp), %rax
	vmovss	20(%rax), %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	movl	$.L.str1, %edi
.LBB4_8:
	movb	$1, %al
	callq	printf
.Ltmp52:
.LBB4_11:
	.loc	1 74 0                  # toy.c:74:0
	movq	-8(%rbp), %rdi
	callq	free
	.loc	1 75 0                  # toy.c:75:0
	addq	$16, %rsp
	popq	%rbp
	ret
.LBB4_12:
	.loc	1 71 0                  # toy.c:71:0
.Ltmp53:
	movq	-8(%rbp), %rax
	movl	16(%rax), %ecx
	movl	$.L.str3, %edi
	xorl	%eax, %eax
	movl	%ecx, %esi
	callq	printf
	movl	$1, %edi
	.loc	1 72 0                  # toy.c:72:0
	callq	exit
.Ltmp54:
.Ltmp55:
	.size	consume_record, .Ltmp55-consume_record
.Lfunc_end4:
	.cfi_endproc

	.globl	main
	.align	16, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
.Lfunc_begin5:
	.loc	1 77 0                  # toy.c:77:0
# BB#0:
	pushq	%rbp
.Ltmp58:
	.cfi_def_cfa_offset 16
.Ltmp59:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
.Ltmp60:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	movl	$0, -4(%rbp)
	movl	%edi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	.loc	1 78 0 prologue_end     # toy.c:78:0
.Ltmp61:
	movq	8(%rsi), %rdi
	movl	$.L.str4, %esi
	callq	fopen
	movq	%rax, -24(%rbp)
	leaq	-40(%rbp), %rsi
	.loc	1 81 0                  # toy.c:81:0
	movq	%rax, %rdi
	callq	parse_header
	.loc	1 82 0                  # toy.c:82:0
	movl	-28(%rbp), %esi
	movl	$.L.str5, %edi
	xorl	%eax, %eax
	callq	printf
	.loc	1 85 0                  # toy.c:85:0
.Ltmp62:
	movl	$0, -44(%rbp)
	jmp	.LBB5_1
	.align	16, 0x90
.LBB5_2:                                #   in Loop: Header=BB5_1 Depth=1
.Ltmp63:
	#DEBUG_VALUE: ent <- [RBP+-56]
	.loc	1 86 0                  # toy.c:86:0
	movq	-24(%rbp), %rdi
	callq	parse_record
	movq	%rax, -56(%rbp)
	.loc	1 87 0                  # toy.c:87:0
	movq	%rax, %rdi
	callq	consume_record
.Ltmp64:
	.loc	1 85 0                  # toy.c:85:0
	incl	-44(%rbp)
.Ltmp65:
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	movzwl	-32(%rbp), %ecx
	cmpl	%ecx, %eax
	jb	.LBB5_2
.Ltmp66:
# BB#3:
	xorl	%eax, %eax
	.loc	1 89 0                  # toy.c:89:0
	addq	$64, %rsp
	popq	%rbp
	ret
.Ltmp67:
.Ltmp68:
	.size	main, .Ltmp68-main
.Lfunc_end5:
	.cfi_endproc

	.type	lava_val,@object        # @lava_val
	.local	lava_val
	.comm	lava_val,4000000,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Entry: bar = %s, "
	.size	.L.str, 18

	.type	.L.str1,@object         # @.str1
.L.str1:
	.asciz	"fdata = %f\n"
	.size	.L.str1, 12

	.type	.L.str2,@object         # @.str2
.L.str2:
	.asciz	"intdata = %u\n"
	.size	.L.str2, 14

	.type	.L.str3,@object         # @.str3
.L.str3:
	.asciz	"Unknown type %x\n"
	.size	.L.str3, 17

	.type	.L.str4,@object         # @.str4
.L.str4:
	.asciz	"rb"
	.size	.L.str4, 3

	.type	.L.str5,@object         # @.str5
.L.str5:
	.asciz	"File timestamp: %u\n"
	.size	.L.str5, 20

	.text
.Ldebug_end1:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"
.Linfo_string1:
	.asciz	"toy.c"
.Linfo_string2:
	.asciz	"/ubuntu/sim-fuzz-1"
.Linfo_string3:
	.asciz	"lava_val"
.Linfo_string4:
	.asciz	"unsigned int"
.Linfo_string5:
	.asciz	"int"
.Linfo_string6:
	.asciz	"lava_set"
.Linfo_string7:
	.asciz	"lava_get"
.Linfo_string8:
	.asciz	"parse_header"
.Linfo_string9:
	.asciz	"parse_record"
.Linfo_string10:
	.asciz	"bar"
.Linfo_string11:
	.asciz	"char"
.Linfo_string12:
	.asciz	"type"
.Linfo_string13:
	.asciz	"uint32_t"
.Linfo_string14:
	.asciz	"data"
.Linfo_string15:
	.asciz	"fdata"
.Linfo_string16:
	.asciz	"float"
.Linfo_string17:
	.asciz	"intdata"
.Linfo_string18:
	.asciz	"file_entry"
.Linfo_string19:
	.asciz	"consume_record"
.Linfo_string20:
	.asciz	"main"
.Linfo_string21:
	.asciz	"TYPEA"
.Linfo_string22:
	.asciz	"TYPEB"
.Linfo_string23:
	.asciz	"bug_num"
.Linfo_string24:
	.asciz	"val"
.Linfo_string25:
	.asciz	"f"
.Linfo_string26:
	.asciz	"_flags"
.Linfo_string27:
	.asciz	"_IO_read_ptr"
.Linfo_string28:
	.asciz	"_IO_read_end"
.Linfo_string29:
	.asciz	"_IO_read_base"
.Linfo_string30:
	.asciz	"_IO_write_base"
.Linfo_string31:
	.asciz	"_IO_write_ptr"
.Linfo_string32:
	.asciz	"_IO_write_end"
.Linfo_string33:
	.asciz	"_IO_buf_base"
.Linfo_string34:
	.asciz	"_IO_buf_end"
.Linfo_string35:
	.asciz	"_IO_save_base"
.Linfo_string36:
	.asciz	"_IO_backup_base"
.Linfo_string37:
	.asciz	"_IO_save_end"
.Linfo_string38:
	.asciz	"_markers"
.Linfo_string39:
	.asciz	"_next"
.Linfo_string40:
	.asciz	"_sbuf"
.Linfo_string41:
	.asciz	"_pos"
.Linfo_string42:
	.asciz	"_IO_marker"
.Linfo_string43:
	.asciz	"_chain"
.Linfo_string44:
	.asciz	"_fileno"
.Linfo_string45:
	.asciz	"_flags2"
.Linfo_string46:
	.asciz	"_old_offset"
.Linfo_string47:
	.asciz	"long int"
.Linfo_string48:
	.asciz	"__off_t"
.Linfo_string49:
	.asciz	"_cur_column"
.Linfo_string50:
	.asciz	"unsigned short"
.Linfo_string51:
	.asciz	"_vtable_offset"
.Linfo_string52:
	.asciz	"signed char"
.Linfo_string53:
	.asciz	"_shortbuf"
.Linfo_string54:
	.asciz	"_lock"
.Linfo_string55:
	.asciz	"_offset"
.Linfo_string56:
	.asciz	"__off64_t"
.Linfo_string57:
	.asciz	"__pad1"
.Linfo_string58:
	.asciz	"__pad2"
.Linfo_string59:
	.asciz	"__pad3"
.Linfo_string60:
	.asciz	"__pad4"
.Linfo_string61:
	.asciz	"__pad5"
.Linfo_string62:
	.asciz	"long unsigned int"
.Linfo_string63:
	.asciz	"size_t"
.Linfo_string64:
	.asciz	"_mode"
.Linfo_string65:
	.asciz	"_unused2"
.Linfo_string66:
	.asciz	"_IO_FILE"
.Linfo_string67:
	.asciz	"FILE"
.Linfo_string68:
	.asciz	"hdr"
.Linfo_string69:
	.asciz	"magic"
.Linfo_string70:
	.asciz	"reserved"
.Linfo_string71:
	.asciz	"num_recs"
.Linfo_string72:
	.asciz	"uint16_t"
.Linfo_string73:
	.asciz	"flags"
.Linfo_string74:
	.asciz	"timestamp"
.Linfo_string75:
	.asciz	"file_header"
.Linfo_string76:
	.asciz	"ret"
.Linfo_string77:
	.asciz	"ent"
.Linfo_string78:
	.asciz	"lava_131"
.Linfo_string79:
	.asciz	"argc"
.Linfo_string80:
	.asciz	"argv"
.Linfo_string81:
	.asciz	"head"
.Linfo_string82:
	.asciz	"i"
	.section	.debug_info,"",@progbits
.L.debug_info_begin0:
	.long	1375                    # Length of Unit
	.short	4                       # DWARF version number
	.long	.L.debug_abbrev_begin   # Offset Into Abbrev. Section
	.byte	8                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x558 DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	12                      # DW_AT_language
	.long	.Linfo_string1          # DW_AT_name
	.quad	0                       # DW_AT_low_pc
	.long	.Lsection_line          # DW_AT_stmt_list
	.long	.Linfo_string2          # DW_AT_comp_dir
	.byte	2                       # Abbrev [2] 0x26:0x15 DW_TAG_variable
	.long	.Linfo_string3          # DW_AT_name
	.long	59                      # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	3                       # DW_AT_decl_line
	.byte	9                       # DW_AT_location
	.byte	3
	.quad	lava_val
	.byte	3                       # Abbrev [3] 0x3b:0xf DW_TAG_array_type
	.long	74                      # DW_AT_type
	.byte	4                       # Abbrev [4] 0x40:0x9 DW_TAG_subrange_type
	.long	81                      # DW_AT_type
	.long	999999                  # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0x4a:0x7 DW_TAG_base_type
	.long	.Linfo_string4          # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	6                       # Abbrev [6] 0x51:0x7 DW_TAG_base_type
	.long	.Linfo_string5          # DW_AT_name
	.byte	4                       # DW_AT_byte_size
	.byte	5                       # DW_AT_encoding
	.byte	7                       # Abbrev [7] 0x58:0x36 DW_TAG_subprogram
	.long	.Linfo_string6          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	5                       # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.quad	.Lfunc_begin0           # DW_AT_low_pc
	.quad	.Lfunc_end0             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	8                       # Abbrev [8] 0x71:0xe DW_TAG_formal_parameter
	.long	.Linfo_string23         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	5                       # DW_AT_decl_line
	.long	74                      # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	124
	.byte	8                       # Abbrev [8] 0x7f:0xe DW_TAG_formal_parameter
	.long	.Linfo_string24         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	5                       # DW_AT_decl_line
	.long	74                      # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.byte	0                       # End Of Children Mark
	.byte	9                       # Abbrev [9] 0x8e:0x2c DW_TAG_subprogram
	.long	.Linfo_string7          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	74                      # DW_AT_type
                                        # DW_AT_external
	.quad	.Lfunc_begin1           # DW_AT_low_pc
	.quad	.Lfunc_end1             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	8                       # Abbrev [8] 0xab:0xe DW_TAG_formal_parameter
	.long	.Linfo_string23         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	7                       # DW_AT_decl_line
	.long	74                      # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	124
	.byte	0                       # End Of Children Mark
	.byte	7                       # Abbrev [7] 0xba:0x36 DW_TAG_subprogram
	.long	.Linfo_string8          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	37                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.quad	.Lfunc_begin2           # DW_AT_low_pc
	.quad	.Lfunc_end2             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	8                       # Abbrev [8] 0xd3:0xe DW_TAG_formal_parameter
	.long	.Linfo_string25         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	37                      # DW_AT_decl_line
	.long	702                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.byte	8                       # Abbrev [8] 0xe1:0xe DW_TAG_formal_parameter
	.long	.Linfo_string68         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	37                      # DW_AT_decl_line
	.long	1276                    # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.byte	0                       # End Of Children Mark
	.byte	9                       # Abbrev [9] 0xf0:0x3a DW_TAG_subprogram
	.long	.Linfo_string9          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	44                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	298                     # DW_AT_type
                                        # DW_AT_external
	.quad	.Lfunc_begin3           # DW_AT_low_pc
	.quad	.Lfunc_end3             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	8                       # Abbrev [8] 0x10d:0xe DW_TAG_formal_parameter
	.long	.Linfo_string25         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	44                      # DW_AT_decl_line
	.long	702                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.byte	10                      # Abbrev [10] 0x11b:0xe DW_TAG_variable
	.long	.Linfo_string76         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	45                      # DW_AT_decl_line
	.long	298                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.byte	0                       # End Of Children Mark
	.byte	11                      # Abbrev [11] 0x12a:0x5 DW_TAG_pointer_type
	.long	303                     # DW_AT_type
	.byte	12                      # Abbrev [12] 0x12f:0xb DW_TAG_typedef
	.long	314                     # DW_AT_type
	.long	.Linfo_string18         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	35                      # DW_AT_decl_line
	.byte	13                      # Abbrev [13] 0x13a:0x4b DW_TAG_structure_type
	.byte	24                      # DW_AT_byte_size
	.byte	1                       # DW_AT_decl_file
	.byte	28                      # DW_AT_decl_line
	.byte	14                      # Abbrev [14] 0x13e:0xd DW_TAG_member
	.long	.Linfo_string10         # DW_AT_name
	.long	389                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	29                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	14                      # Abbrev [14] 0x14b:0xd DW_TAG_member
	.long	.Linfo_string12         # DW_AT_name
	.long	408                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	30                      # DW_AT_decl_line
	.byte	16                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	14                      # Abbrev [14] 0x158:0xd DW_TAG_member
	.long	.Linfo_string14         # DW_AT_name
	.long	357                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	34                      # DW_AT_decl_line
	.byte	20                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	15                      # Abbrev [15] 0x165:0x1f DW_TAG_union_type
	.byte	4                       # DW_AT_byte_size
	.byte	1                       # DW_AT_decl_file
	.byte	31                      # DW_AT_decl_line
	.byte	14                      # Abbrev [14] 0x169:0xd DW_TAG_member
	.long	.Linfo_string15         # DW_AT_name
	.long	419                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	32                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	14                      # Abbrev [14] 0x176:0xd DW_TAG_member
	.long	.Linfo_string17         # DW_AT_name
	.long	408                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	33                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	3                       # Abbrev [3] 0x185:0xc DW_TAG_array_type
	.long	401                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x18a:0x6 DW_TAG_subrange_type
	.long	81                      # DW_AT_type
	.byte	15                      # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0x191:0x7 DW_TAG_base_type
	.long	.Linfo_string11         # DW_AT_name
	.byte	6                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	12                      # Abbrev [12] 0x198:0xb DW_TAG_typedef
	.long	74                      # DW_AT_type
	.long	.Linfo_string13         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	51                      # DW_AT_decl_line
	.byte	5                       # Abbrev [5] 0x1a3:0x7 DW_TAG_base_type
	.long	.Linfo_string16         # DW_AT_name
	.byte	4                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	7                       # Abbrev [7] 0x1aa:0x66 DW_TAG_subprogram
	.long	.Linfo_string19         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	51                      # DW_AT_decl_line
                                        # DW_AT_prototyped
                                        # DW_AT_external
	.quad	.Lfunc_begin4           # DW_AT_low_pc
	.quad	.Lfunc_end4             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	8                       # Abbrev [8] 0x1c3:0xe DW_TAG_formal_parameter
	.long	.Linfo_string77         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	51                      # DW_AT_decl_line
	.long	298                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.byte	17                      # Abbrev [17] 0x1d1:0x3e DW_TAG_lexical_block
	.long	.Ldebug_range+48        # DW_AT_ranges
	.byte	17                      # Abbrev [17] 0x1d6:0x38 DW_TAG_lexical_block
	.long	.Ldebug_range           # DW_AT_ranges
	.byte	18                      # Abbrev [18] 0x1db:0x32 DW_TAG_lexical_block
	.quad	.Ltmp45                 # DW_AT_low_pc
	.quad	.Ltmp47                 # DW_AT_high_pc
	.byte	18                      # Abbrev [18] 0x1ec:0x20 DW_TAG_lexical_block
	.quad	.Ltmp46                 # DW_AT_low_pc
	.quad	.Ltmp47                 # DW_AT_high_pc
	.byte	10                      # Abbrev [10] 0x1fd:0xe DW_TAG_variable
	.long	.Linfo_string78         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	55                      # DW_AT_decl_line
	.long	678                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	116
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	9                       # Abbrev [9] 0x210:0x96 DW_TAG_subprogram
	.long	.Linfo_string20         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	77                      # DW_AT_decl_line
                                        # DW_AT_prototyped
	.long	678                     # DW_AT_type
                                        # DW_AT_external
	.quad	.Lfunc_begin5           # DW_AT_low_pc
	.quad	.Lfunc_end5             # DW_AT_high_pc
	.byte	1                       # DW_AT_frame_base
	.byte	86
	.byte	8                       # Abbrev [8] 0x22d:0xe DW_TAG_formal_parameter
	.long	.Linfo_string79         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	77                      # DW_AT_decl_line
	.long	678                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	120
	.byte	8                       # Abbrev [8] 0x23b:0xe DW_TAG_formal_parameter
	.long	.Linfo_string80         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	77                      # DW_AT_decl_line
	.long	1373                    # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	112
	.byte	10                      # Abbrev [10] 0x249:0xe DW_TAG_variable
	.long	.Linfo_string25         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	78                      # DW_AT_decl_line
	.long	702                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	104
	.byte	10                      # Abbrev [10] 0x257:0xe DW_TAG_variable
	.long	.Linfo_string81         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	79                      # DW_AT_decl_line
	.long	1281                    # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	88
	.byte	10                      # Abbrev [10] 0x265:0xe DW_TAG_variable
	.long	.Linfo_string82         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	84                      # DW_AT_decl_line
	.long	74                      # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	84
	.byte	18                      # Abbrev [18] 0x273:0x32 DW_TAG_lexical_block
	.quad	.Ltmp62                 # DW_AT_low_pc
	.quad	.Ltmp66                 # DW_AT_high_pc
	.byte	18                      # Abbrev [18] 0x284:0x20 DW_TAG_lexical_block
	.quad	.Ltmp63                 # DW_AT_low_pc
	.quad	.Ltmp64                 # DW_AT_high_pc
	.byte	10                      # Abbrev [10] 0x295:0xe DW_TAG_variable
	.long	.Linfo_string77         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	86                      # DW_AT_decl_line
	.long	298                     # DW_AT_type
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	72
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0x2a6:0x7 DW_TAG_base_type
	.long	.Linfo_string5          # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	19                      # Abbrev [19] 0x2ad:0x11 DW_TAG_enumeration_type
	.byte	4                       # DW_AT_byte_size
	.byte	1                       # DW_AT_decl_file
	.byte	15                      # DW_AT_decl_line
	.byte	20                      # Abbrev [20] 0x2b1:0x6 DW_TAG_enumerator
	.long	.Linfo_string21         # DW_AT_name
	.byte	1                       # DW_AT_const_value
	.byte	20                      # Abbrev [20] 0x2b7:0x6 DW_TAG_enumerator
	.long	.Linfo_string22         # DW_AT_name
	.byte	2                       # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	11                      # Abbrev [11] 0x2be:0x5 DW_TAG_pointer_type
	.long	707                     # DW_AT_type
	.byte	12                      # Abbrev [12] 0x2c3:0xb DW_TAG_typedef
	.long	718                     # DW_AT_type
	.long	.Linfo_string67         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	48                      # DW_AT_decl_line
	.byte	21                      # Abbrev [21] 0x2ce:0x199 DW_TAG_structure_type
	.long	.Linfo_string66         # DW_AT_name
	.byte	216                     # DW_AT_byte_size
	.byte	2                       # DW_AT_decl_file
	.byte	245                     # DW_AT_decl_line
	.byte	14                      # Abbrev [14] 0x2d6:0xd DW_TAG_member
	.long	.Linfo_string26         # DW_AT_name
	.long	678                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	246                     # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	14                      # Abbrev [14] 0x2e3:0xd DW_TAG_member
	.long	.Linfo_string27         # DW_AT_name
	.long	1127                    # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	251                     # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	14                      # Abbrev [14] 0x2f0:0xd DW_TAG_member
	.long	.Linfo_string28         # DW_AT_name
	.long	1127                    # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	252                     # DW_AT_decl_line
	.byte	16                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	14                      # Abbrev [14] 0x2fd:0xd DW_TAG_member
	.long	.Linfo_string29         # DW_AT_name
	.long	1127                    # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	253                     # DW_AT_decl_line
	.byte	24                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	14                      # Abbrev [14] 0x30a:0xd DW_TAG_member
	.long	.Linfo_string30         # DW_AT_name
	.long	1127                    # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	254                     # DW_AT_decl_line
	.byte	32                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	14                      # Abbrev [14] 0x317:0xd DW_TAG_member
	.long	.Linfo_string31         # DW_AT_name
	.long	1127                    # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	255                     # DW_AT_decl_line
	.byte	40                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	22                      # Abbrev [22] 0x324:0xe DW_TAG_member
	.long	.Linfo_string32         # DW_AT_name
	.long	1127                    # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	256                     # DW_AT_decl_line
	.byte	48                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	22                      # Abbrev [22] 0x332:0xe DW_TAG_member
	.long	.Linfo_string33         # DW_AT_name
	.long	1127                    # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	257                     # DW_AT_decl_line
	.byte	56                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	22                      # Abbrev [22] 0x340:0xe DW_TAG_member
	.long	.Linfo_string34         # DW_AT_name
	.long	1127                    # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	258                     # DW_AT_decl_line
	.byte	64                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	22                      # Abbrev [22] 0x34e:0xe DW_TAG_member
	.long	.Linfo_string35         # DW_AT_name
	.long	1127                    # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	260                     # DW_AT_decl_line
	.byte	72                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	22                      # Abbrev [22] 0x35c:0xe DW_TAG_member
	.long	.Linfo_string36         # DW_AT_name
	.long	1127                    # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	261                     # DW_AT_decl_line
	.byte	80                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	22                      # Abbrev [22] 0x36a:0xe DW_TAG_member
	.long	.Linfo_string37         # DW_AT_name
	.long	1127                    # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	262                     # DW_AT_decl_line
	.byte	88                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	22                      # Abbrev [22] 0x378:0xe DW_TAG_member
	.long	.Linfo_string38         # DW_AT_name
	.long	1132                    # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	264                     # DW_AT_decl_line
	.byte	96                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	22                      # Abbrev [22] 0x386:0xe DW_TAG_member
	.long	.Linfo_string43         # DW_AT_name
	.long	1185                    # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	266                     # DW_AT_decl_line
	.byte	104                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	22                      # Abbrev [22] 0x394:0xe DW_TAG_member
	.long	.Linfo_string44         # DW_AT_name
	.long	678                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	268                     # DW_AT_decl_line
	.byte	112                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	22                      # Abbrev [22] 0x3a2:0xe DW_TAG_member
	.long	.Linfo_string45         # DW_AT_name
	.long	678                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	272                     # DW_AT_decl_line
	.byte	116                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	22                      # Abbrev [22] 0x3b0:0xe DW_TAG_member
	.long	.Linfo_string46         # DW_AT_name
	.long	1190                    # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	274                     # DW_AT_decl_line
	.byte	120                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	22                      # Abbrev [22] 0x3be:0xe DW_TAG_member
	.long	.Linfo_string49         # DW_AT_name
	.long	1208                    # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	278                     # DW_AT_decl_line
	.byte	128                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	22                      # Abbrev [22] 0x3cc:0xe DW_TAG_member
	.long	.Linfo_string51         # DW_AT_name
	.long	1215                    # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	279                     # DW_AT_decl_line
	.byte	130                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	22                      # Abbrev [22] 0x3da:0xe DW_TAG_member
	.long	.Linfo_string53         # DW_AT_name
	.long	1222                    # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	280                     # DW_AT_decl_line
	.byte	131                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	22                      # Abbrev [22] 0x3e8:0xe DW_TAG_member
	.long	.Linfo_string54         # DW_AT_name
	.long	1234                    # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	284                     # DW_AT_decl_line
	.byte	136                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	22                      # Abbrev [22] 0x3f6:0xe DW_TAG_member
	.long	.Linfo_string55         # DW_AT_name
	.long	1235                    # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	293                     # DW_AT_decl_line
	.byte	144                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	22                      # Abbrev [22] 0x404:0xe DW_TAG_member
	.long	.Linfo_string57         # DW_AT_name
	.long	1234                    # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	302                     # DW_AT_decl_line
	.byte	152                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	22                      # Abbrev [22] 0x412:0xe DW_TAG_member
	.long	.Linfo_string58         # DW_AT_name
	.long	1234                    # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	303                     # DW_AT_decl_line
	.byte	160                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	22                      # Abbrev [22] 0x420:0xe DW_TAG_member
	.long	.Linfo_string59         # DW_AT_name
	.long	1234                    # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	304                     # DW_AT_decl_line
	.byte	168                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	22                      # Abbrev [22] 0x42e:0xe DW_TAG_member
	.long	.Linfo_string60         # DW_AT_name
	.long	1234                    # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	305                     # DW_AT_decl_line
	.byte	176                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	22                      # Abbrev [22] 0x43c:0xe DW_TAG_member
	.long	.Linfo_string61         # DW_AT_name
	.long	1246                    # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	306                     # DW_AT_decl_line
	.byte	184                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	22                      # Abbrev [22] 0x44a:0xe DW_TAG_member
	.long	.Linfo_string64         # DW_AT_name
	.long	678                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	308                     # DW_AT_decl_line
	.byte	192                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	22                      # Abbrev [22] 0x458:0xe DW_TAG_member
	.long	.Linfo_string65         # DW_AT_name
	.long	1264                    # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.short	310                     # DW_AT_decl_line
	.byte	196                     # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	11                      # Abbrev [11] 0x467:0x5 DW_TAG_pointer_type
	.long	401                     # DW_AT_type
	.byte	11                      # Abbrev [11] 0x46c:0x5 DW_TAG_pointer_type
	.long	1137                    # DW_AT_type
	.byte	21                      # Abbrev [21] 0x471:0x30 DW_TAG_structure_type
	.long	.Linfo_string42         # DW_AT_name
	.byte	24                      # DW_AT_byte_size
	.byte	2                       # DW_AT_decl_file
	.byte	160                     # DW_AT_decl_line
	.byte	14                      # Abbrev [14] 0x479:0xd DW_TAG_member
	.long	.Linfo_string39         # DW_AT_name
	.long	1132                    # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	161                     # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	14                      # Abbrev [14] 0x486:0xd DW_TAG_member
	.long	.Linfo_string40         # DW_AT_name
	.long	1185                    # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	162                     # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	14                      # Abbrev [14] 0x493:0xd DW_TAG_member
	.long	.Linfo_string41         # DW_AT_name
	.long	678                     # DW_AT_type
	.byte	2                       # DW_AT_decl_file
	.byte	166                     # DW_AT_decl_line
	.byte	16                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	11                      # Abbrev [11] 0x4a1:0x5 DW_TAG_pointer_type
	.long	718                     # DW_AT_type
	.byte	12                      # Abbrev [12] 0x4a6:0xb DW_TAG_typedef
	.long	1201                    # DW_AT_type
	.long	.Linfo_string48         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	131                     # DW_AT_decl_line
	.byte	5                       # Abbrev [5] 0x4b1:0x7 DW_TAG_base_type
	.long	.Linfo_string47         # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	5                       # Abbrev [5] 0x4b8:0x7 DW_TAG_base_type
	.long	.Linfo_string50         # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	2                       # DW_AT_byte_size
	.byte	5                       # Abbrev [5] 0x4bf:0x7 DW_TAG_base_type
	.long	.Linfo_string52         # DW_AT_name
	.byte	6                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	3                       # Abbrev [3] 0x4c6:0xc DW_TAG_array_type
	.long	401                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x4cb:0x6 DW_TAG_subrange_type
	.long	81                      # DW_AT_type
	.byte	0                       # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	23                      # Abbrev [23] 0x4d2:0x1 DW_TAG_pointer_type
	.byte	12                      # Abbrev [12] 0x4d3:0xb DW_TAG_typedef
	.long	1201                    # DW_AT_type
	.long	.Linfo_string56         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	132                     # DW_AT_decl_line
	.byte	12                      # Abbrev [12] 0x4de:0xb DW_TAG_typedef
	.long	1257                    # DW_AT_type
	.long	.Linfo_string63         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	42                      # DW_AT_decl_line
	.byte	5                       # Abbrev [5] 0x4e9:0x7 DW_TAG_base_type
	.long	.Linfo_string62         # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	8                       # DW_AT_byte_size
	.byte	3                       # Abbrev [3] 0x4f0:0xc DW_TAG_array_type
	.long	401                     # DW_AT_type
	.byte	16                      # Abbrev [16] 0x4f5:0x6 DW_TAG_subrange_type
	.long	81                      # DW_AT_type
	.byte	19                      # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	11                      # Abbrev [11] 0x4fc:0x5 DW_TAG_pointer_type
	.long	1281                    # DW_AT_type
	.byte	12                      # Abbrev [12] 0x501:0xb DW_TAG_typedef
	.long	1292                    # DW_AT_type
	.long	.Linfo_string75         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	26                      # DW_AT_decl_line
	.byte	13                      # Abbrev [13] 0x50c:0x46 DW_TAG_structure_type
	.byte	16                      # DW_AT_byte_size
	.byte	1                       # DW_AT_decl_file
	.byte	20                      # DW_AT_decl_line
	.byte	14                      # Abbrev [14] 0x510:0xd DW_TAG_member
	.long	.Linfo_string69         # DW_AT_name
	.long	408                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	21                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	14                      # Abbrev [14] 0x51d:0xd DW_TAG_member
	.long	.Linfo_string70         # DW_AT_name
	.long	408                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	22                      # DW_AT_decl_line
	.byte	4                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	14                      # Abbrev [14] 0x52a:0xd DW_TAG_member
	.long	.Linfo_string71         # DW_AT_name
	.long	1362                    # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	23                      # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	14                      # Abbrev [14] 0x537:0xd DW_TAG_member
	.long	.Linfo_string73         # DW_AT_name
	.long	1362                    # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	24                      # DW_AT_decl_line
	.byte	10                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	14                      # Abbrev [14] 0x544:0xd DW_TAG_member
	.long	.Linfo_string74         # DW_AT_name
	.long	408                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	25                      # DW_AT_decl_line
	.byte	12                      # DW_AT_data_member_location
	.byte	1                       # DW_AT_accessibility
                                        # DW_ACCESS_public
	.byte	0                       # End Of Children Mark
	.byte	12                      # Abbrev [12] 0x552:0xb DW_TAG_typedef
	.long	1208                    # DW_AT_type
	.long	.Linfo_string72         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	49                      # DW_AT_decl_line
	.byte	11                      # Abbrev [11] 0x55d:0x5 DW_TAG_pointer_type
	.long	1127                    # DW_AT_type
	.byte	0                       # End Of Children Mark
.L.debug_info_end0:
	.section	.debug_abbrev,"",@progbits
.L.debug_abbrev_begin:
	.byte	1                       # Abbreviation Code
	.byte	17                      # DW_TAG_compile_unit
	.byte	1                       # DW_CHILDREN_yes
	.byte	37                      # DW_AT_producer
	.byte	14                      # DW_FORM_strp
	.byte	19                      # DW_AT_language
	.byte	5                       # DW_FORM_data2
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	16                      # DW_AT_stmt_list
	.byte	23                      # DW_FORM_sec_offset
	.byte	27                      # DW_AT_comp_dir
	.byte	14                      # DW_FORM_strp
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
	.byte	10                      # DW_FORM_block1
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
	.byte	47                      # DW_AT_upper_bound
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
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
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
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	64                      # DW_AT_frame_base
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	8                       # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	2                       # DW_AT_location
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	9                       # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
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
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	64                      # DW_AT_frame_base
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	10                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	2                       # DW_AT_location
	.byte	10                      # DW_FORM_block1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	11                      # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	12                      # Abbreviation Code
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
	.byte	13                      # Abbreviation Code
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
	.byte	14                      # Abbreviation Code
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
	.byte	50                      # DW_AT_accessibility
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	15                      # Abbreviation Code
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
	.byte	16                      # Abbreviation Code
	.byte	33                      # DW_TAG_subrange_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	47                      # DW_AT_upper_bound
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	17                      # Abbreviation Code
	.byte	11                      # DW_TAG_lexical_block
	.byte	1                       # DW_CHILDREN_yes
	.byte	85                      # DW_AT_ranges
	.byte	6                       # DW_FORM_data4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	18                      # Abbreviation Code
	.byte	11                      # DW_TAG_lexical_block
	.byte	1                       # DW_CHILDREN_yes
	.byte	17                      # DW_AT_low_pc
	.byte	1                       # DW_FORM_addr
	.byte	18                      # DW_AT_high_pc
	.byte	1                       # DW_FORM_addr
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	19                      # Abbreviation Code
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
	.byte	20                      # Abbreviation Code
	.byte	40                      # DW_TAG_enumerator
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	28                      # DW_AT_const_value
	.byte	13                      # DW_FORM_sdata
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	21                      # Abbreviation Code
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
	.byte	22                      # Abbreviation Code
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
	.byte	50                      # DW_AT_accessibility
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	23                      # Abbreviation Code
	.byte	15                      # DW_TAG_pointer_type
	.byte	0                       # DW_CHILDREN_no
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	0                       # EOM(3)
.L.debug_abbrev_end:
	.section	.debug_aranges,"",@progbits
	.long	60                      # Length of ARange Set
	.short	2                       # DWARF Arange version number
	.long	.L.debug_info_begin0    # Offset Into Debug Info Section
	.byte	8                       # Address Size (in bytes)
	.byte	0                       # Segment Size (in bytes)
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.quad	lava_val
	.quad	4000000
	.quad	.Lfunc_begin0
.Lset0 = .Ldebug_end1-.Lfunc_begin0
	.quad	.Lset0
	.quad	0                       # ARange terminator
	.quad	0
	.section	.debug_ranges,"",@progbits
	.quad	.Ltmp45
	.quad	.Ltmp49
	.quad	.Ltmp51
	.quad	.Ltmp52
	.quad	0
	.quad	0
	.quad	.Ltmp44
	.quad	.Ltmp52
	.quad	.Ltmp53
	.quad	.Ltmp54
	.quad	0
	.quad	0
	.section	.debug_macinfo,"",@progbits
	.section	.debug_pubnames,"",@progbits
.Lset1 = .Lpubnames_end0-.Lpubnames_begin0 # Length of Public Names Info
	.long	.Lset1
.Lpubnames_begin0:
	.short	2                       # DWARF Version
	.long	.L.debug_info_begin0    # Offset of Compilation Unit Info
.Lset2 = .L.debug_info_end0-.L.debug_info_begin0 # Compilation Unit Length
	.long	.Lset2
	.long	142                     # DIE offset
	.asciz	"lava_get"              # External Name
	.long	186                     # DIE offset
	.asciz	"parse_header"          # External Name
	.long	528                     # DIE offset
	.asciz	"main"                  # External Name
	.long	426                     # DIE offset
	.asciz	"consume_record"        # External Name
	.long	240                     # DIE offset
	.asciz	"parse_record"          # External Name
	.long	88                      # DIE offset
	.asciz	"lava_set"              # External Name
	.long	0                       # End Mark
.Lpubnames_end0:
	.section	.debug_pubtypes,"",@progbits
.Lset3 = .Lpubtypes_end0-.Lpubtypes_begin0 # Length of Public Types Info
	.long	.Lset3
.Lpubtypes_begin0:
	.short	2                       # DWARF Version
	.long	.L.debug_info_begin0    # Offset of Compilation Unit Info
.Lset4 = .L.debug_info_end0-.L.debug_info_begin0 # Compilation Unit Length
	.long	.Lset4
	.long	707                     # DIE offset
	.asciz	"FILE"                  # External Name
	.long	1257                    # DIE offset
	.asciz	"long unsigned int"     # External Name
	.long	74                      # DIE offset
	.asciz	"unsigned int"          # External Name
	.long	1281                    # DIE offset
	.asciz	"file_header"           # External Name
	.long	678                     # DIE offset
	.asciz	"int"                   # External Name
	.long	1190                    # DIE offset
	.asciz	"__off_t"               # External Name
	.long	1208                    # DIE offset
	.asciz	"unsigned short"        # External Name
	.long	1246                    # DIE offset
	.asciz	"size_t"                # External Name
	.long	303                     # DIE offset
	.asciz	"file_entry"            # External Name
	.long	1235                    # DIE offset
	.asciz	"__off64_t"             # External Name
	.long	419                     # DIE offset
	.asciz	"float"                 # External Name
	.long	1137                    # DIE offset
	.asciz	"_IO_marker"            # External Name
	.long	1215                    # DIE offset
	.asciz	"signed char"           # External Name
	.long	1362                    # DIE offset
	.asciz	"uint16_t"              # External Name
	.long	408                     # DIE offset
	.asciz	"uint32_t"              # External Name
	.long	718                     # DIE offset
	.asciz	"_IO_FILE"              # External Name
	.long	1201                    # DIE offset
	.asciz	"long int"              # External Name
	.long	401                     # DIE offset
	.asciz	"char"                  # External Name
	.long	0                       # End Mark
.Lpubtypes_end0:

	.ident	"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"
	.section	".note.GNU-stack","",@progbits
