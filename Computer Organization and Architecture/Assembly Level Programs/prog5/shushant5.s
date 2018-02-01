# Shushant Kumar 16CO143

#Program to reverse a string

#data section
.data
msg1: .asciiz " String is : "
string: .asciiz "Nitk Surathkal"				#Actual string
nextline: .asciiz "\n"
reversed: .asciiz " The reversed string is : " 

#text section
.text
.globl main
main:

la      $a0, msg1     
li      $v0, 4
syscall

la      $a0, string        
syscall

la      $a0, nextline    
syscall

li      $t2, 0

li $t0,0			#setting the beginning of the string to t0 counter (counter from beginning)
li $t1,13			#setting the end of the string to t1 counter (counter from end)

rev:				 #loop to revrese the string
bgt $t0,$t1,end		 #checks until both the counters equals
lb $t2,string($t0)	 #Reading the string element by t0 counter and storing in t2	
lb $t3,string($t1)   #Reading the string element by t1 counter and storing in t3
sb $t3,string($t0)   #Exchanging the values
sb $t2,string($t1)	 #Exchanging the values
addi $t0,$t0,1		 #Incrementing t0
addi $t1,$t1,-1		 #Decrementing t1	
j rev
end:

li $v0,4
la $a0, reversed        
syscall

la $a0,string       #Printing the reversed string
syscall

li $v0, 10              #exit
syscall