// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xellipse_solver.h"

extern XEllipse_solver_Config XEllipse_solver_ConfigTable[];

XEllipse_solver_Config *XEllipse_solver_LookupConfig(u16 DeviceId) {
	XEllipse_solver_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XELLIPSE_SOLVER_NUM_INSTANCES; Index++) {
		if (XEllipse_solver_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XEllipse_solver_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XEllipse_solver_Initialize(XEllipse_solver *InstancePtr, u16 DeviceId) {
	XEllipse_solver_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XEllipse_solver_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XEllipse_solver_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

