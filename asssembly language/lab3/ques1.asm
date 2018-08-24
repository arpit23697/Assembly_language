//This function computes the x to the power y using the procedure call
.text
main :

	li $t0 , 10 		#storing the value of x in $t0
	li $t1 , 2		#storing the value of  y in $t1

	li $t2 , 1
	jal power
	move $t3 , $v0	

exit : li $v0 , 10
	   syscall

power :
	addi $sp , $sp , -4
	sw $t3 , ($sp)

	li $t4 , 0							#computing the answer
	loop2 : beq $t0 , $t3 ,  end
			mul $t2 , $t2 , $t1
			addi $t3 , $t3 , 1
			j loop2

	end : move $v0 , $t3
		  lw $t0 , 0 ($sp)		#taking the previous values
		  addi $sp , $sp , 4	#Moving the stack pointer
		  jr $ra				#return the value
