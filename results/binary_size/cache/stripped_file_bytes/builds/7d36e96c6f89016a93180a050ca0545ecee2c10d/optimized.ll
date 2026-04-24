; ModuleID = '<stdin>'
source_filename = "/tmp/tmpgvijkr2e.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [300 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %a) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp24 = icmp sgt i32 %0, 0
  br i1 %cmp24, label %for.body, label %for.end29

for.cond2.preheader:                              ; preds = %for.body
  %cmp328 = icmp sgt i32 %2, 0
  br i1 %cmp328, label %for.body4.preheader, label %for.end29

for.body4.preheader:                              ; preds = %for.cond2.preheader
  %1 = zext nneg i32 %2 to i64
  %wide.trip.count43 = zext nneg i32 %2 to i64
  %invariant.op = add nsw i64 %1, -1
  br label %for.body4

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %add.ptr = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %add.ptr)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %3
  br i1 %cmp, label %for.body, label %for.cond2.preheader, !llvm.loop !9

for.body4:                                        ; preds = %for.body4.preheader, %for.inc27
  %indvars.iv39 = phi i64 [ 0, %for.body4.preheader ], [ %indvars.iv.next40, %for.inc27 ]
  %indvars.iv37 = phi i32 [ %2, %for.body4.preheader ], [ %indvars.iv.next38, %for.inc27 ]
  %4 = zext i32 %indvars.iv37 to i64
  %5 = add nsw i64 %4, -1
  %add.ptr6 = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv39
  %6 = load i32, ptr %add.ptr6, align 4, !tbaa !5
  %cmp7.not = icmp ne i32 %6, 797
  %cmp926 = icmp slt i64 %indvars.iv39, %invariant.op
  %or.cond = select i1 %cmp7.not, i1 %cmp926, i1 false
  br i1 %or.cond, label %for.body10.preheader, label %for.inc27

for.body10.preheader:                             ; preds = %for.body4
  %wide.trip.count = zext i32 %indvars.iv37 to i64
  %min.iters.check = icmp ult i64 %5, 4
  br i1 %min.iters.check, label %for.body10.preheader56, label %vector.ph

vector.ph:                                        ; preds = %for.body10.preheader
  %n.vec = and i64 %5, -4
  %7 = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %6, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.gep = getelementptr i8, ptr %add.ptr6, i64 8
  %invariant.gep57 = getelementptr i8, ptr %add.ptr6, i64 12
  %invariant.gep59 = getelementptr i8, ptr %add.ptr6, i64 16
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue55, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue55 ]
  %offset.idx = or disjoint i64 %index, 1
  %8 = getelementptr inbounds nuw i32, ptr %add.ptr6, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %8, align 4, !tbaa !5
  %9 = icmp eq <4 x i32> %broadcast.splat, %wide.load
  %10 = extractelement <4 x i1> %9, i64 0
  br i1 %10, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %11 = getelementptr inbounds nuw i32, ptr %add.ptr6, i64 %offset.idx
  store i32 797, ptr %11, align 4, !tbaa !5
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %12 = extractelement <4 x i1> %9, i64 1
  br i1 %12, label %pred.store.if50, label %pred.store.continue51

pred.store.if50:                                  ; preds = %pred.store.continue
  %gep = getelementptr i32, ptr %invariant.gep, i64 %index
  store i32 797, ptr %gep, align 4, !tbaa !5
  br label %pred.store.continue51

pred.store.continue51:                            ; preds = %pred.store.if50, %pred.store.continue
  %13 = extractelement <4 x i1> %9, i64 2
  br i1 %13, label %pred.store.if52, label %pred.store.continue53

pred.store.if52:                                  ; preds = %pred.store.continue51
  %gep58 = getelementptr i32, ptr %invariant.gep57, i64 %index
  store i32 797, ptr %gep58, align 4, !tbaa !5
  br label %pred.store.continue53

pred.store.continue53:                            ; preds = %pred.store.if52, %pred.store.continue51
  %14 = extractelement <4 x i1> %9, i64 3
  br i1 %14, label %pred.store.if54, label %pred.store.continue55

pred.store.if54:                                  ; preds = %pred.store.continue53
  %gep60 = getelementptr i32, ptr %invariant.gep59, i64 %index
  store i32 797, ptr %gep60, align 4, !tbaa !5
  br label %pred.store.continue55

pred.store.continue55:                            ; preds = %pred.store.if54, %pred.store.continue53
  %index.next = add nuw i64 %index, 4
  %15 = icmp eq i64 %index.next, %n.vec
  br i1 %15, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %pred.store.continue55
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %for.inc27, label %for.body10.preheader56

for.body10.preheader56:                           ; preds = %for.body10.preheader, %middle.block
  %indvars.iv34.ph = phi i64 [ 1, %for.body10.preheader ], [ %7, %middle.block ]
  br label %for.body10

for.body10:                                       ; preds = %for.body10.preheader56, %for.inc23
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %for.inc23 ], [ %indvars.iv34.ph, %for.body10.preheader56 ]
  %add.ptr16 = getelementptr inbounds nuw i32, ptr %add.ptr6, i64 %indvars.iv34
  %16 = load i32, ptr %add.ptr16, align 4, !tbaa !5
  %cmp17 = icmp eq i32 %6, %16
  br i1 %cmp17, label %if.then18, label %for.inc23

if.then18:                                        ; preds = %for.body10
  store i32 797, ptr %add.ptr16, align 4, !tbaa !5
  br label %for.inc23

for.inc23:                                        ; preds = %for.body10, %if.then18
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next35, %wide.trip.count
  br i1 %exitcond.not, label %for.inc27, label %for.body10, !llvm.loop !15

for.inc27:                                        ; preds = %for.inc23, %middle.block, %for.body4
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %indvars.iv.next38 = add i32 %indvars.iv37, -1
  %exitcond44.not = icmp eq i64 %indvars.iv.next40, %wide.trip.count43
  br i1 %exitcond44.not, label %for.end29, label %for.body4, !llvm.loop !16

for.end29:                                        ; preds = %for.inc27, %entry, %for.cond2.preheader
  %17 = load i32, ptr %a, align 16, !tbaa !5
  %call30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %17)
  %18 = load i32, ptr %n, align 4, !tbaa !5
  %cmp3230 = icmp sgt i32 %18, 1
  br i1 %cmp3230, label %for.body33, label %for.end44

for.body33:                                       ; preds = %for.end29, %for.inc42
  %19 = phi i32 [ %21, %for.inc42 ], [ %18, %for.end29 ]
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %for.inc42 ], [ 1, %for.end29 ]
  %add.ptr35 = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv45
  %20 = load i32, ptr %add.ptr35, align 4, !tbaa !5
  %cmp36.not = icmp eq i32 %20, 797
  br i1 %cmp36.not, label %for.inc42, label %if.then37

if.then37:                                        ; preds = %for.body33
  %call40 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %20)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc42

for.inc42:                                        ; preds = %for.body33, %if.then37
  %21 = phi i32 [ %19, %for.body33 ], [ %.pre, %if.then37 ]
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %22 = sext i32 %21 to i64
  %cmp32 = icmp slt i64 %indvars.iv.next46, %22
  br i1 %cmp32, label %for.body33, label %for.end44, !llvm.loop !17

for.end44:                                        ; preds = %for.inc42, %for.end29
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %a) #4
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !10, !11, !13}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
