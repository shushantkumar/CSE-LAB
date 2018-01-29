# 2.Loading and adding integers using global pointer 

#data section 
.data
a: .word 0x11111111, 0x22222222         #declaring 2 32bit numbers

#text section
.text
.globl main
main:   
        
	la $t0,a                    #loading address in t0
	lw $t1,0($t0)				#loading number1 in t1
	lw $t2,4($t0)				#loading number2 in t2
	sw $t1,0($gp)				#storing number1 at global pointer address	
	sw $t2,0xffff8000($gp)		#storing number2 at beginning of data section
	
	add $t0,$t1,$t2
	sw $t0,0xffff8400($gp)		#storing sum at 100th word location from beggining of the data segment
	
	addi $a0, $t0, 0			#displaying sum
	li $v0, 1   
	syscall 

	addi $v0, $0, 10   			#exit
	syscall 
