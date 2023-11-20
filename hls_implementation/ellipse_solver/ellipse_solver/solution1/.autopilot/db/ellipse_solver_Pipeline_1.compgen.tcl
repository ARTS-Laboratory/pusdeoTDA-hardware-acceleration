# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 1 \
    name outData_12_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_12_out \
    op interface \
    ports { outData_12_out { O 32 vector } outData_12_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
    name outData_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_11_out \
    op interface \
    ports { outData_11_out { O 32 vector } outData_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 3 \
    name outData_10_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_10_out \
    op interface \
    ports { outData_10_out { O 32 vector } outData_10_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name outData_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_9_out \
    op interface \
    ports { outData_9_out { O 32 vector } outData_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name outData_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_8_out \
    op interface \
    ports { outData_8_out { O 32 vector } outData_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name outData_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_7_out \
    op interface \
    ports { outData_7_out { O 32 vector } outData_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 7 \
    name outData_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_6_out \
    op interface \
    ports { outData_6_out { O 32 vector } outData_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
    name outData_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_5_out \
    op interface \
    ports { outData_5_out { O 32 vector } outData_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 9 \
    name outData_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_4_out \
    op interface \
    ports { outData_4_out { O 32 vector } outData_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name outData_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_3_out \
    op interface \
    ports { outData_3_out { O 32 vector } outData_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 11 \
    name outData_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_2_out \
    op interface \
    ports { outData_2_out { O 32 vector } outData_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 12 \
    name outData_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_1_out \
    op interface \
    ports { outData_1_out { O 32 vector } outData_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 13 \
    name outData_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_outData_out \
    op interface \
    ports { outData_out { O 32 vector } outData_out_ap_vld { O 1 bit } } \
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


