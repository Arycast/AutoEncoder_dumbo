//////////////////////////////////////////////////////////////////////////////////
// Engineer    : Achmad novel, Fauzan Ibrahim, Nicholas Teffandi
// Design Name : Autoencoder
// Module Name : Top level for memory module
// Project Name: Autoencoder
//////////////////////////////////////////////////////////////////////////////////

module top_level_memory (
    
   input [15:0] data_write, 
   input [3:0] sector_write_select,
   input [3:0] write_address,
   input clock,
   input en_write,
   input [3:0] read_add_1,
   input [3:0] read_add_2,
   input [3:0] read_sector_selector_1,
   input [3:0] read_sector_selector_2,
   output [15:0] read_data_1,
   output [15:0] read_data_2
);

wire [15:0] read_data_1_temp [15:0];
wire [15:0] read_data_2_temp [15:0];
wire [15:0] write_enable;

demux_1_16 demux(write_enable,sector_write_select,en_write);
mux_16_1 mux_1(read_data_1_temp[0],read_data_1_temp[1],read_data_1_temp[2],read_data_1_temp[3],read_data_1_temp[4],read_data_1_temp[5],read_data_1_temp[6],read_data_1_temp[7],read_data_1_temp[8],read_data_1_temp[9],read_data_1_temp[10],read_data_1_temp[11],read_data_1_temp[12],read_data_1_temp[13],read_data_1_temp[14],read_data_1_temp[15],read_sector_selector_1,read_data_1);
mux_16_1 mux_2(read_data_2_temp[0],read_data_2_temp[1],read_data_2_temp[2],read_data_2_temp[3],read_data_2_temp[4],read_data_2_temp[5],read_data_2_temp[6],read_data_2_temp[7],read_data_2_temp[8],read_data_2_temp[9],read_data_2_temp[10],read_data_2_temp[11],read_data_2_temp[12],read_data_2_temp[13],read_data_2_temp[14],read_data_2_temp[15],read_sector_selector_2,read_data_2);
rom rom_0(clock,1'b0,4'b0000,16'd0,read_add_1,read_add_2,read_data_1_temp[15],read_data_2_temp[15]);

genvar i;
generate
    for (i=0; i<=14; i=i+1) begin : memory // <-- example block name
    mem memory_block (
      clock,
      write_enable[i],
      write_address,
      data_write,
      read_add_1,
      read_add_2,
      read_data_1_temp[i],
      read_data_2_temp[i]
    );
end 
endgenerate
endmodule