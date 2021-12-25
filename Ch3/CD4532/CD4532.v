module CD4532(
	input EI,
	input [7:0]I,
	output [2:0]Y,
	output GS,
	output EO
	);
	
	reg [2:0]Y_t;
	parameter X1 = 8'b10000000;
	parameter X2 = X1 >> 1;
	parameter X3 = X2 >> 1;
	parameter X4 = X3 >> 1;
	parameter X5 = X4 >> 1;
	parameter X6 = X5 >> 1;
	parameter X7 = X6 >> 1;
	assign EO = EI;
	assign GS = EI & ~(I[0] | I[1] | I[2] | I[3] | I[4] | I[5] | I[6] | I[7]);
	always @(*) begin
		if(I >= X1 && EI) Y_t = 3'b111;
		else if(I >= X2 && EI) Y_t = 3'b110;
		else if(I >= X3 && EI) Y_t = 3'b101;
		else if(I >= X4 && EI) Y_t = 3'b100;
		else if(I >= X5 && EI) Y_t = 3'b011;
		else if(I >= X6 && EI) Y_t = 3'b010;
		else if(I >= X7 && EI) Y_t = 3'b001;
		else Y_t = 3'b000;
	end
	assign Y = Y_t;
endmodule
	
	
	
