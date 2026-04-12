; ModuleID = '<stdin>'
source_filename = "/tmp/tmpna9nveh6.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %a = alloca [101 x [101 x i32]], align 16
  %b = alloca [101 x [101 x i32]], align 16
  %c = alloca [101 x [101 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #5
  store i32 0, ptr %x1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #5
  store i32 0, ptr %y1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #5
  store i32 0, ptr %x2, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #5
  store i32 0, ptr %y2, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %c) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x1, ptr noundef nonnull %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup3, %entry
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %for.cond.cleanup3 ], [ 1, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv40, %1
  br i1 %cmp.not, label %for.cond.cleanup, label %for.cond1

for.cond.cleanup:                                 ; preds = %for.cond
  %call17 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x2, ptr noundef nonnull %y2)
  br label %for.cond19

for.cond1:                                        ; preds = %for.cond, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 1, %for.cond ]
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp2.not = icmp sgt i64 %indvars.iv, %3
  br i1 %cmp2.not, label %for.cond.cleanup3, label %for.body4

for.cond.cleanup3:                                ; preds = %for.cond1
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %for.cond, !llvm.loop !9

for.body4:                                        ; preds = %for.cond1
  %4 = zext i32 %2 to i64
  %cmp5.not = icmp eq i64 %indvars.iv, %4
  %arrayidx12 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv40, i64 %indvars.iv
  %.str.2..str.1 = select i1 %cmp5.not, ptr @.str.2, ptr @.str.1
  %call8 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull %.str.2..str.1, ptr noundef nonnull %arrayidx12)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !12

for.cond19:                                       ; preds = %for.cond.cleanup26, %for.cond.cleanup
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.cond.cleanup26 ], [ 1, %for.cond.cleanup ]
  %5 = load i32, ptr %x2, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %cmp20.not = icmp sgt i64 %indvars.iv46, %6
  br i1 %cmp20.not, label %for.cond49.preheader, label %for.cond24

for.cond49.preheader:                             ; preds = %for.cond19
  %7 = load i32, ptr %x1, align 4, !tbaa !5
  %8 = load i32, ptr %y2, align 4
  %smax = call i32 @llvm.smax.i32(i32 %8, i32 0)
  %9 = add nuw i32 %smax, 1
  %smax55 = call i32 @llvm.smax.i32(i32 %7, i32 0)
  %10 = add nuw i32 %smax55, 1
  %wide.trip.count56 = zext i32 %10 to i64
  %wide.trip.count = zext i32 %9 to i64
  br label %for.cond49

for.cond24:                                       ; preds = %for.cond19, %for.body27
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %for.body27 ], [ 1, %for.cond19 ]
  %11 = load i32, ptr %y2, align 4, !tbaa !5
  %12 = sext i32 %11 to i64
  %cmp25.not = icmp sgt i64 %indvars.iv43, %12
  br i1 %cmp25.not, label %for.cond.cleanup26, label %for.body27

for.cond.cleanup26:                               ; preds = %for.cond24
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br label %for.cond19, !llvm.loop !13

for.body27:                                       ; preds = %for.cond24
  %13 = zext i32 %11 to i64
  %cmp28.not = icmp eq i64 %indvars.iv43, %13
  %arrayidx39 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv46, i64 %indvars.iv43
  %.str.2..str.184 = select i1 %cmp28.not, ptr @.str.2, ptr @.str.1
  %call34 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull %.str.2..str.184, ptr noundef nonnull %arrayidx39)
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  br label %for.cond24, !llvm.loop !14

for.cond49:                                       ; preds = %for.cond49.preheader, %for.cond.cleanup56
  %indvars.iv52 = phi i64 [ 1, %for.cond49.preheader ], [ %indvars.iv.next53, %for.cond.cleanup56 ]
  %exitcond57 = icmp eq i64 %indvars.iv52, %wide.trip.count56
  br i1 %exitcond57, label %for.cond69.preheader, label %for.cond54

for.cond69.preheader:                             ; preds = %for.cond49
  %14 = load i32, ptr %y1, align 4
  %smax61 = call i32 @llvm.smax.i32(i32 %14, i32 0)
  %15 = add nuw i32 %smax61, 1
  %wide.trip.count68 = zext i32 %9 to i64
  %wide.trip.count62 = zext i32 %15 to i64
  br label %for.cond69

for.cond54:                                       ; preds = %for.cond49, %for.body57
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.body57 ], [ 1, %for.cond49 ]
  %exitcond = icmp eq i64 %indvars.iv49, %wide.trip.count
  br i1 %exitcond, label %for.cond.cleanup56, label %for.body57

for.cond.cleanup56:                               ; preds = %for.cond54
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  br label %for.cond49, !llvm.loop !15

for.body57:                                       ; preds = %for.cond54
  %arrayidx61 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv52, i64 %indvars.iv49
  store i32 0, ptr %arrayidx61, align 4, !tbaa !5
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %for.cond54, !llvm.loop !16

for.cond69:                                       ; preds = %for.cond69.preheader, %for.cond.cleanup76
  %indvars.iv70 = phi i64 [ 1, %for.cond69.preheader ], [ %indvars.iv.next71, %for.cond.cleanup76 ]
  %exitcond74 = icmp eq i64 %indvars.iv70, %wide.trip.count56
  br i1 %exitcond74, label %for.cond108, label %for.cond74

for.cond74:                                       ; preds = %for.cond69, %for.cond.cleanup80
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %for.cond.cleanup80 ], [ 1, %for.cond69 ]
  %exitcond69 = icmp eq i64 %indvars.iv64, %wide.trip.count68
  br i1 %exitcond69, label %for.cond.cleanup76, label %for.cond78.preheader

for.cond78.preheader:                             ; preds = %for.cond74
  %arrayidx85 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv70, i64 %indvars.iv64
  br label %for.cond78

for.cond.cleanup76:                               ; preds = %for.cond74
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  br label %for.cond69, !llvm.loop !17

for.cond78:                                       ; preds = %for.cond78.preheader, %for.body81
  %indvars.iv58 = phi i64 [ 1, %for.cond78.preheader ], [ %indvars.iv.next59, %for.body81 ]
  %exitcond63 = icmp eq i64 %indvars.iv58, %wide.trip.count62
  br i1 %exitcond63, label %for.cond.cleanup80, label %for.body81

for.cond.cleanup80:                               ; preds = %for.cond78
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  br label %for.cond74, !llvm.loop !18

for.body81:                                       ; preds = %for.cond78
  %16 = load i32, ptr %arrayidx85, align 4, !tbaa !5
  %arrayidx89 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv70, i64 %indvars.iv58
  %17 = load i32, ptr %arrayidx89, align 4, !tbaa !5
  %arrayidx93 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv58, i64 %indvars.iv64
  %18 = load i32, ptr %arrayidx93, align 4, !tbaa !5
  %mul = mul nsw i32 %18, %17
  %add = add nsw i32 %mul, %16
  store i32 %add, ptr %arrayidx85, align 4, !tbaa !5
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %for.cond78, !llvm.loop !19

for.cond108:                                      ; preds = %for.cond69, %for.cond.cleanup115
  %19 = phi i32 [ %22, %for.cond.cleanup115 ], [ %8, %for.cond69 ]
  %20 = phi i32 [ %.pre, %for.cond.cleanup115 ], [ %7, %for.cond69 ]
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %for.cond.cleanup115 ], [ 1, %for.cond69 ]
  %21 = sext i32 %20 to i64
  %cmp109.not = icmp sgt i64 %indvars.iv78, %21
  br i1 %cmp109.not, label %for.cond.cleanup110, label %for.cond113

for.cond.cleanup110:                              ; preds = %for.cond108
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #5
  ret i32 0

for.cond113:                                      ; preds = %for.cond108, %for.body116
  %22 = phi i32 [ %.pre81, %for.body116 ], [ %19, %for.cond108 ]
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %for.body116 ], [ 1, %for.cond108 ]
  %23 = sext i32 %22 to i64
  %cmp114.not = icmp sgt i64 %indvars.iv75, %23
  br i1 %cmp114.not, label %for.cond.cleanup115, label %for.body116

for.cond.cleanup115:                              ; preds = %for.cond113
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond108, !llvm.loop !20

for.body116:                                      ; preds = %for.cond113
  %24 = zext i32 %22 to i64
  %cmp117.not = icmp eq i64 %indvars.iv75, %24
  %arrayidx128 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv78, i64 %indvars.iv75
  %25 = load i32, ptr %arrayidx128, align 4, !tbaa !5
  %.str.2..str.185 = select i1 %cmp117.not, ptr @.str.2, ptr @.str.1
  %call123 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.2..str.185, i32 noundef %25)
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  %.pre81 = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.cond113, !llvm.loop !21
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
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
