module ALU(
 input [15:0] Operand_1, 
 input [15:0] Operand_2, 
 input enable_ALU,
 input [1:0] op_select,
 input clock, 
 output reg [15:0] result 

);

`include "CLA.v"
`include "mux_2_1_34.v"
`include "mux_2_1.v"
`include "mux_2_1_1.v"
//counter
reg [4:0]counter;
//P register 
reg [33:0] P;
wire [33:0] P_temp;

//mux 0
wire [33:0] mux_0_in_0;
wire [33:0] mux_0_in_1;
wire [33:0] mux_0_out;
wire mux_0_control;
//mux 2
wire [33:0] mux_2_in_0;
wire [33:0] mux_2_in_1;
wire [33:0] mux_2_out;
wire mux_2_control;
//mux 3
wire [33:0] mux_3_in_0;
wire [33:0] mux_3_in_1;
wire [33:0] mux_3_out;
wire mux_3_control;
//mux 1
wire [33:0] mux_1_in_0;
wire [33:0] mux_1_in_1;
wire [33:0] mux_1_out;
wire mux_1_control;
//mux 4
wire [33:0] mux_4_in_0;
wire [33:0] mux_4_in_1;
wire [33:0] mux_4_out;
wire mux_4_control;
//mux 5
wire [33:0] mux_5_in_0;
wire [33:0] mux_5_in_1;
wire [33:0] mux_5_out;
wire mux_5_control;
//mux 6
wire [33:0] mux_6_in_0;
wire [33:0] mux_6_in_1;
wire [33:0] mux_6_out;
wire mux_6_control;

//CLA
wire [33:0] CLA_result;

//assignment and module declaration
assign mux_0_in_1 = {~Operand_2[15],~Operand_2,17'd131071}; //padding with 1's instead of zero then add carry in to get its negative representation
assign mux_0_in_0 = {Operand_2[15],Operand_2[15:0],17'd0};
assign mux_0_control = mux_2_out[1];

assign mux_2_in_1 = P;
assign mux_2_in_0 = {17'd0,Operand_1[15:0],1'b0};
assign mux_2_control = ((counter[4])|(counter[3])|(counter[2])|(counter[1])|(counter[0]))&op_select[1]; //reset when the counter reaches zero

assign mux_3_in_0 = (mux_2_out>>>1);
assign mux_3_in_1 = (CLA_result>>>1);
assign mux_3_control = mux_2_out[0]^mux_2_out[1];

assign mux_1_in_1 = {17'd0,~Operand_2[15:0],1'b1}; //set LLSB padding to 1 instead of 0 to propagate carry in
assign mux_1_in_0 = {17'd0,Operand_2[15:0],1'b0};
assign mux_1_control = op_select[0];

assign mux_4_in_1 = mux_0_out;
assign mux_4_in_0 = mux_1_out;
assign mux_4_control = op_select[1];

assign mux_5_in_1 = mux_2_out[1];
assign mux_5_in_0 = op_select[0];
assign mux_5_control = op_select[1];

assign mux_6_in_1 = mux_2_out[17:1];
assign mux_6_in_0 = CLA_result[17:1];
assign mux_6_control = op_select[1];

assign P_temp = mux_3_out;

CLA CLA_0(mux_2_out,mux_4_out,mux_5_out,CLA_result);

mux_2_1_34 mux_0(mux_0_in_0,mux_0_in_1,mux_0_control,mux_0_out);
mux_2_1_34 mux_2(mux_2_in_0,mux_2_in_1,mux_2_control,mux_2_out);
mux_2_1_34 mux_3(mux_3_in_0,mux_3_in_1,mux_3_control,mux_3_out);
mux_2_1_34 mux_1(mux_1_in_0,mux_1_in_1,mux_1_control,mux_1_out);
mux_2_1_34 mux_4(mux_4_in_0,mux_4_in_1,mux_4_control,mux_4_out);
mux_2_1_1 mux_5(mux_5_in_0,mux_5_in_1,mux_5_control,mux_5_out);
mux_2_1_34 mux_6(mux_6_in_0,mux_6_in_1,mux_6_control,mux_6_out);

//register and counter assignment

always@ (posedge clock) begin
//if(op_select==2'b10) //only update value if mult operation is used (to initiate booth's algorithm)
if(enable_ALU == 1'b1)
	P <= P_temp; //update value
end

always@ (posedge clock) begin //update counter

if(enable_ALU == 1'b1) begin
if (counter != 5'd17) 
	counter <= counter +1;
else
	counter <= 5'd0;
	result <= mux_6_out;
end
end


endmodule