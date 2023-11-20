############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ellipse_solver
set_top ellipse_solver
add_files ellipse_solver.cpp
open_solution "solution1" -flow_target vivado
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 10 -name default
#source "./ellipse_solver/solution1/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -format ip_catalog
