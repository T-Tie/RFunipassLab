; ModuleID = '<stdin>'
source_filename = "/tmp/tmp7t1mcd9z.cpp"
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
  %a = alloca [110 x [110 x i32]], align 16
  %b = alloca [110 x [110 x i32]], align 16
  %c = alloca [110 x [110 x i32]], align 16
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 48400, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 48400, ptr nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 48400, ptr nonnull %c) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48400) %a, i8 0, i64 48400, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48400) %b, i8 0, i64 48400, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48400) %c, i8 0, i64 48400, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x1, ptr noundef nonnull %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %for.inc9 ], [ 1, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv30, %1
  br i1 %cmp.not, label %for.end11, label %for.cond3

for.cond3:                                        ; preds = %for.cond, %for.body5
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5 ], [ 1, %for.cond ]
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp4.not = icmp sgt i64 %indvars.iv, %3
  br i1 %cmp4.not, label %for.inc9, label %for.body5

for.body5:                                        ; preds = %for.cond3
  %arrayidx7 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %a, i64 0, i64 %indvars.iv30, i64 %indvars.iv
  %call8 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx7)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond3, !llvm.loop !9

for.inc9:                                         ; preds = %for.cond3
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond, !llvm.loop !12

for.end11:                                        ; preds = %for.cond
  %call12 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x2, ptr noundef nonnull %y2)
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc27, %for.end11
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %for.inc27 ], [ 1, %for.end11 ]
  %4 = load i32, ptr %x2, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp14.not = icmp sgt i64 %indvars.iv36, %5
  br i1 %cmp14.not, label %for.cond30.preheader, label %for.cond16

for.cond30.preheader:                             ; preds = %for.cond13
  %6 = load i32, ptr %x1, align 4, !tbaa !5
  %7 = load i32, ptr %y2, align 4
  %8 = load i32, ptr %y1, align 4
  %smax = call i32 @llvm.smax.i32(i32 %8, i32 0)
  %9 = add nuw i32 %smax, 1
  %smax45 = call i32 @llvm.smax.i32(i32 %7, i32 0)
  %10 = add nuw i32 %smax45, 1
  %smax51 = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %11 = add nuw i32 %smax51, 1
  %wide.trip.count52 = zext i32 %11 to i64
  %wide.trip.count46 = zext i32 %10 to i64
  %wide.trip.count = zext i32 %9 to i64
  br label %for.cond30

for.cond16:                                       ; preds = %for.cond13, %for.body18
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %for.body18 ], [ 1, %for.cond13 ]
  %12 = load i32, ptr %y2, align 4, !tbaa !5
  %13 = sext i32 %12 to i64
  %cmp17.not = icmp sgt i64 %indvars.iv33, %13
  br i1 %cmp17.not, label %for.inc27, label %for.body18

for.body18:                                       ; preds = %for.cond16
  %arrayidx22 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %b, i64 0, i64 %indvars.iv36, i64 %indvars.iv33
  %call23 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx22)
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond16, !llvm.loop !13

for.inc27:                                        ; preds = %for.cond16
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  br label %for.cond13, !llvm.loop !14

for.cond30:                                       ; preds = %for.cond30.preheader, %for.inc57
  %indvars.iv48 = phi i64 [ 1, %for.cond30.preheader ], [ %indvars.iv.next49, %for.inc57 ]
  %exitcond53 = icmp eq i64 %indvars.iv48, %wide.trip.count52
  br i1 %exitcond53, label %for.cond60, label %for.cond33

for.cond33:                                       ; preds = %for.cond30, %for.inc54
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %for.inc54 ], [ 1, %for.cond30 ]
  %exitcond47 = icmp eq i64 %indvars.iv42, %wide.trip.count46
  br i1 %exitcond47, label %for.inc57, label %for.cond36.preheader

for.cond36.preheader:                             ; preds = %for.cond33
  %arrayidx50 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %c, i64 0, i64 %indvars.iv48, i64 %indvars.iv42
  br label %for.cond36

for.cond36:                                       ; preds = %for.cond36.preheader, %for.body38
  %indvars.iv39 = phi i64 [ 1, %for.cond36.preheader ], [ %indvars.iv.next40, %for.body38 ]
  %exitcond = icmp eq i64 %indvars.iv39, %wide.trip.count
  br i1 %exitcond, label %for.inc54, label %for.body38

for.body38:                                       ; preds = %for.cond36
  %arrayidx42 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %a, i64 0, i64 %indvars.iv48, i64 %indvars.iv39
  %14 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %arrayidx46 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %b, i64 0, i64 %indvars.iv39, i64 %indvars.iv42
  %15 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %mul = mul nsw i32 %15, %14
  %16 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %add = add nsw i32 %16, %mul
  store i32 %add, ptr %arrayidx50, align 4, !tbaa !5
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %for.cond36, !llvm.loop !15

for.inc54:                                        ; preds = %for.cond36
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %for.cond33, !llvm.loop !16

for.inc57:                                        ; preds = %for.cond33
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  br label %for.cond30, !llvm.loop !17

for.cond60:                                       ; preds = %for.cond30, %for.end73
  %17 = phi i32 [ %.pre, %for.end73 ], [ %6, %for.cond30 ]
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %for.end73 ], [ 1, %for.cond30 ]
  %18 = sext i32 %17 to i64
  %cmp61.not = icmp sgt i64 %indvars.iv57, %18
  br i1 %cmp61.not, label %for.end81, label %for.cond63

for.cond63:                                       ; preds = %for.cond60, %for.body65
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %for.body65 ], [ 1, %for.cond60 ]
  %19 = load i32, ptr %y2, align 4, !tbaa !5
  %20 = sext i32 %19 to i64
  %cmp64 = icmp slt i64 %indvars.iv54, %20
  br i1 %cmp64, label %for.body65, label %for.end73

for.body65:                                       ; preds = %for.cond63
  %arrayidx69 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %c, i64 0, i64 %indvars.iv57, i64 %indvars.iv54
  %21 = load i32, ptr %arrayidx69, align 4, !tbaa !5
  %call70 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %21)
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %for.cond63, !llvm.loop !18

for.end73:                                        ; preds = %for.cond63
  %arrayidx77 = getelementptr inbounds [110 x [110 x i32]], ptr %c, i64 0, i64 %indvars.iv57, i64 %20
  %22 = load i32, ptr %arrayidx77, align 4, !tbaa !5
  %call78 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %22)
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond60, !llvm.loop !19

for.end81:                                        ; preds = %for.cond60
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #6
  call void @llvm.lifetime.end.p0(i64 48400, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 48400, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 48400, ptr nonnull %a) #6
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
!19 = distinct !{!19, !10, !11}
