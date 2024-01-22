library verilog;
use verilog.vl_types.all;
entity sel_mem is
    port(
        clk             : in     vl_logic;
        en              : in     vl_logic;
        data_in         : in     vl_logic_vector(3 downto 0);
        data_out        : out    vl_logic_vector(3 downto 0)
    );
end sel_mem;
