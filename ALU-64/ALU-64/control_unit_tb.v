module control_unit_tb;
  reg clk;
  reg rst_b;
  reg bgn;
  reg q_1;
  reg q0;
  reg count63;
  wire c0;
  wire c1;
  wire c2;
  wire c3;
  wire c4;
  wire c5;
  wire c6;
  wire c7;
  wire stop;
  //wire [2:0]st;
  
  control_unit uut (
    .clk(clk),
    .rst_b(rst_b),
    .bgn(bgn),
    .opcode(2'b10),
    .q_1(q_1),
    .q0(q0),
    .count63(count63),
    .c0(c0),
    .c1(c1),
    .c2(c2),
    .c3(c3),
    .c4(c4),
    .c5(c5),
    .c6(c6),
    .c7(c7),
    .stop(stop)
    //.st(st)
  );
  
  initial begin
    clk = 0;
    rst_b = 0;
    bgn = 0; 
    q_1 = 0;
    q0 = 0;
    count63 = 0;
  
    #10
    clk = 1;
    rst_b = 1;
  
    #10
    clk = 0;
  
    #10 //ajungem in S1
    clk = 1;
    bgn = 1;
  
    #10
    clk = 0;
  
    #10
    clk = 1; //ajugem in startea S2
  
    #10
    clk = 0;
  
    #10 //ajungem in S3
    clk = 1;
    q0 = 0;
    q_1 = 1;
  
    #10
    clk = 0;
  
    #10
    clk = 1; //ajungem in S5
  
    #10
    clk = 0;
  
    #10
    clk = 1; //ajungem in S2
  
    #10
    clk = 0;
  
    #10 //ajungem in S4
    clk = 1;
    q0 = 1;
    q_1 = 0;
  
    #10
    clk = 0;
  
    #10
    clk = 1; //ajungem in S5
    count63 = 1;
  
    #10
    clk = 0;
  
    #10
    clk = 1; //ajungem in S6
  
    #10
    clk = 0;
  
    #10
    clk = 1; //ajungem in S7
  
    #10
    clk = 0;
  
    #10
    clk = 1; //ajungem in S7
  
    #10
    clk = 0;
  
    #10
    clk = 1; //ajungem in S7
  end
  
endmodule  