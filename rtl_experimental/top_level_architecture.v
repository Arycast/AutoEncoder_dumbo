//////////////////////////////////////////////////////////////////////////////////
// Engineer    : Achmad novel, Fauzan Ibrahim, Nicholas Teffandi
// Design Name : Autoencoder
// Module Name : Top level architecture
// Project Name: Autoencoder
//////////////////////////////////////////////////////////////////////////////////

//including all component
`include "top_level_memory.v"
`include "ALU.v"
`include "mux_4_1.v"
`include "CU.v"
`include "ReLu.v"
`include "sigmoid_lut.v"
`include "sigmoid_diff_lut.v"
`include "sel_mem.v"
`include "Instrcut_mem.v"
`include "counter_mem.v"
`include "mux_2_1.v"

module top_level_architecture(
input clock

);

//internal signal
wire [15:0] mem_to_ALU_operand_1;
wire [15:0] mem_to_operand2;
wire [15:0] operand2_ALU;
wire [15:0] ALU_result;
wire [15:0] mux_to_mem;
wire [15:0] ReLu_to_mux;
wire [15:0] sigmoid_diff_to_mux;
wire [15:0] sigmoid_to_mux;
wire [15:0] instruction; // 16 bit (op code)(field 1)(field 2)(field 3), each field contain 4 bit
wire [3:0] sector_selector_read_1;
wire [3:0] sector_selector_read_2;
wire [3:0] sector_selector_write;

//control
wire [1:0] dest_control; //set destination from ALU result (demux 2)
wire  enable_ALU;
wire [1:0]op_select;
wire write_enable_mem;
wire enable_sel_mem;
wire [15:0] counter;
wire [15:0] counter_input;
wire operand2_sel;

//declaring module
ALU ALU_0 (mem_to_ALU_operand_1,operand2_ALU,enable_ALU,op_select,ALU_result);
counter_mem counter_mem_0(counter_input,counter,clock);
CLA CLA_COUNTER (16'd1,counter,1'b0,counter_input);
//demux_1_4 demux_2 (demux_to_mem,demux_to_sigmoid,demux_to_ReLu,demux_to_Sigmoid_diff,dest_control,ALU_result);
mux_4_1 mux_2 (ALU_result,sigmoid_to_mux,ReLu_to_mux,sigmoid_diff_to_mux,dest_control,mux_to_mem);
mux_2_1 mux_operand2 (mem_to_operand2,16'd0, operand2_sel,operand2_ALU);
ReLu ReLu_0 (ALU_result,ReLu_to_mux);
sigmoid_diff_lut sigmoid_diff_lut_0 (ALU_result,sigmoid_diff_to_mux);
sigmoid_lut sigmoid_lut_0 (ALU_result,sigmoid_to_mux);
sel_mem selector_read_1(clock,enable_sel_mem,instruction[11:8],sector_selector_read_1);
sel_mem selector_read_2(clock,enable_sel_mem,instruction[7:4],sector_selector_read_2);
sel_mem selector_write(clock,enable_sel_mem,instruction[3:0],sector_selector_write);
top_level_memory mem_0 (mux_to_mem,sector_selector_write,instruction[3:0],clock,write_enable_mem,instruction[11:8],instruction[7:4],sector_selector_read_1,sector_selector_read_2,mem_to_ALU_operand_1,mem_to_operand2);
CU CU_0 (instruction[15:12],write_enable_mem,enable_ALU,enable_sel_mem,dest_control,op_select,operand2_sel);
Instrcut_mem instruction_0 (clock,counter,instruction); 

endmodule