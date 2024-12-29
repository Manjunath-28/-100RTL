`timescale 1ns / 1ps



module ripple_carry_adder_tb();
reg [3:0] a,b;
reg cin;
wire [3:0]sum;
wire cout;
ripple_carry_adder dut (a,b,cin,sum,cout);
initial begin 
#10 a=4'b0000; b=4'b0000; cin=1'b1;
#10 a=4'b0010; b=4'b1000; cin=1'b1;
#10 a=4'b0001; b=4'b0001; cin=1'b0;
#10 a=4'b1000; b=4'b0011; cin=1'b1;
#10 a=4'b1100;b=4'b0000; cin=1'b0;
#10 a=4'b1110; b=4'b1000; cin=1'b1;
#10 a=4'b1111; b=4'b0000; cin=1'b0;
end
endmodule
