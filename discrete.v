module discrete(a,b,c,y,d,e,shiftamount);

input a;//LED2 signal value 
input [3:0]b;//shifting 값 when 3 situation
input [7:0]c;//나눈 값 

input [3:0]d;//큰거 
input [3:0]e;//작은거//지워야됨 

output reg [3:0] shiftamount;
output reg [7:0] y;

reg [7:0] z;
reg [3:0] w;

always@(a or b or c or d or e or shiftamount or y or z or w)
begin
z=c;
w=b;
if(b==3&&a==1)
begin
	y=z-1;
	shiftamount=w;
end
else if(b==4&a==1)
begin
	y=z+z-1;
	shiftamount=w-1;
end
else
begin
	y=z;
	shiftamount=b;	
end
end
endmodule
