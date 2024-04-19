library verilog;
use verilog.vl_types.all;
entity csea_level is
    port(
        x               : in     vl_logic_vector(7 downto 0);
        y               : in     vl_logic_vector(7 downto 0);
        previous_c_out  : in     vl_logic;
        z               : out    vl_logic_vector(7 downto 0);
        next_c_out      : out    vl_logic
    );
end csea_level;
