; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9fog3c0p.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"better\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"worse\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"same\0A\00", align 1
@str = private unnamed_addr constant [5 x i8] c"same\00", align 1
@str.1 = private unnamed_addr constant [6 x i8] c"worse\00", align 1
@str.2 = private unnamed_addr constant [7 x i8] c"better\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %result = alloca [100 x i32], align 16
  %temp1 = alloca i32, align 4
  %temp2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull %result) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %temp1) #4
  store i32 0, ptr %temp1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %temp2) #4
  store i32 0, ptr %temp2, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %temp1, ptr noundef nonnull %temp2)
  %0 = load i32, ptr %temp2, align 4, !tbaa !5
  %conv = sitofp i32 %0 to double
  %1 = load i32, ptr %temp1, align 4, !tbaa !5
  %conv2 = sitofp i32 %1 to double
  %div = fdiv double %conv, %conv2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %entry ]
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv, %3
  br i1 %cmp.not.not, label %for.body, label %for.cond18

for.body:                                         ; preds = %for.cond
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %temp1, ptr noundef nonnull %temp2)
  %4 = load i32, ptr %temp2, align 4, !tbaa !5
  %conv4 = sitofp i32 %4 to double
  %5 = load i32, ptr %temp1, align 4, !tbaa !5
  %conv5 = sitofp i32 %5 to double
  %div6 = fdiv double %conv4, %conv5
  %sub7 = fsub double %div6, %div
  %cmp8 = fcmp ogt double %sub7, 5.000000e-02
  br i1 %cmp8, label %for.inc, label %if.else

if.else:                                          ; preds = %for.body
  %sub9 = fsub double %div, %div6
  %cmp10 = fcmp ogt double %sub9, 5.000000e-02
  br i1 %cmp10, label %for.inc, label %if.else14

if.else14:                                        ; preds = %if.else
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.else, %if.else14
  %.sink.sink = phi i32 [ 1, %for.body ], [ 3, %if.else14 ], [ 2, %if.else ]
  %arrayidx16 = getelementptr inbounds nuw [100 x i32], ptr %result, i64 0, i64 %indvars.iv
  store i32 %.sink.sink, ptr %arrayidx16, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond18:                                       ; preds = %for.cond, %for.inc40
  %.pre13 = phi i32 [ %.pre, %for.inc40 ], [ %2, %for.cond ]
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.inc40 ], [ 1, %for.cond ]
  %6 = sext i32 %.pre13 to i64
  %cmp20.not.not = icmp slt i64 %indvars.iv10, %6
  br i1 %cmp20.not.not, label %for.body21, label %for.end42

for.body21:                                       ; preds = %for.cond18
  %arrayidx23 = getelementptr inbounds nuw [100 x i32], ptr %result, i64 0, i64 %indvars.iv10
  %7 = load i32, ptr %arrayidx23, align 4, !tbaa !5, !invariant.load !12
  switch i32 %7, label %for.inc40 [
    i32 1, label %for.inc40.sink.split
    i32 2, label %if.then31
    i32 3, label %if.then37
  ]

if.then31:                                        ; preds = %for.body21
  br label %for.inc40.sink.split

if.then37:                                        ; preds = %for.body21
  br label %for.inc40.sink.split

for.inc40.sink.split:                             ; preds = %for.body21, %if.then37, %if.then31
  %str.1.sink = phi ptr [ @str.1, %if.then31 ], [ @str, %if.then37 ], [ @str.2, %for.body21 ]
  %puts7 = call i32 @puts(ptr noundef nonnull dereferenceable(1) %str.1.sink) #5
  %.pre.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc40

for.inc40:                                        ; preds = %for.inc40.sink.split, %for.body21
  %.pre = phi i32 [ %.pre.pre, %for.inc40.sink.split ], [ %.pre13, %for.body21 ]
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %for.cond18, !llvm.loop !13

for.end42:                                        ; preds = %for.cond18
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %temp2) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %temp1) #5
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %result) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
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
!12 = !{}
!13 = distinct !{!13, !10, !11}
