#Shushant Kumar 16CO143

#Program to find factorial using loops

#data section
.data	
msg1: .asciiz "\nEnter the number: "
msg2: .asciiz "\nFactorial of the number is: "

#text section
.text
.globl main

main: 
	li $v0, 4
	la $a0, msg1
	syscall
	
	
	li $v0, 5			#taking number from the user
	syscall
	add $a0, $v0, $0

	jal fact			#calling function

	add $t0, $v0, $0

	
	li $v0, 4
	la $a0, msg2
	syscall
	
			
	li $v0, 1
	add $a0, $0, $t0	#displaying factorial
	syscall
	
	li $v0,10			#exit
	syscall

fact:
	li $v0, 1			#sum=1
	li $t1, 1  			#counter=1
	loop: 			
	bgt $t1, $a0, end	 
	mul $v0, $v0, $t1     	#multiplying and adding in next line to t1
	addi $t1, $t1, 1 		
	j loop		
		end:	
	jr  $ra				#returning to main