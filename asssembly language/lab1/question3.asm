.data
	str1: .ascii "123456789abcedef"
	str2: .ascii "123456789ABCDEF"

.text
.globl main

main :
	la $s0 , str1
	la $s2 , str2
	
	lb $t0 , 0($s0)
	lb $t1 , 1($s0)
	lb $t2 , 2($s0)
	
	sb $t3 , 12($s2)
	sb $t4 , 13($s2)
	sb $t5 , 14($s2)

	lh $t6 , 0($s0)
	lh $t7 , 2($s0)

	sh $t8 , 12($s2)

	lw $t9 , 12($s2)
	sw $s1 , 12($s0)
	

li $v0, 10
syscall

	


