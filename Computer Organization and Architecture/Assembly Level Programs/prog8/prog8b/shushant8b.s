#Shushant Kumar 16CO143

#Program to find factorial using recursions

#data section
.data

msg:  .asciiz "     Using Recursion"
msg1: .asciiz "\nEnter the number: "
msg2: .asciiz "\nFactorial of the number is: "

#text section
.text
.globl main
main:
    
    la      $a0, msg
    li      $v0, 4
    syscall


    la      $a0, msg1
    li      $v0, 4
    syscall

    li      $v0, 5          #reading number from user
    syscall
    move $a0, $v0

    jal fact                #calling recursive function
    move $t0, $v0

    la      $a0, msg2
    li      $v0, 4
    syscall

    addi $a0, $t0, 0        #printing the factorial
    li $v0,1
    syscall

    li $v0, 10              #exit
    syscall  



fact:
    
    beq $a0, 1, if1         #condition for a0 to be 1
    j not1
    if1:
        li $v0, 1           #if 1 then start folding
        jr $ra
    not1:
        sub $sp, $sp, 8        #initialising space in stack memory 
        sw $a0, 0($sp)         #storing n
        sw $ra, 4($sp)         #stotring previous ra value
        sub $a0, 1             #decrementing counter
        jal fact               #calling function under same function
        lw $a0, 0($sp)         #folding stacks
        lw $ra, 4($sp)
        mul $v0, $v0, $a0
        addi $sp, $sp, 8       #reverting back the initialized stack pointer
        jr $ra
