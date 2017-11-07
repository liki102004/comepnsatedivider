module simple_divider(A,B,Res);

parameter WIDTH = 8;

input [7:0] A;
input [3:0] B;
output [7:0] Res;
 
reg [7:0] Res = 0;

reg [7:0] a1;
reg [3:0] b1;

reg [7:0] p1;   
integer i;

always@ (A or B)
    begin
        a1 = A;
        b1 = B;
        p1= 0;
        for(i=0;i<WIDTH;i=i+1)    
				begin //start the for loop
					p1={p1[WIDTH-2:0],a1[WIDTH-1]};
					a1[WIDTH-1:1] = a1[WIDTH-2:0];
					p1 = p1-b1;
            if(p1[WIDTH-1] == 1)
					begin
						a1[0] = 0;
						p1 = p1 + b1;   
					 end
            else
                a1[0] = 1;
				end
        Res=a1;   
    end 
endmodule
