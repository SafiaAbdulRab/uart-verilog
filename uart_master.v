module uart_master(
    input             clk,
    input             rst,
    input             load,
    input      [7:0]  data_in,

    output reg        parity_bit,
    output reg [10:0] data_out,
    output reg [3:0]  addr
);

always @(posedge clk)
begin
    if(rst)
    begin
        data_out <= 10'b0;
        addr <= 4'b0000;
    end
    else if(load)
    begin
	parity_bit = ^data_in; 
        data_out <= {1'b0, data_in,parity_bit, 1'b1};
        addr <= 4'b0001;
    end 
end

endmodule
