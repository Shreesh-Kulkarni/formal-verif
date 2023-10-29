`ifndef _counter_vh
`define _counter_vh

`default_nettype none
`timescale 1us/100ns

module counter(
    input logic clk,
    output logic [63:0]y
);
logic [63:0]r;
assign y=r;
always@(posedge clk)begin
    r<=r+1;
end

/*`ifdef FORMAL
//
`endif */
endmodule
`endif