module top(
    input logic clk
);

logic [31:0] src_ip;
logic [31:0] dst_ip;
logic [15:0] src_port;
logic [15:0] dst_port;
logic [7:0]  protocol;
logic [2:0] class_id;

logic [103:0] header;


assign header = {src_ip, dst_ip, src_port, dst_port, protocol};

classifier DUT (
    .clk(clk),
    .header(header),
    .class_id(class_id)
);

vio_0 vio_inst (
    .clk(clk),
    .probe_out0(src_ip),
    .probe_out1(dst_ip),
    .probe_out2(src_port),
    .probe_out3(dst_port),
    .probe_out4(protocol),
    .probe_in0(class_id)   // output to Vivado
);

endmodule