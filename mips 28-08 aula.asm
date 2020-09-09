.text
	.globl main
	
main:	la	$t0, A
	lw	$t1, 0($t0)
	la	$t2, B
	lw	$t3, 0($t2)
	addu	$t4, $t1,$t3
	la	$t5, C
	sw	$t4, 0($t5)
	
	li	$v0, 10
	syscall

	.data
A:	.word 1
B:	.word 2
C:	.word 0