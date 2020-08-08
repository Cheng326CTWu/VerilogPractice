module shift_register
(
	clk,
	SI,
	SO,
);

	input clk, SI;
	output SO;

	reg [3:0] shift_reg;

	always @(posedge clk)
	begin
			shift_reg <= {shift_reg[2:0],SI};
	end
	assign SO = shift_reg[3];

endmodule
