.text
main :
	li $t0 , 0x0eeffdd0
	
 	and $t0 ,$t0 , 0xf0000fff


	or $t3 , $t0 , 0x0bb00000
	or $t3 , $t3 , 0x000cc000

	li $v0 , 10
	syscall

