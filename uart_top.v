
module uart_top(

    input        clk,
    input        rst,
    input        load,
    input  [7:0] data_in,

    output [7:0] read_data_out

);


wire [10:0] uart_data;
wire [3:0]  uart_addr;
wire        parity_bit;


uart_master master(
    .clk       (       clk),
    .rst       (       rst),
    .load      (      load),
    .data_in   (   data_in),
    .parity_bit(parity_bit),
    .data_out  ( uart_data),
    .addr      ( uart_addr)
);

uart_slave slave(
    .clk          (          clk),
    .rst          (          rst),
    .data_in      (    uart_data),
    .addr         (    uart_addr),
    .read_data_out(read_data_out)
);

endmodule
