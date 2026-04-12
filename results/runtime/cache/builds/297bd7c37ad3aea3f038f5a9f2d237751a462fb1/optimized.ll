; ModuleID = '<stdin>'
source_filename = "/tmp/tmp13x9tj6s.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [1000 x [1000 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 4000000, ptr nonnull %a) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = phi i32 [ %2, %for.inc7 ], [ %.pre, %entry ]
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.inc7 ], [ 0, %entry ]
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv37, %1
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count50 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.inc
  %2 = phi i32 [ %.pre64, %for.inc ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv37, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre64 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc44
  %indvars.iv45 = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next46, %for.inc44 ]
  %x1.0 = phi i32 [ undef, %for.cond10.preheader ], [ %x1.1, %for.inc44 ]
  %y1.0 = phi i32 [ undef, %for.cond10.preheader ], [ %y1.1, %for.inc44 ]
  %exitcond51.not = icmp eq i64 %indvars.iv45, %wide.trip.count50
  br i1 %exitcond51.not, label %for.cond47.preheader, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond10
  %4 = add nsw i64 %indvars.iv45, -1
  %5 = trunc nuw nsw i64 %indvars.iv45 to i32
  br label %for.cond13

for.cond47.preheader:                             ; preds = %for.cond10
  br label %for.cond47

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc41
  %indvars.iv40 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next41, %for.inc41 ]
  %x1.1 = phi i32 [ %x1.0, %for.cond13.preheader ], [ %x1.2, %for.inc41 ]
  %y1.1 = phi i32 [ %y1.0, %for.cond13.preheader ], [ %y1.2, %for.inc41 ]
  %exitcond.not = icmp eq i64 %indvars.iv40, %wide.trip.count
  br i1 %exitcond.not, label %for.inc44, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %arrayidx19 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv45, i64 %indvars.iv40
  %6 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %6, 0
  br i1 %cmp20, label %land.lhs.true, label %for.inc41

land.lhs.true:                                    ; preds = %for.body15
  %7 = add nsw i64 %indvars.iv40, -1
  %arrayidx24 = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv45, i64 %7
  %8 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %cmp25 = icmp eq i32 %8, 255
  br i1 %cmp25, label %land.lhs.true26, label %for.inc41

land.lhs.true26:                                  ; preds = %land.lhs.true
  %arrayidx32 = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %4, i64 %7
  %9 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %cmp33 = icmp eq i32 %9, 255
  br i1 %cmp33, label %land.lhs.true34, label %for.inc41

land.lhs.true34:                                  ; preds = %land.lhs.true26
  %arrayidx39 = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %4, i64 %indvars.iv40
  %10 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  %cmp40 = icmp eq i32 %10, 255
  %spec.select = select i1 %cmp40, i32 %5, i32 %x1.1
  %11 = trunc nuw nsw i64 %indvars.iv40 to i32
  %spec.select33 = select i1 %cmp40, i32 %11, i32 %y1.1
  br label %for.inc41

for.inc41:                                        ; preds = %land.lhs.true34, %for.body15, %land.lhs.true, %land.lhs.true26
  %x1.2 = phi i32 [ %x1.1, %land.lhs.true26 ], [ %x1.1, %land.lhs.true ], [ %x1.1, %for.body15 ], [ %spec.select, %land.lhs.true34 ]
  %y1.2 = phi i32 [ %y1.1, %land.lhs.true26 ], [ %y1.1, %land.lhs.true ], [ %y1.1, %for.body15 ], [ %spec.select33, %land.lhs.true34 ]
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %for.cond13, !llvm.loop !13

for.inc44:                                        ; preds = %for.cond13
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  br label %for.cond10, !llvm.loop !14

for.cond47:                                       ; preds = %for.cond50, %for.cond47.preheader
  %indvars.iv59 = phi i64 [ 0, %for.cond47.preheader ], [ %indvars.iv.next60, %for.cond50 ]
  %x2.0 = phi i32 [ undef, %for.cond47.preheader ], [ %x2.1, %for.cond50 ]
  %y2.0 = phi i32 [ undef, %for.cond47.preheader ], [ %y2.1, %for.cond50 ]
  %exitcond63.not = icmp eq i64 %indvars.iv59, %wide.trip.count50
  br i1 %exitcond63.not, label %for.end86, label %for.cond50.preheader

for.cond50.preheader:                             ; preds = %for.cond47
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  %12 = trunc nuw nsw i64 %indvars.iv59 to i32
  br label %for.cond50

for.cond50:                                       ; preds = %for.cond50.preheader, %for.inc81
  %indvars.iv52 = phi i64 [ 0, %for.cond50.preheader ], [ %14, %for.inc81 ]
  %x2.1 = phi i32 [ %x2.0, %for.cond50.preheader ], [ %x2.2, %for.inc81 ]
  %y2.1 = phi i32 [ %y2.0, %for.cond50.preheader ], [ %y2.2, %for.inc81 ]
  %exitcond58.not = icmp eq i64 %indvars.iv52, %wide.trip.count
  br i1 %exitcond58.not, label %for.cond47, label %for.body52, !llvm.loop !15

for.body52:                                       ; preds = %for.cond50
  %arrayidx56 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv59, i64 %indvars.iv52
  %13 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %cmp57 = icmp eq i32 %13, 0
  %14 = add nuw nsw i64 %indvars.iv52, 1
  br i1 %cmp57, label %land.lhs.true58, label %for.inc81

land.lhs.true58:                                  ; preds = %for.body52
  %arrayidx62 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv59, i64 %14
  %15 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %cmp63 = icmp eq i32 %15, 255
  br i1 %cmp63, label %land.lhs.true64, label %for.inc81

land.lhs.true64:                                  ; preds = %land.lhs.true58
  %arrayidx70 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv.next60, i64 %14
  %16 = load i32, ptr %arrayidx70, align 4, !tbaa !5
  %cmp71 = icmp eq i32 %16, 255
  br i1 %cmp71, label %land.lhs.true72, label %for.inc81

land.lhs.true72:                                  ; preds = %land.lhs.true64
  %arrayidx77 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv.next60, i64 %indvars.iv52
  %17 = load i32, ptr %arrayidx77, align 4, !tbaa !5
  %cmp78 = icmp eq i32 %17, 255
  %spec.select34 = select i1 %cmp78, i32 %12, i32 %x2.1
  %18 = trunc nuw nsw i64 %indvars.iv52 to i32
  %spec.select35 = select i1 %cmp78, i32 %18, i32 %y2.1
  br label %for.inc81

for.inc81:                                        ; preds = %for.body52, %land.lhs.true72, %land.lhs.true58, %land.lhs.true64
  %x2.2 = phi i32 [ %spec.select34, %land.lhs.true72 ], [ %x2.1, %land.lhs.true58 ], [ %x2.1, %land.lhs.true64 ], [ %x2.1, %for.body52 ]
  %y2.2 = phi i32 [ %spec.select35, %land.lhs.true72 ], [ %y2.1, %land.lhs.true58 ], [ %y2.1, %land.lhs.true64 ], [ %y2.1, %for.body52 ]
  br label %for.cond50, !llvm.loop !16

for.end86:                                        ; preds = %for.cond47
  %19 = xor i32 %x1.0, -1
  %sub88 = add i32 %x2.0, %19
  %20 = xor i32 %y1.0, -1
  %sub90 = add i32 %y2.0, %20
  %mul = mul nsw i32 %sub90, %sub88
  %call91 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 4000000, ptr nonnull %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
