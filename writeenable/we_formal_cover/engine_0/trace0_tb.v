`ifndef VERILATOR
module testbench;
  reg [4095:0] vcdfile;
  reg clock;
`else
module testbench(input clock, output reg genclock);
  initial genclock = 1;
`endif
  reg genclock = 1;
  reg [31:0] cycle = 0;
  wire [0:0] PI_clk = clock;
  reg [0:0] PI_wn;
  reg [63:0] PI_in;
  we_formal UUT (
    .clk(PI_clk),
    .wn(PI_wn),
    .in(PI_in)
  );
`ifndef VERILATOR
  initial begin
    if ($value$plusargs("vcd=%s", vcdfile)) begin
      $dumpfile(vcdfile);
      $dumpvars(0, testbench);
    end
    #5 clock = 0;
    while (genclock) begin
      #5 clock = 0;
      #5 clock = 1;
    end
  end
`endif
  initial begin
`ifndef VERILATOR
    #1;
`endif
    // UUT.$formal$we_formal.\v:28$5_EN  = 1'b0;
    // UUT.$formal$we_formal.\v:29$6_EN  = 1'b0;
    UUT._witness_.anyinit_procdff_42 = 1'b0;
    UUT._witness_.anyinit_procdff_43 = 64'b0000000000000000000000000000000000000000000000000000000000000000;
    UUT._witness_.anyinit_procdff_44 = 1'b0;
    UUT._witness_.anyinit_procdff_46 = 1'b0;
    UUT.past_valid = 1'b0;
    UUT.we.r = 64'b0000000000000000000000000000000000000000000000000000000000000000;

    // state 0
    PI_wn = 1'b1;
    PI_in = 64'b0000000000000000000000000000000000000001001000110100010101101010;
  end
  always @(posedge clock) begin
    // state 1
    if (cycle == 0) begin
      PI_wn <= 1'b0;
      PI_in <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
    end

    // state 2
    if (cycle == 1) begin
      PI_wn <= 1'b0;
      PI_in <= 64'b0000000000000000000000000000000000000000000000000000000000000000;
    end

    genclock <= cycle < 2;
    cycle <= cycle + 1;
  end
endmodule
