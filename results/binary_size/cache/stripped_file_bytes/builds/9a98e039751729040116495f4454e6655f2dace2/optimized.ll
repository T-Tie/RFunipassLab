; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9la92qdd.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %u = alloca [20000 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 80000, ptr nonnull %u) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp20 = icmp sgt i32 %0, 0
  br i1 %cmp20, label %for.body, label %while.end

for.cond2.preheader:                              ; preds = %for.body
  %cmp324 = icmp sgt i32 %2, 0
  br i1 %cmp324, label %for.body4.preheader, label %while.end

for.body4.preheader:                              ; preds = %for.cond2.preheader
  %1 = zext nneg i32 %2 to i64
  %wide.trip.count43 = zext nneg i32 %2 to i64
  br label %for.body4

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [20000 x i32], ptr %u, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %3
  br i1 %cmp, label %for.body, label %for.cond2.preheader, !llvm.loop !9

for.cond2.loopexit:                               ; preds = %for.inc15, %middle.block, %for.body4
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %for.body23.preheader, label %for.body4, !llvm.loop !12

for.body23.preheader:                             ; preds = %for.cond2.loopexit
  %wide.trip.count48 = zext nneg i32 %2 to i64
  %min.iters.check66 = icmp ult i32 %2, 4
  br i1 %min.iters.check66, label %for.body23.preheader77, label %vector.ph67

vector.ph67:                                      ; preds = %for.body23.preheader
  %n.vec69 = and i64 %wide.trip.count43, 2147483644
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph67
  %index71 = phi i64 [ 0, %vector.ph67 ], [ %index.next73, %vector.body70 ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph67 ], [ %7, %vector.body70 ]
  %4 = getelementptr inbounds nuw [20000 x i32], ptr %u, i64 0, i64 %index71
  %wide.load72 = load <4 x i32>, ptr %4, align 16, !tbaa !5
  %5 = icmp ne <4 x i32> %wide.load72, zeroinitializer
  %6 = zext <4 x i1> %5 to <4 x i32>
  %7 = add <4 x i32> %vec.phi, %6
  %index.next73 = add nuw i64 %index71, 4
  %8 = icmp eq i64 %index.next73, %n.vec69
  br i1 %8, label %middle.block74, label %vector.body70, !llvm.loop !13

middle.block74:                                   ; preds = %vector.body70
  %9 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %7)
  %cmp.n75 = icmp eq i64 %n.vec69, %wide.trip.count43
  br i1 %cmp.n75, label %while.body.lr.ph, label %for.body23.preheader77

for.body23.preheader77:                           ; preds = %for.body23.preheader, %middle.block74
  %indvars.iv45.ph = phi i64 [ 0, %for.body23.preheader ], [ %n.vec69, %middle.block74 ]
  %k.028.ph = phi i32 [ 0, %for.body23.preheader ], [ %9, %middle.block74 ]
  br label %for.body23

for.body4:                                        ; preds = %for.body4.preheader, %for.cond2.loopexit
  %indvars.iv40 = phi i64 [ 0, %for.body4.preheader ], [ %indvars.iv.next41, %for.cond2.loopexit ]
  %indvars.iv35 = phi i64 [ 1, %for.body4.preheader ], [ %indvars.iv.next36, %for.cond2.loopexit ]
  %10 = xor i64 %indvars.iv40, -1
  %11 = add nsw i64 %10, %wide.trip.count43
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %cmp622 = icmp samesign ult i64 %indvars.iv.next41, %1
  br i1 %cmp622, label %for.body7.lr.ph, label %for.cond2.loopexit

for.body7.lr.ph:                                  ; preds = %for.body4
  %arrayidx9 = getelementptr inbounds nuw [20000 x i32], ptr %u, i64 0, i64 %indvars.iv40
  %min.iters.check = icmp ult i64 %11, 4
  br i1 %min.iters.check, label %for.body7.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body7.lr.ph
  %n.vec = and i64 %11, -4
  %12 = add i64 %indvars.iv35, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue64, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue64 ]
  %offset.idx = add i64 %indvars.iv35, %index
  %13 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %13, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %14 = getelementptr inbounds nuw [20000 x i32], ptr %u, i64 0, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %14, align 4, !tbaa !5
  %15 = icmp eq <4 x i32> %broadcast.splat, %wide.load
  %16 = extractelement <4 x i1> %15, i64 0
  br i1 %16, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %17 = getelementptr inbounds nuw [20000 x i32], ptr %u, i64 0, i64 %offset.idx
  store i32 0, ptr %17, align 4, !tbaa !5
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %18 = extractelement <4 x i1> %15, i64 1
  br i1 %18, label %pred.store.if59, label %pred.store.continue60

pred.store.if59:                                  ; preds = %pred.store.continue
  %19 = add i64 %offset.idx, 1
  %20 = getelementptr inbounds nuw [20000 x i32], ptr %u, i64 0, i64 %19
  store i32 0, ptr %20, align 4, !tbaa !5
  br label %pred.store.continue60

pred.store.continue60:                            ; preds = %pred.store.if59, %pred.store.continue
  %21 = extractelement <4 x i1> %15, i64 2
  br i1 %21, label %pred.store.if61, label %pred.store.continue62

pred.store.if61:                                  ; preds = %pred.store.continue60
  %22 = add i64 %offset.idx, 2
  %23 = getelementptr inbounds nuw [20000 x i32], ptr %u, i64 0, i64 %22
  store i32 0, ptr %23, align 4, !tbaa !5
  br label %pred.store.continue62

pred.store.continue62:                            ; preds = %pred.store.if61, %pred.store.continue60
  %24 = extractelement <4 x i1> %15, i64 3
  br i1 %24, label %pred.store.if63, label %pred.store.continue64

pred.store.if63:                                  ; preds = %pred.store.continue62
  %25 = add i64 %offset.idx, 3
  %26 = getelementptr inbounds nuw [20000 x i32], ptr %u, i64 0, i64 %25
  store i32 0, ptr %26, align 4, !tbaa !5
  br label %pred.store.continue64

pred.store.continue64:                            ; preds = %pred.store.if63, %pred.store.continue62
  %index.next = add nuw i64 %index, 4
  %27 = icmp eq i64 %index.next, %n.vec
  br i1 %27, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %pred.store.continue64
  %cmp.n = icmp eq i64 %11, %n.vec
  br i1 %cmp.n, label %for.cond2.loopexit, label %for.body7.preheader

for.body7.preheader:                              ; preds = %for.body7.lr.ph, %middle.block
  %indvars.iv37.ph = phi i64 [ %indvars.iv35, %for.body7.lr.ph ], [ %12, %middle.block ]
  br label %for.body7

for.body7:                                        ; preds = %for.body7.preheader, %for.inc15
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.inc15 ], [ %indvars.iv37.ph, %for.body7.preheader ]
  %28 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %arrayidx11 = getelementptr inbounds nuw [20000 x i32], ptr %u, i64 0, i64 %indvars.iv37
  %29 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %28, %29
  br i1 %cmp12, label %if.then, label %for.inc15

if.then:                                          ; preds = %for.body7
  store i32 0, ptr %arrayidx11, align 4, !tbaa !5
  br label %for.inc15

for.inc15:                                        ; preds = %for.body7, %if.then
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count43
  br i1 %exitcond.not, label %for.cond2.loopexit, label %for.body7, !llvm.loop !17

while.body.lr.ph:                                 ; preds = %for.body23, %middle.block74
  %spec.select.lcssa = phi i32 [ %9, %middle.block74 ], [ %spec.select, %for.body23 ]
  %30 = add nsw i32 %spec.select.lcssa, -1
  br label %while.body

for.body23:                                       ; preds = %for.body23.preheader77, %for.body23
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %for.body23 ], [ %indvars.iv45.ph, %for.body23.preheader77 ]
  %k.028 = phi i32 [ %spec.select, %for.body23 ], [ %k.028.ph, %for.body23.preheader77 ]
  %arrayidx25 = getelementptr inbounds nuw [20000 x i32], ptr %u, i64 0, i64 %indvars.iv45
  %31 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %cmp26.not = icmp ne i32 %31, 0
  %inc28 = zext i1 %cmp26.not to i32
  %spec.select = add nuw nsw i32 %k.028, %inc28
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %exitcond49.not = icmp eq i64 %indvars.iv.next46, %wide.trip.count48
  br i1 %exitcond49.not, label %while.body.lr.ph, label %for.body23, !llvm.loop !18

while.body:                                       ; preds = %while.body.lr.ph, %if.end48
  %indvars.iv50 = phi i64 [ 0, %while.body.lr.ph ], [ %indvars.iv.next51, %if.end48 ]
  %l.032 = phi i32 [ 0, %while.body.lr.ph ], [ %l.1, %if.end48 ]
  %arrayidx35 = getelementptr inbounds nuw [20000 x i32], ptr %u, i64 0, i64 %indvars.iv50
  %32 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %cmp36.not = icmp eq i32 %32, 0
  br i1 %cmp36.not, label %if.end48, label %if.then37

if.then37:                                        ; preds = %while.body
  %cmp38 = icmp slt i32 %l.032, %30
  br i1 %cmp38, label %if.then39, label %if.else

if.then39:                                        ; preds = %if.then37
  %call42 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %32)
  %inc43 = add nsw i32 %l.032, 1
  br label %if.end48

if.else:                                          ; preds = %if.then37
  %call46 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %32)
  br label %if.end48

if.end48:                                         ; preds = %if.then39, %if.else, %while.body
  %l.1 = phi i32 [ %inc43, %if.then39 ], [ %l.032, %if.else ], [ %l.032, %while.body ]
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  %33 = load i32, ptr %n, align 4, !tbaa !5
  %34 = sext i32 %33 to i64
  %cmp33 = icmp slt i64 %indvars.iv.next51, %34
  br i1 %cmp33, label %while.body, label %while.end, !llvm.loop !19

while.end:                                        ; preds = %if.end48, %entry, %for.cond2.preheader
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 80000, ptr nonnull %u) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11, !14, !15}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !10, !11, !14, !15}
!17 = distinct !{!17, !10, !11, !14}
!18 = distinct !{!18, !10, !11, !14}
!19 = distinct !{!19, !10, !11}
