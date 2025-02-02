module mux16to1 #(parameter w = 64) ( 
  input [w-1:0]in_0,
  input [w-1:0]in_1,
  input [w-1:0]in_2,
  input [w-1:0]in_3,
  input [w-1:0]in_4,
  input [w-1:0]in_5,
  input [w-1:0]in_6,
  input [w-1:0]in_7,
  input [w-1:0]in_8,
  input [w-1:0]in_9,
  input [w-1:0]in_10,
  input [w-1:0]in_11,
  input [w-1:0]in_12,
  input [w-1:0]in_13,
  input [w-1:0]in_14,
  input [w-1:0]in_15,
  input [3:0]sel,
  output [w-1:0]out
);

  assign out = (sel == 4'b0000) ? in_0 : 'bz ;
  assign out = (sel == 4'b0001) ? in_1 : 'bz ;
  assign out = (sel == 4'b0010) ? in_2 : 'bz ;
  assign out = (sel == 4'b0011) ? in_3 : 'bz ;
  assign out = (sel == 4'b0100) ? in_4 : 'bz ;
  assign out = (sel == 4'b0101) ? in_5 : 'bz ;
  assign out = (sel == 4'b0110) ? in_6 : 'bz ;
  assign out = (sel == 4'b0111) ? in_7 : 'bz ;
  assign out = (sel == 4'b1000) ? in_8 : 'bz ;
  assign out = (sel == 4'b1001) ? in_9 : 'bz ;
  assign out = (sel == 4'b1010) ? in_10 : 'bz ;
  assign out = (sel == 4'b1011) ? in_11 : 'bz ;
  assign out = (sel == 4'b1100) ? in_12 : 'bz ;
  assign out = (sel == 4'b1101) ? in_13 : 'bz ;
  assign out = (sel == 4'b1110) ? in_14 : 'bz ;
  assign out = (sel == 4'b1111) ? in_15 : 'bz ;
  
endmodule