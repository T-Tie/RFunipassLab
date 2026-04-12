; ModuleID = '<stdin>'
source_filename = "/tmp/tmpteyt61t1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %N = alloca i32, align 4
  %sz = alloca [501 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N) #5
  call void @llvm.lifetime.start.p0(i64 2004, ptr nonnull %sz) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %N)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax25 = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %2 = add nuw i32 %smax25, 1
  br label %for.cond2

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [501 x i32], ptr %sz, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.cond.cleanup9
  %indvars.iv22.in = phi i32 [ %0, %for.cond2.preheader ], [ %indvars.iv22, %for.cond.cleanup9 ]
  %k.0 = phi i32 [ 1, %for.cond2.preheader ], [ %inc30, %for.cond.cleanup9 ]
  %indvars.iv22 = add i32 %indvars.iv22.in, -1
  %exitcond26 = icmp eq i32 %k.0, %2
  br i1 %exitcond26, label %for.cond33, label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.cond2
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv22, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond7

for.cond7:                                        ; preds = %for.cond7.backedge, %for.cond7.preheader
  %indvars.iv18 = phi i64 [ 0, %for.cond7.preheader ], [ %indvars.iv.next19, %for.cond7.backedge ]
  %exitcond.not = icmp eq i64 %indvars.iv18, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup9, label %for.body10

for.cond.cleanup9:                                ; preds = %for.cond7
  %inc30 = add nuw i32 %k.0, 1
  br label %for.cond2, !llvm.loop !12

for.body10:                                       ; preds = %for.cond7
  %arrayidx12 = getelementptr inbounds nuw [501 x i32], ptr %sz, i64 0, i64 %indvars.iv18
  %3 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %arrayidx14 = getelementptr inbounds nuw [501 x i32], ptr %sz, i64 0, i64 %indvars.iv.next19
  %4 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %cmp15 = icmp sgt i32 %3, %4
  br i1 %cmp15, label %if.then, label %for.cond7.backedge

for.cond7.backedge:                               ; preds = %for.body10, %if.then
  br label %for.cond7, !llvm.loop !13

if.then:                                          ; preds = %for.body10
  store i32 %3, ptr %arrayidx14, align 4, !tbaa !5
  store i32 %4, ptr %arrayidx12, align 4, !tbaa !5
  br label %for.cond7.backedge

for.cond33:                                       ; preds = %for.cond2, %for.inc51
  %5 = phi i32 [ %.pre, %for.inc51 ], [ %0, %for.cond2 ]
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.inc51 ], [ 0, %for.cond2 ]
  %flag.0 = phi i32 [ %flag.1, %for.inc51 ], [ 0, %for.cond2 ]
  %6 = sext i32 %5 to i64
  %cmp34 = icmp slt i64 %indvars.iv27, %6
  br i1 %cmp34, label %for.body36, label %for.cond.cleanup35

for.cond.cleanup35:                               ; preds = %for.cond33
  call void @llvm.lifetime.end.p0(i64 2004, ptr nonnull %sz) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N) #5
  ret i32 0

for.body36:                                       ; preds = %for.cond33
  %arrayidx38 = getelementptr inbounds nuw [501 x i32], ptr %sz, i64 0, i64 %indvars.iv27
  %7 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %8 = and i32 %7, 1
  %cmp39.not = icmp eq i32 %8, 0
  br i1 %cmp39.not, label %for.inc51, label %if.then40

if.then40:                                        ; preds = %for.body36
  %cmp41 = icmp eq i32 %flag.0, 0
  %.str..str.1 = select i1 %cmp41, ptr @.str, ptr @.str.1
  %call48 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str..str.1, i32 noundef %7)
  br label %for.inc51

for.inc51:                                        ; preds = %if.then40, %for.body36
  %flag.1 = phi i32 [ %flag.0, %for.body36 ], [ 1, %if.then40 ]
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %.pre = load i32, ptr %N, align 4, !tbaa !5
  br label %for.cond33, !llvm.loop !14
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
