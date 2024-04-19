library verilog;
use verilog.vl_types.all;
entity bitwise_nand is
    port(
        in_0            : in     vl_logic;
        in_1            : in     vl_logic;
        \nand_\         : out    vl_logic
    );
end bitwise_nand;
