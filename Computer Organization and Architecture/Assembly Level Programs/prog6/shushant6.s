# Shushant Kumar 16CO143

#Program to find sum and average of the elements of the array using functions

#data section
.data
msg1: .asciiz "Enter the size of the array: "
msg2: .asciiz "Enter the array elements:\n "
msg3: .asciiz "The sum of the elements in the array is: "
msg4: .asciiz "\nThe average of the array is(floored value): "
array: .align 2
       .space 400 		#assigning space array

#text section
.text
.globl main
main:

	la      $a0, msg1
    li      $v0, 4
    syscall

    li		$v0, 5    	#reading the size of the array
    syscall
    move $t2, $v0

    la      $a0, msg2
    li      $v0, 4
    syscall

    la 		$t0, array
    li 		$t1, 0

    loopread:				#loop to read elements into the array
    beq 	$t1, $t2, endread
	li 		$v0, 5
	syscall
	sw 		$v0, 0($t0)
	addi 	$t1, $t1, 1
	addi 	$t0, $t0, 4

	j loopread

	endread:
		add 	$a0, $0, $t2    #setting a0 to array length
		la 		$a1, array
		jal sum					#calling function sum
		j end
	sum:
		addi $v0, $0, 0 		#setting sum to be initially 0
		loop: 
			beq 	$a0, $0, done 
			lw 		$t3, 0($a1) 	
			add 	$v0, $v0, $t3 	#adding array elements to the sum
			addi 	$a1, $a1, 4 	#incrementing array element location	
			addi 	$a0, $a0, -1 	#decrementing counter
			j loop 
			done: 
				jr $ra

	end: 
		move $t4, $v0
		div $t4,$t2				#finding average
		mflo $t2
    	
		la      $a0, msg3
    	li      $v0, 4
    	syscall

    	add		$a0,$0,$t4
    	li		$v0, 1			#printing sum of the array
    	syscall

    	la      $a0, msg4
    	li      $v0, 4
   	 	syscall
	
		add		$a0,$0,$t2		#printing the average of the elements of the array
    	li		$v0, 1
    	syscall

    	li 		$v0, 10			#exit
    	syscall