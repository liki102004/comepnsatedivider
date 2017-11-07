module decoder1(a,b);
input [7:0] a;
output reg [3:0] b;
always@(a)
begin
if(a[7]==1)
	b=4'b0111;//7
else if(a[6]==1)
	b=4'b0110;//6
else if(a[5]==1)
	b=4'b0101;//5
else if(a[4]==1)
	b=4'b0100;//4
	
/*else if(a[3]==1)
	b=4'b0011;
else if(a[2]==1)
	b=4'b0010;
else if(a[1]==1)
	b=4'b0001;
else if(a[0]==1)
	b=4'b0000;*/
else
	b=4'b0000;
end
endmodule