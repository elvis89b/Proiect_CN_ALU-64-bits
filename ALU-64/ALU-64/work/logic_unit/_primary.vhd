library verilog;
use verilog.vl_types.all;
entity logic_unit is
    port(
        in_0            : in     vl_logic_vector(63 downto 0);
        in_1            : in     vl_logic_vector(63 downto 0);
        sel             : in     vl_logic_vector(2 downto 0);
        \out\           : out    vl_logic_vector(63 downto 0)
    );
end logic_unit;
