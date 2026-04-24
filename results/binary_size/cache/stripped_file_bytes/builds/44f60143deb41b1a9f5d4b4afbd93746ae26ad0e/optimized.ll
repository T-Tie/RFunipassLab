; ModuleID = '<stdin>'
source_filename = "/tmp/tmpxbbzpbc7.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [15 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 60, ptr noundef nonnull align 16 %a) #4
  br label %while.cond

while.cond:                                       ; preds = %if.end32, %entry
  %k.0 = phi i32 [ undef, %entry ], [ %k.28, %if.end32 ]
  %flag.0 = phi i32 [ 1, %entry ], [ %flag.19, %if.end32 ]
  %tobool.not = icmp eq i32 %flag.0, 0
  br i1 %tobool.not, label %while.end, label %for.cond

for.cond:                                         ; preds = %while.cond, %if.end8
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end8 ], [ 0, %while.cond ]
  %k.1 = phi i32 [ %1, %if.end8 ], [ %k.0, %while.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, 16
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  %1 = trunc nuw nsw i64 %indvars.iv to i32
  switch i32 %0, label %if.end8 [
    i32 -1, label %if.end32
    i32 0, label %for.end
  ]

if.end8:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.body, %for.cond
  %k.2 = phi i32 [ %k.1, %for.cond ], [ %1, %for.body ]
  %smax = call i32 @llvm.smax.i32(i32 %k.2, i32 noundef 0)
  %wide.trip.count20 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %k.2 to i64
  br label %for.cond11

for.cond11:                                       ; preds = %for.end, %for.end27
  %indvars.iv17 = phi i64 [ 0, %for.end ], [ %indvars.iv.next18, %for.end27 ]
  %s.0 = phi i32 [ 0, %for.end ], [ %s.1, %for.end27 ]
  %exitcond21.not = icmp eq i64 %indvars.iv17, %wide.trip.count20
  br i1 %exitcond21.not, label %for.end30, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.cond11
  %arrayidx18 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv17
  br label %for.cond14

for.cond14:                                       ; preds = %for.cond14.preheader, %for.body16
  %indvars.iv13 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next14, %for.body16 ]
  %s.1 = phi i32 [ %s.0, %for.cond14.preheader ], [ %spec.select, %for.body16 ]
  %exitcond16.not = icmp eq i64 %indvars.iv13, %wide.trip.count
  br i1 %exitcond16.not, label %for.end27, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %2 = load i32, ptr %arrayidx18, align 4, !tbaa !5, !invariant.load !9
  %arrayidx20 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv13
  %3 = load i32, ptr %arrayidx20, align 4, !tbaa !5, !invariant.load !9
  %mul = shl nsw i32 %3, 1
  %cmp21 = icmp eq i32 %2, %mul
  %inc23 = zext i1 %cmp21 to i32
  %spec.select = add nsw i32 %inc23, %s.1
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  br label %for.cond14, !llvm.loop !13

for.end27:                                        ; preds = %for.cond14
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  br label %for.cond11, !llvm.loop !14

for.end30:                                        ; preds = %for.cond11
  %call31 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %s.0)
  br label %if.end32

if.end32:                                         ; preds = %for.body, %for.end30
  %flag.19 = phi i32 [ %flag.0, %for.end30 ], [ 0, %for.body ]
  %k.28 = phi i32 [ %k.2, %for.end30 ], [ %1, %for.body ]
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 noundef 60, ptr noundef nonnull align 16 %a) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind }
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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
