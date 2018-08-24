.text
main :
	li $t0 , 0x0eeffdd0

	
 	and $t2 ,$t0 , 0x00ff000 

	srl $t2 , $t2 , 12

	li $v0 , 10
	syscall

