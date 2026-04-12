; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_3po7eml.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z4findPiii(ptr noundef readonly captures(none) %x, i32 noundef %y, i32 noundef %z) local_unnamed_addr #0 {
entry:
  %smax = tail call i32 @llvm.smax.i32(i32 %y, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %count.0 = phi i32 [ %spec.select, %for.body ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.cond
  ret i32 %count.0

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i32, ptr %x, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %0, %z
  %inc = zext i1 %cmp1 to i32
  %spec.select = add nuw nsw i32 %count.0, %inc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z5countPii(ptr noundef readonly captures(none) %x, i32 noundef %y) local_unnamed_addr #0 {
entry:
  %smax.i = tail call i32 @llvm.smax.i32(i32 %y, i32 0)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  br label %for.cond

for.cond:                                         ; preds = %_Z4findPiii.exit, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %_Z4findPiii.exit ], [ 0, %entry ]
  %count1.0 = phi i32 [ %add, %_Z4findPiii.exit ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count.i
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.cond
  ret i32 %count1.0

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i32, ptr %x, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %mul = shl nsw i32 %0, 1
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %for.body
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %for.body ]
  %count.0.i = phi i32 [ %spec.select.i, %for.body.i ], [ 0, %for.body ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Z4findPiii.exit, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr inbounds nuw i32, ptr %x, i64 %indvars.iv.i
  %1 = load i32, ptr %arrayidx.i, align 4, !tbaa !5
  %cmp1.i = icmp eq i32 %1, %mul
  %inc.i = zext i1 %cmp1.i to i32
  %spec.select.i = add nuw nsw i32 %count.0.i, %inc.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond.i, !llvm.loop !9

_Z4findPiii.exit:                                 ; preds = %for.cond.i
  %add = add nuw nsw i32 %count.0.i, %count1.0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !12
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %temp = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %temp) #6
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %call14 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %temp)
  %0 = load i32, ptr %temp, align 16, !tbaa !5
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %while.end15, label %while.cond3

while.cond3:                                      ; preds = %while.cond, %while.body7
  %1 = phi i32 [ %.pre, %while.body7 ], [ %0, %while.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body7 ], [ 0, %while.cond ]
  %cmp6.not = icmp eq i32 %1, 0
  br i1 %cmp6.not, label %while.end, label %while.body7

while.body7:                                      ; preds = %while.cond3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx9 = getelementptr inbounds nuw [16 x i32], ptr %temp, i64 0, i64 %indvars.iv.next
  %call10 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx9)
  %.pre = load i32, ptr %arrayidx9, align 4, !tbaa !5
  br label %while.cond3, !llvm.loop !13

while.end:                                        ; preds = %while.cond3
  %2 = trunc nuw nsw i64 %indvars.iv to i32
  %call11 = call noundef i32 @_Z5countPii(ptr noundef nonnull %temp, i32 noundef %2)
  %call12 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %call11)
  br label %while.cond, !llvm.loop !14

while.end15:                                      ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %temp) #6
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
