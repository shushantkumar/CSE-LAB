//1 Bit ALU Main File
//Shushant Kumar 16CO143
//Anmol Horo 16CO206


module alu(a,b,ainvert,binvert,carryin,op,result,cout,z,flag2);
input a,b,ainvert,binvert,carryin;                                  //Inputs 
input [1:0] op;                                                     //Inputs
output reg result,cout,z;	                                          //Outputs
output flag2;                                                       //Output flag2

wire a1,b1;
assign a1 = (a & ~ainvert) | (~a & ainvert);                        //When ainvert=0 => a1=a and ainvert=1 => a1=~a
assign b1=(b & ~binvert) | (~b & binvert);                          //When binvert=0 => b1=b and binvert=1 => b1=~b
assign flag2= a&(~b);                                               //Calculating Flag2 which is true only for a=1,b=0
  
  always @ (*)
  begin
    if(op==0)                                                       //AND or NOR operation of a and b depending on value of 
    result=a1&b1;                                                   //ainvert and binvert
    else if(op==1)                                                  //NAND or OR operation of a and b depending on value of 
      result=a1|b1;                                                 //ainvert and binvert
    else if(op==2)
      begin
        result = a1^b1^carryin;                                     //ADDITION or SUBTRACTION depending on carryin
        cout = ( ((a1 ^ b1) & carryin) | ( a1 & b1 )  );
      end
    if(result == 0)
      z=1;                                                           //setting flag1 'z' depending on result
    else
      z=0;
  end
  
 endmodule
   