module binary_multiplier
(
	a,
	b,
	res
);

	input [1:0] a;
	input [1:0] b;
	output [3:0] res;

	wire [2:0] r;
	wire HA_c_out;

	assign res[0] = a[0] & b[0];
	assign r[0] = a[0] & b[1];
	assign r[1] = a[1] & b[0];
	assign r[2] = a[1] & b[1];

	half_adder HA1(r[0], r[1], res[1], HA_c_out);
	half_adder HA2(r[2], HA_c_out, res[2], res[3]);

endmodule
