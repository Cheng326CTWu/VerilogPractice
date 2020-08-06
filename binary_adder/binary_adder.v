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

	assign sum = x ^ y ^ z;
	assign carry = (x & y) | (z & (x ^ y));

endmodule

// 4 bit binary adder
module binary_adder
(
	A,
	B,
	C0,
	sum,
	carry
);
	
	input [3:0] A;
	input [3:0] B;
	input C0;
	output [3:0] sum;
	output [4:0] carry;

	wire [3:0] C;
	full_adder FA1(A[0], B[0], C0, sum[0], C[0]);
	full_adder FA2(A[1], B[1], C[0], sum[1], C[1]);
	full_adder FA3(A[2], B[2], C[1], sum[2], C[2]);
	full_adder FA4(A[3], B[3], C[2], sum[3], C[3]);

	assign carry[0] = C0;
	assign carry[4:1] = C[3:0];

endmodule
