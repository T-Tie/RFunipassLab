; ModuleID = '<stdin>'
source_filename = "/tmp/tmpg240xwe8.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %c) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x1, ptr noundef nonnull %y1)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp33 = icmp sgt i32 %0, 0
  %1 = load i32, ptr %y1, align 4
  %2 = icmp sgt i32 %1, 0
  %or.cond102 = select i1 %cmp33, i1 %2, i1 false
  br i1 %or.cond102, label %for.cond1.preheader, label %for.end9

for.cond1.preheader:                              ; preds = %entry, %for.inc7
  %3 = phi i32 [ %7, %for.inc7 ], [ %0, %entry ]
  %4 = phi i32 [ %8, %for.inc7 ], [ %1, %entry ]
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %for.inc7 ], [ 0, %entry ]
  %cmp230 = icmp sgt i32 %4, 0
  br i1 %cmp230, label %for.body3, label %for.inc7

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond1.preheader ]
  %arrayidx5 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv65, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, ptr %y1, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %cmp2 = icmp slt i64 %indvars.iv.next, %6
  br i1 %cmp2, label %for.body3, label %for.inc7.loopexit, !llvm.loop !9

for.inc7.loopexit:                                ; preds = %for.body3
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.inc7

for.inc7:                                         ; preds = %for.inc7.loopexit, %for.cond1.preheader
  %7 = phi i32 [ %.pre, %for.inc7.loopexit ], [ %3, %for.cond1.preheader ]
  %8 = phi i32 [ %5, %for.inc7.loopexit ], [ %4, %for.cond1.preheader ]
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  %9 = sext i32 %7 to i64
  %cmp = icmp slt i64 %indvars.iv.next66, %9
  br i1 %cmp, label %for.cond1.preheader, label %for.end9, !llvm.loop !12

for.end9:                                         ; preds = %for.inc7, %entry
  %call10 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x2, ptr noundef nonnull %y2)
  %10 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp1237 = icmp sgt i32 %10, 0
  %11 = load i32, ptr %y2, align 4
  %12 = icmp sgt i32 %11, 0
  %or.cond104 = select i1 %cmp1237, i1 %12, i1 false
  br i1 %or.cond104, label %for.cond14.preheader, label %for.cond28.preheader

for.cond14.preheader:                             ; preds = %for.end9, %for.inc25
  %13 = phi i32 [ %43, %for.inc25 ], [ %10, %for.end9 ]
  %14 = phi i32 [ %44, %for.inc25 ], [ %11, %for.end9 ]
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.inc25 ], [ 0, %for.end9 ]
  %cmp1535 = icmp sgt i32 %14, 0
  br i1 %cmp1535, label %for.body16, label %for.inc25

for.cond28.preheader:                             ; preds = %for.inc25, %for.end9
  %.lcssa = phi i32 [ %10, %for.end9 ], [ %43, %for.inc25 ]
  %15 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp2943 = icmp sgt i32 %15, 0
  br i1 %cmp2943, label %for.cond31.preheader.lr.ph, label %for.end78

for.cond31.preheader.lr.ph:                       ; preds = %for.cond28.preheader
  %16 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp3241 = icmp sgt i32 %16, 0
  br i1 %cmp3241, label %for.cond31.preheader.lr.ph.split.us, label %for.end78

for.cond31.preheader.lr.ph.split.us:              ; preds = %for.cond31.preheader.lr.ph
  %cmp3539 = icmp sgt i32 %.lcssa, 0
  br i1 %cmp3539, label %for.cond31.preheader.us.us.preheader, label %for.cond61.preheader.preheader

for.cond31.preheader.us.us.preheader:             ; preds = %for.cond31.preheader.lr.ph.split.us
  %wide.trip.count85 = zext nneg i32 %15 to i64
  %wide.trip.count80 = zext nneg i32 %16 to i64
  %wide.trip.count = zext nneg i32 %.lcssa to i64
  %min.iters.check = icmp ult i32 %.lcssa, 4
  %n.vec = and i64 %wide.trip.count, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %for.cond31.preheader.us.us

for.cond31.preheader.us.us:                       ; preds = %for.cond31.preheader.us.us.preheader, %for.cond31.for.inc55_crit_edge.split.us.us.us
  %indvars.iv82 = phi i64 [ 0, %for.cond31.preheader.us.us.preheader ], [ %indvars.iv.next83, %for.cond31.for.inc55_crit_edge.split.us.us.us ]
  br label %for.cond34.preheader.us.us.us

for.cond34.preheader.us.us.us:                    ; preds = %for.cond34.for.inc52_crit_edge.us.us.us, %for.cond31.preheader.us.us
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %for.cond34.for.inc52_crit_edge.us.us.us ], [ 0, %for.cond31.preheader.us.us ]
  %arrayidx48.us.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv82, i64 %indvars.iv77
  %arrayidx48.promoted.us.us.us = load i32, ptr %arrayidx48.us.us.us, align 4, !tbaa !5
  br i1 %min.iters.check, label %for.body36.us.us.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond34.preheader.us.us.us
  %17 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %arrayidx48.promoted.us.us.us, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %17, %vector.ph ], [ %35, %vector.body ]
  %18 = or disjoint i64 %index, 1
  %19 = or disjoint i64 %index, 2
  %20 = or disjoint i64 %index, 3
  %21 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv82, i64 %index
  %wide.load = load <4 x i32>, ptr %21, align 16, !tbaa !5
  %22 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %index, i64 %indvars.iv77
  %23 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %18, i64 %indvars.iv77
  %24 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %19, i64 %indvars.iv77
  %25 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %20, i64 %indvars.iv77
  %26 = load i32, ptr %22, align 4, !tbaa !5
  %27 = load i32, ptr %23, align 4, !tbaa !5
  %28 = load i32, ptr %24, align 4, !tbaa !5
  %29 = load i32, ptr %25, align 4, !tbaa !5
  %30 = insertelement <4 x i32> poison, i32 %26, i64 0
  %31 = insertelement <4 x i32> %30, i32 %27, i64 1
  %32 = insertelement <4 x i32> %31, i32 %28, i64 2
  %33 = insertelement <4 x i32> %32, i32 %29, i64 3
  %34 = mul nsw <4 x i32> %33, %wide.load
  %35 = add <4 x i32> %vec.phi, %34
  %index.next = add nuw i64 %index, 4
  %36 = icmp eq i64 %index.next, %n.vec
  br i1 %36, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %37 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %35)
  br i1 %cmp.n, label %for.cond34.for.inc52_crit_edge.us.us.us, label %for.body36.us.us.us.preheader

for.body36.us.us.us.preheader:                    ; preds = %for.cond34.preheader.us.us.us, %middle.block
  %indvars.iv74.ph = phi i64 [ 0, %for.cond34.preheader.us.us.us ], [ %n.vec, %middle.block ]
  %.ph110 = phi i32 [ %arrayidx48.promoted.us.us.us, %for.cond34.preheader.us.us.us ], [ %37, %middle.block ]
  br label %for.body36.us.us.us

for.body36.us.us.us:                              ; preds = %for.body36.us.us.us.preheader, %for.body36.us.us.us
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %for.body36.us.us.us ], [ %indvars.iv74.ph, %for.body36.us.us.us.preheader ]
  %38 = phi i32 [ %add.us.us.us, %for.body36.us.us.us ], [ %.ph110, %for.body36.us.us.us.preheader ]
  %arrayidx40.us.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv82, i64 %indvars.iv74
  %39 = load i32, ptr %arrayidx40.us.us.us, align 4, !tbaa !5
  %arrayidx44.us.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv74, i64 %indvars.iv77
  %40 = load i32, ptr %arrayidx44.us.us.us, align 4, !tbaa !5
  %mul.us.us.us = mul nsw i32 %40, %39
  %add.us.us.us = add nsw i32 %38, %mul.us.us.us
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count
  br i1 %exitcond.not, label %for.cond34.for.inc52_crit_edge.us.us.us, label %for.body36.us.us.us, !llvm.loop !17

for.cond34.for.inc52_crit_edge.us.us.us:          ; preds = %for.body36.us.us.us, %middle.block
  %add.us.us.us.lcssa = phi i32 [ %37, %middle.block ], [ %add.us.us.us, %for.body36.us.us.us ]
  store i32 %add.us.us.us.lcssa, ptr %arrayidx48.us.us.us, align 4, !tbaa !5
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count80
  br i1 %exitcond81.not, label %for.cond31.for.inc55_crit_edge.split.us.us.us, label %for.cond34.preheader.us.us.us, !llvm.loop !18

for.cond31.for.inc55_crit_edge.split.us.us.us:    ; preds = %for.cond34.for.inc52_crit_edge.us.us.us
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  %exitcond86.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count85
  br i1 %exitcond86.not, label %for.cond58.preheader, label %for.cond31.preheader.us.us, !llvm.loop !19

for.body16:                                       ; preds = %for.cond14.preheader, %for.body16
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.body16 ], [ 0, %for.cond14.preheader ]
  %arrayidx20 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv71, i64 %indvars.iv68
  %call21 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx20)
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  %41 = load i32, ptr %y2, align 4, !tbaa !5
  %42 = sext i32 %41 to i64
  %cmp15 = icmp slt i64 %indvars.iv.next69, %42
  br i1 %cmp15, label %for.body16, label %for.inc25.loopexit, !llvm.loop !20

for.inc25.loopexit:                               ; preds = %for.body16
  %.pre93 = load i32, ptr %x2, align 4, !tbaa !5
  br label %for.inc25

for.inc25:                                        ; preds = %for.inc25.loopexit, %for.cond14.preheader
  %43 = phi i32 [ %.pre93, %for.inc25.loopexit ], [ %13, %for.cond14.preheader ]
  %44 = phi i32 [ %41, %for.inc25.loopexit ], [ %14, %for.cond14.preheader ]
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %45 = sext i32 %43 to i64
  %cmp12 = icmp slt i64 %indvars.iv.next72, %45
  br i1 %cmp12, label %for.cond14.preheader, label %for.cond28.preheader, !llvm.loop !21

for.cond58.preheader:                             ; preds = %for.cond31.for.inc55_crit_edge.split.us.us.us
  %.pr = load i32, ptr %y2, align 4
  %46 = icmp sgt i32 %.pr, 0
  br i1 %46, label %for.cond61.preheader.preheader, label %for.end78

for.cond61.preheader.preheader:                   ; preds = %for.cond58.preheader, %for.cond31.preheader.lr.ph.split.us
  %.ph = phi i32 [ %16, %for.cond31.preheader.lr.ph.split.us ], [ %.pr, %for.cond58.preheader ]
  br label %for.cond61.preheader

for.cond61.preheader:                             ; preds = %for.cond61.preheader.preheader, %for.inc76
  %47 = phi i32 [ %53, %for.inc76 ], [ %15, %for.cond61.preheader.preheader ]
  %48 = phi i32 [ %54, %for.inc76 ], [ %.ph, %for.cond61.preheader.preheader ]
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %for.inc76 ], [ 0, %for.cond61.preheader.preheader ]
  %count.057 = phi i32 [ %count.1.lcssa, %for.inc76 ], [ 0, %for.cond61.preheader.preheader ]
  %cmp6251 = icmp sgt i32 %48, 0
  br i1 %cmp6251, label %for.body63, label %for.inc76

for.body63:                                       ; preds = %for.cond61.preheader, %for.body63
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %for.body63 ], [ 0, %for.cond61.preheader ]
  %count.153 = phi i32 [ %inc69, %for.body63 ], [ %count.057, %for.cond61.preheader ]
  %arrayidx67 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv90, i64 %indvars.iv87
  %49 = load i32, ptr %arrayidx67, align 4, !tbaa !5
  %call68 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %49)
  %inc69 = add nsw i32 %count.153, 1
  %50 = load i32, ptr %y2, align 4, !tbaa !5
  %rem = srem i32 %inc69, %50
  %cmp70.not = icmp eq i32 %rem, 0
  %. = select i1 %cmp70.not, i32 10, i32 32
  %putchar29 = call i32 @putchar(i32 %.)
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  %51 = load i32, ptr %y2, align 4, !tbaa !5
  %52 = sext i32 %51 to i64
  %cmp62 = icmp slt i64 %indvars.iv.next88, %52
  br i1 %cmp62, label %for.body63, label %for.inc76.loopexit, !llvm.loop !22

for.inc76.loopexit:                               ; preds = %for.body63
  %.pre94 = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.inc76

for.inc76:                                        ; preds = %for.inc76.loopexit, %for.cond61.preheader
  %53 = phi i32 [ %47, %for.cond61.preheader ], [ %.pre94, %for.inc76.loopexit ]
  %54 = phi i32 [ %48, %for.cond61.preheader ], [ %51, %for.inc76.loopexit ]
  %count.1.lcssa = phi i32 [ %count.057, %for.cond61.preheader ], [ %inc69, %for.inc76.loopexit ]
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  %55 = sext i32 %53 to i64
  %cmp59 = icmp slt i64 %indvars.iv.next91, %55
  br i1 %cmp59, label %for.cond61.preheader, label %for.end78, !llvm.loop !23

for.end78:                                        ; preds = %for.inc76, %for.cond31.preheader.lr.ph, %for.cond28.preheader, %for.cond58.preheader
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
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
!12 = distinct !{!12, !10, !11, !13}
!13 = !{!"llvm.loop.unswitch.partial.disable"}
!14 = distinct !{!14, !10, !11, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !10, !11, !15}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11, !13}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11, !13}
