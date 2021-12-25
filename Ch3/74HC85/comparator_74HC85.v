module comparator_74HC85(
	input [2:0]I,
	input [3:0] A,B,
	output reg [2:0] L
	);

	always@(*) 
	begin
		 if(I==3'b100)    L=3'b100;
		 else if(I==3'b010)    L=3'b010;
		 else
		 begin
		if(A[3]>B[3])    L=3'b100;
		else if(A[3]<B[3])    L=3'b010;
		else
		begin
			 if(A[2]>B[2])    L=3'b100;
			 else if(A[2]<B[2])    L=3'b010;
			 else
			 begin
			if(A[1]>B[1])    L=3'b100;
				  else if(A[1]<B[1])    L=3'b010;
			else
			begin
				 if(A[0]>B[0])    L=3'b100;
					 else if(A[0]<B[0])    L=3'b010;
				 else    L=3'b001;
			end
			 end
		end
		 end
	end
endmodule