##Questao 1_3
.text

  la $s0, c
  li $t0, 3 ## b
  li $t1, 4 ## a
  
  sub $t3, $t0, $t1
  sw $t3, 0($s0)
 
.data
  c: .word 8, 12
  