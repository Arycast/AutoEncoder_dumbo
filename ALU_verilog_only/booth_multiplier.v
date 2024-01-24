//booth multiplier prototype
`include "CLA.v"


module booth_mult(
input wire [15:0]operand_1, 
input wire [15:0]operand_2,
input clock_div, // clock divided into 16 clock from the main clock to maintain single cycle operation
output reg [15:0]result 
); 

//using CLA

//CLA CLA_1(P,S,,A_signed);


//preparing A and S
wire [33:0]A;
wire [33:0] A_signed;
wire [33:0]S;
reg [33:0]P;
reg [33:0]P_S;
reg [33:0]P_A;
reg [4:0] counter;
CLA CLA_0(~operand_1,16'd1,16'd0,A_signed);

assign A = {operand_1[15],operand_1[15:0],17'd0};
assign S = {A_signed[15],A_signed[15:0],17'd0};



initial begin
P = {17'd0,operand_2[15:0],1'b0};
counter = 5'd0;
end


always@ (posedge clock_div) begin

case(P[1:0])

2'b00 : P <= {P[33],P[33:1]};
2'b10 :  begin
P <= (P+S)>>>1;
end
2'b01 :  begin
P <= (P+A)>>>1;
end
2'b11 : P <= {P[33],P[33:1]};
endcase 

if (counter != 5'd16) 
	counter <= counter +1;
else
	result <= P[16:1];
end 



endmodule