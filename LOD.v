module LOD(a,b);

parameter WIDTH = 8;

input [15:0] a;
output reg [7:0] b;

reg [15:0] a1;

integer i;

always@(a or b)
	begin
		a1=a;		
	if(a[15]==1)
		b=a1[15:8];
	else if(a[14]==1)
		b=a1[14:7];
	else if(a[13]==1)
		b=a1[13:6];
	else if(a[12]==1)
		b=a1[12:5];
	else if(a[11]==1)
		b=a1[11:4];		
	else if(a[10]==1)
		b=a1[10:3];
	else if(a[9]==1)
		b=a1[9:2];
	else if(a[8]==1)
		b=a1[8:1];
	else if(a[7]==1)
		b=a1[7:0];
//
	else if(a[6]==1)
		begin
			b[6:0]=a1[6:0];
			b[7]=0;
		end
	else if(a[5]==1)
		begin
			b[5:0]=a1[5:0];
			b[6]=0;
			b[7]=0;
		end
	else if(a[4]==1)
		begin
			b[4:0]=a1[4:0];
			b[5]=0;
			b[6]=0;
			b[7]=0;
		end
	else if(a[3]==1)
		begin
			b[3:0]=a1[3:0];
			b[4]=0;
			b[5]=0;
			b[6]=0;
			b[7]=0;
		end
	else if(a[2]==1)
		begin
			b[2:0]=a1[2:0];
			b[3]=0;
			b[4]=0;
			b[5]=0;
			b[6]=0;
			b[7]=0;
		end
	else if(a[1]==1)
		begin
			b[1:0]=a1[1:0];
			b[2]=0;
			b[3]=0;
			b[4]=0;
			b[5]=0;
			b[6]=0;
			b[7]=0;
		end
	else if(a[0]==1)
		begin
			b[0]=a1[0];
			b[7:1]=7'b0;

		end
	else
		begin
			b=0;
		end
		
	
	end
endmodule

