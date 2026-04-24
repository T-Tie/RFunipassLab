; ModuleID = '<stdin>'
source_filename = "/tmp/tmpc5ej7hzs.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %sz = alloca [500 x i32], align 16
  %jishu = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef nonnull align 16 %sz) #4
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef nonnull align 16 %jishu) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond2

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %sz, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.body4
  %indvars.iv26 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next27, %for.body4 ]
  %exitcond.not = icmp eq i64 %indvars.iv26, %wide.trip.count
  br i1 %exitcond.not, label %for.cond23.preheader, label %for.body4

for.cond23.preheader:                             ; preds = %for.cond2
  %2 = add nuw i32 %smax, 1
  br label %for.cond23

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [500 x i32], ptr %sz, i64 0, i64 %indvars.iv26
  %3 = load i32, ptr %arrayidx6, align 4, !tbaa !5, !invariant.load !12
  %4 = and i32 %3, 1
  %cmp7.not = icmp eq i32 %4, 0
  %spec.select = select i1 %cmp7.not, i32 0, i32 %3
  %5 = getelementptr inbounds nuw [500 x i32], ptr %jishu, i64 0, i64 %indvars.iv26
  store i32 %spec.select, ptr %5, align 4, !tbaa !5
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond2, !llvm.loop !13

for.cond23:                                       ; preds = %for.cond23.preheader, %for.inc49
  %indvars.iv34.in = phi i32 [ %0, %for.cond23.preheader ], [ %indvars.iv34, %for.inc49 ]
  %a.0 = phi i32 [ 1, %for.cond23.preheader ], [ %inc50, %for.inc49 ]
  %indvars.iv34 = add i32 %indvars.iv34.in, -1
  %exitcond39 = icmp eq i32 %a.0, %2
  br i1 %exitcond39, label %for.cond52, label %for.cond26.preheader

for.cond26.preheader:                             ; preds = %for.cond23
  %smax36 = call i32 @llvm.smax.i32(i32 %indvars.iv34, i32 0)
  %wide.trip.count37 = zext nneg i32 %smax36 to i64
  br label %for.cond26

for.cond26:                                       ; preds = %for.cond26.preheader, %for.inc46
  %indvars.iv30 = phi i64 [ 0, %for.cond26.preheader ], [ %indvars.iv.next31, %for.inc46 ]
  %exitcond38.not = icmp eq i64 %indvars.iv30, %wide.trip.count37
  br i1 %exitcond38.not, label %for.inc49, label %for.body28

for.body28:                                       ; preds = %for.cond26
  %arrayidx30 = getelementptr inbounds nuw [500 x i32], ptr %jishu, i64 0, i64 %indvars.iv30
  %6 = load i32, ptr %arrayidx30, align 4, !tbaa !5, !invariant.load !12
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %arrayidx32 = getelementptr inbounds nuw [500 x i32], ptr %jishu, i64 0, i64 %indvars.iv.next31
  %7 = load i32, ptr %arrayidx32, align 4, !tbaa !5, !invariant.load !12
  %cmp33 = icmp sgt i32 %6, %7
  br i1 %cmp33, label %if.then34, label %for.inc46

if.then34:                                        ; preds = %for.body28
  store i32 %7, ptr %arrayidx30, align 4, !tbaa !5
  store i32 %6, ptr %arrayidx32, align 4, !tbaa !5
  br label %for.inc46

for.inc46:                                        ; preds = %for.body28, %if.then34
  br label %for.cond26, !llvm.loop !14

for.inc49:                                        ; preds = %for.cond26
  %inc50 = add nuw i32 %a.0, 1
  br label %for.cond23, !llvm.loop !15

for.cond52:                                       ; preds = %for.cond23, %for.inc64
  %.pre43 = phi i32 [ %.pre, %for.inc64 ], [ %0, %for.cond23 ]
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %for.inc64 ], [ 0, %for.cond23 ]
  %sub53 = add nsw i32 %.pre43, -1
  %8 = sext i32 %sub53 to i64
  %cmp54 = icmp slt i64 %indvars.iv40, %8
  br i1 %cmp54, label %for.body55, label %for.end66

for.body55:                                       ; preds = %for.cond52
  %arrayidx57 = getelementptr inbounds nuw [500 x i32], ptr %jishu, i64 0, i64 %indvars.iv40
  %9 = load i32, ptr %arrayidx57, align 4, !tbaa !5, !invariant.load !12
  %cmp58.not = icmp eq i32 %9, 0
  br i1 %cmp58.not, label %for.inc64, label %if.then59

if.then59:                                        ; preds = %for.body55
  %call62 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %9)
  %.pre.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc64

for.inc64:                                        ; preds = %for.body55, %if.then59
  %.pre = phi i32 [ %.pre43, %for.body55 ], [ %.pre.pre, %if.then59 ]
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %for.cond52, !llvm.loop !16

for.end66:                                        ; preds = %for.cond52
  %arrayidx69 = getelementptr inbounds [500 x i32], ptr %jishu, i64 0, i64 %8
  %10 = load i32, ptr %arrayidx69, align 4, !tbaa !5, !invariant.load !12
  %call70 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %10)
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef nonnull %jishu) #5
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef nonnull %sz) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
