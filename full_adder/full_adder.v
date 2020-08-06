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

module full_adder
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

	wire hadder1_sum;
	wire hadder1_carry;
	wire hadder2_carry;
	half_adder hadder1(.x(x), .y(y), .sum(hadder1_sum), .carry(hadder1_carry));
	half_adder hadder2(.x(hadder1_sum), .y(z), .sum(sum), .carry(hadder2_carry));

	assign carry = hadder2_carry | hadder1_carry;
endmodule
