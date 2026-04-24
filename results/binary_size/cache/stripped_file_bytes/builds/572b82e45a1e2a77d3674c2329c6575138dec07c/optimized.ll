; ModuleID = '<stdin>'
source_filename = "/tmp/tmpl8gauere.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@__const.main.month = private unnamed_addr constant [12 x i32] [i32 31, i32 29, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@__const.main.month.2 = private unnamed_addr constant [12 x i32] [i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %year) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m2) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc44, %entry
  %j.0 = phi i32 [ 0, %entry ], [ %inc45, %for.inc44 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %j.0, %0
  br i1 %cmp, label %for.body, label %for.end46

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %year, ptr noundef nonnull %m1, ptr noundef nonnull %m2)
  %1 = load i32, ptr %m1, align 4, !tbaa !5
  %2 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp2 = icmp sgt i32 %1, %2
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 %2, ptr %m1, align 4, !tbaa !5
  store i32 %1, ptr %m2, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %3 = phi i32 [ %2, %if.then ], [ %1, %for.body ]
  %4 = load i32, ptr %year, align 4, !tbaa !5
  %5 = and i32 %4, 3
  %cmp3 = icmp eq i32 %5, 0
  %rem4 = srem i32 %4, 100
  %cmp5.not = icmp ne i32 %rem4, 0
  %or.cond.not17 = and i1 %cmp3, %cmp5.not
  %rem6 = srem i32 %4, 400
  %cmp7 = icmp eq i32 %rem6, 0
  %or.cond16 = or i1 %cmp7, %or.cond.not17
  %6 = sext i32 %3 to i64
  %smax24 = call i32 @llvm.smax.i32(i32 %2, i32 %1)
  %wide.trip.count25 = sext i32 %smax24 to i64
  br i1 %or.cond16, label %for.cond12, label %for.cond22

for.cond12:                                       ; preds = %if.end, %for.body14
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %for.body14 ], [ %6, %if.end ]
  %q.0 = phi i32 [ %add, %for.body14 ], [ 0, %if.end ]
  %exitcond26.not = icmp eq i64 %indvars.iv20, %wide.trip.count25
  br i1 %exitcond26.not, label %for.end, label %for.body14

for.body14:                                       ; preds = %for.cond12
  %7 = add nsw i64 %indvars.iv20, -1
  %arrayidx = getelementptr inbounds [12 x i32], ptr @__const.main.month, i64 0, i64 %7
  %8 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %add = add nsw i32 %8, %q.0
  %indvars.iv.next21 = add nsw i64 %indvars.iv20, 1
  br label %for.cond12, !llvm.loop !9

for.end:                                          ; preds = %for.cond12
  %rem15 = srem i32 %q.0, 7
  %cmp16 = icmp eq i32 %rem15, 0
  br i1 %cmp16, label %for.inc44, label %if.else41

for.cond22:                                       ; preds = %if.end, %for.body24
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body24 ], [ %6, %if.end ]
  %q.1 = phi i32 [ %add28, %for.body24 ], [ 0, %if.end ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count25
  br i1 %exitcond.not, label %for.end31, label %for.body24

for.body24:                                       ; preds = %for.cond22
  %9 = add nsw i64 %indvars.iv, -1
  %arrayidx27 = getelementptr inbounds [12 x i32], ptr @__const.main.month.2, i64 0, i64 %9
  %10 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %add28 = add nsw i32 %10, %q.1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %for.cond22, !llvm.loop !12

for.end31:                                        ; preds = %for.cond22
  %rem32 = srem i32 %q.1, 7
  %cmp33 = icmp eq i32 %rem32, 0
  br i1 %cmp33, label %for.inc44, label %if.else41

if.else41:                                        ; preds = %for.end, %for.end31
  br label %for.inc44

for.inc44:                                        ; preds = %for.end, %for.end31, %if.else41
  %str.1.sink = phi ptr [ @str, %if.else41 ], [ @str.1, %for.end31 ], [ @str.1, %for.end ]
  %puts11 = call i32 @puts(ptr nonnull dereferenceable(1) %str.1.sink)
  %inc45 = add nuw nsw i32 %j.0, 1
  br label %for.cond, !llvm.loop !13

for.end46:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %year) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
