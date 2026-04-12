; ModuleID = '<stdin>'
source_filename = "/tmp/tmp1sg02844.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x1) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x2) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y1) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y2) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %x1, ptr noundef nonnull align 4 %y1)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = zext i32 %2 to i64
  %4 = call ptr @llvm.stacksave.p0()
  %5 = mul nuw i64 %3, %1
  %vla = alloca i32, i64 %5, align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %for.inc7 ], [ 0, %entry ]
  %6 = load i32, ptr %x1, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp = icmp slt i64 %indvars.iv4, %7
  br i1 %cmp, label %for.cond1.preheader, label %for.end9

for.cond1.preheader:                              ; preds = %for.cond
  %8 = mul nuw nsw i64 %indvars.iv4, %3
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %8
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.inc ]
  %9 = load i32, ptr %y1, align 4, !tbaa !5
  %10 = sext i32 %9 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %10
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw i32, ptr %arrayidx, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  %call10 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x2, ptr noundef nonnull %y2)
  %11 = load i32, ptr %x2, align 4, !tbaa !5
  %12 = zext i32 %11 to i64
  %13 = load i32, ptr %y2, align 4, !tbaa !5
  %14 = zext i32 %13 to i64
  %15 = mul nuw i64 %14, %12
  %vla11 = alloca i32, i64 %15, align 16
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc26, %for.end9
  %16 = phi i32 [ %20, %for.inc26 ], [ %13, %for.end9 ]
  %17 = phi i32 [ %.pre, %for.inc26 ], [ %11, %for.end9 ]
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.inc26 ], [ 0, %for.end9 ]
  %18 = sext i32 %17 to i64
  %cmp13 = icmp slt i64 %indvars.iv10, %18
  br i1 %cmp13, label %for.cond15.preheader, label %for.end28

for.cond15.preheader:                             ; preds = %for.cond12
  %19 = mul nuw nsw i64 %indvars.iv10, %14
  %arrayidx19 = getelementptr inbounds nuw i32, ptr %vla11, i64 %19
  br label %for.cond15

for.cond15:                                       ; preds = %for.cond15.preheader, %for.inc23
  %20 = phi i32 [ %16, %for.cond15.preheader ], [ %.pre46, %for.inc23 ]
  %indvars.iv7 = phi i64 [ 0, %for.cond15.preheader ], [ %indvars.iv.next8, %for.inc23 ]
  %21 = sext i32 %20 to i64
  %cmp16 = icmp slt i64 %indvars.iv7, %21
  br i1 %cmp16, label %for.inc23, label %for.inc26

for.inc23:                                        ; preds = %for.cond15
  %arrayidx21 = getelementptr inbounds nuw i32, ptr %arrayidx19, i64 %indvars.iv7
  %call22 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx21)
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %.pre46 = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !13

for.inc26:                                        ; preds = %for.cond15
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %.pre = load i32, ptr %x2, align 4, !tbaa !5
  br label %for.cond12, !llvm.loop !14

for.end28:                                        ; preds = %for.cond12
  %22 = load i32, ptr %x1, align 4, !tbaa !5
  %23 = zext i32 %22 to i64
  %24 = zext i32 %16 to i64
  %25 = mul nuw i64 %23, %24
  %vla29 = alloca i32, i64 %25, align 16
  %smax = call i32 @llvm.smax.i32(i32 %16, i32 noundef 0)
  %smax19 = call i32 @llvm.smax.i32(i32 %22, i32 noundef 0)
  %wide.trip.count20 = zext nneg i32 %smax19 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc43, %for.end28
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %for.inc43 ], [ 0, %for.end28 ]
  %exitcond21.not = icmp eq i64 %indvars.iv16, %wide.trip.count20
  br i1 %exitcond21.not, label %for.cond46.preheader, label %for.cond33.preheader

for.cond46.preheader:                             ; preds = %for.cond30
  %smax26 = call i32 @llvm.smax.i32(i32 %17, i32 noundef 0)
  %wide.trip.count27 = zext nneg i32 %smax26 to i64
  br label %for.cond46

for.cond33.preheader:                             ; preds = %for.cond30
  %26 = mul nuw nsw i64 %indvars.iv16, %24
  %arrayidx37 = getelementptr inbounds nuw i32, ptr %vla29, i64 %26
  br label %for.cond33

for.cond33:                                       ; preds = %for.cond33.preheader, %for.inc40
  %indvars.iv13 = phi i64 [ 0, %for.cond33.preheader ], [ %indvars.iv.next14, %for.inc40 ]
  %exitcond.not = icmp eq i64 %indvars.iv13, %wide.trip.count
  br i1 %exitcond.not, label %for.inc43, label %for.inc40

for.inc40:                                        ; preds = %for.cond33
  %arrayidx39 = getelementptr inbounds nuw i32, ptr %arrayidx37, i64 %indvars.iv13
  store i32 0, ptr %arrayidx39, align 4, !tbaa !5
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  br label %for.cond33, !llvm.loop !15

for.inc43:                                        ; preds = %for.cond33
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond30, !llvm.loop !16

for.cond46:                                       ; preds = %for.cond46.preheader, %for.inc77
  %indvars.iv34 = phi i64 [ 0, %for.cond46.preheader ], [ %indvars.iv.next35, %for.inc77 ]
  %exitcond38.not = icmp eq i64 %indvars.iv34, %wide.trip.count20
  br i1 %exitcond38.not, label %for.cond80, label %for.cond49.preheader

for.cond49.preheader:                             ; preds = %for.cond46
  %27 = mul nuw nsw i64 %indvars.iv34, %24
  %arrayidx56 = getelementptr inbounds nuw i32, ptr %vla29, i64 %27
  %28 = mul nuw nsw i64 %indvars.iv34, %3
  %arrayidx60 = getelementptr inbounds nuw i32, ptr %vla, i64 %28
  br label %for.cond49

for.cond49:                                       ; preds = %for.cond49.preheader, %for.inc74
  %indvars.iv29 = phi i64 [ 0, %for.cond49.preheader ], [ %indvars.iv.next30, %for.inc74 ]
  %exitcond33.not = icmp eq i64 %indvars.iv29, %wide.trip.count
  br i1 %exitcond33.not, label %for.inc77, label %for.cond52.preheader

for.cond52.preheader:                             ; preds = %for.cond49
  %arrayidx58 = getelementptr inbounds nuw i32, ptr %arrayidx56, i64 %indvars.iv29
  %invariant.gep = getelementptr inbounds nuw i32, ptr %vla11, i64 %indvars.iv29
  br label %for.cond52

for.cond52:                                       ; preds = %for.cond52.preheader, %for.inc71
  %indvars.iv22 = phi i64 [ 0, %for.cond52.preheader ], [ %indvars.iv.next23, %for.inc71 ]
  %exitcond28.not = icmp eq i64 %indvars.iv22, %wide.trip.count27
  br i1 %exitcond28.not, label %for.inc74, label %for.inc71

for.inc71:                                        ; preds = %for.cond52
  %29 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  %arrayidx62 = getelementptr inbounds nuw i32, ptr %arrayidx60, i64 %indvars.iv22
  %30 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %31 = mul nuw nsw i64 %indvars.iv22, %14
  %gep = getelementptr inbounds nuw i32, ptr %invariant.gep, i64 %31
  %32 = load i32, ptr %gep, align 4, !tbaa !5
  %mul = mul nsw i32 %32, %30
  %add = add nsw i32 %mul, %29
  store i32 %add, ptr %arrayidx58, align 4, !tbaa !5
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.cond52, !llvm.loop !17

for.inc74:                                        ; preds = %for.cond52
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond49, !llvm.loop !18

for.inc77:                                        ; preds = %for.cond49
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %for.cond46, !llvm.loop !19

for.cond80:                                       ; preds = %for.cond46, %for.inc99
  %33 = phi i32 [ %.pre45, %for.inc99 ], [ %22, %for.cond46 ]
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %for.inc99 ], [ 0, %for.cond46 ]
  %34 = sext i32 %33 to i64
  %cmp81 = icmp slt i64 %indvars.iv42, %34
  br i1 %cmp81, label %for.body82, label %for.end101

for.body82:                                       ; preds = %for.cond80
  %35 = mul nuw nsw i64 %indvars.iv42, %24
  %arrayidx84 = getelementptr inbounds nuw i32, ptr %vla29, i64 %35
  %36 = load i32, ptr %arrayidx84, align 4, !tbaa !5
  %call86 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %36)
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc95, %for.body82
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.inc95 ], [ 1, %for.body82 ]
  %37 = load i32, ptr %y2, align 4, !tbaa !5
  %38 = sext i32 %37 to i64
  %cmp88 = icmp slt i64 %indvars.iv39, %38
  br i1 %cmp88, label %for.inc95, label %for.inc99

for.inc95:                                        ; preds = %for.cond87
  %arrayidx93 = getelementptr inbounds nuw i32, ptr %arrayidx84, i64 %indvars.iv39
  %39 = load i32, ptr %arrayidx93, align 4, !tbaa !5
  %call94 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %39)
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %for.cond87, !llvm.loop !20

for.inc99:                                        ; preds = %for.cond87
  %putchar = call i32 @putchar(i32 noundef 10) #8
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  %.pre45 = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond80, !llvm.loop !21

for.end101:                                       ; preds = %for.cond80
  call void @llvm.stackrestore.p0(ptr %4)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y2) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y1) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x2) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x1) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind willreturn }
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
