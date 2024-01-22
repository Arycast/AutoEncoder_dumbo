library verilog;
use verilog.vl_types.all;
entity mux_4_1 is
    port(
        input_1         : in     vl_logic_vector(15 downto 0);
        input_2         : in     vl_logic_vector(15 downto 0);
        input_3         : in     vl_logic_vector(15 downto 0);
        input_4         : in     vl_logic_vector(15 downto 0);
        \select\        : in     vl_logic_vector(1 downto 0);
        \out\           : out    vl_logic_vector(15 downto 0)
    );
end mux_4_1;
