; ModuleID = '<stdin>'
source_filename = "/tmp/tmpwrbptorm.cpp"
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
  %s = alloca double, align 8
  %a = alloca [1000 x i8], align 16
  %b = alloca [1000 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s) #5
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %b) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %s)
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a, ptr noundef nonnull %b)
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #6
  %conv = trunc i64 %call4 to i32
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %b) #6
  %conv7 = trunc i64 %call6 to i32
  %cmp.not = icmp eq i32 %conv, %conv7
  br i1 %cmp.not, label %for.cond, label %if.end80

for.cond:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [1000 x i8], ptr %a, i64 0, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  switch i8 %0, label %if.end80 [
    i8 0, label %for.cond52
    i8 65, label %lor.lhs.false
    i8 71, label %lor.lhs.false
    i8 67, label %lor.lhs.false
    i8 84, label %lor.lhs.false
  ]

lor.lhs.false:                                    ; preds = %for.cond, %for.cond, %for.cond, %for.cond
  %arrayidx30 = getelementptr inbounds nuw [1000 x i8], ptr %b, i64 0, i64 %indvars.iv
  %1 = load i8, ptr %arrayidx30, align 1, !tbaa !5
  switch i8 %1, label %if.end80 [
    i8 65, label %for.inc
    i8 71, label %for.inc
    i8 67, label %for.inc
    i8 84, label %for.inc
  ]

for.inc:                                          ; preds = %lor.lhs.false, %lor.lhs.false, %lor.lhs.false, %lor.lhs.false
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !8

for.cond52:                                       ; preds = %for.cond, %for.body57
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %for.body57 ], [ 0, %for.cond ]
  %j.0 = phi i32 [ %spec.select, %for.body57 ], [ 0, %for.cond ]
  %arrayidx54 = getelementptr inbounds nuw [1000 x i8], ptr %a, i64 0, i64 %indvars.iv17
  %2 = load i8, ptr %arrayidx54, align 1, !tbaa !5
  %cmp56.not = icmp eq i8 %2, 0
  br i1 %cmp56.not, label %for.end70, label %for.body57

for.body57:                                       ; preds = %for.cond52
  %arrayidx62 = getelementptr inbounds nuw [1000 x i8], ptr %b, i64 0, i64 %indvars.iv17
  %3 = load i8, ptr %arrayidx62, align 1, !tbaa !5
  %cmp64 = icmp eq i8 %2, %3
  %inc66 = zext i1 %cmp64 to i32
  %spec.select = add nuw nsw i32 %j.0, %inc66
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  br label %for.cond52, !llvm.loop !11

for.end70:                                        ; preds = %for.cond52
  %conv71 = uitofp nneg i32 %j.0 to double
  %conv72 = sitofp i32 %conv to double
  %div = fdiv double %conv71, %conv72
  %4 = load double, ptr %s, align 8, !tbaa !12
  %cmp73 = fcmp ult double %div, %4
  %.str.4..str.3 = select i1 %cmp73, ptr @.str.4, ptr @.str.3
  br label %if.end80

if.end80:                                         ; preds = %lor.lhs.false, %for.cond, %for.end70, %entry
  %.str.2.sink = phi ptr [ @.str.2, %entry ], [ %.str.4..str.3, %for.end70 ], [ @.str.2, %for.cond ], [ @.str.2, %lor.lhs.false ]
  %call49 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.2.sink)
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s) #5
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
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !6, i64 0}
