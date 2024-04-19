library verilog;
use verilog.vl_types.all;
entity sh_reg is
    generic(
        w               : integer := 64;
        d               : integer := 1
    );
    port(
        clk             : in     vl_logic;
        rst_b           : in     vl_logic;
        load            : in     vl_logic;
        sh              : in     vl_logic;
        sh_mode         : in     vl_logic_vector(2 downto 0);
        sh_in           : in     vl_logic_vector;
        \in\            : in     vl_logic_vector;
        q               : out    vl_logic_vector
    );
end sh_reg;
