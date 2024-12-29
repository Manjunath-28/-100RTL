`timescale 1ns / 1ps


module ripple_carry_adder(
input [3:0] a,b,
input cin,
output [3:0]sum,
output cout
    );
wire w1,w2,w3,w4;    

full_adder fa1(.a(a[0]),.b(b[0]),.c(cin),.summ(sum[0]),.carry(w1));    
full_adder fa2(.a(a[1]),.b(b[1]),.c(w1),.summ(sum[1]),.carry(w2));
full_adder fa3(.a(a[2]),.b(b[2]),.c(w2),.summ(sum[2]),.carry(w3));
full_adder fa4(.a(a[3]),.b(b[3]),.c(w3),.summ(sum[3]),.carry(w4));      
assign cout=w4;   
endmodule    
  
module full_adder(
input a,b,c,   
output summ, carry);
assign summ=a^b^c;
assign carry=(a&b)|(b&c)|(a&c);    
endmodule
