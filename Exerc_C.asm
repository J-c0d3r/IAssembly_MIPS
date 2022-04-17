.text

#Message number1
    li $v0, 4
    la $a0, number1
    syscall

#Getting number1
    li $v0, 5
    syscall
    addi $s0, $v0, 0
    
#Message number2
    li $v0, 4
    la $a0, number2
    syscall    

#Getting number2
    li $v0, 5
    syscall
    addi $s1, $v0, 0
    
#Message number3
    li $v0, 4
    la $a0, number3
    syscall

#Getting number3
    li $v0, 5
    syscall
    addi $s2, $v0, 0
    
#Checking size of numbers
Loop: ble $s0, $s1, Amaior
      add $t0, $s0, $0
      add $s0, $s1, $0
      add $s1, $t0, $0
      j Loop
    
    Amaior: ble $s1, $s2, fim
      add $t0, $s1, $0
      add $s1, $s2, $0
      add $s2, $t0, $0
      j Loop

    fim: 
         li $v0, 4
         la $a0, result
         syscall
          
    	 li $v0, 1
         add $a0, $s0, $0
         syscall
         
         #Spacing in result
         li $v0, 4
	 la $a0, space
	 syscall
         
         li $v0, 1
         add $a0, $s1, $0
         syscall
         
         #Spacing in result
         li $v0, 4
	 la $a0, space
	 syscall
         
         li $v0, 1
         add $a0, $s2, $0
         syscall
         Exit:

.data
number1: .asciiz "Entre com o 1º valor inteiro: \n"
number2: .asciiz "Entre com o 2º valor inteiro: \n"
number3: .asciiz "Entre com o 3º valor inteiro: \n"
result: .asciiz "O resultado ficou: \n"
space: .asciiz " "
