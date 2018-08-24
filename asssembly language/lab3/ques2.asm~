.data
str1 : .asciiz "Enter the value of n : "


.text
main : 
	#printing the string asking for the name
	li $v0 , 4
	la $a0 , str1
	syscall

	#taking the value of the integer
	li $v0 , 5
	syscall

	#moving the value from v0 to t0
	move $t0 , $v0				#from now on $to have the value of the register
	addi $t0 , $t0 , 1

	li $t1 , 0				#to store the answer
	li $t2 , 0 				#to act as the counter
	li $t5 , 0

loop2 : beq $t2 , $t0 , exit
	addi $t5 , $t5 , 1	
	mul $t3 , $t2 , $t2
	addi $t2 , $t2 , 1
	j loop2
	add $t1 , $t1 , $t3


exit : li $v0 , 10
	   syscall
