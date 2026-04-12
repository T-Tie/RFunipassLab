; ModuleID = '<stdin>'
source_filename = "/tmp/tmptc7spoak.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@a = dso_local local_unnamed_addr global [100 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  store i32 1, ptr @a, align 16, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %n.promoted = load i32, ptr %n, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %for.cond1, %entry
  %dec19 = phi i32 [ %n.promoted, %entry ], [ %dec, %for.cond1 ]
  %k.0 = phi i32 [ 1, %entry ], [ %k.1, %for.cond1 ]
  %dec = add nsw i32 %dec19, -1
  %tobool.not = icmp eq i32 %dec19, 0
  br i1 %tobool.not, label %for.cond22.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.cond
  %smax = call i32 @llvm.smax.i32(i32 %k.0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond22.preheader:                             ; preds = %while.cond
  store i32 -1, ptr %n, align 4, !tbaa !5
  %0 = zext i32 %k.0 to i64
  br label %for.cond22

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond1, label %for.inc

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  %mul = shl nsw i32 %1, 1
  store i32 %mul, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !10

for.cond1:                                        ; preds = %for.cond, %for.inc18
  %indvars.iv21 = phi i64 [ %indvars.iv.next22.pre-phi, %for.inc18 ], [ 0, %for.cond ]
  %k.1 = phi i32 [ %k.2, %for.inc18 ], [ %k.0, %for.cond ]
  %2 = sext i32 %k.1 to i64
  %cmp2 = icmp slt i64 %indvars.iv21, %2
  br i1 %cmp2, label %for.body3, label %while.cond, !llvm.loop !13

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv21
  %3 = load i32, ptr %arrayidx5, align 4, !tbaa !5, !invariant.load !9
  %cmp6 = icmp sgt i32 %3, 9
  %4 = add nuw nsw i64 %indvars.iv21, 1
  br i1 %cmp6, label %if.then, label %for.body3.for.inc18_crit_edge

for.body3.for.inc18_crit_edge:                    ; preds = %for.body3
  br label %for.inc18

if.then:                                          ; preds = %for.body3
  %div17 = udiv i32 %3, 10
  %arrayidx10 = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %4
  %5 = load i32, ptr %arrayidx10, align 4, !tbaa !5, !invariant.load !9
  %add11 = add nsw i32 %5, %div17
  store i32 %add11, ptr %arrayidx10, align 4, !tbaa !5
  %rem18 = urem i32 %3, 10
  store i32 %rem18, ptr %arrayidx5, align 4, !tbaa !5
  %sub = add nsw i32 %k.1, -1
  %6 = zext i32 %sub to i64
  %cmp14 = icmp eq i64 %indvars.iv21, %6
  %inc16 = zext i1 %cmp14 to i32
  %spec.select = add nsw i32 %k.1, %inc16
  br label %for.inc18

for.inc18:                                        ; preds = %for.body3.for.inc18_crit_edge, %if.then
  %indvars.iv.next22.pre-phi = phi i64 [ %4, %for.body3.for.inc18_crit_edge ], [ %4, %if.then ]
  %k.2 = phi i32 [ %k.1, %for.body3.for.inc18_crit_edge ], [ %spec.select, %if.then ]
  br label %for.cond1, !llvm.loop !14

for.cond22:                                       ; preds = %for.cond22.preheader, %for.inc28
  %indvars.iv26 = phi i64 [ %0, %for.cond22.preheader ], [ %8, %for.inc28 ]
  %7 = trunc nuw i64 %indvars.iv26 to i32
  %cmp23 = icmp sgt i32 %7, 0
  br i1 %cmp23, label %for.inc28, label %for.end30

for.inc28:                                        ; preds = %for.cond22
  %8 = add nsw i64 %indvars.iv26, -1
  %arrayidx26 = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %8
  %9 = load i32, ptr %arrayidx26, align 4, !tbaa !5, !invariant.load !9
  %call27 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %9)
  br label %for.cond22, !llvm.loop !15

for.end30:                                        ; preds = %for.cond22
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
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
