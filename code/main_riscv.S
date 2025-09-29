	.file	"main.c"
	.option nopic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zmmul1p0_zaamo1p0_zalrsc1p0_zca1p0_zcd1p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.globl	myflag
	.section	.sdata,"aw"
	.align	2
	.type	myflag, @object
	.size	myflag, 4
myflag:
	.word	1
	.section	.rodata
	.align	3
.LC0:
	.string	"%d"
	.align	3
.LC1:
	.string	"%d\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	addi	s0,sp,48
	sw	zero,-20(s0)
	li	a5,1
	sw	a5,-24(s0)
	li	a5,1
	sw	a5,-28(s0)
	addi	a5,s0,-36
	mv	a1,a5
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	scanf
	lw	a4,-36(s0)
	li	a5,8192
	addi	a5,a5,1808
	ble	a4,a5,.L2
	li	a5,8192
	addi	a5,a5,1808
	sw	a5,-36(s0)
.L2:
	lw	a5,-20(s0)
	mv	a1,a5
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	lw	a5,-24(s0)
	mv	a1,a5
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	j	.L3
.L4:
	lw	a5,-24(s0)
	sw	a5,-32(s0)
	lw	a5,-24(s0)
	mv	a4,a5
	lw	a5,-20(s0)
	addw	a5,a4,a5
	sw	a5,-24(s0)
	lw	a5,-24(s0)
	mv	a1,a5
	lui	a5,%hi(.LC1)
	addi	a0,a5,%lo(.LC1)
	call	printf
	lw	a5,-32(s0)
	sw	a5,-20(s0)
	lw	a5,-28(s0)
	addiw	a5,a5,1
	sw	a5,-28(s0)
.L3:
	lw	a5,-36(s0)
	lw	a4,-28(s0)
	sext.w	a4,a4
	blt	a4,a5,.L4
	li	a5,0
	mv	a0,a5
	ld	ra,40(sp)
	ld	s0,32(sp)
	addi	sp,sp,48
	jr	ra
	.size	main, .-main
	.ident	"GCC: (g1b306039ac4) 15.1.0"
	.section	.note.GNU-stack,"",@progbits
