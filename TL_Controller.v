module TL_Controller(
    input clk,rst,
    output reg [2:0] RGB,
    output reg [1:0] state);
    
    parameter R=0,G=1,Y=2;
    always @(*) begin
        if(rst) begin
            RGB <= 3'b100;
        end
        else begin
            case(state) 
                R: RGB<=3'b100;
                G: RGB<=3'b010;
                Y: RGB<=3'b001;
                default: RGB<=3'b100;
            endcase
        end
    end
    
    always @(posedge clk or posedge rst) begin
        if(rst) begin
            state <= R;
        end
        else begin
            case(state)
                R: state <= G;
                G: state <= Y;
                Y: state <= R;
                default : state <= R;
            endcase
         end
         
     end
endmodule
    