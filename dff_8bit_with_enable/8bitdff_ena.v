module dff_8bit_ena(
	input [7:0] d,
	input clk,
	input reset, ena,
	output reg [7:0] q,
	output ena_led);
	
	always@(posedge clk)begin
		if(!reset)
			q <= 0;
		else if (ena)
			q <= d;
	end
	
	assign ena_led = ena;

endmodule