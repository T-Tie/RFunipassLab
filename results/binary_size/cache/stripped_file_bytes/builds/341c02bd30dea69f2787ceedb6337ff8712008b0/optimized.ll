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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp41 = icmp sgt i32 %0, 0
  br i1 %cmp41, label %for.body, label %for.end84

for.body:                                         ; preds = %entry, %for.inc82
  %i.042 = phi i32 [ %inc83, %for.inc82 ], [ 0, %entry ]
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
  br i1 %cmp7, label %for.body11.preheader, label %if.else17

for.body11.preheader:                             ; preds = %if.then
  %5 = sext i32 %4 to i64
  %wide.trip.count61 = sext i32 %3 to i64
  %6 = sub nsw i64 %wide.trip.count61, %5
  %min.iters.check = icmp ult i64 %6, 4
  br i1 %min.iters.check, label %for.body11.preheader108, label %vector.ph

vector.ph:                                        ; preds = %for.body11.preheader
  %n.vec = and i64 %6, -4
  %7 = add nsw i64 %n.vec, %5
  %invariant.op130 = add i64 %5, -1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %9, %vector.body ]
  %.reass131 = add i64 %index, %invariant.op130
  %8 = getelementptr inbounds [12 x i32], ptr @__const.main.t2, i64 0, i64 %.reass131
  %wide.load = load <4 x i32>, ptr %8, align 4, !tbaa !5
  %9 = add <4 x i32> %wide.load, %vec.phi
  %index.next = add nuw i64 %index, 4
  %10 = icmp eq i64 %index.next, %n.vec
  br i1 %10, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %11 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %9)
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %for.end, label %for.body11.preheader108

for.body11.preheader108:                          ; preds = %for.body11.preheader, %middle.block
  %indvars.iv57.ph = phi i64 [ %5, %for.body11.preheader ], [ %7, %middle.block ]
  %total.039.ph = phi i32 [ 0, %for.body11.preheader ], [ %11, %middle.block ]
  br label %for.body11

for.body11:                                       ; preds = %for.body11.preheader108, %for.body11
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %for.body11 ], [ %indvars.iv57.ph, %for.body11.preheader108 ]
  %total.039 = phi i32 [ %add, %for.body11 ], [ %total.039.ph, %for.body11.preheader108 ]
  %12 = add nsw i64 %indvars.iv57, -1
  %arrayidx = getelementptr inbounds [12 x i32], ptr @__const.main.t2, i64 0, i64 %12
  %13 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %add = add nsw i32 %13, %total.039
  %indvars.iv.next58 = add nsw i64 %indvars.iv57, 1
  %exitcond62.not = icmp eq i64 %indvars.iv.next58, %wide.trip.count61
  br i1 %exitcond62.not, label %for.end, label %for.body11, !llvm.loop !14

for.end:                                          ; preds = %for.body11, %middle.block
  %add.lcssa = phi i32 [ %11, %middle.block ], [ %add, %for.body11 ]
  %rem12 = srem i32 %add.lcssa, 7
  %cmp13 = icmp eq i32 %rem12, 0
  %str.7.str.6 = select i1 %cmp13, ptr @str.7, ptr @str.6
  br label %for.inc82.sink.split

if.else17:                                        ; preds = %if.then
  %cmp18 = icmp slt i32 %3, %4
  br i1 %cmp18, label %for.body22.preheader, label %for.inc82

for.body22.preheader:                             ; preds = %if.else17
  %14 = sext i32 %3 to i64
  %wide.trip.count55 = sext i32 %4 to i64
  %15 = sub nsw i64 %wide.trip.count55, %14
  %min.iters.check64 = icmp ult i64 %15, 4
  br i1 %min.iters.check64, label %for.body22.preheader109, label %vector.ph65

vector.ph65:                                      ; preds = %for.body22.preheader
  %n.vec67 = and i64 %15, -4
  %16 = add nsw i64 %n.vec67, %14
  %invariant.op128 = add i64 %14, -1
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %vector.ph65
  %index69 = phi i64 [ 0, %vector.ph65 ], [ %index.next73, %vector.body68 ]
  %vec.phi70 = phi <4 x i32> [ zeroinitializer, %vector.ph65 ], [ %18, %vector.body68 ]
  %.reass129 = add i64 %index69, %invariant.op128
  %17 = getelementptr inbounds [12 x i32], ptr @__const.main.t2, i64 0, i64 %.reass129
  %wide.load72 = load <4 x i32>, ptr %17, align 4, !tbaa !5
  %18 = add <4 x i32> %wide.load72, %vec.phi70
  %index.next73 = add nuw i64 %index69, 4
  %19 = icmp eq i64 %index.next73, %n.vec67
  br i1 %19, label %middle.block74, label %vector.body68, !llvm.loop !15

middle.block74:                                   ; preds = %vector.body68
  %20 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %18)
  %cmp.n75 = icmp eq i64 %15, %n.vec67
  br i1 %cmp.n75, label %for.end29, label %for.body22.preheader109

for.body22.preheader109:                          ; preds = %for.body22.preheader, %middle.block74
  %indvars.iv51.ph = phi i64 [ %14, %for.body22.preheader ], [ %16, %middle.block74 ]
  %total.137.ph = phi i32 [ 0, %for.body22.preheader ], [ %20, %middle.block74 ]
  br label %for.body22

for.body22:                                       ; preds = %for.body22.preheader109, %for.body22
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %for.body22 ], [ %indvars.iv51.ph, %for.body22.preheader109 ]
  %total.137 = phi i32 [ %add26, %for.body22 ], [ %total.137.ph, %for.body22.preheader109 ]
  %21 = add nsw i64 %indvars.iv51, -1
  %arrayidx25 = getelementptr inbounds [12 x i32], ptr @__const.main.t2, i64 0, i64 %21
  %22 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %add26 = add nsw i32 %22, %total.137
  %indvars.iv.next52 = add nsw i64 %indvars.iv51, 1
  %exitcond56.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count55
  br i1 %exitcond56.not, label %for.end29, label %for.body22, !llvm.loop !16

for.end29:                                        ; preds = %for.body22, %middle.block74
  %add26.lcssa = phi i32 [ %20, %middle.block74 ], [ %add26, %for.body22 ]
  %rem30 = srem i32 %add26.lcssa, 7
  %cmp31 = icmp eq i32 %rem30, 0
  %str.5.str.4 = select i1 %cmp31, ptr @str.7, ptr @str.6
  br label %for.inc82.sink.split

if.else39:                                        ; preds = %for.body
  br i1 %cmp7, label %for.body44.preheader, label %if.else59

for.body44.preheader:                             ; preds = %if.else39
  %23 = sext i32 %4 to i64
  %wide.trip.count49 = sext i32 %3 to i64
  %24 = sub nsw i64 %wide.trip.count49, %23
  %min.iters.check79 = icmp ult i64 %24, 4
  br i1 %min.iters.check79, label %for.body44.preheader110, label %vector.ph80

vector.ph80:                                      ; preds = %for.body44.preheader
  %n.vec82 = and i64 %24, -4
  %25 = add nsw i64 %n.vec82, %23
  %invariant.op126 = add i64 %23, -1
  br label %vector.body83

vector.body83:                                    ; preds = %vector.body83, %vector.ph80
  %index84 = phi i64 [ 0, %vector.ph80 ], [ %index.next88, %vector.body83 ]
  %vec.phi85 = phi <4 x i32> [ zeroinitializer, %vector.ph80 ], [ %27, %vector.body83 ]
  %.reass127 = add i64 %index84, %invariant.op126
  %26 = getelementptr inbounds [12 x i32], ptr @__const.main.t1, i64 0, i64 %.reass127
  %wide.load87 = load <4 x i32>, ptr %26, align 4, !tbaa !5
  %27 = add <4 x i32> %wide.load87, %vec.phi85
  %index.next88 = add nuw i64 %index84, 4
  %28 = icmp eq i64 %index.next88, %n.vec82
  br i1 %28, label %middle.block89, label %vector.body83, !llvm.loop !17

middle.block89:                                   ; preds = %vector.body83
  %29 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %27)
  %cmp.n90 = icmp eq i64 %24, %n.vec82
  br i1 %cmp.n90, label %for.end51, label %for.body44.preheader110

for.body44.preheader110:                          ; preds = %for.body44.preheader, %middle.block89
  %indvars.iv45.ph = phi i64 [ %23, %for.body44.preheader ], [ %25, %middle.block89 ]
  %total.235.ph = phi i32 [ 0, %for.body44.preheader ], [ %29, %middle.block89 ]
  br label %for.body44

for.body44:                                       ; preds = %for.body44.preheader110, %for.body44
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %for.body44 ], [ %indvars.iv45.ph, %for.body44.preheader110 ]
  %total.235 = phi i32 [ %add48, %for.body44 ], [ %total.235.ph, %for.body44.preheader110 ]
  %30 = add nsw i64 %indvars.iv45, -1
  %arrayidx47 = getelementptr inbounds [12 x i32], ptr @__const.main.t1, i64 0, i64 %30
  %31 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  %add48 = add nsw i32 %31, %total.235
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, 1
  %exitcond50.not = icmp eq i64 %indvars.iv.next46, %wide.trip.count49
  br i1 %exitcond50.not, label %for.end51, label %for.body44, !llvm.loop !18

for.end51:                                        ; preds = %for.body44, %middle.block89
  %add48.lcssa = phi i32 [ %29, %middle.block89 ], [ %add48, %for.body44 ]
  %rem52 = srem i32 %add48.lcssa, 7
  %cmp53 = icmp eq i32 %rem52, 0
  %str.3.str.2 = select i1 %cmp53, ptr @str.7, ptr @str.6
  br label %for.inc82.sink.split

if.else59:                                        ; preds = %if.else39
  %cmp60 = icmp slt i32 %3, %4
  br i1 %cmp60, label %for.body64.preheader, label %for.inc82

for.body64.preheader:                             ; preds = %if.else59
  %32 = sext i32 %3 to i64
  %wide.trip.count = sext i32 %4 to i64
  %33 = sub nsw i64 %wide.trip.count, %32
  %min.iters.check94 = icmp ult i64 %33, 4
  br i1 %min.iters.check94, label %for.body64.preheader111, label %vector.ph95

vector.ph95:                                      ; preds = %for.body64.preheader
  %n.vec97 = and i64 %33, -4
  %34 = add nsw i64 %n.vec97, %32
  %invariant.op = add i64 %32, -1
  br label %vector.body98

vector.body98:                                    ; preds = %vector.body98, %vector.ph95
  %index99 = phi i64 [ 0, %vector.ph95 ], [ %index.next103, %vector.body98 ]
  %vec.phi100 = phi <4 x i32> [ zeroinitializer, %vector.ph95 ], [ %36, %vector.body98 ]
  %.reass = add i64 %index99, %invariant.op
  %35 = getelementptr inbounds [12 x i32], ptr @__const.main.t1, i64 0, i64 %.reass
  %wide.load102 = load <4 x i32>, ptr %35, align 4, !tbaa !5
  %36 = add <4 x i32> %wide.load102, %vec.phi100
  %index.next103 = add nuw i64 %index99, 4
  %37 = icmp eq i64 %index.next103, %n.vec97
  br i1 %37, label %middle.block104, label %vector.body98, !llvm.loop !19

middle.block104:                                  ; preds = %vector.body98
  %38 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %36)
  %cmp.n105 = icmp eq i64 %33, %n.vec97
  br i1 %cmp.n105, label %for.end71, label %for.body64.preheader111

for.body64.preheader111:                          ; preds = %for.body64.preheader, %middle.block104
  %indvars.iv.ph = phi i64 [ %32, %for.body64.preheader ], [ %34, %middle.block104 ]
  %total.333.ph = phi i32 [ 0, %for.body64.preheader ], [ %38, %middle.block104 ]
  br label %for.body64

for.body64:                                       ; preds = %for.body64.preheader111, %for.body64
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body64 ], [ %indvars.iv.ph, %for.body64.preheader111 ]
  %total.333 = phi i32 [ %add68, %for.body64 ], [ %total.333.ph, %for.body64.preheader111 ]
  %39 = add nsw i64 %indvars.iv, -1
  %arrayidx67 = getelementptr inbounds [12 x i32], ptr @__const.main.t1, i64 0, i64 %39
  %40 = load i32, ptr %arrayidx67, align 4, !tbaa !5
  %add68 = add nsw i32 %40, %total.333
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end71, label %for.body64, !llvm.loop !20

for.end71:                                        ; preds = %for.body64, %middle.block104
  %add68.lcssa = phi i32 [ %38, %middle.block104 ], [ %add68, %for.body64 ]
  %rem72 = srem i32 %add68.lcssa, 7
  %cmp73 = icmp eq i32 %rem72, 0
  %str.1.str = select i1 %cmp73, ptr @str.7, ptr @str.6
  br label %for.inc82.sink.split

for.inc82.sink.split:                             ; preds = %for.end71, %for.end51, %for.end29, %for.end
  %str.4.sink = phi ptr [ %str.7.str.6, %for.end ], [ %str.5.str.4, %for.end29 ], [ %str.3.str.2, %for.end51 ], [ %str.1.str, %for.end71 ]
  %puts27 = call i32 @puts(ptr nonnull dereferenceable(1) %str.4.sink)
  br label %for.inc82

for.inc82:                                        ; preds = %for.inc82.sink.split, %if.else17, %if.else59
  %inc83 = add nuw nsw i32 %i.042, 1
  %41 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %inc83, %41
  br i1 %cmp, label %for.body, label %for.end84, !llvm.loop !21

for.end84:                                        ; preds = %for.inc82, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y) #5
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
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #4

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
!9 = distinct !{!9, !10, !11, !12, !13}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10, !11, !12, !13}
!16 = distinct !{!16, !10, !11, !12}
!17 = distinct !{!17, !10, !11, !12, !13}
!18 = distinct !{!18, !10, !11, !12}
!19 = distinct !{!19, !10, !11, !12, !13}
!20 = distinct !{!20, !10, !11, !12}
!21 = distinct !{!21, !10, !11}
