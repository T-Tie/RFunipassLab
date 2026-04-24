; ModuleID = '<stdin>'
source_filename = "/tmp/tmpv_xik7mi.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%d\0A%d\0A%d\0A%d\0A%d\0A%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %n.promoted = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %if.end35, %entry
  %.pr1631 = phi i32 [ %n.promoted, %entry ], [ %.pr1632, %if.end35 ]
  %a100.0 = phi i32 [ 0, %entry ], [ %a100.2, %if.end35 ]
  %a50.0 = phi i32 [ 0, %entry ], [ %a50.2, %if.end35 ]
  %a20.0 = phi i32 [ 0, %entry ], [ %a20.4, %if.end35 ]
  %a10.0 = phi i32 [ 0, %entry ], [ %a10.2, %if.end35 ]
  %a5.0 = phi i32 [ 0, %entry ], [ %a5.3, %if.end35 ]
  %a1.0 = phi i32 [ 0, %entry ], [ %a1.1, %if.end35 ]
  %cmp.not = icmp eq i32 %.pr1631, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %cmp1 = icmp sgt i32 %.pr1631, 99
  br i1 %cmp1, label %if.end, label %land.lhs.true

if.end:                                           ; preds = %for.body
  %add = add nsw i32 %a100.0, 1
  %sub = add nsw i32 %.pr1631, -100
  store i32 %sub, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp samesign ult i32 %sub, 100
  br i1 %cmp2, label %land.lhs.true, label %if.end35

land.lhs.true:                                    ; preds = %for.body, %if.end
  %.pr1630 = phi i32 [ %sub, %if.end ], [ %.pr1631, %for.body ]
  %a100.1 = phi i32 [ %add, %if.end ], [ %a100.0, %for.body ]
  %cmp3 = icmp sgt i32 %.pr1630, 49
  br i1 %cmp3, label %if.then4, label %land.lhs.true9

if.then4:                                         ; preds = %land.lhs.true
  %add5 = add nsw i32 %a50.0, 1
  %sub6 = add nsw i32 %.pr1630, -50
  store i32 %sub6, ptr %n, align 4, !tbaa !5
  br label %land.lhs.true9

land.lhs.true9:                                   ; preds = %if.then4, %land.lhs.true
  %.pr1629 = phi i32 [ %sub6, %if.then4 ], [ %.pr1630, %land.lhs.true ]
  %a50.1 = phi i32 [ %add5, %if.then4 ], [ %a50.0, %land.lhs.true ]
  %cmp10 = icmp sgt i32 %.pr1629, 19
  br i1 %cmp10, label %if.end14, label %land.lhs.true16

if.end14:                                         ; preds = %land.lhs.true9
  %add12 = add nsw i32 %a20.0, 1
  %sub13 = add nsw i32 %.pr1629, -20
  store i32 %sub13, ptr %n, align 4, !tbaa !5
  %cmp15 = icmp samesign ult i32 %sub13, 20
  br i1 %cmp15, label %land.lhs.true16, label %if.end35

land.lhs.true16:                                  ; preds = %if.end14, %land.lhs.true9
  %.pr1627 = phi i32 [ %.pr1629, %land.lhs.true9 ], [ %sub13, %if.end14 ]
  %a20.2 = phi i32 [ %a20.0, %land.lhs.true9 ], [ %add12, %if.end14 ]
  %cmp17 = icmp sgt i32 %.pr1627, 9
  %sub20 = add nsw i32 %.pr1627, -10
  %.pr1625.ph = select i1 %cmp17, i32 %sub20, i32 %.pr1627
  %add19 = zext i1 %cmp17 to i32
  %a10.1.ph = add nsw i32 %a10.0, %add19
  %cmp24 = icmp sgt i32 %.pr1625.ph, 4
  %sub27 = add nsw i32 %.pr1625.ph, -5
  %.pr1624 = select i1 %cmp24, i32 %sub27, i32 %.pr1625.ph
  %add26 = zext i1 %cmp24 to i32
  %a5.2 = add nsw i32 %a5.0, %add26
  %0 = or i1 %cmp17, %cmp24
  %cmp31 = icmp sgt i32 %.pr1624, 0
  %sub34 = sext i1 %cmp31 to i32
  %.pr1632.ph = add nsw i32 %.pr1624, %sub34
  %add33 = zext i1 %cmp31 to i32
  %a1.1.ph = add nsw i32 %a1.0, %add33
  %1 = or i1 %0, %cmp31
  br i1 %1, label %2, label %if.end35

2:                                                ; preds = %land.lhs.true16
  store i32 %.pr1632.ph, ptr %n, align 4, !tbaa !5
  br label %if.end35

if.end35:                                         ; preds = %2, %land.lhs.true16, %if.end14, %if.end
  %.pr1632 = phi i32 [ %sub, %if.end ], [ %sub13, %if.end14 ], [ %.pr1632.ph, %land.lhs.true16 ], [ %.pr1632.ph, %2 ]
  %a100.2 = phi i32 [ %add, %if.end ], [ %a100.1, %if.end14 ], [ %a100.1, %land.lhs.true16 ], [ %a100.1, %2 ]
  %a50.2 = phi i32 [ %a50.0, %if.end ], [ %a50.1, %if.end14 ], [ %a50.1, %land.lhs.true16 ], [ %a50.1, %2 ]
  %a20.4 = phi i32 [ %a20.0, %if.end ], [ %add12, %if.end14 ], [ %a20.2, %land.lhs.true16 ], [ %a20.2, %2 ]
  %a10.2 = phi i32 [ %a10.0, %if.end ], [ %a10.0, %if.end14 ], [ %a10.1.ph, %land.lhs.true16 ], [ %a10.1.ph, %2 ]
  %a5.3 = phi i32 [ %a5.0, %if.end ], [ %a5.0, %if.end14 ], [ %a5.2, %land.lhs.true16 ], [ %a5.2, %2 ]
  %a1.1 = phi i32 [ %a1.0, %if.end ], [ %a1.0, %if.end14 ], [ %a1.1.ph, %land.lhs.true16 ], [ %a1.1.ph, %2 ]
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call36 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %a100.0, i32 noundef %a50.0, i32 noundef %a20.0, i32 noundef %a10.0, i32 noundef %a5.0, i32 noundef %a1.0)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
