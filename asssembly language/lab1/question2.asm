.data
	str1: .ascii "123456789abcdef"
	str2: .ascii "123456789ABCDEF"
	str3: .asciiz "123456789abcdef"
	str4: .asciiz "123456789ABCDEF"
	
.text

	la $t0 ,str1
	la $t1 ,str2
	la $t2 ,str3
	la $t3 ,str4


li $v0, 10
syscall

	


