module logic_unit_tb;
  reg signed [63:0]in_0;
  reg signed [63:0]in_1;
  reg [2:0]sel;
  wire signed [63:0]out;
  
  logic_unit uut (
    .in_0(in_0),
    .in_1(in_1),
    .sel(sel),
    .out(out)
  );
  
  integer i;
  initial begin
    in_0 = {$random(), $random()};
    in_1 = {$random(), $random()};
    sel = $urandom_range(0, 7);
    $display("Time\t\t\t\t\tin_0\t\t\t\t\t\t\t\t\t\tin_1\t\t\t\t\t\tsel\t\t\t\t\t\tout");
    $monitor("%0t\t%b\t\t%b\t\t%b\t\t%b", $time, in_0, in_1, sel, out);
    for(i = 1 ; i < 10 ; i = i + 1)
    begin
      #10
      in_0 = {$random(), $random()};
      in_1 = {$random(), $random()};
      sel = $urandom_range(0, 7);
    end
  end
  
endmodule