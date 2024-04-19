module mux16to1_tb;
  reg signed [7:0]in_0_8;
  reg signed [15:0]in_0_16;
  reg signed [7:0]in_1_8;
  reg signed [15:0]in_1_16;
  reg signed [7:0]in_2_8;
  reg signed [15:0]in_2_16;
  reg signed [7:0]in_3_8;
  reg signed [15:0]in_3_16;
  reg signed [7:0]in_4_8;
  reg signed [15:0]in_4_16;
  reg signed [7:0]in_5_8;
  reg signed [15:0]in_5_16;
  reg signed [7:0]in_6_8;
  reg signed [15:0]in_6_16;
  reg signed [7:0]in_7_8;
  reg signed [15:0]in_7_16;
  reg signed [7:0]in_8_8;
  reg signed [15:0]in_8_16;
  reg signed [7:0]in_9_8;
  reg signed [15:0]in_9_16;
  reg signed [7:0]in_10_8;
  reg signed [15:0]in_10_16;
  reg signed [7:0]in_11_8;
  reg signed [15:0]in_11_16;
  reg signed [7:0]in_12_8;
  reg signed [15:0]in_12_16;
  reg signed [7:0]in_13_8;
  reg signed [15:0]in_13_16;
  reg signed [7:0]in_14_8;
  reg signed [15:0]in_14_16;
  reg signed [7:0]in_15_8;
  reg signed [15:0]in_15_16;
  reg [3:0]sel;
  wire signed [7:0]out_8;
  wire signed [15:0]out_16;

  
  mux16to1 #(.w(8)) uut_8 (
    .in_0(in_0_8),
    .in_1(in_1_8),
    .in_2(in_2_8),
    .in_3(in_3_8),
    .in_4(in_4_8),
    .in_5(in_5_8),
    .in_6(in_6_8),
    .in_7(in_7_8),
    .in_8(in_8_8),
    .in_9(in_9_8),
    .in_10(in_10_8),
    .in_11(in_11_8),
    .in_12(in_12_8),
    .in_13(in_13_8),
    .in_14(in_14_8),
    .in_15(in_15_8),
    .sel(sel),
    .out(out_8)
  );
  
  mux16to1 #(.w(16)) uut_16 (
    .in_0(in_0_16),
    .in_1(in_1_16),
    .in_2(in_2_16),
    .in_3(in_3_16),
    .in_4(in_4_16),
    .in_5(in_5_16),
    .in_6(in_6_16),
    .in_7(in_7_16),
    .in_8(in_8_16),
    .in_9(in_9_16),
    .in_10(in_10_16),
    .in_11(in_11_16),
    .in_12(in_12_16),
    .in_13(in_13_16),
    .in_14(in_14_16),
    .in_15(in_15_16),
    .sel(sel),
    .out(out_16)
  );
  
  integer i;
  initial begin
    in_0_8 = $urandom_range(0, 255) - 128;
    in_1_8 = $urandom_range(0, 255) - 128;
    in_2_8 = $urandom_range(0, 255) - 128;
    in_3_8 = $urandom_range(0, 255) - 128;
    in_4_8 = $urandom_range(0, 255) - 128;
    in_5_8 = $urandom_range(0, 255) - 128;
    in_6_8 = $urandom_range(0, 255) - 128;
    in_7_8 = $urandom_range(0, 255) - 128;
    in_8_8 = $urandom_range(0, 255) - 128;
    in_9_8 = $urandom_range(0, 255) - 128;
    in_10_8 = $urandom_range(0, 255) - 128;
    in_11_8 = $urandom_range(0, 255) - 128;
    in_12_8 = $urandom_range(0, 255) - 128;
    in_13_8 = $urandom_range(0, 255) - 128;
    in_14_8 = $urandom_range(0, 255) - 128;
    in_15_8 = $urandom_range(0, 255) - 128;
    sel = $urandom_range(0, 15);
    $display("Time\tin_0\tin_1\tin_2\tin_3\tin_4\tin_5\tin_6\tin_7\tin_8\tin_9\tin_10\tin_11\tin_12\tin_13\tin_14\tin_15\tsel\t\tout");
    $monitor("%0t\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t\t%d", $time, in_0_8, in_1_8, in_2_8, in_3_8, in_4_8, in_5_8, in_6_8, in_7_8, in_8_8, in_9_8, in_10_8, in_11_8, in_12_8, in_13_8, in_14_8, in_15_8, sel, out_8);
    for(i = 1 ; i < 10 ; i = i + 1)
    begin
      #10
      in_0_8 = $urandom_range(0, 255) - 128;
      in_1_8 = $urandom_range(0, 255) - 128;
      in_2_8 = $urandom_range(0, 255) - 128;
      in_3_8 = $urandom_range(0, 255) - 128;
      in_4_8 = $urandom_range(0, 255) - 128;
      in_5_8 = $urandom_range(0, 255) - 128;
      in_6_8 = $urandom_range(0, 255) - 128;
      in_7_8 = $urandom_range(0, 255) - 128;
      in_8_8 = $urandom_range(0, 255) - 128;
      in_9_8 = $urandom_range(0, 255) - 128;
      in_10_8 = $urandom_range(0, 255) - 128;
      in_11_8 = $urandom_range(0, 255) - 128;
      in_12_8 = $urandom_range(0, 255) - 128;
      in_13_8 = $urandom_range(0, 255) - 128;
      in_14_8 = $urandom_range(0, 255) - 128;
      in_15_8 = $urandom_range(0, 255) - 128;
      sel = $urandom_range(0, 15);
    end
  end
  
  initial begin
    #100
    $display();
    $display();
    $display();
    $display();
    $display();
    $display();
  end
  
  initial begin
    #110
    in_0_16 = $urandom_range(0, 65535) - 32768;
    in_1_16 = $urandom_range(0, 65535) - 32768;
    in_2_16 = $urandom_range(0, 65535) - 32768;
    in_3_16 = $urandom_range(0, 65535) - 32768;
    in_4_16 = $urandom_range(0, 65535) - 32768;
    in_5_16 = $urandom_range(0, 65535) - 32768;
    in_6_16 = $urandom_range(0, 65535) - 32768;
    in_7_16 = $urandom_range(0, 65535) - 32768;
    in_8_16 = $urandom_range(0, 65535) - 32768;
    in_9_16 = $urandom_range(0, 65535) - 32768;
    in_10_16 = $urandom_range(0, 65535) - 32768;
    in_11_16 = $urandom_range(0, 65535) - 32768;
    in_12_16 = $urandom_range(0, 65535) - 32768;
    in_13_16 = $urandom_range(0, 65535) - 32768;
    in_14_16 = $urandom_range(0, 65535) - 32768;
    in_15_16 = $urandom_range(0, 65535) - 32768;
    sel = $urandom_range(0, 15);
    $display("Time\tin_0\tin_1\tin_2\tin_3\tin_4\tin_5\tin_6\tin_7\tin_8\tin_9\tin_10\tin_11\tin_12\tin_13\tin_14\tin_15\tsel\t\tout");
    $monitor("%0t\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t%d\t\t%d", $time, in_0_16, in_1_16, in_2_16, in_3_16, in_4_16, in_5_16, in_6_16, in_7_16, in_8_16, in_9_16, in_10_16, in_11_16, in_12_16, in_13_16, in_14_16, in_15_16, sel, out_16);
    for(i = 1 ; i < 10 ; i = i + 1)
    begin
      #10
      in_0_16 = $urandom_range(0, 65535) - 32768;
      in_1_16 = $urandom_range(0, 65535) - 32768;
      in_2_16 = $urandom_range(0, 65535) - 32768;
      in_3_16 = $urandom_range(0, 65535) - 32768;
      in_4_16 = $urandom_range(0, 65535) - 32768;
      in_5_16 = $urandom_range(0, 65535) - 32768;
      in_6_16 = $urandom_range(0, 65535) - 32768;
      in_7_16 = $urandom_range(0, 65535) - 32768;
      in_8_16 = $urandom_range(0, 65535) - 32768;
      in_9_16 = $urandom_range(0, 65535) - 32768;
      in_10_16 = $urandom_range(0, 65535) - 32768;
      in_11_16 = $urandom_range(0, 65535) - 32768;
      in_12_16 = $urandom_range(0, 65535) - 32768;
      in_13_16 = $urandom_range(0, 65535) - 32768;
      in_14_16 = $urandom_range(0, 65535) - 32768;
      in_15_16 = $urandom_range(0, 65535) - 32768;
      sel = $urandom_range(0, 7);
    end
  end
  
endmodule