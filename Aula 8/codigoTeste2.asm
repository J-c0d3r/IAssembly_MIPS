.text

  la $s1, c
  li $t2, 5
  li $s0, 0
  li $t5, 150

  WHILE: ble $s0, 2, LOOP 
  j EXIT
  LOOP:
    sll $t3, $t2, 2
    add $t1, $t3, $s1
    sw $t5, 0($t1)
    addi $s0, $s0, 1
    addi $t2, $t2, 1
    addi $t5, $t5, 10
    j WHILE
  EXIT:
  
.data
   c: .word 2, 6, 5, 8, 10, -6, 50, 120
