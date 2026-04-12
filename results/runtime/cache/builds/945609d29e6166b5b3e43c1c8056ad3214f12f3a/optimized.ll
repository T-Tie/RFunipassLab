; ModuleID = '<stdin>'
source_filename = "/tmp/tmp38sy0jg6.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #7
  store i32 0, ptr %x1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #7
  store i32 0, ptr %x2, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #7
  store i32 0, ptr %y1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #7
  store i32 0, ptr %y2, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x1, ptr noundef nonnull %y1)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = load i32, ptr %y1, align 4, !tbaa !5
  %mul = mul nsw i32 %1, %0
  %conv = sext i32 %mul to i64
  %mul1 = shl nsw i64 %conv, 2
  %call2 = call noalias ptr @malloc(i64 noundef %mul1) #8
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %2 = phi i32 [ %1, %entry ], [ %4, %for.inc8 ]
  %3 = phi i32 [ %0, %entry ], [ %.pre, %for.inc8 ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc9, %for.inc8 ]
  %cmp = icmp slt i32 %i.0, %3
  br i1 %cmp, label %for.cond3, label %for.end10

for.cond3:                                        ; preds = %for.cond, %for.body5
  %4 = phi i32 [ %.pre69, %for.body5 ], [ %2, %for.cond ]
  %j.0 = phi i32 [ %inc, %for.body5 ], [ 0, %for.cond ]
  %cmp4 = icmp slt i32 %j.0, %4
  br i1 %cmp4, label %for.body5, label %for.inc8

for.body5:                                        ; preds = %for.cond3
  %mul6 = mul nsw i32 %4, %i.0
  %add = add nsw i32 %mul6, %j.0
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds i32, ptr %call2, i64 %idxprom
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef %arrayidx)
  %inc = add nuw nsw i32 %j.0, 1
  %.pre69 = load i32, ptr %y1, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond3
  %inc9 = add nuw nsw i32 %i.0, 1
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  %call11 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x2, ptr noundef nonnull %y2)
  %5 = load i32, ptr %x2, align 4, !tbaa !5
  %6 = load i32, ptr %y2, align 4, !tbaa !5
  %mul12 = mul nsw i32 %6, %5
  %conv13 = sext i32 %mul12 to i64
  %mul14 = shl nsw i64 %conv13, 2
  %call15 = call noalias ptr @malloc(i64 noundef %mul14) #8
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc30, %for.end10
  %7 = phi i32 [ %6, %for.end10 ], [ %9, %for.inc30 ]
  %8 = phi i32 [ %5, %for.end10 ], [ %.pre63, %for.inc30 ]
  %i.1 = phi i32 [ 0, %for.end10 ], [ %inc31, %for.inc30 ]
  %cmp17 = icmp slt i32 %i.1, %8
  br i1 %cmp17, label %for.cond19, label %for.end32

for.cond19:                                       ; preds = %for.cond16, %for.body21
  %9 = phi i32 [ %.pre68, %for.body21 ], [ %7, %for.cond16 ]
  %j.1 = phi i32 [ %inc28, %for.body21 ], [ 0, %for.cond16 ]
  %cmp20 = icmp slt i32 %j.1, %9
  br i1 %cmp20, label %for.body21, label %for.inc30

for.body21:                                       ; preds = %for.cond19
  %mul22 = mul nsw i32 %9, %i.1
  %add23 = add nsw i32 %mul22, %j.1
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds i32, ptr %call15, i64 %idxprom24
  %call26 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef %arrayidx25)
  %inc28 = add nuw nsw i32 %j.1, 1
  %.pre68 = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !13

for.inc30:                                        ; preds = %for.cond19
  %inc31 = add nuw nsw i32 %i.1, 1
  %.pre63 = load i32, ptr %x2, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !14

for.end32:                                        ; preds = %for.cond16
  %10 = load i32, ptr %x1, align 4, !tbaa !5
  %mul33 = mul nsw i32 %7, %10
  %conv34 = sext i32 %mul33 to i64
  %mul35 = shl nsw i64 %conv34, 2
  %call36 = call noalias ptr @malloc(i64 noundef %mul35) #8
  %11 = load i32, ptr %y1, align 4
  %12 = sext i32 %7 to i64
  %smax = call i32 @llvm.smax.i32(i32 %8, i32 0)
  %smax52 = call i32 @llvm.smax.i32(i32 %7, i32 0)
  %13 = sext i32 %11 to i64
  %smax60 = call i32 @llvm.smax.i32(i32 %10, i32 0)
  %wide.trip.count61 = zext nneg i32 %smax60 to i64
  %wide.trip.count53 = zext nneg i32 %smax52 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc74, %for.end32
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %for.inc74 ], [ 0, %for.end32 ]
  %exitcond62.not = icmp eq i64 %indvars.iv55, %wide.trip.count61
  br i1 %exitcond62.not, label %for.cond77, label %for.cond40.preheader

for.cond40.preheader:                             ; preds = %for.cond37
  %14 = mul nsw i64 %indvars.iv55, %12
  %15 = mul nsw i64 %indvars.iv55, %13
  %invariant.gep75 = getelementptr i32, ptr %call36, i64 %14
  %16 = getelementptr i32, ptr %call2, i64 %15
  br label %for.cond40

for.cond40:                                       ; preds = %for.cond40.preheader, %for.inc71
  %indvars.iv48 = phi i64 [ 0, %for.cond40.preheader ], [ %indvars.iv.next49, %for.inc71 ]
  %exitcond54.not = icmp eq i64 %indvars.iv48, %wide.trip.count53
  br i1 %exitcond54.not, label %for.inc74, label %for.body42

for.body42:                                       ; preds = %for.cond40
  %gep76 = getelementptr i32, ptr %invariant.gep75, i64 %indvars.iv48
  store i32 0, ptr %gep76, align 4, !tbaa !5
  %invariant.gep = getelementptr i32, ptr %call15, i64 %indvars.iv48
  br label %for.cond47

for.cond47:                                       ; preds = %for.body49, %for.body42
  %17 = phi i32 [ %add63, %for.body49 ], [ 0, %for.body42 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body49 ], [ 0, %for.body42 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc71, label %for.body49

for.body49:                                       ; preds = %for.cond47
  %arrayidx57 = getelementptr i32, ptr %16, i64 %indvars.iv
  %18 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  %19 = mul nsw i64 %indvars.iv, %12
  %gep = getelementptr i32, ptr %invariant.gep, i64 %19
  %20 = load i32, ptr %gep, align 4, !tbaa !5
  %mul62 = mul nsw i32 %20, %18
  %add63 = add nsw i32 %mul62, %17
  store i32 %add63, ptr %gep76, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond47, !llvm.loop !15

for.inc71:                                        ; preds = %for.cond47
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  br label %for.cond40, !llvm.loop !16

for.inc74:                                        ; preds = %for.cond40
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  br label %for.cond37, !llvm.loop !17

for.cond77:                                       ; preds = %for.cond37, %for.inc98
  %21 = phi i32 [ %23, %for.inc98 ], [ %7, %for.cond37 ]
  %22 = phi i32 [ %.pre64, %for.inc98 ], [ %10, %for.cond37 ]
  %i.3 = phi i32 [ %inc99, %for.inc98 ], [ 0, %for.cond37 ]
  %cmp78 = icmp slt i32 %i.3, %22
  br i1 %cmp78, label %for.cond80, label %for.end100

for.cond80:                                       ; preds = %for.cond77, %for.inc95
  %23 = phi i32 [ %.pre65, %for.inc95 ], [ %21, %for.cond77 ]
  %j.3 = phi i32 [ %inc96, %for.inc95 ], [ 0, %for.cond77 ]
  %cmp81 = icmp slt i32 %j.3, %23
  br i1 %cmp81, label %for.body82, label %for.inc98

for.body82:                                       ; preds = %for.cond80
  %mul83 = mul nsw i32 %23, %i.3
  %add84 = add nsw i32 %mul83, %j.3
  %idxprom85 = sext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds i32, ptr %call36, i64 %idxprom85
  %24 = load i32, ptr %arrayidx86, align 4, !tbaa !5
  %call87 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %24)
  %25 = load i32, ptr %y2, align 4, !tbaa !5
  %sub = add nsw i32 %25, -1
  %cmp88 = icmp slt i32 %j.3, %sub
  br i1 %cmp88, label %if.then, label %if.end

if.then:                                          ; preds = %for.body82
  %putchar = call i32 @putchar(i32 32)
  %.pre66 = load i32, ptr %y2, align 4, !tbaa !5
  %.pre70 = add nsw i32 %.pre66, -1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body82
  %sub90.pre-phi = phi i32 [ %.pre70, %if.then ], [ %sub, %for.body82 ]
  %26 = phi i32 [ %.pre66, %if.then ], [ %25, %for.body82 ]
  %cmp91 = icmp eq i32 %j.3, %sub90.pre-phi
  br i1 %cmp91, label %if.then92, label %for.inc95

if.then92:                                        ; preds = %if.end
  %putchar42 = call i32 @putchar(i32 10)
  %.pre65.pre = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.inc95

for.inc95:                                        ; preds = %if.end, %if.then92
  %.pre65 = phi i32 [ %26, %if.end ], [ %.pre65.pre, %if.then92 ]
  %inc96 = add nuw nsw i32 %j.3, 1
  br label %for.cond80, !llvm.loop !18

for.inc98:                                        ; preds = %for.cond80
  %inc99 = add nuw nsw i32 %i.3, 1
  %.pre64 = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond77, !llvm.loop !19

for.end100:                                       ; preds = %for.cond77
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

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
