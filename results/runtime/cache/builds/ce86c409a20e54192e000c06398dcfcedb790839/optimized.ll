; ModuleID = '<stdin>'
source_filename = "/tmp/tmp92bl25if.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@__const.main.a = private unnamed_addr constant [12 x i32] [i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@__const.main.b = private unnamed_addr constant [12 x i32] [i32 31, i32 29, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@str.2 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.3 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

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

for.cond:                                         ; preds = %for.inc38, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc39, %for.inc38 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %i.0, %0
  br i1 %cmp.not, label %for.end40, label %for.body

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

if.end:                                           ; preds = %for.body, %if.then
  %3 = phi i32 [ %1, %for.body ], [ %2, %if.then ]
  %4 = load i32, ptr %year, align 4, !tbaa !5
  %5 = and i32 %4, 3
  %cmp3 = icmp eq i32 %5, 0
  %rem4 = srem i32 %4, 100
  %cmp5.not = icmp ne i32 %rem4, 0
  %or.cond.not15 = and i1 %cmp3, %cmp5.not
  %rem6 = srem i32 %4, 400
  %cmp7 = icmp eq i32 %rem6, 0
  %or.cond14 = or i1 %cmp7, %or.cond.not15
  %6 = sext i32 %3 to i64
  %smax22 = call i32 @llvm.smax.i32(i32 %1, i32 %2)
  %wide.trip.count23 = sext i32 %smax22 to i64
  br i1 %or.cond14, label %for.cond9, label %for.cond20

for.cond9:                                        ; preds = %if.end, %for.body11
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.body11 ], [ %6, %if.end ]
  %sum.0 = phi i32 [ %add, %for.body11 ], [ 0, %if.end ]
  %exitcond24.not = icmp eq i64 %indvars.iv18, %wide.trip.count23
  br i1 %exitcond24.not, label %for.end, label %for.body11

for.body11:                                       ; preds = %for.cond9
  %7 = add nsw i64 %indvars.iv18, -1
  %arrayidx = getelementptr inbounds [12 x i32], ptr @__const.main.b, i64 0, i64 %7
  %8 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %add = add nsw i32 %8, %sum.0
  %indvars.iv.next19 = add nsw i64 %indvars.iv18, 1
  br label %for.cond9, !llvm.loop !9

for.end:                                          ; preds = %for.cond9
  %rem12 = srem i32 %sum.0, 7
  %cmp13 = icmp eq i32 %rem12, 0
  %str.3.str.2 = select i1 %cmp13, ptr @str.3, ptr @str.2
  br label %for.inc38

for.cond20:                                       ; preds = %if.end, %for.body22
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body22 ], [ %6, %if.end ]
  %sum.1 = phi i32 [ %add26, %for.body22 ], [ 0, %if.end ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count23
  br i1 %exitcond.not, label %for.end29, label %for.body22

for.body22:                                       ; preds = %for.cond20
  %9 = add nsw i64 %indvars.iv, -1
  %arrayidx25 = getelementptr inbounds [12 x i32], ptr @__const.main.a, i64 0, i64 %9
  %10 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %add26 = add nsw i32 %10, %sum.1
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %for.cond20, !llvm.loop !12

for.end29:                                        ; preds = %for.cond20
  %rem30 = srem i32 %sum.1, 7
  %cmp31 = icmp eq i32 %rem30, 0
  %str.1.str = select i1 %cmp31, ptr @str.3, ptr @str.2
  br label %for.inc38

for.inc38:                                        ; preds = %for.end29, %for.end
  %str.2.sink = phi ptr [ %str.3.str.2, %for.end ], [ %str.1.str, %for.end29 ]
  %puts12 = call i32 @puts(ptr nonnull dereferenceable(1) %str.2.sink)
  %inc39 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

for.end40:                                        ; preds = %for.cond
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
