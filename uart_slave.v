module uart_slave(
    input             clk,
    input             rst,
    input      [10:0] data_in,
    input      [3:0]  addr,

    output reg [7:0] read_data_out
);

reg [7:0] reg1, reg2, reg3, reg4;

always @(posedge clk)
begin
    if (rst)
    begin
        reg1 <= 8'b0;
        reg2 <= 8'b0;
        reg3 <= 8'b0;
        reg4 <= 8'b0;
        read_data_out <= 8'b0;
    end
    else if (!data_in[10])
    begin
        case (addr)

            4'b0000:
            begin
                reg1 <= data_in[9:2];
                read_data_out <= data_in[9:2];
            end

            4'b0001:
            begin
                reg2 <= data_in[9:2];
                read_data_out <= data_in[9:2];
            end

            4'b0010:
            begin
                reg3 <= data_in[9:2];
                read_data_out <= data_in[9:2];
            end

            4'b0011:
            begin
                reg4 <= data_in[9:2];
                read_data_out <= data_in[9:2];
            end

            default:
                read_data_out <= 8'b0;

        endcase
    end
end

endmodule
