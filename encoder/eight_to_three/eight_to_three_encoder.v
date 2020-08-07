module eight_to_three_encoder
(
	D,
	x,
	y,
	z
);

	input [7:0] D;
	output x, y, z;

	assign x = D[7] | D[6] | D[5] | D[4];
	assign y = D[7] | D[6] | D[3] | D[2];
	assign z = D[7] | D[5] | D[3] | D[1];

endmodule
