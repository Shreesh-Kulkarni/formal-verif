`ifndef _simple_vh
`define _simple_vh

`default_nettype none
`timescale 1us/100ns

module simple(
    input logic [63:0]a,
    input logic [63:0]b,
    output logic [63:0]y
);
assign y = a+(~b+1);

/*`ifdef FORMAL
//
`endif */
endmodule
`endif