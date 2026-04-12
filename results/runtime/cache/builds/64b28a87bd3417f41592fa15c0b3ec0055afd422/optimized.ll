; ModuleID = '<stdin>'
source_filename = "/tmp/tmpfbo4wdja.cpp"
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
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %b = alloca [100 x [100 x i32]], align 16
  %c = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x1) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y1) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x2) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y2) #6
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(40000) %a, i8 noundef 0, i64 noundef 40000, i1 noundef false) #7
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %b) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(40000) %b, i8 noundef 0, i64 noundef 40000, i1 noundef false) #7
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %c) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(40000) %c, i8 noundef 0, i64 noundef 40000, i1 noundef false) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %x1, ptr noundef nonnull align 4 %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %indvars.iv13 = phi i64 [ %indvars.iv.next14, %for.inc8 ], [ 0, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv13, %1
  br i1 %cmp.not.not, label %for.cond1, label %for.end10

for.cond1:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp3.not.not = icmp slt i64 %indvars.iv, %3
  br i1 %cmp3.not.not, label %for.inc, label %for.inc8

for.inc:                                          ; preds = %for.cond1
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv13, i64 %indvars.iv
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond1
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  %call11 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x2, ptr noundef nonnull %y2)
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc28, %for.end10
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.inc28 ], [ 0, %for.end10 ]
  %4 = load i32, ptr %x2, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp14.not.not = icmp slt i64 %indvars.iv19, %5
  br i1 %cmp14.not.not, label %for.cond16, label %for.cond31.preheader

for.cond31.preheader:                             ; preds = %for.cond12
  %6 = load i32, ptr %x1, align 4, !tbaa !5
  %7 = load i32, ptr %y2, align 4
  %smax = call i32 @llvm.smax.i32(i32 %7, i32 noundef 0)
  %smax28 = call i32 @llvm.smax.i32(i32 %6, i32 noundef 0)
  %wide.trip.count29 = zext nneg i32 %smax28 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond31

for.cond16:                                       ; preds = %for.cond12, %for.inc25
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %for.inc25 ], [ 0, %for.cond12 ]
  %8 = load i32, ptr %y2, align 4, !tbaa !5
  %9 = sext i32 %8 to i64
  %cmp18.not.not = icmp slt i64 %indvars.iv16, %9
  br i1 %cmp18.not.not, label %for.inc25, label %for.inc28

for.inc25:                                        ; preds = %for.cond16
  %arrayidx23 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv19, i64 %indvars.iv16
  %call24 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx23)
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond16, !llvm.loop !13

for.inc28:                                        ; preds = %for.cond16
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  br label %for.cond12, !llvm.loop !14

for.cond31:                                       ; preds = %for.cond31.preheader, %for.inc46
  %indvars.iv25 = phi i64 [ 0, %for.cond31.preheader ], [ %indvars.iv.next26, %for.inc46 ]
  %exitcond30.not = icmp eq i64 %indvars.iv25, %wide.trip.count29
  br i1 %exitcond30.not, label %for.cond49.preheader, label %for.cond35

for.cond49.preheader:                             ; preds = %for.cond31
  %smax35 = call i32 @llvm.smax.i32(i32 %4, i32 noundef 0)
  %wide.trip.count36 = zext nneg i32 %smax35 to i64
  br label %for.cond49

for.cond35:                                       ; preds = %for.cond31, %for.inc43
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.inc43 ], [ 0, %for.cond31 ]
  %exitcond.not = icmp eq i64 %indvars.iv22, %wide.trip.count
  br i1 %exitcond.not, label %for.inc46, label %for.inc43

for.inc43:                                        ; preds = %for.cond35
  %arrayidx42 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv25, i64 %indvars.iv22
  store i32 0, ptr %arrayidx42, align 4, !tbaa !5
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.cond35, !llvm.loop !15

for.inc46:                                        ; preds = %for.cond35
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond31, !llvm.loop !16

for.cond49:                                       ; preds = %for.cond49.preheader, %for.inc83
  %indvars.iv44 = phi i64 [ 0, %for.cond49.preheader ], [ %indvars.iv.next45, %for.inc83 ]
  %exitcond48.not = icmp eq i64 %indvars.iv44, %wide.trip.count29
  br i1 %exitcond48.not, label %for.cond86, label %for.cond53

for.cond53:                                       ; preds = %for.cond49, %for.inc80
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.inc80 ], [ 0, %for.cond49 ]
  %exitcond43.not = icmp eq i64 %indvars.iv38, %wide.trip.count
  br i1 %exitcond43.not, label %for.inc83, label %for.cond57.preheader

for.cond57.preheader:                             ; preds = %for.cond53
  %arrayidx64 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv44, i64 %indvars.iv38
  br label %for.cond57

for.cond57:                                       ; preds = %for.cond57.preheader, %for.inc77
  %indvars.iv31 = phi i64 [ 0, %for.cond57.preheader ], [ %indvars.iv.next32, %for.inc77 ]
  %exitcond37.not = icmp eq i64 %indvars.iv31, %wide.trip.count36
  br i1 %exitcond37.not, label %for.inc80, label %for.inc77

for.inc77:                                        ; preds = %for.cond57
  %10 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  %arrayidx68 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv44, i64 %indvars.iv31
  %11 = load i32, ptr %arrayidx68, align 4, !tbaa !5
  %arrayidx72 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv31, i64 %indvars.iv38
  %12 = load i32, ptr %arrayidx72, align 4, !tbaa !5
  %mul = mul nsw i32 %12, %11
  %add = add nsw i32 %mul, %10
  store i32 %add, ptr %arrayidx64, align 4, !tbaa !5
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  br label %for.cond57, !llvm.loop !17

for.inc80:                                        ; preds = %for.cond57
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond53, !llvm.loop !18

for.inc83:                                        ; preds = %for.cond53
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  br label %for.cond49, !llvm.loop !19

for.cond86:                                       ; preds = %for.cond49, %for.inc109
  %13 = phi i32 [ %16, %for.inc109 ], [ %7, %for.cond49 ]
  %14 = phi i32 [ %.pre, %for.inc109 ], [ %6, %for.cond49 ]
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %for.inc109 ], [ 0, %for.cond49 ]
  %15 = sext i32 %14 to i64
  %cmp88.not.not = icmp slt i64 %indvars.iv52, %15
  br i1 %cmp88.not.not, label %for.cond90, label %for.end111

for.cond90:                                       ; preds = %for.cond86, %for.body93
  %16 = phi i32 [ %.pre55, %for.body93 ], [ %13, %for.cond86 ]
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.body93 ], [ 0, %for.cond86 ]
  %17 = sext i32 %16 to i64
  %cmp92.not.not = icmp slt i64 %indvars.iv49, %17
  br i1 %cmp92.not.not, label %for.body93, label %for.inc109

for.body93:                                       ; preds = %for.cond90
  %sub91 = add nsw i32 %16, -1
  %18 = sext i32 %sub91 to i64
  %cmp95 = icmp slt i64 %indvars.iv49, %18
  %arrayidx99 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv52, i64 %indvars.iv49
  %19 = load i32, ptr %arrayidx99, align 4, !tbaa !5
  %.str.2..str.3 = select i1 %cmp95, ptr @.str.2, ptr @.str.3
  %call100 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.2..str.3, i32 noundef %19) #8
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %.pre55 = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.cond90, !llvm.loop !20

for.inc109:                                       ; preds = %for.cond90
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond86, !llvm.loop !21

for.end111:                                       ; preds = %for.cond86
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %c) #8
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %b) #8
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %a) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y2) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x2) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y1) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x1) #8
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind willreturn }
attributes #7 = { nofree willreturn }
attributes #8 = { nounwind }

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
