.text

# Showing the message
  li $v0, 4
  la $a0, input
  syscall
  
# Input of value of N
  li $v0, 5
  syscall
  addi $s0, $v0, 0 #$s0 contains the value of N

# Sum square
li $t0, 1 # cont i
li $s1, 0 # result variable
Loop: ble $t0, $s0, Soma
  j QuadradoSoma

Soma: 
  add $s1, $s1, $t0
  addi $t0, $t0, 1
  j Loop

QuadradoSoma: 
  mul $s1, $s1, $s1
  j Continuacao
  
Continuacao: 

# Sum of squares
li $t0, 1 # cont i
li $s2, 0 # result variable 
Loop1: ble $t0, $s0, SomaQuadrados  
  j Exit
  
SomaQuadrados:
  mul $t1, $t0, $t0
  add $s2, $s2, $t1
  addi $t0, $t0, 1
  j Loop1
  
Exit:
  sub $s3, $s1, $s2 # $s1 Sum Square // $s2 Sum of Square
  
  li $v0, 4
  la $a0, result
  syscall
  
  li $v0, 1
  addi $a0, $s3, 0
  syscall
  

.data
  input: .asciiz "Entre com o valor de N\n"
  result: .asciiz "Resultado da diferença entre o quadrado da soma e a soma dos quadrados é: "