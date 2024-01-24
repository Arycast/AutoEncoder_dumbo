module ALU(
 input [15:0] Operand_1, 
 input [15:0] Operand_2, 
 input enable_ALU,
 input [1:0] op_select,
 input clock, 
 output [15:0] result 

);

`include "CLA.v"
`include "mux_2_1_34.v"
`include "mux_2_1.v"


wire [15:0]inverted_op;
wire [33:0] Operand_1_padded; //A
wire [33:0] Operand_1_padded_negative; //S
wire [33:0] Operand_2_padded;
wire [33:0] mux_to_CLA_1;
wire [33:0] mux_to_CLA_2;
wire [33:0] result_CLA;
wire [15:0] result_temp;
wire [15:0] result_final;
wire carry_out_counter;
wire [3:0] counter_temp;



reg [3:0] counter; //16 cycle for booth's algorithm
reg [33:0] P;
wire [33:0] P_temp;
assign inverted_op = ~Operand_1;
assign Operand_1_padded_negative = {Operand_1[15],inverted_op,17'd131071}; // pad with 1's instead of zero then add carry in 1 to get its negative
assign Operand_1_padded = {Operand_1[15],Operand_1[15:0],17'd0};
assign Operand_2_padded = {Operand_2[15],Operand_2,17'd0};
assign result = result_final;

mux_2_1_34 mux_0 (Operand_1_padded,Operand_1_padded_negative,op_select[0]^op_select[1],mux_to_CLA_2);
mux_2_1_34 mux_1 (P,Operand_2_padded,(!(counter[3])&!(counter[2])&!(counter[1])&(!counter[0])|op_select[1]),mux_to_CLA_1);
mux_2_1_34 mux_2 (mux_to_CLA_1>>>1,result_CLA>>>1,P[1]^P[0],P_temp);
mux_2_1 mux_3 (result_CLA[32:17],P[16:1],op_select[1],result_temp);
mux_2_1 mux_4 (16'd0,result_temp,enable_ALU&carry_out_counter,result_final);
CLA CLA_0 (mux_to_CLA_1,mux_to_CLA_2,op_select[0]^op_select[1],result_CLA);
four_bit_adder_simplified counter_adder(counter,4'd1,counter_temp,1'b0,carry_out_counter);

initial begin
counter = 4'd0;
P = 34'd0;
end

always@ (posedge clock) begin
//if(op_select==2'b10) //only update value if mult operation is used (to initiate booth's algorithm)
	P <= P_temp; //update value
end

always@ (posedge clock) begin //update counter
counter <= counter_temp;
end


endmodule