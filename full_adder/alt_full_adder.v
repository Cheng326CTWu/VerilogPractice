module alt_full_adder
(
	x,
	y,
	z,
	sum,
	carry
);

	input x;
	input y;
	input z;
	output sum;
	output carry;

	assign sum = x ^ y ^ z;
	assign carry = (x & y) | (z & (x ^ y));

endmodule

