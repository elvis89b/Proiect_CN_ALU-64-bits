module shift_rotate_unit (
  input [127:0]in,
  input [2:0]sel,
  output [127:0]out
);

  wire [127:0]sll_out;
  wire [127:0]srl_out;
  wire [127:0]sla_out;
  wire [127:0]sra_out;
  wire [127:0]rotl_out;
  wire [127:0]rotr_out;
  
  sll uut_sll (
    .in(in),
    .out(sll_out)
  );
  
  srl uut_srl (
    .in(in),
    .out(srl_out)
  );
  
  sla uut_sla (
    .in(in),
    .out(sla_out)
  );
  
  sra uut_sra (
    .in(in),
    .out(sra_out)
  );
  
  rotl uut_rotl (
    .in(in),
    .out(rotl_out)
  );
  
  rotr uut_rotr (
    .in(in),
    .out(rotr_out)
  );
  
  mux8to1 #(.w(128)) uut_mux (
    .in_0(sll_out),
    .in_1(srl_out),
    .in_2(sla_out),
    .in_3(sra_out),
    .in_4(rotl_out),
    .in_5(rotr_out),
    .in_6(128'bz),
    .in_7(128'bz),
    .sel(sel),
    .out(out)
  );
  
endmodule