.data
vetor: .word

.text
## Storing in the registers
li $t0,0x10
li $t1,0x20
li $t2,0x30
li $t3,0x40
la $t4,vetor

## Storing in the memory locations
sw $t0,16($t4)
sw $t1,4($t4)
sw $t2,4($t4)
sw $t3,8($t4)
