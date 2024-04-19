module ALU_64_tb;
  reg clk;
  reg rst_b;
  reg bgn;
  reg [63:0]in_0;
  reg [63:0]in_1;
  reg [4:0]sel;
  wire stop;
  wire [63:0]out;
  
  ALU_64 uut (
    .clk(clk),
    .rst_b(rst_b),
    .bgn(bgn),
    .in_0(in_0),
    .in_1(in_1),
    .sel(sel),
    .stop(stop),
    .out(out)
  );
  
  localparam CLOCK_CYCLES = 300;
  localparam CLOCK_PERIOD = 100;
  localparam RST_PULSE = 10;
  
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
    //#(CLOCK_PERIOD) bgn = 1'b0;
  end
  
  initial begin
    in_0 = 64'd5;
    in_1 = 64'd5;
    //sel = 5'b00000;
    //sel = 5'b000001;
    //sel = 5'b00010;
    sel = 5'b00011;
    #(CLOCK_PERIOD + CLOCK_PERIOD / 2) in_0 = 64'd15;
    //#(3 * CLOCK_PERIOD) sel = 5'b01001;
    //#(3 * CLOCK_PERIOD) sel = 5'b01010;
    //#(3 * CLOCK_PERIOD) sel = 5'b01011;
    //#(3 * CLOCK_PERIOD) sel = 5'b01100;
    //#(3 * CLOCK_PERIOD) sel = 5'b01101;
    //#(3 * CLOCK_PERIOD) sel = 5'b01110;
    //#(3 * CLOCK_PERIOD) sel = 5'b01111;
    //#(3 * CLOCK_PERIOD) sel = 5'b11111;
  end
  
endmodule