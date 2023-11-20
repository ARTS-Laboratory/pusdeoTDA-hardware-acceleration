; ModuleID = '/share/jbakos/data/designs/ellipse_solver/ellipse_solver/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_int<64>" = type { %"struct.ap_int_base<64, true>" }
%"struct.ap_int_base<64, true>" = type { %"struct.ssdm_int<64, true>" }
%"struct.ssdm_int<64, true>" = type { i64 }
%"struct.ap_int<32>" = type { %"struct.ap_int_base<32, true>" }
%"struct.ap_int_base<32, true>" = type { %"struct.ssdm_int<32, true>" }
%"struct.ssdm_int<32, true>" = type { i32 }

; Function Attrs: inaccessiblemem_or_argmemonly noinline
define void @apatb_ellipse_solver_ir(%"struct.ap_int<64>"* noalias nonnull "fpga.decayed.dim.hint"="8" %dataPoints, [6 x %"struct.ap_int<32>"]* noalias nonnull "fpga.decayed.dim.hint"="5" %matrix) local_unnamed_addr #0 {
entry:
  %dataPoints_copy = alloca [8 x i64], align 512
  %matrix_copy = alloca [5 x [6 x i32]], align 512
  %0 = bitcast %"struct.ap_int<64>"* %dataPoints to [8 x %"struct.ap_int<64>"]*
  %1 = bitcast [6 x %"struct.ap_int<32>"]* %matrix to [5 x [6 x %"struct.ap_int<32>"]]*
  call fastcc void @copy_in([8 x %"struct.ap_int<64>"]* nonnull %0, [8 x i64]* nonnull align 512 %dataPoints_copy, [5 x [6 x %"struct.ap_int<32>"]]* nonnull %1, [5 x [6 x i32]]* nonnull align 512 %matrix_copy)
  %2 = getelementptr [8 x i64], [8 x i64]* %dataPoints_copy, i32 0, i32 0
  %3 = getelementptr [5 x [6 x i32]], [5 x [6 x i32]]* %matrix_copy, i32 0, i32 0
  call void @apatb_ellipse_solver_hw(i64* %2, [6 x i32]* %3)
  call void @copy_back([8 x %"struct.ap_int<64>"]* %0, [8 x i64]* %dataPoints_copy, [5 x [6 x %"struct.ap_int<32>"]]* %1, [5 x [6 x i32]]* %matrix_copy)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([8 x %"struct.ap_int<64>"]* noalias readonly "unpacked"="0", [8 x i64]* noalias nocapture align 512 "unpacked"="1.0.0.0", [5 x [6 x %"struct.ap_int<32>"]]* noalias readonly "unpacked"="2", [5 x [6 x i32]]* noalias align 512 "unpacked"="3") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a8struct.ap_int<64>"([8 x i64]* align 512 %1, [8 x %"struct.ap_int<64>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a5a6struct.ap_int<32>.29"([5 x [6 x i32]]* align 512 %3, [5 x [6 x %"struct.ap_int<32>"]]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a5a6struct.ap_int<32>"([5 x [6 x %"struct.ap_int<32>"]]* noalias, [5 x [6 x i32]]* noalias readonly align 512) unnamed_addr #2 {
entry:
  %2 = icmp eq [5 x [6 x %"struct.ap_int<32>"]]* %0, null
  %3 = icmp eq [5 x [6 x i32]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx16 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx315 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %5 = getelementptr [5 x [6 x i32]], [5 x [6 x i32]]* %1, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315
  %dst.addr5.0.0.014 = getelementptr [5 x [6 x %"struct.ap_int<32>"]], [5 x [6 x %"struct.ap_int<32>"]]* %0, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315, i32 0, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %dst.addr5.0.0.014, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx315, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 6
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx16, 1
  %exitcond17 = icmp ne i64 %for.loop.idx.next, 5
  br i1 %exitcond17, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([8 x %"struct.ap_int<64>"]* noalias "unpacked"="0", [8 x i64]* noalias nocapture readonly align 512 "unpacked"="1.0.0.0", [5 x [6 x %"struct.ap_int<32>"]]* noalias "unpacked"="2", [5 x [6 x i32]]* noalias readonly align 512 "unpacked"="3") unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a8struct.ap_int<64>.5"([8 x %"struct.ap_int<64>"]* %0, [8 x i64]* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0a5a6struct.ap_int<32>"([5 x [6 x %"struct.ap_int<32>"]]* %2, [5 x [6 x i32]]* align 512 %3)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a8struct.ap_int<64>.5"([8 x %"struct.ap_int<64>"]* noalias "unpacked"="0", [8 x i64]* noalias nocapture readonly align 512 "unpacked"="1.0.0.0") unnamed_addr #2 {
entry:
  %2 = icmp eq [8 x %"struct.ap_int<64>"]* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [8 x i64], [8 x i64]* %1, i64 0, i64 %for.loop.idx1
  %dst.addr.0.0.06 = getelementptr [8 x %"struct.ap_int<64>"], [8 x %"struct.ap_int<64>"]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %3 = load i64, i64* %src.addr.0.0.05, align 8
  store i64 %3, i64* %dst.addr.0.0.06, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 8
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a8struct.ap_int<64>"([8 x i64]* noalias nocapture align 512 "unpacked"="0.0.0.0", [8 x %"struct.ap_int<64>"]* noalias readonly "unpacked"="1") unnamed_addr #2 {
entry:
  %2 = icmp eq [8 x %"struct.ap_int<64>"]* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [8 x %"struct.ap_int<64>"], [8 x %"struct.ap_int<64>"]* %1, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [8 x i64], [8 x i64]* %0, i64 0, i64 %for.loop.idx1
  %3 = load i64, i64* %src.addr.0.0.05, align 8
  store i64 %3, i64* %dst.addr.0.0.06, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 8
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a5a6struct.ap_int<32>.29"([5 x [6 x i32]]* noalias align 512, [5 x [6 x %"struct.ap_int<32>"]]* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq [5 x [6 x i32]]* %0, null
  %3 = icmp eq [5 x [6 x %"struct.ap_int<32>"]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx16 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx315 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %src.addr6.0.0.013 = getelementptr [5 x [6 x %"struct.ap_int<32>"]], [5 x [6 x %"struct.ap_int<32>"]]* %1, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315, i32 0, i32 0, i32 0
  %5 = getelementptr [5 x [6 x i32]], [5 x [6 x i32]]* %0, i64 0, i64 %for.loop.idx16, i64 %for.loop.idx315
  %6 = load i32, i32* %src.addr6.0.0.013, align 4
  store i32 %6, i32* %5, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx315, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 6
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx16, 1
  %exitcond17 = icmp ne i64 %for.loop.idx.next, 5
  br i1 %exitcond17, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

declare void @apatb_ellipse_solver_hw(i64*, [6 x i32]*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([8 x %"struct.ap_int<64>"]* noalias "unpacked"="0", [8 x i64]* noalias nocapture readonly align 512 "unpacked"="1.0.0.0", [5 x [6 x %"struct.ap_int<32>"]]* noalias "unpacked"="2", [5 x [6 x i32]]* noalias readonly align 512 "unpacked"="3") unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a8struct.ap_int<64>.5"([8 x %"struct.ap_int<64>"]* %0, [8 x i64]* align 512 %1)
  call fastcc void @"onebyonecpy_hls.p0a5a6struct.ap_int<32>"([5 x [6 x %"struct.ap_int<32>"]]* %2, [5 x [6 x i32]]* align 512 %3)
  ret void
}

define void @ellipse_solver_hw_stub_wrapper(i64*, [6 x i32]*) #4 {
entry:
  %2 = alloca [8 x %"struct.ap_int<64>"]
  %3 = alloca [5 x [6 x %"struct.ap_int<32>"]]
  %4 = bitcast i64* %0 to [8 x i64]*
  %5 = bitcast [6 x i32]* %1 to [5 x [6 x i32]]*
  call void @copy_out([8 x %"struct.ap_int<64>"]* %2, [8 x i64]* %4, [5 x [6 x %"struct.ap_int<32>"]]* %3, [5 x [6 x i32]]* %5)
  %6 = bitcast [8 x %"struct.ap_int<64>"]* %2 to %"struct.ap_int<64>"*
  %7 = bitcast [5 x [6 x %"struct.ap_int<32>"]]* %3 to [6 x %"struct.ap_int<32>"]*
  call void @ellipse_solver_hw_stub(%"struct.ap_int<64>"* %6, [6 x %"struct.ap_int<32>"]* %7)
  call void @copy_in([8 x %"struct.ap_int<64>"]* %2, [8 x i64]* %4, [5 x [6 x %"struct.ap_int<32>"]]* %3, [5 x [6 x i32]]* %5)
  ret void
}

declare void @ellipse_solver_hw_stub(%"struct.ap_int<64>"*, [6 x %"struct.ap_int<32>"]*)

attributes #0 = { inaccessiblemem_or_argmemonly noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
