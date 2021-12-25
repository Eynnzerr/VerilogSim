module counter74LVC161(
	input CET,CEP,PE,CP,CR,
	input [3:0]D,
	output TC,
	output reg[3:0]Q
	);
	parameter CARRY = 4'b1111; //进位
	parameter ZERO = 4'b0000; //清零
	parameter BIT = 1'b1; //计数
	wire CE; //中间变量
	assign CE = CET & CEP;
	assign TC = CET & PE & (Q==CARRY); //产生进位信号
	always @ (posedge CP, negedge CR)
		if(~CR) Q <= ZERO; //异步清零信号有效，直接清零
		else if(~PE) Q <= D; //同步置数信号有效，实现预置
		else if(CE) Q <= Q + BIT; //CET,CEP均为高电平，正常计数
		else Q <= Q; //否则保持
endmodule
		