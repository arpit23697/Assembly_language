#this program takes two numbers as the input and then perform the addition , difference , multipication and division and display it on the console


.data
str1 	: 	.asciiz "\nPlease enter the first number :"
str2 	:	.asciiz "\nPlease enter the second number :"
str3 	: 	.asciiz "\nThe addition is : "
str4 	: 	.asciiz "\nThe difference is : "
str5 	: 	.asciiz "\nThe product is : "
str6 	: 	.asciiz "\nThe division (quotient) is : "
str7 	: 	.asciiz "\nThe Remainder of the division is : "

.text
main :
	#printing the string asking for the name
	li $v0 , 4
	la $a0 , str1
	syscall

	#taking the value of the integer
	li $v0 , 5
	syscall

	move $t0 , $v0			#storing the first number in t0

	#printing the string asking for the name
	li $v0 , 4
	la $a0 , str2
	syscall
	

	#taking the value of the integer
	li $v0 , 5
	syscall

	move $t1 , $v0			#storing the first number in t0
	
	#performing all the operations
	add $t2 , $t0 , $t1
	sub $t3 , $t0 , $t1
	mult $t0 , $t1
	
	mfhi $t4 
	mflo $t5

	div $t0 , $t1
	mfhi $t6
	mflo $t7
	

	#outputing the result
	li $v0 , 4
	la $a0 , str3
	syscall
	
	li $v0 , 1
	move $a0 , $t2
	syscall

	###############
	#outputing the result
	li $v0 , 4
	la $a0 , str4
	syscall
	
	li $v0 , 1
	move $a0 , $t3
	syscall

	#######################
	#outputing the result
	li $v0 , 4
	la $a0 , str5
	syscall
	
	li $v0 , 1
	move $a0 , $t4
	syscall

	#outputing the result
	li $v0 , 4
	la $a0 , str5
	syscall
	

	li $v0 , 1
	move $a0 , $t5
	syscall

	###############
	#outputing the result
	li $v0 , 4
	la $a0 , str6
	syscall
	
	li $v0 , 1
	move $a0 , $t7
	syscall

	###############
	#outputing the result
	li $v0 , 4
	la $a0 , str7
	syscall
	
	li $v0 , 1
	move $a0 , $t6
	syscall	


	li $v0 , 10
	syscall


	
