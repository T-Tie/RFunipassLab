; ModuleID = '<stdin>'
source_filename = "/tmp/tmp0cks_yus.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %num = alloca [500 x i32], align 16
  %sz = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %num) #5
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %sz) #5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond
  %smax29 = call i32 @llvm.smax.i32(i32 %0, i32 1)
  br label %for.cond3

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %num, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond3:                                        ; preds = %for.cond3.preheader, %for.cond.cleanup9
  %indvars.iv26.in = phi i32 [ %0, %for.cond3.preheader ], [ %indvars.iv26, %for.cond.cleanup9 ]
  %i2.0 = phi i32 [ 1, %for.cond3.preheader ], [ %inc30, %for.cond.cleanup9 ]
  %indvars.iv26 = add i32 %indvars.iv26.in, -1
  %exitcond30.not = icmp eq i32 %i2.0, %smax29
  br i1 %exitcond30.not, label %for.cond33.preheader, label %for.cond7.preheader

for.cond33.preheader:                             ; preds = %for.cond3
  %smax35 = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count36 = zext nneg i32 %smax35 to i64
  br label %for.cond33

for.cond7.preheader:                              ; preds = %for.cond3
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv26, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond7

for.cond7:                                        ; preds = %for.cond7.backedge, %for.cond7.preheader
  %indvars.iv22 = phi i64 [ 0, %for.cond7.preheader ], [ %indvars.iv.next23, %for.cond7.backedge ]
  %exitcond.not = icmp eq i64 %indvars.iv22, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup9, label %for.body10

for.cond.cleanup9:                                ; preds = %for.cond7
  %inc30 = add nuw i32 %i2.0, 1
  br label %for.cond3, !llvm.loop !12

for.body10:                                       ; preds = %for.cond7
  %arrayidx12 = getelementptr inbounds nuw [500 x i32], ptr %num, i64 0, i64 %indvars.iv22
  %2 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %arrayidx14 = getelementptr inbounds nuw [500 x i32], ptr %num, i64 0, i64 %indvars.iv.next23
  %3 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %cmp15 = icmp sgt i32 %2, %3
  br i1 %cmp15, label %if.then, label %for.cond7.backedge

for.cond7.backedge:                               ; preds = %for.body10, %if.then
  br label %for.cond7, !llvm.loop !13

if.then:                                          ; preds = %for.body10
  store i32 %3, ptr %arrayidx12, align 4, !tbaa !5
  store i32 %2, ptr %arrayidx14, align 4, !tbaa !5
  br label %for.cond7.backedge

for.cond33:                                       ; preds = %for.cond33.preheader, %for.inc47
  %indvars.iv31 = phi i64 [ 0, %for.cond33.preheader ], [ %indvars.iv.next32, %for.inc47 ]
  %m.0 = phi i32 [ 0, %for.cond33.preheader ], [ %m.1, %for.inc47 ]
  %exitcond37.not = icmp eq i64 %indvars.iv31, %wide.trip.count36
  br i1 %exitcond37.not, label %for.cond51.preheader, label %for.body36

for.cond51.preheader:                             ; preds = %for.cond33
  %sub52 = add nsw i32 %m.0, -1
  %smax41 = call i32 @llvm.smax.i32(i32 %sub52, i32 0)
  %wide.trip.count42 = zext nneg i32 %smax41 to i64
  br label %for.cond51

for.body36:                                       ; preds = %for.cond33
  %arrayidx38 = getelementptr inbounds nuw [500 x i32], ptr %num, i64 0, i64 %indvars.iv31
  %4 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %5 = and i32 %4, -2147483647
  %cmp39 = icmp eq i32 %5, 1
  br i1 %cmp39, label %if.then40, label %for.inc47

if.then40:                                        ; preds = %for.body36
  %idxprom43 = sext i32 %m.0 to i64
  %arrayidx44 = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom43
  store i32 %4, ptr %arrayidx44, align 4, !tbaa !5
  %inc45 = add nsw i32 %m.0, 1
  br label %for.inc47

for.inc47:                                        ; preds = %for.body36, %if.then40
  %m.1 = phi i32 [ %inc45, %if.then40 ], [ %m.0, %for.body36 ]
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  br label %for.cond33, !llvm.loop !14

for.cond51:                                       ; preds = %for.cond51.preheader, %for.body55
  %indvars.iv38 = phi i64 [ 0, %for.cond51.preheader ], [ %indvars.iv.next39, %for.body55 ]
  %exitcond43.not = icmp eq i64 %indvars.iv38, %wide.trip.count42
  br i1 %exitcond43.not, label %for.cond.cleanup54, label %for.body55

for.cond.cleanup54:                               ; preds = %for.cond51
  %idxprom63 = sext i32 %sub52 to i64
  %arrayidx64 = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom63
  %6 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  %call65 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %6)
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %sz) #5
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %num) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0

for.body55:                                       ; preds = %for.cond51
  %arrayidx57 = getelementptr inbounds nuw [500 x i32], ptr %sz, i64 0, i64 %indvars.iv38
  %7 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  %call58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %7)
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond51, !llvm.loop !15
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
!15 = distinct !{!15, !10, !11}
