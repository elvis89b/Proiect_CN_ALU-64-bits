module mux2to1 #(parameter w = 1)(
  input [w-1:0]in_0,
  input [w-1:0]in_1,
  input sel,
  output [w-1:0]out
);
  
  assign out = sel ? in_1 : in_0;
  
endmodule