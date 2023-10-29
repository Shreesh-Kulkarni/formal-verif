`ifndef _clockedlogic_vh
`define _clockedlogic_vh

`default_nettype none
`timescale 1us/100ns

module clockedlogic(
    input logic clk,
    output logic [63:0]y
);
logic [63:0]r;
assign y=r;
always@(posedge clk)begin
    if(r==64'hAAAA)
    r<=0;
    else
    r<=r+1;
end

/*`ifdef FORMAL
//
`endif */
endmodule
`endif