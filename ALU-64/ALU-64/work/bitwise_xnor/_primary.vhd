library verilog;
use verilog.vl_types.all;
entity bitwise_xnor is
    port(
        in_0            : in     vl_logic;
        in_1            : in     vl_logic;
        \xnor_\         : out    vl_logic
    );
end bitwise_xnor;
