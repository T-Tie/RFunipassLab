; ModuleID = '<stdin>'
source_filename = "/tmp/tmpxtihs9v2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %num = alloca [500 x i32], align 16
  %n = alloca i32, align 4
  %sz = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %num) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %sz) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp24 = icmp sgt i32 %0, 0
  br i1 %cmp24, label %for.body, label %for.cond.cleanup43

for.cond10.preheader:                             ; preds = %for.inc
  %cmp11.not30 = icmp slt i32 %k.1, 1
  br i1 %cmp11.not30, label %for.cond.cleanup43, label %for.cond14.preheader

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %t.026 = phi i32 [ %t.1, %for.inc ], [ 0, %entry ]
  %k.025 = phi i32 [ %k.1, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %num, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %2 = and i32 %1, 1
  %cmp4.not = icmp eq i32 %2, 0
  br i1 %cmp4.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %idxprom7 = sext i32 %t.026 to i64
  %arrayidx8 = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom7
  store i32 %1, ptr %arrayidx8, align 4, !tbaa !5
  %inc = add nsw i32 %k.025, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %k.1 = phi i32 [ %inc, %if.then ], [ %k.025, %for.body ]
  %t.1 = phi i32 [ %inc, %if.then ], [ %t.026, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %4
  br i1 %cmp, label %for.body, label %for.cond10.preheader, !llvm.loop !9

for.cond14.preheader:                             ; preds = %for.cond10.preheader, %for.cond.cleanup16
  %indvars.iv38.in = phi i32 [ %indvars.iv38, %for.cond.cleanup16 ], [ %k.1, %for.cond10.preheader ]
  %m.031 = phi i32 [ %inc39, %for.cond.cleanup16 ], [ 1, %for.cond10.preheader ]
  %indvars.iv38 = add i32 %indvars.iv38.in, -1
  %cmp1528 = icmp sgt i32 %k.1, %m.031
  br i1 %cmp1528, label %for.body17.preheader, label %for.cond.cleanup16

for.body17.preheader:                             ; preds = %for.cond14.preheader
  %wide.trip.count = zext i32 %indvars.iv38 to i64
  %.pre = load i32, ptr %sz, align 16, !tbaa !5
  br label %for.body17

for.body44.lr.ph:                                 ; preds = %for.cond.cleanup16
  %sub45 = add nsw i32 %k.1, -1
  %5 = zext nneg i32 %sub45 to i64
  %wide.trip.count44 = zext nneg i32 %k.1 to i64
  %arrayidx49 = getelementptr inbounds nuw [500 x i32], ptr %sz, i64 0, i64 %5
  br label %for.body44

for.cond.cleanup16:                               ; preds = %for.inc35, %for.cond14.preheader
  %inc39 = add nuw i32 %m.031, 1
  %exitcond40.not = icmp eq i32 %m.031, %k.1
  br i1 %exitcond40.not, label %for.body44.lr.ph, label %for.cond14.preheader, !llvm.loop !12

for.body17:                                       ; preds = %for.body17.preheader, %for.inc35
  %6 = phi i32 [ %.pre, %for.body17.preheader ], [ %8, %for.inc35 ]
  %indvars.iv35 = phi i64 [ 0, %for.body17.preheader ], [ %indvars.iv.next36, %for.inc35 ]
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %arrayidx21 = getelementptr inbounds nuw [500 x i32], ptr %sz, i64 0, i64 %indvars.iv.next36
  %7 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %cmp22 = icmp sgt i32 %6, %7
  br i1 %cmp22, label %if.then23, label %for.inc35

if.then23:                                        ; preds = %for.body17
  %arrayidx19 = getelementptr inbounds nuw [500 x i32], ptr %sz, i64 0, i64 %indvars.iv35
  store i32 %6, ptr %arrayidx21, align 4, !tbaa !5
  store i32 %7, ptr %arrayidx19, align 4, !tbaa !5
  br label %for.inc35

for.inc35:                                        ; preds = %for.body17, %if.then23
  %8 = phi i32 [ %7, %for.body17 ], [ %6, %if.then23 ]
  %exitcond.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup16, label %for.body17, !llvm.loop !13

for.cond.cleanup43:                               ; preds = %for.inc55, %entry, %for.cond10.preheader
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %sz) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %num) #4
  ret i32 0

for.body44:                                       ; preds = %for.body44.lr.ph, %for.inc55
  %indvars.iv41 = phi i64 [ 0, %for.body44.lr.ph ], [ %indvars.iv.next42, %for.inc55 ]
  %cmp46 = icmp eq i64 %indvars.iv41, %5
  br i1 %cmp46, label %if.then47, label %if.else

if.then47:                                        ; preds = %for.body44
  %9 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %call50 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %9)
  br label %for.inc55

if.else:                                          ; preds = %for.body44
  %arrayidx52 = getelementptr inbounds nuw [500 x i32], ptr %sz, i64 0, i64 %indvars.iv41
  %10 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %call53 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %10)
  br label %for.inc55

for.inc55:                                        ; preds = %if.then47, %if.else
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44
  br i1 %exitcond45.not, label %for.cond.cleanup43, label %for.body44, !llvm.loop !14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
