library verilog;
use verilog.vl_types.all;
entity substractor is
    port(
        x               : in     vl_logic_vector(64 downto 0);
        y               : in     vl_logic_vector(64 downto 0);
        z               : out    vl_logic_vector(127 downto 0)
    );
end substractor;
