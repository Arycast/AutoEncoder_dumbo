//////////////////////////////////////////////////////////////////////////////////
// Engineer    : Achmad novel, Fauzan Ibrahim, Nicholas Teffandi
// Design Name : Autoencoder
// Module Name : instructMem
// Project Name: Autoencoder
//////////////////////////////////////////////////////////////////////////////////

module instuctMem #(
   parameter ADDR_WIDTH = 4,
   parameter DATA_WIDTH = 16,
   parameter DEPTH      = 32
) (
   input wire                    clk,
   input wire  [5-1:0]           counter,
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