`default_nettype none
`timescale 1us/100ns

`include "simple.v"
module simple_formal(
    input logic [63:0]a;
    input logic [63:0]b;
    output logic [63:0]y;
);
simple simple(
    .a(a),
    .b(b),
    .y(y)
);
always@(*)begin
    assert(y==a-b);
end

endmodule