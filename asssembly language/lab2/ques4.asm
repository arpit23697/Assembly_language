

.text
main :

	li $s0 , 0
	li $s1 , 1
	li $s2 , 2
	li $s3 , 3
	li $s4 , 4
	li $s5 , 5
	li $s6 , 6
	li $s7 , 7

	li $t5 , 4 

	

	
	addi $sp , $sp , -4
	sw $s0 , ($sp)	
	addi $s0 , $s0 , 1

		
	addi $sp , $sp , -4
	sw $s1 , ($sp)	
	addi $s1 , $s1 , 1

	
	addi $sp , $sp , -4
	sw $s2 , ($sp)	
	addi $s2 , $s2 , 1	

	addi $sp , $sp , -4
	sw $s3 , ($sp)	
	addi $s3 , $s3 , 1	

	addi $sp , $sp , -4
	sw $s4 , ($sp)	
	addi $s4 , $s4 , 1


	
	addi $sp , $sp , -4
	sw $s5 , ($sp)	
	addi $s5 , $s5 , 1
	
	addi $sp , $sp , -4
	sw $s6 , ($sp)	
	addi $s6 , $s6 , 1

		
	addi $sp , $sp , -4
	sw $s7 , ($sp)	
	addi $s7 , $s7 , 1




	
	lw $t2 , ($sp)
	add  $s7 , $t2 , $s7
	addi $sp , 4

		
	lw $t2 , ($sp)
	add  $s6 , $t2 , $s6
	addi $sp , 4
	
	lw $t2 , ($sp)
	add  $s5 , $t2 , $s5
	addi $sp , 4
	
	lw $t2 , ($sp)
	add  $s4 , $t2 , $s4
	addi $sp , 4
	
	lw $t2 , ($sp)
	add  $s3 , $t2 , $s3
	addi $sp , 4
	
	lw $t2 , ($sp)
	add  $s2 , $t2 , $s2
	addi $sp , 4
	
	lw $t2 , ($sp)
	add  $s1 , $t2 , $s1
	addi $sp , 4
	
	lw $t2 , ($sp)
	add  $s0 , $t2 , $s0
	addi $sp , 4
		





	

exit : li $v0 , 10
	syscall

