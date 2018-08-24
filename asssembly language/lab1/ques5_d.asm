.data
str1 	: 	.asciiz "The product is :"
str2 	: 	.asciiz "\nThe division is : "

.text
main :


	li $t0 , 8	
	li $t1 , 4

	li $t6 , 2

	sll $t2 , $t0 , $t6
	srl $t3 , $t0 , $t6

	#outputing the result
	li $v0 , 4
	la $a0 , str1
	syscall
	
	li $v0 , 1
	move $a0 , $t2
	syscall

	#outputing the result
	li $v0 , 4
	la $a0 , str2
	syscall
	
	li $v0 , 1
	move $a0 , $t3
	syscall

	

	li $v0 , 10
	syscall



