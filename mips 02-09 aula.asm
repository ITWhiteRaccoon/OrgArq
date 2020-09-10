.text
	.globl main
	
main:	la	$a0, A	#Gurda string
	li	$v0, 4	#Imprime
	syscall
	
	li	$v0, 5	#Le int
	syscall
	move	$s0, $v0 #Guarda int	
	
	la	$a0, B
	li	$v0, 4
	syscall
	
	li	$v0, 5
	syscall
	move	$s1, $v0
	
	addu 	$s2,$s0,$s1 #Guarda em t2 a soma de t0 com t1
	
	la	$a0, C	#Prepara str A soma de
	li	$v0, 4	#Imprime str
	syscall
	
	move 	$a0, $s0 #Prepara nro x
	li	$v0, 1	 #Imprime nro
	syscall
	
	la	$a0, D	# e
	li	$v0, 4
	syscall
	
	move 	$a0, $s1 #Prepara nro x
	li	$v0, 1	 #Imprime nro
	syscall
	
	la	$a0, E	# eh igual a 
	li	$v0, 4
	syscall
	
	move 	$a0, $s2 #Prepara nro x
	li	$v0, 1	 #Imprime nro
	syscall
	
	li	$v0, 10
	syscall

	.data
A:	.asciiz	"Digite o 1o. numero: "
B:	.asciiz	"Digite o 2o. numero: "
C:	.asciiz	"A soma de "
D:	.asciiz	" e "
E:	.asciiz	" eh igual a "