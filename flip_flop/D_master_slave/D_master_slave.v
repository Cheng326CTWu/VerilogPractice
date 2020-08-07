module D_master_slave
(
	D,
	clk,
	Q
);

	input D, clk;
	output Q;
	wire Y, Yn, Qn;

	D_gated master(D, clk, Y, Yn);
	D_gated slave(Y, ~clk, Q, Qn); 
endmodule
