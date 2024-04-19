library verilog;
use verilog.vl_types.all;
entity bitwise_not is
    port(
        \in\            : in     vl_logic;
        \not_\          : out    vl_logic
    );
end bitwise_not;
