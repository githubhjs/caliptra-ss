// SPDX-License-Identifier: Apache-2.0
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
// Description:
//      Signals for an SRAM interface with ECC
//

interface jh_mem_1p_if #(parameter integer ADDR_WIDTH = 16, parameter integer DATA_WIDTH = 32) (input logic clk_p, input logic rst_n);

    // SRAM data
    typedef struct packed {
        logic [DATA_WIDTH-1:0]  data;
    } sram_data_t;

    // Request to sram
    typedef struct packed {
        logic read_enable;
        logic write_enable;
        logic [DATA_WIDTH-1:0] bit_enable;
        logic [ADDR_WIDTH-1:0] addr;
        sram_data_t wdata;
    } sram_req_t;

    // Response from sram
    typedef struct packed {
        sram_data_t rdata;
    } sram_resp_t;

    sram_req_t req;

    sram_resp_t resp;

    // Requester interface (typically on IP module)
    modport request (

        // Request to SRAM
        output  req,

        // Response from SRAM
        input   resp
    );

    // Response interface (typically on SRAM)
    modport response (
        // Request to SRAM
        input  req,

        // Response from SRAM
        output   resp
    );
    
    // --------------------------
    // ✅ Assertions
    // --------------------------

    // 1. 讀寫不應同時為 high
    property p_read_write_exclusive;
        @(posedge clk_p) disable iff (!rst_n)
        !(req.read_enable && req.write_enable);
    endproperty
    a_read_write_exclusive: assert property(p_read_write_exclusive)
        else $warning("WARNING: Read and Write enabled simultaneously");

    // 2. write_enable 時 bit_enable 應非全 0（否則是無效寫入）
    property p_write_has_valid_be;
        @(posedge clk_p) disable iff (!rst_n)
        req.write_enable |-> (req.bit_enable != '0);
    endproperty
    a_write_has_valid_be: assert property(p_write_has_valid_be)
        else $warning("WARNING: Write enable active but all bit_enables are 0");

    // 3. addr 合法範圍檢查（可選）
    property p_addr_range_check;
        @(posedge clk_p) disable iff (!rst_n)
        (req.read_enable || req.write_enable) |-> req.addr < (1 << ADDR_WIDTH);
    endproperty
    a_addr_range_check: assert property(p_addr_range_check)
        else $warning("WARNING: Address out of legal range");

    // --------------------------
    // ✅ Coverage
    // --------------------------
    covergroup cg_sram_req @(posedge clk_p);
        option.per_instance = 1;
        coverpoint req.read_enable;
        coverpoint req.write_enable;
        cross req.read_enable, req.write_enable;
        coverpoint $countones(req.bit_enable);  // bit enable usage
        coverpoint req.addr[3:0]; // lower 4-bit address diversity
    endgroup

    cg_sram_req cov_req = new();
    // ✅ 自動命名 coverage instance 以避免 CGDEFN warning
    initial begin : init_set_inst_name
        cov_req.set_inst_name($sformatf("%m.cov_req"));
    end
    // --------------------------
    // ✅ Optional utility functions
    // --------------------------
    function automatic bit is_idle();
        return !(req.read_enable || req.write_enable);
    endfunction

    function automatic bit is_read();
        return req.read_enable && !req.write_enable;
    endfunction

    function automatic bit is_write();
        return req.write_enable && !req.read_enable;
    endfunction

    
endinterface
