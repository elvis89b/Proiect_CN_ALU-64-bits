library verilog;
use verilog.vl_types.all;
entity counter is
    port(
        clk             : in     vl_logic;
        rst_b           : in     vl_logic;
        c0              : in     vl_logic;
        c4              : in     vl_logic;
        count63         : out    vl_logic
    );
end counter;
