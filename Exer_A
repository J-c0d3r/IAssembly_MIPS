.text

#Message to get value A
    li $v0, 4
    la $a0, valueA
    syscall

#To get value A
    li $v0, 5
    syscall
    add $s0, $v0, $0

#Message to get value B
    li $v0, 4
    la $a0, valueB
    syscall

#To get value B
    li $v0, 5
    syscall
    add $s1, $v0, $0

#Change values
    add $t0, $s0, $0
    add $s0, $s1, $0
    add $s1, $t0, $0

#Show values changed
    li $v0, 4
    la $a0, changedValueA
    syscall
    
    li $v0, 1
    add $a0, $s0, $0
    syscall
    
    li $v0, 4
    la $a0, changedValueB
    syscall
    
    li $v0, 1
    add $a0, $s1, $0
    syscall

.data
valueA: .asciiz "Entre com o valor de A: "
valueB: .asciiz "Entre com o valor de B: "
changedValueA: .asciiz "Valor de A trocado: "
changedValueB: .asciiz "\nValor de B trocado: "
