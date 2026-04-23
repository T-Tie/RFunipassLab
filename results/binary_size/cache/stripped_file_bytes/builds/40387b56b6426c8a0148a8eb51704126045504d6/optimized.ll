; ModuleID = '<stdin>'
source_filename = "/tmp/tmp3vfia7ce.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@__const.main.t1 = private unnamed_addr constant [12 x i32] [i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@__const.main.t2 = private unnamed_addr constant [12 x i32] [i32 31, i32 29, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@str.6 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.7 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %y = alloca i32, align 4
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc82, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc83, %for.inc82 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end84

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %y, ptr noundef nonnull %m1, ptr noundef nonnull %m2)
  %1 = load i32, ptr %y, align 4, !tbaa !5
  %2 = and i32 %1, 3
  %cmp2 = icmp eq i32 %2, 0
  %rem3 = srem i32 %1, 100
  %cmp4.not = icmp ne i32 %rem3, 0
  %or.cond.not32 = and i1 %cmp2, %cmp4.not
  %rem5 = srem i32 %1, 400
  %cmp6 = icmp eq i32 %rem5, 0
  %or.cond31 = or i1 %cmp6, %or.cond.not32
  %3 = load i32, ptr %m1, align 4, !tbaa !5
  %4 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp7 = icmp sgt i32 %3, %4
  br i1 %or.cond31, label %if.then, label %if.else39

if.then:                                          ; preds = %for.body
  br i1 %cmp7, label %for.cond9.preheader, label %if.else17

for.cond9.preheader:                              ; preds = %if.then
  %5 = sext i32 %4 to i64
  %wide.trip.count52 = sext i32 %3 to i64
  br label %for.cond9

for.cond9:                                        ; preds = %for.cond9.preheader, %for.body11
  %indvars.iv47 = phi i64 [ %5, %for.cond9.preheader ], [ %indvars.iv.next48, %for.body11 ]
  %total.0 = phi i32 [ 0, %for.cond9.preheader ], [ %add, %for.body11 ]
  %exitcond53.not = icmp eq i64 %indvars.iv47, %wide.trip.count52
  br i1 %exitcond53.not, label %for.end, label %for.body11

for.body11:                                       ; preds = %for.cond9
  %6 = add nsw i64 %indvars.iv47, -1
  %arrayidx = getelementptr inbounds [12 x i32], ptr @__const.main.t2, i64 0, i64 %6
  %7 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %add = add nsw i32 %7, %total.0
  %indvars.iv.next48 = add nsw i64 %indvars.iv47, 1
  br label %for.cond9, !llvm.loop !9

for.end:                                          ; preds = %for.cond9
  %rem12 = srem i32 %total.0, 7
  %cmp13 = icmp eq i32 %rem12, 0
  %str.7.str.6 = select i1 %cmp13, ptr @str.7, ptr @str.6
  br label %for.inc82.sink.split

if.else17:                                        ; preds = %if.then
  %cmp18 = icmp slt i32 %3, %4
  br i1 %cmp18, label %for.cond20.preheader, label %for.inc82

for.cond20.preheader:                             ; preds = %if.else17
  %8 = sext i32 %3 to i64
  %wide.trip.count45 = sext i32 %4 to i64
  br label %for.cond20

for.cond20:                                       ; preds = %for.cond20.preheader, %for.body22
  %indvars.iv41 = phi i64 [ %8, %for.cond20.preheader ], [ %indvars.iv.next42, %for.body22 ]
  %total.1 = phi i32 [ 0, %for.cond20.preheader ], [ %add26, %for.body22 ]
  %exitcond46.not = icmp eq i64 %indvars.iv41, %wide.trip.count45
  br i1 %exitcond46.not, label %for.end29, label %for.body22

for.body22:                                       ; preds = %for.cond20
  %9 = add nsw i64 %indvars.iv41, -1
  %arrayidx25 = getelementptr inbounds [12 x i32], ptr @__const.main.t2, i64 0, i64 %9
  %10 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %add26 = add nsw i32 %10, %total.1
  %indvars.iv.next42 = add nsw i64 %indvars.iv41, 1
  br label %for.cond20, !llvm.loop !12

for.end29:                                        ; preds = %for.cond20
  %rem30 = srem i32 %total.1, 7
  %cmp31 = icmp eq i32 %rem30, 0
  %str.5.str.4 = select i1 %cmp31, ptr @str.7, ptr @str.6
  br label %for.inc82.sink.split

if.else39:                                        ; preds = %for.body
  br i1 %cmp7, label %for.cond42.preheader, label %if.else59

for.cond42.preheader:                             ; preds = %if.else39
  %11 = sext i32 %4 to i64
  %wide.trip.count39 = sext i32 %3 to i64
  br label %for.cond42

for.cond42:                                       ; preds = %for.cond42.preheader, %for.body44
  %indvars.iv35 = phi i64 [ %11, %for.cond42.preheader ], [ %indvars.iv.next36, %for.body44 ]
  %total.2 = phi i32 [ 0, %for.cond42.preheader ], [ %add48, %for.body44 ]
  %exitcond40.not = icmp eq i64 %indvars.iv35, %wide.trip.count39
  br i1 %exitcond40.not, label %for.end51, label %for.body44

for.body44:                                       ; preds = %for.cond42
  %12 = add nsw i64 %indvars.iv35, -1
  %arrayidx47 = getelementptr inbounds [12 x i32], ptr @__const.main.t1, i64 0, i64 %12
  %13 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  %add48 = add nsw i32 %13, %total.2
  %indvars.iv.next36 = add nsw i64 %indvars.iv35, 1
  br label %for.cond42, !llvm.loop !13

for.end51:                                        ; preds = %for.cond42
  %rem52 = srem i32 %total.2, 7
  %cmp53 = icmp eq i32 %rem52, 0
  %str.3.str.2 = select i1 %cmp53, ptr @str.7, ptr @str.6
  br label %for.inc82.sink.split

if.else59:                                        ; preds = %if.else39
  %cmp60 = icmp slt i32 %3, %4
  br i1 %cmp60, label %for.cond62.preheader, label %for.inc82

for.cond62.preheader:                             ; preds = %if.else59
  %14 = sext i32 %3 to i64
  %wide.trip.count = sext i32 %4 to i64
  br label %for.cond62

for.cond62:                                       ; preds = %for.cond62.preheader, %for.body64
  %indvars.iv = phi i64 [ %14, %for.cond62.preheader ], [ %indvars.iv.next, %for.body64 ]
  %total.3 = phi i32 [ 0, %for.cond62.preheader ], [ %add68, %for.body64 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end71, label %for.body64

for.body64:                                       ; preds = %for.cond62
  %15 = add nsw i64 %indvars.iv, -1
  %arrayidx67 = getelementptr inbounds [12 x i32], ptr @__const.main.t1, i64 0, i64 %15
  %16 = load i32, ptr %arrayidx67, align 4, !tbaa !5
  %add68 = add nsw i32 %16, %total.3
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %for.cond62, !llvm.loop !14

for.end71:                                        ; preds = %for.cond62
  %rem72 = srem i32 %total.3, 7
  %cmp73 = icmp eq i32 %rem72, 0
  %str.1.str = select i1 %cmp73, ptr @str.7, ptr @str.6
  br label %for.inc82.sink.split

for.inc82.sink.split:                             ; preds = %for.end71, %for.end51, %for.end29, %for.end
  %str.4.sink = phi ptr [ %str.7.str.6, %for.end ], [ %str.5.str.4, %for.end29 ], [ %str.3.str.2, %for.end51 ], [ %str.1.str, %for.end71 ]
  %puts27 = call i32 @puts(ptr nonnull dereferenceable(1) %str.4.sink)
  br label %for.inc82

for.inc82:                                        ; preds = %for.inc82.sink.split, %if.else17, %if.else59
  %inc83 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !15

for.end84:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
