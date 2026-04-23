; ModuleID = '<stdin>'
source_filename = "/tmp/tmp8stcylhu.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [20000 x i32], align 16
  %b = alloca [20000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 80000, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 80000, ptr nonnull %b) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80000) %b, i8 0, i64 80000, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp20 = icmp sgt i32 %0, 0
  br i1 %cmp20, label %for.body, label %for.end35

for.cond21.preheader:                             ; preds = %for.inc18
  %cmp2224 = icmp sgt i32 %s.1, 0
  br i1 %cmp2224, label %for.body23.lr.ph, label %for.end35

for.body23.lr.ph:                                 ; preds = %for.cond21.preheader
  %sub = add nsw i32 %s.1, -1
  %1 = zext nneg i32 %sub to i64
  %wide.trip.count = zext nneg i32 %s.1 to i64
  %arrayidx30 = getelementptr inbounds nuw [20000 x i32], ptr %b, i64 0, i64 %1
  br label %for.body23

for.body:                                         ; preds = %entry, %for.inc18
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.inc18 ], [ 0, %entry ]
  %s.022 = phi i32 [ %s.1, %for.inc18 ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %indvars.iv27
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %cmp317.not = icmp eq i64 %indvars.iv27, 0
  br i1 %cmp317.not, label %if.then11, label %for.body4.lr.ph

for.body4.lr.ph:                                  ; preds = %for.body
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %min.iters.check = icmp samesign ult i64 %indvars.iv27, 4
  br i1 %min.iters.check, label %for.body4.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body4.lr.ph
  %n.vec = and i64 %indvars.iv27, 9223372036854775804
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %6, %vector.body ]
  %3 = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %index
  %wide.load = load <4 x i32>, ptr %3, align 16, !tbaa !5
  %4 = icmp eq <4 x i32> %wide.load, %broadcast.splat
  %5 = zext <4 x i1> %4 to <4 x i32>
  %6 = add <4 x i32> %vec.phi, %5
  %index.next = add nuw i64 %index, 4
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %8 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %6)
  %cmp.n = icmp eq i64 %indvars.iv27, %n.vec
  br i1 %cmp.n, label %for.end, label %for.body4.preheader

for.body4.preheader:                              ; preds = %for.body4.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body4.lr.ph ], [ %n.vec, %middle.block ]
  %sign.019.ph = phi i32 [ 0, %for.body4.lr.ph ], [ %8, %middle.block ]
  br label %for.body4

for.body4:                                        ; preds = %for.body4.preheader, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ %indvars.iv.ph, %for.body4.preheader ]
  %sign.019 = phi i32 [ %spec.select, %for.body4 ], [ %sign.019.ph, %for.body4.preheader ]
  %arrayidx6 = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %indvars.iv
  %9 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %cmp9 = icmp eq i32 %9, %2
  %add = zext i1 %cmp9 to i32
  %spec.select = add nuw nsw i32 %sign.019, %add
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv27
  br i1 %exitcond.not, label %for.end, label %for.body4, !llvm.loop !14

for.end:                                          ; preds = %for.body4, %middle.block
  %spec.select.lcssa = phi i32 [ %8, %middle.block ], [ %spec.select, %for.body4 ]
  %10 = icmp eq i32 %spec.select.lcssa, 0
  br i1 %10, label %if.then11, label %for.inc18

if.then11:                                        ; preds = %for.body, %for.end
  %11 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %idxprom14 = sext i32 %s.022 to i64
  %arrayidx15 = getelementptr inbounds [20000 x i32], ptr %b, i64 0, i64 %idxprom14
  store i32 %11, ptr %arrayidx15, align 4, !tbaa !5
  %inc16 = add nsw i32 %s.022, 1
  br label %for.inc18

for.inc18:                                        ; preds = %for.end, %if.then11
  %s.1 = phi i32 [ %inc16, %if.then11 ], [ %s.022, %for.end ]
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %12 = load i32, ptr %n, align 4, !tbaa !5
  %13 = sext i32 %12 to i64
  %cmp = icmp slt i64 %indvars.iv.next28, %13
  br i1 %cmp, label %for.body, label %for.cond21.preheader, !llvm.loop !15

for.body23:                                       ; preds = %for.body23.lr.ph, %for.inc33
  %indvars.iv30 = phi i64 [ 0, %for.body23.lr.ph ], [ %indvars.iv.next31, %for.inc33 ]
  %cmp24.not = icmp eq i64 %indvars.iv30, %1
  br i1 %cmp24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %for.body23
  %arrayidx27 = getelementptr inbounds nuw [20000 x i32], ptr %b, i64 0, i64 %indvars.iv30
  %14 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %call28 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %14)
  br label %for.inc33

if.else:                                          ; preds = %for.body23
  %15 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %call31 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %15)
  br label %for.inc33

for.inc33:                                        ; preds = %if.then25, %if.else
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %exitcond33.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count
  br i1 %exitcond33.not, label %for.end35, label %for.body23, !llvm.loop !16

for.end35:                                        ; preds = %for.inc33, %entry, %for.cond21.preheader
  call void @llvm.lifetime.end.p0(i64 80000, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 80000, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
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
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

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
!9 = distinct !{!9, !10, !11, !12, !13}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
