`ifndef _we_vh
`define _we_vh

`default_nettype none
`timescale 1us/100ns

module we(
    input logic clk,
    input logic wn,
    input logic[63:0] in,
    output logic [63:0]y
);
logic [63:0]r;
initial begin
    r=64'b0;
end
assign y=r;
//logic reset=1'b1;
/*always@(posedge clk)begin
    reset <= ~reset;
end*/

always@(posedge clk)begin
        if(wn) r<=in;
end

/*`ifdef FORMAL
//
`endif */
endmodule
`endif