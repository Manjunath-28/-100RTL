`timescale 1ns / 1ps


module siso(input clk,rst,input serial_in,output reg serial_out);
reg [3:0]shift_reg;
always@(posedge clk or posedge rst)
begin
if(rst)
begin
shift_reg =4'b0000;
serial_out = 1'b0;
end
else
begin
shift_reg[0]<=serial_in;
shift_reg[1]<=shift_reg[0];
shift_reg[2]<=shift_reg[1];
shift_reg[3]<=shift_reg[2];
serial_out<=shift_reg[3];
end
end
endmodule
