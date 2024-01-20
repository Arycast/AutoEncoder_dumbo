library verilog;
use verilog.vl_types.all;
entity top_level_memory is
    port(
        data_write      : in     vl_logic_vector(15 downto 0);
        sector_write_select: in     vl_logic_vector(3 downto 0);
        write_address   : in     vl_logic_vector(3 downto 0);
        clock           : in     vl_logic;
        write_enable    : in     vl_logic;
        read_add_1      : in     vl_logic_vector(3 downto 0);
        read_add_2      : in     vl_logic_vector(3 downto 0);
        read_sector_selector_1: in     vl_logic_vector(3 downto 0);
        read_sector_selector_2: in     vl_logic_vector(3 downto 0);
        read_data_1     : out    vl_logic_vector(15 downto 0);
        read_data_2     : out    vl_logic_vector(15 downto 0)
    );
end top_level_memory;
