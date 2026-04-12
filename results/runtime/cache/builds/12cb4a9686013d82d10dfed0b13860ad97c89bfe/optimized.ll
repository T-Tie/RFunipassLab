; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9f509r13.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [101 x [101 x i32]], align 16
  %b = alloca [101 x [101 x i32]], align 16
  %c = alloca [101 x [101 x i32]], align 16
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %c) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40804) %c, i8 0, i64 40804, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x1, ptr noundef nonnull %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %for.inc7 ], [ 0, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv35, %1
  br i1 %cmp, label %for.cond1, label %for.end9

for.cond1:                                        ; preds = %for.cond, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp2, label %for.body3, label %for.inc7

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv35, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  %call10 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x2, ptr noundef nonnull %y2)
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc25, %for.end9
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %for.inc25 ], [ 0, %for.end9 ]
  %4 = load i32, ptr %x2, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp12 = icmp slt i64 %indvars.iv41, %5
  br i1 %cmp12, label %for.cond14, label %for.cond28

for.cond14:                                       ; preds = %for.cond11, %for.body16
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.body16 ], [ 0, %for.cond11 ]
  %6 = load i32, ptr %y2, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp15 = icmp slt i64 %indvars.iv38, %7
  br i1 %cmp15, label %for.body16, label %for.inc25

for.body16:                                       ; preds = %for.cond14
  %arrayidx20 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv41, i64 %indvars.iv38
  %call21 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx20)
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond14, !llvm.loop !13

for.inc25:                                        ; preds = %for.cond14
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br label %for.cond11, !llvm.loop !14

for.cond28:                                       ; preds = %for.cond11, %for.end90
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %for.end90 ], [ 0, %for.cond11 ]
  %8 = load i32, ptr %x1, align 4, !tbaa !5
  %9 = sext i32 %8 to i64
  %cmp29 = icmp slt i64 %indvars.iv56, %9
  br i1 %cmp29, label %for.cond31, label %for.end99

for.cond31:                                       ; preds = %for.cond28, %for.end55
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %for.end55 ], [ 0, %for.cond28 ]
  %10 = load i32, ptr %y2, align 4, !tbaa !5
  %sub = add nsw i32 %10, -1
  %11 = sext i32 %sub to i64
  %cmp32 = icmp slt i64 %indvars.iv47, %11
  %12 = load i32, ptr %y1, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %12, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br i1 %cmp32, label %for.cond34.preheader, label %for.cond64.preheader

for.cond64.preheader:                             ; preds = %for.cond31
  %arrayidx71 = getelementptr inbounds [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv56, i64 %11
  %arrayidx71.promoted = load i32, ptr %arrayidx71, align 4, !tbaa !5
  br label %for.cond64

for.cond34.preheader:                             ; preds = %for.cond31
  %arrayidx40 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv56, i64 %indvars.iv47
  %arrayidx40.promoted = load i32, ptr %arrayidx40, align 4, !tbaa !5
  br label %for.cond34

for.cond34:                                       ; preds = %for.cond34.preheader, %for.body36
  %13 = phi i32 [ %arrayidx40.promoted, %for.cond34.preheader ], [ %add, %for.body36 ]
  %indvars.iv44 = phi i64 [ 0, %for.cond34.preheader ], [ %indvars.iv.next45, %for.body36 ]
  %exitcond.not = icmp eq i64 %indvars.iv44, %wide.trip.count
  br i1 %exitcond.not, label %for.end55, label %for.body36

for.body36:                                       ; preds = %for.cond34
  %arrayidx44 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv56, i64 %indvars.iv44
  %14 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %arrayidx48 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv44, i64 %indvars.iv47
  %15 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %mul = mul nsw i32 %15, %14
  %add = add nsw i32 %mul, %13
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  br label %for.cond34, !llvm.loop !15

for.end55:                                        ; preds = %for.cond34
  store i32 %13, ptr %arrayidx40, align 4
  %call60 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %13)
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br label %for.cond31, !llvm.loop !16

for.cond64:                                       ; preds = %for.cond64.preheader, %for.body66
  %16 = phi i32 [ %arrayidx71.promoted, %for.cond64.preheader ], [ %add82, %for.body66 ]
  %indvars.iv50 = phi i64 [ 0, %for.cond64.preheader ], [ %indvars.iv.next51, %for.body66 ]
  %exitcond55.not = icmp eq i64 %indvars.iv50, %wide.trip.count
  br i1 %exitcond55.not, label %for.end90, label %for.body66

for.body66:                                       ; preds = %for.cond64
  %arrayidx75 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv56, i64 %indvars.iv50
  %17 = load i32, ptr %arrayidx75, align 4, !tbaa !5
  %arrayidx80 = getelementptr inbounds [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv50, i64 %11
  %18 = load i32, ptr %arrayidx80, align 4, !tbaa !5
  %mul81 = mul nsw i32 %18, %17
  %add82 = add nsw i32 %mul81, %16
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  br label %for.cond64, !llvm.loop !17

for.end90:                                        ; preds = %for.cond64
  store i32 %16, ptr %arrayidx71, align 4
  %call96 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %16)
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  br label %for.cond28, !llvm.loop !18

for.end99:                                        ; preds = %for.cond28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #6
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %a) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
