.text
	.globl main
	
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
	
	
	addu 	$s2,$s0,$s1 #guarda em $s2 a soma de $s0 e $s1
	
	
	la	$a0, C	#copia str 'A soma de ' para $a0
	li	$v0, 4	#syscall imprime(4) $a0
	syscall		#imprime
	
	move 	$a0, $s0 #copia 1o nro para $a0
	li	$v0, 1	 #syscall imprime int(1) $a0
	syscall		 #imprime
	
	la	$a0, D	#copia str ' e ' para $a0
	li	$v0, 4	#syscall imprime(4) $a0
	syscall		#imprime
		
	move 	$a0, $s1 #copia 2o nro para $a0
	li	$v0, 1	 #syscall imprime int(1) $a0
	syscall		#imprime
	
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
D:	.asciiz	" menos "
E:	.asciiz	" eh igual a "
