module barrel_shifter(a,b,sh);

input [7:0] a;
input [3:0] sh;
output reg [7:0] b;

always @(sh or a or b)
case (sh)
4'b0000: b=a;//0
4'b0001: //1
begin
	b=a<<1;
end
4'b0010: //2
begin
	b=a<<2;
end
4'b0011://3
begin
	b=a<<3;
end
4'b0100: //4
begin
	b=a<<4;
end
4'b0101: //5
begin
	b=a<<5;
end
4'b0110: //6
begin
	b=a<<6;
end
4'b0111: //7
begin
	b=a<<7;
end
4'b1000://8
begin
	b=a<<8;
end
4'b1001: //9
begin
	b=a<<2;
end
4'b1010: //10
begin
	b=a<<2;
end
4'b1011://11
begin
	b=a<<3;

end
4'b1100: //12
begin
	b=a>>1;

end
4'b1101: //13
begin
	b=a>>3;

end
4'b1110: //14
begin
	b=a>>2;

end
4'b1111: //15
begin
	b=a>>1;
end

endcase

endmodule
