
main_riscv.o:     file format elf64-littleriscv


Disassembly of section .text:

0000000000000000 <main>:
   0:	7179                	addi	sp,sp,-48
   2:	f406                	sd	ra,40(sp)
   4:	f022                	sd	s0,32(sp)
   6:	1800                	addi	s0,sp,48
   8:	fe042623          	sw	zero,-20(s0)
   c:	4785                	li	a5,1
   e:	fef42423          	sw	a5,-24(s0)
  12:	4785                	li	a5,1
  14:	fef42223          	sw	a5,-28(s0)
  18:	fdc40793          	addi	a5,s0,-36
  1c:	85be                	mv	a1,a5
  1e:	000007b7          	lui	a5,0x0
  22:	00078513          	mv	a0,a5
  26:	00000097          	auipc	ra,0x0
  2a:	000080e7          	jalr	ra # 26 <main+0x26>
  2e:	fdc42703          	lw	a4,-36(s0)
  32:	6789                	lui	a5,0x2
  34:	71078793          	addi	a5,a5,1808 # 2710 <.L3+0x265c>
  38:	00e7d763          	bge	a5,a4,46 <.L2>
  3c:	6789                	lui	a5,0x2
  3e:	71078793          	addi	a5,a5,1808 # 2710 <.L3+0x265c>
  42:	fcf42e23          	sw	a5,-36(s0)

0000000000000046 <.L2>:
  46:	fec42783          	lw	a5,-20(s0)
  4a:	85be                	mv	a1,a5
  4c:	000007b7          	lui	a5,0x0
  50:	00078513          	mv	a0,a5
  54:	00000097          	auipc	ra,0x0
  58:	000080e7          	jalr	ra # 54 <.L2+0xe>
  5c:	fe842783          	lw	a5,-24(s0)
  60:	85be                	mv	a1,a5
  62:	000007b7          	lui	a5,0x0
  66:	00078513          	mv	a0,a5
  6a:	00000097          	auipc	ra,0x0
  6e:	000080e7          	jalr	ra # 6a <.L2+0x24>
  72:	a089                	j	b4 <.L3>

0000000000000074 <.L4>:
  74:	fe842783          	lw	a5,-24(s0)
  78:	fef42023          	sw	a5,-32(s0)
  7c:	fe842783          	lw	a5,-24(s0)
  80:	873e                	mv	a4,a5
  82:	fec42783          	lw	a5,-20(s0)
  86:	9fb9                	addw	a5,a5,a4
  88:	fef42423          	sw	a5,-24(s0)
  8c:	fe842783          	lw	a5,-24(s0)
  90:	85be                	mv	a1,a5
  92:	000007b7          	lui	a5,0x0
  96:	00078513          	mv	a0,a5
  9a:	00000097          	auipc	ra,0x0
  9e:	000080e7          	jalr	ra # 9a <.L4+0x26>
  a2:	fe042783          	lw	a5,-32(s0)
  a6:	fef42623          	sw	a5,-20(s0)
  aa:	fe442783          	lw	a5,-28(s0)
  ae:	2785                	addiw	a5,a5,1 # 1 <main+0x1>
  b0:	fef42223          	sw	a5,-28(s0)

00000000000000b4 <.L3>:
  b4:	fdc42783          	lw	a5,-36(s0)
  b8:	fe442703          	lw	a4,-28(s0)
  bc:	2701                	sext.w	a4,a4
  be:	faf74be3          	blt	a4,a5,74 <.L4>
  c2:	4781                	li	a5,0
  c4:	853e                	mv	a0,a5
  c6:	70a2                	ld	ra,40(sp)
  c8:	7402                	ld	s0,32(sp)
  ca:	6145                	addi	sp,sp,48
  cc:	8082                	ret

Disassembly of section .sdata:

0000000000000000 <myflag>:
   0:	0001                	nop
	...

Disassembly of section .rodata:

0000000000000000 <.LC0>:
   0:	6425                	lui	s0,0x9
   2:	0000                	unimp
   4:	0000                	unimp
	...

0000000000000008 <.LC1>:
   8:	6425                	lui	s0,0x9
   a:	000a                	c.slli	zero,0x2

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	4700                	lw	s0,8(a4)
   2:	203a4343          	fmadd.s	ft6,fs4,ft3,ft4,rmm
   6:	6728                	ld	a0,72(a4)
   8:	6231                	lui	tp,0xc
   a:	30363033          	.insn	4, 0x30363033
   e:	63613933          	.insn	4, 0x63613933
  12:	2934                	fld	fa3,80(a0)
  14:	3120                	fld	fs0,96(a0)
  16:	2e35                	addiw	t3,t3,13
  18:	2e31                	addiw	t3,t3,12
  1a:	0030                	addi	a2,sp,8

Disassembly of section .riscv.attributes:

0000000000000000 <.riscv.attributes>:
   0:	7341                	lui	t1,0xffff0
   2:	0000                	unimp
   4:	7200                	ld	s0,32(a2)
   6:	7369                	lui	t1,0xffffa
   8:	01007663          	bgeu	zero,a6,14 <.riscv.attributes+0x14>
   c:	0069                	c.nop	26
   e:	0000                	unimp
  10:	1004                	addi	s1,sp,32
  12:	7205                	lui	tp,0xfffe1
  14:	3676                	fld	fa2,376(sp)
  16:	6934                	ld	a3,80(a0)
  18:	7032                	.insn	2, 0x7032
  1a:	5f31                	li	t5,-20
  1c:	326d                	addiw	tp,tp,-5 # fffffffffffe0ffb <.L3+0xfffffffffffe0f47>
  1e:	3070                	fld	fa2,224(s0)
  20:	615f 7032 5f31      	.insn	6, 0x5f317032615f
  26:	3266                	fld	ft4,120(sp)
  28:	3270                	fld	fa2,224(a2)
  2a:	645f 7032 5f32      	.insn	6, 0x5f327032645f
  30:	30703263          	.insn	4, 0x30703263
  34:	7a5f 6369 7273      	.insn	6, 0x727363697a5f
  3a:	7032                	.insn	2, 0x7032
  3c:	5f30                	lw	a2,120(a4)
  3e:	697a                	ld	s2,408(sp)
  40:	6566                	ld	a0,88(sp)
  42:	636e                	ld	t1,216(sp)
  44:	6965                	lui	s2,0x19
  46:	7032                	.insn	2, 0x7032
  48:	5f30                	lw	a2,120(a4)
  4a:	6d7a                	ld	s10,408(sp)
  4c:	756d                	lui	a0,0xffffb
  4e:	316c                	fld	fa1,224(a0)
  50:	3070                	fld	fa2,224(s0)
  52:	7a5f 6161 6f6d      	.insn	6, 0x6f6d61617a5f
  58:	7031                	c.lui	zero,0xfffec
  5a:	5f30                	lw	a2,120(a4)
  5c:	617a                	ld	sp,408(sp)
  5e:	726c                	ld	a1,224(a2)
  60:	70316373          	csrrsi	t1,0x703,2
  64:	5f30                	lw	a2,120(a4)
  66:	637a                	ld	t1,408(sp)
  68:	3161                	addiw	sp,sp,-8
  6a:	3070                	fld	fa2,224(s0)
  6c:	7a5f 6463 7031      	.insn	6, 0x703164637a5f
  72:	0030                	addi	a2,sp,8
