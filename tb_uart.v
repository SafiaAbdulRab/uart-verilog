module tb_uart;

reg        clk;
reg        rst;
reg        load;
reg  [7:0] data_in;

wire [7:0] read_data_out;

uart_top uut (
    .clk          (          clk),
    .rst          (          rst),
    .load         (         load),
    .data_in      (      data_in),
    .read_data_out(read_data_out)
);


always #5 clk = ~clk;

initial
begin
  
    clk = 0;
    rst = 1;
    load = 0;
    data_in = 8'b00000000;
    #10;
    rst = 0;
    #10;
    load = 1;
    data_in = 8'b00110011;
    #10;
    load = 0;
    #20;
    load = 1;
    data_in = 8'b10101010;
    #10;
    load = 0;
    #20;
    load = 1;
    data_in = 8'b11110000;

    #10;
    load = 0;

    #50;
    $finish;
end

endmodule
