; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9qsmz9y9.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%struct.a = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [25 x %struct.a], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %a) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp18 = icmp sgt i32 %0, 0
  br i1 %cmp18, label %for.body, label %for.end47

for.cond2.preheader:                              ; preds = %for.body
  %cmp324 = icmp sgt i32 %2, 0
  br i1 %cmp324, label %for.body4.preheader, label %for.end47

for.body4.preheader:                              ; preds = %for.cond2.preheader
  %1 = zext nneg i32 %2 to i64
  %wide.trip.count42 = zext nneg i32 %2 to i64
  br label %for.body4

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [25 x %struct.a], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %3
  br i1 %cmp, label %for.body, label %for.cond2.preheader, !llvm.loop !9

for.cond24.preheader:                             ; preds = %for.end18
  %cmp2527.not = icmp eq i32 %2, 1
  br i1 %cmp2527.not, label %for.end47, label %for.body26.preheader

for.body26.preheader:                             ; preds = %for.cond24.preheader
  %4 = zext nneg i32 %2 to i64
  br label %for.body26

for.body4:                                        ; preds = %for.body4.preheader, %for.end18
  %indvars.iv39 = phi i64 [ 0, %for.body4.preheader ], [ %indvars.iv.next40, %for.end18 ]
  %indvars.iv34 = phi i64 [ 1, %for.body4.preheader ], [ %indvars.iv.next35, %for.end18 ]
  %5 = xor i64 %indvars.iv39, -1
  %6 = add nsw i64 %5, %wide.trip.count42
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %cmp620 = icmp samesign ult i64 %indvars.iv.next40, %1
  br i1 %cmp620, label %for.body7.lr.ph, label %for.end18

for.body7.lr.ph:                                  ; preds = %for.body4
  %arrayidx12 = getelementptr inbounds nuw [25 x %struct.a], ptr %a, i64 0, i64 %indvars.iv39
  %7 = load i32, ptr %arrayidx12, align 8, !tbaa !12
  %min.iters.check = icmp ult i64 %6, 5
  br i1 %min.iters.check, label %for.body7.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body7.lr.ph
  %n.mod.vf = and i64 %6, 3
  %8 = icmp eq i64 %n.mod.vf, 0
  %9 = select i1 %8, i64 4, i64 %n.mod.vf
  %n.vec = sub i64 %6, %9
  %10 = add i64 %indvars.iv34, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %7, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %14, %vector.body ]
  %offset.idx = add i64 %indvars.iv34, %index
  %11 = getelementptr inbounds nuw [25 x %struct.a], ptr %a, i64 0, i64 %offset.idx
  %wide.vec = load <8 x i32>, ptr %11, align 8, !tbaa !12
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %12 = icmp slt <4 x i32> %strided.vec, %broadcast.splat
  %13 = zext <4 x i1> %12 to <4 x i32>
  %14 = add <4 x i32> %vec.phi, %13
  %index.next = add nuw i64 %index, 4
  %15 = icmp eq i64 %index.next, %n.vec
  br i1 %15, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %16 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %14)
  br label %for.body7.preheader

for.body7.preheader:                              ; preds = %for.body7.lr.ph, %middle.block
  %indvars.iv36.ph = phi i64 [ %indvars.iv34, %for.body7.lr.ph ], [ %10, %middle.block ]
  %k.022.ph = phi i32 [ 0, %for.body7.lr.ph ], [ %16, %middle.block ]
  br label %for.body7

for.body7:                                        ; preds = %for.body7.preheader, %for.body7
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %for.body7 ], [ %indvars.iv36.ph, %for.body7.preheader ]
  %k.022 = phi i32 [ %spec.select, %for.body7 ], [ %k.022.ph, %for.body7.preheader ]
  %arrayidx9 = getelementptr inbounds nuw [25 x %struct.a], ptr %a, i64 0, i64 %indvars.iv36
  %17 = load i32, ptr %arrayidx9, align 8, !tbaa !12
  %cmp14 = icmp slt i32 %17, %7
  %inc15 = zext i1 %cmp14 to i32
  %spec.select = add nuw nsw i32 %k.022, %inc15
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count42
  br i1 %exitcond.not, label %for.end18, label %for.body7, !llvm.loop !17

for.end18:                                        ; preds = %for.body7, %for.body4
  %k.0.lcssa = phi i32 [ 0, %for.body4 ], [ %spec.select, %for.body7 ]
  %y = getelementptr inbounds nuw [25 x %struct.a], ptr %a, i64 0, i64 %indvars.iv39, i32 1
  store i32 %k.0.lcssa, ptr %y, align 4, !tbaa !18
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %exitcond43.not = icmp eq i64 %indvars.iv.next40, %wide.trip.count42
  br i1 %exitcond43.not, label %for.cond24.preheader, label %for.body4, !llvm.loop !19

for.body26:                                       ; preds = %for.body26.preheader, %for.inc46
  %indvars.iv44 = phi i64 [ %4, %for.body26.preheader ], [ %indvars.iv.next45, %for.inc46 ]
  %w.029 = phi i32 [ undef, %for.body26.preheader ], [ %w.1, %for.inc46 ]
  %indvars.iv.next45 = add nsw i64 %indvars.iv44, -1
  %18 = add nsw i64 %indvars.iv44, -2
  %y30 = getelementptr inbounds nuw [25 x %struct.a], ptr %a, i64 0, i64 %18, i32 1
  %19 = load i32, ptr %y30, align 4, !tbaa !18
  %y33 = getelementptr inbounds nuw [25 x %struct.a], ptr %a, i64 0, i64 %indvars.iv.next45, i32 1
  %20 = load i32, ptr %y33, align 4, !tbaa !18
  %cmp35.not = icmp sgt i32 %19, %20
  br i1 %cmp35.not, label %for.inc46, label %if.then36

if.then36:                                        ; preds = %for.body26
  store i32 %20, ptr %y30, align 4, !tbaa !18
  %inc44 = add nsw i32 %w.029, 1
  br label %for.inc46

for.inc46:                                        ; preds = %for.body26, %if.then36
  %w.1 = phi i32 [ %inc44, %if.then36 ], [ %w.029, %for.body26 ]
  %cmp25 = icmp samesign ugt i64 %indvars.iv44, 2
  br i1 %cmp25, label %for.body26, label %for.end47, !llvm.loop !20

for.end47:                                        ; preds = %for.inc46, %entry, %for.cond2.preheader, %for.cond24.preheader
  %.lcssa5053 = phi i32 [ %2, %for.cond24.preheader ], [ %2, %for.cond2.preheader ], [ %0, %entry ], [ %2, %for.inc46 ]
  %w.0.lcssa = phi i32 [ undef, %for.cond24.preheader ], [ undef, %for.cond2.preheader ], [ undef, %entry ], [ %w.1, %for.inc46 ]
  %sub48 = sub nsw i32 %.lcssa5053, %w.0.lcssa
  %call49 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %sub48)
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
!12 = !{!13, !6, i64 0}
!13 = !{!"_ZTSZ4mainE1a", !6, i64 0, !6, i64 4}
!14 = distinct !{!14, !10, !11, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !10, !11, !15}
!18 = !{!13, !6, i64 4}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
