	.arch armv8-a
	.file	"decomment.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"Error: line %d: unterminated comment\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -32]!
	.cfi_def_cfa_offset 32
	.cfi_offset 29, -32
	.cfi_offset 30, -24
	mov	x29, sp
	str	wzr, [sp, 28]
	mov	w0, 1
	str	w0, [sp, 24]
	mov	w0, -1
	str	w0, [sp, 20]
	b	.L2
.L35:
	ldr	w0, [sp, 28]
	cmp	w0, 7
	beq	.L3
	ldr	w0, [sp, 28]
	cmp	w0, 7
	bhi	.L4
	ldr	w0, [sp, 28]
	cmp	w0, 6
	beq	.L5
	ldr	w0, [sp, 28]
	cmp	w0, 6
	bhi	.L4
	ldr	w0, [sp, 28]
	cmp	w0, 5
	beq	.L6
	ldr	w0, [sp, 28]
	cmp	w0, 5
	bhi	.L4
	ldr	w0, [sp, 28]
	cmp	w0, 4
	beq	.L7
	ldr	w0, [sp, 28]
	cmp	w0, 4
	bhi	.L4
	ldr	w0, [sp, 28]
	cmp	w0, 3
	beq	.L8
	ldr	w0, [sp, 28]
	cmp	w0, 3
	bhi	.L4
	ldr	w0, [sp, 28]
	cmp	w0, 2
	beq	.L9
	ldr	w0, [sp, 28]
	cmp	w0, 2
	bhi	.L4
	ldr	w0, [sp, 28]
	cmp	w0, 0
	beq	.L10
	ldr	w0, [sp, 28]
	cmp	w0, 1
	beq	.L11
	b	.L4
.L10:
	ldr	w0, [sp, 16]
	cmp	w0, 47
	bne	.L12
	mov	w0, 2
	str	w0, [sp, 28]
	b	.L4
.L12:
	ldr	w0, [sp, 16]
	cmp	w0, 39
	bne	.L14
	mov	w0, 39
	bl	putchar
	mov	w0, 4
	str	w0, [sp, 28]
	b	.L4
.L14:
	ldr	w0, [sp, 16]
	cmp	w0, 34
	bne	.L15
	mov	w0, 34
	bl	putchar
	mov	w0, 5
	str	w0, [sp, 28]
	b	.L4
.L15:
	ldr	w0, [sp, 16]
	bl	putchar
	b	.L4
.L9:
	ldr	w0, [sp, 16]
	cmp	w0, 42
	bne	.L16
	mov	w0, 32
	bl	putchar
	mov	w0, 1
	str	w0, [sp, 28]
	ldr	w0, [sp, 24]
	str	w0, [sp, 20]
	b	.L4
.L16:
	ldr	w0, [sp, 16]
	cmp	w0, 39
	bne	.L18
	mov	w0, 47
	bl	putchar
	mov	w0, 39
	bl	putchar
	mov	w0, 4
	str	w0, [sp, 28]
	b	.L4
.L18:
	ldr	w0, [sp, 16]
	cmp	w0, 34
	bne	.L19
	mov	w0, 47
	bl	putchar
	mov	w0, 34
	bl	putchar
	mov	w0, 5
	str	w0, [sp, 28]
	b	.L4
.L19:
	ldr	w0, [sp, 16]
	cmp	w0, 47
	bne	.L20
	mov	w0, 47
	bl	putchar
	mov	w0, 2
	str	w0, [sp, 28]
	b	.L4
.L20:
	mov	w0, 47
	bl	putchar
	ldr	w0, [sp, 16]
	bl	putchar
	str	wzr, [sp, 28]
	b	.L4
.L11:
	ldr	w0, [sp, 16]
	cmp	w0, 42
	bne	.L21
	mov	w0, 3
	str	w0, [sp, 28]
	b	.L41
.L21:
	ldr	w0, [sp, 16]
	cmp	w0, 10
	bne	.L41
	mov	w0, 10
	bl	putchar
	b	.L41
.L8:
	ldr	w0, [sp, 16]
	cmp	w0, 47
	bne	.L23
	str	wzr, [sp, 28]
	b	.L4
.L23:
	ldr	w0, [sp, 16]
	cmp	w0, 42
	bne	.L25
	mov	w0, 3
	str	w0, [sp, 28]
	b	.L4
.L25:
	ldr	w0, [sp, 16]
	cmp	w0, 10
	bne	.L26
	mov	w0, 10
	bl	putchar
.L26:
	mov	w0, 1
	str	w0, [sp, 28]
	b	.L4
.L7:
	ldr	w0, [sp, 16]
	cmp	w0, 39
	bne	.L27
	mov	w0, 39
	bl	putchar
	str	wzr, [sp, 28]
	b	.L4
.L27:
	ldr	w0, [sp, 16]
	cmp	w0, 92
	bne	.L29
	mov	w0, 92
	bl	putchar
	mov	w0, 6
	str	w0, [sp, 28]
	b	.L4
.L29:
	ldr	w0, [sp, 16]
	cmp	w0, 47
	bne	.L30
	mov	w0, 47
	bl	putchar
	b	.L4
.L30:
	ldr	w0, [sp, 16]
	bl	putchar
	b	.L4
.L6:
	ldr	w0, [sp, 16]
	cmp	w0, 34
	bne	.L31
	mov	w0, 34
	bl	putchar
	str	wzr, [sp, 28]
	b	.L4
.L31:
	ldr	w0, [sp, 16]
	cmp	w0, 92
	bne	.L33
	mov	w0, 92
	bl	putchar
	mov	w0, 7
	str	w0, [sp, 28]
	b	.L4
.L33:
	ldr	w0, [sp, 16]
	cmp	w0, 47
	bne	.L34
	mov	w0, 47
	bl	putchar
	b	.L4
.L34:
	ldr	w0, [sp, 16]
	bl	putchar
	b	.L4
.L5:
	ldr	w0, [sp, 16]
	bl	putchar
	mov	w0, 4
	str	w0, [sp, 28]
	b	.L4
.L3:
	ldr	w0, [sp, 16]
	bl	putchar
	mov	w0, 5
	str	w0, [sp, 28]
	b	.L4
.L41:
	nop
.L4:
	ldr	w0, [sp, 16]
	cmp	w0, 10
	bne	.L2
	ldr	w0, [sp, 24]
	add	w0, w0, 1
	str	w0, [sp, 24]
.L2:
	bl	getchar
	str	w0, [sp, 16]
	ldr	w0, [sp, 16]
	cmn	w0, #1
	bne	.L35
	ldr	w0, [sp, 28]
	cmp	w0, 1
	beq	.L36
	ldr	w0, [sp, 28]
	cmp	w0, 3
	bne	.L37
.L36:
	ldr	w0, [sp, 20]
	cmp	w0, 0
	bge	.L38
	ldr	w0, [sp, 24]
	str	w0, [sp, 20]
.L38:
	adrp	x0, stderr
	add	x0, x0, :lo12:stderr
	ldr	x3, [x0]
	ldr	w2, [sp, 20]
	adrp	x0, .LC0
	add	x1, x0, :lo12:.LC0
	mov	x0, x3
	bl	fprintf
	mov	w0, 1
	b	.L39
.L37:
	ldr	w0, [sp, 28]
	cmp	w0, 2
	bne	.L40
	mov	w0, 47
	bl	putchar
.L40:
	mov	w0, 0
.L39:
	ldp	x29, x30, [sp], 32
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (GNU) 11.5.0 20240719 (Red Hat 11.5.0-5)"
	.section	.note.GNU-stack,"",@progbits
