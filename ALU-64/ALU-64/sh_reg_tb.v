module sh_reg_tb;
  reg clk;
  reg rst_b;
  reg load;
  reg sh;
  reg [2:0]sh_mode;
  reg sh_in_8_1;
  reg [2:0]sh_in_32_3;
  reg signed [7:0]in_8_1;
  reg signed [31:0]in_32_3;
  wire signed [7:0]q_8_1;
  wire signed [31:0]q_32_3;
  
  sh_reg #(.w(8), .d(1)) uut_8_1 (
    .clk(clk),
    .rst_b(rst_b),
    .load(load),
    .sh(sh),
    .sh_mode(sh_mode),
    .sh_in(sh_in_8_1),
    .in(in_8_1),
    .q(q_8_1)
  );
  
  sh_reg #(.w(32), .d(3)) uut_32_3 (
    .clk(clk),
    .rst_b(rst_b),
    .load(load),
    .sh(sh),
    .sh_mode(sh_mode),
    .sh_in(sh_in_32_3),
    .in(in_32_3),
    .q(q_32_3)
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
    load = 1'b0;
    #(CLOCK_PERIOD / 2)
    repeat(CLOCK_CYCLES) begin
      load = $urandom_range(0,1);
      #(CLOCK_PERIOD);
    end
  end
  
  initial begin
    in_8_1 = 8'd0;
    #(CLOCK_PERIOD / 2)
    repeat(CLOCK_CYCLES) begin
      in_8_1 = $urandom_range(0, 255) - 128;
      #(CLOCK_PERIOD);
    end
  end
  
  initial begin
    in_32_3 = 32'd0;
    #(CLOCK_PERIOD / 2)
    repeat(CLOCK_CYCLES) begin
      in_32_3 = $random();
      #(CLOCK_PERIOD);
    end
  end
  
  initial begin
    sh = 1'b0;
    #(CLOCK_PERIOD / 2)
    repeat(CLOCK_CYCLES) begin
      sh = $urandom_range(0,1);
      #(CLOCK_PERIOD);
    end
  end
  
  initial begin
    sh_mode = 3'b000;
    #(CLOCK_PERIOD / 2)
    repeat(CLOCK_CYCLES) begin
      sh_mode = $urandom_range(0,7);
      #(CLOCK_PERIOD);
    end
  end
  
  initial begin
    sh_in_8_1 = 1'b0;
    #(CLOCK_PERIOD / 2)
    repeat(CLOCK_CYCLES) begin
      sh_in_8_1 = $urandom_range(0,1);
      #(CLOCK_PERIOD);
    end
  end
  
  initial begin
    sh_in_32_3 = 3'b000;
    #(CLOCK_PERIOD / 2)
    repeat(CLOCK_CYCLES) begin
      sh_in_32_3 = $urandom_range(0,7);
      #(CLOCK_PERIOD);
    end
  end
  
endmodule