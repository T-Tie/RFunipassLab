; ModuleID = '<stdin>'
source_filename = "/tmp/tmpn91thcjx.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%d\0A%d\0A%d\0A%d\0A%d\0A%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %a.0 = phi i32 [ 0, %entry ], [ %inc, %while.body ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sge i32 %0, 100
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %inc = add nsw i32 %a.0, 1
  %sub = sub nsw i32 %0, 100
  store i32 %sub, ptr %n, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %while.body4, %while.end
  %b.0 = phi i32 [ 0, %while.end ], [ %inc5, %while.body4 ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %1, 100
  br i1 %cmp2, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond1
  %cmp3 = icmp sge i32 %1, 50
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond1
  %2 = phi i1 [ false, %while.cond1 ], [ %cmp3, %land.rhs ]
  br i1 %2, label %while.body4, label %while.end7

while.body4:                                      ; preds = %land.end
  %inc5 = add nsw i32 %b.0, 1
  %sub6 = sub nsw i32 %1, 50
  store i32 %sub6, ptr %n, align 4, !tbaa !5
  br label %while.cond1, !llvm.loop !12

while.end7:                                       ; preds = %land.end
  br label %while.cond8

while.cond8:                                      ; preds = %while.body13, %while.end7
  %c.0 = phi i32 [ 0, %while.end7 ], [ %inc14, %while.body13 ]
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %3, 50
  br i1 %cmp9, label %land.rhs10, label %land.end12

land.rhs10:                                       ; preds = %while.cond8
  %cmp11 = icmp sge i32 %3, 20
  br label %land.end12

land.end12:                                       ; preds = %land.rhs10, %while.cond8
  %4 = phi i1 [ false, %while.cond8 ], [ %cmp11, %land.rhs10 ]
  br i1 %4, label %while.body13, label %while.end16

while.body13:                                     ; preds = %land.end12
  %inc14 = add nsw i32 %c.0, 1
  %sub15 = sub nsw i32 %3, 20
  store i32 %sub15, ptr %n, align 4, !tbaa !5
  br label %while.cond8, !llvm.loop !13

while.end16:                                      ; preds = %land.end12
  br label %while.cond17

while.cond17:                                     ; preds = %while.body22, %while.end16
  %d.0 = phi i32 [ 0, %while.end16 ], [ %inc23, %while.body22 ]
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %5, 20
  br i1 %cmp18, label %land.rhs19, label %land.end21

land.rhs19:                                       ; preds = %while.cond17
  %cmp20 = icmp sge i32 %5, 10
  br label %land.end21

land.end21:                                       ; preds = %land.rhs19, %while.cond17
  %6 = phi i1 [ false, %while.cond17 ], [ %cmp20, %land.rhs19 ]
  br i1 %6, label %while.body22, label %while.end25

while.body22:                                     ; preds = %land.end21
  %inc23 = add nsw i32 %d.0, 1
  %sub24 = sub nsw i32 %5, 10
  store i32 %sub24, ptr %n, align 4, !tbaa !5
  br label %while.cond17, !llvm.loop !14

while.end25:                                      ; preds = %land.end21
  br label %while.cond26

while.cond26:                                     ; preds = %while.body31, %while.end25
  %e.0 = phi i32 [ 0, %while.end25 ], [ %inc32, %while.body31 ]
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %cmp27 = icmp slt i32 %7, 10
  br i1 %cmp27, label %land.rhs28, label %land.end30

land.rhs28:                                       ; preds = %while.cond26
  %cmp29 = icmp sge i32 %7, 5
  br label %land.end30

land.end30:                                       ; preds = %land.rhs28, %while.cond26
  %8 = phi i1 [ false, %while.cond26 ], [ %cmp29, %land.rhs28 ]
  br i1 %8, label %while.body31, label %while.end34

while.body31:                                     ; preds = %land.end30
  %inc32 = add nsw i32 %e.0, 1
  %sub33 = sub nsw i32 %7, 5
  store i32 %sub33, ptr %n, align 4, !tbaa !5
  br label %while.cond26, !llvm.loop !15

while.end34:                                      ; preds = %land.end30
  br label %while.cond35

while.cond35:                                     ; preds = %while.end34
  %cmp36 = icmp sgt i32 %7, 0
  br i1 %cmp36, label %land.rhs37, label %land.end39

land.rhs37:                                       ; preds = %while.cond35
  %cmp38 = icmp slt i32 %7, 5
  br label %land.end39

land.end39:                                       ; preds = %land.rhs37, %while.cond35
  %9 = phi i1 [ false, %while.cond35 ], [ %cmp38, %land.rhs37 ]
  br i1 %9, label %while.body40, label %while.end41

while.body40:                                     ; preds = %land.end39
  br label %while.end41

while.end41:                                      ; preds = %while.body40, %land.end39
  %f.0 = phi i32 [ %7, %while.body40 ], [ 0, %land.end39 ]
  %call42 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %a.0, i32 noundef %b.0, i32 noundef %c.0, i32 noundef %d.0, i32 noundef %e.0, i32 noundef %f.0)
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
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
attributes #3 = { nounwind }

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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
