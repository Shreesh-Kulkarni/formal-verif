`default_nettype none
`timescale 1us/100ns

`include "clockedlogic.v"
module simple_formal(
    input logic clk,
    output logic [63:0]y
);
clockedlogic clockedlogic(
    .clk(clk),
    .y(y)
);
reg [63:0] past_y;
always@(posedge clk) past_y<=y;
always@(*)begin
    assert(y==past_y+1);
end

endmodule