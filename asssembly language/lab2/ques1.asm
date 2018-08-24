
.data
str1 	: 	.asciiz "A is less than B \n"
str2 	:	.asciiz "B is less than A \n"
str3 	: 	.asciiz "A is less than B unsigned \n"
str4 	: 	.asciiz "B is less than A unsigned \n"



.text
main :
	
	li $s0 , 0xffffffff
	li $s1 , 0x0000000f


	slt $t0 , $s0 , $s1

	beq $t0 , $0 , case2
	bne $t0 , $0 , case1
	

	#printing the string asking for the name
case1 :	li $v0 , 4
		la $a0 , str1
		syscall
		j part2

case2 : li $v0 , 4
		la $a0 , str2
		syscall
		j part2



part2 : sltu $t0 , $s0 , $s1

	beq $t0 , $0 , case4
	bne $t0 , $0 , case3

case3 :	li $v0 , 4
		la $a0 , str3
		syscall
		j exit

case4 : li $v0 , 4
		la $a0 , str4
		syscall
		j exit


exit : li $v0 , 10
	syscall
