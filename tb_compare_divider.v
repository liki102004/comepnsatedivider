`timescale 1ns/100ps
module tb_compare_divider;
reg [15:0] a;
reg [7:0] b;
reg clk;
wire [7:0] app,acc;
wire [15:0] do,err;
compare_divider U0_compare_divider(a,b,app,acc,clk,do,err);
/*initial
begin
a=1; b=1; #10;
b=2; #10;
b=3; #10;
b=255;#10;
a=16'd1023; b=8'd2; 
end
endmodule*/
integer f1,f2,f3,f4,f5;
always #(10/2) clk = ~clk;//making clk wave
initial
begin
clk=0;
f1=$fopen("app.txt","w");
f2=$fopen("acc.txt","w");
f3=$fopen("a.txt","w");
f4=$fopen("b.txt","w");
f5=$fopen("err.txt","w");
end

integer i;

initial
begin
clk=0;
for(i=0;i<100;i=i+1)
begin
 a=$urandom_range(16'd65535,16'd1);  b=$urandom_range(8'd255,8'd1); #10;
 $fwrite(f1,"%d\n",app);
 $fwrite(f2,"%d\n",acc);
 $fwrite(f3,"%d\n",a);
 $fwrite(f4,"%d\n",b);
 $fwrite(f5,"%d\n",err);
 end
a=36783; b=191; #10;

$fclose(f1);
$fclose(f2);
$fclose(f3);
$fclose(f4);
$fclose(f5);
$stop;
end
endmodule