module latch_74HC373(
	input OE,LE,
	input [7:0] D,
	output reg [7:0] Q
);
	always @ (OE or LE or D)
		if(!OE) Q = 8'bz;//禁止输出，低电平有效
		else if(LE) Q = D;//使能（高电平）和读锁存器模式
endmodule