module minus(x,y,z);
input [3:0] x,y;
output reg[3:0] z;
always@(x or y)
begin
if(x==4'b0000&&y==4'b0000)
	begin
		z=0;
	end
else if(x==4'b0000&&y==4'b0100)
	begin
		z=12;
	end
else if(x==4'b0000&&y==4'b0101)
	begin
		z=14;
	end
else if(x==4'b0000&&y==4'b0110)
	begin
		z=13;
	end
else if(x==4'b0000&&y==4'b0111)
	begin
		z=13;
	end		
else if(x==4'b1000&&y==4'b0000)
	begin
		z=1;
	end
else if(x==4'b1001&&y==4'b0000)//5
	begin
		z=2;
	end
else if(x==4'b1010&&y==4'b0000)//6
	begin
		z=3;
	end
else if(x==4'b1011&&y==4'b0000)//7
	begin
		z=4;
	end
else if(x<y)
	begin
		z=x-y+4'd8;
	end
else if(x>y)
	begin
		z=x-y-4'd4;
	end
else
	begin
		z=x-y-4'd4;
	end
end
endmodule
