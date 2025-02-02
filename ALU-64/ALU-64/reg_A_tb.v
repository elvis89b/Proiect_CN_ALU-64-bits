module reg_A_tb;
  reg clk;
  reg rst_b;
  reg c0;
  reg c2;
  reg c4;
  reg c5;
  reg signed [15:0]sum;
  wire A_lsb;
  wire [15:0]outbus;
  wire [15:0]q;
  
  reg_A #(.w(16)) uut (
    .clk(clk),
    .rst_b(rst_b),
    .c0(c0),
    .c2(c2),
    .c4(c4),
    .c5(c5),
    .sum(sum),
    .A_lsb(A_lsb),
    .outbus(outbus),
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
    c2 = 1'b0;
    repeat(CLOCK_CYCLES) #(CLOCK_PERIOD) c2 = $urandom_range(0,1);
  end
  
  initial begin
    c4 = 1'b0;
    repeat(CLOCK_CYCLES) #(CLOCK_PERIOD) c4 = $urandom_range(0,1);
  end
  
  initial begin
    c5 = 1'b0;
    repeat(CLOCK_CYCLES) #(CLOCK_PERIOD) c5 = $urandom_range(0,1);
  end
  
  initial begin
    sum = $urandom_range(0, 65535) - 32768;
    repeat(CLOCK_CYCLES) #(CLOCK_PERIOD) sum = $urandom_range(0, 65535) - 32768;
  end
  
endmodule