; ModuleID = '<stdin>'
source_filename = "/tmp/tmp2n0_erpe.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%s\0A%s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"no\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %x = alloca double, align 8
  %a = alloca [501 x i8], align 16
  %b = alloca [501 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %x) #4
  call void @llvm.lifetime.start.p0(i64 501, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 501, ptr nonnull %b) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x)
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a, ptr noundef nonnull %b)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %y.0 = phi i32 [ %y.1, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [501 x i8], ptr %a, i64 0, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  switch i8 %0, label %if.then [
    i8 0, label %for.cond20
    i8 65, label %for.inc
    i8 84, label %for.inc
    i8 71, label %for.inc
    i8 67, label %for.inc
  ]

if.then:                                          ; preds = %for.cond
  %inc = add nsw i32 %y.0, 1
  br label %for.inc

for.inc:                                          ; preds = %for.cond, %for.cond, %for.cond, %for.cond, %if.then
  %y.1 = phi i32 [ %inc, %if.then ], [ %y.0, %for.cond ], [ %y.0, %for.cond ], [ %y.0, %for.cond ], [ %y.0, %for.cond ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !8

for.cond20:                                       ; preds = %for.cond, %for.inc47
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %for.inc47 ], [ 0, %for.cond ]
  %y.2 = phi i32 [ %y.3, %for.inc47 ], [ %y.0, %for.cond ]
  %arrayidx22 = getelementptr inbounds nuw [501 x i8], ptr %b, i64 0, i64 %indvars.iv30
  %1 = load i8, ptr %arrayidx22, align 1, !tbaa !5
  switch i8 %1, label %if.then44 [
    i8 0, label %for.cond50
    i8 65, label %for.inc47
    i8 84, label %for.inc47
    i8 71, label %for.inc47
    i8 67, label %for.inc47
  ]

if.then44:                                        ; preds = %for.cond20
  %inc45 = add nsw i32 %y.2, 1
  br label %for.inc47

for.inc47:                                        ; preds = %for.cond20, %for.cond20, %for.cond20, %for.cond20, %if.then44
  %y.3 = phi i32 [ %inc45, %if.then44 ], [ %y.2, %for.cond20 ], [ %y.2, %for.cond20 ], [ %y.2, %for.cond20 ], [ %y.2, %for.cond20 ]
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond20, !llvm.loop !11

for.cond50:                                       ; preds = %for.cond20, %for.body54
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %for.body54 ], [ 0, %for.cond20 ]
  %n.0 = phi double [ %inc55, %for.body54 ], [ 0.000000e+00, %for.cond20 ]
  %arrayidx52 = getelementptr inbounds nuw [501 x i8], ptr %a, i64 0, i64 %indvars.iv33
  %2 = load i8, ptr %arrayidx52, align 1, !tbaa !5
  %tobool53.not = icmp eq i8 %2, 0
  br i1 %tobool53.not, label %for.cond59, label %for.body54

for.body54:                                       ; preds = %for.cond50
  %inc55 = fadd double %n.0, 1.000000e+00
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond50, !llvm.loop !12

for.cond59:                                       ; preds = %for.cond50, %for.body63
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %for.body63 ], [ 0, %for.cond50 ]
  %m.0 = phi double [ %inc64, %for.body63 ], [ 0.000000e+00, %for.cond50 ]
  %arrayidx61 = getelementptr inbounds nuw [501 x i8], ptr %b, i64 0, i64 %indvars.iv36
  %3 = load i8, ptr %arrayidx61, align 1, !tbaa !5
  %tobool62.not = icmp eq i8 %3, 0
  br i1 %tobool62.not, label %for.end67, label %for.body63

for.body63:                                       ; preds = %for.cond59
  %inc64 = fadd double %m.0, 1.000000e+00
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  br label %for.cond59, !llvm.loop !13

for.end67:                                        ; preds = %for.cond59
  %cmp68 = fcmp une double %m.0, %n.0
  %inc70.neg = sext i1 %cmp68 to i32
  %cmp72.not = icmp eq i32 %y.2, %inc70.neg
  br i1 %cmp72.not, label %for.cond75, label %if.end99

for.cond75:                                       ; preds = %for.end67, %for.body79
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.body79 ], [ 0, %for.end67 ]
  %z.0 = phi double [ %z.1, %for.body79 ], [ 0.000000e+00, %for.end67 ]
  %arrayidx77 = getelementptr inbounds nuw [501 x i8], ptr %a, i64 0, i64 %indvars.iv39
  %4 = load i8, ptr %arrayidx77, align 1, !tbaa !5
  %tobool78.not = icmp eq i8 %4, 0
  br i1 %tobool78.not, label %for.end92, label %for.body79

for.body79:                                       ; preds = %for.cond75
  %arrayidx84 = getelementptr inbounds nuw [501 x i8], ptr %b, i64 0, i64 %indvars.iv39
  %5 = load i8, ptr %arrayidx84, align 1, !tbaa !5
  %cmp86 = icmp eq i8 %4, %5
  %inc88 = fadd double %z.0, 1.000000e+00
  %z.1 = select i1 %cmp86, double %inc88, double %z.0
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %for.cond75, !llvm.loop !14

for.end92:                                        ; preds = %for.cond75
  %div = fdiv double %z.0, %n.0
  %6 = load double, ptr %x, align 8, !tbaa !15
  %cmp93 = fcmp ogt double %div, %6
  %.str.3..str.4 = select i1 %cmp93, ptr @.str.3, ptr @.str.4
  br label %if.end99

if.end99:                                         ; preds = %for.end92, %for.end67
  %.str.3.sink = phi ptr [ @.str.2, %for.end67 ], [ %.str.3..str.4, %for.end92 ]
  %call95 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.3.sink)
  call void @llvm.lifetime.end.p0(i64 501, ptr nonnull %b) #4
  call void @llvm.lifetime.end.p0(i64 501, ptr nonnull %a) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %x) #4
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
!14 = distinct !{!14, !9, !10}
!15 = !{!16, !16, i64 0}
!16 = !{!"double", !6, i64 0}
