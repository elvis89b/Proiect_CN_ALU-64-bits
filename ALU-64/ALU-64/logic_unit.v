module logic_unit (
  input [63:0]in_0,
  input [63:0]in_1,
  input [2:0]sel,
  output [63:0]out
);

  wire [63:0]and_out;
  wire [63:0]nand_out;
  wire [63:0]or_out;
  wire [63:0]nor_out;
  wire [63:0]xor_out;
  wire [63:0]xnor_out;
  wire [63:0]not_out;
  
  and_wordgate uut_and (
    .in_0(in_0),
    .in_1(in_1),
    .AND(and_out)
  );
  
  nand_wordgate uut_nand (
    .in_0(in_0),
    .in_1(in_1),
    .NAND(nand_out)
  );
  
  or_wordgate uut_or (
    .in_0(in_0),
    .in_1(in_1),
    .OR(or_out)
  );
  
  nor_wordgate uut_nor (
    .in_0(in_0),
    .in_1(in_1),
    .NOR(nor_out)
  );
  
  xor_wordgate uut_xor (
    .in_0(in_0),
    .in_1(in_1),
    .XOR(xor_out)
  );
  
  xnor_wordgate uut_xnor (
    .in_0(in_0),
    .in_1(in_1),
    .XNOR(xnor_out)
  );
  
  not_wordgate uut_not (
    .in(sel[0] ? in_1 : in_0),
    .NOT(not_out)
  );
  
  mux8to1 uut_mux (
    .in_0(and_out),
    .in_1(nand_out),
    .in_2(or_out),
    .in_3(nor_out),
    .in_4(xor_out),
    .in_5(xnor_out),
    .in_6(not_out),
    .in_7(not_out),
    .sel(sel),
    .out(out)
  );
  
endmodule