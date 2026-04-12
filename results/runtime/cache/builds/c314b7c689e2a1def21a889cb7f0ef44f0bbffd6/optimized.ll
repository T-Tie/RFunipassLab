; ModuleID = '<stdin>'
source_filename = "/tmp/tmp38sy0jg6.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x1) #6
  store i32 0, ptr %x1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x2) #6
  store i32 0, ptr %x2, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y1) #6
  store i32 0, ptr %y1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y2) #6
  store i32 0, ptr %y2, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %x1, ptr noundef nonnull align 4 %y1)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = load i32, ptr %y1, align 4, !tbaa !5
  %mul = mul nsw i32 %1, %0
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  %call2 = call noalias ptr @malloc(i64 noundef %mul1) #7
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ]
  %2 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %2
  br i1 %cmp, label %for.cond3, label %for.end10

for.cond3:                                        ; preds = %for.cond, %for.inc
  %j.0 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond ]
  %3 = load i32, ptr %y1, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %j.0, %3
  br i1 %cmp4, label %for.inc, label %for.inc8

for.inc:                                          ; preds = %for.cond3
  %mul6 = mul nsw i32 %3, %i.0
  %add = add nsw i32 %mul6, %j.0
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i32, ptr %call2, i64 %idxprom
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef %arrayidx)
  %inc = add nuw nsw i32 %j.0, 1
  br label %for.cond3, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond3
  %inc9 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  %call11 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x2, ptr noundef nonnull %y2)
  %4 = load i32, ptr %x2, align 4, !tbaa !5
  %5 = load i32, ptr %y2, align 4, !tbaa !5
  %mul12 = mul nsw i32 %5, %4
  %conv13 = sext i32 %mul12 to i64
  %mul14 = shl nsw i64 %conv13, 2
  %call15 = call noalias ptr @malloc(i64 noundef %mul14) #7
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc30, %for.end10
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc31, %for.inc30 ]
  %6 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %i.1, %6
  br i1 %cmp17, label %for.cond19, label %for.end32

for.cond19:                                       ; preds = %for.cond16, %for.inc27
  %j.1 = phi i32 [ %inc28, %for.inc27 ], [ 0, %for.cond16 ]
  %7 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %j.1, %7
  br i1 %cmp20, label %for.inc27, label %for.inc30

for.inc27:                                        ; preds = %for.cond19
  %mul22 = mul nsw i32 %7, %i.1
  %add23 = add nsw i32 %mul22, %j.1
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %call15, i64 %idxprom24
  %call26 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef %arrayidx25)
  %inc28 = add nuw nsw i32 %j.1, 1
  br label %for.cond19, !llvm.loop !13

for.inc30:                                        ; preds = %for.cond19
  %inc31 = add nuw nsw i32 %i.1, 1
  br label %for.cond16, !llvm.loop !14

for.end32:                                        ; preds = %for.cond16
  %8 = load i32, ptr %x1, align 4, !tbaa !5
  %9 = load i32, ptr %y2, align 4, !tbaa !5
  %mul33 = mul nsw i32 %9, %8
  %conv34 = sext i32 %mul33 to i64
  %mul35 = shl nsw i64 %conv34, 2
  %call36 = call noalias ptr @malloc(i64 noundef %mul35) #7
  %10 = load i32, ptr %x1, align 4, !tbaa !5
  %11 = load i32, ptr %y2, align 4
  %12 = load i32, ptr %x2, align 4
  %13 = load i32, ptr %y1, align 4
  %14 = sext i32 %11 to i64
  %smax = call i32 @llvm.smax.i32(i32 %12, i32 0)
  %smax13 = call i32 @llvm.smax.i32(i32 %11, i32 0)
  %15 = sext i32 %13 to i64
  %smax21 = call i32 @llvm.smax.i32(i32 %10, i32 0)
  %wide.trip.count22 = zext nneg i32 %smax21 to i64
  %wide.trip.count14 = zext nneg i32 %smax13 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc74, %for.end32
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %for.inc74 ], [ 0, %for.end32 ]
  %exitcond23.not = icmp eq i64 %indvars.iv16, %wide.trip.count22
  br i1 %exitcond23.not, label %for.cond77, label %for.cond40.preheader

for.cond40.preheader:                             ; preds = %for.cond37
  %16 = mul nsw i64 %indvars.iv16, %14
  %17 = mul nsw i64 %indvars.iv16, %15
  %18 = getelementptr i32, ptr %call36, i64 %16
  %19 = getelementptr i32, ptr %call2, i64 %17
  br label %for.cond40

for.cond40:                                       ; preds = %for.cond40.preheader, %for.inc71
  %indvars.iv9 = phi i64 [ 0, %for.cond40.preheader ], [ %indvars.iv.next10, %for.inc71 ]
  %exitcond15.not = icmp eq i64 %indvars.iv9, %wide.trip.count14
  br i1 %exitcond15.not, label %for.inc74, label %for.body42

for.body42:                                       ; preds = %for.cond40
  %arrayidx46 = getelementptr i32, ptr %18, i64 %indvars.iv9
  store i32 0, ptr %arrayidx46, align 4, !tbaa !5
  %invariant.gep = getelementptr i32, ptr %call15, i64 %indvars.iv9
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc68, %for.body42
  %20 = phi i32 [ %add63, %for.inc68 ], [ 0, %for.body42 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc68 ], [ 0, %for.body42 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc71, label %for.inc68

for.inc68:                                        ; preds = %for.cond47
  %arrayidx57 = getelementptr i32, ptr %19, i64 %indvars.iv
  %21 = load i32, ptr %arrayidx57, align 4, !tbaa !5, !invariant.load !15
  %22 = mul nsw i64 %indvars.iv, %14
  %gep = getelementptr i32, ptr %invariant.gep, i64 %22
  %23 = load i32, ptr %gep, align 4, !tbaa !5
  %mul62 = mul nsw i32 %23, %21
  %add63 = add nsw i32 %mul62, %20
  store i32 %add63, ptr %arrayidx46, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond47, !llvm.loop !16

for.inc71:                                        ; preds = %for.cond47
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  br label %for.cond40, !llvm.loop !17

for.inc74:                                        ; preds = %for.cond40
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond37, !llvm.loop !18

for.cond77:                                       ; preds = %for.cond37, %for.inc98
  %24 = phi i32 [ %26, %for.inc98 ], [ %11, %for.cond37 ]
  %25 = phi i32 [ %.pre, %for.inc98 ], [ %10, %for.cond37 ]
  %i.3 = phi i32 [ %inc99, %for.inc98 ], [ 0, %for.cond37 ]
  %cmp78 = icmp slt i32 %i.3, %25
  br i1 %cmp78, label %for.cond80, label %for.end100

for.cond80:                                       ; preds = %for.cond77, %for.inc95
  %26 = phi i32 [ %.pre24, %for.inc95 ], [ %24, %for.cond77 ]
  %j.3 = phi i32 [ %inc96, %for.inc95 ], [ 0, %for.cond77 ]
  %cmp81 = icmp slt i32 %j.3, %26
  br i1 %cmp81, label %for.body82, label %for.inc98

for.body82:                                       ; preds = %for.cond80
  %mul83 = mul nsw i32 %26, %i.3
  %add84 = add nsw i32 %mul83, %j.3
  %idxprom85 = sext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds i32, ptr %call36, i64 %idxprom85
  %27 = load i32, ptr %arrayidx86, align 4, !tbaa !5
  %call87 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %27)
  %28 = load i32, ptr %y2, align 4, !tbaa !5
  %sub = add nsw i32 %28, -1
  %cmp88 = icmp slt i32 %j.3, %sub
  br i1 %cmp88, label %if.then, label %if.end

if.then:                                          ; preds = %for.body82
  %putchar = call i32 @putchar(i32 32)
  %.pre25 = load i32, ptr %y2, align 4, !tbaa !5
  %.pre27 = add nsw i32 %.pre25, -1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body82
  %sub90.pre-phi = phi i32 [ %.pre27, %if.then ], [ %sub, %for.body82 ]
  %29 = phi i32 [ %.pre25, %if.then ], [ %28, %for.body82 ]
  %cmp91 = icmp eq i32 %j.3, %sub90.pre-phi
  br i1 %cmp91, label %if.then92, label %for.inc95

if.then92:                                        ; preds = %if.end
  %putchar4 = call i32 @putchar(i32 10)
  %.pre24.pre = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.inc95

for.inc95:                                        ; preds = %if.end, %if.then92
  %.pre24 = phi i32 [ %29, %if.end ], [ %.pre24.pre, %if.then92 ]
  %inc96 = add nuw nsw i32 %j.3, 1
  br label %for.cond80, !llvm.loop !19

for.inc98:                                        ; preds = %for.cond80
  %inc99 = add nuw nsw i32 %i.3, 1
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond77, !llvm.loop !20

for.end100:                                       ; preds = %for.cond77
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y2) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y1) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x2) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x1) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind willreturn }
attributes #7 = { nounwind allocsize(0) }
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
!15 = !{}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
