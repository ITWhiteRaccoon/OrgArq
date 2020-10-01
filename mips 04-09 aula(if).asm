.text
	.globl main
	
	#LEITURA
main:	la	$a0, A	#copia a string A para $a0
	li	$v0, 4	#syscall imprime(4) $a0
	syscall		#imprime
	
	li	$v0, 5	#syscall le int(5)
	syscall		#le
	move	$s0, $v0 #guarda int em $s0	
	
	la	$a0, B	#copia a string B para a0
	li	$v0, 4	#syscall imprime(4) $a0
	syscall		#imprime
	
	li	$v0, 5	#syscall le int(5)
	syscall		#le
	move	$s1, $v0 #guarda int em $s1
	
	la	$s2, X	#copia endereço de x para $s2
	
	
	#IF
	bgt	$s0, $s1, maior #vai para A_MAIOR se $s0 > $s1
	#ELSE
	subu	$t0, $s1, $s0 #$t1 = $s1 - $s0
	move	$t1, $s0
	move	$s0, $s1
	move	$s1, $t1
	j	fim
	#THEN
maior:	subu	$t0, $s0, $s1 #$t1 = $s0 - $s1
	
fim:	sw	$t0, 0($s2) #guarda sub em x
	
	move 	$a0, $s0 #copia 1o nro para $a0
	li	$v0, 1	 #syscall imprime int(1) $a0
	syscall		 #imprime
	
	la	$a0, D	#copia str ' menos ' para $a0
	li	$v0, 4	#syscall imprime(4) $a0
	syscall		#imprime
		
	move 	$a0, $s1 #copia 2o nro para $a0
	li	$v0, 1	 #syscall imprime int(1) $a0
	syscall		#imprime
	
	la	$a0, E	# eh igual a 
	li	$v0, 4
	syscall
	
	lw 	$a0, 0($s2) #Prepara nro x
	li	$v0, 1	 #Imprime nro
	syscall
	
	li	$v0, 10
	syscall

	.data
X:	.word 0
A:	.asciiz	"Digite o 1o. numero: "
B:	.asciiz	"Digite o 2o. numero: "
D:	.asciiz	" menos "
E:	.asciiz	" eh igual a "
