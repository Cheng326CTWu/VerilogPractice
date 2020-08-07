module four_to_one_mux
(
	Y,
	I,
	S
);

	output Y;
	input [3:0] I;
	input [1:0] S;

	wire tmp0, tmp1, tmp2, tmp3;
	and and_0(tmp0, I[0], ~S[0], ~S[1]);
	and and_1(tmp1, I[1], S[0], ~S[1]);
	and and_2(tmp2, I[2], ~S[0], S[1]);
	and and_3(tmp3, I[3], S[0], S[1]);

	assign Y = tmp0 | tmp1 | tmp2 | tmp3;

endmodule

