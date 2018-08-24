#sample1.asm
.text
addi $t1, $zero, 97  #Can also be written as addi $9, $0, 97
addi $t2, $t1 , 45   #this is going to add the number to t2
li $v0, 10
syscall
