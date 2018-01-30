# Shushant Kumar 16CO143

#Program to print "Hello World" on output screen

#data section
.data
pr: .asciiz "Hello World"  #ASCII String Data declaration

#text section
.text
.globl main

main:
add $v0,$0,4    #To print the string
la $a0,pr       #Storing address of pr in $a0
syscall

add $v0,$0,10   #Exit
syscall
