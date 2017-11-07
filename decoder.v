module decoder(a,b);

input [15:0] a;
output reg[3:0] b;

always@(a or b)
begin
if(a[15]==1)
	b=4'b1111;//15
else if(a[14]==1)
	b=4'b1110;//14
else if(a[13]==1)
	b=4'b1101;//13
else if(a[12]==1)
	b=4'b1100;//12
else if(a[11]==1)
	b=4'b1011;//11
else if(a[10]==1)
	b=4'b1010;//10
else if(a[9]==1)
	b=4'b1001;//9

else if(a[8]==1)
	b=4'b1000;//8
/*else if(a[7]==1)
	b=4'b0111;
else if(a[6]==1)
	b=4'b0110;//6
else if(a[5]==1)
	b=4'b0101;//5
else if(a[4]==1)
	b=4'b0100;//4
else if(a[3]==1)
	b=4'b0011;//3
else if(a[2]==1)
	b=4'b0010;//2
else if(a[1]==1)
	b=4'b0001;//1
else if(a[0]==1)
	b=4'b0000;//0*/
else
	b=4'b0000;
end
endmodule
