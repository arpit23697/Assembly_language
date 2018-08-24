.data 			#declaration of the data
roll_no 	:	.word 11601031
name 		: 	.asciiz "\n my roll number is \n"

#start of the main code
.text

main :
	li $v0 , 4
	la $a0 , name 
	syscall

	li $v0 , 1
	lw $a0 , roll_no
	syscall

	li $v0 , 10
	syscall

