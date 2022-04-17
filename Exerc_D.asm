.text

#Message value1
    li $v0, 4
    la $a0, value1
    syscall

#Getting value1
    li $v0, 5
    syscall
    add $s0, $v0, $0

#Message value2
    li $v0, 4
    la $a0, value2
    syscall

#Getting value2
    li $v0, 5
    syscall
    add $s1, $v0, $0
    
Loop: 
    li $v0, 4
    la $a0, op
    syscall
    
    li $v0, 5
    syscall
     
    beqz $v0, Exit
      beq $v0, 1, soma
        beq $v0, 2, subtracao
          beq $v0, 3, divisao
            beq $v0, 4, multiplicacao
              li $v0, 4
              la $a0, invalid
              syscall
              j Loop
                  
      soma: add $t0, $s0, $s1
            li $v0, 4
            la $a0, result
            syscall
            
            li $v0, 1
            add $a0, $t0, $0
            syscall
            j Loop
      
      subtracao: sub $t0, $s0, $s1
                 li $v0, 4
                 la $a0, result
                 syscall
                 
                 li $v0, 1
                 add $a0, $t0, $0
                 syscall
                 j Loop
    
      divisao: div $t0, $s0, $s1
               li $v0, 4
               la $a0, result
               syscall
               
               li $v0, 1
               add $a0, $t0, $0
               syscall
               j Loop
      
      multiplicacao: mul $t0, $s0, $s1
      		     li $v0, 4
      		     la $a0, result
      		     syscall
      		     
      		     li $v0, 1
      		     add $a0, $t0, $0
      		     syscall
      		     j Loop
      		              
Exit: li $v0, 4
      la $a0, theEnd
      syscall
                      
.data
value1: .asciiz "Entre com o valor1: "
value2: .asciiz "Entre com o valor2: "
op: .asciiz "\nEntre com a operação que deseja, 1-Soma, 2-Subtração, 3-Divisão, 4-Multiplicação, 0-Sair \n"
result: .asciiz "\nResultado da escolha: "
invalid: .asciiz "\nNumero inserido invalido. Por favor tente um número válido :/"
theEnd: .asciiz "\nFim da Execução :)"