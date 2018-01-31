# Shushant Kumar 16CO143

#Program to find sum of array of size 10 containing two digit numbers

#data section
.data
arr: .word  11, 12, 13, 14, 15, 16, 17, 18, 19, 20

msg: .asciiz "Sum of the array elements is : " 

#text section
.text 
.globl main 
  
# t0 is the counter 
# t1 stores the sum 
# t2 is constant 10, the size of the array 
# t3 accesses the address of array elements 

main: 
addi $t0, $0, 0   # setting our index to 0 
addi $t1, $0, 0   # initializing sum to 0
addi $t2, $0, 10  # initializing t2 to its constant value 10 
la   $t3, arr     #loading address of first element of array 

# loop to calculate the sum 
loop: 
beq $t0, $t2, end # comparing counter with 10. If equals exi, else continue.
lw  $t4, 0($t3)   # loading current array element in temporary variable $t4 
add $t1, $t1, $t4 # adding the array element to sum 
add $t0, $t0, 1   # increment counter 
add $t3, $t3, 4   # increment current array element pointer 
j loop 

end:   
add $v0, $0, $t1   # added the sum to $v0 

la      $a0, msg   #displaying sum
li      $v0, 4
syscall

add      $a0, $t1, $0    #displaying sum
li      $v0, 1
syscall

add $v0,$0,10	   #exit
syscall 
