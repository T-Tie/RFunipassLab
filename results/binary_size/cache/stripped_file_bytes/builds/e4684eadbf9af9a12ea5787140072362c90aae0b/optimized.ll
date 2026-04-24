; ModuleID = '<stdin>'
source_filename = "/tmp/tmpl3sedmew.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [501 x i8], align 16
  %b = alloca [501 x i8], align 16
  %c = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 501, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 501, ptr nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %c) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %c)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a)
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %b)
  %call5 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #6
  %conv = uitofp i64 %call5 to double
  %call7 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %b) #6
  %conv8 = uitofp i64 %call7 to double
  %cmp = fcmp une double %conv, %conv8
  %t.0 = zext i1 %cmp to i32
  %cmp1024.not = icmp eq i64 %call5, 0
  br i1 %cmp1024.not, label %for.cond30.preheader, label %for.body

for.cond30.preheader:                             ; preds = %for.inc, %entry
  %t.1.lcssa = phi i32 [ %t.0, %entry ], [ %t.2, %for.inc ]
  %cmp3227.not = icmp eq i64 %call7, 0
  br i1 %cmp3227.not, label %for.end58.thread, label %for.body33

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %t.126 = phi i32 [ %t.2, %for.inc ], [ %t.0, %entry ]
  %arrayidx = getelementptr inbounds nuw [501 x i8], ptr %a, i64 0, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  switch i8 %0, label %if.then27 [
    i8 84, label %for.inc
    i8 67, label %for.inc
    i8 71, label %for.inc
    i8 65, label %for.inc
  ]

if.then27:                                        ; preds = %for.body
  %add28 = add nsw i32 %t.126, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %for.body, %for.body, %for.body, %if.then27
  %t.2 = phi i32 [ %add28, %if.then27 ], [ %t.126, %for.body ], [ %t.126, %for.body ], [ %t.126, %for.body ], [ %t.126, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = trunc nuw nsw i64 %indvars.iv.next to i32
  %conv9 = uitofp nneg i32 %1 to double
  %cmp10 = fcmp olt double %conv9, %conv
  br i1 %cmp10, label %for.body, label %for.cond30.preheader, !llvm.loop !8

for.body33:                                       ; preds = %for.cond30.preheader, %for.inc56
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %for.inc56 ], [ 0, %for.cond30.preheader ]
  %t.329 = phi i32 [ %t.4, %for.inc56 ], [ %t.1.lcssa, %for.cond30.preheader ]
  %arrayidx35 = getelementptr inbounds nuw [501 x i8], ptr %b, i64 0, i64 %indvars.iv36
  %2 = load i8, ptr %arrayidx35, align 1, !tbaa !5
  switch i8 %2, label %if.then53 [
    i8 84, label %for.inc56
    i8 67, label %for.inc56
    i8 71, label %for.inc56
    i8 65, label %for.inc56
  ]

if.then53:                                        ; preds = %for.body33
  %add54 = add nsw i32 %t.329, 1
  br label %for.inc56

for.inc56:                                        ; preds = %for.body33, %for.body33, %for.body33, %for.body33, %if.then53
  %t.4 = phi i32 [ %add54, %if.then53 ], [ %t.329, %for.body33 ], [ %t.329, %for.body33 ], [ %t.329, %for.body33 ], [ %t.329, %for.body33 ]
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %3 = trunc nuw nsw i64 %indvars.iv.next37 to i32
  %conv31 = uitofp nneg i32 %3 to double
  %cmp32 = fcmp olt double %conv31, %conv8
  br i1 %cmp32, label %for.body33, label %for.end58, !llvm.loop !11

for.end58:                                        ; preds = %for.inc56
  %cmp59.not = icmp eq i32 %t.4, 0
  br i1 %cmp59.not, label %for.body65, label %if.end85

for.end58.thread:                                 ; preds = %for.cond30.preheader
  %cmp59.not43 = icmp eq i32 %t.1.lcssa, 0
  br i1 %cmp59.not43, label %for.end78, label %if.end85

for.body65:                                       ; preds = %for.end58, %for.body65
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.body65 ], [ 0, %for.end58 ]
  %n.032 = phi double [ %n.1, %for.body65 ], [ 0.000000e+00, %for.end58 ]
  %arrayidx67 = getelementptr inbounds nuw [501 x i8], ptr %a, i64 0, i64 %indvars.iv39
  %4 = load i8, ptr %arrayidx67, align 1, !tbaa !5
  %arrayidx70 = getelementptr inbounds nuw [501 x i8], ptr %b, i64 0, i64 %indvars.iv39
  %5 = load i8, ptr %arrayidx70, align 1, !tbaa !5
  %cmp72 = icmp eq i8 %4, %5
  %add74 = fadd double %n.032, 1.000000e+00
  %n.1 = select i1 %cmp72, double %add74, double %n.032
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %6 = trunc nuw nsw i64 %indvars.iv.next40 to i32
  %conv63 = uitofp nneg i32 %6 to double
  %cmp64 = fcmp olt double %conv63, %conv8
  br i1 %cmp64, label %for.body65, label %for.end78, !llvm.loop !12

for.end78:                                        ; preds = %for.body65, %for.end58.thread
  %n.0.lcssa = phi double [ 0.000000e+00, %for.end58.thread ], [ %n.1, %for.body65 ]
  %div = fdiv double %n.0.lcssa, %conv8
  %7 = load double, ptr %c, align 8, !tbaa !13
  %cmp79 = fcmp ogt double %div, %7
  %.str.3..str.4 = select i1 %cmp79, ptr @.str.3, ptr @.str.4
  br label %if.end85

if.end85:                                         ; preds = %for.end78, %for.end58, %for.end58.thread
  %.str.3.sink = phi ptr [ @.str.2, %for.end58.thread ], [ @.str.2, %for.end58 ], [ %.str.3..str.4, %for.end78 ]
  %call81 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.3.sink)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 501, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 501, ptr nonnull %a) #5
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

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

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
