	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 12, 0	sdk_version 12, 1
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64                     ; =64
	stp	x20, x19, [sp, #32]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48                    ; =48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
Lloh0:
	adrp	x19, l_str.7@PAGE
Lloh1:
	add	x19, x19, l_str.7@PAGEOFF
	mov	x0, x19
	bl	_puts
Lloh2:
	adrp	x0, l_str.6@PAGE
Lloh3:
	add	x0, x0, l_str.6@PAGEOFF
	bl	_puts
	mov	x0, x19
	bl	_puts
Lloh4:
	adrp	x0, l_.str.2@PAGE
Lloh5:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	sub	x8, x29, #20                    ; =20
	str	x8, [sp]
Lloh6:
	adrp	x0, l_.str.3@PAGE
Lloh7:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_scanf
	ldur	w8, [x29, #-20]
	str	x8, [sp]
Lloh8:
	adrp	x0, l_.str.4@PAGE
Lloh9:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_printf
	ldur	w8, [x29, #-20]
	mov	w9, #42
	stp	x9, x8, [sp]
Lloh10:
	adrp	x0, l_.str.5@PAGE
Lloh11:
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_printf
	mov	w0, #0
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #64                     ; =64
	ret
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str.2:                               ; @.str.2
	.asciz	"Qual \303\251 o seu chute? "

l_.str.3:                               ; @.str.3
	.asciz	"%d"

l_.str.4:                               ; @.str.4
	.asciz	"Se chute foi %d\n"

l_.str.5:                               ; @.str.5
	.asciz	"%d %d"

l_str.6:                                ; @str.6
	.asciz	"* Bem vindo ao nosso jogo de adivinha\303\247\303\243o *"

l_str.7:                                ; @str.7
	.asciz	"******************************************"

.subsections_via_symbols
