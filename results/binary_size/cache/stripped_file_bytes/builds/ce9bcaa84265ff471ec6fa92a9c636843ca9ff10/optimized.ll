; ModuleID = '<stdin>'
source_filename = "/tmp/tmprht8c8ej.cpp"
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
  %hang = alloca i32, align 4
  %lie = alloca i32, align 4
  %a = alloca [8 x [8 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hang) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lie) #5
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %a) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %hang, ptr noundef nonnull %lie)
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %for.inc7 ], [ 0, %entry ]
  %0 = load i32, ptr %hang, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv25, %1
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %2 = load i32, ptr %lie, align 4
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 0)
  %smax34 = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count43 = zext nneg i32 %smax34 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %3 = load i32, ptr %lie, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp2, label %for.body3, label %for.inc7

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv25, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc49
  %indvars.iv40 = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next41, %for.inc49 ]
  %exitcond44.not = icmp eq i64 %indvars.iv40, %wide.trip.count43
  br i1 %exitcond44.not, label %if.then53, label %for.body12

for.body12:                                       ; preds = %for.cond10
  %arrayidx14 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv40
  %5 = load i32, ptr %arrayidx14, align 16, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.body18, %for.body12
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for.body18 ], [ 0, %for.body12 ]
  %max.0 = phi i32 [ %spec.select, %for.body18 ], [ %5, %for.body12 ]
  %hmax.0 = phi i32 [ %spec.select21, %for.body18 ], [ 0, %for.body12 ]
  %exitcond.not = icmp eq i64 %indvars.iv28, %wide.trip.count
  br i1 %exitcond.not, label %for.cond31.preheader, label %for.body18

for.cond31.preheader:                             ; preds = %for.cond16
  %idxprom36 = zext nneg i32 %hmax.0 to i64
  br label %for.cond31

for.body18:                                       ; preds = %for.cond16
  %arrayidx22 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv40, i64 %indvars.iv28
  %6 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %max.0, %6
  %spec.select = call i32 @llvm.smax.i32(i32 %max.0, i32 %6)
  %7 = trunc nuw nsw i64 %indvars.iv28 to i32
  %spec.select21 = select i1 %cmp23, i32 %7, i32 %hmax.0
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond16, !llvm.loop !13

for.cond31:                                       ; preds = %for.cond31.preheader, %if.else
  %indvars.iv31 = phi i64 [ 0, %for.cond31.preheader ], [ %indvars.iv.next32, %if.else ]
  %exitcond39.not = icmp eq i64 %indvars.iv31, %wide.trip.count43
  br i1 %exitcond39.not, label %for.end44, label %for.body33

for.body33:                                       ; preds = %for.cond31
  %arrayidx37 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv31, i64 %idxprom36
  %8 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %cmp38 = icmp sgt i32 %max.0, %8
  br i1 %cmp38, label %for.end44.split.loop.exit, label %if.else

if.else:                                          ; preds = %for.body33
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  br label %for.cond31, !llvm.loop !14

for.end44.split.loop.exit:                        ; preds = %for.body33
  %indvars35.le = trunc i64 %indvars.iv31 to i32
  br label %for.end44

for.end44:                                        ; preds = %for.cond31, %for.end44.split.loop.exit
  %n.0.lcssa = phi i32 [ %indvars35.le, %for.end44.split.loop.exit ], [ %smax34, %for.cond31 ]
  %cmp45 = icmp eq i32 %n.0.lcssa, %0
  br i1 %cmp45, label %if.then46, label %for.inc49

if.then46:                                        ; preds = %for.end44
  %9 = trunc nuw nsw i64 %indvars.iv40 to i32
  %call47 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %9, i32 noundef %hmax.0)
  br label %if.end55

for.inc49:                                        ; preds = %for.end44
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %for.cond10, !llvm.loop !15

if.then53:                                        ; preds = %for.cond10
  %call54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %if.end55

if.end55:                                         ; preds = %if.then46, %if.then53
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lie) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hang) #5
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
