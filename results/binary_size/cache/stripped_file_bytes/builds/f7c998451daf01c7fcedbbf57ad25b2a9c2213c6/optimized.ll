; ModuleID = '<stdin>'
source_filename = "/tmp/tmp0u2h48y9.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %sz = alloca [500 x i32], align 16
  %js = alloca [500 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %sz) #4
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %js) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp29 = icmp sgt i32 %0, 0
  br i1 %cmp29, label %for.body, label %for.end64

for.cond2.preheader:                              ; preds = %for.body
  %cmp331 = icmp sgt i32 %1, 0
  br i1 %cmp331, label %for.body4.preheader, label %for.end64

for.body4.preheader:                              ; preds = %for.cond2.preheader
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %for.body4

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %sz, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %2
  br i1 %cmp, label %for.body, label %for.cond2.preheader, !llvm.loop !9

for.cond16.preheader:                             ; preds = %for.inc13
  %cmp17.not37 = icmp slt i32 %x.1, 1
  br i1 %cmp17.not37, label %for.end64, label %for.cond19.preheader

for.body4:                                        ; preds = %for.body4.preheader, %for.inc13
  %indvars.iv44 = phi i64 [ 0, %for.body4.preheader ], [ %indvars.iv.next45, %for.inc13 ]
  %x.032 = phi i32 [ 0, %for.body4.preheader ], [ %x.1, %for.inc13 ]
  %arrayidx6 = getelementptr inbounds nuw [500 x i32], ptr %sz, i64 0, i64 %indvars.iv44
  %3 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %4 = and i32 %3, -2147483647
  %cmp7 = icmp eq i32 %4, 1
  br i1 %cmp7, label %if.then, label %for.inc13

if.then:                                          ; preds = %for.body4
  %idxprom10 = sext i32 %x.032 to i64
  %arrayidx11 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom10
  store i32 %3, ptr %arrayidx11, align 4, !tbaa !5
  %add12 = add i32 %x.032, 1
  br label %for.inc13

for.inc13:                                        ; preds = %for.body4, %if.then
  %x.1 = phi i32 [ %add12, %if.then ], [ %x.032, %for.body4 ]
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next45, %wide.trip.count
  br i1 %exitcond.not, label %for.cond16.preheader, label %for.body4, !llvm.loop !12

for.cond19.preheader:                             ; preds = %for.cond16.preheader, %for.inc43
  %indvars.iv50.in = phi i32 [ %indvars.iv50, %for.inc43 ], [ %x.1, %for.cond16.preheader ]
  %k.038 = phi i32 [ %add44, %for.inc43 ], [ 1, %for.cond16.preheader ]
  %indvars.iv50 = add i32 %indvars.iv50.in, -1
  %cmp2035 = icmp sgt i32 %x.1, %k.038
  br i1 %cmp2035, label %for.body21.preheader, label %for.inc43

for.body21.preheader:                             ; preds = %for.cond19.preheader
  %wide.trip.count52 = zext i32 %indvars.iv50 to i64
  %.pre = load i32, ptr %js, align 16, !tbaa !5
  br label %for.body21

for.body48.lr.ph:                                 ; preds = %for.inc43
  %sub49 = add nsw i32 %x.1, -1
  %tobool.not = icmp eq i32 %sub49, 0
  %idxprom57 = zext nneg i32 %sub49 to i64
  %arrayidx58 = getelementptr inbounds nuw [500 x i32], ptr %js, i64 0, i64 %idxprom57
  br i1 %tobool.not, label %for.end64, label %for.body48

for.body21:                                       ; preds = %for.body21.preheader, %for.inc40
  %5 = phi i32 [ %.pre, %for.body21.preheader ], [ %7, %for.inc40 ]
  %indvars.iv47 = phi i64 [ 0, %for.body21.preheader ], [ %indvars.iv.next48, %for.inc40 ]
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %arrayidx26 = getelementptr inbounds nuw [500 x i32], ptr %js, i64 0, i64 %indvars.iv.next48
  %6 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %cmp27 = icmp sgt i32 %5, %6
  br i1 %cmp27, label %if.then28, label %for.inc40

if.then28:                                        ; preds = %for.body21
  %arrayidx23 = getelementptr inbounds nuw [500 x i32], ptr %js, i64 0, i64 %indvars.iv47
  store i32 %6, ptr %arrayidx23, align 4, !tbaa !5
  store i32 %5, ptr %arrayidx26, align 4, !tbaa !5
  br label %for.inc40

for.inc40:                                        ; preds = %for.body21, %if.then28
  %7 = phi i32 [ %6, %for.body21 ], [ %5, %if.then28 ]
  %exitcond53.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count52
  br i1 %exitcond53.not, label %for.inc43, label %for.body21, !llvm.loop !13

for.inc43:                                        ; preds = %for.inc40, %for.cond19.preheader
  %add44 = add nuw i32 %k.038, 1
  %exitcond54.not = icmp eq i32 %k.038, %x.1
  br i1 %exitcond54.not, label %for.body48.lr.ph, label %for.cond19.preheader, !llvm.loop !14

for.body48:                                       ; preds = %for.body48.lr.ph, %for.inc62
  %i.340 = phi i32 [ %10, %for.inc62 ], [ 0, %for.body48.lr.ph ]
  %cmp50 = icmp slt i32 %i.340, %sub49
  br i1 %cmp50, label %for.inc62, label %for.inc62.thread

for.inc62.thread:                                 ; preds = %for.body48
  %8 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  %call59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %8)
  br label %for.end64

for.inc62:                                        ; preds = %for.body48
  %idxprom52 = zext nneg i32 %i.340 to i64
  %arrayidx53 = getelementptr inbounds nuw [500 x i32], ptr %js, i64 0, i64 %idxprom52
  %9 = load i32, ptr %arrayidx53, align 4, !tbaa !5
  %call54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %9)
  %10 = add nuw nsw i32 %i.340, 1
  %cmp47 = icmp slt i32 %10, %x.1
  br i1 %cmp47, label %for.body48, label %for.end64, !llvm.loop !15

for.end64:                                        ; preds = %for.inc62, %for.body48.lr.ph, %entry, %for.cond2.preheader, %for.cond16.preheader, %for.inc62.thread
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %js) #4
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %sz) #4
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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
