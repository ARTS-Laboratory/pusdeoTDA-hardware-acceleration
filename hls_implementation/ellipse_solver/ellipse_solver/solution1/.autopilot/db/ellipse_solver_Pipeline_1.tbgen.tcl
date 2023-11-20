set moduleName ellipse_solver_Pipeline_1
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {ellipse_solver_Pipeline_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ outData_12_out int 32 regular {pointer 1}  }
	{ outData_11_out int 32 regular {pointer 1}  }
	{ outData_10_out int 32 regular {pointer 1}  }
	{ outData_9_out int 32 regular {pointer 1}  }
	{ outData_8_out int 32 regular {pointer 1}  }
	{ outData_7_out int 32 regular {pointer 1}  }
	{ outData_6_out int 32 regular {pointer 1}  }
	{ outData_5_out int 32 regular {pointer 1}  }
	{ outData_4_out int 32 regular {pointer 1}  }
	{ outData_3_out int 32 regular {pointer 1}  }
	{ outData_2_out int 32 regular {pointer 1}  }
	{ outData_1_out int 32 regular {pointer 1}  }
	{ outData_out int 32 regular {pointer 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "outData_12_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outData_11_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outData_10_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outData_9_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outData_8_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outData_7_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outData_6_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outData_5_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outData_4_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outData_3_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outData_2_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outData_1_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outData_out", "interface" : "wire", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ outData_12_out sc_out sc_lv 32 signal 0 } 
	{ outData_12_out_ap_vld sc_out sc_logic 1 outvld 0 } 
	{ outData_11_out sc_out sc_lv 32 signal 1 } 
	{ outData_11_out_ap_vld sc_out sc_logic 1 outvld 1 } 
	{ outData_10_out sc_out sc_lv 32 signal 2 } 
	{ outData_10_out_ap_vld sc_out sc_logic 1 outvld 2 } 
	{ outData_9_out sc_out sc_lv 32 signal 3 } 
	{ outData_9_out_ap_vld sc_out sc_logic 1 outvld 3 } 
	{ outData_8_out sc_out sc_lv 32 signal 4 } 
	{ outData_8_out_ap_vld sc_out sc_logic 1 outvld 4 } 
	{ outData_7_out sc_out sc_lv 32 signal 5 } 
	{ outData_7_out_ap_vld sc_out sc_logic 1 outvld 5 } 
	{ outData_6_out sc_out sc_lv 32 signal 6 } 
	{ outData_6_out_ap_vld sc_out sc_logic 1 outvld 6 } 
	{ outData_5_out sc_out sc_lv 32 signal 7 } 
	{ outData_5_out_ap_vld sc_out sc_logic 1 outvld 7 } 
	{ outData_4_out sc_out sc_lv 32 signal 8 } 
	{ outData_4_out_ap_vld sc_out sc_logic 1 outvld 8 } 
	{ outData_3_out sc_out sc_lv 32 signal 9 } 
	{ outData_3_out_ap_vld sc_out sc_logic 1 outvld 9 } 
	{ outData_2_out sc_out sc_lv 32 signal 10 } 
	{ outData_2_out_ap_vld sc_out sc_logic 1 outvld 10 } 
	{ outData_1_out sc_out sc_lv 32 signal 11 } 
	{ outData_1_out_ap_vld sc_out sc_logic 1 outvld 11 } 
	{ outData_out sc_out sc_lv 32 signal 12 } 
	{ outData_out_ap_vld sc_out sc_logic 1 outvld 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "outData_12_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outData_12_out", "role": "default" }} , 
 	{ "name": "outData_12_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outData_12_out", "role": "ap_vld" }} , 
 	{ "name": "outData_11_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outData_11_out", "role": "default" }} , 
 	{ "name": "outData_11_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outData_11_out", "role": "ap_vld" }} , 
 	{ "name": "outData_10_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outData_10_out", "role": "default" }} , 
 	{ "name": "outData_10_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outData_10_out", "role": "ap_vld" }} , 
 	{ "name": "outData_9_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outData_9_out", "role": "default" }} , 
 	{ "name": "outData_9_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outData_9_out", "role": "ap_vld" }} , 
 	{ "name": "outData_8_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outData_8_out", "role": "default" }} , 
 	{ "name": "outData_8_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outData_8_out", "role": "ap_vld" }} , 
 	{ "name": "outData_7_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outData_7_out", "role": "default" }} , 
 	{ "name": "outData_7_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outData_7_out", "role": "ap_vld" }} , 
 	{ "name": "outData_6_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outData_6_out", "role": "default" }} , 
 	{ "name": "outData_6_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outData_6_out", "role": "ap_vld" }} , 
 	{ "name": "outData_5_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outData_5_out", "role": "default" }} , 
 	{ "name": "outData_5_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outData_5_out", "role": "ap_vld" }} , 
 	{ "name": "outData_4_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outData_4_out", "role": "default" }} , 
 	{ "name": "outData_4_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outData_4_out", "role": "ap_vld" }} , 
 	{ "name": "outData_3_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outData_3_out", "role": "default" }} , 
 	{ "name": "outData_3_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outData_3_out", "role": "ap_vld" }} , 
 	{ "name": "outData_2_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outData_2_out", "role": "default" }} , 
 	{ "name": "outData_2_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outData_2_out", "role": "ap_vld" }} , 
 	{ "name": "outData_1_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outData_1_out", "role": "default" }} , 
 	{ "name": "outData_1_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outData_1_out", "role": "ap_vld" }} , 
 	{ "name": "outData_out", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outData_out", "role": "default" }} , 
 	{ "name": "outData_out_ap_vld", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "outData_out", "role": "ap_vld" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		outData_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16", "Max" : "16"}
	, {"Name" : "Interval", "Min" : "16", "Max" : "16"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	outData_12_out { ap_vld {  { outData_12_out out_data 1 32 }  { outData_12_out_ap_vld out_vld 1 1 } } }
	outData_11_out { ap_vld {  { outData_11_out out_data 1 32 }  { outData_11_out_ap_vld out_vld 1 1 } } }
	outData_10_out { ap_vld {  { outData_10_out out_data 1 32 }  { outData_10_out_ap_vld out_vld 1 1 } } }
	outData_9_out { ap_vld {  { outData_9_out out_data 1 32 }  { outData_9_out_ap_vld out_vld 1 1 } } }
	outData_8_out { ap_vld {  { outData_8_out out_data 1 32 }  { outData_8_out_ap_vld out_vld 1 1 } } }
	outData_7_out { ap_vld {  { outData_7_out out_data 1 32 }  { outData_7_out_ap_vld out_vld 1 1 } } }
	outData_6_out { ap_vld {  { outData_6_out out_data 1 32 }  { outData_6_out_ap_vld out_vld 1 1 } } }
	outData_5_out { ap_vld {  { outData_5_out out_data 1 32 }  { outData_5_out_ap_vld out_vld 1 1 } } }
	outData_4_out { ap_vld {  { outData_4_out out_data 1 32 }  { outData_4_out_ap_vld out_vld 1 1 } } }
	outData_3_out { ap_vld {  { outData_3_out out_data 1 32 }  { outData_3_out_ap_vld out_vld 1 1 } } }
	outData_2_out { ap_vld {  { outData_2_out out_data 1 32 }  { outData_2_out_ap_vld out_vld 1 1 } } }
	outData_1_out { ap_vld {  { outData_1_out out_data 1 32 }  { outData_1_out_ap_vld out_vld 1 1 } } }
	outData_out { ap_vld {  { outData_out out_data 1 32 }  { outData_out_ap_vld out_vld 1 1 } } }
}
