module half_adder
(
	x,
	y,
	sum,
	carry
);

	input x;
	input y;
	output sum;
	output carry;

	assign sum = x ^ y;
	assign carry = x & y;

endmodule

