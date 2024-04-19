module ALU_64 (
  input clk,
  input rst_b,
  input bgn,
  input [63:0]in_0,
  input [63:0]in_1,
  input [4:0]sel,
  output stop,
  output [63:0]out
);

  wire [63:0]out_arithmetic;
  wire [63:0]out_logic;
  wire [127:0]out_shift;

  arithmetic_unit uut_arithmetic (
    .clk(clk),
    .bgn(bgn),
    .rst_b(rst_b),
    .opcode(sel[1:0]),
    .inbus(in_0),
    .stop(stop),
    .outbus(out_arithmetic)
  );
  
  logic_unit uut_logic (
    .in_0(in_0),
    .in_1(in_1),
    .sel(sel[2:0]),
    .out(out_logic)
  );
  
  shift_rotate_unit uut_shift (
    .in({in_1, in_0}),
    .sel(sel[2:0]),
    .out(out_shift)
  );
  
  mux4to1 uut_mux (
    .in_0(out_arithmetic),
    .in_1(out_logic),
    .in_2(out_shift[63:0]),
    .in_3({64{1'bz}}),
    .sel(sel[4:3]),
    .out(out)
  );

endmodule

  