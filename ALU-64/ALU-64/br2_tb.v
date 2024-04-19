module br2_tb;
  reg clk;
  reg bgn;
  reg rst_b;
  reg [63:0]inbus;
  wire stop;
  wire [63:0]outbus;
  
  br2 uut (
    .clk(clk),
    .bgn(bgn),
    .rst_b(rst_b),
    .inbus(inbus),
    .stop(stop),
    .outbus(outbus)
  );
  
  localparam CLOCK_CYCLES = 200;
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
    bgn = 1'b1;
  end
  
  initial begin
    inbus = {64{1'bz}};
    #(CLOCK_PERIOD)
    #(CLOCK_PERIOD / 2)
    inbus = 64'd1200;
    #(CLOCK_PERIOD)
    inbus = 64'd1000;
    //#(CLOCK_PERIOD)
    //inbus = {64{1'bz}};
  end
  
endmodule