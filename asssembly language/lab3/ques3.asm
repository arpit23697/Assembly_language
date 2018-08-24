.data
num1 : .word 5
num2 : .word 7


.text
main :

lw $t1, num1
lw $t1, num2
lw $t2, num2
add $t3, $t1, $0
add $t4, $t1, $0

li $v0 , 10
syscall


