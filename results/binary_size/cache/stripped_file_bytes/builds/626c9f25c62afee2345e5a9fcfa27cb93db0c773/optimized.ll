; ModuleID = '<stdin>'
source_filename = "/tmp/tmpbm6g64ne.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %sz = alloca [500 x i32], align 16
  %n = alloca i32, align 4
  %js = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %sz) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %js) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not.not33 = icmp sgt i32 %0, 0
  br i1 %cmp.not.not33, label %for.body, label %for.cond46.preheader.thread

for.cond10.preheader:                             ; preds = %for.inc
  %cmp11.not38 = icmp slt i32 %j.1, 1
  br i1 %cmp11.not38, label %for.cond46.preheader.thread, label %for.cond13.preheader.preheader

for.cond46.preheader.thread:                      ; preds = %for.cond10.preheader, %entry
  %j.0.lcssa66 = phi i32 [ %j.1, %for.cond10.preheader ], [ 0, %entry ]
  %.pre = add i32 %j.0.lcssa66, -1
  br label %for.end55

for.cond13.preheader.preheader:                   ; preds = %for.cond10.preheader
  %1 = add nsw i32 %j.1, -1
  %2 = zext nneg i32 %j.1 to i64
  %3 = add nuw i32 %j.1, 1
  %wide.trip.count56 = zext i32 %3 to i64
  br label %for.cond13.preheader

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %j.035 = phi i32 [ %j.1, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %sz, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %4 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %5 = and i32 %4, -2147483647
  %cmp4 = icmp eq i32 %5, 1
  br i1 %cmp4, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %idxprom7 = sext i32 %j.035 to i64
  %arrayidx8 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom7
  store i32 %4, ptr %arrayidx8, align 4, !tbaa !5
  %inc = add nsw i32 %j.035, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %j.1 = phi i32 [ %inc, %if.then ], [ %j.035, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv.next, %7
  br i1 %cmp.not.not, label %for.body, label %for.cond10.preheader, !llvm.loop !9

for.cond13.preheader:                             ; preds = %for.cond13.preheader.preheader, %for.end26
  %indvars.iv51 = phi i64 [ 1, %for.cond13.preheader.preheader ], [ %indvars.iv.next52, %for.end26 ]
  %indvars.iv49 = phi i32 [ %1, %for.cond13.preheader.preheader ], [ %indvars.iv.next50, %for.end26 ]
  %max.040 = phi i32 [ 0, %for.cond13.preheader.preheader ], [ %spec.select32, %for.end26 ]
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv49, i32 0)
  %8 = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %8 to i64
  br label %for.body16

for.cond46.preheader:                             ; preds = %for.end26
  %cmp4841.not = icmp eq i32 %j.1, 1
  br i1 %cmp4841.not, label %for.end55, label %for.body49.preheader

for.body49.preheader:                             ; preds = %for.cond46.preheader
  %wide.trip.count61 = zext nneg i32 %1 to i64
  br label %for.body49

for.body16:                                       ; preds = %for.cond13.preheader, %for.body16
  %indvars.iv46 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next47, %for.body16 ]
  %max.136 = phi i32 [ %max.040, %for.cond13.preheader ], [ %spec.select, %for.body16 ]
  %arrayidx18 = getelementptr inbounds nuw [500 x i32], ptr %js, i64 0, i64 %indvars.iv46
  %9 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %idxprom19 = sext i32 %max.136 to i64
  %arrayidx20 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom19
  %10 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %cmp21 = icmp sgt i32 %9, %10
  %11 = trunc nuw nsw i64 %indvars.iv46 to i32
  %spec.select = select i1 %cmp21, i32 %11, i32 %max.136
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next47, %wide.trip.count
  br i1 %exitcond.not, label %for.end26, label %for.body16, !llvm.loop !12

for.end26:                                        ; preds = %for.body16
  %12 = sub nsw i64 %2, %indvars.iv51
  %arrayidx29 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %12
  %13 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %idxprom30 = sext i32 %spec.select to i64
  %arrayidx31 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom30
  %14 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  store i32 %14, ptr %arrayidx29, align 4, !tbaa !5
  store i32 %13, ptr %arrayidx31, align 4, !tbaa !5
  %15 = trunc nsw i64 %12 to i32
  %cmp38 = icmp eq i32 %spec.select, %15
  %16 = trunc i64 %12 to i32
  %17 = add i32 %16, -1
  %spec.select32 = select i1 %cmp38, i32 %17, i32 %spec.select
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %indvars.iv.next50 = add i32 %indvars.iv49, -1
  %exitcond57.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count56
  br i1 %exitcond57.not, label %for.cond46.preheader, label %for.cond13.preheader, !llvm.loop !13

for.body49:                                       ; preds = %for.body49.preheader, %for.body49
  %indvars.iv58 = phi i64 [ 0, %for.body49.preheader ], [ %indvars.iv.next59, %for.body49 ]
  %arrayidx51 = getelementptr inbounds nuw [500 x i32], ptr %js, i64 0, i64 %indvars.iv58
  %18 = load i32, ptr %arrayidx51, align 4, !tbaa !5
  %call52 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %18)
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  %exitcond62.not = icmp eq i64 %indvars.iv.next59, %wide.trip.count61
  br i1 %exitcond62.not, label %if.then58.loopexit, label %for.body49, !llvm.loop !14

for.end55:                                        ; preds = %for.cond46.preheader.thread, %for.cond46.preheader
  %sub47.pre-phi70 = phi i32 [ %1, %for.cond46.preheader ], [ %.pre, %for.cond46.preheader.thread ]
  %cmp57 = icmp eq i32 %sub47.pre-phi70, 0
  br i1 %cmp57, label %if.then58, label %if.end62

if.then58.loopexit:                               ; preds = %for.body49
  %19 = zext nneg i32 %1 to i64
  br label %if.then58

if.then58:                                        ; preds = %if.then58.loopexit, %for.end55
  %sub47.pre-phi7074 = phi i64 [ 0, %for.end55 ], [ %19, %if.then58.loopexit ]
  %arrayidx60 = getelementptr inbounds nuw [500 x i32], ptr %js, i64 0, i64 %sub47.pre-phi7074
  %20 = load i32, ptr %arrayidx60, align 4, !tbaa !5
  %call61 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %20)
  br label %if.end62

if.end62:                                         ; preds = %if.then58, %for.end55
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %js) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %sz) #5
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
