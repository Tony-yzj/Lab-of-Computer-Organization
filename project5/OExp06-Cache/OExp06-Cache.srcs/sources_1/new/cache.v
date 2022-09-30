
module cache(
    input wire clk, // clock
    input wire rst, // reset
    input wire [31:0] data_cpu_write, // data write in
    input wire [31:0] data_mem_read, // data read in
    input wire [31:0] addr_cpu, // cpu addr
    input wire wr_cpu, // cpu write enable
    input wire rd_cpu, // cpu read enable
    input wire ready_mem, // memory ready
    output reg wr_mem, // memory write enable
    output reg rd_mem, // memory read enable
    output reg [31:0] data_mem_write, // data to mem
    output reg [31:0] data_cpu_read, // data to cpu
    output reg [31:0] addr_mem // memory addr
);

    localparam    IDLE        = 3'd0,    
                  CompareTag  = 3'd1,
                  Allocate    = 3'd2,
                  WriteBack   = 3'd3,
                  Update      = 3'd4,
                  Read        = 3'd5;
    reg [1:0]state, next_state;
    wire [6:0]index;
    reg en0, en1, ent0, ent1;
    wire [25:0]rtag0,rtag1;
    reg [25:0]wtag0,wtag1;
    wire[22:0] tag;
    reg[127:0]wdata;
    reg[3:0] count;
    wire[127:0] rdata0,rdata1;
    wire hit,hit0,hit1,valid0,valid1,valid,LRU0,LRU1,dirty0,dirty1,dirty;
    wire[1:0] wordsel;
    wire[31:0] word0,word1;
    reg[3:0]update;
    reg[31:0] latch;

    assign tag = addr_cpu[31:9];
    assign valid0 = rtag0[25];
    assign valid1 = rtag1[25];
    assign valid = valid0 & valid1;
    assign LRU0 = rtag0[24];
    assign LRU1 = rtag1[24];
    assign dirty0 = rtag0[23];
    assign dirty1 = rtag1[23];
    assign dirty = dirty0 | dirty1;
    assign index = addr_cpu[8:2];
    assign hit0 = valid0 & (tag == rtag0[22:0]);
    assign hit1 = valid1 & (tag == rtag1[22:0]);
    assign hit = hit0 | hit1;
    assign wordsel = addr_cpu[1:0];
    assign word0 = (wordsel == 2'd0) ? rdata0[31:0] :((wordsel == 2'd1) ? rdata0[63:32] :((wordsel == 2'd2) ? rdata0[95:64] : rdata0[127:96]));
    assign word1 = (wordsel == 2'd0) ? rdata1[31:0] :((wordsel == 2'd1) ? rdata1[63:32] :((wordsel == 2'd2) ? rdata1[95:64] : rdata1[127:96]));
    
    always@(posedge clk or posedge rst)
    if(rst)
    state<=IDLE;
    else
    state<=next_state;
    always@(*)
    case(state)
    IDLE:begin
        en0 <=1'b0;
        en1 <=1'b0;
        ent0 <= 1'b0;
        ent1 <= 1'b0;
        rd_mem <= 1'd0;
        wr_mem <= 1'd0;
        update <= 'd0;
        if(!wr_cpu)
        data_mem_write <= 32'dx;
        if(!rd_cpu)
        data_cpu_read <= 32'dx;
        count <= 4'b0;
        if(rd_cpu | wr_cpu) begin
            next_state=CompareTag;
        end
        else
            next_state=IDLE;
    end
    CompareTag:begin
    en0 <=1'b0;
    en1 <=1'b0;
    ent0 <= 1'b0;
    ent1 <= 1'b0;
    rd_mem <= 1'd0;
    wr_mem <= 1'd0;
    if(update == 3'b100) begin
    next_state <= Allocate;
    update <= 3'd0;
    end
    else if(hit) begin
        if(wr_cpu) begin
            next_state <= IDLE;
        ent0 <= 1'b1;
        ent1 <= 1'b1;
        if(hit0)
            begin
            en0 <= 1'd1;
            case(wordsel)
                2'd0: wdata <= {rdata0[127:32],data_cpu_write};
                2'd1: wdata <= {rdata0[127:64],data_cpu_write,rdata0[31:0]};
                2'd2: wdata <= {rdata0[127:96],data_cpu_write,rdata0[63:0]};
                2'd3: wdata <= {data_cpu_write,rdata0[95:0]};
            endcase
            
            if(LRU0) //LRU is 1
                wtag0 <= {rtag0[25],1'd0,1'd1,rtag0[22:0]};
            else
                wtag0 <= {rtag0[25],1'd0,1'd1,rtag0[22:0]};
            if(LRU1) //1
                wtag1 <= {rtag1[25],1'd1,rtag1[23:0]};
            else
                wtag1 <= {rtag1[25],1'd1,rtag1[23:0]};
            end
        else
            begin
            en1 <= 1'd1;
            
            case(wordsel)
                2'd0: wdata <= {rdata1[127:32],data_cpu_write};
                2'd1: wdata <= {rdata1[127:64],data_cpu_write,rdata1[31:0]};
                2'd2: wdata <= {rdata1[127:96],data_cpu_write,rdata1[63:0]};
                2'd3: wdata <= {data_cpu_write,rdata1[95:0]};
            endcase
            
            if(LRU1)
                wtag1 <= {rtag1[25],1'd0,1'd1,rtag1[22:0]};
            else
                wtag1 <= {rtag1[25],1'd0,1'd1,rtag1[22:0]};
            if(LRU0)
                wtag0 <= {rtag0[25],1'd1,rtag0[23:0]};
            else
                wtag0 <= {rtag0[25],1'd1,rtag0[23:0]};
            end
        end
        else if(rd_cpu) begin
            next_state <= IDLE;
            ent0 <= 1'b1;
            ent1 <= 1'b1;
            if(hit0) begin
                data_cpu_read <= word0;
                if(LRU0) //LRU0 -> 0
                    wtag0 <= {rtag0[25],1'd0,rtag0[23:0]};
                else
                    wtag0 <= {rtag0[25],1'd0,rtag0[23:0]};
                if(LRU1) //LRU1 = 1
                    wtag1 <= {rtag1[25],1'd1,rtag1[23:0]};
                else
                    wtag1 <= {rtag1[25],1'd1,rtag1[23:0]};
            end
            else if(hit1) begin
                data_cpu_read <= word1;
                //LRU0 0->1
                if(LRU0)
                    wtag0 <= {rtag0[25],1'd1,rtag0[23:0]};
                else
                    wtag0 <= {rtag0[25],1'd1,rtag0[23:0]};
                if(LRU1)
                    wtag1 <= {rtag1[25],1'd0,rtag1[23:0]};
                else
                    wtag1 <= {rtag1[25],1'd0,rtag1[23:0]};
            end
        end
    end
    else if(valid & dirty)begin
        next_state = WriteBack;
    end
    else
    next_state=Allocate;
    end
    Allocate:begin
    en0 <=1'b0;
    en1 <=1'b0;
    ent0 <= 1'b0;
    ent1 <= 1'b0;
    rd_mem <= 1'd1;
    wr_mem <= 1'd0;
    addr_mem = {addr_cpu[31:2],2'b0};
    if(data_mem_read != latch) begin
    wdata = {data_mem_read, wdata[127:32]};
    update = update + 2'b01;
    end
    count = {1'd1,count[3:1]};
    latch = data_mem_read;
    if(LRU1) begin
        en1 = 1'b1;
        ent0 <= 1'b1;
        ent1 <= 1'b1;
        wtag1 = {3'b100,tag};
        wtag0 = {3'b010, rtag0[22:0]};
    end
    else begin
            en0 = 1'b1;
            ent0 <= 1'b1;
            ent1 <= 1'b1;
            wtag0 = {3'b100, tag};
            wtag1 = {3'b010, rtag1[22:0]};
        end
    if(ready_mem & count == 4'b1111) begin
    next_state=CompareTag;
    end
    else begin
    if(!ready_mem)
    count = 4'b0000;
    next_state=Allocate;
    end
    end
    WriteBack:begin
    en0 <=1'b0;
    en1 <=1'b0;
    ent0 <= 1'b0;
    ent1 <= 1'b0;
    rd_mem <= 1'd0;
    wr_mem <= 1'd1;
    wdata <= 'h0;
    addr_mem <= {addr_cpu[31:2], 2'd0};
    if(LRU0 & dirty0) begin
        data_mem_write <= rdata0;
    end
    else if(LRU1 & dirty1)begin
        data_mem_write <= rdata1;
    end
    else begin
    wr_mem <= 1'b0;
    next_state <= Allocate;
    end
    if(ready_mem)
    next_state = Allocate;
    else
    next_state = WriteBack;
    end
    default:next_state=IDLE;
    endcase
    // Instantiation Data RAM for Way 0
    Data_ram0 d0 (
        .clk(clk),
        .addr(index),
        .din(wdata),
        .en(en0),
        .dout(rdata0)
    );
    // Instantiation Data RAM for Way 1
    Data_ram1 d1 (
        .clk(clk),
        .addr(index),
        .din(wdata),
        .en(en1),
        .dout(rdata1)
    );
    // Instantiation Tag RAM for Way 0
    Tag_Ram0 t0 (
        .clk(clk),
        .addr(index),
        .din(wtag0),
        .en(ent0),
        .dout(rtag0)
    );
    // Instantiation Tag RAM for Way 1
    Tag_Ram1 t1 (
        .clk(clk),
        .addr(index),
        .din(wtag1),
        .en(ent1),
        .dout(rtag1)
    );

endmodule