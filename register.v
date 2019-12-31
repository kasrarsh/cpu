module register
(reg_write,clock,read_register1,read_register2,write_register,read_data1,read_data2,write_data);
parameter dataWidth = 4;
parameter addWidth = 5;
parameter memWidth = 64;

input clock;
input reg_write;
input [addWidth-1:0] read_register1,read_register2,write_register;
input [dataWidth-1:0] write_data;
output [dataWidth-1:0] read_data1,read_data2;

reg [dataWidth-1:0] registers[memWidth-1:0];

always @(posedge clock)
begin
	if(reg_write == 1)begin
		registers[write_register] <= write_data;
	end
end
		assign  read_data1 = registers[read_register1];
		assign  read_data2 = registers[read_register2];
endmodule

		