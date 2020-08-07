module eight_to_one_mux_tb();
wire tb_Y;
reg [7:0] tb_I;
reg [2:0] tb_S;

eight_to_one_mux DUT(.Y(tb_Y), .I(tb_I), .S(tb_S));

initial
begin
	tb_I = 8'b10101010;
	tb_S = 3'b000;

	#50;
	tb_S = 3'b001;

	#50;
	tb_S = 3'b010;

	#50;
	tb_S = 3'b011;

	#50;
	tb_S = 3'b100;

	#50;
	tb_S = 3'b101;

	#50;
	tb_S = 3'b110;

	#50;
	tb_S = 3'b111;

end
endmodule
