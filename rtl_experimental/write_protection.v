//////////////////////////////////////////////////////////////////////////////////
// Engineer    : Achmad novel, Fauzan Ibrahim, Nicholas Teffandi
// Design Name : Autoencoder
// Module Name : write_protection
// Project Name: Autoencoder
//////////////////////////////////////////////////////////////////////////////////

module write_protection(

input wire [3:0]write_sector,
input wire en_write,
output reg [15:0] enable_write

);

always @(*) begin
if (en_write == 1) begin
case (write_sector)
    4'b0000 : enable_write = 16'd1 ;
    4'b0001 : enable_write = 16'd2 ;
    4'b0010 : enable_write = 16'd4 ;
    4'b0011 : enable_write = 16'd8 ;
    4'b0100 : enable_write = 16'd16 ;
    4'b0101 : enable_write = 16'd32 ;
    4'b0110 : enable_write = 16'd64 ;
    4'b0111 : enable_write = 16'd128 ;
    4'b1000 : enable_write = 16'd256 ;
    4'b1001 : enable_write = 16'd512 ;
    4'b1010 : enable_write = 16'd1024 ;
    4'b1011 : enable_write = 16'd4096 ;
    4'b1100 : enable_write = 16'd8192 ;
    4'b1101 : enable_write = 16'd16384 ;
    4'b1110 : enable_write = 16'd32768 ;
    4'b1111 : enable_write = 16'd65536 ;



endcase
end
end
endmodule