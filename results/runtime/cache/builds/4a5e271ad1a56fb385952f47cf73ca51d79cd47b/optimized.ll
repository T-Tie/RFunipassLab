; ModuleID = '<stdin>'
source_filename = "/tmp/tmpjwe4_vbr.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %N = alloca i32, align 4
  %sz = alloca [500 x i32], align 16
  %js = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %N) #5
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef nonnull align 16 %sz) #5
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef nonnull align 16 %js) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %N)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond6

for.body:                                         ; preds = %for.cond
  %sub = add nsw i32 %0, -1
  %2 = sext i32 %sub to i64
  %cmp1 = icmp slt i64 %indvars.iv, %2
  %spec.select = select i1 %cmp1, ptr @.str.1, ptr @.str
  %arrayidx4 = getelementptr inbounds nuw [500 x i32], ptr %sz, i64 0, i64 %indvars.iv
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull %spec.select, ptr noundef nonnull %arrayidx4)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond6:                                        ; preds = %for.cond6.preheader, %for.inc19
  %indvars.iv53 = phi i64 [ 0, %for.cond6.preheader ], [ %indvars.iv.next54, %for.inc19 ]
  %t.0 = phi i32 [ -1, %for.cond6.preheader ], [ %t.1, %for.inc19 ]
  %exitcond.not = icmp eq i64 %indvars.iv53, %wide.trip.count
  br i1 %exitcond.not, label %for.cond22.preheader, label %for.body8

for.cond22.preheader:                             ; preds = %for.cond6
  %smax61 = call i32 @llvm.smax.i32(i32 %t.0, i32 noundef 0)
  %3 = call i32 @llvm.smax.i32(i32 %t.0, i32 noundef -1)
  %4 = add i32 %3, 2
  %wide.trip.count62 = zext nneg i32 %smax61 to i64
  br label %for.cond22

for.body8:                                        ; preds = %for.cond6
  %arrayidx10 = getelementptr inbounds nuw [500 x i32], ptr %sz, i64 0, i64 %indvars.iv53
  %5 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %6 = and i32 %5, -2147483647
  %cmp11 = icmp eq i32 %6, 1
  br i1 %cmp11, label %if.then12, label %for.inc19

if.then12:                                        ; preds = %for.body8
  %inc13 = add nsw i32 %t.0, 1
  %idxprom16 = sext i32 %inc13 to i64
  %arrayidx17 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom16
  store i32 %5, ptr %arrayidx17, align 4, !tbaa !5
  br label %for.inc19

for.inc19:                                        ; preds = %for.body8, %if.then12
  %t.1 = phi i32 [ %inc13, %if.then12 ], [ %t.0, %for.body8 ]
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %for.cond6, !llvm.loop !12

for.cond22:                                       ; preds = %for.cond22.preheader, %for.inc49
  %q.0 = phi i32 [ %inc50, %for.inc49 ], [ 1, %for.cond22.preheader ]
  %exitcond65 = icmp eq i32 %q.0, %4
  br i1 %exitcond65, label %for.cond52.preheader, label %for.cond25

for.cond52.preheader:                             ; preds = %for.cond22
  %7 = sext i32 %t.0 to i64
  %smax70 = call i32 @llvm.smax.i32(i32 %t.0, i32 noundef -1)
  %8 = add i32 %smax70, 1
  %wide.trip.count71 = zext i32 %8 to i64
  br label %for.cond52

for.cond25:                                       ; preds = %for.cond22, %for.inc46
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %for.inc46 ], [ 0, %for.cond22 ]
  %exitcond63.not = icmp eq i64 %indvars.iv57, %wide.trip.count62
  br i1 %exitcond63.not, label %for.inc49, label %for.body27

for.body27:                                       ; preds = %for.cond25
  %arrayidx29 = getelementptr inbounds nuw [500 x i32], ptr %js, i64 0, i64 %indvars.iv57
  %9 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %arrayidx32 = getelementptr inbounds nuw [500 x i32], ptr %js, i64 0, i64 %indvars.iv.next58
  %10 = load i32, ptr %arrayidx32, align 4, !tbaa !5, !invariant.load !13
  %cmp33 = icmp sgt i32 %9, %10
  br i1 %cmp33, label %if.then34, label %for.inc46

if.then34:                                        ; preds = %for.body27
  store i32 %10, ptr %arrayidx29, align 4, !tbaa !5
  store i32 %9, ptr %arrayidx32, align 4, !tbaa !5
  br label %for.inc46

for.inc46:                                        ; preds = %for.body27, %if.then34
  br label %for.cond25, !llvm.loop !14

for.inc49:                                        ; preds = %for.cond25
  %inc50 = add nuw i32 %q.0, 1
  br label %for.cond22, !llvm.loop !15

for.cond52:                                       ; preds = %for.cond52.preheader, %for.body54
  %indvars.iv66 = phi i64 [ 0, %for.cond52.preheader ], [ %indvars.iv.next67, %for.body54 ]
  %exitcond72 = icmp eq i64 %indvars.iv66, %wide.trip.count71
  br i1 %exitcond72, label %for.end67, label %for.body54

for.body54:                                       ; preds = %for.cond52
  %cmp55 = icmp slt i64 %indvars.iv66, %7
  %11 = getelementptr inbounds nuw [500 x i32], ptr %js, i64 0, i64 %indvars.iv66
  %12 = load i32, ptr %11, align 4, !tbaa !5
  %.str.2..str.3 = select i1 %cmp55, ptr @.str.2, ptr @.str.3
  %call59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.2..str.3, i32 noundef %12) #6
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  br label %for.cond52, !llvm.loop !16

for.end67:                                        ; preds = %for.cond52
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef nonnull %js) #6
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef nonnull %sz) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %N) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind willreturn }
attributes #6 = { nounwind }

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
