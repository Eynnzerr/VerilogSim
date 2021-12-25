module reg74HC374(
	input OE,CP,
	input [7:0] D,
	output reg [7:0] Q
);

	always @ (posedge CP)
		if(OE) Q <= D;//使能端为高电平，即~OE低电平，输出内部触发器状态
		else Q <= 8'bz;//使能端为低电平，即~OE高电平，输出高阻抗
	
endmodule