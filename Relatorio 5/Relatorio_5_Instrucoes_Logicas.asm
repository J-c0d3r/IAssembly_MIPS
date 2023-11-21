
.text

## Question 1
li $t0, 10
li $t1, 25
li $t2, 43
li $t3, 89

srl $s0, $t0, 8
srl $s1, $t1, 8
srl $s2, $t2, 8
srl $s3, $t3, 8

sll $s4, $t0, 4
sll $s5, $t1, 4
sll $s6, $t2, 4
sll $s7, $t3, 4

## Question 2
li $t4, 324
li $t5, 100
li $t6, 2018
li $t7, 1970
li $t0, 33
li $t1, 66

and $s0, $t4, $t5
and $s1, $t6, $t7
and $s2, $t0, $t1

## Question 3
or $s0, $t4, $t5
or $s1, $t6, $t7
or $s2, $t0, $t1

## Question 4
nor $s0, $t4, $t5
nor $s1, $t6, $t7
nor $s2, $t0, $t1

.data