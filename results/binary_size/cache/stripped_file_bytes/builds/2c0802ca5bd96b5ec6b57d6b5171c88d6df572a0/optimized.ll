; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_cfkcyil.cpp"
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
  %a = alloca [100 x i8], align 16
  %b = alloca [100 x i8], align 16
  %n = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a)
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %b)
  %call5 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #6
  %conv = trunc i64 %call5 to i32
  %call7 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %b) #6
  %conv8 = trunc i64 %call7 to i32
  %cmp.not = icmp eq i32 %conv, %conv8
  br i1 %cmp.not, label %for.cond, label %if.end98

for.cond:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [100 x i8], ptr %a, i64 0, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  switch i8 %0, label %if.end98 [
    i8 0, label %for.cond33
    i8 65, label %for.inc
    i8 84, label %for.inc
    i8 67, label %for.inc
    i8 71, label %for.inc
  ]

for.inc:                                          ; preds = %for.cond, %for.cond, %for.cond, %for.cond
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !8

for.cond33:                                       ; preds = %for.cond, %for.inc61
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.inc61 ], [ 0, %for.cond ]
  %arrayidx35 = getelementptr inbounds nuw [100 x i8], ptr %b, i64 0, i64 %indvars.iv24
  %1 = load i8, ptr %arrayidx35, align 1, !tbaa !5
  switch i8 %1, label %if.end98 [
    i8 0, label %for.cond68
    i8 65, label %for.inc61
    i8 84, label %for.inc61
    i8 67, label %for.inc61
    i8 71, label %for.inc61
  ]

for.inc61:                                        ; preds = %for.cond33, %for.cond33, %for.cond33, %for.cond33
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  br label %for.cond33, !llvm.loop !11

for.cond68:                                       ; preds = %for.cond33, %for.body72
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.body72 ], [ 0, %for.cond33 ]
  %t.0 = phi i32 [ %spec.select, %for.body72 ], [ 0, %for.cond33 ]
  %arrayidx70 = getelementptr inbounds nuw [100 x i8], ptr %a, i64 0, i64 %indvars.iv27
  %2 = load i8, ptr %arrayidx70, align 1, !tbaa !5
  %tobool71.not = icmp eq i8 %2, 0
  br i1 %tobool71.not, label %for.end85, label %for.body72

for.body72:                                       ; preds = %for.cond68
  %arrayidx77 = getelementptr inbounds nuw [100 x i8], ptr %b, i64 0, i64 %indvars.iv27
  %3 = load i8, ptr %arrayidx77, align 1, !tbaa !5
  %cmp79 = icmp eq i8 %2, %3
  %inc81 = zext i1 %cmp79 to i32
  %spec.select = add nuw nsw i32 %t.0, %inc81
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond68, !llvm.loop !12

for.end85:                                        ; preds = %for.cond68
  %call87 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #6
  %conv88 = trunc i64 %call87 to i32
  %conv89 = sitofp i32 %conv88 to double
  %conv90 = uitofp nneg i32 %t.0 to double
  %div = fdiv double %conv90, %conv89
  %4 = load double, ptr %n, align 8, !tbaa !13
  %cmp91 = fcmp ogt double %div, %4
  %.str.3..str.4 = select i1 %cmp91, ptr @.str.3, ptr @.str.4
  br label %if.end98

if.end98:                                         ; preds = %for.cond, %for.cond33, %for.end85, %entry
  %.str.2.sink = phi ptr [ @.str.2, %entry ], [ %.str.3..str.4, %for.end85 ], [ @.str.2, %for.cond33 ], [ @.str.2, %for.cond ]
  %call58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.2.sink)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %a) #5
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
