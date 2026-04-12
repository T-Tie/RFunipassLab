; ModuleID = '<stdin>'
source_filename = "/tmp/tmpn91thcjx.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%d\0A%d\0A%d\0A%d\0A%d\0A%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %.pr = load i32, ptr %n, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %.pr6 = phi i32 [ %sub, %while.body ], [ %.pr, %entry ]
  %a.0 = phi i32 [ %inc, %while.body ], [ 0, %entry ]
  %cmp = icmp sgt i32 %.pr6, 99
  br i1 %cmp, label %while.body, label %while.cond1.preheader

while.cond1.preheader:                            ; preds = %while.cond
  br label %while.cond1

while.body:                                       ; preds = %while.cond
  %inc = add nuw nsw i32 %a.0, 1
  %sub = add nsw i32 %.pr6, -100
  store i32 %sub, ptr %n, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !9

while.cond1:                                      ; preds = %while.cond1.preheader, %while.body4
  %.pr7 = phi i32 [ %0, %while.body4 ], [ %.pr6, %while.cond1.preheader ]
  %b.0 = phi i32 [ %inc5, %while.body4 ], [ 0, %while.cond1.preheader ]
  %0 = add i32 %.pr7, -50
  %or.cond = icmp ult i32 %0, 50
  br i1 %or.cond, label %while.body4, label %while.cond8.preheader

while.cond8.preheader:                            ; preds = %while.cond1
  br label %while.cond8

while.body4:                                      ; preds = %while.cond1
  %inc5 = add nuw nsw i32 %b.0, 1
  store i32 %0, ptr %n, align 4, !tbaa !5
  br label %while.cond1, !llvm.loop !12

while.cond8:                                      ; preds = %while.cond8.preheader, %while.body13
  %.pr8 = phi i32 [ %1, %while.body13 ], [ %.pr7, %while.cond8.preheader ]
  %c.0 = phi i32 [ %inc14, %while.body13 ], [ 0, %while.cond8.preheader ]
  %1 = add i32 %.pr8, -20
  %or.cond13 = icmp ult i32 %1, 30
  br i1 %or.cond13, label %while.body13, label %while.cond17.preheader

while.cond17.preheader:                           ; preds = %while.cond8
  br label %while.cond17

while.body13:                                     ; preds = %while.cond8
  %inc14 = add nuw nsw i32 %c.0, 1
  store i32 %1, ptr %n, align 4, !tbaa !5
  br label %while.cond8, !llvm.loop !13

while.cond17:                                     ; preds = %while.cond17.preheader, %while.body22
  %.pr9 = phi i32 [ %2, %while.body22 ], [ %.pr8, %while.cond17.preheader ]
  %d.0 = phi i32 [ %inc23, %while.body22 ], [ 0, %while.cond17.preheader ]
  %2 = add i32 %.pr9, -10
  %or.cond14 = icmp ult i32 %2, 10
  br i1 %or.cond14, label %while.body22, label %land.end30.preheader

land.end30.preheader:                             ; preds = %while.cond17
  br label %land.end30

while.body22:                                     ; preds = %while.cond17
  %inc23 = add nuw nsw i32 %d.0, 1
  store i32 %2, ptr %n, align 4, !tbaa !5
  br label %while.cond17, !llvm.loop !14

land.end30:                                       ; preds = %land.end30.preheader, %while.body31
  %3 = phi i32 [ %sub33, %while.body31 ], [ %.pr9, %land.end30.preheader ]
  %e.0 = phi i32 [ %inc32, %while.body31 ], [ 0, %land.end30.preheader ]
  %cmp29 = icmp sgt i32 %3, 4
  br i1 %cmp29, label %while.body31, label %while.end41

while.body31:                                     ; preds = %land.end30
  %inc32 = add nuw nsw i32 %e.0, 1
  %sub33 = add nsw i32 %3, -5
  store i32 %sub33, ptr %n, align 4, !tbaa !5
  br label %land.end30, !llvm.loop !15

while.end41:                                      ; preds = %land.end30
  %spec.select = call i32 @llvm.smax.i32(i32 %3, i32 noundef 0)
  %call42 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %a.0, i32 noundef %b.0, i32 noundef %c.0, i32 noundef %d.0, i32 noundef %e.0, i32 noundef %spec.select)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

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
