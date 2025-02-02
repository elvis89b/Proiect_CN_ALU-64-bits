module mux2to1_tb;
  reg signed [7:0]in_0_8;
  reg in_0_1;
  reg signed [7:0]in_1_8;
  reg in_1_1;
  reg sel;
  wire signed [7:0]out_8;
  wire out_1;
  
  mux2to1 #(.w(1)) uut_1 (
    .in_0(in_0_1),
    .in_1(in_1_1),
    .sel(sel),
    .out(out_1)
  );
  
  mux2to1 #(.w(8)) uut_8 (
    .in_0(in_0_8),
    .in_1(in_1_8),
    .sel(sel),
    .out(out_8)
  );
  
  integer i;
  initial begin
    {in_0_1, in_1_1, sel} = 0;
    $display("Time\tin_0\tin_1\tsel\t\tout");
    $monitor("%0t\t%b\t%b\t%b\t\t%b", $time, in_0_1, in_1_1, sel, out_1);
    for(i = 1 ; i < 8 ; i = i + 1)
      #10 {in_0_1, in_1_1, sel} = i;
  end
  
  initial begin
    #80 
    $display();
    $display();
    $display();
  end
  
  initial begin
    #90
    in_0_8 = $urandom_range(0, 255) - 128;
    in_1_8 = $urandom_range(0, 255) - 128;
    sel = $urandom_range(0,1);
    $display("Time\tin_0\tin_1\tsel\t\tout");
    $monitor("%0t\t%d\t%d\t%b\t\t%d", $time, in_0_8, in_1_8, sel, out_8);
    for(i = 1 ; i < 10 ; i = i + 1)
    begin
      #10
      in_0_8 = $urandom_range(0, 255) - 128;
      in_1_8 = $urandom_range(0, 255) - 128;
      sel = $urandom_range(0,1);
    end
  end
  
endmodule