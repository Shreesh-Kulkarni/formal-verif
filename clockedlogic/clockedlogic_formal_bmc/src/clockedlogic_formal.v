`default_nettype none
`timescale 1us/100ns

`include "clockedlogic.v"
module clockedlogic_formal(
    input logic clk,
    output logic [63:0]y
);
clockedlogic clockedlogic(
    .clk(clk),
    .y(y)
);
reg [63:0] past_y;
logic past_valid;
initial begin
    past_valid=0;
end
always @(posedge clk ) begin
    past_valid<=1;
end
always@(posedge clk) past_y<=y;
always@(*)begin
    if(past_valid)
        assert(y==past_y+1);
end

endmodule