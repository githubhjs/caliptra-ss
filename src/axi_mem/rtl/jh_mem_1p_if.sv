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

endinterface
