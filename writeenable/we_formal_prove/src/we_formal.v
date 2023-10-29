`default_nettype none
`timescale 1us/100ns

`include "we.v"
module we_formal(
    input logic clk,
    input logic[63:0] in,
    input logic wn,
    output logic [63:0]y
);
we we(
    .clk(clk),
    .in(in),
    .wn(wn),
    .y(y)
);
reg [63:0] past_y;
logic past_valid;
initial begin
    assume(past_valid==0);
end
always @(posedge clk ) begin
    past_valid<=1;
end
always@(posedge clk) past_y<=y;
always@(posedge clk)begin
    if(past_valid)
        if($past(wn))
            assert(y==$past(in));
            cover(y==64'h123456A);
end

endmodule