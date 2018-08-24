#this program is to check wether the given triangle is right angled or not if it is then compute the area

#data segment
.data
str1 : .asciiz "Enter the value of the base of the triangle : "
str2 : .asciiz "Enter the value of the height of the triangle : "
str3 : .asciiz "Enter the value of the hypoteanuse of the triangle : "
str4 : .asciiz "\nThe triangle is not a right angled triangle"
str5 : .asciiz "\nThe area of the triangle is : " 
str6 : .asciiz "\nThe triangle is a right angled triangle"

#text segment
.text
.globl txt

main :

#taking the base as the input
	la $a0 , str1
	li $v0 , 4
	syscall

	li $v0 , 6
	syscall
	mov.s $f3 , $f0

#taking the height as the input
	la $a0 , str2
	li $v0 , 4
	syscall

	li $v0 , 6
	syscall
	mov.s $f1 , $f0

#taking the base as the input
	la $a0 , str3
	li $v0 , 4
	syscall

	li $v0 , 6
	syscall
	mov.s $f2 , $f0

#calling the function
	jal isRight

#if the triangle is not a right angled triangle
	bne $s0 , $0 , noRight
	#prining that it is right angled triangle 	
		la $a0 , str6
		li $v0 , 4
		syscall

	#computing the area
		jal Area
		j exit	
		
	#if it is not a right angled triangle then just printing the string
	noRight : la $a0 , str4
		li $v0 , 4
		syscall
	
		j exit

	#exitting the program
	exit:  li $v0 , 10
	syscall

isRight : addi $sp , $sp , -4
	sw $ra , ($sp)
	
	#computing the value of a^2 + b^2
	#using the register $f5 for that
	
		mul.s $f5 , $f3 , $f3
		mul.s $f6 , $f1 , $f1
		add.s $f5 , $f5 , $f6

	#computing the value of c^2
	#using the register $f6 for this purpose
		mul.s $f6 , $f2 , $f2

	#checking if they are equal or not
		c.eq.s $f5 , $f6
		bc1f compare

	#if the values are not equal then setting $s0 as 0
		li $s0 , 0
		lw $ra , ($sp)
		addi $sp , $sp , 4
		jr $ra

	#if the values are equal then setting $s0 as 1
		compare : li $s0 , 1
		lw $ra , ($sp)
		addi $sp , $sp , 4
		jr $ra

Area : addi $sp , $sp , -4
	sw $ra , ($sp)

	#computing the area
	li.s $f7 , 2.0
	mul.s $f4 , $f1 , $f3
	div.s $f4 , $f4 , $f7

	#printing the area
		la $a0 , str5
		li $v0 , 4
		syscall
	
	#printing the area
	mov.s $f12 , $f4
	li $v0 , 2
	syscall
	

	lw $ra , ($sp)
	addi $sp , $sp , 4
	jr $ra



