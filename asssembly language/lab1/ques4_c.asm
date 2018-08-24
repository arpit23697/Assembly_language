.data
str1 	: 	.asciiz "\nPlease enter your name : "
str2 	:	.asciiz "\nPlease enter your roll number : "
str3 	: 	.asciiz "\n My roll number is : "
str4 	: 	.asciiz "\n My name is : " 
name 	:	.space 16


.text
main :
	#printing the string asking for the name
	li $v0 , 4
	la $a0 , str1
	syscall

	#scanning the string

	li $v0 , 8
	la $a0 , name
	li $a1 , 6;
	syscall

	#printing the string asking for the roll number
	li $v0 , 4;
	la $a0 , str2
	syscall

	
	#taking the value of the integer
	li $v0 , 5
	syscall

	#moving the value from v0 to t0
	move $t0 , $v0

	#printing the string with the name
	li $v0 , 4
	la $a0 , str4
	syscall

	
	#printing the name
	li $v0 , 4
	la $a0 , name
	syscall

	#printing the string for the roll number
	li $v0 , 4
	la $a0 , str3
	syscall

	#Printing the roll number
	li $v0 , 1
	move $a0 , $t0
	syscall

	
	li $v0 , 10
	syscall


	
