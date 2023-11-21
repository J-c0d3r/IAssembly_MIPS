# Exercício 1	
.text 
	li $v0, 4
	la $a0, mensagem1
	syscall
	
	li $v0, 8 
	la $a0, string_entrada
	li $a1, 8
	syscall
	
	la $t4, string_entrada
	add $t3, $t4, $0
	li $t2, 5
	
	while: bne $t6, 0x0a, loop
	j exit
	
	loop: 
		lb $t6, 0($t3)
		add $t7, $t6, -48
		sllv $s5, $t7, $t2
		add $s6, $s6, $s5
		add $t3, $t3, 1
		subi $t2, $t2, 1
		j while
		
	exit:
	
	li $v0, 4
	la $a0, mensagem2
	syscall
	
	li $v0, 1
	move, $a0, $s6
	syscall

.data
   string_entrada: .space 8
   mensagem1: .asciiz "Entre com a seguencia binaria de 6 bits "
   mensagem2: .asciiz "A sequencia refere-se ao numero decimal: "
