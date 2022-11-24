`timescale 1ns / 1ps

module SR_Latch(input S, R, output Q, Qn);

    wire o0, o1;
    
    nand_gate n0(S,o1,o0);
    nand_gate n1(R,o0,o1);
    
    assign Q = o0;
    assign Qn = o1;

endmodule

module D_FF(input D, CLK, output Q, Qn);
    
    wire w0,w1,w2,w3,o0,o1;
    
    
    not_gate not0(D,w0);    
    
    nand_gate n0(D,CLK,w1);
    nand_gate n1(w0,CLK, w2);
    
    nand_gate n2(w1,o1,o0);
    nand_gate n3(w2,o0,o1);
    
    assign Q = o0;
    assign Qn = o1;


endmodule

module Master_Slave_D_FF(input D, CLK, output Q, Qn);

    wire w0, w1;

    D_FF dff_master(.D(D),.CLK(CLK),.Q(w0));
    
    not_gate not0(CLK,w1);
    
    D_FF dff_slave(.D(w0),.CLK(w1),.Q(Q), .Qn(Qn));

endmodule

module D_FF_beh(input D, CLK, output Q, Qn);
    reg FF;
    assign Q = FF;
    assign Qn = ~FF;
    
    always @(posedge CLK) begin
        FF = D;
    end
endmodule

module eight_bit_register(input [7:0] IN, input CLK, input CLEAR, output reg [7:0] OUT);
    always @(posedge CLK or posedge CLEAR) begin
        if(CLEAR) begin
            OUT = 0;
        end
        else begin
            OUT = IN;
        end
    end
endmodule


module bram_top(
input clka,wea,
input [3:0] addra,
output [7:0] douta
    );
endmodule