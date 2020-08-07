// an 8:1 mux implementation using two 4:1 mux
module eight_to_one_mux
(
	Y,
	I,
	S,
);

	output Y;
	input [7:0] I;
	input [2:0] S;

	wire w1, w2;
	four_to_one_mux mux1(w1, I[3:0], S[1:0]);
	four_to_one_mux mux2(w2, I[7:4], S[1:0]);
	assign Y = (w1 & ~S[2]) | (w2 & S[2]);
endmodule
