##Questao 1_2
.text

  la $s0, b
  li $t0, 3 ## a
  li $t1, 4 ## c
  
  add $t3, $t0, $t1
  sw $t3, 245($s0)
 
.data
  b: .word 8, 11