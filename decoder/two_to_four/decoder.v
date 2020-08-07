module decoder
(
	A,
	B,
	E,
	D
);

	input A;
	input B;
	input E;
	output [3:0] D;

	nand nand_0(D[0], ~A, ~B, ~E);
	nand nand_1(D[1], ~A, B, ~E);
	nand nand_2(D[2], A, ~B, ~E);
	nand nand_3(D[3], A, B, ~E);

endmodule
