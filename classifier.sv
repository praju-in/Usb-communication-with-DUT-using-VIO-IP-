//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.03.2026 21:36:51
// Design Name: 
// Module Name: classifier
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module classifier(
    input  clk,
    input  logic [103:0] header,
    output logic [15:0]  class_id
);

logic [103:0] prev_header;
logic [103:0] curr_header;    

assign curr_header = {header};

always @(posedge clk) begin

    if(curr_header != prev_header) begin
        class_id <= curr_header[39:24];   // data received
    end
    prev_header <= curr_header;

end

endmodule
