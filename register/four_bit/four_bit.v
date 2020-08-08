module four_bit_register
(
	I,
	clk,
	rst,
	A
);

	input [3:0] I;
	input rst, clk;
	output reg [3:0] A;

	always @(posedge clk)
	begin
		if(rst)
			A <= 4'b0000;
		else
			A <= I;
	end

endmodule
