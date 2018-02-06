//1 Bit ALU Testbench
//Shushant Kumar 16CO143
//Anmol Horo 16CO206

`timescale 1ns/10ps

module t_alu;					
	
	reg a,b,ainvert,binvert,carryin;			//Inputs 
	reg [1:0] op;								//Inputs
	wire result,cout,z,flag2;					//Outputs
	
	alu s(a,b,ainvert,binvert,carryin,op,result,cout,z,flag2);		//Module Instantiation
 
	initial begin

	$dumpfile("ques1gtk.vcd");					//GTK File generated
        $dumpvars(0, t_alu);
         ainvert=1'b0;							//setting ainvert to 0
	     binvert=1'b0;							//setting binvert to 0
		 carryin=1'b0;							//setting carryin to 0
		 op=2'b00;
	  
         a=1'b0;								//Signal for AND
		 b=1'b0;
	#10 
        a = 1'b0; 
        b = 1'b1; 
        
	#10
        a = 1'b1; 
        b = 1'b0; 
        
	#10
        a = 1'b1; 
        b = 1'b1; 
		
	#10 
	     ainvert=1'b0;							//Signal for OR
	     binvert=1'b0;
		 carryin=1'b0;
		 op=2'b01;
	  
         a=1'b0;
		 b=1'b0;
	 #10 
        a = 1'b0; 
        b = 1'b1; 
        
	#10
        a = 1'b1; 
        b = 1'b0; 
        
	#10
        a = 1'b1; 
        b = 1'b1; 
    	
	#10 
	     ainvert=1'b1;							//Signal for NOR
	     binvert=1'b1;
		 carryin=1'b1;
		 op=2'b00;
	  
         a=1'b0;
		 b=1'b0;
	 #10 
        a = 1'b0; 
        b = 1'b1; 
        
	#10
        a = 1'b1; 
        b = 1'b0; 
        
	#10
        a = 1'b1; 
        b = 1'b1; 
		
	#10 
	     ainvert=1'b1;							//Signal for NAND					
	     binvert=1'b1;
		 carryin=1'b0;
		 op=2'b01;
	  
         a=1'b0;
		 b=1'b0;
	 #10 
        a = 1'b0; 
        b = 1'b1; 
        
	#10
        a = 1'b1; 
        b = 1'b0; 
        
	#10
        a = 1'b1; 
        b = 1'b1; 	
		
	#10 
	     ainvert=1'b0;							//Signal for SUBTRACTION
	     binvert=1'b1;
		 carryin=1'b1;
		 op=2'b10;
	  
         a=1'b0;
		 b=1'b0;
	 #10 
        a = 1'b0; 
        b = 1'b1; 
        
	#10
        a = 1'b1; 
        b = 1'b0; 
        
	#10
        a = 1'b1; 
        b = 1'b1; 	
		
	#10 
	     ainvert=1'b0;							//Signal for ADDITION
	     binvert=1'b0;
		 carryin=1'b0;
		 op=2'b10;
	  
         a=1'b0;
		 b=1'b0;
	 #10 
        a = 1'b0; 
        b = 1'b1; 
        
	#10
        a = 1'b1; 
        b = 1'b0; 
        
	#10
        a = 1'b1; 
        b = 1'b1; 	
	
    end  
	 initial #240 $finish;
	
       initial begin		
       $monitor("a=%b, b=%b, ainvert=%b , binvert=%b , carryin=%b , op =%b , result = %b , cout = %b , z =%b , flag2= %b\n",a,b,ainvert,binvert,carryin,op,result,cout,z,flag2);
       end	
endmodule