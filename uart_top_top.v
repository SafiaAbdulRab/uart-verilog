module uart_top_top(

    input        clk,
    input        rst,
    input        load,
    input        btn0,
    input        btn1,

    output [3:0] data

);

wire [7:0] data_in;
wire [7:0] read_data_out;

assign data_in = {6'b001100, btn1, btn0};

uart_top dut(
    .clk          (          clk),
    .rst          (          rst),
    .load         (         load),
    .data_in      (      data_in),
    .read_data_out(read_data_out)
);

assign data = read_data_out[3:0];

endmodule
