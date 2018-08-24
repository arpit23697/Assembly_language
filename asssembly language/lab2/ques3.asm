.data 
age: .word 6 , 12 , 45 , 21 , 12 ,  7

.text
main :

	lw  $t2 , age 		#for the dimension
	la  $t0 , age		#for the address

	li  $t3 , 0 		#setting the counter 
	li $t1 , 0

loop2 : beq $t3 , $t2 part3
	lw $t5 , ($t0)
	add $t1 , $t1 , $t5 
	addi $t0 , $t0 , 4
	addi $t3 , $t3 , 1	
	j loop2

part3 : li $v0 , 1
	move $a0 , $t1	
	syscall

	

exit : li $v0 , 10
	syscall

