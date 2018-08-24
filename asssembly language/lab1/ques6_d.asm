.text
main :
	li $t0 , 0x0eeffdd0
	
 	and $t0 ,$t0 , 0xfffffff0


	or $t4 , $t0 , 0x00000001
	

	li $v0 , 10
	syscall

