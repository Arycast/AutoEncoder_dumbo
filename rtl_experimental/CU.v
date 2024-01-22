//////////////////////////////////////////////////////////////////////////////////
// Engineer    : Achmad novel, Fauzan Ibrahim, Nicholas Teffandi
// Design Name : Autoencoder
// Module Name : CU
// Project Name: Autoencoder
//////////////////////////////////////////////////////////////////////////////////

module CU #(
    parameter OP_WIDTH =4,
)(
    input wire [OP_WIDTH-1:0] opcode,
    output wire                 en_writeMem,
    output wire                 en_alu,
    output wire                 en_selMem,
    output wire [1:0]           op_sel

);

    always @(*) begin
        case (opcode)
            // Maths
            4'b0000 : begin //addition
                en_alu = 1;
                op_sel = 2'b00 ;

                en_writeMem = 0;
                en_selMem = 0;

            end
            4'b0001 : begin //Substraction
                en_alu = 1;
                op_sel = 2'b01 ;
                
                en_writeMem = 0;
                en_selMem = 0;
            end
            4'b0010 : begin //Multiplication
                en_alu = 1;
                op_sel = 2'b10 ;
                
                en_writeMem = 0;
                en_selMem = 0;
            end
            // Mem control
            4'b0011 : begin 
                en_writeMem = 1;
                en_selMem = 0;
                
                en_alu = 0;
                op_sel = 2'b00 ;
            end
            4'b0100 : begin 
                en_selMem = 1;
                en_writeMem=0;

                en_alu = 0;
                op_sel = 2'b00 ;
            end

            // branch if eq

            // NOP
            4'b1111 : begin

            end
            
        endcase
    end

endmodule