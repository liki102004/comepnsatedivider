module little_compare(a,sh,b);
input [7:0] a;
input [3:0] sh;
output reg [7:0] b;

always@(sh or a or b)
begin
if(sh==4'b0000)
	b=a;
else
	b={4'b0,a[3:0]};
end
endmodule
