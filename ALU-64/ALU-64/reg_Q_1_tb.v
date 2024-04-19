module reg_Q_1_tb;
  reg clk;
  reg rst_b;
  reg c0;
  reg c4;
  reg Q_lsb;
  wire q;
  
  reg_Q_1 uut (
    .clk(clk),
    .rst_b(rst_b),
    .c0(c0),
    .c4(c4),
    .Q_lsb(Q_lsb),
    .q(q)
  );
  
  localparam CLOCK_CYCLES = 50;
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
    c0 = 1'b0;
    repeat(CLOCK_CYCLES) #(CLOCK_PERIOD) c0 = $urandom_range(0,1);
  end
  
  initial begin
    c4 = 1'b0;
    repeat(CLOCK_CYCLES) #(CLOCK_PERIOD) c4 = $urandom_range(0,1);
  end
  
  initial begin
    Q_lsb = 1'b0;
    repeat(CLOCK_CYCLES) #(CLOCK_PERIOD) Q_lsb = $urandom_range(0,1);
  end
  
endmodule