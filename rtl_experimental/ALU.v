//////////////////////////////////////////////////////////////////////////////////
// Engineer    : Achmad novel, Fauzan Ibrahim, Nicholas Teffandi
// Design Name : Autoencoder
// Module Name : ALU
// Project Name: Autoencoder
//////////////////////////////////////////////////////////////////////////////////
`include "CLA.v"
`include "mult.v"
`include "mux_2_1.v"


module ALU (

   input [15:0] Operand_1, 
   input [15:0] Operand_2, 
   input enable_ALU,
   input [1:0] op_select, 
   output reg [15:0] result
);

wire [15:0]output_adder;
wire [15:0]output_mult;
wire [15:0]output_sub;
wire [15:0] input_sub;
wire [15:0] input_adder;
wire [15:0] final_result;
reg selector_adder;
reg selector_mult;

assign input_sub = ~(Operand_2); //converting to negative
reg op_mode_adder; // 0 for adding and 1 for subtracting
//module port mapping
mult mult_0 (Operand_1,Operand_2,output_mult);
CLA  CLA_0 (Operand_1,input_adder,op_mode_adder,output_adder);
mux_2_1 mux_0 (Operand_2,input_sub,selector_adder,input_adder); // handling adder/subtractor 
mux_2_1 mux_1 (output_adder,output_mult,selector_mult,final_result); // handling multiplication 

 always @(*) begin
if (enable_ALU == 1) begin
    case(op_select)

    2'b00 : begin //adder case
    assign selector_adder = 1'b0;
    assign selector_mult = 1'b0;
    assign op_mode_adder = 1'b0;    
    assign result = final_result;
    end

    2'b01 : begin //subtraction case
    assign selector_adder = 1'b1;
    assign selector_mult = 1'b0;  
    assign op_mode_adder = 1'b1;    
  
    assign result = final_result;

    end

    2'b10 : begin //mult case
    assign selector_adder = 1'b0;
    assign selector_mult = 1'b1;    
    assign result = final_result;

    end

    endcase
end
else begin
    assign result = 16'b0000000000000000;
end


 end




endmodule