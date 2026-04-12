; ModuleID = '<stdin>'
source_filename = "/tmp/tmpydyhgqy0.cpp"
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
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %sz = alloca [8 x [8 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %row) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %col) #5
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %sz) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %row, ptr noundef nonnull %col)
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.inc7 ], [ 0, %entry ]
  %0 = load i32, ptr %row, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv29, %1
  br i1 %cmp, label %for.cond1, label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %2 = load i32, ptr %col, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp2, label %for.body3, label %for.inc7

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv29, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond, %for.inc64
  %.pre44 = phi i32 [ %.pre, %for.inc64 ], [ %0, %for.cond ]
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %for.inc64 ], [ 0, %for.cond ]
  %p.0 = phi i32 [ %p.1, %for.inc64 ], [ 0, %for.cond ]
  %4 = sext i32 %.pre44 to i64
  %cmp11 = icmp sge i64 %indvars.iv41, %4
  %cmp13 = icmp eq i32 %p.0, 1
  %or.cond = or i1 %cmp13, %cmp11
  br i1 %or.cond, label %for.end66, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.cond10
  %5 = load i32, ptr %col, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %5, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond14

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc37
  %indvars.iv32 = phi i64 [ 1, %for.cond14.preheader ], [ %indvars.iv.next33, %for.inc37 ]
  %m.0 = phi i32 [ 0, %for.cond14.preheader ], [ %m.1, %for.inc37 ]
  %exitcond.not = icmp eq i64 %indvars.iv32, %wide.trip.count
  br i1 %exitcond.not, label %for.cond40.preheader, label %for.body16

for.cond40.preheader:                             ; preds = %for.cond14
  %idxprom45 = zext nneg i32 %m.0 to i64
  %arrayidx50 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv41, i64 %idxprom45
  %sub53 = add nsw i32 %.pre44, -1
  %6 = zext i32 %sub53 to i64
  %wide.trip.count39 = zext i32 %.pre44 to i64
  br label %for.cond40

for.body16:                                       ; preds = %for.cond14
  %arrayidx20 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv41, i64 %indvars.iv32
  %7 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %8 = add nsw i64 %indvars.iv32, -1
  %arrayidx24 = getelementptr inbounds [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv41, i64 %8
  %9 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %cmp25 = icmp sgt i32 %7, %9
  %10 = trunc nuw nsw i64 %indvars.iv32 to i32
  br i1 %cmp25, label %for.inc37, label %if.else

if.else:                                          ; preds = %for.body16
  store i32 %9, ptr %arrayidx20, align 4, !tbaa !5
  br label %for.inc37

for.inc37:                                        ; preds = %for.body16, %if.else
  %m.1 = phi i32 [ %m.0, %if.else ], [ %10, %for.body16 ]
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond14, !llvm.loop !13

for.cond40:                                       ; preds = %if.then52, %for.cond40.preheader
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %if.then52 ], [ 0, %for.cond40.preheader ]
  %exitcond40.not = icmp eq i64 %indvars.iv36, %wide.trip.count39
  br i1 %exitcond40.not, label %for.inc64, label %for.body42

for.body42:                                       ; preds = %for.cond40
  %arrayidx46 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %sz, i64 0, i64 %indvars.iv36, i64 %idxprom45
  %11 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %12 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %cmp51.not = icmp slt i32 %11, %12
  br i1 %cmp51.not, label %for.inc64, label %if.then52

if.then52:                                        ; preds = %for.body42
  %cmp54 = icmp eq i64 %indvars.iv36, %6
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  br i1 %cmp54, label %if.then55, label %for.cond40, !llvm.loop !14

if.then55:                                        ; preds = %if.then52
  %13 = trunc nuw nsw i64 %indvars.iv41 to i32
  %call56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %13, i32 noundef %m.0)
  %.pre.pre = load i32, ptr %row, align 4, !tbaa !5
  br label %for.inc64

for.inc64:                                        ; preds = %for.cond40, %for.body42, %if.then55
  %.pre = phi i32 [ %.pre.pre, %if.then55 ], [ %.pre44, %for.body42 ], [ %.pre44, %for.cond40 ]
  %p.1 = phi i32 [ 1, %if.then55 ], [ 0, %for.body42 ], [ 0, %for.cond40 ]
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br label %for.cond10, !llvm.loop !15

for.end66:                                        ; preds = %for.cond10
  %cmp67 = icmp eq i32 %p.0, 0
  br i1 %cmp67, label %if.then68, label %if.end70

if.then68:                                        ; preds = %for.end66
  %call69 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %if.end70

if.end70:                                         ; preds = %if.then68, %for.end66
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %sz) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %col) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %row) #5
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
