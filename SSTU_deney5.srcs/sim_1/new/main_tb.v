`timescale 1ns / 1ps

module SR_Latch_tb;

    reg s,r;
    wire q,qn;
    integer i;
    
    SR_Latch sr_tb(.S(s),.R(r), .Q(q),.Qn(qn));
    
    initial begin
        $monitor(s,r,q,qn);
        for(i = 0; i < 4; i = i + 1) begin
            {s,r} = i;
            #5;
        end
        $finish;
    end
endmodule

module D_FF_tb;

    reg d, clk;
    wire q,qn;
    D_FF dff_tb(.D(d), .CLK(clk), .Q(q), .Qn(qn));

    always begin
        clk = 1;
        #5;
        clk = 0;
        #5;
    end


    initial begin
        $monitor(d,clk,q,qn);
        d = 0;
        #20;
        d = 1;
        #20;
        $finish;
    end

endmodule

module Master_Slave_D_FF_tb;
    reg d, clk;
    wire q,qn;
    Master_Slave_D_FF ms_dff_tb(.D(d), .CLK(clk), .Q(q), .Qn(qn));

    always begin
        clk = 1;
        #5;
        clk = 0;
        #5;
    end


    initial begin
        $monitor(d,clk,q,qn);
        d = 0;
        #10;
        d = 1;
        #10;
        $finish;
    end
endmodule

module D_FF_beh_tb;

    reg d, clk;
    wire q,qn;
    D_FF_beh dff_beh_tb(.D(d), .CLK(clk), .Q(q), .Qn(qn));

    always begin
        clk = 1;
        #5;
        clk = 0;
        #5;
    end


    initial begin
        $monitor(d,clk,q,qn);
        d = 0;
        #20;
        d = 1;
        #20;
        $finish;
    end

endmodule

module eight_bit_register_tb;
    reg [7:0]IN;
    reg CLK;
    reg CLEAR;
    wire [7:0]OUT;
    
    eight_bit_register ebr_tb(.IN(IN),.CLK(CLK),.CLEAR(CLEAR),.OUT(OUT));

    initial begin
        $monitor(IN,CLK,CLEAR,OUT);
        for (integer i=0; i<30; i=i+1) begin
            {IN,CLK,CLEAR} = i;
            #1;
        end
        $finish;
    end
endmodule

module BRAM_top_tb;

    reg clk;
    wire we = 0;
    reg [3:0] addr;
    wire [7:0] out;
    
    
    integer i;

    design_1_wrapper ds1(.addra(addr), .clka(clk), .wea(we), .douta(out));
    
    always begin
        clk = 1;
        #5;
        clk = 0;
        #5;
    end
    
    initial begin
        #20;
        for(i = 0; i < 16; i = i + 1) begin
            addr = i;
            #20;
        end
        $finish;
    end
    
    
    
    
endmodule