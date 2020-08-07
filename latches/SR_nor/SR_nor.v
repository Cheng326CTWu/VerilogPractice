module SR_latch_nor
(
	S,
	R,
	Q,
	Qn
);

	input S, R;
	output Q, Qn;

	nor nor_0(Q, R, Qn);
	nor nor_1(Qn, S, Q);

endmodule
