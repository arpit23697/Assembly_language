#this function computes the determinant of the matrix
.data
array : .word 6 3 
        .word 4 5

.text
main :
     li $a0 , 2			#this going to access the col size

     li $t1 , 0
     li $t2 , 0
     jal access 
	move $a1 , $v0

	li $t1 , 0
     	li $t2 , 1
     jal access 
	move $a2 , $v0

	li $t1 , 1
     li $t2 , 0
     jal access 
	move $a3 , $v0

	li $t1 , 1
     li $t2 , 1
     jal access 
	move $t4 , $v0

	mul $t0 , $t4 , $a1
	mul $t1 , $a2 , $a3
	sub $t0 , $t0 , $t1

li $v0 , 10
syscall

access :
	addi $sp , $sp , -4
	sw $t3 , ($sp)

	la $t0 , array
	mul $t4	, $t1  , $a0			#t4 is going to have the value of the address
	add $t4 , $t4 , $t2
	li $t5 , 4	
	mul $t4 , $t4 , $t5
	add $t4 , $t0 , $t4
	
	
	lw $v0 , ($t4)
	
	  lw $t3 , 0 ($sp)		#taking the previous values
	  addi $sp , $sp , 4	#Moving the stack pointer
		jr $ra				#return the value	
