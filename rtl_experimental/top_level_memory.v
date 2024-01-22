//////////////////////////////////////////////////////////////////////////////////
// Engineer    : Achmad novel, Fauzan Ibrahim, Nicholas Teffandi
// Design Name : Autoencoder
// Module Name : Top level for memory module
// Project Name: Autoencoder
//////////////////////////////////////////////////////////////////////////////////

`include "mem.v"
`include "mux_16_1.v"
`include "demux_1_16.v"
`include "rom.v"

module top_level_memory (
    
   input [15:0] data_write, 
   input [3:0] sector_write_select,
   input [3:0] write_address,
   input clock,
   input write_enable,
   input [3:0] read_add_1,
   input [3:0] read_add_2,
   input [3:0] read_sector_selector_1,
   input [3:0] read_sector_selector_2,
   output [15:0] read_data_1,
   output [15:0] read_data_2
);

wire [15:0] data_write_temp [15:0];
wire [15:0] read_data_1_temp [15:0];
wire [15:0] read_data_2_temp [15:0];


demux_1_16 demux(data_write_temp[0],data_write_temp[1],data_write_temp[2],data_write_temp[3],data_write_temp[4],data_write_temp[5],data_write_temp[6],data_write_temp[7],data_write_temp[8],data_write_temp[9],data_write_temp[10],data_write_temp[11],data_write_temp[12],data_write_temp[13],data_write_temp[14],data_write_temp[15],sector_write_select,data_write);
mux_16_1 mux_1(read_data_1_temp[0],read_data_1_temp[1],read_data_1_temp[2],read_data_1_temp[3],read_data_1_temp[4],read_data_1_temp[5],read_data_1_temp[6],read_data_1_temp[7],read_data_1_temp[8],read_data_1_temp[9],read_data_1_temp[10],read_data_1_temp[11],read_data_1_temp[12],read_data_1_temp[13],read_data_1_temp[14],read_data_1_temp[15],read_sector_selector_1,read_data_1);
mux_16_1 mux_2(read_data_2_temp[0],read_data_2_temp[1],read_data_2_temp[2],read_data_2_temp[3],read_data_2_temp[4],read_data_2_temp[5],read_data_2_temp[6],read_data_2_temp[7],read_data_2_temp[8],read_data_2_temp[9],read_data_2_temp[10],read_data_2_temp[11],read_data_2_temp[12],read_data_2_temp[13],read_data_2_temp[14],read_data_2_temp[15],read_sector_selector_2,read_data_2);
rom rom_0(clock,1'b0,4'b0000,16'd0,read_add_1,read_add_2,read_data_1_temp[15],read_data_2_temp[15]);
//auto generate 16 memory sector
genvar i;
generate
    for (i=0; i<=14; i=i+1) begin : memory // <-- example block name
    mem memory_block (
      clock,
      write_enable,
      write_address,
      data_write_temp[i],
      read_add_1,
      read_add_2,
      read_data_1_temp[i],
      read_data_2_temp[i]
    );
end 
endgenerate

endmodule