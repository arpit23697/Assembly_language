.text
main :
	li $t0 , 0x0eeffdd0

	and $t1 ,$t0 ,  0x0ff00000
 	and $t2 ,$t0 , 0x00000ff0 

	srl $t1 , $t1 , 20
	srl $t2 , $t2 , 4

	li $v0 , 10
	syscall

