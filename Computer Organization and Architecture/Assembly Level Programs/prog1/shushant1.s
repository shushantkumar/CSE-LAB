#Shushant Kumar 16CO143

#Program to add 2 32bit integers 

#data section
.data

#text section
.text

#loading 32 bit number without using li

lui $t0,0x1234   #entering first 16bit integer (first 4 digits) 
ori $t0,$t0,0x5678   #doing 'or' operation to previously added 0x12340000

lui $t1,0x9876   #entering second 16bit integer (first 4 digits) 
ori $t1,$t1,0x5432  #doing 'or' operation to previously added 0x98760000

add $t0,$t0,$t1   #adding the values stored in t0 and t1

add $v0,$0,10   #exit
syscall

