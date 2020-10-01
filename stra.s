	.cpu generic+fp+simd
	.file	"stra.c"
	.section	.rodata
	.align	3
.LC0:
	.string	"strArray != ((void *)0)"
	.align	3
.LC1:
	.string	"stra.c"
	.text
	.align	2
	.global	Str_getLength
	.type	Str_getLength, %function
Str_getLength:
.LFB0:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	str	x0, [x29,24]
	str	xzr, [x29,40]
	ldr	x0, [x29,24]
	cmp	x0, xzr
	bne	.L2
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	adrp	x1, .LC1
	add	x1, x1, :lo12:.LC1
	adrp	x2, __PRETTY_FUNCTION__.2490
	add	x3, x2, :lo12:__PRETTY_FUNCTION__.2490
	mov	w2, 22
	bl	__assert_fail
.L2:
	b	.L3
.L4:
	ldr	x0, [x29,40]
	add	x0, x0, 1
	str	x0, [x29,40]
.L3:
	ldr	x1, [x29,24]
	ldr	x0, [x29,40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, wzr
	bne	.L4
	ldr	x0, [x29,40]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE0:
	.size	Str_getLength, .-Str_getLength
	.section	.rodata
	.align	3
.LC2:
	.string	"strArrayDest != ((void *)0)"
	.align	3
.LC3:
	.string	"strArraySource != ((void *)0)"
	.text
	.align	2
	.global	Str_copy
	.type	Str_copy, %function
Str_copy:
.LFB1:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	str	x0, [x29,24]
	str	x1, [x29,16]
	str	xzr, [x29,40]
	ldr	x0, [x29,24]
	cmp	x0, xzr
	bne	.L7
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	adrp	x1, .LC1
	add	x1, x1, :lo12:.LC1
	adrp	x2, __PRETTY_FUNCTION__.2499
	add	x3, x2, :lo12:__PRETTY_FUNCTION__.2499
	mov	w2, 40
	bl	__assert_fail
.L7:
	ldr	x0, [x29,16]
	cmp	x0, xzr
	bne	.L8
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	adrp	x1, .LC1
	add	x1, x1, :lo12:.LC1
	adrp	x2, __PRETTY_FUNCTION__.2499
	add	x3, x2, :lo12:__PRETTY_FUNCTION__.2499
	mov	w2, 41
	bl	__assert_fail
.L8:
	b	.L9
.L10:
	ldr	x1, [x29,24]
	ldr	x0, [x29,40]
	add	x0, x1, x0
	ldr	x2, [x29,16]
	ldr	x1, [x29,40]
	add	x1, x2, x1
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	x0, [x29,40]
	add	x0, x0, 1
	str	x0, [x29,40]
.L9:
	ldr	x1, [x29,16]
	ldr	x0, [x29,40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, wzr
	bne	.L10
	ldr	x1, [x29,24]
	ldr	x0, [x29,40]
	add	x0, x1, x0
	strb	wzr, [x0]
	ldr	x0, [x29,24]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE1:
	.size	Str_copy, .-Str_copy
	.align	2
	.global	Str_concat
	.type	Str_concat, %function
Str_concat:
.LFB2:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	str	x0, [x29,24]
	str	x1, [x29,16]
	str	xzr, [x29,40]
	str	xzr, [x29,32]
	ldr	x0, [x29,24]
	cmp	x0, xzr
	bne	.L13
	adrp	x0, .LC2
	add	x0, x0, :lo12:.LC2
	adrp	x1, .LC1
	add	x1, x1, :lo12:.LC1
	adrp	x2, __PRETTY_FUNCTION__.2509
	add	x3, x2, :lo12:__PRETTY_FUNCTION__.2509
	mov	w2, 64
	bl	__assert_fail
.L13:
	ldr	x0, [x29,16]
	cmp	x0, xzr
	bne	.L14
	adrp	x0, .LC3
	add	x0, x0, :lo12:.LC3
	adrp	x1, .LC1
	add	x1, x1, :lo12:.LC1
	adrp	x2, __PRETTY_FUNCTION__.2509
	add	x3, x2, :lo12:__PRETTY_FUNCTION__.2509
	mov	w2, 65
	bl	__assert_fail
.L14:
	b	.L15
.L16:
	ldr	x0, [x29,32]
	add	x0, x0, 1
	str	x0, [x29,32]
.L15:
	ldr	x1, [x29,24]
	ldr	x0, [x29,32]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, wzr
	bne	.L16
	b	.L17
.L18:
	ldr	x1, [x29,24]
	ldr	x0, [x29,32]
	add	x0, x1, x0
	ldr	x2, [x29,16]
	ldr	x1, [x29,40]
	add	x1, x2, x1
	ldrb	w1, [x1]
	strb	w1, [x0]
	ldr	x0, [x29,40]
	add	x0, x0, 1
	str	x0, [x29,40]
	ldr	x0, [x29,32]
	add	x0, x0, 1
	str	x0, [x29,32]
.L17:
	ldr	x1, [x29,16]
	ldr	x0, [x29,40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, wzr
	bne	.L18
	ldr	x1, [x29,24]
	ldr	x0, [x29,32]
	add	x0, x1, x0
	strb	wzr, [x0]
	ldr	x0, [x29,24]
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE2:
	.size	Str_concat, .-Str_concat
	.section	.rodata
	.align	3
.LC4:
	.string	"strArrayThis != ((void *)0)"
	.align	3
.LC5:
	.string	"strArrayThat != ((void *)0)"
	.text
	.align	2
	.global	Str_compare
	.type	Str_compare, %function
Str_compare:
.LFB3:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	str	x0, [x29,24]
	str	x1, [x29,16]
	str	xzr, [x29,40]
	ldr	x0, [x29,24]
	cmp	x0, xzr
	bne	.L21
	adrp	x0, .LC4
	add	x0, x0, :lo12:.LC4
	adrp	x1, .LC1
	add	x1, x1, :lo12:.LC1
	adrp	x2, __PRETTY_FUNCTION__.2521
	add	x3, x2, :lo12:__PRETTY_FUNCTION__.2521
	mov	w2, 99
	bl	__assert_fail
.L21:
	ldr	x0, [x29,16]
	cmp	x0, xzr
	bne	.L22
	adrp	x0, .LC5
	add	x0, x0, :lo12:.LC5
	adrp	x1, .LC1
	add	x1, x1, :lo12:.LC1
	adrp	x2, __PRETTY_FUNCTION__.2521
	add	x3, x2, :lo12:__PRETTY_FUNCTION__.2521
	mov	w2, 100
	bl	__assert_fail
.L22:
	b	.L23
.L27:
	ldr	x1, [x29,24]
	ldr	x0, [x29,40]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldr	x2, [x29,16]
	ldr	x0, [x29,40]
	add	x0, x2, x0
	ldrb	w0, [x0]
	cmp	w1, w0
	beq	.L24
	ldr	x1, [x29,24]
	ldr	x0, [x29,40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	mov	w1, w0
	ldr	x2, [x29,16]
	ldr	x0, [x29,40]
	add	x0, x2, x0
	ldrb	w0, [x0]
	sub	w0, w1, w0
	b	.L25
.L24:
	ldr	x0, [x29,40]
	add	x0, x0, 1
	str	x0, [x29,40]
.L23:
	ldr	x1, [x29,24]
	ldr	x0, [x29,40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, wzr
	beq	.L26
	ldr	x1, [x29,16]
	ldr	x0, [x29,40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, wzr
	bne	.L27
.L26:
	ldr	x1, [x29,24]
	ldr	x0, [x29,40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, wzr
	bne	.L28
	ldr	x1, [x29,16]
	ldr	x0, [x29,40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, wzr
	beq	.L28
	mov	w0, -1
	b	.L25
.L28:
	ldr	x1, [x29,24]
	ldr	x0, [x29,40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, wzr
	beq	.L29
	ldr	x1, [x29,16]
	ldr	x0, [x29,40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, wzr
	bne	.L29
	mov	w0, 1
	b	.L25
.L29:
	mov	w0, 0
.L25:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE3:
	.size	Str_compare, .-Str_compare
	.section	.rodata
	.align	3
.LC6:
	.string	"strArrayString != ((void *)0)"
	.align	3
.LC7:
	.string	"strArrayPattern != ((void *)0)"
	.text
	.align	2
	.global	Str_search
	.type	Str_search, %function
Str_search:
.LFB4:
	.cfi_startproc
	stp	x29, x30, [sp, -48]!
	.cfi_def_cfa_offset 48
	.cfi_offset 29, -48
	.cfi_offset 30, -40
	add	x29, sp, 0
	.cfi_def_cfa_register 29
	str	x0, [x29,24]
	str	x1, [x29,16]
	str	xzr, [x29,40]
	str	xzr, [x29,32]
	ldr	x0, [x29,24]
	cmp	x0, xzr
	bne	.L31
	adrp	x0, .LC6
	add	x0, x0, :lo12:.LC6
	adrp	x1, .LC1
	add	x1, x1, :lo12:.LC1
	adrp	x2, __PRETTY_FUNCTION__.2531
	add	x3, x2, :lo12:__PRETTY_FUNCTION__.2531
	mov	w2, 141
	bl	__assert_fail
.L31:
	ldr	x0, [x29,16]
	cmp	x0, xzr
	bne	.L32
	adrp	x0, .LC7
	add	x0, x0, :lo12:.LC7
	adrp	x1, .LC1
	add	x1, x1, :lo12:.LC1
	adrp	x2, __PRETTY_FUNCTION__.2531
	add	x3, x2, :lo12:__PRETTY_FUNCTION__.2531
	mov	w2, 142
	bl	__assert_fail
.L32:
	ldr	x1, [x29,16]
	ldr	x0, [x29,40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, wzr
	bne	.L33
	ldr	x0, [x29,24]
	b	.L34
.L33:
	b	.L35
.L39:
	ldr	x1, [x29,24]
	ldr	x0, [x29,32]
	add	x0, x1, x0
	ldrb	w1, [x0]
	ldr	x2, [x29,16]
	ldr	x0, [x29,40]
	add	x0, x2, x0
	ldrb	w0, [x0]
	cmp	w1, w0
	bne	.L36
	ldr	x0, [x29,40]
	add	x0, x0, 1
	str	x0, [x29,40]
	b	.L37
.L36:
	ldr	x1, [x29,32]
	ldr	x0, [x29,40]
	sub	x0, x1, x0
	str	x0, [x29,32]
	str	xzr, [x29,40]
.L37:
	ldr	x0, [x29,32]
	add	x0, x0, 1
	str	x0, [x29,32]
.L35:
	ldr	x1, [x29,24]
	ldr	x0, [x29,32]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, wzr
	beq	.L38
	ldr	x1, [x29,16]
	ldr	x0, [x29,40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, wzr
	bne	.L39
.L38:
	ldr	x1, [x29,16]
	ldr	x0, [x29,40]
	add	x0, x1, x0
	ldrb	w0, [x0]
	cmp	w0, wzr
	bne	.L40
	ldr	x1, [x29,32]
	ldr	x0, [x29,40]
	sub	x0, x1, x0
	ldr	x1, [x29,24]
	add	x0, x1, x0
	b	.L34
.L40:
	mov	x0, 0
.L34:
	ldp	x29, x30, [sp], 48
	.cfi_restore 30
	.cfi_restore 29
	.cfi_def_cfa 31, 0
	ret
	.cfi_endproc
.LFE4:
	.size	Str_search, .-Str_search
	.section	.rodata
	.align	3
	.type	__PRETTY_FUNCTION__.2490, %object
	.size	__PRETTY_FUNCTION__.2490, 14
__PRETTY_FUNCTION__.2490:
	.string	"Str_getLength"
	.align	3
	.type	__PRETTY_FUNCTION__.2499, %object
	.size	__PRETTY_FUNCTION__.2499, 9
__PRETTY_FUNCTION__.2499:
	.string	"Str_copy"
	.align	3
	.type	__PRETTY_FUNCTION__.2509, %object
	.size	__PRETTY_FUNCTION__.2509, 11
__PRETTY_FUNCTION__.2509:
	.string	"Str_concat"
	.align	3
	.type	__PRETTY_FUNCTION__.2521, %object
	.size	__PRETTY_FUNCTION__.2521, 12
__PRETTY_FUNCTION__.2521:
	.string	"Str_compare"
	.align	3
	.type	__PRETTY_FUNCTION__.2531, %object
	.size	__PRETTY_FUNCTION__.2531, 11
__PRETTY_FUNCTION__.2531:
	.string	"Str_search"
	.ident	"GCC: (GNU) 4.8.5 20150623 (Red Hat 4.8.5-28)"
	.section	.note.GNU-stack,"",%progbits
