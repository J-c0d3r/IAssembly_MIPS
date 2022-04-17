.text

#Message major base
    li $v0, 4
    la $a0, majorBase
    syscall

#Getting major base
    li $v0, 5
    syscall
    add $t0, $v0, $0
    
#Message minor base
    li $v0, 4
    la $a0, minorBase
    syscall

#Getting minor base
    li $v0, 5
    syscall
    add $t1, $v0, $0

#Message height
    li $v0, 4
    la $a0, height
    syscall

#Getting height
    li $v0, 5
    syscall
    add $t2, $v0, $0
    
#Calculating area
    add $s0, $t0, $t1
    mul $s0, $s0, $t2
    div $s0, $s0, 2

#Showing result
    li $v0, 4
    la $a0, area
    syscall

    li $v0, 1
    add $a0, $s0, $0
    syscall

.data
majorBase: .asciiz "Entre com a base maior: \n"
minorBase: .asciiz "Entre com a base menor: \n"
height: .asciiz "Entre com a altura: \n"
area: .asciiz "A area do trapezio eh: \n"