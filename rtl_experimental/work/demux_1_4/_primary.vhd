library verilog;
use verilog.vl_types.all;
entity demux_1_4 is
    port(
        output_1        : out    vl_logic_vector(15 downto 0);
        output_2        : out    vl_logic_vector(15 downto 0);
        output_3        : out    vl_logic_vector(15 downto 0);
        output_4        : out    vl_logic_vector(15 downto 0);
        \select\        : in     vl_logic_vector(1 downto 0);
        \in\            : in     vl_logic_vector(15 downto 0)
    );
end demux_1_4;
