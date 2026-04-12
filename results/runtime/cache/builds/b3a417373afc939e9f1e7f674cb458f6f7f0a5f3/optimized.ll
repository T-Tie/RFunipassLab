; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9r_nvz2m.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %A = alloca [20000 x i32], align 16
  %B = alloca [20000 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 80000, ptr noundef nonnull align 16 %A) #4
  call void @llvm.lifetime.start.p0(i64 noundef 80000, ptr noundef nonnull align 16 %B) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count14 = zext nneg i32 %smax to i64
  br label %for.cond2

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [20000 x i32], ptr %A, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc24
  %indvars.iv10 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next11, %for.inc24 ]
  %j.0 = phi i32 [ 0, %for.cond2.preheader ], [ %j.1, %for.inc24 ]
  %number.0 = phi i32 [ 0, %for.cond2.preheader ], [ %number.1, %for.inc24 ]
  %exitcond15.not = icmp eq i64 %indvars.iv10, %wide.trip.count14
  br i1 %exitcond15.not, label %for.cond27.preheader, label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.cond2
  %arrayidx11 = getelementptr inbounds nuw [20000 x i32], ptr %A, i64 0, i64 %indvars.iv10
  br label %for.cond5

for.cond27.preheader:                             ; preds = %for.cond2
  %smax20 = call i32 @llvm.smax.i32(i32 %number.0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax20 to i64
  %2 = load i32, ptr %B, align 16
  br label %for.cond27

for.cond5:                                        ; preds = %for.body7, %for.cond5.preheader
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.body7 ], [ 0, %for.cond5.preheader ]
  %exitcond.not = icmp eq i64 %indvars.iv7, %indvars.iv10
  br i1 %exitcond.not, label %if.then17, label %for.body7

for.body7:                                        ; preds = %for.cond5
  %arrayidx9 = getelementptr inbounds nuw [20000 x i32], ptr %A, i64 0, i64 %indvars.iv7
  %3 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %4 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %3, %4
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br i1 %cmp12, label %for.inc24, label %for.cond5, !llvm.loop !12

if.then17:                                        ; preds = %for.cond5
  %5 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %idxprom20 = sext i32 %j.0 to i64
  %arrayidx21 = getelementptr inbounds [20000 x i32], ptr %B, i64 0, i64 %idxprom20
  store i32 %5, ptr %arrayidx21, align 4, !tbaa !5
  %add = add nsw i32 %number.0, 1
  %add22 = add nsw i32 %j.0, 1
  br label %for.inc24

for.inc24:                                        ; preds = %for.body7, %if.then17
  %j.1 = phi i32 [ %add22, %if.then17 ], [ %j.0, %for.body7 ]
  %number.1 = phi i32 [ %add, %if.then17 ], [ %number.0, %for.body7 ]
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %for.cond2, !llvm.loop !13

for.cond27:                                       ; preds = %for.cond27.preheader, %for.inc39
  %indvars.iv16 = phi i64 [ 0, %for.cond27.preheader ], [ %indvars.iv.next17, %for.inc39 ]
  %exitcond21.not = icmp eq i64 %indvars.iv16, %wide.trip.count
  br i1 %exitcond21.not, label %for.end41, label %for.body29

for.body29:                                       ; preds = %for.cond27
  %cmp30 = icmp eq i64 %indvars.iv16, 0
  br i1 %cmp30, label %if.then31, label %if.else

if.then31:                                        ; preds = %for.body29
  %call34 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %2)
  br label %for.inc39

if.else:                                          ; preds = %for.body29
  %arrayidx36 = getelementptr inbounds nuw [20000 x i32], ptr %B, i64 0, i64 %indvars.iv16
  %6 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  %call37 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %6)
  br label %for.inc39

for.inc39:                                        ; preds = %if.then31, %if.else
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond27, !llvm.loop !14

for.end41:                                        ; preds = %for.cond27
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 noundef 80000, ptr noundef nonnull %B) #5
  call void @llvm.lifetime.end.p0(i64 noundef 80000, ptr noundef nonnull %A) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind willreturn }
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
