; ModuleID = '<stdin>'
source_filename = "/tmp/tmpra73xrkn.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [300 x i32], align 16
  %b = alloca [300 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %b) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not19 = icmp sgt i32 %0, 0
  call void @llvm.assume(i1 %cmp.not19)
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %arrayidx = getelementptr inbounds nuw [300 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv, %2
  br i1 %cmp.not.not, label %for.body, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %for.body
  %arrayidx2.phi.trans.insert = getelementptr inbounds nuw i8, ptr %a, i64 4
  %.pre = load i32, ptr %arrayidx2.phi.trans.insert, align 4, !tbaa !5
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %b, i64 4
  store i32 %.pre, ptr %arrayidx3, align 4, !tbaa !5
  %cmp5.not25 = icmp slt i32 %1, 1
  br i1 %cmp5.not25, label %cleanup.sink.split, label %for.cond7.preheader.preheader

for.cond7.preheader.preheader:                    ; preds = %for.end
  %3 = add nuw i32 %1, 1
  %wide.trip.count38 = zext i32 %3 to i64
  br label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.cond7.preheader.preheader, %for.inc26
  %indvars.iv35 = phi i64 [ 1, %for.cond7.preheader.preheader ], [ %indvars.iv.next36, %for.inc26 ]
  %h.026 = phi i32 [ 1, %for.cond7.preheader.preheader ], [ %h.1, %for.inc26 ]
  %cmp8.not21 = icmp slt i32 %h.026, 1
  br i1 %cmp8.not21, label %if.then19, label %for.body9.lr.ph

for.body9.lr.ph:                                  ; preds = %for.cond7.preheader
  %arrayidx11 = getelementptr inbounds nuw [300 x i32], ptr %a, i64 0, i64 %indvars.iv35
  %4 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %5 = add nuw i32 %h.026, 1
  %wide.trip.count = zext i32 %5 to i64
  %6 = zext nneg i32 %h.026 to i64
  %min.iters.check = icmp ult i32 %h.026, 4
  br i1 %min.iters.check, label %for.body9.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body9.lr.ph
  %n.vec = and i64 %6, 2147483644
  %7 = or disjoint i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %4, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i1> [ zeroinitializer, %vector.ph ], [ %10, %vector.body ]
  %offset.idx = or disjoint i64 %index, 1
  %8 = getelementptr inbounds nuw [300 x i32], ptr %b, i64 0, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %8, align 4, !tbaa !5
  %9 = icmp eq <4 x i32> %broadcast.splat, %wide.load
  %.fr = freeze <4 x i1> %9
  %10 = or <4 x i1> %vec.phi, %.fr
  %index.next = add nuw i64 %index, 4
  %11 = icmp eq i64 %index.next, %n.vec
  br i1 %11, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %12 = bitcast <4 x i1> %10 to i4
  %.not = icmp eq i4 %12, 0
  %rdx.select = zext i1 %.not to i32
  %cmp.n = icmp eq i64 %n.vec, %6
  br i1 %cmp.n, label %for.end17, label %for.body9.preheader

for.body9.preheader:                              ; preds = %for.body9.lr.ph, %middle.block
  %indvars.iv32.ph = phi i64 [ 1, %for.body9.lr.ph ], [ %7, %middle.block ]
  %flag.022.ph = phi i32 [ 1, %for.body9.lr.ph ], [ %rdx.select, %middle.block ]
  br label %for.body9

for.body9:                                        ; preds = %for.body9.preheader, %for.body9
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.body9 ], [ %indvars.iv32.ph, %for.body9.preheader ]
  %flag.022 = phi i32 [ %spec.select, %for.body9 ], [ %flag.022.ph, %for.body9.preheader ]
  %arrayidx13 = getelementptr inbounds nuw [300 x i32], ptr %b, i64 0, i64 %indvars.iv32
  %13 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %4, %13
  %spec.select = select i1 %cmp14, i32 0, i32 %flag.022
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next33, %wide.trip.count
  br i1 %exitcond.not, label %for.end17, label %for.body9, !llvm.loop !15

for.end17:                                        ; preds = %for.body9, %middle.block
  %spec.select.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %spec.select, %for.body9 ]
  %14 = icmp eq i32 %spec.select.lcssa, 0
  br i1 %14, label %for.inc26, label %if.then19

if.then19:                                        ; preds = %for.cond7.preheader, %for.end17
  %inc20 = add nsw i32 %h.026, 1
  %arrayidx22 = getelementptr inbounds nuw [300 x i32], ptr %a, i64 0, i64 %indvars.iv35
  %15 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %idxprom23 = sext i32 %inc20 to i64
  %arrayidx24 = getelementptr inbounds [300 x i32], ptr %b, i64 0, i64 %idxprom23
  store i32 %15, ptr %arrayidx24, align 4, !tbaa !5
  br label %for.inc26

for.inc26:                                        ; preds = %for.end17, %if.then19
  %h.1 = phi i32 [ %inc20, %if.then19 ], [ %h.026, %for.end17 ]
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %exitcond39.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count38
  br i1 %exitcond39.not, label %for.end28, label %for.cond7.preheader, !llvm.loop !16

for.end28:                                        ; preds = %for.inc26
  %cmp29 = icmp eq i32 %h.1, 1
  br i1 %cmp29, label %cleanup.sink.split, label %if.end33

if.end33:                                         ; preds = %for.end28
  %cmp34 = icmp sgt i32 %h.1, 1
  br i1 %cmp34, label %for.body38.preheader, label %cleanup

for.body38.preheader:                             ; preds = %if.end33
  %wide.trip.count43 = zext nneg i32 %h.1 to i64
  br label %for.body38

for.body38:                                       ; preds = %for.body38.preheader, %for.body38
  %indvars.iv40 = phi i64 [ 1, %for.body38.preheader ], [ %indvars.iv.next41, %for.body38 ]
  %arrayidx40 = getelementptr inbounds nuw [300 x i32], ptr %b, i64 0, i64 %indvars.iv40
  %16 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %call41 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %16)
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %for.end44, label %for.body38, !llvm.loop !17

for.end44:                                        ; preds = %for.body38
  %arrayidx46 = getelementptr inbounds nuw [300 x i32], ptr %b, i64 0, i64 %wide.trip.count43
  %17 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end28, %for.end, %for.end44
  %.pre.sink = phi i32 [ %17, %for.end44 ], [ %.pre, %for.end ], [ %.pre, %for.end28 ]
  %call32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.pre.sink)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end33
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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
!12 = distinct !{!12, !10, !11, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !10, !11, !13}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
