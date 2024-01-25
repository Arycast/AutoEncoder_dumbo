//////////////////////////////////////////////////////////////////////////////////
// Engineer    : Achmad novel, Fauzan Ibrahim, Nicholas Teffandi
// Design Name : Autoencoder
// Module Name : mux_2_1_1 (single bit mux)
// Project Name: Autoencoder
//////////////////////////////////////////////////////////////////////////////////

module mux_2_1_1 (
    
   input  input_1, 
   input  input_2,
   input  select,
   output reg out
);

 always @(*) begin
case (select)
    1'b0 : out = input_1;
    1'b1 : out = input_2;
endcase
end

endmodule