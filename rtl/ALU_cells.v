//////////////////////////////////////////////////////////////////////////////////
// Engineer    : Achmad novel, Fauzan Ibrahim, Nicholas Teffandi
// Design Name : Autoencoder
// Module Name : ALU_Cells
// Project Name: Autoencoder
//////////////////////////////////////////////////////////////////////////////////
`include "ALU.v"
`include "mux_18_1.v"
`include "mux_9_1.v"
`include "mux_2_1.v"

module ALU_cells(
//first memory access
   input [15:0] input_mem_1_1, 
   input [15:0] input_mem_1_2,
   input [15:0] input_mem_1_3,
   input [15:0] input_mem_1_4, 
   input [15:0] input_mem_1_5,
   input [15:0] input_mem_1_6,
   input [15:0] input_mem_1_7, 
   input [15:0] input_mem_1_8,
   input [15:0] input_mem_1_9,
// second memory access
   input [15:0] input_mem_2_1, 
   input [15:0] input_mem_2_2,
   input [15:0] input_mem_2_3,
   input [15:0] input_mem_2_4, 
   input [15:0] input_mem_2_5,
   input [15:0] input_mem_2_6,
   input [15:0] input_mem_2_7, 
   input [15:0] input_mem_2_8,
   input [15:0] input_mem_2_9,
// parameter memory access
   input [15:0] input_weight, 
   input [15:0] input_bias,
   input [15:0] output_bias,
   input [15:0] output_error, 
   input [15:0] output_weight_diff,
   input [15:0] input_weight_diff,
   input [15:0] middle_layer_error, 
   input [15:0] output_pixel,
   input [15:0] input_pixel,
//control signal for muxs
   input [4:0] mux_1_control,
   input [4:0] mux_2_control,
   input [1:0] mux_3_control,
   input [3:0] mux_4_control,
   input enable_ALU,
   input [1:0] op_select,
   input [3:0] demux_1_control,
// output
   output [15:0] to_memory, 
   output [15:0] to_sigmoid,
   output [15:0] to_input_weight,
   output [15:0] to_input_bias, 
   output [15:0] to_output_bias,
   output [15:0] to_output_error,
   output [15:0] to_output_weight_diff, 
   output [15:0] to_input_weight_diff,
   output [15:0] to_middle_layer_error
);

wire [15:0]mux_1_to_3; 
wire [15:0]mux_2_to_4;  
wire [15:0]mux_3_to_ALU;
wire [15:0]mux_4_to_ALU;
wire [15:0]ALU_output;

mux_18_1 mux_1 (input_mem_1_1,input_mem_1_2,input_mem_1_3,input_mem_1_4,input_mem_1_5,input_mem_1_6,input_mem_1_7,input_mem_1_8,input_mem_1_9,input_mem_2_1,input_mem_2_2,input_mem_2_3,input_mem_2_4,input_mem_2_5,input_mem_2_6,input_mem_2_7,input_mem_2_8,input_mem_2_9,mux_1_control,mux_1_to_3);
mux_18_1 mux_2 (input_mem_1_1,input_mem_1_2,input_mem_1_3,input_mem_1_4,input_mem_1_5,input_mem_1_6,input_mem_1_7,input_mem_1_8,input_mem_1_9,input_mem_2_1,input_mem_2_2,input_mem_2_3,input_mem_2_4,input_mem_2_5,input_mem_2_6,input_mem_2_7,input_mem_2_8,input_mem_2_9,mux_2_control,mux_2_to_3);
mux_2_1  mux_3 (input_pixel,mux_1_to_3,mux_2_control,mux_3_to_ALU);
mux_9_1  mux_4 (input_weight,input_bias,output_bias,output_error,output_weight_diff,input_weight_diff,middle_layer_error,mux_2_to_4,output_pixel,mux_4_control,mux_4_to_ALU);
ALU      ALU_1 (mux_3_to_ALU,mux_4_to_ALU,enable_ALU,op_select,ALU_output);
demux_9_1 demux_1(to_sigmoid,to_input_weight,to_input_bias,to_output_bias,to_output_error,to_output_weight_diff,to_input_weight_diff,to_middle_layer_error,demux_1_control,ALU_output);

assign to_memory = ALU_output;

endmodule