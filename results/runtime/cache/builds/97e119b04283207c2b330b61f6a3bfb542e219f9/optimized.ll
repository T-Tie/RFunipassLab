; ModuleID = '<stdin>'
source_filename = "/tmp/tmpqb5s_w4s.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %sz = alloca [500 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef nonnull align 16 %sz) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax24 = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %2 = add nuw i32 %smax24, 1
  br label %for.cond2

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %sz, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc26
  %indvars.iv21.in = phi i32 [ %0, %for.cond2.preheader ], [ %indvars.iv21, %for.inc26 ]
  %k.0 = phi i32 [ 1, %for.cond2.preheader ], [ %inc27, %for.inc26 ]
  %indvars.iv21 = add i32 %indvars.iv21.in, -1
  %exitcond25 = icmp eq i32 %k.0, %2
  br i1 %exitcond25, label %for.cond44, label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.cond2
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv21, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond5

for.cond5:                                        ; preds = %for.cond5.preheader, %for.inc23
  %indvars.iv17 = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next18, %for.inc23 ]
  %exitcond.not = icmp eq i64 %indvars.iv17, %wide.trip.count
  br i1 %exitcond.not, label %for.inc26, label %for.body7

for.body7:                                        ; preds = %for.cond5
  %arrayidx9 = getelementptr inbounds nuw [500 x i32], ptr %sz, i64 0, i64 %indvars.iv17
  %3 = load i32, ptr %arrayidx9, align 4, !tbaa !5, !invariant.load !12
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  %arrayidx11 = getelementptr inbounds nuw [500 x i32], ptr %sz, i64 0, i64 %indvars.iv.next18
  %4 = load i32, ptr %arrayidx11, align 4, !tbaa !5, !invariant.load !12
  %cmp12 = icmp sgt i32 %3, %4
  br i1 %cmp12, label %if.then, label %for.inc23

if.then:                                          ; preds = %for.body7
  store i32 %3, ptr %arrayidx11, align 4, !tbaa !5
  store i32 %4, ptr %arrayidx9, align 4, !tbaa !5
  br label %for.inc23

for.inc23:                                        ; preds = %for.body7, %if.then
  br label %for.cond5, !llvm.loop !13

for.inc26:                                        ; preds = %for.cond5
  %inc27 = add nuw i32 %k.0, 1
  br label %for.cond2, !llvm.loop !14

for.cond44:                                       ; preds = %for.cond2, %for.inc56
  %.pre29 = phi i32 [ %.pre, %for.inc56 ], [ %0, %for.cond2 ]
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.inc56 ], [ 1, %for.cond2 ]
  %5 = sext i32 %.pre29 to i64
  %cmp45 = icmp slt i64 %indvars.iv26, %5
  br i1 %cmp45, label %for.body46, label %for.end58

for.body46:                                       ; preds = %for.cond44
  %arrayidx48 = getelementptr inbounds nuw [500 x i32], ptr %sz, i64 0, i64 %indvars.iv26
  %6 = load i32, ptr %arrayidx48, align 4, !tbaa !5, !invariant.load !12
  %7 = and i32 %6, -2147483647
  %cmp50 = icmp eq i32 %7, 1
  br i1 %cmp50, label %if.then51, label %for.inc56

if.then51:                                        ; preds = %for.body46
  %call54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %6)
  %.pre.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc56

for.inc56:                                        ; preds = %for.body46, %if.then51
  %.pre = phi i32 [ %.pre29, %for.body46 ], [ %.pre.pre, %if.then51 ]
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond44, !llvm.loop !15

for.end58:                                        ; preds = %for.cond44
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef nonnull %sz) #5
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
