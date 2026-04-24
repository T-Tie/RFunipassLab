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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %N)
  call void @llvm.lifetime.start.p0(i64 2004, ptr nonnull %jishu) #5
  call void @llvm.lifetime.start.p0(i64 2004, ptr nonnull %sz) #5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %j.0 = phi i32 [ %j.1, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %for.cond
  %smax32 = call i32 @llvm.smax.i32(i32 %j.0, i32 0)
  br label %for.cond12

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [501 x i32], ptr %sz, i64 0, i64 %indvars.iv
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %3 = and i32 %2, -2147483647
  %cmp5 = icmp eq i32 %3, 1
  br i1 %cmp5, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %idxprom8 = sext i32 %j.0 to i64
  %arrayidx9 = getelementptr inbounds [501 x i32], ptr %jishu, i64 0, i64 %idxprom8
  store i32 %2, ptr %arrayidx9, align 4, !tbaa !5
  %inc = add nsw i32 %j.0, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %j.1 = phi i32 [ %inc, %if.then ], [ %j.0, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond12:                                       ; preds = %for.cond12.preheader, %for.cond.cleanup19
  %indvars.iv29 = phi i32 [ %j.0, %for.cond12.preheader ], [ %indvars.iv.next30, %for.cond.cleanup19 ]
  %i11.0 = phi i32 [ 0, %for.cond12.preheader ], [ %inc42, %for.cond.cleanup19 ]
  %exitcond33.not = icmp eq i32 %i11.0, %smax32
  br i1 %exitcond33.not, label %for.cond45.preheader, label %for.cond17.preheader

for.cond17.preheader:                             ; preds = %for.cond12
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv29, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond17

for.cond45.preheader:                             ; preds = %for.cond12
  %sub49 = add nsw i32 %j.0, -1
  %4 = zext i32 %sub49 to i64
  %wide.trip.count37 = zext nneg i32 %smax32 to i64
  %arrayidx56 = getelementptr inbounds nuw [501 x i32], ptr %jishu, i64 0, i64 %4
  br label %for.cond45

for.cond17:                                       ; preds = %for.cond17.backedge, %for.cond17.preheader
  %indvars.iv25 = phi i64 [ 0, %for.cond17.preheader ], [ %indvars.iv.next26, %for.cond17.backedge ]
  %exitcond.not = icmp eq i64 %indvars.iv25, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup19, label %for.body20

for.cond.cleanup19:                               ; preds = %for.cond17
  %inc42 = add nuw i32 %i11.0, 1
  %indvars.iv.next30 = add i32 %indvars.iv29, -1
  br label %for.cond12, !llvm.loop !12

for.body20:                                       ; preds = %for.cond17
  %arrayidx22 = getelementptr inbounds nuw [501 x i32], ptr %jishu, i64 0, i64 %indvars.iv25
  %5 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %arrayidx24 = getelementptr inbounds nuw [501 x i32], ptr %jishu, i64 0, i64 %indvars.iv.next26
  %6 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %cmp25 = icmp sgt i32 %5, %6
  br i1 %cmp25, label %if.then26, label %for.cond17.backedge

for.cond17.backedge:                              ; preds = %for.body20, %if.then26
  br label %for.cond17, !llvm.loop !13

if.then26:                                        ; preds = %for.body20
  store i32 %6, ptr %arrayidx22, align 4, !tbaa !5
  store i32 %5, ptr %arrayidx24, align 4, !tbaa !5
  br label %for.cond17.backedge

for.cond45:                                       ; preds = %for.cond45.preheader, %for.inc59
  %indvars.iv34 = phi i64 [ 0, %for.cond45.preheader ], [ %indvars.iv.next35, %for.inc59 ]
  %exitcond38.not = icmp eq i64 %indvars.iv34, %wide.trip.count37
  br i1 %exitcond38.not, label %for.cond.cleanup47, label %for.body48

for.cond.cleanup47:                               ; preds = %for.cond45
  call void @llvm.lifetime.end.p0(i64 2004, ptr nonnull %sz) #5
  call void @llvm.lifetime.end.p0(i64 2004, ptr nonnull %jishu) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N) #5
  ret i32 0

for.body48:                                       ; preds = %for.cond45
  %cmp50.not = icmp eq i64 %indvars.iv34, %4
  br i1 %cmp50.not, label %if.else, label %if.then51

if.then51:                                        ; preds = %for.body48
  %arrayidx53 = getelementptr inbounds nuw [501 x i32], ptr %jishu, i64 0, i64 %indvars.iv34
  %7 = load i32, ptr %arrayidx53, align 4, !tbaa !5
  %call54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %7)
  br label %for.inc59

if.else:                                          ; preds = %for.body48
  %8 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %call57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %8)
  br label %for.inc59

for.inc59:                                        ; preds = %if.then51, %if.else
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %for.cond45, !llvm.loop !14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

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
