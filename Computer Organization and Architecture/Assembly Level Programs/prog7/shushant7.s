#Shushant Kumar 16CO143

#Program for matrix multiplication

#data section
.data

emsg1:	.asciiz  "Enter a of the matrix1 of order a*b : "
emsg2:	.asciiz  "Enter b for the matrix: "
emsg3:	.asciiz  "Enter c of the matrix2 of order b*c : "
amsg1:	.asciiz  "Enter elements of matrix1 a*b in row major order: \n"
amsg2:	.asciiz  "Enter elements of matrix2 b*c in row major order: \n"
nextline:	.asciiz  "\n"
fmsg:  .asciiz  "The resultant matrix after multiplication is: \n"

matrix1:  .align 2
          .space  400         #Memory allocation for matrix1
matrix2:  .align 2
          .space  400		  #Memory allocation for matrix2	
matrix3:  .align 2
		  .space  400		  #Memory allocation for resultant matrix


#text section	
.text	
.globl main
		
main: 	


	

	la $a0, emsg1
	li $v0, 4
	syscall
	li $v0, 5			#Accepting a 
	syscall
	move $t0, $v0       
	
	la $a0, emsg2
	li $v0, 4
	syscall
	li $v0, 5			#Accepting b
	syscall
	move $t1, $v0
	
	la $a0, emsg3
	li $v0, 4
	syscall
	li $v0, 5			#Accepting c
	syscall
	move $t2, $v0

	la $a0, amsg1
	li $v0, 4
	syscall
	
	mul $t4, $t0, $t1	
	
	li $t3, 0

	la $t7, matrix1   #loading address of matrix1 
	la $t8, matrix2   #loading address of matrix2
	la $t9, matrix3   #loading address of matrix3	

eloop1:	beq $t3, $t4, exit1			#Accepting matrix1
		li $v0, 5
		syscall
		sw $v0, 0($t7)
		addi $t7, $t7, 4
		addi $t3, $t3, 1
		j eloop1 			
exit1:	



	la $a0, amsg2
	li $v0, 4
	syscall
	
	mul $t4,$t1, $t2
	li $t3, 0
	

eloop2:	beq $t3, $t4, exit2			#Accepting matrix2
		li $v0, 5
		syscall
		sw $v0, 0($t8)
		addi $t8, $t8, 4
		addi $t3, $t3, 1
		j eloop2 	
		
exit2:
	

	li $t3, 0
	mul $t4, $t0, $t2
	li $v0, 0


eloop3:	beq $t3, $t4, exit3			#Initializing all matrix3 elements to be 0
		sw $v0, 0($t9)
		addi $t9, $t9, 4
		addi $t3, $t3, 1
		j eloop3 			
exit3:	

	move $a0, $t0				#Sending a to function
	move $a1, $t1				#Sending b to function
	move $a2, $t2				#Sending c to function

	jal mulmatrix				#function call
	
	
	la $a0, fmsg
	li $v0, 4
	syscall
	

	li $t3, 0				
	mul $t4, $t0, $t2
	


putin:	beq $t3, $t4, puto		#Displaying final matrix
		
		lw $a0, ($t9)
		li $v0 1
		syscall
		la $a0, nextline
		li $v0, 4
		syscall
		
		addi $t9, $t9, 4
		addi $t3, $t3, 1
		j putin 	
		
puto:

	
	
	li $v0, 10 			#end of the program
	syscall
	
	
	
	
	
	
	
	

mulmatrix:
	

	la $t7, matrix1
	la $t8, matrix2
	la $t9, matrix3
	
	move $t0, $a0
	move $t1, $a1
	move $t2, $a2
	

	li $t3, 0
	li $t4, 0
	li $t5, 0

		
	

mul1:	beq $t3, $t0, mout1				#loop1 begins

		mul $s6,$t3, $t1
		
		sll $s6, $s6, 2
		li $t4, 0
		

		mul $s5,$t3, $t2
	
		sll $s5, $s5, 2
		

		

		mul2: beq $t4, $t2, mout2		#loop2 begins
			   li $t5, 0	
			   

			   mul3: beq $t5, $t1, mout3		#loop3 begins
			   
			   		 	
					  mul $a1,$t5, $t2         #finding a*k
					  sll $a1, $a1, 2          


					  add $t7, $t7, $s6        
					  sll $a2, $t5, 2
					  add $t7, $t7, $a2     #traversing ahead in matrix 1
			
					  

					  add $t8, $t8, $a1
					  sll $a2, $t4, 2
					  add $t8, $t8, $a2     #traversing ahead in matrix 2
					  
					  

					  lw $s0, 0($t7)
					  lw $s1, 0($t8)
					  mul $s3, $s1, $s0
					  
					  

					  add $t9, $t9, $s5
					  sll $a2, $t4, 2
					  add $t9, $t9, $a2     #traversing ahead in matrix 3
			   		  

			   		  lw $s4, 0($t9)
			   		  add $s4, $s4, $s3
			   		  sw $s4, 0($t9)        #storing the result in matrix 3
			   		  
				      la $t7, matrix1
					  la $t8, matrix2
					  la $t9, matrix3
			   		  
			   		  addi $t5, $t5, 1
			   		  
			   		  j mul3	
			   		
			   mout3: addi $t4, $t4, 1
			 	   	 j mul2
				  
		mout2:  addi $t3, $t3, 1
			   j mul1	  
					
mout1:

	
	jr $ra						#returning back to main

	
	
