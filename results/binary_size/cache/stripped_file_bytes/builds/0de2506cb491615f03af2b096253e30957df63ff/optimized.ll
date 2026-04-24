; ModuleID = '<stdin>'
source_filename = "/tmp/tmpxmkkh1lp.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %1, align 16
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp23 = icmp sgt i32 %3, 0
  br i1 %cmp23, label %for.body, label %for.end54

for.cond2.preheader:                              ; preds = %for.body
  %cmp3.not27 = icmp slt i32 %4, 1
  br i1 %cmp3.not27, label %for.end54, label %for.cond5.preheader

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %5
  br i1 %cmp, label %for.body, label %for.cond2.preheader, !llvm.loop !9

for.cond5.preheader:                              ; preds = %for.cond2.preheader, %for.inc26
  %indvars.iv40.in = phi i32 [ %indvars.iv40, %for.inc26 ], [ %4, %for.cond2.preheader ]
  %k.028 = phi i32 [ %inc27, %for.inc26 ], [ 1, %for.cond2.preheader ]
  %indvars.iv40 = add i32 %indvars.iv40.in, -1
  %cmp625 = icmp sgt i32 %4, %k.028
  br i1 %cmp625, label %for.body7.preheader, label %for.inc26

for.body7.preheader:                              ; preds = %for.cond5.preheader
  %wide.trip.count = zext i32 %indvars.iv40 to i64
  %.pre = load i32, ptr %vla, align 16, !tbaa !5
  br label %for.body7

for.body31.preheader:                             ; preds = %for.inc26
  %wide.trip.count46 = zext nneg i32 %4 to i64
  %min.iters.check = icmp ult i32 %4, 4
  br i1 %min.iters.check, label %for.body31.preheader62, label %vector.ph

vector.ph:                                        ; preds = %for.body31.preheader
  %n.vec = and i64 %wide.trip.count46, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ splat (i32 -2147483648), %vector.ph ], [ %9, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %6 = getelementptr inbounds nuw i32, ptr %vla, i64 %index
  %wide.load = load <4 x i32>, ptr %6, align 16, !tbaa !5
  %7 = and <4 x i32> %wide.load, splat (i32 -2147483647)
  %8 = icmp eq <4 x i32> %7, splat (i32 1)
  %9 = select <4 x i1> %8, <4 x i32> %vec.ind, <4 x i32> %vec.phi
  %index.next = add nuw i64 %index, 4
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %10 = icmp eq i64 %index.next, %n.vec
  br i1 %10, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %11 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %9)
  %rdx.select.cmp.not = icmp eq i32 %11, -2147483648
  %rdx.select = select i1 %rdx.select.cmp.not, i32 0, i32 %11
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count46
  br i1 %cmp.n, label %for.cond40.preheader, label %for.body31.preheader62

for.body31.preheader62:                           ; preds = %for.body31.preheader, %middle.block
  %indvars.iv43.ph = phi i64 [ 0, %for.body31.preheader ], [ %n.vec, %middle.block ]
  %d.031.ph = phi i32 [ 0, %for.body31.preheader ], [ %rdx.select, %middle.block ]
  br label %for.body31

for.body7:                                        ; preds = %for.body7.preheader, %for.inc23
  %12 = phi i32 [ %.pre, %for.body7.preheader ], [ %14, %for.inc23 ]
  %indvars.iv37 = phi i64 [ 0, %for.body7.preheader ], [ %indvars.iv.next38, %for.inc23 ]
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %arrayidx11 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv.next38
  %13 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp12 = icmp sgt i32 %12, %13
  br i1 %cmp12, label %if.then, label %for.inc23

if.then:                                          ; preds = %for.body7
  %arrayidx9 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv37
  store i32 %12, ptr %arrayidx11, align 4, !tbaa !5
  store i32 %13, ptr %arrayidx9, align 4, !tbaa !5
  br label %for.inc23

for.inc23:                                        ; preds = %for.body7, %if.then
  %14 = phi i32 [ %13, %for.body7 ], [ %12, %if.then ]
  %exitcond.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count
  br i1 %exitcond.not, label %for.inc26, label %for.body7, !llvm.loop !15

for.inc26:                                        ; preds = %for.inc23, %for.cond5.preheader
  %inc27 = add nuw i32 %k.028, 1
  %exitcond42.not = icmp eq i32 %k.028, %4
  br i1 %exitcond42.not, label %for.body31.preheader, label %for.cond5.preheader, !llvm.loop !16

for.cond40.preheader:                             ; preds = %for.body31, %middle.block
  %spec.select.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %spec.select, %for.body31 ]
  %cmp4133.not = icmp eq i32 %spec.select.lcssa, 0
  br i1 %cmp4133.not, label %for.end54, label %for.body42.preheader

for.body42.preheader:                             ; preds = %for.cond40.preheader
  %wide.trip.count51 = zext i32 %spec.select.lcssa to i64
  br label %for.body42

for.body31:                                       ; preds = %for.body31.preheader62, %for.body31
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %for.body31 ], [ %indvars.iv43.ph, %for.body31.preheader62 ]
  %d.031 = phi i32 [ %spec.select, %for.body31 ], [ %d.031.ph, %for.body31.preheader62 ]
  %arrayidx33 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv43
  %15 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %16 = and i32 %15, -2147483647
  %cmp34 = icmp eq i32 %16, 1
  %17 = trunc nuw nsw i64 %indvars.iv43 to i32
  %spec.select = select i1 %cmp34, i32 %17, i32 %d.031
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  %exitcond47.not = icmp eq i64 %indvars.iv.next44, %wide.trip.count46
  br i1 %exitcond47.not, label %for.cond40.preheader, label %for.body31, !llvm.loop !17

for.body42:                                       ; preds = %for.body42.preheader, %for.inc52
  %indvars.iv48 = phi i64 [ 0, %for.body42.preheader ], [ %indvars.iv.next49, %for.inc52 ]
  %arrayidx44 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv48
  %18 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %19 = and i32 %18, -2147483647
  %cmp46 = icmp eq i32 %19, 1
  br i1 %cmp46, label %if.then47, label %for.inc52

if.then47:                                        ; preds = %for.body42
  %call50 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %18)
  br label %for.inc52

for.inc52:                                        ; preds = %for.body42, %if.then47
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  %exitcond52.not = icmp eq i64 %indvars.iv.next49, %wide.trip.count51
  br i1 %exitcond52.not, label %for.end54, label %for.body42, !llvm.loop !18

for.end54:                                        ; preds = %for.inc52, %for.cond40.preheader, %for.cond2.preheader, %entry
  %idxprom55.pre-phi = phi i64 [ 0, %entry ], [ 0, %for.cond2.preheader ], [ 0, %for.cond40.preheader ], [ %wide.trip.count51, %for.inc52 ]
  %arrayidx56 = getelementptr inbounds nuw i32, ptr %vla, i64 %idxprom55.pre-phi
  %20 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %call57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %20)
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11, !13}
!18 = distinct !{!18, !10, !11}
