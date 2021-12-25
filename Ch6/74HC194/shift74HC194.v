module shift74HC194(
	input S1,S0,Dsl,Dsr,CP,CR,
	input [3:0]D,
	output reg[3:0]Q
);
	parameter ZERO = 4'b0000; //清零
	parameter case1 = 2'b00, case2 = 2'b01, case3 = 2'b10, case4 = 2'b11;
	always @ (posedge CP, negedge CR)
	if(~CR) Q <= ZERO; //异步置零
	else
		case({S1,S0})
			case1: Q <= Q; //保持
			case2: Q <= {Q[2:0],Dsr}; //右移（低位向高位移位）
			case3: Q <= {Dsl,Q[3:1]}; //左移（高位向低位移位）
			case4: Q <= D; //并行置数
		endcase
endmodule 		
			
	