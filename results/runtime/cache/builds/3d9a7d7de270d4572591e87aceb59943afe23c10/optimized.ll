; ModuleID = '<stdin>'
source_filename = "/tmp/tmpse9gakr1.cpp"
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
  %m = alloca i32, align 4
  %d = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %year) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %d) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc53, %entry
  %j.0 = phi i32 [ 0, %entry ], [ %inc54, %for.inc53 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %j.0, %0
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %d) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %year) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %year, ptr noundef nonnull %m, ptr noundef nonnull %d)
  %1 = load i32, ptr %m, align 4, !tbaa !5
  %2 = load i32, ptr %d, align 4, !tbaa !5
  %cmp2 = icmp sgt i32 %1, %2
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 %2, ptr %m, align 4, !tbaa !5
  store i32 %1, ptr %d, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %3 = phi i32 [ %2, %if.then ], [ %1, %for.body ]
  %4 = load i32, ptr %year, align 4, !tbaa !5
  %5 = and i32 %4, 3
  %cmp3 = icmp eq i32 %5, 0
  br i1 %cmp3, label %if.then4, label %if.else27

if.then4:                                         ; preds = %if.end
  %rem5 = srem i32 %4, 100
  %cmp6 = icmp ne i32 %rem5, 0
  %rem8 = srem i32 %4, 400
  %cmp9 = icmp eq i32 %rem8, 0
  %or.cond = or i1 %cmp6, %cmp9
  br i1 %or.cond, label %if.then17, label %if.else27

if.then17:                                        ; preds = %if.then4
  %6 = sext i32 %3 to i64
  %smax22 = call i32 @llvm.smax.i32(i32 %2, i32 %1)
  %wide.trip.count23 = sext i32 %smax22 to i64
  br label %for.cond18

for.cond18:                                       ; preds = %for.body21, %if.then17
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.body21 ], [ %6, %if.then17 ]
  %q.1 = phi i32 [ %add, %for.body21 ], [ 0, %if.then17 ]
  %exitcond24.not = icmp eq i64 %indvars.iv18, %wide.trip.count23
  br i1 %exitcond24.not, label %for.cond.cleanup20, label %for.body21

for.cond.cleanup20:                               ; preds = %for.cond18
  %rem22 = srem i32 %q.1, 7
  %cmp23 = icmp eq i32 %rem22, 0
  br i1 %cmp23, label %for.inc53, label %if.else50

for.body21:                                       ; preds = %for.cond18
  %7 = add nsw i64 %indvars.iv18, -1
  %arrayidx = getelementptr inbounds [12 x i32], ptr @__const.main.month, i64 0, i64 %7
  %8 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %add = add nsw i32 %8, %q.1
  %indvars.iv.next19 = add nsw i64 %indvars.iv18, 1
  br label %for.cond18, !llvm.loop !9

if.else27:                                        ; preds = %if.then4, %if.end
  %9 = sext i32 %3 to i64
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 %1)
  %wide.trip.count = sext i32 %smax to i64
  br label %for.cond30

for.cond30:                                       ; preds = %for.body33, %if.else27
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body33 ], [ %9, %if.else27 ]
  %q.2 = phi i32 [ %add37, %for.body33 ], [ 0, %if.else27 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup32, label %for.body33

for.cond.cleanup32:                               ; preds = %for.cond30
  %rem41 = srem i32 %q.2, 7
  %cmp42 = icmp eq i32 %rem41, 0
  br i1 %cmp42, label %for.inc53, label %if.else50

for.body33:                                       ; preds = %for.cond30
  %10 = add nsw i64 %indvars.iv, -1
  %arrayidx36 = getelementptr inbounds [12 x i32], ptr @__const.main.month.2, i64 0, i64 %10
  %11 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  %add37 = add nsw i32 %11, %q.2
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %for.cond30, !llvm.loop !12

if.else50:                                        ; preds = %for.cond.cleanup20, %for.cond.cleanup32
  br label %for.inc53

for.inc53:                                        ; preds = %for.cond.cleanup20, %for.cond.cleanup32, %if.else50
  %str.1.sink = phi ptr [ @str, %if.else50 ], [ @str.1, %for.cond.cleanup32 ], [ @str.1, %for.cond.cleanup20 ]
  %puts10 = call i32 @puts(ptr nonnull dereferenceable(1) %str.1.sink)
  %inc54 = add nuw nsw i32 %j.0, 1
  br label %for.cond, !llvm.loop !13
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
