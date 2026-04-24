; ModuleID = '<stdin>'
source_filename = "/tmp/tmpwtr1nk6c.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %1, align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp = icmp slt i64 %indvars.iv, %4
  br i1 %cmp, label %for.inc, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %3, i32 noundef 0)
  %5 = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %5 to i64
  br label %for.cond2

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc30
  %indvars.iv43 = phi i64 [ %4, %for.cond2.preheader ], [ %indvars.iv.next44, %for.inc30 ]
  %indvars.iv30 = phi i64 [ 1, %for.cond2.preheader ], [ %indvars.iv.next31, %for.inc30 ]
  %smax45 = call i64 @llvm.smax.i64(i64 %indvars.iv43, i64 noundef 0)
  %exitcond = icmp eq i64 %indvars.iv30, %wide.trip.count
  br i1 %exitcond, label %for.cond33, label %for.cond5

for.cond5:                                        ; preds = %for.cond2, %for.body7
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.body7 ], [ 0, %for.cond2 ]
  %max.0 = phi i32 [ %spec.select, %for.body7 ], [ 0, %for.cond2 ]
  %exitcond46 = icmp eq i64 %indvars.iv27, %smax45
  br i1 %exitcond46, label %for.end15, label %for.body7

for.body7:                                        ; preds = %for.cond5
  %arrayidx9 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv27
  %6 = load i32, ptr %arrayidx9, align 4, !tbaa !5, !invariant.load !12
  %idxprom10 = zext nneg i32 %max.0 to i64
  %arrayidx11 = getelementptr inbounds nuw i32, ptr %vla, i64 %idxprom10
  %7 = load i32, ptr %arrayidx11, align 4, !tbaa !5, !invariant.load !12
  %cmp12 = icmp sgt i32 %6, %7
  %8 = trunc nuw nsw i64 %indvars.iv27 to i32
  %spec.select = select i1 %cmp12, i32 %8, i32 %max.0
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond5, !llvm.loop !13

for.end15:                                        ; preds = %for.cond5
  %9 = sub nsw i64 %4, %indvars.iv30
  %10 = trunc nsw i64 %9 to i32
  %cmp17.not = icmp eq i32 %max.0, %10
  br i1 %cmp17.not, label %for.inc30, label %if.then18

if.then18:                                        ; preds = %for.end15
  %idxprom19 = zext nneg i32 %max.0 to i64
  %arrayidx20 = getelementptr inbounds nuw i32, ptr %vla, i64 %idxprom19
  %11 = load i32, ptr %arrayidx20, align 4, !tbaa !5, !invariant.load !12
  %arrayidx23 = getelementptr inbounds i32, ptr %vla, i64 %9
  %12 = load i32, ptr %arrayidx23, align 4, !tbaa !5, !invariant.load !12
  store i32 %12, ptr %arrayidx20, align 4, !tbaa !5
  store i32 %11, ptr %arrayidx23, align 4, !tbaa !5
  br label %for.inc30

for.inc30:                                        ; preds = %for.end15, %if.then18
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %indvars.iv.next44 = add nsw i64 %indvars.iv43, -1
  br label %for.cond2, !llvm.loop !14

for.cond33:                                       ; preds = %for.cond2, %for.inc53
  %.pre38 = phi i32 [ %.pre, %for.inc53 ], [ %3, %for.cond2 ]
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %for.inc53 ], [ 0, %for.cond2 ]
  %13 = sext i32 %.pre38 to i64
  %cmp34 = icmp slt i64 %indvars.iv35, %13
  br i1 %cmp34, label %for.body35, label %for.end55

for.body35:                                       ; preds = %for.cond33
  %arrayidx37 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv35
  %14 = load i32, ptr %arrayidx37, align 4, !tbaa !5, !invariant.load !12
  %15 = and i32 %14, -2147483647
  %cmp38 = icmp eq i32 %15, 1
  br i1 %cmp38, label %if.then39, label %for.inc53

if.then39:                                        ; preds = %for.body35
  %sub40 = add nsw i32 %.pre38, -2
  %16 = zext i32 %sub40 to i64
  %cmp41 = icmp eq i64 %indvars.iv35, %16
  %sub42 = add nsw i32 %.pre38, -1
  %17 = zext i32 %sub42 to i64
  %cmp43 = icmp eq i64 %indvars.iv35, %17
  %or.cond = select i1 %cmp41, i1 true, i1 %cmp43
  %.str.1.sink = select i1 %or.cond, ptr @.str, ptr @.str.1
  %call50 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.1.sink, i32 noundef %14)
  %.pre.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc53

for.inc53:                                        ; preds = %for.body35, %if.then39
  %.pre = phi i32 [ %.pre38, %for.body35 ], [ %.pre.pre, %if.then39 ]
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond33, !llvm.loop !15

for.end55:                                        ; preds = %for.cond33
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
