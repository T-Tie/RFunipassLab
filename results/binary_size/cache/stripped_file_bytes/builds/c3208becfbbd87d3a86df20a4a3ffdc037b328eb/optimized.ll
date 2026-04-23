; ModuleID = '<stdin>'
source_filename = "/tmp/tmpmbqkhuy7.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %w = alloca [300 x i32], align 16
  %s = alloca [300 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %w) #4
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %s) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %w)
  %0 = load i32, ptr %w, align 16, !tbaa !5
  store i32 %0, ptr %s, align 16, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp17 = icmp sgt i32 %1, 1
  br i1 %cmp17, label %for.body.preheader, label %for.end34

for.body.preheader:                               ; preds = %entry
  %invariant.gep = getelementptr i8, ptr %w, i64 -12
  br label %for.body

for.cond25.preheader:                             ; preds = %if.end21
  %sub26 = add i32 %k.1, -1
  %cmp2720 = icmp sgt i32 %k.1, 1
  br i1 %cmp2720, label %for.body28.preheader, label %for.end34

for.body28.preheader:                             ; preds = %for.cond25.preheader
  %wide.trip.count = zext nneg i32 %sub26 to i64
  br label %for.body28

for.body:                                         ; preds = %for.body.preheader, %if.end21
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end21 ], [ 1, %for.body.preheader ]
  %k.019 = phi i32 [ %k.1, %if.end21 ], [ 1, %for.body.preheader ]
  %arrayidx4 = getelementptr inbounds nuw [300 x i32], ptr %w, i64 0, i64 %indvars.iv
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx4)
  %2 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %min.iters.check = icmp samesign ult i64 %indvars.iv, 4
  br i1 %min.iters.check, label %for.body8.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body
  %n.vec = and i64 %indvars.iv, 9223372036854775804
  %3 = and i64 %indvars.iv, 3
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %7, %vector.body ]
  %4 = xor i64 %index, -1
  %5 = add i64 %indvars.iv, %4
  %gep = getelementptr [300 x i32], ptr %invariant.gep, i64 0, i64 %5
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !5
  %reverse = shufflevector <4 x i32> %wide.load, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %6 = icmp eq <4 x i32> %reverse, %broadcast.splat
  %.fr = freeze <4 x i1> %6
  %7 = or <4 x i1> %vec.phi, %.fr
  %index.next = add nuw i64 %index, 4
  %8 = icmp eq i64 %index.next, %n.vec
  br i1 %8, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %9 = bitcast <4 x i1> %7 to i4
  %.not = icmp ne i4 %9, 0
  %rdx.select = zext i1 %.not to i32
  %cmp.n = icmp eq i64 %indvars.iv, %n.vec
  br i1 %cmp.n, label %for.end, label %for.body8.preheader

for.body8.preheader:                              ; preds = %for.body, %middle.block
  %indvars.iv23.ph = phi i64 [ %indvars.iv, %for.body ], [ %3, %middle.block ]
  %f.116.ph = phi i32 [ 0, %for.body ], [ %rdx.select, %middle.block ]
  br label %for.body8

for.body8:                                        ; preds = %for.body8.preheader, %for.body8
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.body8 ], [ %indvars.iv23.ph, %for.body8.preheader ]
  %f.116 = phi i32 [ %spec.select, %for.body8 ], [ %f.116.ph, %for.body8.preheader ]
  %indvars.iv.next24 = add nsw i64 %indvars.iv23, -1
  %arrayidx10 = getelementptr inbounds nuw [300 x i32], ptr %w, i64 0, i64 %indvars.iv.next24
  %10 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %10, %2
  %spec.select = select i1 %cmp13, i32 1, i32 %f.116
  %cmp7 = icmp sgt i64 %indvars.iv23, 1
  br i1 %cmp7, label %for.body8, label %for.end, !llvm.loop !14

for.end:                                          ; preds = %for.body8, %middle.block
  %spec.select.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %spec.select, %for.body8 ]
  %cmp14 = icmp eq i32 %spec.select.lcssa, 0
  br i1 %cmp14, label %if.then15, label %if.end21

if.then15:                                        ; preds = %for.end
  %idxprom18 = sext i32 %k.019 to i64
  %arrayidx19 = getelementptr inbounds [300 x i32], ptr %s, i64 0, i64 %idxprom18
  store i32 %2, ptr %arrayidx19, align 4, !tbaa !5
  %inc20 = add nsw i32 %k.019, 1
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %for.end
  %k.1 = phi i32 [ %inc20, %if.then15 ], [ %k.019, %for.end ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %12 = sext i32 %11 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %12
  br i1 %cmp, label %for.body, label %for.cond25.preheader, !llvm.loop !15

for.body28:                                       ; preds = %for.body28.preheader, %for.body28
  %indvars.iv27 = phi i64 [ 0, %for.body28.preheader ], [ %indvars.iv.next28, %for.body28 ]
  %arrayidx30 = getelementptr inbounds nuw [300 x i32], ptr %s, i64 0, i64 %indvars.iv27
  %13 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %call31 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %13)
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next28, %wide.trip.count
  br i1 %exitcond.not, label %for.end34, label %for.body28, !llvm.loop !16

for.end34:                                        ; preds = %for.body28, %entry, %for.cond25.preheader
  %sub2633 = phi i32 [ %sub26, %for.cond25.preheader ], [ 0, %entry ], [ %sub26, %for.body28 ]
  %idxprom36 = sext i32 %sub2633 to i64
  %arrayidx37 = getelementptr inbounds [300 x i32], ptr %s, i64 0, i64 %idxprom36
  %14 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %call38 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %14)
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %s) #4
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %w) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !10, !11, !12, !13}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
