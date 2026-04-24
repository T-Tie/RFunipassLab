; ModuleID = '<stdin>'
source_filename = "/tmp/tmps8v_9qsi.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@__const._Z2fciii.month = private unnamed_addr constant [13 x i32] [i32 0, i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %mon1 = alloca i32, align 4
  %mon2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp5 = icmp sgt i32 %0, 0
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %entry, %_Z2fciii.exit
  %i.06 = phi i32 [ %inc, %_Z2fciii.exit ], [ 0, %entry ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %year) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mon1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mon2) #6
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %year, ptr noundef nonnull %mon1, ptr noundef nonnull %mon2)
  %1 = load i32, ptr %mon1, align 4, !tbaa !5
  %2 = load i32, ptr %mon2, align 4, !tbaa !5
  %cmp2 = icmp sgt i32 %1, %2
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 %2, ptr %mon1, align 4, !tbaa !5
  store i32 %1, ptr %mon2, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %3 = phi i32 [ %1, %if.then ], [ %2, %for.body ]
  %4 = phi i32 [ %2, %if.then ], [ %1, %for.body ]
  %5 = load i32, ptr %year, align 4, !tbaa !5
  %cmp19.i = icmp slt i32 %4, %3
  br i1 %cmp19.i, label %for.body.preheader.i, label %for.end.i

for.body.preheader.i:                             ; preds = %if.end
  %6 = sext i32 %4 to i64
  %wide.trip.count.i = sext i32 %3 to i64
  %7 = sub nsw i64 %wide.trip.count.i, %6
  %min.iters.check = icmp ult i64 %7, 4
  br i1 %min.iters.check, label %for.body.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader.i
  %n.vec = and i64 %7, -4
  %8 = add nsw i64 %n.vec, %6
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %10, %vector.body ]
  %offset.idx = add i64 %index, %6
  %9 = getelementptr inbounds [13 x i32], ptr @__const._Z2fciii.month, i64 0, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %9, align 4, !tbaa !5
  %10 = add <4 x i32> %wide.load, %vec.phi
  %index.next = add nuw i64 %index, 4
  %11 = icmp eq i64 %index.next, %n.vec
  br i1 %11, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %12 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %10)
  %cmp.n = icmp eq i64 %7, %n.vec
  br i1 %cmp.n, label %for.end.i, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %for.body.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %6, %for.body.preheader.i ], [ %8, %middle.block ]
  %delta.020.i.ph = phi i32 [ 0, %for.body.preheader.i ], [ %12, %middle.block ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ %indvars.iv.i.ph, %for.body.i.preheader ]
  %delta.020.i = phi i32 [ %add.i, %for.body.i ], [ %delta.020.i.ph, %for.body.i.preheader ]
  %arrayidx.i = getelementptr inbounds [13 x i32], ptr @__const._Z2fciii.month, i64 0, i64 %indvars.iv.i
  %13 = load i32, ptr %arrayidx.i, align 4, !tbaa !5
  %add.i = add nsw i32 %13, %delta.020.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i, !llvm.loop !14

for.end.i:                                        ; preds = %for.body.i, %middle.block, %if.end
  %delta.0.lcssa.i = phi i32 [ 0, %if.end ], [ %12, %middle.block ], [ %add.i, %for.body.i ]
  %cmp1.i = icmp eq i32 %4, 2
  br i1 %cmp1.i, label %if.then.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.end.i
  %cmp2.i = icmp eq i32 %4, 1
  %cmp3.i = icmp sgt i32 %3, 2
  %or.cond.i = and i1 %cmp2.i, %cmp3.i
  br i1 %or.cond.i, label %if.then.i, label %_Z2fciii.exit

if.then.i:                                        ; preds = %lor.lhs.false.i, %for.end.i
  %14 = and i32 %5, 3
  %cmp4.i = icmp ne i32 %14, 0
  %cmp6.i = icmp slt i32 %5, 4
  %or.cond1.not18.i = or i1 %cmp6.i, %cmp4.i
  %rem8.i = urem i32 %5, 100
  %cmp9.not.i = icmp eq i32 %rem8.i, 0
  %or.cond16.i = or i1 %cmp9.not.i, %or.cond1.not18.i
  br i1 %or.cond16.i, label %if.else.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.then.i
  %add11.i = add nsw i32 %delta.0.lcssa.i, 1
  br label %_Z2fciii.exit

if.else.i:                                        ; preds = %if.then.i
  %rem12.i = srem i32 %5, 100
  %cmp15.i = icmp sgt i32 %5, 99
  %rem17.i = urem i32 %5, 400
  %15 = or i32 %rem17.i, %rem12.i
  %16 = icmp eq i32 %15, 0
  %or.cond17.i = and i1 %cmp15.i, %16
  %add20.i = zext i1 %or.cond17.i to i32
  %spec.select.i = add nsw i32 %delta.0.lcssa.i, %add20.i
  br label %_Z2fciii.exit

_Z2fciii.exit:                                    ; preds = %lor.lhs.false.i, %if.then10.i, %if.else.i
  %delta.1.i = phi i32 [ %add11.i, %if.then10.i ], [ %delta.0.lcssa.i, %lor.lhs.false.i ], [ %spec.select.i, %if.else.i ]
  %rem = srem i32 %delta.1.i, 7
  %cmp4 = icmp eq i32 %rem, 0
  %str.1.str = select i1 %cmp4, ptr @str.1, ptr @str
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %str.1.str)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mon2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mon1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %year) #6
  %inc = add nuw nsw i32 %i.06, 1
  %17 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %inc, %17
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !15

for.end:                                          ; preds = %_Z2fciii.exit, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z2fciii(i32 noundef %year, i32 noundef %mon1, i32 noundef %mon2) local_unnamed_addr #3 {
entry:
  %cmp19 = icmp slt i32 %mon1, %mon2
  br i1 %cmp19, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %entry
  %0 = sext i32 %mon1 to i64
  %wide.trip.count = sext i32 %mon2 to i64
  %1 = sub nsw i64 %wide.trip.count, %0
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %for.body.preheader23, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %1, -4
  %2 = add nsw i64 %n.vec, %0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %4, %vector.body ]
  %offset.idx = add i64 %index, %0
  %3 = getelementptr inbounds [13 x i32], ptr @__const._Z2fciii.month, i64 0, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %3, align 4, !tbaa !5
  %4 = add <4 x i32> %wide.load, %vec.phi
  %index.next = add nuw i64 %index, 4
  %5 = icmp eq i64 %index.next, %n.vec
  br i1 %5, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %6 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %4)
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %for.end, label %for.body.preheader23

for.body.preheader23:                             ; preds = %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %0, %for.body.preheader ], [ %2, %middle.block ]
  %delta.020.ph = phi i32 [ 0, %for.body.preheader ], [ %6, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader23, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader23 ]
  %delta.020 = phi i32 [ %add, %for.body ], [ %delta.020.ph, %for.body.preheader23 ]
  %arrayidx = getelementptr inbounds [13 x i32], ptr @__const._Z2fciii.month, i64 0, i64 %indvars.iv
  %7 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %add = add nsw i32 %7, %delta.020
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !17

for.end:                                          ; preds = %for.body, %middle.block, %entry
  %delta.0.lcssa = phi i32 [ 0, %entry ], [ %6, %middle.block ], [ %add, %for.body ]
  %cmp1 = icmp eq i32 %mon1, 2
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %cmp2 = icmp eq i32 %mon1, 1
  %cmp3 = icmp sgt i32 %mon2, 2
  %or.cond = and i1 %cmp2, %cmp3
  br i1 %or.cond, label %if.then, label %if.end22

if.then:                                          ; preds = %lor.lhs.false, %for.end
  %8 = and i32 %year, 3
  %cmp4 = icmp ne i32 %8, 0
  %cmp6 = icmp slt i32 %year, 4
  %or.cond1.not18 = or i1 %cmp6, %cmp4
  %rem8 = urem i32 %year, 100
  %cmp9.not = icmp eq i32 %rem8, 0
  %or.cond16 = or i1 %cmp9.not, %or.cond1.not18
  br i1 %or.cond16, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.then
  %add11 = add nsw i32 %delta.0.lcssa, 1
  br label %if.end22

if.else:                                          ; preds = %if.then
  %rem12 = srem i32 %year, 100
  %cmp15 = icmp sgt i32 %year, 99
  %rem17 = urem i32 %year, 400
  %9 = or i32 %rem17, %rem12
  %10 = icmp eq i32 %9, 0
  %or.cond17 = and i1 %cmp15, %10
  %add20 = zext i1 %or.cond17 to i32
  %spec.select = add nsw i32 %delta.0.lcssa, %add20
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then10, %lor.lhs.false
  %delta.1 = phi i32 [ %add11, %if.then10 ], [ %delta.0.lcssa, %lor.lhs.false ], [ %spec.select, %if.else ]
  ret i32 %delta.1
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!9 = distinct !{!9, !10, !11, !12, !13}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11, !12, !13}
!17 = distinct !{!17, !10, !11, !12}
