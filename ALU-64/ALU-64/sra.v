module sra (
  input [127:0]in,
  output [127:0]out
);

  assign out = {in[127], in[127:1]};
  
endmodule