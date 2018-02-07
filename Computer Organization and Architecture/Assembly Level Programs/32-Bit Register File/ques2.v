// 3 Port register file
//Shushant Kumar 16CO143
//Anmol Horo 16CO206

module regs(regno1,regno2,wreg,write,rdata1,rdata2,wdata,clk);
input [4:0] regno1;            // read register 1
input [4:0] regno2;            // read register 2
input [4:0] wreg;              // write register
input write;                   // write signal
output reg [31:0] rdata1;      // read data 1
output reg [31:0] rdata2;      // read data 2
input [31:0] wdata;            // write data
input clk;                     // clock
reg [31:0] r0;                 // registers 0 to 31
reg [31:0] r1;      
reg [31:0] r2;               
reg [31:0] r3;
reg [31:0] r4;
reg [31:0] r5;
reg [31:0] r6;
reg [31:0] r7;
reg [31:0] r8;
reg [31:0] r9;
reg [31:0] r10;
reg [31:0] r11;
reg [31:0] r12;
reg [31:0] r13;
reg [31:0] r14;
reg [31:0] r15;
reg [31:0] r16;
reg [31:0] r17;
reg [31:0] r18;
reg [31:0] r19;
reg [31:0] r20;
reg [31:0] r21;
reg [31:0] r22;
reg [31:0] r23;
reg [31:0] r24;
reg [31:0] r25;
reg [31:0] r26;
reg [31:0] r27;
reg [31:0] r28;
reg [31:0] r29;
reg [31:0] r30;
reg [31:0] r31;

always @ (posedge clk)     // works only at the positive edge of the clock 
begin
begin           
		   // according to regno1 , the rdata1 is assigned the value of that particular register
if( regno1 == 0)   
rdata1=r0;
else if( regno1==1)
rdata1=r1;
else if( regno1==2)
rdata1=r2;
else if( regno1==3)
rdata1=r3;
else if( regno1==4)
rdata1=r4;
else if( regno1==5)
rdata1=r5;
else if( regno1==6)
rdata1=r6;
else if( regno1==7)
rdata1=r7;
else if( regno1==8)
rdata1=r8;
else if( regno1==9)
rdata1=r9;
else if( regno1==10)
rdata1=r10;
else if( regno1==11)
rdata1=r11;
else if( regno1==12)
rdata1=r12;
else if( regno1==13)
rdata1=r13;
else if( regno1==14)
rdata1=r14;
else if( regno1==15)
rdata1=r15;
else if( regno1==16)
rdata1=r16;
else if( regno1==17)
rdata1=r17;
else if( regno1==18)
rdata1=r18;
else if( regno1==19)
rdata1=r19;
else if( regno1==20)
rdata1=r20;
else if( regno1==21)
rdata1=r21;
else if( regno1==22)
rdata1=r22;
else if( regno1==23)
rdata1=r23;
else if( regno1==24)
rdata1=r24;
else if( regno1==25)
rdata1=r25;
else if( regno1==26)
rdata1=r26;
else if( regno1==27)
rdata1=r27;
else if( regno1==28)
rdata1=r28;
else if( regno1==29)
rdata1=r29;
else if( regno1==30)
rdata1=r30;
else if( regno1==31)
rdata1=r31;
end

begin
                         // according to regno2 , the rdata2 is assigned the value of that particular register
if( regno2 == 0)
rdata2=r0;
else if( regno2==1)
rdata2=r1;
else if( regno2==2)
rdata2=r2;
else if( regno2==3)
rdata2=r3;
else if( regno2==4)
rdata2=r4;
else if( regno2==5)
rdata2=r5;
else if( regno2==6)
rdata2=r6;
else if( regno2==7)
rdata2=r7;
else if( regno2==8)
rdata2=r8;
else if( regno2==9)
rdata2=r9;
else if( regno2==10)
rdata2=r10;
else if( regno2==11)
rdata2=r11;
else if( regno2==12)
rdata2=r12;
else if( regno2==13)
rdata2=r13;
else if( regno2==14)
rdata2=r14;
else if( regno2==15)
rdata2=r15;
else if( regno2==16)
rdata2=r16;
else if( regno2==17)
rdata2=r17;
else if( regno2==18)
rdata2=r18;
else if( regno2==19)
rdata2=r19;
else if( regno2==20)
rdata2=r20;
else if( regno2==21)
rdata2=r21;
else if( regno2==22)
rdata2=r22;
else if( regno2==23)
rdata2=r23;
else if( regno2==24)
rdata2=r24;
else if( regno2==25)
rdata2=r25;
else if( regno2==26)
rdata2=r26;
else if( regno2==27)
rdata2=r27;
else if( regno2==28)
rdata2=r28;
else if( regno2==29)
rdata2=r29;
else if( regno2==30)
rdata2=r30;
else if( regno2==31)
rdata2=r31;
end

if(write==1)               // when write signal is 1 then only values are written on to the register
begin
                           // according to wreg , the value of wdata is stored in that particular register
if( wreg == 0)
r0=wdata;
else if( wreg==1)
r1=wdata;
else if( wreg==2)
r2=wdata;
else if( wreg==3)
r3=wdata;
else if( wreg==4)
r4=wdata;
else if( wreg==5)
r5=wdata;
else if( wreg==6)
r6=wdata;
else if( wreg==7)
r7=wdata;
else if( wreg==8)
r8=wdata;
else if( wreg==9)
r9=wdata;
else if( wreg==10)
r10=wdata;
else if( wreg==11)
r11=wdata;
else if( wreg==12)
r12=wdata;
else if( wreg==13)
r13=wdata;
else if( wreg==14)
r14=wdata;
else if( wreg==15)
r15=wdata;
else if( wreg==16)
r16=wdata;
else if( wreg==17)
r17=wdata;
else if( wreg==18)
r18=wdata;
else if( wreg==19)
r19=wdata;
else if( wreg==20)
r20=wdata;
else if( wreg==21)
r21=wdata;
else if( wreg==22)
r22=wdata;
else if( wreg==23)
r23=wdata;
else if( wreg==24)
r24=wdata;
else if( wreg==25)
r25=wdata;
else if( wreg==26)
r26=wdata;
else if( wreg==27)
r27=wdata;
else if( wreg==28)
r28=wdata;
else if( wreg==29)
r29=wdata;
else if( wreg==30)
r30=wdata;
else if( wreg==31)
r31=wdata;
end
end
endmodule