library verilog;
use verilog.vl_types.all;
entity shift_rotate_unit is
    port(
        \in\            : in     vl_logic_vector(127 downto 0);
        sel             : in     vl_logic_vector(2 downto 0);
        \out\           : out    vl_logic_vector(127 downto 0)
    );
end shift_rotate_unit;
