; ModuleID = '<stdin>'
source_filename = "/tmp/tmpt2t9wx3f.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d+%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [8 x [8 x i32]], align 16
  %min = alloca [8 x i32], align 16
  %arrow = alloca [8 x i32], align 16
  %low = alloca [8 x i32], align 16
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef nonnull align 16 %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 32, ptr noundef nonnull align 16 %min) #4
  call void @llvm.lifetime.start.p0(i64 noundef 32, ptr noundef nonnull align 16 %arrow) #4
  call void @llvm.lifetime.start.p0(i64 noundef 32, ptr noundef nonnull align 16 %low) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %m) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %m, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %for.inc7 ], [ 0, %entry ]
  %0 = load i32, ptr %m, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv54, %1
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %2 = load i32, ptr %n, align 4
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 noundef 0)
  %smax64 = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count65 = zext nneg i32 %smax64 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv54, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc39
  %indvars.iv60 = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next61, %for.inc39 ]
  %exitcond66.not = icmp eq i64 %indvars.iv60, %wide.trip.count65
  br i1 %exitcond66.not, label %for.cond42, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond10
  %arrayidx17 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv60
  %arrayidx35 = getelementptr inbounds nuw [8 x i32], ptr %arrow, i64 0, i64 %indvars.iv60
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc36
  %indvars.iv57 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next58, %for.inc36 ]
  %exitcond.not = icmp eq i64 %indvars.iv57, %wide.trip.count
  br i1 %exitcond.not, label %for.inc39, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %5 = load i32, ptr %arrayidx17, align 16, !tbaa !5, !invariant.load !13
  %arrayidx24 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv60, i64 %indvars.iv57
  %6 = load i32, ptr %arrayidx24, align 4, !tbaa !5, !invariant.load !13
  %cmp27 = icmp sgt i32 %6, %5
  br i1 %cmp27, label %if.then, label %for.inc36

if.then:                                          ; preds = %for.body15
  %7 = trunc nuw nsw i64 %indvars.iv57 to i32
  store i32 %7, ptr %arrayidx35, align 4, !tbaa !5
  br label %for.inc36

for.inc36:                                        ; preds = %for.body15, %if.then
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  br label %for.cond13, !llvm.loop !14

for.inc39:                                        ; preds = %for.cond13
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  br label %for.cond10, !llvm.loop !15

for.cond42:                                       ; preds = %for.cond10, %for.inc73
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.inc73 ], [ 0, %for.cond10 ]
  %exitcond77.not = icmp eq i64 %indvars.iv72, %wide.trip.count
  br i1 %exitcond77.not, label %for.cond76, label %for.cond45.preheader

for.cond45.preheader:                             ; preds = %for.cond42
  %arrayidx50 = getelementptr inbounds nuw [8 x i32], ptr %a, i64 0, i64 %indvars.iv72
  %arrayidx52 = getelementptr inbounds nuw [8 x i32], ptr %min, i64 0, i64 %indvars.iv72
  %arrayidx68 = getelementptr inbounds nuw [8 x i32], ptr %low, i64 0, i64 %indvars.iv72
  br label %for.cond45

for.cond45:                                       ; preds = %for.cond45.preheader, %for.inc70
  %indvars.iv67 = phi i64 [ 0, %for.cond45.preheader ], [ %indvars.iv.next68, %for.inc70 ]
  %exitcond71.not = icmp eq i64 %indvars.iv67, %wide.trip.count65
  br i1 %exitcond71.not, label %for.inc73, label %for.body47

for.body47:                                       ; preds = %for.cond45
  %8 = load i32, ptr %arrayidx50, align 4, !tbaa !5, !invariant.load !13
  store i32 %8, ptr %arrayidx52, align 4, !tbaa !5
  %arrayidx56 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv67, i64 %indvars.iv72
  %9 = load i32, ptr %arrayidx56, align 4, !tbaa !5, !invariant.load !13
  %cmp59 = icmp slt i32 %9, %8
  br i1 %cmp59, label %if.then60, label %for.inc70

if.then60:                                        ; preds = %for.body47
  store i32 %9, ptr %arrayidx52, align 4, !tbaa !5
  %10 = trunc nuw nsw i64 %indvars.iv67 to i32
  store i32 %10, ptr %arrayidx68, align 4, !tbaa !5
  br label %for.inc70

for.inc70:                                        ; preds = %for.body47, %if.then60
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  br label %for.cond45, !llvm.loop !16

for.inc73:                                        ; preds = %for.cond45
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  br label %for.cond42, !llvm.loop !17

for.cond76:                                       ; preds = %for.cond42, %for.inc98
  %.pre87 = phi i32 [ %.pre, %for.inc98 ], [ %0, %for.cond42 ]
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %for.inc98 ], [ 0, %for.cond42 ]
  %p.0 = phi i32 [ %p.1, %for.inc98 ], [ 0, %for.cond42 ]
  %11 = sext i32 %.pre87 to i64
  %cmp77 = icmp slt i64 %indvars.iv84, %11
  br i1 %cmp77, label %for.cond79.preheader, label %for.end100

for.cond79.preheader:                             ; preds = %for.cond76
  %12 = load i32, ptr %n, align 4, !tbaa !5
  %arrayidx88 = getelementptr inbounds nuw [8 x i32], ptr %arrow, i64 0, i64 %indvars.iv84
  %smax81 = call i32 @llvm.smax.i32(i32 %12, i32 noundef 0)
  %wide.trip.count82 = zext nneg i32 %smax81 to i64
  br label %for.cond79

for.cond79:                                       ; preds = %for.cond79.preheader, %for.inc95
  %indvars.iv78 = phi i64 [ 0, %for.cond79.preheader ], [ %indvars.iv.next79, %for.inc95 ]
  %exitcond83.not = icmp eq i64 %indvars.iv78, %wide.trip.count82
  br i1 %exitcond83.not, label %for.inc98, label %for.body81

for.body81:                                       ; preds = %for.cond79
  %arrayidx83 = getelementptr inbounds nuw [8 x i32], ptr %min, i64 0, i64 %indvars.iv78
  %13 = load i32, ptr %arrayidx83, align 4, !tbaa !5, !invariant.load !13
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %for.inc95, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body81
  %arrayidx85 = getelementptr inbounds nuw [8 x i32], ptr %low, i64 0, i64 %indvars.iv78
  %14 = load i32, ptr %arrayidx85, align 4, !tbaa !5, !invariant.load !13
  %15 = zext i32 %14 to i64
  %cmp86 = icmp eq i64 %indvars.iv84, %15
  br i1 %cmp86, label %land.end, label %for.inc95

land.end:                                         ; preds = %land.lhs.true
  %16 = load i32, ptr %arrayidx88, align 4, !tbaa !5, !invariant.load !13
  %17 = zext i32 %16 to i64
  %cmp89 = icmp eq i64 %indvars.iv78, %17
  br i1 %cmp89, label %if.then92, label %for.inc95

if.then92:                                        ; preds = %land.end
  %18 = trunc nuw nsw i64 %indvars.iv78 to i32
  %19 = trunc nuw nsw i64 %indvars.iv84 to i32
  %call93 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %19, i32 noundef %18)
  %.pre.pre = load i32, ptr %m, align 4, !tbaa !5
  br label %for.inc98

for.inc95:                                        ; preds = %for.body81, %land.lhs.true, %land.end
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br label %for.cond79, !llvm.loop !18

for.inc98:                                        ; preds = %for.cond79, %if.then92
  %.pre = phi i32 [ %.pre.pre, %if.then92 ], [ %.pre87, %for.cond79 ]
  %p.1 = phi i32 [ 1, %if.then92 ], [ %p.0, %for.cond79 ]
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  br label %for.cond76, !llvm.loop !19

for.end100:                                       ; preds = %for.cond76
  %cmp101 = icmp eq i32 %p.0, 0
  br i1 %cmp101, label %if.then102, label %if.end104

if.then102:                                       ; preds = %for.end100
  %call103 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %for.end100
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m) #5
  call void @llvm.lifetime.end.p0(i64 noundef 32, ptr noundef nonnull %low) #5
  call void @llvm.lifetime.end.p0(i64 noundef 32, ptr noundef nonnull %arrow) #5
  call void @llvm.lifetime.end.p0(i64 noundef 32, ptr noundef nonnull %min) #5
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef nonnull %a) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!12 = distinct !{!12, !10, !11}
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
