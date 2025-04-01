module counter #(
	parameter WIDTH = 3
) (
	input logic clk,
	input logic rst,
	output logic [WIDTH-1:0] count_o,
	
	input logic enable_i,
	input logic dir_i
);
// todo: implement the counter
  	logic [WIDTH-1:0] data_d, data_q;
  	assign count_o = data_q; 
  
    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            data_q <= '0;
        end else if (enable_i) begin
            data_q <= data_d;
        end
    end
  
  	//logic n;
  always_comb begin
      if (dir_i) begin
     	data_d = data_q - 1'b1;
    end else begin
     	data_d = data_q + 1'b1;
    end      
 end
endmodule

