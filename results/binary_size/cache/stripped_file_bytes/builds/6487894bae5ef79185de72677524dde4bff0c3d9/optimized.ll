; ModuleID = '<stdin>'
source_filename = "/tmp/tmpk_ld1n9b.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %k = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %k) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %k)
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %mul = shl nsw i64 %conv, 2
  %call1 = call noalias ptr @malloc(i64 noundef %mul) #7
  %call4 = call noalias ptr @malloc(i64 noundef %mul) #7
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef %call1)
  %1 = load i32, ptr %k, align 4, !tbaa !5
  %cmp32 = icmp sgt i32 %1, 1
  br i1 %cmp32, label %for.body, label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.body, %entry
  %.lcssa = phi i32 [ %1, %entry ], [ %4, %for.body ]
  %cmp934 = icmp sgt i32 %.lcssa, 0
  br i1 %cmp934, label %for.body10.preheader, label %for.end54

for.body10.preheader:                             ; preds = %for.cond8.preheader
  %wide.trip.count = zext nneg i32 %.lcssa to i64
  %min.iters.check = icmp ult i32 %.lcssa, 4
  br i1 %min.iters.check, label %for.body10.preheader81, label %vector.ph

vector.ph:                                        ; preds = %for.body10.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %2 = getelementptr inbounds nuw i32, ptr %call4, i64 %index
  store <4 x i32> splat (i32 1), ptr %2, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %3 = icmp eq i64 %index.next, %n.vec
  br i1 %3, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.end15, label %for.body10.preheader81

for.body10.preheader81:                           ; preds = %for.body10.preheader, %middle.block
  %indvars.iv47.ph = phi i64 [ 0, %for.body10.preheader ], [ %n.vec, %middle.block ]
  br label %for.body10

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %arrayidx6 = getelementptr inbounds nuw i32, ptr %call1, i64 %indvars.iv
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %4 = load i32, ptr %k, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %5
  br i1 %cmp, label %for.body, label %for.cond8.preheader, !llvm.loop !14

for.body10:                                       ; preds = %for.body10.preheader81, %for.body10
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %for.body10 ], [ %indvars.iv47.ph, %for.body10.preheader81 ]
  %arrayidx12 = getelementptr inbounds nuw i32, ptr %call4, i64 %indvars.iv47
  store i32 1, ptr %arrayidx12, align 4, !tbaa !5
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count
  br i1 %exitcond.not, label %for.end15, label %for.body10, !llvm.loop !15

for.end15:                                        ; preds = %for.body10, %middle.block
  %cmp1739.not = icmp eq i32 %.lcssa, 1
  br i1 %cmp1739.not, label %for.body44.preheader, label %for.cond19.preheader.preheader

for.cond19.preheader.preheader:                   ; preds = %for.end15
  %sub = add nsw i32 %.lcssa, -2
  %6 = add nsw i32 %.lcssa, -1
  %7 = zext nneg i32 %6 to i64
  %8 = zext nneg i32 %sub to i64
  %9 = zext nneg i32 %.lcssa to i64
  %invariant.op = add nsw i64 %9, -1
  br label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.cond19.preheader.preheader, %for.inc40
  %indvars.iv55 = phi i64 [ %8, %for.cond19.preheader.preheader ], [ %indvars.iv.next56, %for.inc40 ]
  %indvars.iv50 = phi i64 [ %7, %for.cond19.preheader.preheader ], [ %indvars.iv.next51, %for.inc40 ]
  %cmp2037 = icmp slt i64 %indvars.iv55, %invariant.op
  br i1 %cmp2037, label %for.body21.lr.ph, label %for.inc40

for.body21.lr.ph:                                 ; preds = %for.cond19.preheader
  %arrayidx23 = getelementptr inbounds nuw i32, ptr %call1, i64 %indvars.iv55
  %10 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %arrayidx30 = getelementptr inbounds nuw i32, ptr %call4, i64 %indvars.iv55
  br label %for.body21

for.body44.preheader:                             ; preds = %for.inc40, %for.end15
  %wide.trip.count62 = zext nneg i32 %.lcssa to i64
  %min.iters.check69 = icmp ult i32 %.lcssa, 4
  br i1 %min.iters.check69, label %for.body44.preheader79, label %vector.ph70

vector.ph70:                                      ; preds = %for.body44.preheader
  %n.vec72 = and i64 %wide.trip.count, 2147483644
  br label %vector.body73

vector.body73:                                    ; preds = %vector.body73, %vector.ph70
  %index74 = phi i64 [ 0, %vector.ph70 ], [ %index.next75, %vector.body73 ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph70 ], [ %12, %vector.body73 ]
  %11 = getelementptr inbounds nuw i32, ptr %call4, i64 %index74
  %wide.load = load <4 x i32>, ptr %11, align 4, !tbaa !5
  %12 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi)
  %index.next75 = add nuw i64 %index74, 4
  %13 = icmp eq i64 %index.next75, %n.vec72
  br i1 %13, label %middle.block76, label %vector.body73, !llvm.loop !16

middle.block76:                                   ; preds = %vector.body73
  %14 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %12)
  %cmp.n77 = icmp eq i64 %n.vec72, %wide.trip.count
  br i1 %cmp.n77, label %for.end54, label %for.body44.preheader79

for.body44.preheader79:                           ; preds = %for.body44.preheader, %middle.block76
  %indvars.iv59.ph = phi i64 [ 0, %for.body44.preheader ], [ %n.vec72, %middle.block76 ]
  %max.042.ph = phi i32 [ 0, %for.body44.preheader ], [ %14, %middle.block76 ]
  br label %for.body44

for.body21:                                       ; preds = %for.body21.lr.ph, %for.inc37
  %indvars.iv52 = phi i64 [ %indvars.iv50, %for.body21.lr.ph ], [ %indvars.iv.next53, %for.inc37 ]
  %arrayidx25 = getelementptr inbounds nuw i32, ptr %call1, i64 %indvars.iv52
  %15 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %cmp26.not = icmp slt i32 %10, %15
  br i1 %cmp26.not, label %for.inc37, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body21
  %arrayidx28 = getelementptr inbounds nuw i32, ptr %call4, i64 %indvars.iv52
  %16 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %17 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %cmp31.not = icmp slt i32 %16, %17
  br i1 %cmp31.not, label %for.inc37, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %add34 = add nsw i32 %16, 1
  store i32 %add34, ptr %arrayidx30, align 4, !tbaa !5
  br label %for.inc37

for.inc37:                                        ; preds = %for.body21, %land.lhs.true, %if.then
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %18 = trunc nuw i64 %indvars.iv.next53 to i32
  %cmp20 = icmp sgt i32 %.lcssa, %18
  br i1 %cmp20, label %for.body21, label %for.inc40, !llvm.loop !17

for.inc40:                                        ; preds = %for.inc37, %for.cond19.preheader
  %indvars.iv.next56 = add nsw i64 %indvars.iv55, -1
  %cmp17 = icmp sgt i64 %indvars.iv55, 0
  %indvars.iv.next51 = add nsw i64 %indvars.iv50, -1
  br i1 %cmp17, label %for.cond19.preheader, label %for.body44.preheader, !llvm.loop !18

for.body44:                                       ; preds = %for.body44.preheader79, %for.body44
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %for.body44 ], [ %indvars.iv59.ph, %for.body44.preheader79 ]
  %max.042 = phi i32 [ %spec.select, %for.body44 ], [ %max.042.ph, %for.body44.preheader79 ]
  %arrayidx46 = getelementptr inbounds nuw i32, ptr %call4, i64 %indvars.iv59
  %19 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %19, i32 %max.042)
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  %exitcond63.not = icmp eq i64 %indvars.iv.next60, %wide.trip.count62
  br i1 %exitcond63.not, label %for.end54, label %for.body44, !llvm.loop !19

for.end54:                                        ; preds = %for.body44, %middle.block76, %for.cond8.preheader
  %max.0.lcssa = phi i32 [ 0, %for.cond8.preheader ], [ %14, %middle.block76 ], [ %spec.select, %for.body44 ]
  %call55 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %max.0.lcssa)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %k) #6
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11, !12}
!16 = distinct !{!16, !10, !11, !12, !13}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11, !12}
