; ModuleID = '<stdin>'
source_filename = "/tmp/tmpftrcp9p1.cpp"
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
  %sz = alloca [10000 x i8], align 16
  %s = alloca [10000 x i8], align 16
  %n = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 10000, ptr noundef nonnull align 16 %sz) #3
  call void @llvm.lifetime.start.p0(i64 noundef 10000, ptr noundef nonnull align 16 %s) #3
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %n) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 8 %n, ptr noundef nonnull align 16 %sz, ptr noundef nonnull align 16 %s)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %a.0 = phi i32 [ %spec.select, %for.inc ], [ 0, %entry ]
  %p.0 = phi i32 [ %p.1, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [10000 x i8], ptr %sz, i64 0, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx4 = getelementptr inbounds nuw [10000 x i8], ptr %s, i64 0, i64 %indvars.iv
  %1 = load i8, ptr %arrayidx4, align 1, !tbaa !5
  %cmp = icmp eq i8 %0, %1
  %inc = zext i1 %cmp to i32
  %spec.select = add nuw nsw i32 %a.0, %inc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  switch i8 %0, label %if.then44 [
    i8 65, label %lor.lhs.false
    i8 84, label %lor.lhs.false
    i8 67, label %lor.lhs.false
    i8 71, label %lor.lhs.false
  ]

lor.lhs.false:                                    ; preds = %for.body, %for.body, %for.body, %for.body
  switch i8 %1, label %if.then44 [
    i8 65, label %for.inc
    i8 84, label %for.inc
    i8 67, label %for.inc
    i8 71, label %for.inc
  ]

if.then44:                                        ; preds = %lor.lhs.false, %for.body
  %inc45 = add nsw i32 %p.0, 1
  br label %for.inc

for.inc:                                          ; preds = %lor.lhs.false, %lor.lhs.false, %lor.lhs.false, %lor.lhs.false, %if.then44
  %p.1 = phi i32 [ %inc45, %if.then44 ], [ %p.0, %lor.lhs.false ], [ %p.0, %lor.lhs.false ], [ %p.0, %lor.lhs.false ], [ %p.0, %lor.lhs.false ]
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %2 = trunc nuw nsw i64 %indvars.iv to i32
  %conv48 = uitofp nneg i32 %a.0 to double
  %conv49 = uitofp nneg i32 %2 to double
  %div = fdiv double %conv48, %conv49
  %cmp50.not = icmp eq i32 %p.0, 0
  br i1 %cmp50.not, label %land.lhs.true55, label %if.end65.sink.split

land.lhs.true55:                                  ; preds = %for.end
  %3 = load double, ptr %n, align 8, !tbaa !11
  %cmp56 = fcmp ogt double %div, %3
  br i1 %cmp56, label %if.then57, label %land.lhs.true61

if.then57:                                        ; preds = %land.lhs.true55
  %call58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2)
  %.pre = load double, ptr %n, align 8, !tbaa !11
  br label %land.lhs.true61

land.lhs.true61:                                  ; preds = %if.then57, %land.lhs.true55
  %4 = phi double [ %.pre, %if.then57 ], [ %3, %land.lhs.true55 ]
  %cmp62 = fcmp ugt double %div, %4
  br i1 %cmp62, label %if.end65, label %if.end65.sink.split

if.end65.sink.split:                              ; preds = %land.lhs.true61, %for.end
  %.str.1.sink = phi ptr [ @.str.1, %for.end ], [ @.str.3, %land.lhs.true61 ]
  %call52 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.1.sink)
  br label %if.end65

if.end65:                                         ; preds = %if.end65.sink.split, %land.lhs.true61
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %n) #4
  call void @llvm.lifetime.end.p0(i64 noundef 10000, ptr noundef nonnull %s) #4
  call void @llvm.lifetime.end.p0(i64 noundef 10000, ptr noundef nonnull %sz) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
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
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !6, i64 0}
