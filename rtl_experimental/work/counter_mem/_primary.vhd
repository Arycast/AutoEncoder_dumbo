library verilog;
use verilog.vl_types.all;
entity counter_mem is
    port(
        data_in         : in     vl_logic_vector(15 downto 0);
        data_out        : out    vl_logic_vector(15 downto 0);
        clk             : in     vl_logic
    );
end counter_mem;
