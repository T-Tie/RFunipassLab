; ModuleID = '<stdin>'
source_filename = "/tmp/tmpahxgaid2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %sz = alloca [10000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %sz) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %2 = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %2 to i64
  br label %for.cond2

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [10000 x i32], ptr %sz, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc30
  %indvars.iv34 = phi i64 [ 1, %for.cond2.preheader ], [ %indvars.iv.next35, %for.inc30 ]
  %exitcond = icmp eq i64 %indvars.iv34, %wide.trip.count
  br i1 %exitcond, label %for.cond33.preheader, label %for.cond5.preheader

for.cond33.preheader:                             ; preds = %for.cond2
  %3 = zext nneg i32 %smax to i64
  br label %for.cond33

for.cond5.preheader:                              ; preds = %for.cond2
  %4 = sub nsw i64 %1, %indvars.iv34
  br label %for.cond5

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body7
  %indvars.iv31 = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next32, %for.body7 ]
  %max.0 = phi i32 [ 0, %for.cond5.preheader ], [ %spec.select, %for.body7 ]
  %cmp6.not = icmp sgt i64 %indvars.iv31, %4
  br i1 %cmp6.not, label %for.end15, label %for.body7

for.body7:                                        ; preds = %for.cond5
  %arrayidx9 = getelementptr inbounds nuw [10000 x i32], ptr %sz, i64 0, i64 %indvars.iv31
  %5 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %idxprom10 = zext nneg i32 %max.0 to i64
  %arrayidx11 = getelementptr inbounds nuw [10000 x i32], ptr %sz, i64 0, i64 %idxprom10
  %6 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp12 = icmp sgt i32 %5, %6
  %7 = trunc nuw nsw i64 %indvars.iv31 to i32
  %spec.select = select i1 %cmp12, i32 %7, i32 %max.0
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  br label %for.cond5, !llvm.loop !12

for.end15:                                        ; preds = %for.cond5
  %8 = trunc nsw i64 %4 to i32
  %cmp17.not = icmp eq i32 %max.0, %8
  br i1 %cmp17.not, label %for.inc30, label %if.then18

if.then18:                                        ; preds = %for.end15
  %idxprom19 = zext nneg i32 %max.0 to i64
  %arrayidx20 = getelementptr inbounds nuw [10000 x i32], ptr %sz, i64 0, i64 %idxprom19
  %9 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %arrayidx23 = getelementptr inbounds [10000 x i32], ptr %sz, i64 0, i64 %4
  %10 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  store i32 %10, ptr %arrayidx20, align 4, !tbaa !5
  store i32 %9, ptr %arrayidx23, align 4, !tbaa !5
  br label %for.inc30

for.inc30:                                        ; preds = %for.end15, %if.then18
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %for.cond2, !llvm.loop !13

for.cond33:                                       ; preds = %for.cond33.preheader, %for.inc44
  %indvars.iv39 = phi i64 [ 0, %for.cond33.preheader ], [ %indvars.iv.next40, %for.inc44 ]
  %exitcond43.not = icmp eq i64 %indvars.iv39, %3
  br i1 %exitcond43.not, label %for.cond47.preheader, label %for.body35

for.body35:                                       ; preds = %for.cond33
  %arrayidx37 = getelementptr inbounds nuw [10000 x i32], ptr %sz, i64 0, i64 %indvars.iv39
  %11 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %12 = and i32 %11, -2147483647
  %cmp38 = icmp eq i32 %12, 1
  br i1 %cmp38, label %if.then39, label %for.inc44

if.then39:                                        ; preds = %for.body35
  %call42 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %11)
  %.pre = and i64 %indvars.iv39, 4294967295
  br label %for.cond47.preheader

for.cond47.preheader:                             ; preds = %for.cond33, %if.then39
  %indvars.iv44.ph = phi i64 [ %.pre, %if.then39 ], [ %3, %for.cond33 ]
  br label %for.cond47

for.inc44:                                        ; preds = %for.body35
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %for.cond33, !llvm.loop !14

for.cond47:                                       ; preds = %for.cond47.backedge, %for.cond47.preheader
  %indvars.iv44 = phi i64 [ %indvars.iv44.ph, %for.cond47.preheader ], [ %indvars.iv.next45, %for.cond47.backedge ]
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %13 = load i32, ptr %n, align 4, !tbaa !5
  %14 = sext i32 %13 to i64
  %cmp48 = icmp slt i64 %indvars.iv.next45, %14
  br i1 %cmp48, label %for.body49, label %for.end61

for.body49:                                       ; preds = %for.cond47
  %arrayidx51 = getelementptr inbounds nuw [10000 x i32], ptr %sz, i64 0, i64 %indvars.iv.next45
  %15 = load i32, ptr %arrayidx51, align 4, !tbaa !5
  %16 = and i32 %15, -2147483647
  %cmp53 = icmp eq i32 %16, 1
  br i1 %cmp53, label %if.then54, label %for.cond47.backedge

for.cond47.backedge:                              ; preds = %for.body49, %if.then54
  br label %for.cond47, !llvm.loop !15

if.then54:                                        ; preds = %for.body49
  %call57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %15)
  br label %for.cond47.backedge

for.end61:                                        ; preds = %for.cond47
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %sz) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
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
