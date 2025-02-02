module reg_Q_tb;
  reg clk;
  reg rst_b;
  reg c1;
  reg c4;
  reg c6;
  reg [15:0]inbus;
  reg A_lsb;
  wire Q_lsb;
  wire [15:0]outbus;
  //wire [15:0]q;
  
  reg_Q #(.w(16)) uut (
    .clk(clk),
    .rst_b(rst_b),
    .c1(c1),
    .c4(c4),
    .c6(c6),
    .inbus(inbus),
    .A_lsb(A_lsb),
    .Q_lsb(Q_lsb),
    .outbus(outbus)
    //.q(q)
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
    c1 = 1'b0;
    repeat(CLOCK_CYCLES) #(CLOCK_PERIOD) c1 = $urandom_range(0,1);
  end
  
  initial begin
    c4 = 1'b0;
    repeat(CLOCK_CYCLES) #(CLOCK_PERIOD) c4 = $urandom_range(0,1);
  end
  
  initial begin
    c6 = 1'b0;
    repeat(CLOCK_CYCLES) #(CLOCK_PERIOD) c6 = $urandom_range(0,1);
  end
  
  initial begin
    inbus = $urandom_range(0, 65535) - 32768;
    repeat(CLOCK_CYCLES) #(CLOCK_PERIOD) inbus = $urandom_range(0, 65535) - 32768;
  end
  
  initial begin
    A_lsb = 1'b0;
    repeat(CLOCK_CYCLES) #(CLOCK_PERIOD) A_lsb = $urandom_range(0,1);
  end
  
endmodule