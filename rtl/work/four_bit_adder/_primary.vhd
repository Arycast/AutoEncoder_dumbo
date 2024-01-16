library verilog;
use verilog.vl_types.all;
entity four_bit_adder is
    port(
        ADD_1           : in     vl_logic_vector(3 downto 0);
        ADD_2           : in     vl_logic_vector(3 downto 0);
        S               : out    vl_logic_vector(3 downto 0);
        G               : out    vl_logic;
        C               : in     vl_logic;
        C_OUT           : out    vl_logic;
        P               : out    vl_logic
    );
end four_bit_adder;
