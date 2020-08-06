module full_subtractor
(
	x,
	y,
	b_in,
	diff,
	b_out
);

	input x;
	input y;
	input b_in;
	output diff;
	output b_out;

	assign diff = x ^ y ^ b_in;
	assign b_out = (~x & y) | (b_in & ~(x ^ y));

endmodule

