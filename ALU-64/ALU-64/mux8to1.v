module mux8to1 #(parameter w = 64) ( 
  input [w-1:0]in_0,
  input [w-1:0]in_1,
  input [w-1:0]in_2,
  input [w-1:0]in_3,
  input [w-1:0]in_4,
  input [w-1:0]in_5,
  input [w-1:0]in_6,
  input [w-1:0]in_7,
  input [2:0]sel,
  output [w-1:0]out
);

  assign out = (sel == 3'b000) ? in_0 : 'bz ;
  assign out = (sel == 3'b001) ? in_1 : 'bz ;
  assign out = (sel == 3'b010) ? in_2 : 'bz ;
  assign out = (sel == 3'b011) ? in_3 : 'bz ;
  assign out = (sel == 3'b100) ? in_4 : 'bz ;
  assign out = (sel == 3'b101) ? in_5 : 'bz ;
  assign out = (sel == 3'b110) ? in_6 : 'bz ;
  assign out = (sel == 3'b111) ? in_7 : 'bz ;
  
endmodule