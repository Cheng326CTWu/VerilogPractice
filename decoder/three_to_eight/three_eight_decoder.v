module three_eight_decoder
(
	x,
	y,
	z,
	D
);

	input x;
	input y;
	input z;
	output [7:0] D;

	and and_0(D[0], ~x, ~y, ~z);
	and and_1(D[1], ~x, ~y, z);
	and and_2(D[2], ~x, y, ~z);
	and and_3(D[3], ~x, y, z);
	and and_4(D[4], x, ~y, ~z);
	and and_5(D[5], x, ~y, z);
	and and_6(D[6], x, y, ~z);
	and and_7(D[7], x, y, z);

endmodule
