	.file	"hello.c"
	.intel_syntax noprefix
	.def	___main;	.scl	2;	.type	32;	.endef
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB10:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	and	esp, -16
	sub	esp, 16
	call	___main
	mov	DWORD PTR [esp+12], 10
	mov	DWORD PTR [esp+8], 0
	mov	DWORD PTR [esp+12], 0
	jmp	L2
L6:
	cmp	DWORD PTR [esp+12], 5
	jne	L3
	add	DWORD PTR [esp+8], 1
	jmp	L4
L3:
	cmp	DWORD PTR [esp+12], 6
	jle	L5
	mov	eax, DWORD PTR [esp+12]
	lea	edx, [eax+1]
	mov	DWORD PTR [esp+12], edx
	mov	DWORD PTR [esp+8], eax
	jmp	L4
L5:
	mov	eax, DWORD PTR [esp+12]
	lea	edx, [eax-1]
	mov	DWORD PTR [esp+12], edx
	mov	DWORD PTR [esp+8], eax
L4:
	add	DWORD PTR [esp+12], 1
L2:
	cmp	DWORD PTR [esp+12], 9
	jle	L6
	mov	eax, 0
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
