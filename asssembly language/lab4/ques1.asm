#this is inorder to design the temperature control system
.data
error : .space 1000
str1 : .asciiz "Enter the outside temperture for different polls : "
str3 : .asciiz "Error : "
str2 : .asciiz "\n"
.text
main :

	#moving the value to the appropriate register
	li $s0 , 20 				#this one stores the value of the current room temperature 

	la $t0 , error				#this one stores the address of the array
	li $s1 , 1 
	li $s2 , 20				#this one is for storing the previous error	
	li $t5 , 0
loop : 	beq $s1 , $0 part2
	
	#printing the string asking for the name
	li $v0 , 4
	la $a0 , str1
	syscall

	#taking the value of the integer
	li $v0 , 5
	syscall

	move $t1 , $v0
	
	#computing the error
	sub $t2 , $t1 , $s0
	
	sw  $t2 ,($t0) 
	addi $t0 , $t0 , 4
	addi $t5 , $t5 , 1
	beq $t1 $s2 part
	move $s2 , $t1
	j loop

	part : li $s1 , 0
	j loop

part2 :#lw $t1 , error			#string the dimension of the array
la $t0 , error		#storing the address

li $t2 , 0			#string the counter

loop2 : beq $t5 , $t2 exit

	lw $t3 , ($t0)

		
	#printing the string asking for the name
	li $v0 , 4
	la $a0 , str3
	syscall

	li $v0 , 1
	move $a0 , $t3	
	syscall


	li $v0 , 4
	la $a0 , str2
	syscall
	
	addi $t0 , $t0 , 4
	addi $t2 , $t2 , 1
	j loop2

exit : li $v0 , 10
	syscall
