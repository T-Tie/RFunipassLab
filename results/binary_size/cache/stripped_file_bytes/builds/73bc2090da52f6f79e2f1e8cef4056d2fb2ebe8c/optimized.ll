; ModuleID = '<stdin>'
source_filename = "/tmp/tmp5vmf_pki.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %N = alloca i32, align 4
  %jishu = alloca [501 x i32], align 16
  %sz = alloca [501 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %N)
  call void @llvm.lifetime.start.p0(i64 2004, ptr nonnull %jishu) #4
  call void @llvm.lifetime.start.p0(i64 2004, ptr nonnull %sz) #4
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %cmp24 = icmp sgt i32 %0, 0
  br i1 %cmp24, label %for.body, label %for.cond.cleanup47

for.cond12.preheader:                             ; preds = %for.inc
  %cmp1329 = icmp sgt i32 %j.1, 0
  br i1 %cmp1329, label %for.cond17.preheader, label %for.cond.cleanup47

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %j.025 = phi i32 [ %j.1, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [501 x i32], ptr %sz, i64 0, i64 %indvars.iv
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %2 = and i32 %1, -2147483647
  %cmp5 = icmp eq i32 %2, 1
  br i1 %cmp5, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %idxprom8 = sext i32 %j.025 to i64
  %arrayidx9 = getelementptr inbounds [501 x i32], ptr %jishu, i64 0, i64 %idxprom8
  store i32 %1, ptr %arrayidx9, align 4, !tbaa !5
  %inc = add nsw i32 %j.025, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %j.1 = phi i32 [ %inc, %if.then ], [ %j.025, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %3 = load i32, ptr %N, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %4
  br i1 %cmp, label %for.body, label %for.cond12.preheader, !llvm.loop !9

for.cond17.preheader:                             ; preds = %for.cond12.preheader, %for.cond.cleanup19
  %indvars.iv37 = phi i32 [ %indvars.iv.next38, %for.cond.cleanup19 ], [ %j.1, %for.cond12.preheader ]
  %i11.030 = phi i32 [ %inc42, %for.cond.cleanup19 ], [ 0, %for.cond12.preheader ]
  %cmp1827 = icmp sgt i32 %j.1, %i11.030
  br i1 %cmp1827, label %for.body20.preheader, label %for.cond.cleanup19

for.body20.preheader:                             ; preds = %for.cond17.preheader
  %wide.trip.count = zext i32 %indvars.iv37 to i64
  %.pre = load i32, ptr %jishu, align 16, !tbaa !5
  br label %for.body20

for.body48.lr.ph:                                 ; preds = %for.cond.cleanup19
  %sub49 = add nsw i32 %j.1, -1
  %5 = zext nneg i32 %sub49 to i64
  %wide.trip.count43 = zext nneg i32 %j.1 to i64
  %arrayidx56 = getelementptr inbounds nuw [501 x i32], ptr %jishu, i64 0, i64 %5
  br label %for.body48

for.cond.cleanup19:                               ; preds = %for.inc38, %for.cond17.preheader
  %inc42 = add nuw nsw i32 %i11.030, 1
  %indvars.iv.next38 = add i32 %indvars.iv37, -1
  %exitcond39.not = icmp eq i32 %inc42, %j.1
  br i1 %exitcond39.not, label %for.body48.lr.ph, label %for.cond17.preheader, !llvm.loop !12

for.body20:                                       ; preds = %for.body20.preheader, %for.inc38
  %6 = phi i32 [ %.pre, %for.body20.preheader ], [ %8, %for.inc38 ]
  %indvars.iv34 = phi i64 [ 0, %for.body20.preheader ], [ %indvars.iv.next35, %for.inc38 ]
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %arrayidx24 = getelementptr inbounds nuw [501 x i32], ptr %jishu, i64 0, i64 %indvars.iv.next35
  %7 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %cmp25 = icmp sgt i32 %6, %7
  br i1 %cmp25, label %if.then26, label %for.inc38

if.then26:                                        ; preds = %for.body20
  %arrayidx22 = getelementptr inbounds nuw [501 x i32], ptr %jishu, i64 0, i64 %indvars.iv34
  store i32 %7, ptr %arrayidx22, align 4, !tbaa !5
  store i32 %6, ptr %arrayidx24, align 4, !tbaa !5
  br label %for.inc38

for.inc38:                                        ; preds = %for.body20, %if.then26
  %8 = phi i32 [ %7, %for.body20 ], [ %6, %if.then26 ]
  %exitcond.not = icmp eq i64 %indvars.iv.next35, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup19, label %for.body20, !llvm.loop !13

for.cond.cleanup47:                               ; preds = %for.inc59, %entry, %for.cond12.preheader
  call void @llvm.lifetime.end.p0(i64 2004, ptr nonnull %sz) #4
  call void @llvm.lifetime.end.p0(i64 2004, ptr nonnull %jishu) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N) #4
  ret i32 0

for.body48:                                       ; preds = %for.body48.lr.ph, %for.inc59
  %indvars.iv40 = phi i64 [ 0, %for.body48.lr.ph ], [ %indvars.iv.next41, %for.inc59 ]
  %cmp50.not = icmp eq i64 %indvars.iv40, %5
  br i1 %cmp50.not, label %if.else, label %if.then51

if.then51:                                        ; preds = %for.body48
  %arrayidx53 = getelementptr inbounds nuw [501 x i32], ptr %jishu, i64 0, i64 %indvars.iv40
  %9 = load i32, ptr %arrayidx53, align 4, !tbaa !5
  %call54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %9)
  br label %for.inc59

if.else:                                          ; preds = %for.body48
  %10 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %call57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %10)
  br label %for.inc59

for.inc59:                                        ; preds = %if.then51, %if.else
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %for.cond.cleanup47, label %for.body48, !llvm.loop !14
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
