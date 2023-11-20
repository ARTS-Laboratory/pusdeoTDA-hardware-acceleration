// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XELLIPSE_SOLVER_H
#define XELLIPSE_SOLVER_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xellipse_solver_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XEllipse_solver_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XEllipse_solver;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XEllipse_solver_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XEllipse_solver_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XEllipse_solver_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XEllipse_solver_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XEllipse_solver_Initialize(XEllipse_solver *InstancePtr, u16 DeviceId);
XEllipse_solver_Config* XEllipse_solver_LookupConfig(u16 DeviceId);
int XEllipse_solver_CfgInitialize(XEllipse_solver *InstancePtr, XEllipse_solver_Config *ConfigPtr);
#else
int XEllipse_solver_Initialize(XEllipse_solver *InstancePtr, const char* InstanceName);
int XEllipse_solver_Release(XEllipse_solver *InstancePtr);
#endif

void XEllipse_solver_Start(XEllipse_solver *InstancePtr);
u32 XEllipse_solver_IsDone(XEllipse_solver *InstancePtr);
u32 XEllipse_solver_IsIdle(XEllipse_solver *InstancePtr);
u32 XEllipse_solver_IsReady(XEllipse_solver *InstancePtr);
void XEllipse_solver_EnableAutoRestart(XEllipse_solver *InstancePtr);
void XEllipse_solver_DisableAutoRestart(XEllipse_solver *InstancePtr);


void XEllipse_solver_InterruptGlobalEnable(XEllipse_solver *InstancePtr);
void XEllipse_solver_InterruptGlobalDisable(XEllipse_solver *InstancePtr);
void XEllipse_solver_InterruptEnable(XEllipse_solver *InstancePtr, u32 Mask);
void XEllipse_solver_InterruptDisable(XEllipse_solver *InstancePtr, u32 Mask);
void XEllipse_solver_InterruptClear(XEllipse_solver *InstancePtr, u32 Mask);
u32 XEllipse_solver_InterruptGetEnabled(XEllipse_solver *InstancePtr);
u32 XEllipse_solver_InterruptGetStatus(XEllipse_solver *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
