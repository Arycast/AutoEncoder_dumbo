library verilog;
use verilog.vl_types.all;
entity mux_18_1 is
    port(
        input_1         : in     vl_logic_vector(15 downto 0);
        input_2         : in     vl_logic_vector(15 downto 0);
        input_3         : in     vl_logic_vector(15 downto 0);
        input_4         : in     vl_logic_vector(15 downto 0);
        input_5         : in     vl_logic_vector(15 downto 0);
        input_6         : in     vl_logic_vector(15 downto 0);
        input_7         : in     vl_logic_vector(15 downto 0);
        input_8         : in     vl_logic_vector(15 downto 0);
        input_9         : in     vl_logic_vector(15 downto 0);
        input_10        : in     vl_logic_vector(15 downto 0);
        input_11        : in     vl_logic_vector(15 downto 0);
        input_12        : in     vl_logic_vector(15 downto 0);
        input_13        : in     vl_logic_vector(15 downto 0);
        input_14        : in     vl_logic_vector(15 downto 0);
        input_15        : in     vl_logic_vector(15 downto 0);
        input_16        : in     vl_logic_vector(15 downto 0);
        input_17        : in     vl_logic_vector(15 downto 0);
        input_18        : in     vl_logic_vector(15 downto 0);
        \select\        : in     vl_logic_vector(4 downto 0);
        \out\           : out    vl_logic_vector(15 downto 0)
    );
end mux_18_1;
