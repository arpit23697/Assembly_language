.data 
list: .space 20
mark: .word 4

str1 	: 	.asciiz "\n"

.text
main :
	li $s0 , 55
	li $s1 , 61
	li $s2 , 72
	li $s3 , 53


	la $t0 , list

	sw $s0 , ($t0)
	addi $t0 , $t0 , 4

	sw $s1 , ($t0)
	addi $t0 , $t0 , 4

	sw $s2 , ($t0)
	addi $t0 , $t0 , 4

	sw $s3 , ($t0)

lw $t1 , mark			#string the dimension of the array
la $t0 , list			#storing the address

li $t2 , 0			#string the counter

loop : 	beq $t1 , $t2 exit

	lw $t3 , ($t0)

	li $v0 , 1
	move $a0 , $t3	
	syscall

	li $v0 , 4
	la $a0 , str1
	syscall
	
	addi $t0 , $t0 , 4
	addi $t2 , $t2 , 1
	j loop


exit : li $v0 , 10
	syscall

