//=====================================================
// 2-to-1 Demultiplexer
//=====================================================

module demux2to1(
    input D,
    input S,
    output reg Y0,
    output reg Y1
);

always @(*) begin

    Y0 = 1'b0;
    Y1 = 1'b0;

    case (S)
        1'b0: Y0 = D;
        1'b1: Y1 = D;
        default: begin
            Y0 = 1'b0;
            Y1 = 1'b0;
        end
    endcase

end

endmodule