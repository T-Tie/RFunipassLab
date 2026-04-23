; ModuleID = '<stdin>'
source_filename = "/tmp/tmpug1d26gk.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %a) #5
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %for.end31, %entry
  %h.0.ph = phi i32 [ %h.1, %for.end31 ], [ undef, %entry ]
  br label %for.cond

for.cond:                                         ; preds = %while.cond.outer, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %while.cond.outer ]
  %exitcond.not = icmp eq i64 %indvars.iv, 16
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  switch i32 %0, label %for.inc [
    i32 -1, label %while.end
    i32 0, label %for.end.split.loop.exit
  ], !llvm.loop !9

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !12

for.end.split.loop.exit:                          ; preds = %for.body
  %1 = trunc nuw nsw i64 %indvars.iv to i32
  br label %for.end

for.end:                                          ; preds = %for.cond, %for.end.split.loop.exit
  %h.1 = phi i32 [ %1, %for.end.split.loop.exit ], [ %h.0.ph, %for.cond ]
  %smax = call i32 @llvm.smax.i32(i32 %h.1, i32 0)
  %wide.trip.count27 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %h.1 to i64
  br label %for.cond12

for.cond12:                                       ; preds = %for.end, %for.inc29
  %indvars.iv24 = phi i64 [ 0, %for.end ], [ %indvars.iv.next25, %for.inc29 ]
  %t.2 = phi i32 [ 0, %for.end ], [ %t.3, %for.inc29 ]
  %exitcond28.not = icmp eq i64 %indvars.iv24, %wide.trip.count27
  br i1 %exitcond28.not, label %for.end31, label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.cond12
  %arrayidx19 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv24
  br label %for.cond15

for.cond15:                                       ; preds = %for.cond15.preheader, %for.body17
  %indvars.iv20 = phi i64 [ 0, %for.cond15.preheader ], [ %indvars.iv.next21, %for.body17 ]
  %t.3 = phi i32 [ %t.2, %for.cond15.preheader ], [ %spec.select, %for.body17 ]
  %exitcond23.not = icmp eq i64 %indvars.iv20, %wide.trip.count
  br i1 %exitcond23.not, label %for.inc29, label %for.body17

for.body17:                                       ; preds = %for.cond15
  %2 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %arrayidx21 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv20
  %3 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %mul = shl nsw i32 %3, 1
  %cmp22 = icmp eq i32 %2, %mul
  %inc24 = zext i1 %cmp22 to i32
  %spec.select = add nsw i32 %t.3, %inc24
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  br label %for.cond15, !llvm.loop !13

for.inc29:                                        ; preds = %for.cond15
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  br label %for.cond12, !llvm.loop !14

for.end31:                                        ; preds = %for.cond12
  %call32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %t.2)
  br label %while.cond.outer, !llvm.loop !9

while.end:                                        ; preds = %for.body
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
