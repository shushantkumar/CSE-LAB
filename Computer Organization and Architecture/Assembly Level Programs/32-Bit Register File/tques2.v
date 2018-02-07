// Testbench for 3 Port register file
//Shushant Kumar 16CO143
//Anmol Horo 16CO206


`timescale 1ns/10ps

module t_reg;
	
	reg [4:0] regno1;           // read register 1
    reg [4:0] regno2;           // read register 2
    reg [4:0] wreg;             // write register
    reg write;                  // write signal
    wire [31:0] rdata1;         // read data 1
    wire [31:0] rdata2;         // read data 2
    reg [31:0] wdata;           // write data
	reg clk;                    // clock	
	regs s(regno1,regno2,wreg,write,rdata1,rdata2,wdata,clk);
	initial begin
       
	$dumpfile("ques2gtk.vcd");        // GTK file generated
    $dumpvars(0, t_reg);          
	
	 
	  
	regno1=5'b00000;             // reading from this register number
	regno2=5'b00100;             // reading from this register number
	write=1'b1;                  // when write signal is 1 then only data is written on to the register
	wreg=5'b00000;               // writing to this register number
	wdata=32'b00001011;          // writhing this data
	
	
	#10                           // variation of inputs
	regno1=5'b00000;
	regno2=5'b00110;
	write=1'b1;
	wreg=5'b01000;
	wdata=8'b00001111;
	
	#10
	regno1=5'b01000;
	regno2=5'b00000;
	write=1'b1;
	wreg=5'b00110;
	wdata=2'b11;
	
	#10
	regno1=5'b00110;
	regno2=5'b01000;
	write=1'b1;
	wreg=5'b00010;
	wdata=32'b101011;
	
	#10
	regno1=5'b00110;
	regno2=5'b00010;
	wreg=5'b01001;
	wdata=8'b11000001;
	
	#10
	regno1=5'b01001;
	regno2=5'b01000;
	wreg=5'b01010;
	wdata=4'b1111;
	
	#10
	regno1=5'b00110;
	regno2=5'b00000;
	wreg=5'b01011;
	wdata=32'b11110001;
	
	#10
	regno1=5'b01011;
	regno2=5'b01011;
	wreg=5'b01100;
	wdata=32'b10101010101;
	
	#10
	regno1=5'b01100;
	regno2=5'b01000;
	wreg=5'b11000;
	wdata=32'b1111000001101;
	
	#10
	regno1=5'b11000;
	regno2=5'b00010;
	wreg=5'b11100;
	wdata=32'b110101110001101;
	
	#10
	regno1=5'b11100;
	regno2=5'b11000;
	wreg=5'b11110;
	wdata=32'b10101010001111;
	
	#10
	regno1=5'b11110;
	regno2=5'b11000;
	wreg=5'b11111;
	wdata=32'b11001000111000;
	
	#10
	regno1=5'b00010;
	regno2=5'b11111;
	wreg=5'b00001;
	wdata=32'b11001101;
	
	#10
	regno1=5'b00001;
	regno2=5'b00010;
	wreg=5'b00011;
	wdata=32'b01111110111;
	
	#10
	regno1=5'b00111;
	regno2=5'b00011;
	wreg=5'b00111;
	wdata=32'b110010111110;
	
	#10
	regno1=5'b01001;
	regno2=5'b00111;
	write=1'b0;
	
	#10
	regno1=5'b01100;
	regno2=5'b00001;
	write=1'b1;
	wreg=5'b00100;
	wdata=32'b101000011101;
	
	#10
	regno1=5'b11000;
	regno2=5'b11110;
	write=1'b0;
	
	#10
	regno1=5'b00011;
	regno2=5'b11111;
	write=1'b1;
	wreg=5'b01111;
	wdata=32'b10000111000101;
	
	#10
	regno1=5'b01111;
	regno2=5'b01011;
	write=1'b1;
	wreg=5'b10001;
	wdata=32'b10101111;
	
	#10
	regno1=5'b01010;
	regno2=5'b00110;
	write=1'b1;
	wreg=5'b01000;
	wdata=32'b0101011011;
	
	#10
	regno1=5'b01000;
	regno2=5'b11000;
	write=1'b0;
	
	#10
	regno1=5'b00011;
	regno2=5'b00111;
	write=1'b1;
	wreg=5'b10101;
	wdata=32'b10101101011;
	
	#10
	regno1=5'b10101;
	regno2=5'b10001;
	write=1'b1;
	wreg=5'b01110;
	wdata=32'b11110101011;
	
	end 
	
		initial
		begin
		clk = 1'b0;     // value for clock
		repeat (56)
		#5 clk = ~clk;
		end
	 initial #280 $finish;
	 
	 initial begin
	   // display
       $monitor("read reg1:%b   read reg2:%b   data1:%b  data2:%b  write:%b    write reg:%b   write data:%b \n",regno1,regno2,rdata1,rdata2,write,wreg,wdata);
       end	
endmodule