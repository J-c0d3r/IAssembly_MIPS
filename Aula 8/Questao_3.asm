##Questao 3
.text

  la $s0, a
  li $s1, 0 ## j = 0
  
  lw $t0, 0($s0)
  verify: blt $t0, 5, soma
  	lw $t1, 4($s0)
  	addi $t1, $t1, 10
  	add $s1, $t1, $0  
  	j Exit
  soma: addi $t1, $s1, 2
        sw $t1, 0($s0)
        j Exit
  Exit:
 
.data
  a: .word 6, 5