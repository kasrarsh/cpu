module Pc(clk, reset, currentPc, nextPc);
    parameter dataWidth=64;
    input [dataWidth-1:0] currentPc;
    input clk, reset;
    output reg [dataWidth-1:0] nextPc;
    always @(posedge clk)
        begin
                nextPc = currentPc;

        end

endmodule