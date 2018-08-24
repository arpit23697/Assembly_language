.data 
cgpa: .float 9.00 9.30 9.52 10.00

.text
main :

	li  $t2 , 4 		#for the dimension , it stores the size of the floating point array
	la  $t0 , cgpa		#for the address , address of the array

	li  $t3 , 0 		#setting the counter 
	li.s $f0 , 0.0	#initialising the sum to 0 in $f0
	li.s $f1 , 1.0 	#initialize the product
	l.s $f3 , ($t0) 	#initialise the max to the first value
	l.s $f4 , ($t0)	#initialise the min to the first value

loop2 : beq $t3 , $t2, part2
	l.s $f5 , ($t0)
	add.s $f0 , $f5 , $f0
	mul.s $f1 , $f5 , $f1

	#updating the values
	addi $t0 , $t0 , 4
	addi $t3 , $t3 , 1

	#here we are actually comparing the code
	c.lt.s $f5 , $f3
	bc1f compare1

	c.lt.s $f5 , $f4
	bc1f compare2
	

	compare1 : mov.s $f3 , $f5
 		j loop2

	compare2 : mov.s $f4 , $f5
		j loop2
		
	j loop2

part2 : li.s $f5 , 4.0
	div.s $f2 , $f0 , $f5 
	

exit : li $v0 , 10
	syscall

