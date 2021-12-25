//DFF without negative output 
module DFF(
	input D,CP,
	output reg Q
);
	always @ (posedge CP)
		Q <= D;
endmodule