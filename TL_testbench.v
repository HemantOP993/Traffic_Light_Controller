module TL_testbench;
    reg clk;
    reg rst;
    wire [2:0] RGB;
    wire [1:0] state;
    
    TL_Controller mod1(clk,rst,RGB,state);
    
    always #10 clk=~clk;
    
    initial begin
        rst=1;
        clk=0;
        
        #5 rst=0;
        
    end
    
    initial #100 $finish;

endmodule