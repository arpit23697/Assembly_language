.text
main :
	li $t0 , 4
	
 	rol $t0 ,$t0 , 16
	rol $t0 ,$t0 , 14


	ror $t0 ,$t0 , 14
	ror $t0 ,$t0 , 16

	li $v0 , 10
	syscall

