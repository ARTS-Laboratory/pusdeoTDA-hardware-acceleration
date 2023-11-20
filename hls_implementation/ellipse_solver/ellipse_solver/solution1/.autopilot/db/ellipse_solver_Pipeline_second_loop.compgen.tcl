# This script segment is generated automatically by AutoPilot

set id 131
set name ellipse_solver_mux_134_32_1_1
set corename simcore_mux
set op mux
set stage_num 1
set din0_width 32
set din0_signed 0
set din1_width 32
set din1_signed 0
set din2_width 32
set din2_signed 0
set din3_width 32
set din3_signed 0
set din4_width 32
set din4_signed 0
set din5_width 32
set din5_signed 0
set din6_width 32
set din6_signed 0
set din7_width 32
set din7_signed 0
set din8_width 32
set din8_signed 0
set din9_width 32
set din9_signed 0
set din10_width 32
set din10_signed 0
set din11_width 32
set din11_signed 0
set din12_width 32
set din12_signed 0
set din13_width 4
set din13_signed 0
set dout_width 32
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mux} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


set op mux
set corename Multiplexer
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_pipemux] == "::AESL_LIB_VIRTEX::xil_gen_pipemux"} {
eval "::AESL_LIB_VIRTEX::xil_gen_pipemux { \
    id ${id} \
    name ${name} \
    corename ${corename} \
    op ${op} \
    reset_level 1 \
    sync_rst true \
    stage_num ${stage_num} \
    din0_width ${din0_width} \
    din0_signed ${din0_signed} \
    din1_width ${din1_width} \
    din1_signed ${din1_signed} \
    din2_width ${din2_width} \
    din2_signed ${din2_signed} \
    din3_width ${din3_width} \
    din3_signed ${din3_signed} \
    din4_width ${din4_width} \
    din4_signed ${din4_signed} \
    din5_width ${din5_width} \
    din5_signed ${din5_signed} \
    din6_width ${din6_width} \
    din6_signed ${din6_signed} \
    din7_width ${din7_width} \
    din7_signed ${din7_signed} \
    din8_width ${din8_width} \
    din8_signed ${din8_signed} \
    din9_width ${din9_width} \
    din9_signed ${din9_signed} \
    din10_width ${din10_width} \
    din10_signed ${din10_signed} \
    din11_width ${din11_width} \
    din11_signed ${din11_signed} \
    din12_width ${din12_width} \
    din12_signed ${din12_signed} \
    din13_width ${din13_width} \
    din13_signed ${din13_signed} \
    dout_width ${dout_width} \
}"
} else {
puts "@W \[IMPL-101\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_pipemux, check your platform lib"
}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 141 \
    name outData_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_12_reload \
    op interface \
    ports { outData_12_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 142 \
    name outData_11_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_11_reload \
    op interface \
    ports { outData_11_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 143 \
    name outData_10_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_10_reload \
    op interface \
    ports { outData_10_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 144 \
    name outData_9_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_9_reload \
    op interface \
    ports { outData_9_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 145 \
    name outData_8_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_8_reload \
    op interface \
    ports { outData_8_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name outData_7_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_7_reload \
    op interface \
    ports { outData_7_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name outData_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_6_reload \
    op interface \
    ports { outData_6_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name outData_5_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_5_reload \
    op interface \
    ports { outData_5_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name outData_4_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_4_reload \
    op interface \
    ports { outData_4_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name outData_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_3_reload \
    op interface \
    ports { outData_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name outData_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_2_reload \
    op interface \
    ports { outData_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 152 \
    name outData_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_1_reload \
    op interface \
    ports { outData_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 153 \
    name outData_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_reload \
    op interface \
    ports { outData_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 154 \
    name dataHard_V_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_reload \
    op interface \
    ports { dataHard_V_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 155 \
    name dataHard_V_1_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_1_reload \
    op interface \
    ports { dataHard_V_1_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 156 \
    name dataHard_V_2_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_2_reload \
    op interface \
    ports { dataHard_V_2_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 157 \
    name dataHard_V_3_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_3_reload \
    op interface \
    ports { dataHard_V_3_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 158 \
    name dataHard_V_4_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_4_reload \
    op interface \
    ports { dataHard_V_4_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 159 \
    name dataHard_V_5_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_5_reload \
    op interface \
    ports { dataHard_V_5_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 160 \
    name dataHard_V_6_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_6_reload \
    op interface \
    ports { dataHard_V_6_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 161 \
    name dataHard_V_7_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_7_reload \
    op interface \
    ports { dataHard_V_7_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 162 \
    name dataHard_V_8_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_8_reload \
    op interface \
    ports { dataHard_V_8_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 163 \
    name dataHard_V_9_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_9_reload \
    op interface \
    ports { dataHard_V_9_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 164 \
    name dataHard_V_10_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_10_reload \
    op interface \
    ports { dataHard_V_10_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 165 \
    name dataHard_V_11_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_11_reload \
    op interface \
    ports { dataHard_V_11_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 166 \
    name dataHard_V_12_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_12_reload \
    op interface \
    ports { dataHard_V_12_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 167 \
    name dataHard_V_13_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_13_reload \
    op interface \
    ports { dataHard_V_13_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 168 \
    name dataHard_V_14_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_14_reload \
    op interface \
    ports { dataHard_V_14_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 169 \
    name dataHard_V_15_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_15_reload \
    op interface \
    ports { dataHard_V_15_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 170 \
    name dataHard_V_16_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_16_reload \
    op interface \
    ports { dataHard_V_16_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 171 \
    name dataHard_V_17_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_17_reload \
    op interface \
    ports { dataHard_V_17_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 172 \
    name dataHard_V_18_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_18_reload \
    op interface \
    ports { dataHard_V_18_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 173 \
    name dataHard_V_19_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_19_reload \
    op interface \
    ports { dataHard_V_19_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 174 \
    name dataHard_V_20_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_20_reload \
    op interface \
    ports { dataHard_V_20_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 175 \
    name dataHard_V_21_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_21_reload \
    op interface \
    ports { dataHard_V_21_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 176 \
    name dataHard_V_22_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_22_reload \
    op interface \
    ports { dataHard_V_22_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 177 \
    name dataHard_V_23_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_23_reload \
    op interface \
    ports { dataHard_V_23_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 178 \
    name dataHard_V_24_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_24_reload \
    op interface \
    ports { dataHard_V_24_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 179 \
    name dataHard_V_25_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_25_reload \
    op interface \
    ports { dataHard_V_25_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 180 \
    name dataHard_V_26_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_26_reload \
    op interface \
    ports { dataHard_V_26_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 181 \
    name dataHard_V_27_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_27_reload \
    op interface \
    ports { dataHard_V_27_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 182 \
    name dataHard_V_28_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_28_reload \
    op interface \
    ports { dataHard_V_28_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 183 \
    name dataHard_V_29_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_29_reload \
    op interface \
    ports { dataHard_V_29_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 184 \
    name dataHard_V_30_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_30_reload \
    op interface \
    ports { dataHard_V_30_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 185 \
    name dataHard_V_31_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_31_reload \
    op interface \
    ports { dataHard_V_31_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 186 \
    name dataHard_V_32_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_32_reload \
    op interface \
    ports { dataHard_V_32_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 187 \
    name dataHard_V_33_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_33_reload \
    op interface \
    ports { dataHard_V_33_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 188 \
    name dataHard_V_34_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_34_reload \
    op interface \
    ports { dataHard_V_34_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 189 \
    name dataHard_V_35_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_35_reload \
    op interface \
    ports { dataHard_V_35_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 190 \
    name dataHard_V_36_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_36_reload \
    op interface \
    ports { dataHard_V_36_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 191 \
    name dataHard_V_37_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_37_reload \
    op interface \
    ports { dataHard_V_37_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 192 \
    name dataHard_V_38_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_38_reload \
    op interface \
    ports { dataHard_V_38_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 193 \
    name dataHard_V_39_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_39_reload \
    op interface \
    ports { dataHard_V_39_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 194 \
    name dataHard_V_40_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_40_reload \
    op interface \
    ports { dataHard_V_40_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 195 \
    name dataHard_V_41_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_41_reload \
    op interface \
    ports { dataHard_V_41_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 196 \
    name dataHard_V_42_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_42_reload \
    op interface \
    ports { dataHard_V_42_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 197 \
    name dataHard_V_43_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_43_reload \
    op interface \
    ports { dataHard_V_43_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 198 \
    name dataHard_V_44_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_44_reload \
    op interface \
    ports { dataHard_V_44_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 199 \
    name dataHard_V_45_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_45_reload \
    op interface \
    ports { dataHard_V_45_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 200 \
    name dataHard_V_46_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_46_reload \
    op interface \
    ports { dataHard_V_46_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 201 \
    name dataHard_V_47_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_47_reload \
    op interface \
    ports { dataHard_V_47_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 202 \
    name dataHard_V_48_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_48_reload \
    op interface \
    ports { dataHard_V_48_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 203 \
    name dataHard_V_49_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_49_reload \
    op interface \
    ports { dataHard_V_49_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 204 \
    name dataHard_V_50_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_50_reload \
    op interface \
    ports { dataHard_V_50_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 205 \
    name dataHard_V_51_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_51_reload \
    op interface \
    ports { dataHard_V_51_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 206 \
    name dataHard_V_52_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_52_reload \
    op interface \
    ports { dataHard_V_52_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 207 \
    name dataHard_V_53_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_53_reload \
    op interface \
    ports { dataHard_V_53_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 208 \
    name dataHard_V_54_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_54_reload \
    op interface \
    ports { dataHard_V_54_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 209 \
    name dataHard_V_55_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_55_reload \
    op interface \
    ports { dataHard_V_55_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 210 \
    name dataHard_V_56_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_56_reload \
    op interface \
    ports { dataHard_V_56_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 211 \
    name dataHard_V_57_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_57_reload \
    op interface \
    ports { dataHard_V_57_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 212 \
    name dataHard_V_58_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_58_reload \
    op interface \
    ports { dataHard_V_58_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 213 \
    name dataHard_V_59_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_59_reload \
    op interface \
    ports { dataHard_V_59_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 214 \
    name dataHard_V_60_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_60_reload \
    op interface \
    ports { dataHard_V_60_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 215 \
    name dataHard_V_61_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_61_reload \
    op interface \
    ports { dataHard_V_61_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 216 \
    name dataHard_V_62_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_62_reload \
    op interface \
    ports { dataHard_V_62_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 217 \
    name dataHard_V_63_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_63_reload \
    op interface \
    ports { dataHard_V_63_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 218 \
    name dataHard_V_64_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_64_reload \
    op interface \
    ports { dataHard_V_64_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 219 \
    name dataHard_V_65_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_65_reload \
    op interface \
    ports { dataHard_V_65_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 220 \
    name dataHard_V_66_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_66_reload \
    op interface \
    ports { dataHard_V_66_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 221 \
    name dataHard_V_67_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_67_reload \
    op interface \
    ports { dataHard_V_67_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 222 \
    name dataHard_V_68_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_68_reload \
    op interface \
    ports { dataHard_V_68_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 223 \
    name dataHard_V_69_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_69_reload \
    op interface \
    ports { dataHard_V_69_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 224 \
    name dataHard_V_70_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_70_reload \
    op interface \
    ports { dataHard_V_70_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 225 \
    name dataHard_V_71_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_71_reload \
    op interface \
    ports { dataHard_V_71_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 226 \
    name dataHard_V_72_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_72_reload \
    op interface \
    ports { dataHard_V_72_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 227 \
    name dataHard_V_73_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_73_reload \
    op interface \
    ports { dataHard_V_73_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 228 \
    name dataHard_V_74_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_74_reload \
    op interface \
    ports { dataHard_V_74_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 229 \
    name dataHard_V_75_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_75_reload \
    op interface \
    ports { dataHard_V_75_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 230 \
    name dataHard_V_76_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_76_reload \
    op interface \
    ports { dataHard_V_76_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 231 \
    name dataHard_V_77_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_77_reload \
    op interface \
    ports { dataHard_V_77_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 232 \
    name dataHard_V_78_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_78_reload \
    op interface \
    ports { dataHard_V_78_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 233 \
    name dataHard_V_79_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_79_reload \
    op interface \
    ports { dataHard_V_79_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 234 \
    name dataHard_V_80_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_80_reload \
    op interface \
    ports { dataHard_V_80_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 235 \
    name dataHard_V_81_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_81_reload \
    op interface \
    ports { dataHard_V_81_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 236 \
    name dataHard_V_82_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_82_reload \
    op interface \
    ports { dataHard_V_82_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 237 \
    name dataHard_V_83_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_83_reload \
    op interface \
    ports { dataHard_V_83_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 238 \
    name dataHard_V_84_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_84_reload \
    op interface \
    ports { dataHard_V_84_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 239 \
    name dataHard_V_85_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_85_reload \
    op interface \
    ports { dataHard_V_85_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 240 \
    name dataHard_V_86_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_86_reload \
    op interface \
    ports { dataHard_V_86_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 241 \
    name dataHard_V_87_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_87_reload \
    op interface \
    ports { dataHard_V_87_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 242 \
    name dataHard_V_88_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_88_reload \
    op interface \
    ports { dataHard_V_88_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 243 \
    name dataHard_V_89_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_89_reload \
    op interface \
    ports { dataHard_V_89_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 244 \
    name dataHard_V_90_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_90_reload \
    op interface \
    ports { dataHard_V_90_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 245 \
    name dataHard_V_91_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_91_reload \
    op interface \
    ports { dataHard_V_91_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 246 \
    name dataHard_V_92_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_92_reload \
    op interface \
    ports { dataHard_V_92_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 247 \
    name dataHard_V_93_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_93_reload \
    op interface \
    ports { dataHard_V_93_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 248 \
    name dataHard_V_94_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_94_reload \
    op interface \
    ports { dataHard_V_94_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 249 \
    name dataHard_V_95_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_95_reload \
    op interface \
    ports { dataHard_V_95_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 250 \
    name dataHard_V_96_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_96_reload \
    op interface \
    ports { dataHard_V_96_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 251 \
    name dataHard_V_97_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_97_reload \
    op interface \
    ports { dataHard_V_97_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 252 \
    name dataHard_V_98_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_98_reload \
    op interface \
    ports { dataHard_V_98_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 253 \
    name dataHard_V_99_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_99_reload \
    op interface \
    ports { dataHard_V_99_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 254 \
    name dataHard_V_100_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_100_reload \
    op interface \
    ports { dataHard_V_100_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 255 \
    name dataHard_V_101_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_101_reload \
    op interface \
    ports { dataHard_V_101_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 256 \
    name dataHard_V_102_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_102_reload \
    op interface \
    ports { dataHard_V_102_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 257 \
    name dataHard_V_103_reload \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_103_reload \
    op interface \
    ports { dataHard_V_103_reload { I 32 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 258 \
    name outData_38_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_38_out \
    op interface \
    ports { outData_38_out { O 32 vector } outData_38_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 259 \
    name outData_37_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_37_out \
    op interface \
    ports { outData_37_out { O 32 vector } outData_37_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 260 \
    name outData_36_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_36_out \
    op interface \
    ports { outData_36_out { O 32 vector } outData_36_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 261 \
    name outData_35_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_35_out \
    op interface \
    ports { outData_35_out { O 32 vector } outData_35_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 262 \
    name outData_34_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_34_out \
    op interface \
    ports { outData_34_out { O 32 vector } outData_34_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 263 \
    name outData_33_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_33_out \
    op interface \
    ports { outData_33_out { O 32 vector } outData_33_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 264 \
    name outData_32_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_32_out \
    op interface \
    ports { outData_32_out { O 32 vector } outData_32_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 265 \
    name outData_31_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_31_out \
    op interface \
    ports { outData_31_out { O 32 vector } outData_31_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 266 \
    name outData_30_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_30_out \
    op interface \
    ports { outData_30_out { O 32 vector } outData_30_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 267 \
    name outData_29_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_29_out \
    op interface \
    ports { outData_29_out { O 32 vector } outData_29_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 268 \
    name outData_28_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_28_out \
    op interface \
    ports { outData_28_out { O 32 vector } outData_28_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 269 \
    name outData_27_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_27_out \
    op interface \
    ports { outData_27_out { O 32 vector } outData_27_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 270 \
    name outData_26_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_26_out \
    op interface \
    ports { outData_26_out { O 32 vector } outData_26_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


# flow_control definition:
set InstName ellipse_solver_flow_control_loop_pipe_sequential_init_U
set CompName ellipse_solver_flow_control_loop_pipe_sequential_init
set name flow_control_loop_pipe_sequential_init
if {${::AESL::PGuard_autocg_gen} && ${::AESL::PGuard_autocg_ipmgen}} {
if {[info proc ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control] == "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control"} {
eval "::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control { \
    name ${name} \
    prefix ellipse_solver_ \
}"
} else {
puts "@W \[IMPL-107\] Cannot find ::AESL_LIB_VIRTEX::xil_gen_UPC_flow_control, check your platform lib"
}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $CompName BINDTYPE interface TYPE internal_upc_flow_control INSTNAME $InstName
}


