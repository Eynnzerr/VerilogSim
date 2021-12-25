module decoder_74HC138(
	input [2:0] A,
	input E3,E2,E1,
	output reg [7:0] Y
	);

	always@(*)  begin
		if(E3==1 && E2==0 && E1==0) begin 
			 case(A)
			3'b000: Y=8'b0111_1111;  
			3'b001: Y=8'b1011_1111;
			3'b010: Y=8'b1101_1111;
			3'b011: Y=8'b1110_1111;
			3'b100: Y=8'b1111_0111;
			3'b101: Y=8'b1111_1011;
			3'b110: Y=8'b1111_1101;
			3'b111: Y=8'b1111_1110;
			 endcase
		end
		else	Y=8'b1111_1111;    
	end
endmodule