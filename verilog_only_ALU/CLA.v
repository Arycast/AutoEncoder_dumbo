module CLA (

input wire [33:0]operand_1,
input wire [33:0]operand_2,
input C_in, // carry in
output wire [33:0]result
);

`include "full_adder.v"
`include "sixteen_bit_adder.v"

wire temp_c_out;
wire temp_LSB;
wire temp_MSB;
wire overflow; //unused

full_adder half_adder_0 (operand_1[0],operand_2[0],C_in,result[0],temp_LSB);
full_adder half_adder_1 (operand_1[33],operand_2[33],temp_MSB,result[33],overflow);


sixteen_bit_adder adder_16_0 (operand_1[16:1],operand_2[16:1],temp_LSB,temp_c_out,result[16:1]);
sixteen_bit_adder adder_16_1 (operand_1[32:17],operand_2[32:17],temp_c_out,temp_MSB,result[32:17]);



endmodule