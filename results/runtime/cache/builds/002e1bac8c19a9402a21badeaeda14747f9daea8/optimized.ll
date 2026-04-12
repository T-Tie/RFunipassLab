; ModuleID = '<stdin>'
source_filename = "/tmp/tmp1sg02844.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x1) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x2) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y1) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y2) #6
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
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.inc7 ], [ 0, %entry ]
  %6 = load i32, ptr %x1, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp = icmp slt i64 %indvars.iv38, %7
  br i1 %cmp, label %for.cond1.preheader, label %for.end9

for.cond1.preheader:                              ; preds = %for.cond
  %8 = mul nuw nsw i64 %indvars.iv38, %3
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
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
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
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.inc26 ], [ 0, %for.end9 ]
  %18 = sext i32 %17 to i64
  %cmp13 = icmp slt i64 %indvars.iv44, %18
  br i1 %cmp13, label %for.cond15.preheader, label %for.end28

for.cond15.preheader:                             ; preds = %for.cond12
  %19 = mul nuw nsw i64 %indvars.iv44, %14
  %arrayidx19 = getelementptr inbounds nuw i32, ptr %vla11, i64 %19
  br label %for.cond15

for.cond15:                                       ; preds = %for.cond15.preheader, %for.inc23
  %20 = phi i32 [ %16, %for.cond15.preheader ], [ %.pre80, %for.inc23 ]
  %indvars.iv41 = phi i64 [ 0, %for.cond15.preheader ], [ %indvars.iv.next42, %for.inc23 ]
  %21 = sext i32 %20 to i64
  %cmp16 = icmp slt i64 %indvars.iv41, %21
  br i1 %cmp16, label %for.inc23, label %for.inc26

for.inc23:                                        ; preds = %for.cond15
  %arrayidx21 = getelementptr inbounds nuw i32, ptr %arrayidx19, i64 %indvars.iv41
  %call22 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx21)
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %.pre80 = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !13

for.inc26:                                        ; preds = %for.cond15
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %.pre = load i32, ptr %x2, align 4, !tbaa !5
  br label %for.cond12, !llvm.loop !14

for.end28:                                        ; preds = %for.cond12
  %22 = load i32, ptr %x1, align 4, !tbaa !5
  %23 = zext i32 %22 to i64
  %24 = zext i32 %16 to i64
  %25 = mul nuw i64 %24, %23
  %vla29 = alloca i32, i64 %25, align 16
  %smax = call i32 @llvm.smax.i32(i32 %16, i32 noundef 0)
  %smax53 = call i32 @llvm.smax.i32(i32 %22, i32 noundef 0)
  %wide.trip.count54 = zext nneg i32 %smax53 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc43, %for.end28
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %for.inc43 ], [ 0, %for.end28 ]
  %exitcond55.not = icmp eq i64 %indvars.iv50, %wide.trip.count54
  br i1 %exitcond55.not, label %for.cond46.preheader, label %for.cond33.preheader

for.cond46.preheader:                             ; preds = %for.cond30
  %smax60 = call i32 @llvm.smax.i32(i32 %17, i32 noundef 0)
  %wide.trip.count61 = zext nneg i32 %smax60 to i64
  br label %for.cond46

for.cond33.preheader:                             ; preds = %for.cond30
  %26 = mul nuw nsw i64 %indvars.iv50, %24
  %arrayidx37 = getelementptr inbounds nuw i32, ptr %vla29, i64 %26
  br label %for.cond33

for.cond33:                                       ; preds = %for.cond33.preheader, %for.inc40
  %indvars.iv47 = phi i64 [ 0, %for.cond33.preheader ], [ %indvars.iv.next48, %for.inc40 ]
  %exitcond.not = icmp eq i64 %indvars.iv47, %wide.trip.count
  br i1 %exitcond.not, label %for.inc43, label %for.inc40

for.inc40:                                        ; preds = %for.cond33
  %arrayidx39 = getelementptr inbounds nuw i32, ptr %arrayidx37, i64 %indvars.iv47
  store i32 0, ptr %arrayidx39, align 4, !tbaa !5
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br label %for.cond33, !llvm.loop !15

for.inc43:                                        ; preds = %for.cond33
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  br label %for.cond30, !llvm.loop !16

for.cond46:                                       ; preds = %for.cond46.preheader, %for.inc77
  %indvars.iv68 = phi i64 [ 0, %for.cond46.preheader ], [ %indvars.iv.next69, %for.inc77 ]
  %exitcond72.not = icmp eq i64 %indvars.iv68, %wide.trip.count54
  br i1 %exitcond72.not, label %for.cond80, label %for.cond49.preheader

for.cond49.preheader:                             ; preds = %for.cond46
  %27 = mul nuw nsw i64 %indvars.iv68, %24
  %arrayidx56 = getelementptr inbounds nuw i32, ptr %vla29, i64 %27
  %28 = mul nuw nsw i64 %indvars.iv68, %3
  %arrayidx60 = getelementptr inbounds nuw i32, ptr %vla, i64 %28
  br label %for.cond49

for.cond49:                                       ; preds = %for.cond49.preheader, %for.inc74
  %indvars.iv63 = phi i64 [ 0, %for.cond49.preheader ], [ %indvars.iv.next64, %for.inc74 ]
  %exitcond67.not = icmp eq i64 %indvars.iv63, %wide.trip.count
  br i1 %exitcond67.not, label %for.inc77, label %for.cond52.preheader

for.cond52.preheader:                             ; preds = %for.cond49
  %arrayidx58 = getelementptr inbounds nuw i32, ptr %arrayidx56, i64 %indvars.iv63
  %invariant.gep = getelementptr inbounds nuw i32, ptr %vla11, i64 %indvars.iv63
  br label %for.cond52

for.cond52:                                       ; preds = %for.cond52.preheader, %for.inc71
  %indvars.iv56 = phi i64 [ 0, %for.cond52.preheader ], [ %indvars.iv.next57, %for.inc71 ]
  %exitcond62.not = icmp eq i64 %indvars.iv56, %wide.trip.count61
  br i1 %exitcond62.not, label %for.inc74, label %for.inc71

for.inc71:                                        ; preds = %for.cond52
  %29 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  %arrayidx62 = getelementptr inbounds nuw i32, ptr %arrayidx60, i64 %indvars.iv56
  %30 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %31 = mul nuw nsw i64 %indvars.iv56, %14
  %gep = getelementptr inbounds nuw i32, ptr %invariant.gep, i64 %31
  %32 = load i32, ptr %gep, align 4, !tbaa !5
  %mul = mul nsw i32 %32, %30
  %add = add nsw i32 %mul, %29
  store i32 %add, ptr %arrayidx58, align 4, !tbaa !5
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  br label %for.cond52, !llvm.loop !17

for.inc74:                                        ; preds = %for.cond52
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  br label %for.cond49, !llvm.loop !18

for.inc77:                                        ; preds = %for.cond49
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  br label %for.cond46, !llvm.loop !19

for.cond80:                                       ; preds = %for.cond46, %for.inc99
  %33 = phi i32 [ %.pre79, %for.inc99 ], [ %22, %for.cond46 ]
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %for.inc99 ], [ 0, %for.cond46 ]
  %34 = sext i32 %33 to i64
  %cmp81 = icmp slt i64 %indvars.iv76, %34
  br i1 %cmp81, label %for.body82, label %for.end101

for.body82:                                       ; preds = %for.cond80
  %35 = mul nuw nsw i64 %indvars.iv76, %24
  %arrayidx84 = getelementptr inbounds nuw i32, ptr %vla29, i64 %35
  %36 = load i32, ptr %arrayidx84, align 4, !tbaa !5
  %call86 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %36)
  br label %for.cond87

for.cond87:                                       ; preds = %for.inc95, %for.body82
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %for.inc95 ], [ 1, %for.body82 ]
  %37 = load i32, ptr %y2, align 4, !tbaa !5
  %38 = sext i32 %37 to i64
  %cmp88 = icmp slt i64 %indvars.iv73, %38
  br i1 %cmp88, label %for.inc95, label %for.inc99

for.inc95:                                        ; preds = %for.cond87
  %arrayidx93 = getelementptr inbounds nuw i32, ptr %arrayidx84, i64 %indvars.iv73
  %39 = load i32, ptr %arrayidx93, align 4, !tbaa !5
  %call94 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %39)
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  br label %for.cond87, !llvm.loop !20

for.inc99:                                        ; preds = %for.cond87
  %putchar = call i32 @putchar(i32 noundef 10) #7
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  %.pre79 = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond80, !llvm.loop !21

for.end101:                                       ; preds = %for.cond80
  call void @llvm.stackrestore.p0(ptr %4)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y1) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x1) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind willreturn }
attributes #7 = { nounwind }

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
