module two_to_one_mux
(
	Y,
	I,
	S
);

	output Y;
	input [1:0] I;
	input S;

	assign Y = (I[0] & ~S) | (I[1] & S);
endmodule
