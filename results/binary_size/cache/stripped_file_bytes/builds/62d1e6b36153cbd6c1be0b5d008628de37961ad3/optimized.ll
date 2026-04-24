; ModuleID = '<stdin>'
source_filename = "/tmp/tmpy6c64s_e.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [10000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not.not15 = icmp sgt i32 %0, 0
  br i1 %cmp.not.not15, label %for.body, label %for.end27

for.cond2.preheader:                              ; preds = %for.body
  %cmp4.not.not20 = icmp sgt i32 %2, 0
  br i1 %cmp4.not.not20, label %for.body5.lr.ph, label %for.end27

for.body5.lr.ph:                                  ; preds = %for.cond2.preheader
  %sub10 = add nsw i32 %2, -1
  %1 = zext nneg i32 %sub10 to i64
  %wide.trip.count32 = zext nneg i32 %2 to i64
  %wide.trip.count = zext i32 %sub10 to i64
  br label %for.body5

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [10000 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv.next, %3
  br i1 %cmp.not.not, label %for.body, label %for.cond2.preheader, !llvm.loop !9

for.body5:                                        ; preds = %for.body5.lr.ph, %for.inc25
  %indvars.iv26 = phi i64 [ 0, %for.body5.lr.ph ], [ %indvars.iv.next27, %for.inc25 ]
  %4 = sub nsw i64 %wide.trip.count, %indvars.iv26
  %arrayidx7 = getelementptr inbounds nuw [10000 x i32], ptr %a, i64 0, i64 %indvars.iv26
  %5 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %cmp8 = icmp ne i32 %5, 0
  %cmp11.not.not18 = icmp samesign ult i64 %indvars.iv26, %1
  %or.cond = select i1 %cmp8, i1 %cmp11.not.not18, i1 false
  br i1 %or.cond, label %for.body12.preheader, label %for.inc25

for.body12.preheader:                             ; preds = %for.body5
  %min.iters.check = icmp ult i64 %4, 4
  br i1 %min.iters.check, label %for.body12.preheader45, label %vector.ph

vector.ph:                                        ; preds = %for.body12.preheader
  %n.vec = and i64 %4, -4
  %6 = add i64 %indvars.iv26, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue44, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue44 ]
  %offset.idx = add i64 %indvars.iv26, %index
  %7 = add nuw nsw i64 %offset.idx, 1
  %8 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %8, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %9 = getelementptr inbounds nuw [10000 x i32], ptr %a, i64 0, i64 %7
  %wide.load = load <4 x i32>, ptr %9, align 4, !tbaa !5
  %10 = icmp eq <4 x i32> %broadcast.splat, %wide.load
  %11 = extractelement <4 x i1> %10, i64 0
  br i1 %11, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %12 = add nuw nsw i64 %offset.idx, 1
  %13 = getelementptr inbounds nuw [10000 x i32], ptr %a, i64 0, i64 %12
  store i32 0, ptr %13, align 4, !tbaa !5
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %14 = extractelement <4 x i1> %10, i64 1
  br i1 %14, label %pred.store.if39, label %pred.store.continue40

pred.store.if39:                                  ; preds = %pred.store.continue
  %15 = add i64 %offset.idx, 2
  %16 = getelementptr inbounds nuw [10000 x i32], ptr %a, i64 0, i64 %15
  store i32 0, ptr %16, align 4, !tbaa !5
  br label %pred.store.continue40

pred.store.continue40:                            ; preds = %pred.store.if39, %pred.store.continue
  %17 = extractelement <4 x i1> %10, i64 2
  br i1 %17, label %pred.store.if41, label %pred.store.continue42

pred.store.if41:                                  ; preds = %pred.store.continue40
  %18 = add i64 %offset.idx, 3
  %19 = getelementptr inbounds nuw [10000 x i32], ptr %a, i64 0, i64 %18
  store i32 0, ptr %19, align 4, !tbaa !5
  br label %pred.store.continue42

pred.store.continue42:                            ; preds = %pred.store.if41, %pred.store.continue40
  %20 = extractelement <4 x i1> %10, i64 3
  br i1 %20, label %pred.store.if43, label %pred.store.continue44

pred.store.if43:                                  ; preds = %pred.store.continue42
  %21 = add i64 %offset.idx, 4
  %22 = getelementptr inbounds nuw [10000 x i32], ptr %a, i64 0, i64 %21
  store i32 0, ptr %22, align 4, !tbaa !5
  br label %pred.store.continue44

pred.store.continue44:                            ; preds = %pred.store.if43, %pred.store.continue42
  %index.next = add nuw i64 %index, 4
  %23 = icmp eq i64 %index.next, %n.vec
  br i1 %23, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %pred.store.continue44
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %for.inc25, label %for.body12.preheader45

for.body12.preheader45:                           ; preds = %for.body12.preheader, %middle.block
  %indvars.iv28.ph = phi i64 [ %indvars.iv26, %for.body12.preheader ], [ %6, %middle.block ]
  br label %for.body12

for.body12:                                       ; preds = %for.body12.preheader45, %for.inc22
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for.inc22 ], [ %indvars.iv28.ph, %for.body12.preheader45 ]
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %24 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %arrayidx16 = getelementptr inbounds nuw [10000 x i32], ptr %a, i64 0, i64 %indvars.iv.next29
  %25 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %cmp17 = icmp eq i32 %24, %25
  br i1 %cmp17, label %if.then18, label %for.inc22

if.then18:                                        ; preds = %for.body12
  store i32 0, ptr %arrayidx16, align 4, !tbaa !5
  br label %for.inc22

for.inc22:                                        ; preds = %for.body12, %if.then18
  %exitcond.not = icmp eq i64 %indvars.iv.next29, %wide.trip.count
  br i1 %exitcond.not, label %for.inc25, label %for.body12, !llvm.loop !15

for.inc25:                                        ; preds = %for.inc22, %middle.block, %for.body5
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %exitcond33.not = icmp eq i64 %indvars.iv.next27, %wide.trip.count32
  br i1 %exitcond33.not, label %for.end27, label %for.body5, !llvm.loop !16

for.end27:                                        ; preds = %for.inc25, %entry, %for.cond2.preheader
  %26 = load i32, ptr %a, align 16, !tbaa !5
  %call29 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %26)
  %27 = load i32, ptr %n, align 4, !tbaa !5
  %cmp32.not.not22 = icmp sgt i32 %27, 1
  br i1 %cmp32.not.not22, label %for.body33, label %for.end44

for.body33:                                       ; preds = %for.end27, %for.inc42
  %28 = phi i32 [ %30, %for.inc42 ], [ %27, %for.end27 ]
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %for.inc42 ], [ 1, %for.end27 ]
  %arrayidx35 = getelementptr inbounds nuw [10000 x i32], ptr %a, i64 0, i64 %indvars.iv34
  %29 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %cmp36.not = icmp eq i32 %29, 0
  br i1 %cmp36.not, label %for.inc42, label %if.then37

if.then37:                                        ; preds = %for.body33
  %call40 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %29)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc42

for.inc42:                                        ; preds = %for.body33, %if.then37
  %30 = phi i32 [ %28, %for.body33 ], [ %.pre, %if.then37 ]
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %31 = sext i32 %30 to i64
  %cmp32.not.not = icmp slt i64 %indvars.iv.next35, %31
  br i1 %cmp32.not.not, label %for.body33, label %for.end44, !llvm.loop !17

for.end44:                                        ; preds = %for.inc42, %for.end27
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #4
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
