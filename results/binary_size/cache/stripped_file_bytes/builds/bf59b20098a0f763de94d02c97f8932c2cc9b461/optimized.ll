; ModuleID = '<stdin>'
source_filename = "/tmp/tmp31nu2ly8.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [500 x i32], align 16
  %b = alloca [500 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond11

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %3 = and i32 %2, -2147483647
  %cmp4 = icmp eq i32 %3, 1
  %spec.select32 = select i1 %cmp4, i32 %2, i32 0
  %4 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv
  store i32 %spec.select32, ptr %4, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond11:                                       ; preds = %for.cond11.preheader, %for.body13
  %indvars.iv21 = phi i64 [ 0, %for.cond11.preheader ], [ %indvars.iv.next22, %for.body13 ]
  %p.0 = phi i32 [ 0, %for.cond11.preheader ], [ %spec.select, %for.body13 ]
  %exitcond.not = icmp eq i64 %indvars.iv21, %wide.trip.count
  br i1 %exitcond.not, label %for.cond24.preheader, label %for.body13

for.cond24.preheader:                             ; preds = %for.cond11
  %sub = add nsw i32 %p.0, -2
  br label %for.cond24

for.body13:                                       ; preds = %for.cond11
  %arrayidx15 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv21
  %5 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %5, i32 %p.0)
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond11, !llvm.loop !12

for.cond24:                                       ; preds = %for.cond24.preheader, %for.inc41
  %.pre28 = phi i32 [ %.pre29, %for.inc41 ], [ %0, %for.cond24.preheader ]
  %6 = phi i32 [ %7, %for.inc41 ], [ %0, %for.cond24.preheader ]
  %r.0 = phi i32 [ %add, %for.inc41 ], [ 1, %for.cond24.preheader ]
  %cmp25.not = icmp sgt i32 %r.0, %sub
  br i1 %cmp25.not, label %for.end42, label %for.cond27

for.cond27:                                       ; preds = %for.cond24, %for.inc38
  %.pre29 = phi i32 [ %.pre, %for.inc38 ], [ %.pre28, %for.cond24 ]
  %7 = phi i32 [ %.pre, %for.inc38 ], [ %6, %for.cond24 ]
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %for.inc38 ], [ 0, %for.cond24 ]
  %8 = sext i32 %7 to i64
  %cmp28 = icmp slt i64 %indvars.iv25, %8
  br i1 %cmp28, label %for.body29, label %for.inc41

for.body29:                                       ; preds = %for.cond27
  %arrayidx31 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv25
  %9 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %cmp32 = icmp eq i32 %9, %r.0
  br i1 %cmp32, label %if.then33, label %for.inc38

if.then33:                                        ; preds = %for.body29
  %call36 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %r.0)
  %.pre.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc38

for.inc38:                                        ; preds = %for.body29, %if.then33
  %.pre = phi i32 [ %.pre29, %for.body29 ], [ %.pre.pre, %if.then33 ]
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond27, !llvm.loop !13

for.inc41:                                        ; preds = %for.cond27
  %add = add nuw nsw i32 %r.0, 2
  br label %for.cond24, !llvm.loop !14

for.end42:                                        ; preds = %for.cond24
  %call43 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %p.0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %a) #5
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
declare i32 @llvm.smax.i32(i32, i32) #4

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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
