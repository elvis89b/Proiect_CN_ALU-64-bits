module not_wordgate_tb;
  reg signed [7:0]in_8;
  reg signed [15:0]in_16;
  wire signed [7:0]NOT_8;
  wire signed [15:0]NOT_16;
  
  not_wordgate #(.w(8)) uut_8 (
    .in(in_8),
    .NOT(NOT_8)
  );
  
  not_wordgate #(.w(16)) uut_16 (
    .in(in_16),
    .NOT(NOT_16)
  );
  
  integer i;
  initial begin
    in_8 = $urandom_range(0, 255) - 128;
    $display("Time\t    in\t\t\t    NOT");
    $monitor("%0t\t%b(%d)\t\t%b(%d)", $time, in_8, in_8, NOT_8, NOT_8);
    for(i = 1 ; i < 10 ; i = i + 1)
    begin
      #10
      in_8 = $urandom_range(0, 255) - 128;
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
    in_16 = $urandom_range(0, 65535) - 32768;
    $display("Time\t\tin\t\t\t\t\tNOT");
    $monitor("%0t\t%b(%d)\t\t%b(%d)", $time, in_16, in_16, NOT_16, NOT_16);
    for(i = 1 ; i < 10 ; i = i + 1)
    begin
      #10
      in_16 = $urandom_range(0, 65535) - 32768;
    end
  end
  
endmodule