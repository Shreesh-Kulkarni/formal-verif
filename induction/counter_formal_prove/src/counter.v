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
//logic reset=1'b1;
/*always@(posedge clk)begin
    reset <= ~reset;
end*/

always@(posedge clk)begin
    if(r==64'hAAAA0000)
        r<=0;
    else
        r<=r+1;
end

/*`ifdef FORMAL
//
`endif */
endmodule
`endif