.data
str1 	: 	.asciiz "\nPlease enter the value of the float : "
str2 	:	.asciiz "\nThe Float value is : "

.text
main :
	#printing the string asking for the name
	li $v0 , 4
	la $a0 , str1
	syscall


	
	#taking the value of the integer
	li $v0 , 6
	syscall

	#moving the value from v0 to t0
	mov.s $f1 , $f0

	#printing the string with the name
	li $v0 , 4
	la $a0 , str2
	syscall

	
	#printing the name
	li $v0 , 2
	mov.s $f12 , $f0
	syscall

	
	li $v0 , 10
	syscall


	
