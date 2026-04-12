; ModuleID = '<stdin>'
source_filename = "/tmp/tmp75tmk9vj.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %a = alloca [100 x [100 x i32]], align 16
  %b = alloca [100 x [100 x i32]], align 16
  %c = alloca [100 x [100 x i32]], align 16
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %b) #4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %c) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x1) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y1) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x2) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y2) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %x1, ptr noundef nonnull align 4 %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.inc8 ], [ 1, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv37, %1
  br i1 %cmp.not, label %for.end10, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond
  %2 = add nsw i64 %indvars.iv37, -1
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %indvars.iv = phi i64 [ 1, %for.cond1.preheader ], [ %indvars.iv.next, %for.inc ]
  %3 = load i32, ptr %y1, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp2.not = icmp sgt i64 %indvars.iv, %4
  br i1 %cmp2.not, label %for.inc8, label %for.inc

for.inc:                                          ; preds = %for.cond1
  %5 = add nsw i64 %indvars.iv, -1
  %arrayidx6 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %2, i64 %5
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond1
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  %call11 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x2, ptr noundef nonnull %y2)
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc28, %for.end10
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %for.inc28 ], [ 1, %for.end10 ]
  %6 = load i32, ptr %x2, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp13.not = icmp sgt i64 %indvars.iv45, %7
  br i1 %cmp13.not, label %for.cond31.preheader, label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.cond12
  %8 = add nsw i64 %indvars.iv45, -1
  br label %for.cond15

for.cond31.preheader:                             ; preds = %for.cond12
  %9 = load i32, ptr %x1, align 4, !tbaa !5
  %10 = load i32, ptr %y2, align 4
  %smax = call i32 @llvm.smax.i32(i32 %10, i32 noundef 0)
  %smax55 = call i32 @llvm.smax.i32(i32 %9, i32 noundef 0)
  %wide.trip.count56 = zext nneg i32 %smax55 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond31

for.cond15:                                       ; preds = %for.cond15.preheader, %for.inc25
  %indvars.iv41 = phi i64 [ 1, %for.cond15.preheader ], [ %indvars.iv.next42, %for.inc25 ]
  %11 = load i32, ptr %y2, align 4, !tbaa !5
  %12 = sext i32 %11 to i64
  %cmp16.not = icmp sgt i64 %indvars.iv41, %12
  br i1 %cmp16.not, label %for.inc28, label %for.inc25

for.inc25:                                        ; preds = %for.cond15
  %13 = add nsw i64 %indvars.iv41, -1
  %arrayidx23 = getelementptr inbounds [100 x [100 x i32]], ptr %b, i64 0, i64 %8, i64 %13
  %call24 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx23)
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br label %for.cond15, !llvm.loop !13

for.inc28:                                        ; preds = %for.cond15
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  br label %for.cond12, !llvm.loop !14

for.cond31:                                       ; preds = %for.cond31.preheader, %for.inc46
  %indvars.iv52 = phi i64 [ 0, %for.cond31.preheader ], [ %indvars.iv.next53, %for.inc46 ]
  %exitcond57.not = icmp eq i64 %indvars.iv52, %wide.trip.count56
  br i1 %exitcond57.not, label %for.cond49.preheader, label %for.cond35

for.cond49.preheader:                             ; preds = %for.cond31
  %14 = load i32, ptr %y1, align 4
  %smax61 = call i32 @llvm.smax.i32(i32 %14, i32 noundef 0)
  %wide.trip.count62 = zext nneg i32 %smax61 to i64
  br label %for.cond49

for.cond35:                                       ; preds = %for.cond31, %for.inc43
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.inc43 ], [ 0, %for.cond31 ]
  %exitcond.not = icmp eq i64 %indvars.iv49, %wide.trip.count
  br i1 %exitcond.not, label %for.inc46, label %for.inc43

for.inc43:                                        ; preds = %for.cond35
  %arrayidx42 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv52, i64 %indvars.iv49
  store i32 0, ptr %arrayidx42, align 4, !tbaa !5
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %for.cond35, !llvm.loop !15

for.inc46:                                        ; preds = %for.cond35
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  br label %for.cond31, !llvm.loop !16

for.cond49:                                       ; preds = %for.cond49.preheader, %for.inc79
  %indvars.iv70 = phi i64 [ 0, %for.cond49.preheader ], [ %indvars.iv.next71, %for.inc79 ]
  %exitcond74.not = icmp eq i64 %indvars.iv70, %wide.trip.count56
  br i1 %exitcond74.not, label %for.cond82, label %for.cond53

for.cond53:                                       ; preds = %for.cond49, %for.inc76
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %for.inc76 ], [ 0, %for.cond49 ]
  %exitcond69.not = icmp eq i64 %indvars.iv64, %wide.trip.count
  br i1 %exitcond69.not, label %for.inc79, label %for.cond57.preheader

for.cond57.preheader:                             ; preds = %for.cond53
  %arrayidx72 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv70, i64 %indvars.iv64
  br label %for.cond57

for.cond57:                                       ; preds = %for.cond57.preheader, %for.inc73
  %indvars.iv58 = phi i64 [ 0, %for.cond57.preheader ], [ %indvars.iv.next59, %for.inc73 ]
  %exitcond63.not = icmp eq i64 %indvars.iv58, %wide.trip.count62
  br i1 %exitcond63.not, label %for.inc76, label %for.inc73

for.inc73:                                        ; preds = %for.cond57
  %arrayidx64 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv70, i64 %indvars.iv58
  %15 = load i32, ptr %arrayidx64, align 4, !tbaa !5, !invariant.load !17
  %arrayidx68 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv58, i64 %indvars.iv64
  %16 = load i32, ptr %arrayidx68, align 4, !tbaa !5, !invariant.load !17
  %mul = mul nsw i32 %16, %15
  %17 = load i32, ptr %arrayidx72, align 4, !tbaa !5, !invariant.load !17
  %add = add nsw i32 %17, %mul
  store i32 %add, ptr %arrayidx72, align 4, !tbaa !5
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %for.cond57, !llvm.loop !18

for.inc76:                                        ; preds = %for.cond57
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  br label %for.cond53, !llvm.loop !19

for.inc79:                                        ; preds = %for.cond53
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  br label %for.cond49, !llvm.loop !20

for.cond82:                                       ; preds = %for.cond49, %for.inc106
  %18 = phi i32 [ %22, %for.inc106 ], [ %10, %for.cond49 ]
  %19 = phi i32 [ %.pre, %for.inc106 ], [ %9, %for.cond49 ]
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %for.inc106 ], [ 1, %for.cond49 ]
  %20 = sext i32 %19 to i64
  %cmp83.not = icmp sgt i64 %indvars.iv79, %20
  br i1 %cmp83.not, label %for.end108, label %for.cond85.preheader

for.cond85.preheader:                             ; preds = %for.cond82
  %21 = add nsw i64 %indvars.iv79, -1
  br label %for.cond85

for.cond85:                                       ; preds = %for.cond85.preheader, %for.body87
  %22 = phi i32 [ %18, %for.cond85.preheader ], [ %.pre83, %for.body87 ]
  %indvars.iv75 = phi i64 [ 1, %for.cond85.preheader ], [ %indvars.iv.next76, %for.body87 ]
  %23 = sext i32 %22 to i64
  %cmp86.not = icmp sgt i64 %indvars.iv75, %23
  br i1 %cmp86.not, label %for.inc106, label %for.body87

for.body87:                                       ; preds = %for.cond85
  %24 = zext i32 %22 to i64
  %cmp88.not = icmp eq i64 %indvars.iv75, %24
  %spec.select = select i1 %cmp88.not, ptr @.str.3, ptr @.str.2
  %25 = add nsw i64 %indvars.iv75, -1
  %arrayidx101 = getelementptr inbounds [100 x [100 x i32]], ptr %c, i64 0, i64 %21, i64 %25
  %26 = load i32, ptr %arrayidx101, align 4, !tbaa !5, !invariant.load !17
  %call102 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %spec.select, i32 noundef %26)
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  %.pre83 = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.cond85, !llvm.loop !21

for.inc106:                                       ; preds = %for.cond85
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond82, !llvm.loop !22

for.end108:                                       ; preds = %for.cond82
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y2) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x2) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y1) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x1) #5
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %a) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind willreturn }
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
!17 = !{}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
