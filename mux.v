module Mux(select,input_0, input_1, outPut);
    parameter delay =10;
    parameter dataWidth=64;

    input [dataWidth-1:0] input_0, input_1;
    input select;
    output reg [dataWidth-1:0] outPut;

    always @(input_0, input_1, select)
        begin
            case (select)
                0:  outPut = input_0;
                1:  outPut = input_1;
            endcase
        end
endmodule
