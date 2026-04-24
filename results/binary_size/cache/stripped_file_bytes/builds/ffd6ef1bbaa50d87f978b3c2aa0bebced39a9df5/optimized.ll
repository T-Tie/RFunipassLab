; ModuleID = '<stdin>'
source_filename = "/tmp/tmprz5ozuyh.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %s = alloca [2 x [501 x i8]], align 16
  %n = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 1002, ptr nonnull %s) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %s, i64 501
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %s, ptr noundef nonnull %arrayidx1)
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #7
  %conv = trunc i64 %call6 to i32
  %call9 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx1) #7
  %conv10 = trunc i64 %call9 to i32
  %cmp.not = icmp eq i32 %conv, %conv10
  br i1 %cmp.not, label %for.cond.preheader, label %cleanup

for.cond.preheader:                               ; preds = %entry
  %smax = call i32 @llvm.smax.i32(i32 %conv, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.inc44
  %indvars.iv20 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next21, %for.inc44 ]
  %exitcond23.not = icmp eq i64 %indvars.iv20, 2
  br i1 %exitcond23.not, label %for.cond47.preheader, label %for.cond13

for.cond47.preheader:                             ; preds = %for.cond
  %wide.trip.count27 = zext nneg i32 %smax to i64
  br label %for.cond47

for.cond13:                                       ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc44, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %arrayidx18 = getelementptr inbounds nuw [2 x [501 x i8]], ptr %s, i64 0, i64 %indvars.iv20, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx18, align 1, !tbaa !5
  switch i8 %0, label %cleanup [
    i8 65, label %for.inc
    i8 84, label %for.inc
    i8 71, label %for.inc
    i8 67, label %for.inc
  ]

for.inc:                                          ; preds = %for.body15, %for.body15, %for.body15, %for.body15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond13, !llvm.loop !8

for.inc44:                                        ; preds = %for.cond13
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  br label %for.cond, !llvm.loop !11

for.cond47:                                       ; preds = %for.cond47.preheader, %for.body49
  %indvars.iv24 = phi i64 [ 0, %for.cond47.preheader ], [ %indvars.iv.next25, %for.body49 ]
  %sum.0 = phi double [ 0.000000e+00, %for.cond47.preheader ], [ %sum.1, %for.body49 ]
  %exitcond28.not = icmp eq i64 %indvars.iv24, %wide.trip.count27
  br i1 %exitcond28.not, label %for.end63, label %for.body49

for.body49:                                       ; preds = %for.cond47
  %arrayidx52 = getelementptr inbounds nuw [501 x i8], ptr %s, i64 0, i64 %indvars.iv24
  %1 = load i8, ptr %arrayidx52, align 1, !tbaa !5
  %arrayidx56 = getelementptr inbounds nuw [501 x i8], ptr %arrayidx1, i64 0, i64 %indvars.iv24
  %2 = load i8, ptr %arrayidx56, align 1, !tbaa !5
  %cmp58 = icmp eq i8 %1, %2
  %add = fadd double %sum.0, 1.000000e+00
  %sum.1 = select i1 %cmp58, double %add, double %sum.0
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  br label %for.cond47, !llvm.loop !12

for.end63:                                        ; preds = %for.cond47
  %conv64 = sitofp i32 %conv to double
  %div = fdiv double %sum.0, %conv64
  %3 = load double, ptr %n, align 8, !tbaa !13
  %cmp65 = fcmp ult double %div, %3
  %.str.4..str.3 = select i1 %cmp65, ptr @.str.4, ptr @.str.3
  br label %cleanup

cleanup:                                          ; preds = %for.body15, %for.end63, %entry
  %.str.3.sink = phi ptr [ @.str.2, %entry ], [ %.str.4..str.3, %for.end63 ], [ @.str.2, %for.body15 ]
  %call67 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.3.sink)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %n) #6
  call void @llvm.lifetime.end.p0(i64 1002, ptr nonnull %s) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !10}
!13 = !{!14, !14, i64 0}
!14 = !{!"double", !6, i64 0}
