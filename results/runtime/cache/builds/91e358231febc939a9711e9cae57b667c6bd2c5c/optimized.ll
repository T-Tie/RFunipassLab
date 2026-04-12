; ModuleID = '<stdin>'
source_filename = "/tmp/tmpopw3rspa.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [8 x i8] c"%lf%s%s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"no\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %f = alloca [501 x i8], align 16
  %t = alloca [501 x i8], align 16
  %n = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 501, ptr nonnull %f) #4
  call void @llvm.lifetime.start.p0(i64 501, ptr nonnull %t) #4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n, ptr noundef nonnull %f, ptr noundef nonnull %t)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %j.0 = phi double [ %inc, %for.body ], [ 0.000000e+00, %entry ]
  %arrayidx = getelementptr inbounds nuw [501 x i8], ptr %f, i64 0, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %cmp.not = icmp eq i8 %0, 0
  br i1 %cmp.not, label %for.cond3, label %for.body

for.body:                                         ; preds = %for.cond
  %inc = fadd double %j.0, 1.000000e+00
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !8

for.cond3:                                        ; preds = %for.cond, %for.body8
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %for.body8 ], [ 0, %for.cond ]
  %r.0 = phi double [ %inc9, %for.body8 ], [ 0.000000e+00, %for.cond ]
  %arrayidx5 = getelementptr inbounds nuw [501 x i8], ptr %t, i64 0, i64 %indvars.iv25
  %1 = load i8, ptr %arrayidx5, align 1, !tbaa !5
  %cmp7.not = icmp eq i8 %1, 0
  br i1 %cmp7.not, label %for.end12, label %for.body8

for.body8:                                        ; preds = %for.cond3
  %inc9 = fadd double %r.0, 1.000000e+00
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond3, !llvm.loop !11

for.end12:                                        ; preds = %for.cond3
  %cmp13 = fcmp une double %j.0, %r.0
  br i1 %cmp13, label %cleanup.sink.split, label %for.cond15

for.cond15:                                       ; preds = %for.end12, %for.inc64
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for.inc64 ], [ 0, %for.end12 ]
  %arrayidx17 = getelementptr inbounds nuw [501 x i8], ptr %f, i64 0, i64 %indvars.iv28
  %2 = load i8, ptr %arrayidx17, align 1, !tbaa !5
  switch i8 %2, label %cleanup.sink.split [
    i8 0, label %for.cond67
    i8 65, label %if.end41
    i8 84, label %if.end41
    i8 67, label %if.end41
    i8 71, label %if.end41
  ]

if.end41:                                         ; preds = %for.cond15, %for.cond15, %for.cond15, %for.cond15
  %arrayidx43 = getelementptr inbounds nuw [501 x i8], ptr %t, i64 0, i64 %indvars.iv28
  %3 = load i8, ptr %arrayidx43, align 1, !tbaa !5
  switch i8 %3, label %cleanup.sink.split [
    i8 65, label %for.inc64
    i8 84, label %for.inc64
    i8 67, label %for.inc64
    i8 71, label %for.inc64
  ]

for.inc64:                                        ; preds = %if.end41, %if.end41, %if.end41, %if.end41
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond15, !llvm.loop !12

for.cond67:                                       ; preds = %for.cond15, %for.body72
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %for.body72 ], [ 0, %for.cond15 ]
  %s.0 = phi double [ %s.1, %for.body72 ], [ 0.000000e+00, %for.cond15 ]
  %arrayidx69 = getelementptr inbounds nuw [501 x i8], ptr %f, i64 0, i64 %indvars.iv31
  %4 = load i8, ptr %arrayidx69, align 1, !tbaa !5
  %cmp71.not = icmp eq i8 %4, 0
  br i1 %cmp71.not, label %for.end85, label %for.body72

for.body72:                                       ; preds = %for.cond67
  %arrayidx77 = getelementptr inbounds nuw [501 x i8], ptr %t, i64 0, i64 %indvars.iv31
  %5 = load i8, ptr %arrayidx77, align 1, !tbaa !5
  %cmp79 = icmp eq i8 %4, %5
  %inc81 = fadd double %s.0, 1.000000e+00
  %s.1 = select i1 %cmp79, double %inc81, double %s.0
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  br label %for.cond67, !llvm.loop !13

for.end85:                                        ; preds = %for.cond67
  %div = fdiv double %s.0, %j.0
  %6 = load double, ptr %n, align 8, !tbaa !14
  %cmp86 = fcmp ogt double %div, %6
  br i1 %cmp86, label %if.then87, label %if.end89

if.then87:                                        ; preds = %for.end85
  %call88 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2)
  %.pre = load double, ptr %n, align 8, !tbaa !14
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %for.end85
  %7 = phi double [ %.pre, %if.then87 ], [ %6, %for.end85 ]
  %cmp91 = fcmp ugt double %div, %7
  br i1 %cmp91, label %cleanup, label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end41, %for.cond15, %if.end89, %for.end12
  %.str.3.sink = phi ptr [ @.str.1, %for.end12 ], [ @.str.3, %if.end89 ], [ @.str.1, %for.cond15 ], [ @.str.1, %if.end41 ]
  %call93 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.3.sink)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end89
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %n) #4
  call void @llvm.lifetime.end.p0(i64 501, ptr nonnull %t) #4
  call void @llvm.lifetime.end.p0(i64 501, ptr nonnull %f) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
!13 = distinct !{!13, !9, !10}
!14 = !{!15, !15, i64 0}
!15 = !{!"double", !6, i64 0}
