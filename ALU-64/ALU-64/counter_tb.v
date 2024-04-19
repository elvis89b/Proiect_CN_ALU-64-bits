module counter_tb;
  reg clk;
  reg rst_b;
  reg c0;
  reg c4;
  wire count63;
  //wire [5:0]count;
  
  counter uut (
    .clk(clk),
    .rst_b(rst_b),
    .c0(c0),
    .c4(c4),
    .count63(count63)
    //.count(count)
  );
  
  localparam CLOCK_CYCLES = 100;
  localparam RST_PULSE = 10;
  localparam CLOCK_PERIOD = 100;
  
  initial begin
    rst_b = 1'b0;
    #(RST_PULSE) rst_b = 1'b1;
  end
  
  initial begin 
    clk = 1'b0;
    repeat(CLOCK_CYCLES * 2) #(CLOCK_PERIOD / 2) clk = ~clk;
  end
  
  initial begin
    c0 = 1'b1;
    #(CLOCK_PERIOD) c0 = 1'b0;
  end
  
  initial begin
    c4 = 1'b0;
    #(CLOCK_PERIOD) c4 = 1'b1;
  end
  
endmodule
  