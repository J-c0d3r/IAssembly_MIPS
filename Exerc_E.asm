.text

addi $s0, $0, 0
addi $s1, $0, 0
addi $s2, $0, 0

Loop: 
     li $v0, 4
     la $a0, candidates
     syscall
     
     li $v0, 5
     syscall          

     beqz $v0, Exit
       beq $v0, 1, Joao
         beq $v0, 2, Jose
	   beq $v0, 3, Maria
	     li $v0, 4
	     la $a0, invalid
	     syscall
	     j Loop

     Joao: addi $s0, $s0, 1
           j Loop
           
     Jose: addi $s1, $s1, 1
      	   j Loop
      	   
     Maria: addi $s2, $s2, 1
            j Loop           

Exit: 
     li $v0, 4
     la $a0, candidate1
     syscall
     
     li $v0, 1
     add $a0, $s0, $0
     syscall
     
     li $v0, 4
     la $a0, candidate2
     syscall
     
     li $v0, 1
     add $a0, $s1, $0
     syscall
     
     li $v0, 4
     la $a0, candidate3
     syscall
     
     li $v0, 1
     add $a0, $s2, $0
     syscall        
     
     li $v0, 4
     la $a0, theEnd
     syscall
     

.data
candidates: .asciiz "Escolha um cadidato 1-João, 2-José, 3-Maria, 0-Sair \n"
candidate1: .asciiz "\nJoão teve um total de votos de "
candidate2: .asciiz "\nJosé teve um total de votos de "
candidate3: .asciiz "\nMaria teve um total de votos de "
invalid: .asciiz "Candidato Invalido. :/ Por favor insira um cadidato valido.\n"
theEnd: .asciiz "\nFim da Execução :)"
