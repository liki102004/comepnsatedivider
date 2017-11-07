module contrl(shiftamount, compensatesignal, inbarrelesult,result);

input [3:0]shiftamount;
input compensatesignal;
input [7:0] inbarrelesult;

output reg [7:0]result;
reg [7:0] temp;

always@(shiftamount or compensatesignal or inbarrelesult)
begin
temp=inbarrelesult;
if(compensatesignal&&(shiftamount>2))
		begin
			result=temp-8;
		end
else
	begin
		result=temp;
	end
end
endmodule

