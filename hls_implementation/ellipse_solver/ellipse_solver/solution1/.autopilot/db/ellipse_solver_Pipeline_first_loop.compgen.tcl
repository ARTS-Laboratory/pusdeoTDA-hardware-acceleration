# This script segment is generated automatically by AutoPilot

set name ellipse_solver_mul_32s_32s_32_1_1
if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler $name BINDTYPE {op} TYPE {mul} IMPL {auto} LATENCY 0 ALLOW_PRAGMA 1
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 26 \
    name dataPoints \
    reset_level 1 \
    sync_rst true \
    dir I \
    corename dataPoints \
    op interface \
    ports { dataPoints_address0 { O 3 vector } dataPoints_ce0 { O 1 bit } dataPoints_q0 { I 64 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'dataPoints'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name dataHard_V_103_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_103_out \
    op interface \
    ports { dataHard_V_103_out { O 32 vector } dataHard_V_103_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 28 \
    name dataHard_V_102_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_102_out \
    op interface \
    ports { dataHard_V_102_out { O 32 vector } dataHard_V_102_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name dataHard_V_101_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_101_out \
    op interface \
    ports { dataHard_V_101_out { O 32 vector } dataHard_V_101_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name dataHard_V_100_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_100_out \
    op interface \
    ports { dataHard_V_100_out { O 32 vector } dataHard_V_100_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name dataHard_V_99_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_99_out \
    op interface \
    ports { dataHard_V_99_out { O 32 vector } dataHard_V_99_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
    name dataHard_V_98_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_98_out \
    op interface \
    ports { dataHard_V_98_out { O 32 vector } dataHard_V_98_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 33 \
    name dataHard_V_97_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_97_out \
    op interface \
    ports { dataHard_V_97_out { O 32 vector } dataHard_V_97_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
    name dataHard_V_96_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_96_out \
    op interface \
    ports { dataHard_V_96_out { O 32 vector } dataHard_V_96_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 35 \
    name dataHard_V_95_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_95_out \
    op interface \
    ports { dataHard_V_95_out { O 32 vector } dataHard_V_95_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name dataHard_V_94_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_94_out \
    op interface \
    ports { dataHard_V_94_out { O 32 vector } dataHard_V_94_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
    name dataHard_V_93_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_93_out \
    op interface \
    ports { dataHard_V_93_out { O 32 vector } dataHard_V_93_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 38 \
    name dataHard_V_92_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_92_out \
    op interface \
    ports { dataHard_V_92_out { O 32 vector } dataHard_V_92_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
    name dataHard_V_91_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_91_out \
    op interface \
    ports { dataHard_V_91_out { O 32 vector } dataHard_V_91_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 40 \
    name dataHard_V_90_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_90_out \
    op interface \
    ports { dataHard_V_90_out { O 32 vector } dataHard_V_90_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
    name dataHard_V_89_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_89_out \
    op interface \
    ports { dataHard_V_89_out { O 32 vector } dataHard_V_89_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 42 \
    name dataHard_V_88_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_88_out \
    op interface \
    ports { dataHard_V_88_out { O 32 vector } dataHard_V_88_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
    name dataHard_V_87_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_87_out \
    op interface \
    ports { dataHard_V_87_out { O 32 vector } dataHard_V_87_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 44 \
    name dataHard_V_86_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_86_out \
    op interface \
    ports { dataHard_V_86_out { O 32 vector } dataHard_V_86_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
    name dataHard_V_85_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_85_out \
    op interface \
    ports { dataHard_V_85_out { O 32 vector } dataHard_V_85_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 46 \
    name dataHard_V_84_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_84_out \
    op interface \
    ports { dataHard_V_84_out { O 32 vector } dataHard_V_84_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
    name dataHard_V_83_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_83_out \
    op interface \
    ports { dataHard_V_83_out { O 32 vector } dataHard_V_83_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 48 \
    name dataHard_V_82_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_82_out \
    op interface \
    ports { dataHard_V_82_out { O 32 vector } dataHard_V_82_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 49 \
    name dataHard_V_81_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_81_out \
    op interface \
    ports { dataHard_V_81_out { O 32 vector } dataHard_V_81_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 50 \
    name dataHard_V_80_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_80_out \
    op interface \
    ports { dataHard_V_80_out { O 32 vector } dataHard_V_80_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 51 \
    name dataHard_V_79_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_79_out \
    op interface \
    ports { dataHard_V_79_out { O 32 vector } dataHard_V_79_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 52 \
    name dataHard_V_78_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_78_out \
    op interface \
    ports { dataHard_V_78_out { O 32 vector } dataHard_V_78_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 53 \
    name dataHard_V_77_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_77_out \
    op interface \
    ports { dataHard_V_77_out { O 32 vector } dataHard_V_77_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 54 \
    name dataHard_V_76_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_76_out \
    op interface \
    ports { dataHard_V_76_out { O 32 vector } dataHard_V_76_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 55 \
    name dataHard_V_75_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_75_out \
    op interface \
    ports { dataHard_V_75_out { O 32 vector } dataHard_V_75_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 56 \
    name dataHard_V_74_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_74_out \
    op interface \
    ports { dataHard_V_74_out { O 32 vector } dataHard_V_74_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 57 \
    name dataHard_V_73_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_73_out \
    op interface \
    ports { dataHard_V_73_out { O 32 vector } dataHard_V_73_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 58 \
    name dataHard_V_72_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_72_out \
    op interface \
    ports { dataHard_V_72_out { O 32 vector } dataHard_V_72_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name dataHard_V_71_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_71_out \
    op interface \
    ports { dataHard_V_71_out { O 32 vector } dataHard_V_71_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name dataHard_V_70_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_70_out \
    op interface \
    ports { dataHard_V_70_out { O 32 vector } dataHard_V_70_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name dataHard_V_69_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_69_out \
    op interface \
    ports { dataHard_V_69_out { O 32 vector } dataHard_V_69_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name dataHard_V_68_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_68_out \
    op interface \
    ports { dataHard_V_68_out { O 32 vector } dataHard_V_68_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name dataHard_V_67_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_67_out \
    op interface \
    ports { dataHard_V_67_out { O 32 vector } dataHard_V_67_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name dataHard_V_66_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_66_out \
    op interface \
    ports { dataHard_V_66_out { O 32 vector } dataHard_V_66_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name dataHard_V_65_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_65_out \
    op interface \
    ports { dataHard_V_65_out { O 32 vector } dataHard_V_65_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name dataHard_V_64_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_64_out \
    op interface \
    ports { dataHard_V_64_out { O 32 vector } dataHard_V_64_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 67 \
    name dataHard_V_63_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_63_out \
    op interface \
    ports { dataHard_V_63_out { O 32 vector } dataHard_V_63_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 68 \
    name dataHard_V_62_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_62_out \
    op interface \
    ports { dataHard_V_62_out { O 32 vector } dataHard_V_62_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 69 \
    name dataHard_V_61_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_61_out \
    op interface \
    ports { dataHard_V_61_out { O 32 vector } dataHard_V_61_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 70 \
    name dataHard_V_60_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_60_out \
    op interface \
    ports { dataHard_V_60_out { O 32 vector } dataHard_V_60_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 71 \
    name dataHard_V_59_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_59_out \
    op interface \
    ports { dataHard_V_59_out { O 32 vector } dataHard_V_59_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 72 \
    name dataHard_V_58_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_58_out \
    op interface \
    ports { dataHard_V_58_out { O 32 vector } dataHard_V_58_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 73 \
    name dataHard_V_57_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_57_out \
    op interface \
    ports { dataHard_V_57_out { O 32 vector } dataHard_V_57_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 74 \
    name dataHard_V_56_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_56_out \
    op interface \
    ports { dataHard_V_56_out { O 32 vector } dataHard_V_56_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 75 \
    name dataHard_V_55_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_55_out \
    op interface \
    ports { dataHard_V_55_out { O 32 vector } dataHard_V_55_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 76 \
    name dataHard_V_54_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_54_out \
    op interface \
    ports { dataHard_V_54_out { O 32 vector } dataHard_V_54_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 77 \
    name dataHard_V_53_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_53_out \
    op interface \
    ports { dataHard_V_53_out { O 32 vector } dataHard_V_53_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 78 \
    name dataHard_V_52_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_52_out \
    op interface \
    ports { dataHard_V_52_out { O 32 vector } dataHard_V_52_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 79 \
    name dataHard_V_51_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_51_out \
    op interface \
    ports { dataHard_V_51_out { O 32 vector } dataHard_V_51_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 80 \
    name dataHard_V_50_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_50_out \
    op interface \
    ports { dataHard_V_50_out { O 32 vector } dataHard_V_50_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 81 \
    name dataHard_V_49_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_49_out \
    op interface \
    ports { dataHard_V_49_out { O 32 vector } dataHard_V_49_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 82 \
    name dataHard_V_48_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_48_out \
    op interface \
    ports { dataHard_V_48_out { O 32 vector } dataHard_V_48_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 83 \
    name dataHard_V_47_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_47_out \
    op interface \
    ports { dataHard_V_47_out { O 32 vector } dataHard_V_47_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 84 \
    name dataHard_V_46_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_46_out \
    op interface \
    ports { dataHard_V_46_out { O 32 vector } dataHard_V_46_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 85 \
    name dataHard_V_45_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_45_out \
    op interface \
    ports { dataHard_V_45_out { O 32 vector } dataHard_V_45_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 86 \
    name dataHard_V_44_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_44_out \
    op interface \
    ports { dataHard_V_44_out { O 32 vector } dataHard_V_44_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 87 \
    name dataHard_V_43_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_43_out \
    op interface \
    ports { dataHard_V_43_out { O 32 vector } dataHard_V_43_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 88 \
    name dataHard_V_42_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_42_out \
    op interface \
    ports { dataHard_V_42_out { O 32 vector } dataHard_V_42_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 89 \
    name dataHard_V_41_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_41_out \
    op interface \
    ports { dataHard_V_41_out { O 32 vector } dataHard_V_41_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 90 \
    name dataHard_V_40_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_40_out \
    op interface \
    ports { dataHard_V_40_out { O 32 vector } dataHard_V_40_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 91 \
    name dataHard_V_39_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_39_out \
    op interface \
    ports { dataHard_V_39_out { O 32 vector } dataHard_V_39_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 92 \
    name dataHard_V_38_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_38_out \
    op interface \
    ports { dataHard_V_38_out { O 32 vector } dataHard_V_38_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 93 \
    name dataHard_V_37_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_37_out \
    op interface \
    ports { dataHard_V_37_out { O 32 vector } dataHard_V_37_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 94 \
    name dataHard_V_36_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_36_out \
    op interface \
    ports { dataHard_V_36_out { O 32 vector } dataHard_V_36_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 95 \
    name dataHard_V_35_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_35_out \
    op interface \
    ports { dataHard_V_35_out { O 32 vector } dataHard_V_35_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 96 \
    name dataHard_V_34_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_34_out \
    op interface \
    ports { dataHard_V_34_out { O 32 vector } dataHard_V_34_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 97 \
    name dataHard_V_33_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_33_out \
    op interface \
    ports { dataHard_V_33_out { O 32 vector } dataHard_V_33_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 98 \
    name dataHard_V_32_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_32_out \
    op interface \
    ports { dataHard_V_32_out { O 32 vector } dataHard_V_32_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 99 \
    name dataHard_V_31_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_31_out \
    op interface \
    ports { dataHard_V_31_out { O 32 vector } dataHard_V_31_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 100 \
    name dataHard_V_30_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_30_out \
    op interface \
    ports { dataHard_V_30_out { O 32 vector } dataHard_V_30_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 101 \
    name dataHard_V_29_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_29_out \
    op interface \
    ports { dataHard_V_29_out { O 32 vector } dataHard_V_29_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 102 \
    name dataHard_V_28_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_28_out \
    op interface \
    ports { dataHard_V_28_out { O 32 vector } dataHard_V_28_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 103 \
    name dataHard_V_27_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_27_out \
    op interface \
    ports { dataHard_V_27_out { O 32 vector } dataHard_V_27_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 104 \
    name dataHard_V_26_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_26_out \
    op interface \
    ports { dataHard_V_26_out { O 32 vector } dataHard_V_26_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 105 \
    name dataHard_V_25_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_25_out \
    op interface \
    ports { dataHard_V_25_out { O 32 vector } dataHard_V_25_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 106 \
    name dataHard_V_24_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_24_out \
    op interface \
    ports { dataHard_V_24_out { O 32 vector } dataHard_V_24_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 107 \
    name dataHard_V_23_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_23_out \
    op interface \
    ports { dataHard_V_23_out { O 32 vector } dataHard_V_23_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 108 \
    name dataHard_V_22_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_22_out \
    op interface \
    ports { dataHard_V_22_out { O 32 vector } dataHard_V_22_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 109 \
    name dataHard_V_21_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_21_out \
    op interface \
    ports { dataHard_V_21_out { O 32 vector } dataHard_V_21_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 110 \
    name dataHard_V_20_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_20_out \
    op interface \
    ports { dataHard_V_20_out { O 32 vector } dataHard_V_20_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 111 \
    name dataHard_V_19_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_19_out \
    op interface \
    ports { dataHard_V_19_out { O 32 vector } dataHard_V_19_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name dataHard_V_18_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_18_out \
    op interface \
    ports { dataHard_V_18_out { O 32 vector } dataHard_V_18_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 113 \
    name dataHard_V_17_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_17_out \
    op interface \
    ports { dataHard_V_17_out { O 32 vector } dataHard_V_17_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 114 \
    name dataHard_V_16_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_16_out \
    op interface \
    ports { dataHard_V_16_out { O 32 vector } dataHard_V_16_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 115 \
    name dataHard_V_15_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_15_out \
    op interface \
    ports { dataHard_V_15_out { O 32 vector } dataHard_V_15_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 116 \
    name dataHard_V_14_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_14_out \
    op interface \
    ports { dataHard_V_14_out { O 32 vector } dataHard_V_14_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name dataHard_V_13_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_13_out \
    op interface \
    ports { dataHard_V_13_out { O 32 vector } dataHard_V_13_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name dataHard_V_12_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_12_out \
    op interface \
    ports { dataHard_V_12_out { O 32 vector } dataHard_V_12_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name dataHard_V_11_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_11_out \
    op interface \
    ports { dataHard_V_11_out { O 32 vector } dataHard_V_11_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name dataHard_V_10_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_10_out \
    op interface \
    ports { dataHard_V_10_out { O 32 vector } dataHard_V_10_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name dataHard_V_9_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_9_out \
    op interface \
    ports { dataHard_V_9_out { O 32 vector } dataHard_V_9_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name dataHard_V_8_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_8_out \
    op interface \
    ports { dataHard_V_8_out { O 32 vector } dataHard_V_8_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name dataHard_V_7_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_7_out \
    op interface \
    ports { dataHard_V_7_out { O 32 vector } dataHard_V_7_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 124 \
    name dataHard_V_6_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_6_out \
    op interface \
    ports { dataHard_V_6_out { O 32 vector } dataHard_V_6_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 125 \
    name dataHard_V_5_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_5_out \
    op interface \
    ports { dataHard_V_5_out { O 32 vector } dataHard_V_5_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 126 \
    name dataHard_V_4_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_4_out \
    op interface \
    ports { dataHard_V_4_out { O 32 vector } dataHard_V_4_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 127 \
    name dataHard_V_3_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_3_out \
    op interface \
    ports { dataHard_V_3_out { O 32 vector } dataHard_V_3_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 128 \
    name dataHard_V_2_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_2_out \
    op interface \
    ports { dataHard_V_2_out { O 32 vector } dataHard_V_2_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 129 \
    name dataHard_V_1_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_1_out \
    op interface \
    ports { dataHard_V_1_out { O 32 vector } dataHard_V_1_out_ap_vld { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 130 \
    name dataHard_V_out \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_dataHard_V_out \
    op interface \
    ports { dataHard_V_out { O 32 vector } dataHard_V_out_ap_vld { O 1 bit } } \
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


