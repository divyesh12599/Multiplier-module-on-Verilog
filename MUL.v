`timescale 1ns / 1ps
module MUL(done,clk,start,data_in);
output done;
input clk,start;
input [15:0]data_in;

wire ldP,clrP,ldA,ldB,decB,eqz;

MUL_datapath datapath(ldP,clrP,ldA,ldB,decB,data_in,clk,eqz);
MUL_controlpath controlpath(eqz,done,start,ldA,ldP,clrP,ldB,decB,clk);

endmodule
