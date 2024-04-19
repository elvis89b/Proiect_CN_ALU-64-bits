library verilog;
use verilog.vl_types.all;
entity ALU_64 is
    port(
        clk             : in     vl_logic;
        rst_b           : in     vl_logic;
        bgn             : in     vl_logic;
        in_0            : in     vl_logic_vector(63 downto 0);
        in_1            : in     vl_logic_vector(63 downto 0);
        sel             : in     vl_logic_vector(4 downto 0);
        stop            : out    vl_logic;
        \out\           : out    vl_logic_vector(63 downto 0)
    );
end ALU_64;
