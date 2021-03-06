module EXMEM
(
    clk_i,
	WB_i,
	M_i,
	addr_i,
	data_i,
	rd_i,
    WB_o,
	M_o,
	addr_o,
	data_o,
	rd_o
);

// Ports
input               clk_i;
input	[1:0]       WB_i;
input   [1:0]       M_i;
input   [31:0]      addr_i;
input   [31:0]      data_i;
input	[4:0]		rd_i;
output	[1:0]		WB_o;
output	[1:0]		M_o;
output  [31:0]      addr_o;
output  [31:0]      data_o;
output	[4:0]		rd_o;

// Wires & Registers
reg		[1:0]		WB_o;
reg		[1:0]		M_o;
reg		[31:0]      addr_o;
reg		[31:0]      data_o;
reg		[4:0]		rd_o;

initial begin
#15
	WB_o = 0;
	M_o = 0;
	addr_o = 0;
	data_o = 0;
	rd_o = 0;
end

always@(posedge clk_i) begin
	WB_o <= WB_i;
	M_o <= M_i;
	addr_o <= addr_i;
	data_o <= data_i;
	rd_o <= rd_i;
end

endmodule
