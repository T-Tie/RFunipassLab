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
  %.pr32.pr82 = phi i32 [ %n.promoted, %entry ], [ %.pr32.pr83, %if.end35 ]
  %a100.0 = phi i32 [ 0, %entry ], [ %a100.11116304057, %if.end35 ]
  %a50.0 = phi i32 [ 0, %entry ], [ %a50.118294255, %if.end35 ]
  %a20.0 = phi i32 [ 0, %entry ], [ %a20.1313859, %if.end35 ]
  %a10.0 = phi i32 [ 0, %entry ], [ %a10.14453, %if.end35 ]
  %a5.0 = phi i32 [ 0, %entry ], [ %a5.161, %if.end35 ]
  %a1.0 = phi i32 [ 0, %entry ], [ %a1.1, %if.end35 ]
  %cmp.not = icmp eq i32 %.pr32.pr82, 0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %cmp1 = icmp sgt i32 %.pr32.pr82, 99
  br i1 %cmp1, label %if.end, label %land.lhs.true

if.end:                                           ; preds = %for.body
  %add = add nsw i32 %a100.0, 1
  %sub = add nsw i32 %.pr32.pr82, -100
  store i32 %sub, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp samesign ult i32 %sub, 100
  br i1 %cmp2, label %land.lhs.true, label %if.end35

land.lhs.true:                                    ; preds = %for.body, %if.end
  %.pr32.pr81 = phi i32 [ %sub, %if.end ], [ %.pr32.pr82, %for.body ]
  %a100.112 = phi i32 [ %add, %if.end ], [ %a100.0, %for.body ]
  %cmp3 = icmp sgt i32 %.pr32.pr81, 49
  %sub6 = add nsw i32 %.pr32.pr81, -50
  %.pr32.pr80 = select i1 %cmp3, i32 %sub6, i32 %.pr32.pr81
  %add5 = zext i1 %cmp3 to i32
  %a50.119 = add nsw i32 %a50.0, %add5
  %cmp10 = icmp sgt i32 %.pr32.pr80, 19
  %sub13 = add nsw i32 %.pr32.pr80, -20
  %.pr32.pr86 = select i1 %cmp10, i32 %sub13, i32 %.pr32.pr80
  %add12 = zext i1 %cmp10 to i32
  %a20.1 = add nsw i32 %a20.0, %add12
  %0 = or i1 %cmp3, %cmp10
  br i1 %0, label %1, label %2

1:                                                ; preds = %land.lhs.true
  store i32 %.pr32.pr86, ptr %n, align 4, !tbaa !5
  br label %2

2:                                                ; preds = %land.lhs.true, %1
  %3 = add i32 %.pr32.pr86, -10
  %or.cond = icmp ult i32 %3, 10
  br i1 %or.cond, label %if.end21.thread, label %if.end21

if.end21.thread:                                  ; preds = %2
  %add19 = add nsw i32 %a10.0, 1
  store i32 %3, ptr %n, align 4, !tbaa !5
  br label %land.lhs.true23

if.end21:                                         ; preds = %2
  %cmp22 = icmp slt i32 %.pr32.pr86, 10
  br i1 %cmp22, label %land.lhs.true23, label %if.end35

land.lhs.true23:                                  ; preds = %if.end21.thread, %if.end21
  %.pr32.pr85 = phi i32 [ %3, %if.end21.thread ], [ %.pr32.pr86, %if.end21 ]
  %a10.145 = phi i32 [ %add19, %if.end21.thread ], [ %a10.0, %if.end21 ]
  %cmp24 = icmp sgt i32 %.pr32.pr85, 4
  %sub27 = add nsw i32 %.pr32.pr85, -5
  %.pr32.pr84 = select i1 %cmp24, i32 %sub27, i32 %.pr32.pr85
  %add26 = zext i1 %cmp24 to i32
  %a5.162 = add nsw i32 %a5.0, %add26
  %cmp31 = icmp sgt i32 %.pr32.pr84, 0
  %sub34 = sext i1 %cmp31 to i32
  %.pr32.pr83.ph = add nsw i32 %.pr32.pr84, %sub34
  %add33 = zext i1 %cmp31 to i32
  %a1.1.ph = add nsw i32 %a1.0, %add33
  %4 = or i1 %cmp24, %cmp31
  br i1 %4, label %5, label %if.end35

5:                                                ; preds = %land.lhs.true23
  store i32 %.pr32.pr83.ph, ptr %n, align 4, !tbaa !5
  br label %if.end35

if.end35:                                         ; preds = %5, %land.lhs.true23, %if.end, %if.end21
  %.pr32.pr83 = phi i32 [ %.pr32.pr86, %if.end21 ], [ %sub, %if.end ], [ %.pr32.pr83.ph, %land.lhs.true23 ], [ %.pr32.pr83.ph, %5 ]
  %a5.161 = phi i32 [ %a5.0, %if.end21 ], [ %a5.0, %if.end ], [ %a5.162, %land.lhs.true23 ], [ %a5.162, %5 ]
  %a20.1313859 = phi i32 [ %a20.1, %if.end21 ], [ %a20.0, %if.end ], [ %a20.1, %land.lhs.true23 ], [ %a20.1, %5 ]
  %a100.11116304057 = phi i32 [ %a100.112, %if.end21 ], [ %add, %if.end ], [ %a100.112, %land.lhs.true23 ], [ %a100.112, %5 ]
  %a50.118294255 = phi i32 [ %a50.119, %if.end21 ], [ %a50.0, %if.end ], [ %a50.119, %land.lhs.true23 ], [ %a50.119, %5 ]
  %a10.14453 = phi i32 [ %a10.0, %if.end21 ], [ %a10.0, %if.end ], [ %a10.145, %land.lhs.true23 ], [ %a10.145, %5 ]
  %a1.1 = phi i32 [ %a1.0, %if.end21 ], [ %a1.0, %if.end ], [ %a1.1.ph, %land.lhs.true23 ], [ %a1.1.ph, %5 ]
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
