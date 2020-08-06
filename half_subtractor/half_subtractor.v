module half_subtractor
(
	x,
	y,
	diff,
	borrow
);

	input x;
	input y;
	output diff;
	output borrow;

	assign diff = x ^ y;
	assign borrow = ~x & y;

endmodule
