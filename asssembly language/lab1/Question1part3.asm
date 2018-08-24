.data

.text
.globl main

main :
	li $t0, 0xFFFFFFFF
	li $t1, 0xFFFFFFFF
	li $t2, 0xFFFFFFFF
	li $t3, 0xFFFFFFFF
	li $t4, 0xFFFFFFFF
	li $t5, 0xFFFFFFFF
	li $t6, 0xFFFFFFFF
	li $t7, 0xFFFFFFFF
	li $t8, 0xFFFFFFFF
	li $t9, 0xFFFFFFFF
	
	li $s0, 0xAAAAAAAA
	li $s1, 0xAAAAAAAA
	li $s2, 0xAAAAAAAA
	li $s3, 0xAAAAAAAA
	li $s4, 0xAAAAAAAA
	li $s5, 0xAAAAAAAA
	li $s6, 0xAAAAAAAA
	li $s7, 0xAAAAAAAA


li $v0, 10
syscall
