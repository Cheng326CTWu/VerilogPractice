module ripple_counter
(
	clk,
	rst,
	A
);

	input clk, rst;
	output [3:0] A;

	wire q0, qn0, q1, qn1, q2, qn2, q3, qn3;

	DFF dff0(.D(qn0), .clk(clk), .rst(rst), .Q(q0), .Qn(qn0));
	DFF dff1(.D(qn1), .clk(q0), .rst(rst), .Q(q1), .Qn(qn1));
	DFF dff2(.D(qn2), .clk(q1), .rst(rst), .Q(q2), .Qn(qn2));
	DFF dff3(.D(qn3), .clk(q2), .rst(rst), .Q(q3), .Qn(qn3));

	assign A = {q3, q2, q1, q0};

endmodule
