module four_bit_adder_simplified (
  input [3:0] ADD_1,  // Operand 1
  input [3:0] ADD_2,  // Operand 2
  output [3:0] S, // Result
  input C,            // Carry In
  output C_OUT // Carry out

);

wire [3:0]Prop;
wire [3:0]Gen;
wire [3:0]Ci;

assign Gen = ADD_1 & ADD_2;
assign Prop = ADD_1 ^ ADD_2;
assign Ci[0] = C;
assign Ci[1]= Gen[0]|(Prop[0]&Ci[0]);
assign Ci[2] = Gen[1]|(Prop[1]&Ci[1]);
assign Ci[3] = Gen[2]|(Prop[2]&Ci[2]);
assign C_OUT = Gen[3]|(Prop[3]&Ci[3]);

assign S = Prop^Ci;


endmodule

