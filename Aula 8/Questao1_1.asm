##Questao 1_1
.text

  la $s0, a
  li $t0, 3 ## b
  li $t1, 4 ## c
  
  sub $t3, $t0, $t1
  sw $t3, 40($s0)
 
.data
  a: .word 2, 11