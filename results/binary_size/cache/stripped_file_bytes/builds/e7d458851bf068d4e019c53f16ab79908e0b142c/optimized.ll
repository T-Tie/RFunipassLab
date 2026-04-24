; ModuleID = '<stdin>'
source_filename = "/tmp/tmpmb9mdf78.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@a = dso_local global [25 x i32] zeroinitializer, align 16
@num = dso_local local_unnamed_addr global [25 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  br label %for.cond2

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [25 x i32], ptr @a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc8
  %indvars.iv13 = phi i64 [ %indvars.iv.next14, %for.inc8 ], [ %indvars.iv, %for.cond2.preheader ]
  %cmp3 = icmp sgt i64 %indvars.iv13, 0
  br i1 %cmp3, label %for.inc8, label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %for.cond2
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond11

for.inc8:                                         ; preds = %for.cond2
  %indvars.iv.next14 = add nsw i64 %indvars.iv13, -1
  %2 = trunc nsw i64 %indvars.iv.next14 to i32
  %call5 = call noundef i32 @_Z6searchii(i32 noundef %2, i32 noundef %0) #7
  %add = add nuw nsw i32 %call5, 1
  %arrayidx7 = getelementptr inbounds nuw [25 x i32], ptr @num, i64 0, i64 %indvars.iv.next14
  store i32 %add, ptr %arrayidx7, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !12

for.cond11:                                       ; preds = %for.cond11.preheader, %for.body13
  %indvars.iv16 = phi i64 [ 0, %for.cond11.preheader ], [ %indvars.iv.next17, %for.body13 ]
  %k.0 = phi i32 [ 0, %for.cond11.preheader ], [ %spec.select, %for.body13 ]
  %exitcond.not = icmp eq i64 %indvars.iv16, %wide.trip.count
  br i1 %exitcond.not, label %for.end21, label %for.body13

for.body13:                                       ; preds = %for.cond11
  %arrayidx15 = getelementptr inbounds nuw [25 x i32], ptr @num, i64 0, i64 %indvars.iv16
  %3 = load i32, ptr %arrayidx15, align 4, !tbaa !5, !invariant.load !13
  %spec.select = call i32 @llvm.smax.i32(i32 %3, i32 %k.0)
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond11, !llvm.loop !14

for.end21:                                        ; preds = %for.cond11
  %call22 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %k.0) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef range(i32 0, -2147483648) i32 @_Z6searchii(i32 noundef %i, i32 noundef %n) local_unnamed_addr #3 {
entry:
  %idxprom1 = sext i32 %i to i64
  %arrayidx2 = getelementptr inbounds [25 x i32], ptr @a, i64 0, i64 %idxprom1
  %0 = sext i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %idxprom1, %entry ]
  %q.0 = phi i32 [ %q.1, %for.inc ], [ 0, %entry ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %cmp = icmp slt i64 %indvars.iv.next, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [25 x i32], ptr @a, i64 0, i64 %indvars.iv.next
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !13
  %2 = load i32, ptr %arrayidx2, align 4, !tbaa !5, !invariant.load !13
  %cmp3.not = icmp sgt i32 %1, %2
  br i1 %cmp3.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %arrayidx5 = getelementptr inbounds [25 x i32], ptr @num, i64 0, i64 %indvars.iv.next
  %3 = load i32, ptr %arrayidx5, align 4, !tbaa !5, !invariant.load !13
  %spec.select = tail call i32 @llvm.smax.i32(i32 %q.0, i32 %3)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body
  %q.1 = phi i32 [ %q.0, %for.body ], [ %spec.select, %if.then ]
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  ret i32 %q.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind willreturn }
attributes #7 = { nounwind }

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
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
