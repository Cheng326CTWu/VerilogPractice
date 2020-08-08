// 4 bit binary adder
// using 2's complement and carry in as 1 will make binary adder become a binary subtractor
module binary_subtractor
(
	A,
	B,
	c_in,
	sum,
	c_out
);

	input [3:0] A;
	input [3:0] B;
	input c_in;
	output reg [3:0] sum;
	output reg c_out;

	always @(A, B, c_in)
	begin
		{c_out,sum} = A + ~B + c_in;
	end
endmodule
