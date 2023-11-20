// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xellipse_solver.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XEllipse_solver_CfgInitialize(XEllipse_solver *InstancePtr, XEllipse_solver_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XEllipse_solver_Start(XEllipse_solver *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEllipse_solver_ReadReg(InstancePtr->Control_BaseAddress, XELLIPSE_SOLVER_CONTROL_ADDR_AP_CTRL) & 0x80;
    XEllipse_solver_WriteReg(InstancePtr->Control_BaseAddress, XELLIPSE_SOLVER_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XEllipse_solver_IsDone(XEllipse_solver *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEllipse_solver_ReadReg(InstancePtr->Control_BaseAddress, XELLIPSE_SOLVER_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XEllipse_solver_IsIdle(XEllipse_solver *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEllipse_solver_ReadReg(InstancePtr->Control_BaseAddress, XELLIPSE_SOLVER_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XEllipse_solver_IsReady(XEllipse_solver *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XEllipse_solver_ReadReg(InstancePtr->Control_BaseAddress, XELLIPSE_SOLVER_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XEllipse_solver_EnableAutoRestart(XEllipse_solver *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEllipse_solver_WriteReg(InstancePtr->Control_BaseAddress, XELLIPSE_SOLVER_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XEllipse_solver_DisableAutoRestart(XEllipse_solver *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEllipse_solver_WriteReg(InstancePtr->Control_BaseAddress, XELLIPSE_SOLVER_CONTROL_ADDR_AP_CTRL, 0);
}

void XEllipse_solver_InterruptGlobalEnable(XEllipse_solver *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEllipse_solver_WriteReg(InstancePtr->Control_BaseAddress, XELLIPSE_SOLVER_CONTROL_ADDR_GIE, 1);
}

void XEllipse_solver_InterruptGlobalDisable(XEllipse_solver *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEllipse_solver_WriteReg(InstancePtr->Control_BaseAddress, XELLIPSE_SOLVER_CONTROL_ADDR_GIE, 0);
}

void XEllipse_solver_InterruptEnable(XEllipse_solver *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XEllipse_solver_ReadReg(InstancePtr->Control_BaseAddress, XELLIPSE_SOLVER_CONTROL_ADDR_IER);
    XEllipse_solver_WriteReg(InstancePtr->Control_BaseAddress, XELLIPSE_SOLVER_CONTROL_ADDR_IER, Register | Mask);
}

void XEllipse_solver_InterruptDisable(XEllipse_solver *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XEllipse_solver_ReadReg(InstancePtr->Control_BaseAddress, XELLIPSE_SOLVER_CONTROL_ADDR_IER);
    XEllipse_solver_WriteReg(InstancePtr->Control_BaseAddress, XELLIPSE_SOLVER_CONTROL_ADDR_IER, Register & (~Mask));
}

void XEllipse_solver_InterruptClear(XEllipse_solver *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XEllipse_solver_WriteReg(InstancePtr->Control_BaseAddress, XELLIPSE_SOLVER_CONTROL_ADDR_ISR, Mask);
}

u32 XEllipse_solver_InterruptGetEnabled(XEllipse_solver *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEllipse_solver_ReadReg(InstancePtr->Control_BaseAddress, XELLIPSE_SOLVER_CONTROL_ADDR_IER);
}

u32 XEllipse_solver_InterruptGetStatus(XEllipse_solver *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XEllipse_solver_ReadReg(InstancePtr->Control_BaseAddress, XELLIPSE_SOLVER_CONTROL_ADDR_ISR);
}

