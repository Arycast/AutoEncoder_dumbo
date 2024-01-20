//////////////////////////////////////////////////////////////////////////////////
// Engineer    : Achmad novel, Fauzan Ibrahim, Nicholas Teffandi
// Design Name : Autoencoder
// Module Name : Memory Selector
// Project Name: Autoencoder
//////////////////////////////////////////////////////////////////////////////////

module sel_mem (
   input wire        clk,
   input wire        en,
   input wire        rst,
   input wire [3:0]  data_in,
   output reg [3:0]  data_out
);

   always @ (posedge clk) begin
      if (rst == 1'b1)
         data_out = 4'd0;
      else if (en == 1'b1) begin
         data_out = data_in;
      end
   end
   
endmodule