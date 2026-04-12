; ModuleID = '<stdin>'
source_filename = "/tmp/tmph_0eye5i.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d+%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca [8 x [8 x i32]], align 16
  %p = alloca [8 x i32], align 16
  %q = alloca [8 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %m) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 32, ptr noundef nonnull align 16 %p) #4
  call void @llvm.lifetime.start.p0(i64 noundef 32, ptr noundef nonnull align 16 %q) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %m, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %for.inc7 ], [ 0, %entry ]
  %0 = load i32, ptr %m, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv40, %1
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %2 = load i32, ptr %n, align 4
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 0)
  %smax50 = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count51 = zext nneg i32 %smax50 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv40, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc34
  %indvars.iv46 = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next47, %for.inc34 ]
  %exitcond52.not = icmp eq i64 %indvars.iv46, %wide.trip.count51
  br i1 %exitcond52.not, label %for.cond37, label %for.body12

for.body12:                                       ; preds = %for.cond10
  %arrayidx14 = getelementptr inbounds nuw [8 x i32], ptr %p, i64 0, i64 %indvars.iv46
  store i32 0, ptr %arrayidx14, align 4, !tbaa !5
  %arrayidx19 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv46
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc31, %for.body12
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %for.inc31 ], [ 0, %for.body12 ]
  %exitcond.not = icmp eq i64 %indvars.iv43, %wide.trip.count
  br i1 %exitcond.not, label %for.inc34, label %for.body17

for.body17:                                       ; preds = %for.cond15
  %arrayidx21 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv46, i64 %indvars.iv43
  %5 = load i32, ptr %arrayidx21, align 4, !tbaa !5, !invariant.load !13
  %6 = load i32, ptr %arrayidx19, align 4, !tbaa !5, !invariant.load !13
  %cmp28 = icmp sgt i32 %5, %6
  br i1 %cmp28, label %if.then, label %for.inc31

if.then:                                          ; preds = %for.body17
  %7 = trunc nuw nsw i64 %indvars.iv43 to i32
  store i32 %7, ptr %arrayidx14, align 4, !tbaa !5
  br label %for.inc31

for.inc31:                                        ; preds = %for.body17, %if.then
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  br label %for.cond15, !llvm.loop !14

for.inc34:                                        ; preds = %for.cond15
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br label %for.cond10, !llvm.loop !15

for.cond37:                                       ; preds = %for.cond10, %for.inc63
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.inc63 ], [ 0, %for.cond10 ]
  %exitcond63.not = icmp eq i64 %indvars.iv58, %wide.trip.count
  br i1 %exitcond63.not, label %for.cond66, label %for.body39

for.body39:                                       ; preds = %for.cond37
  %arrayidx41 = getelementptr inbounds nuw [8 x i32], ptr %q, i64 0, i64 %indvars.iv58
  store i32 0, ptr %arrayidx41, align 4, !tbaa !5
  %arrayidx54 = getelementptr inbounds nuw [8 x i32], ptr %a, i64 0, i64 %indvars.iv58
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc60, %for.body39
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.inc60 ], [ 0, %for.body39 ]
  %exitcond57.not = icmp eq i64 %indvars.iv53, %wide.trip.count51
  br i1 %exitcond57.not, label %for.inc63, label %for.body44

for.body44:                                       ; preds = %for.cond42
  %arrayidx48 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv53, i64 %indvars.iv58
  %8 = load i32, ptr %arrayidx48, align 4, !tbaa !5, !invariant.load !13
  %9 = load i32, ptr %arrayidx54, align 4, !tbaa !5, !invariant.load !13
  %cmp55 = icmp slt i32 %8, %9
  br i1 %cmp55, label %if.then56, label %for.inc60

if.then56:                                        ; preds = %for.body44
  %10 = trunc nuw nsw i64 %indvars.iv53 to i32
  store i32 %10, ptr %arrayidx41, align 4, !tbaa !5
  br label %for.inc60

for.inc60:                                        ; preds = %for.body44, %if.then56
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %for.cond42, !llvm.loop !16

for.inc63:                                        ; preds = %for.cond42
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %for.cond37, !llvm.loop !17

for.cond66:                                       ; preds = %for.cond37, %for.inc84
  %.pre73 = phi i32 [ %.pre, %for.inc84 ], [ %0, %for.cond37 ]
  %indvars.iv70 = phi i64 [ %indvars.iv.next71, %for.inc84 ], [ 0, %for.cond37 ]
  %r.0 = phi i32 [ %r.1, %for.inc84 ], [ 0, %for.cond37 ]
  %11 = sext i32 %.pre73 to i64
  %cmp67 = icmp slt i64 %indvars.iv70, %11
  br i1 %cmp67, label %for.cond69.preheader, label %for.end86

for.cond69.preheader:                             ; preds = %for.cond66
  %12 = load i32, ptr %n, align 4, !tbaa !5
  %arrayidx73 = getelementptr inbounds nuw [8 x i32], ptr %p, i64 0, i64 %indvars.iv70
  %smax67 = call i32 @llvm.smax.i32(i32 %12, i32 0)
  %wide.trip.count68 = zext nneg i32 %smax67 to i64
  br label %for.cond69

for.cond69:                                       ; preds = %for.cond69.preheader, %for.inc81
  %indvars.iv64 = phi i64 [ 0, %for.cond69.preheader ], [ %indvars.iv.next65, %for.inc81 ]
  %exitcond69.not = icmp eq i64 %indvars.iv64, %wide.trip.count68
  br i1 %exitcond69.not, label %for.inc84, label %for.body71

for.body71:                                       ; preds = %for.cond69
  %13 = load i32, ptr %arrayidx73, align 4, !tbaa !5, !invariant.load !13
  %14 = zext i32 %13 to i64
  %cmp74 = icmp eq i64 %indvars.iv64, %14
  br i1 %cmp74, label %land.lhs.true, label %for.inc81

land.lhs.true:                                    ; preds = %for.body71
  %arrayidx76 = getelementptr inbounds nuw [8 x i32], ptr %q, i64 0, i64 %indvars.iv64
  %15 = load i32, ptr %arrayidx76, align 4, !tbaa !5, !invariant.load !13
  %16 = zext i32 %15 to i64
  %cmp77 = icmp eq i64 %indvars.iv70, %16
  br i1 %cmp77, label %if.then78, label %for.inc81

if.then78:                                        ; preds = %land.lhs.true
  %17 = trunc nuw nsw i64 %indvars.iv64 to i32
  %18 = trunc nuw nsw i64 %indvars.iv70 to i32
  %call79 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %18, i32 noundef %17)
  %.pre.pre = load i32, ptr %m, align 4, !tbaa !5
  br label %for.inc84

for.inc81:                                        ; preds = %for.body71, %land.lhs.true
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  br label %for.cond69, !llvm.loop !18

for.inc84:                                        ; preds = %for.cond69, %if.then78
  %.pre = phi i32 [ %.pre.pre, %if.then78 ], [ %.pre73, %for.cond69 ]
  %r.1 = phi i32 [ 1, %if.then78 ], [ %r.0, %for.cond69 ]
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  br label %for.cond66, !llvm.loop !19

for.end86:                                        ; preds = %for.cond66
  %cmp87 = icmp eq i32 %r.0, 0
  br i1 %cmp87, label %if.then88, label %if.end90

if.then88:                                        ; preds = %for.end86
  %call89 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %for.end86
  call void @llvm.lifetime.end.p0(i64 noundef 32, ptr noundef nonnull %q) #5
  call void @llvm.lifetime.end.p0(i64 noundef 32, ptr noundef nonnull %p) #5
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind }
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
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
