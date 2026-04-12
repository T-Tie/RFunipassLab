; ModuleID = '<stdin>'
source_filename = "/tmp/tmpxo2st5b0.cpp"
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
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %hang = alloca [10 x i32], align 16
  %lie = alloca [10 x i32], align 16
  %a = alloca [10 x [10 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %hang) #5
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %lie) #5
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %a) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %m, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %for.inc7 ], [ 0, %entry ]
  %0 = load i32, ptr %m, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv34, %1
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %2 = load i32, ptr %n, align 4
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 0)
  %smax44 = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count45 = zext nneg i32 %smax44 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp2, label %for.body3, label %for.inc7

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [10 x [10 x i32]], ptr %a, i64 0, i64 %indvars.iv34, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc30
  %indvars.iv40 = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next41, %for.inc30 ]
  %exitcond46.not = icmp eq i64 %indvars.iv40, %wide.trip.count45
  br i1 %exitcond46.not, label %for.cond33.preheader, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond10
  %arrayidx26 = getelementptr inbounds nuw [10 x i32], ptr %hang, i64 0, i64 %indvars.iv40
  br label %for.cond13

for.cond33.preheader:                             ; preds = %for.cond10
  %wide.trip.count56 = zext nneg i32 %smax to i64
  br label %for.cond33

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc27
  %indvars.iv37 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next38, %for.inc27 ]
  %max.0 = phi i32 [ 0, %for.cond13.preheader ], [ %max.1, %for.inc27 ]
  %exitcond.not = icmp eq i64 %indvars.iv37, %wide.trip.count
  br i1 %exitcond.not, label %for.inc30, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %arrayidx19 = getelementptr inbounds nuw [10 x [10 x i32]], ptr %a, i64 0, i64 %indvars.iv40, i64 %indvars.iv37
  %5 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp sgt i32 %5, %max.0
  br i1 %cmp20, label %if.then, label %for.inc27

if.then:                                          ; preds = %for.body15
  %6 = trunc nuw nsw i64 %indvars.iv37 to i32
  store i32 %6, ptr %arrayidx26, align 4, !tbaa !5
  br label %for.inc27

for.inc27:                                        ; preds = %for.body15, %if.then
  %max.1 = phi i32 [ %5, %if.then ], [ %max.0, %for.body15 ]
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond13, !llvm.loop !13

for.inc30:                                        ; preds = %for.cond13
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %for.cond10, !llvm.loop !14

for.cond33:                                       ; preds = %for.cond33.preheader, %for.inc55
  %indvars.iv52 = phi i64 [ 0, %for.cond33.preheader ], [ %indvars.iv.next53, %for.inc55 ]
  %exitcond57.not = icmp eq i64 %indvars.iv52, %wide.trip.count56
  br i1 %exitcond57.not, label %for.cond58, label %for.cond36.preheader

for.cond36.preheader:                             ; preds = %for.cond33
  %arrayidx50 = getelementptr inbounds nuw [10 x i32], ptr %lie, i64 0, i64 %indvars.iv52
  br label %for.cond36

for.cond36:                                       ; preds = %for.cond36.preheader, %for.inc52
  %indvars.iv47 = phi i64 [ 0, %for.cond36.preheader ], [ %indvars.iv.next48, %for.inc52 ]
  %min.0 = phi i32 [ 1000, %for.cond36.preheader ], [ %min.1, %for.inc52 ]
  %exitcond51.not = icmp eq i64 %indvars.iv47, %wide.trip.count45
  br i1 %exitcond51.not, label %for.inc55, label %for.body38

for.body38:                                       ; preds = %for.cond36
  %arrayidx42 = getelementptr inbounds nuw [10 x [10 x i32]], ptr %a, i64 0, i64 %indvars.iv47, i64 %indvars.iv52
  %7 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %cmp43 = icmp slt i32 %7, %min.0
  br i1 %cmp43, label %if.then44, label %for.inc52

if.then44:                                        ; preds = %for.body38
  %8 = trunc nuw nsw i64 %indvars.iv47 to i32
  store i32 %8, ptr %arrayidx50, align 4, !tbaa !5
  br label %for.inc52

for.inc52:                                        ; preds = %for.body38, %if.then44
  %min.1 = phi i32 [ %7, %if.then44 ], [ %min.0, %for.body38 ]
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br label %for.cond36, !llvm.loop !15

for.inc55:                                        ; preds = %for.cond36
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  br label %for.cond33, !llvm.loop !16

for.cond58:                                       ; preds = %for.cond33, %for.inc72
  %.pre61 = phi i32 [ %.pre, %for.inc72 ], [ %0, %for.cond33 ]
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.inc72 ], [ 0, %for.cond33 ]
  %pan.0 = phi i32 [ %pan.1, %for.inc72 ], [ 0, %for.cond33 ]
  %9 = sext i32 %.pre61 to i64
  %cmp59 = icmp slt i64 %indvars.iv58, %9
  br i1 %cmp59, label %for.body60, label %for.end74

for.body60:                                       ; preds = %for.cond58
  %arrayidx62 = getelementptr inbounds nuw [10 x i32], ptr %hang, i64 0, i64 %indvars.iv58
  %10 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %idxprom63 = sext i32 %10 to i64
  %arrayidx64 = getelementptr inbounds [10 x i32], ptr %lie, i64 0, i64 %idxprom63
  %11 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  %12 = zext i32 %11 to i64
  %cmp65 = icmp eq i64 %indvars.iv58, %12
  br i1 %cmp65, label %if.then66, label %for.inc72

if.then66:                                        ; preds = %for.body60
  %13 = trunc nuw nsw i64 %indvars.iv58 to i32
  %call69 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %13, i32 noundef %10)
  %inc70 = add nsw i32 %pan.0, 1
  %.pre.pre = load i32, ptr %m, align 4, !tbaa !5
  br label %for.inc72

for.inc72:                                        ; preds = %for.body60, %if.then66
  %.pre = phi i32 [ %.pre.pre, %if.then66 ], [ %.pre61, %for.body60 ]
  %pan.1 = phi i32 [ %inc70, %if.then66 ], [ %pan.0, %for.body60 ]
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %for.cond58, !llvm.loop !17

for.end74:                                        ; preds = %for.cond58
  %cmp75 = icmp eq i32 %pan.0, 0
  br i1 %cmp75, label %if.then76, label %if.end78

if.then76:                                        ; preds = %for.end74
  %call77 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %for.end74
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %lie) #5
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %hang) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
