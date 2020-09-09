.text
.globl	main
# E=A+B+D-5+F
main:	la	$t0,A
	lw	$t1,0($t0)	#A
	lw	$t2,4($t0)	#B
	lw	$t3,8($t0)	#D
	lw	$t4,12($t0)	#F
	addu	$t0,$t1,$t2	#A+B
	addu	$t1,$t0,$t3	#A+B +D
	addiu	$t2,$t1,-5	#A+B+D -5
	addu	$t3,$t2,$t4	#A+B+D-5 +F
	la	$t4,E
	sw	$t3,0($t4)	
	
	li	$v0,10
	syscall
	
	.data
A:	.word	3
B:	.word	5
D:	.word	7
F:	.word	7
E:	.word	0