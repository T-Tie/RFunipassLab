; ModuleID = '<stdin>'
source_filename = "/tmp/tmpollg_4fs.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [1000 x [1000 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  call void @llvm.lifetime.start.p0(i64 4000000, ptr nonnull %a) #5
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = phi i32 [ %2, %for.inc7 ], [ %.pre, %entry ]
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.inc7 ], [ 0, %entry ]
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv27, %1
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count38 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.body3
  %2 = phi i32 [ %.pre51, %for.body3 ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp2, label %for.body3, label %for.inc7

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv27, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre51 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.end23, %for.cond10.preheader
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %for.end23 ], [ 0, %for.cond10.preheader ]
  %exitcond39.not = icmp eq i64 %indvars.iv34, %wide.trip.count38
  br i1 %exitcond39.not, label %for.end29, label %for.cond13

for.cond13:                                       ; preds = %for.cond10, %for.body15
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %for.body15 ], [ 0, %for.cond10 ]
  %m.2 = phi i32 [ %spec.select, %for.body15 ], [ 0, %for.cond10 ]
  %exitcond.not = icmp eq i64 %indvars.iv30, %wide.trip.count
  br i1 %exitcond.not, label %for.end23, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %arrayidx19 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv34, i64 %indvars.iv30
  %4 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %4, 0
  %add = zext i1 %cmp20 to i32
  %spec.select = add nuw nsw i32 %m.2, %add
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond13, !llvm.loop !13

for.end23:                                        ; preds = %for.cond13
  %cmp24.not = icmp eq i32 %m.2, 0
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br i1 %cmp24.not, label %for.cond10, label %for.end29, !llvm.loop !14

for.end29:                                        ; preds = %for.end23, %for.cond10
  %m.1 = phi i32 [ %m.2, %for.end23 ], [ 0, %for.cond10 ]
  %wide.trip.count44 = zext i32 %0 to i64
  br label %for.cond30

for.cond30:                                       ; preds = %for.end46, %for.end29
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.end46 ], [ 0, %for.end29 ]
  %exitcond50.not = icmp eq i64 %indvars.iv46, %wide.trip.count38
  br i1 %exitcond50.not, label %for.end52, label %for.cond33

for.cond33:                                       ; preds = %for.cond30, %for.body35
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %for.body35 ], [ 0, %for.cond30 ]
  %k.2 = phi i32 [ %spec.select24, %for.body35 ], [ 0, %for.cond30 ]
  %exitcond45.not = icmp eq i64 %indvars.iv40, %wide.trip.count44
  br i1 %exitcond45.not, label %for.end46, label %for.body35

for.body35:                                       ; preds = %for.cond33
  %arrayidx39 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv40, i64 %indvars.iv46
  %5 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  %cmp40 = icmp eq i32 %5, 0
  %add42 = zext i1 %cmp40 to i32
  %spec.select24 = add nuw nsw i32 %k.2, %add42
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %for.cond33, !llvm.loop !15

for.end46:                                        ; preds = %for.cond33
  %cmp47.not = icmp eq i32 %k.2, 0
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br i1 %cmp47.not, label %for.cond30, label %for.end52, !llvm.loop !16

for.end52:                                        ; preds = %for.end46, %for.cond30
  %k.1 = phi i32 [ %k.2, %for.end46 ], [ 0, %for.cond30 ]
  %mul5323 = add i32 %k.1, -2
  %sub = mul i32 %mul5323, %m.1
  %6 = shl i32 %k.1, 1
  %reass.sub = sub i32 %sub, %6
  %add56 = add i32 %reass.sub, 4
  %call57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %add56)
  call void @llvm.lifetime.end.p0(i64 4000000, ptr nonnull %a) #5
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
!16 = distinct !{!16, !10, !11}
