library verilog;
use verilog.vl_types.all;
entity demux_9_1 is
    port(
        output_1        : out    vl_logic_vector(15 downto 0);
        output_2        : out    vl_logic_vector(15 downto 0);
        output_3        : out    vl_logic_vector(15 downto 0);
        output_4        : out    vl_logic_vector(15 downto 0);
        output_5        : out    vl_logic_vector(15 downto 0);
        output_6        : out    vl_logic_vector(15 downto 0);
        output_7        : out    vl_logic_vector(15 downto 0);
        output_8        : out    vl_logic_vector(15 downto 0);
        output_9        : out    vl_logic_vector(15 downto 0);
        \select\        : in     vl_logic_vector(3 downto 0);
        \in\            : in     vl_logic_vector(15 downto 0)
    );
end demux_9_1;
