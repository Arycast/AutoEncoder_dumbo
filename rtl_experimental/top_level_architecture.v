//////////////////////////////////////////////////////////////////////////////////
// Engineer    : Achmad novel, Fauzan Ibrahim, Nicholas Teffandi
// Design Name : Autoencoder
// Module Name : Top level architecture
// Project Name: Autoencoder
//////////////////////////////////////////////////////////////////////////////////

module top_level_architecture(
input clock

);

//including all component
`include "top_level_memory.v"
`include "ALU.v"
`include "demux_1_4.v"
`include "CU.v"
`include "ReLu.v"
`include "sigmoid_lut.v"
`include "ReLu_diff.v"
`include "sel_mem.v"
`include "CU.v"


//internal signal
wire [15:0] mem_to_ALU_operand_1;
wire [15:0] mem_to_ALU_operand_2;
wire [15:0] ALU_result;
wire [15:0] demux_to_mem;
wire [15:0] demux_to_ReLu;
wire [15:0] demux_to_ReLu_diff;
wire [15:0] demux_to_sigmoid;
wire [15:0] instruction; // 16 bit (op code)(field 1)(field 2)(field 3), each field contain 4 bit
wire [3:0] sector_selector_read_1;
wire [3:0] sector_selector_read_2;
wire [3:0] sector_selector_write;

//control
wire [1:0] dest_control; //set destination from ALU result (demux 2)
wire  enable_ALU;
wire op_select;
wire write_enable_mem;
wire enable_sel_mem;

//declaring module
ALU ALU_0 (mem_to_ALU_operand_1,mem_to_ALU_operand_2,enable_ALU,op_select,ALU_result);
demux_1_4 demux_2 (demux_to_mem,demux_to_sigmoid,demux_to_ReLu,demux_to_ReLu_diff,dest_control,ALU_result);
ReLu ReLu_0 (demux_to_ReLu,demux_to_mem);
ReLu_diff ReLu_diff_0 (demux_to_ReLu_diff,demux_to_mem);
sigmoid_lut sigmoid_lut_0 (demux_to_sigmoid,demux_to_mem);
sel_mem sector_selector_read_1(clock,enable_sel_mem,instruction[11:8],sector_selector_read_1);
sel_mem sector_selector_read_2(clock,enable_sel_mem,instruction[7:4],sector_selector_read_2);
sel_mem sector_selector_write(clock,enable_sel_mem,instruction[3:0],sector_selector_write);
top_level_architecture mem_0 (demux_to_mem,sector_selector_write,instruction[3:0],clock,write_enable_mem,instruction[11:8],instruction[7:4],sector_selector_read_1,sector_selector_read_2,mem_to_ALU_operand_1,mem_to_ALU_operand_2);
CU CU_0 (instruction[15:12],write_enable_mem,enable_ALU,dest_control,op_select);
// still requires instruction mem 

endmodule