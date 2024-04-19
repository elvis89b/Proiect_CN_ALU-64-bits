library verilog;
use verilog.vl_types.all;
entity br2 is
    port(
        clk             : in     vl_logic;
        bgn             : in     vl_logic;
        rst_b           : in     vl_logic;
        inbus           : in     vl_logic_vector(63 downto 0);
        stop            : out    vl_logic;
        outbus          : out    vl_logic_vector(63 downto 0)
    );
end br2;
