module br2 (
  input clk,
  input bgn,
  input rst_b, 
  input [63:0]inbus,
  output stop, 
  output [63:0]outbus
);

  wire c0;
  wire c1;
  wire c2;
  wire c3;
  wire c4;
  wire c5;
  wire c6;
  wire Q_lsb;
  wire q_1;
  wire count63;
  wire A_lsb;
  wire [63:0]M;
  wire [63:0]A;
  wire [63:0]out_parallel;
  wire [63:0]out_xor;

  reg_M  uut_M (
    .clk(clk),
    .rst_b(rst_b),
    .c0(c0), 
    .inbus(inbus), 
    .q(M)
  );

  reg_A uut_A (
    .clk(clk), 
    .rst_b(rst_b), 
    .c0(c0), 
    .c2(c2), 
    .c4(c4), 
    .c5(c5), 
    .sum(out_parallel), 
    .A_lsb(A_lsb), 
    .q(A), 
    .outbus(outbus)
  );
  
  reg_Q uut_Q (
    .clk(clk), 
    .rst_b(rst_b), 
    .c1(c1), 
    .c4(c4), 
    .c6(c6), 
    .A_lsb(A_lsb), 
    .Q_lsb(Q_lsb), 
    .inbus(inbus), 
    .outbus(outbus)
  );
  
  reg_Q_1 uut_Q_1 (
    .clk(clk), 
    .rst_b(rst_b), 
    .c0(c0), 
    .c4(c4), 
    .Q_lsb(Q_lsb), 
    .q(q_1)
  );
  
  counter uut_counter (
    .clk(clk), 
    .rst_b(rst_b), 
    .c0(c0), 
    .c4(c4), 
    .count63(count63)
  );
  
  
  control_unit uut_control_unit ( 
    .clk(clk), 
    .rst_b(rst_b), 
    .bgn(bgn), 
    .opcode(2'b10),
    .q_1(q_1), 
    .q0(Q_lsb), 
    .count63(count63),
    .c0(c0), 
    .c1(c1), 
    .c2(c2), 
    .c3(c3), 
    .c4(c4), 
    .c5(c5), 
    .c6(c6), 
    .stop(stop)
  );
  
  xor_wordgate uut_xor (
    .in_0({64{c3}}), 
    .in_1(M), 
    .XOR(out_xor)
  );
  
  ml_csea_8 uut_adder (
    .x(out_xor), 
    .y(A), 
    .c_in(c3), 
    .z(out_parallel)
  );

endmodule