module four_three_binary_multiplier
(
	a,
	b,
	res
);

	input [2:0] a;
	input [3:0] b;
	output [6:0] res;

	wire [4:0] r1;
	wire [3:0] r2, r3;
	wire [4:0] adder1_res;
	
	assign r1[0] = a[0] & b[0];
	assign r1[1] = a[0] & b[1];
	assign r1[2] = a[0] & b[2];
	assign r1[3] = a[0] & b[3];
	assign r1[4] = 1'b0;
	assign r2[0] = a[1] & b[0];
	assign r2[1] = a[1] & b[1];
	assign r2[2] = a[1] & b[2];
	assign r2[3] = a[1] & b[3];
	assign r3[0] = a[2] & b[0];
	assign r3[1] = a[2] & b[1];
	assign r3[2] = a[2] & b[2];
	assign r3[3] = a[2] & b[3];

	assign res[0] = r1[0];
	four_bit_binary_adder adder1(r1[4:1], r2, adder1_res[3:0], adder1_res[4]);
	assign res[1] = adder1_res[0];
	four_bit_binary_adder adder2(adder1_res[4:1], r3, res[5:2], res[6]);

endmodule

module alt_four_three_binary_multiplier
(
	a,
	b,
	res
);

	input [2:0] a;
	input [3:0] b;
	output [6:0] res;

	wire [4:0] r1;
	wire [3:0] r2, r3;
	wire [4:0] adder1_res;
	
	assign r1[0] = a[0] & b[0];
	assign r1[1] = a[0] & b[1];
	assign r1[2] = a[0] & b[2];
	assign r1[3] = a[0] & b[3];
	assign r1[4] = 1'b0;
	assign r2[0] = a[1] & b[0];
	assign r2[1] = a[1] & b[1];
	assign r2[2] = a[1] & b[2];
	assign r2[3] = a[1] & b[3];
	assign r3[0] = a[2] & b[0];
	assign r3[1] = a[2] & b[1];
	assign r3[2] = a[2] & b[2];
	assign r3[3] = a[2] & b[3];

	assign res[0] = r1[0];
	alt_four_bit_binary_adder adder1(r1[4:1], r2, 1'b0, adder1_res[3:0], adder1_res[4]);
	assign res[1] = adder1_res[0];
	alt_four_bit_binary_adder adder2(adder1_res[4:1], r3, 1'b0, res[5:2], res[6]);

endmodule
