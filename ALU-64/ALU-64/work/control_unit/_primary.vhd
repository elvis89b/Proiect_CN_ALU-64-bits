library verilog;
use verilog.vl_types.all;
entity control_unit is
    port(
        clk             : in     vl_logic;
        rst_b           : in     vl_logic;
        bgn             : in     vl_logic;
        opcode          : in     vl_logic_vector(1 downto 0);
        q_1             : in     vl_logic;
        q0              : in     vl_logic;
        a63             : in     vl_logic;
        count63         : in     vl_logic;
        c0              : out    vl_logic;
        c1              : out    vl_logic;
        c2              : out    vl_logic;
        c3              : out    vl_logic;
        c4              : out    vl_logic;
        c5              : out    vl_logic;
        c6              : out    vl_logic;
        c7              : out    vl_logic;
        c8              : out    vl_logic;
        c9              : out    vl_logic;
        c10             : out    vl_logic;
        stop            : out    vl_logic
    );
end control_unit;
