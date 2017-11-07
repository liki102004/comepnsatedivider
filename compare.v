module compare(clk,i,j,d,a,out_app,out_acc,do,err);

input clk;
input [7:0] i;//피승수 
input [15:0] j;//승수 
input [7:0] d;//app나눗셈기에서 나온값
input [7:0] a;//acc나눗셈기에서 나온값 


output reg [15:0] err=0;
output reg [15:0] do=0;
output reg [7:0] out_app,out_acc;//출력 

always@(posedge clk)
begin

if(256*i<j)
   begin
      out_app=d;
      out_acc=d;
		err=1;
   end
else if(j<i)
	begin
		out_app=d;
		out_acc=a;
		err=1;
	end
if(255*i<j)
   begin
      out_app=d;
      out_acc=d;
		err=1;
   end
else if(a==0||d==0)
	begin
		out_app=d;
		out_acc=a;
		err=1;
	end
else
   begin
		do=do+1'd1;
      if(a-d<16'd30||d-a<16'd30)
         begin
            out_app=d;
            out_acc=a;
				err=0;
         end
		else
			begin
				out_app=d;
				out_acc=a;
				err=1;
			end
   end
end
endmodule