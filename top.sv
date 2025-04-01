
* Description: Top module for the FPGA.
*/
module top (
input logic clk,
input logic rst,
input logic enable_i,
input logic dir_i,
output logic a_o, b_o, c_o, d_o, e_o, f_o, g_o
);
logic [2:0] count;

counter #(
.WIDTH(3)
) counter (
.clk(clk),
.rst(rst),
.count_o(count),
.enable_i(enable_i),
.dir_i(dir_i)
);
ssdd ssdd (
.data_i(count),
.seven_segment_display_o({a_o, b_o, c_o, d_o, e_o, f_o, g_o})
);
endmodule
