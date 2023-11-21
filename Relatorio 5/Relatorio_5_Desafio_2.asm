.text

li $v0, 4
la $a0, age
syscall

li $v0, 5
syscall

add $s0, $v0, 30

li $v0, 4
la $a0, showAge
syscall

li $v0, 1
add $a0, $s0, $0
syscall

.data
age: .asciiz "\nEntre com a sua idade: "
showAge: .asciiz "\nSua idade daqui a 30 anos é: "
