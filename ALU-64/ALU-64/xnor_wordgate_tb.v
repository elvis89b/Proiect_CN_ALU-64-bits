module xnor_wordgate_tb;
  reg signed [7:0]in_0_8;
  reg signed [15:0]in_0_16;
  reg signed [7:0]in_1_8;
  reg signed [15:0]in_1_16;
  wire signed [7:0]XNOR_8;
  wire signed [15:0]XNOR_16;
  
  xnor_wordgate #(.w(8)) uut_8 (
    .in_0(in_0_8),
    .in_1(in_1_8),
    .XNOR(XNOR_8)
  );
  
  xnor_wordgate #(.w(16)) uut_16 (
    .in_0(in_0_16),
    .in_1(in_1_16),
    .XNOR(XNOR_16)
  );
  
  integer i;
  initial begin
    in_0_8 = $urandom_range(0, 255) - 128;
    in_1_8 = $urandom_range(0, 255) - 128;
    $display("Time\t    in_0\t\t    in_1\t\t    XNOR");
    $monitor("%0t\t%b(%d)\t\t%b(%d)\t\t%b(%d)", $time, in_0_8, in_0_8, in_1_8, in_1_8, XNOR_8, XNOR_8);
    for(i = 1 ; i < 10 ; i = i + 1)
    begin
      #10
      in_0_8 = $urandom_range(0, 255) - 128;
      in_1_8 = $urandom_range(0, 255) - 128;
    end
  end
  
  initial begin
    #100 
    $display();
    $display();
    $display();
  end
  
  initial begin
    #110
    in_0_16 = $urandom_range(0, 65535) - 32768;
    in_1_16 = $urandom_range(0, 65535) - 32768;
    $display("Time\t\tin_0\t\t\t\t\tin_1\t\t\t\t\tXNOR");
    $monitor("%0t\t%b(%d)\t\t%b(%d)\t\t%b(%d)", $time, in_0_16, in_0_16, in_1_16, in_1_16, XNOR_16, XNOR_16);
    for(i = 1 ; i < 10 ; i = i + 1)
    begin
      #10
      in_0_16 = $urandom_range(0, 65535) - 32768;
      in_1_16 = $urandom_range(0, 65535) - 32768;
    end
  end
  
endmodule