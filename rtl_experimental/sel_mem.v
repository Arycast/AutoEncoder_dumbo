//////////////////////////////////////////////////////////////////////////////////
// Engineer    : Achmad novel, Fauzan Ibrahim, Nicholas Teffandi
// Design Name : Autoencoder
// Module Name : Memory Selector
// Project Name: Autoencoder
//////////////////////////////////////////////////////////////////////////////////

module sel_mem (
   input wire        clk,
   input wire        en,
   input wire [3:0]  data_in,
   output reg [3:0]  data_out
);

initial data_out = 4'd0;

   always @ (posedge clk) begin
      if (en)
         data_out <= data_in;
   end
   
endmodule