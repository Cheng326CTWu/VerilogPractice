module DFF
(
	D,
	clk,
	rst,
	Q,
	Qn
);

	input D, clk, rst;
	output reg Q;
	output Qn;

	always @(posedge clk, negedge rst)
	begin
		if(~rst)
			Q <= 1'b0;
		else
			Q <= D;	
	end
	assign Qn = ~Q;

endmodule
