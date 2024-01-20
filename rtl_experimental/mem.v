//////////////////////////////////////////////////////////////////////////////////
// Engineer    : Achmad novel, Fauzan Ibrahim, Nicholas Teffandi
// Design Name : Autoencoder
// Module Name : mem
// Project Name: Autoencoder
//////////////////////////////////////////////////////////////////////////////////

module mem #(
   parameter ADDR_WIDTH = 4,
   parameter DATA_WIDTH = 16,
   parameter DEPTH      = 16
) (
   input wire                    clk,
   input wire                    write_en,
   input wire [ADDR_WIDTH-1:0]   write_addr,
   input wire [DATA_WIDTH-1:0]   write_data,
   input wire [ADDR_WIDTH-1:0]   read_addr,
   output wire [DATA_WIDTH-1:0]  read_data
);

   /****************************************************************************
    * Signals
    ***************************************************************************/

   reg [DATA_WIDTH-1:0] mem_array [DEPTH-1:0]
   
   /****************************************************************************
    * Continuous Assignments
    ***************************************************************************/

   assign read_data = mem_array[read_addr]

   /****************************************************************************
    * Synchronous Logic
    ***************************************************************************/

   always @(posedge clk) begin

      if (write_en == 1'b1) begin
         mem_array[write_addr] <= write_data;
      end

   end

endmodule