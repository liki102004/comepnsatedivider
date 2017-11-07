module compare_divider(a,b,app,acc,clk,do,err);

input [15:0] a;
input [7:0] b;
input clk;
output [7:0] app,acc;
output [15:0] do,err;
wire [7:0] app1,acc1,lod,Res,Res1;
wire [3:0] lod1,x,y1,z;
wire signal;
wire [7:0] d;

LOD U0_LOD(a,lod);
LOD1 U1_LOD1(b,lod1);
simple_divider U2_simple_divider(lod,lod1,Res);
decoder U3_decoder(a,x);
decoder1 U4_decoder1(b,y1);
minus U5_minus(x,y1,z);
barrel_shifter U6_barrel_shifter(Res,app1,z);//여기다가 입력 
accurate_divider U7_accurate_divider(a,b,acc1);
compare U8_compare(clk,b,a,d,acc1,app,acc,do,err);
//compare(clk,i,j,d,a,out_app,out_acc,do,cmp,err);
LED2 U10_LED2(b,signal);
contrl U11_contrl(z, signal, app1,d);
endmodule


