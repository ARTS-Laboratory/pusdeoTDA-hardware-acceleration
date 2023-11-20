set moduleName ellipse_solver
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {ellipse_solver}
set C_modelType { void 0 }
set C_modelArgList {
	{ dataPoints int 64 regular {array 8 { 1 3 } 1 1 }  }
	{ matrix int 32 regular {array 30 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "dataPoints", "interface" : "memory", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "matrix", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 31
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ dataPoints_address0 sc_out sc_lv 3 signal 0 } 
	{ dataPoints_ce0 sc_out sc_logic 1 signal 0 } 
	{ dataPoints_q0 sc_in sc_lv 64 signal 0 } 
	{ matrix_address0 sc_out sc_lv 5 signal 1 } 
	{ matrix_ce0 sc_out sc_logic 1 signal 1 } 
	{ matrix_we0 sc_out sc_logic 1 signal 1 } 
	{ matrix_d0 sc_out sc_lv 32 signal 1 } 
	{ matrix_address1 sc_out sc_lv 5 signal 1 } 
	{ matrix_ce1 sc_out sc_logic 1 signal 1 } 
	{ matrix_we1 sc_out sc_logic 1 signal 1 } 
	{ matrix_d1 sc_out sc_lv 32 signal 1 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"ellipse_solver","role":"start","value":"0","valid_bit":"0"},{"name":"ellipse_solver","role":"continue","value":"0","valid_bit":"4"},{"name":"ellipse_solver","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"ellipse_solver","role":"start","value":"0","valid_bit":"0"},{"name":"ellipse_solver","role":"done","value":"0","valid_bit":"1"},{"name":"ellipse_solver","role":"idle","value":"0","valid_bit":"2"},{"name":"ellipse_solver","role":"ready","value":"0","valid_bit":"3"},{"name":"ellipse_solver","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "dataPoints_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "dataPoints", "role": "address0" }} , 
 	{ "name": "dataPoints_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "dataPoints", "role": "ce0" }} , 
 	{ "name": "dataPoints_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "dataPoints", "role": "q0" }} , 
 	{ "name": "matrix_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "matrix", "role": "address0" }} , 
 	{ "name": "matrix_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "matrix", "role": "ce0" }} , 
 	{ "name": "matrix_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "matrix", "role": "we0" }} , 
 	{ "name": "matrix_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "matrix", "role": "d0" }} , 
 	{ "name": "matrix_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "matrix", "role": "address1" }} , 
 	{ "name": "matrix_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "matrix", "role": "ce1" }} , 
 	{ "name": "matrix_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "matrix", "role": "we1" }} , 
 	{ "name": "matrix_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "matrix", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "16", "27"],
		"CDFG" : "ellipse_solver",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "49", "EstimateLatencyMax" : "49",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "dataPoints", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_ellipse_solver_Pipeline_first_loop_fu_909", "Port" : "dataPoints", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "matrix", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ellipse_solver_Pipeline_1_fu_892", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "ellipse_solver_Pipeline_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16", "EstimateLatencyMax" : "16",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "outData_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "outData_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "outData_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "outData_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "outData_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "outData_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "outData_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "outData_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "outData_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "outData_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "outData_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "outData_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "outData_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "Loop 1", "PipelineType" : "NotSupport"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ellipse_solver_Pipeline_1_fu_892.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ellipse_solver_Pipeline_first_loop_fu_909", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15"],
		"CDFG" : "ellipse_solver_Pipeline_first_loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "dataPoints", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "dataHard_V_103_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_102_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_101_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_100_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_99_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_98_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_97_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_96_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_95_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_94_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_93_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_92_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_91_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_90_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_89_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_88_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_87_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_86_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_85_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_84_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_83_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_82_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_81_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_80_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_79_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_78_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_77_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_76_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_75_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_74_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_73_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_72_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_71_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_70_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_69_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_68_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_67_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_66_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_65_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_64_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_63_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_62_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_61_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_60_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_59_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_58_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_57_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_56_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_55_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_54_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_53_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_52_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_51_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_50_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_49_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_48_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_47_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_46_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_45_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_44_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_43_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_42_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_41_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_40_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_39_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_37_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_26_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_25_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_24_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_23_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_22_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_21_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_20_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_19_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_18_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_17_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_16_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_15_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_14_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_13_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_12_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_11_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_10_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_9_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_8_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_7_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_6_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_5_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_4_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_3_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_2_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_1_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "dataHard_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "first_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ellipse_solver_Pipeline_first_loop_fu_909.mul_32s_32s_32_1_1_U14", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ellipse_solver_Pipeline_first_loop_fu_909.mul_32s_32s_32_1_1_U15", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ellipse_solver_Pipeline_first_loop_fu_909.mul_32s_32s_32_1_1_U16", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ellipse_solver_Pipeline_first_loop_fu_909.mul_32s_32s_32_1_1_U17", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ellipse_solver_Pipeline_first_loop_fu_909.mul_32s_32s_32_1_1_U18", "Parent" : "3"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ellipse_solver_Pipeline_first_loop_fu_909.mul_32s_32s_32_1_1_U19", "Parent" : "3"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ellipse_solver_Pipeline_first_loop_fu_909.mul_32s_32s_32_1_1_U20", "Parent" : "3"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ellipse_solver_Pipeline_first_loop_fu_909.mul_32s_32s_32_1_1_U21", "Parent" : "3"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ellipse_solver_Pipeline_first_loop_fu_909.mul_32s_32s_32_1_1_U22", "Parent" : "3"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ellipse_solver_Pipeline_first_loop_fu_909.mul_32s_32s_32_1_1_U23", "Parent" : "3"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ellipse_solver_Pipeline_first_loop_fu_909.mul_32s_32s_32_1_1_U24", "Parent" : "3"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ellipse_solver_Pipeline_first_loop_fu_909.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_ellipse_solver_Pipeline_second_loop_fu_1019", "Parent" : "0", "Child" : ["17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
		"CDFG" : "ellipse_solver_Pipeline_second_loop",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15", "EstimateLatencyMax" : "15",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "outData_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "outData_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "outData_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "outData_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "outData_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "outData_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "outData_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "outData_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "outData_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "outData_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "outData_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "outData_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "outData_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_1_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_2_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_3_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_4_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_5_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_6_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_7_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_8_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_9_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_10_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_11_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_12_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_13_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_14_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_15_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_16_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_17_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_18_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_19_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_20_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_21_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_22_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_23_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_24_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_25_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_26_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_27_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_28_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_29_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_30_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_31_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_32_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_33_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_34_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_35_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_36_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_37_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_38_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_39_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_40_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_41_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_42_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_43_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_44_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_45_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_46_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_47_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_48_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_49_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_50_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_51_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_52_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_53_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_54_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_55_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_56_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_57_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_58_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_59_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_60_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_61_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_62_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_63_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_64_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_65_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_66_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_67_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_68_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_69_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_70_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_71_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_72_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_73_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_74_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_75_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_76_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_77_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_78_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_79_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_80_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_81_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_82_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_83_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_84_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_85_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_86_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_87_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_88_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_89_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_90_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_91_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_92_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_93_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_94_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_95_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_96_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_97_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_98_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_99_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_100_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_101_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_102_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "dataHard_V_103_reload", "Type" : "None", "Direction" : "I"},
			{"Name" : "outData_38_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "outData_37_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "outData_36_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "outData_35_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "outData_34_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "outData_33_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "outData_32_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "outData_31_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "outData_30_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "outData_29_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "outData_28_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "outData_27_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "outData_26_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "second_loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ellipse_solver_Pipeline_second_loop_fu_1019.mux_134_32_1_1_U131", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ellipse_solver_Pipeline_second_loop_fu_1019.mux_134_32_1_1_U132", "Parent" : "16"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ellipse_solver_Pipeline_second_loop_fu_1019.mux_134_32_1_1_U133", "Parent" : "16"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ellipse_solver_Pipeline_second_loop_fu_1019.mux_134_32_1_1_U134", "Parent" : "16"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ellipse_solver_Pipeline_second_loop_fu_1019.mux_134_32_1_1_U135", "Parent" : "16"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ellipse_solver_Pipeline_second_loop_fu_1019.mux_134_32_1_1_U136", "Parent" : "16"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ellipse_solver_Pipeline_second_loop_fu_1019.mux_134_32_1_1_U137", "Parent" : "16"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ellipse_solver_Pipeline_second_loop_fu_1019.mux_134_32_1_1_U138", "Parent" : "16"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ellipse_solver_Pipeline_second_loop_fu_1019.mux_134_32_1_1_U139", "Parent" : "16"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_ellipse_solver_Pipeline_second_loop_fu_1019.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	ellipse_solver {
		dataPoints {Type I LastRead 0 FirstWrite -1}
		matrix {Type O LastRead -1 FirstWrite 0}}
	ellipse_solver_Pipeline_1 {
		outData_12_out {Type O LastRead -1 FirstWrite 0}
		outData_11_out {Type O LastRead -1 FirstWrite 0}
		outData_10_out {Type O LastRead -1 FirstWrite 0}
		outData_9_out {Type O LastRead -1 FirstWrite 0}
		outData_8_out {Type O LastRead -1 FirstWrite 0}
		outData_7_out {Type O LastRead -1 FirstWrite 0}
		outData_6_out {Type O LastRead -1 FirstWrite 0}
		outData_5_out {Type O LastRead -1 FirstWrite 0}
		outData_4_out {Type O LastRead -1 FirstWrite 0}
		outData_3_out {Type O LastRead -1 FirstWrite 0}
		outData_2_out {Type O LastRead -1 FirstWrite 0}
		outData_1_out {Type O LastRead -1 FirstWrite 0}
		outData_out {Type O LastRead -1 FirstWrite 0}}
	ellipse_solver_Pipeline_first_loop {
		dataPoints {Type I LastRead 0 FirstWrite -1}
		dataHard_V_103_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_102_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_101_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_100_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_99_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_98_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_97_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_96_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_95_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_94_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_93_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_92_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_91_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_90_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_89_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_88_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_87_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_86_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_85_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_84_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_83_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_82_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_81_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_80_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_79_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_78_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_77_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_76_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_75_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_74_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_73_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_72_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_71_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_70_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_69_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_68_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_67_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_66_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_65_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_64_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_63_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_62_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_61_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_60_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_59_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_58_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_57_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_56_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_55_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_54_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_53_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_52_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_51_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_50_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_49_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_48_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_47_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_46_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_45_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_44_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_43_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_42_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_41_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_40_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_39_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_38_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_37_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_36_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_35_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_34_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_33_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_32_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_31_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_30_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_29_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_28_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_27_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_26_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_25_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_24_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_23_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_22_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_21_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_20_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_19_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_18_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_17_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_16_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_15_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_14_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_13_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_12_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_11_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_10_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_9_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_8_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_7_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_6_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_5_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_4_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_3_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_2_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_1_out {Type O LastRead -1 FirstWrite 1}
		dataHard_V_out {Type O LastRead -1 FirstWrite 1}}
	ellipse_solver_Pipeline_second_loop {
		outData_12_reload {Type I LastRead 0 FirstWrite -1}
		outData_11_reload {Type I LastRead 0 FirstWrite -1}
		outData_10_reload {Type I LastRead 0 FirstWrite -1}
		outData_9_reload {Type I LastRead 0 FirstWrite -1}
		outData_8_reload {Type I LastRead 0 FirstWrite -1}
		outData_7_reload {Type I LastRead 0 FirstWrite -1}
		outData_6_reload {Type I LastRead 0 FirstWrite -1}
		outData_5_reload {Type I LastRead 0 FirstWrite -1}
		outData_4_reload {Type I LastRead 0 FirstWrite -1}
		outData_3_reload {Type I LastRead 0 FirstWrite -1}
		outData_2_reload {Type I LastRead 0 FirstWrite -1}
		outData_1_reload {Type I LastRead 0 FirstWrite -1}
		outData_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_1_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_2_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_3_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_4_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_5_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_6_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_7_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_8_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_9_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_10_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_11_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_12_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_13_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_14_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_15_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_16_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_17_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_18_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_19_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_20_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_21_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_22_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_23_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_24_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_25_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_26_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_27_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_28_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_29_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_30_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_31_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_32_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_33_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_34_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_35_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_36_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_37_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_38_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_39_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_40_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_41_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_42_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_43_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_44_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_45_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_46_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_47_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_48_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_49_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_50_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_51_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_52_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_53_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_54_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_55_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_56_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_57_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_58_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_59_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_60_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_61_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_62_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_63_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_64_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_65_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_66_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_67_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_68_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_69_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_70_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_71_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_72_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_73_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_74_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_75_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_76_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_77_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_78_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_79_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_80_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_81_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_82_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_83_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_84_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_85_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_86_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_87_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_88_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_89_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_90_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_91_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_92_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_93_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_94_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_95_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_96_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_97_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_98_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_99_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_100_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_101_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_102_reload {Type I LastRead 0 FirstWrite -1}
		dataHard_V_103_reload {Type I LastRead 0 FirstWrite -1}
		outData_38_out {Type O LastRead -1 FirstWrite 1}
		outData_37_out {Type O LastRead -1 FirstWrite 1}
		outData_36_out {Type O LastRead -1 FirstWrite 1}
		outData_35_out {Type O LastRead -1 FirstWrite 1}
		outData_34_out {Type O LastRead -1 FirstWrite 1}
		outData_33_out {Type O LastRead -1 FirstWrite 1}
		outData_32_out {Type O LastRead -1 FirstWrite 1}
		outData_31_out {Type O LastRead -1 FirstWrite 1}
		outData_30_out {Type O LastRead -1 FirstWrite 1}
		outData_29_out {Type O LastRead -1 FirstWrite 1}
		outData_28_out {Type O LastRead -1 FirstWrite 1}
		outData_27_out {Type O LastRead -1 FirstWrite 1}
		outData_26_out {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "49", "Max" : "49"}
	, {"Name" : "Interval", "Min" : "50", "Max" : "50"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	dataPoints { ap_memory {  { dataPoints_address0 mem_address 1 3 }  { dataPoints_ce0 mem_ce 1 1 }  { dataPoints_q0 mem_dout 0 64 } } }
	matrix { ap_memory {  { matrix_address0 mem_address 1 5 }  { matrix_ce0 mem_ce 1 1 }  { matrix_we0 mem_we 1 1 }  { matrix_d0 mem_din 1 32 }  { matrix_address1 MemPortADDR2 1 5 }  { matrix_ce1 MemPortCE2 1 1 }  { matrix_we1 MemPortWE2 1 1 }  { matrix_d1 MemPortDIN2 1 32 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
