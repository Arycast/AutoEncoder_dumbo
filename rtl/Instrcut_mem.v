//////////////////////////////////////////////////////////////////////////////////
// Engineer    : Achmad novel, Fauzan Ibrahim, Nicholas Teffandi
// Design Name : Autoencoder
// Module Name : Instrcut_mem
// Project Name: Autoencoder
//////////////////////////////////////////////////////////////////////////////////

module Instrcut_mem #(
   parameter ADDR_WIDTH = 4,
   parameter DATA_WIDTH = 16,
   parameter DEPTH      = 512
) (
   input wire                    clk,
   input wire  [15:0]           counter,
   output reg  [DATA_WIDTH-1:0]  instructCode
);

   /****************************************************************************
    * Signals
    ***************************************************************************/

   reg [DATA_WIDTH-1:0] mem_array [DEPTH-1:0];
   
   /****************************************************************************
    * initialization
    ***************************************************************************/
initial begin

    $readmemh("instruction.txt", mem_array);
end
   
   /****************************************************************************
    * Synchronous Logic
    ***************************************************************************/

   always @(posedge clk) begin

       instructCode <= mem_array[counter];

   end
endmodule