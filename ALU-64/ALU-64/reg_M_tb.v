module reg_M_tb;
  reg clk;
  reg rst_b;
  reg c0;
  reg [15:0]inbus;
  wire [15:0]q;
  
  reg_M #(.w(16)) uut (
    .clk(clk),
    .rst_b(rst_b),
    .c0(c0),
    .inbus(inbus),
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
    inbus = $urandom_range(0, 65535) - 32768;
    repeat(CLOCK_CYCLES) #(CLOCK_PERIOD) inbus = $urandom_range(0, 65535) - 32768;
  end
  
endmodule