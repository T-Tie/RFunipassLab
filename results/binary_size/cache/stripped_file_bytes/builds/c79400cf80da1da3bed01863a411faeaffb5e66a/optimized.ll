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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %num) #4
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %sz) #4
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp21 = icmp sgt i32 %0, 0
  br i1 %cmp21, label %for.body, label %for.cond.cleanup54

for.cond3.preheader:                              ; preds = %for.body
  %cmp425 = icmp sgt i32 %1, 1
  br i1 %cmp425, label %for.cond7.preheader, label %for.cond33.preheader

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %num, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %2
  br i1 %cmp, label %for.body, label %for.cond3.preheader, !llvm.loop !9

for.cond7.preheader:                              ; preds = %for.cond3.preheader, %for.cond.cleanup9
  %indvars.iv39.in = phi i32 [ %indvars.iv39, %for.cond.cleanup9 ], [ %1, %for.cond3.preheader ]
  %i2.026 = phi i32 [ %inc30, %for.cond.cleanup9 ], [ 1, %for.cond3.preheader ]
  %indvars.iv39 = add i32 %indvars.iv39.in, -1
  %cmp823 = icmp sgt i32 %1, %i2.026
  br i1 %cmp823, label %for.body10.preheader, label %for.cond.cleanup9

for.body10.preheader:                             ; preds = %for.cond7.preheader
  %wide.trip.count = zext i32 %indvars.iv39 to i64
  %.pre = load i32, ptr %num, align 16, !tbaa !5
  br label %for.body10

for.cond33.preheader:                             ; preds = %for.cond.cleanup9, %for.cond3.preheader
  %cmp3427 = icmp sgt i32 %1, 0
  br i1 %cmp3427, label %for.body36.preheader, label %for.cond.cleanup54

for.body36.preheader:                             ; preds = %for.cond33.preheader
  %wide.trip.count45 = zext nneg i32 %1 to i64
  br label %for.body36

for.cond.cleanup9:                                ; preds = %for.inc26, %for.cond7.preheader
  %inc30 = add nuw nsw i32 %i2.026, 1
  %exitcond41.not = icmp eq i32 %inc30, %1
  br i1 %exitcond41.not, label %for.cond33.preheader, label %for.cond7.preheader, !llvm.loop !12

for.body10:                                       ; preds = %for.body10.preheader, %for.inc26
  %3 = phi i32 [ %.pre, %for.body10.preheader ], [ %5, %for.inc26 ]
  %indvars.iv36 = phi i64 [ 0, %for.body10.preheader ], [ %indvars.iv.next37, %for.inc26 ]
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %arrayidx14 = getelementptr inbounds nuw [500 x i32], ptr %num, i64 0, i64 %indvars.iv.next37
  %4 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %cmp15 = icmp sgt i32 %3, %4
  br i1 %cmp15, label %if.then, label %for.inc26

if.then:                                          ; preds = %for.body10
  %arrayidx12 = getelementptr inbounds nuw [500 x i32], ptr %num, i64 0, i64 %indvars.iv36
  store i32 %4, ptr %arrayidx12, align 4, !tbaa !5
  store i32 %3, ptr %arrayidx14, align 4, !tbaa !5
  br label %for.inc26

for.inc26:                                        ; preds = %for.body10, %if.then
  %5 = phi i32 [ %4, %for.body10 ], [ %3, %if.then ]
  %exitcond.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup9, label %for.body10, !llvm.loop !13

for.cond51.preheader:                             ; preds = %for.inc47
  %sub52 = add i32 %m.1, -1
  %cmp5331 = icmp sgt i32 %m.1, 1
  br i1 %cmp5331, label %for.body55.preheader, label %for.cond.cleanup54

for.body55.preheader:                             ; preds = %for.cond51.preheader
  %wide.trip.count50 = zext nneg i32 %sub52 to i64
  br label %for.body55

for.body36:                                       ; preds = %for.body36.preheader, %for.inc47
  %indvars.iv42 = phi i64 [ 0, %for.body36.preheader ], [ %indvars.iv.next43, %for.inc47 ]
  %m.028 = phi i32 [ 0, %for.body36.preheader ], [ %m.1, %for.inc47 ]
  %arrayidx38 = getelementptr inbounds nuw [500 x i32], ptr %num, i64 0, i64 %indvars.iv42
  %6 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %7 = and i32 %6, -2147483647
  %cmp39 = icmp eq i32 %7, 1
  br i1 %cmp39, label %if.then40, label %for.inc47

if.then40:                                        ; preds = %for.body36
  %idxprom43 = sext i32 %m.028 to i64
  %arrayidx44 = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom43
  store i32 %6, ptr %arrayidx44, align 4, !tbaa !5
  %inc45 = add nsw i32 %m.028, 1
  br label %for.inc47

for.inc47:                                        ; preds = %for.body36, %if.then40
  %m.1 = phi i32 [ %inc45, %if.then40 ], [ %m.028, %for.body36 ]
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  %exitcond46.not = icmp eq i64 %indvars.iv.next43, %wide.trip.count45
  br i1 %exitcond46.not, label %for.cond51.preheader, label %for.body36, !llvm.loop !14

for.cond.cleanup54:                               ; preds = %for.body55, %entry, %for.cond33.preheader, %for.cond51.preheader
  %sub5260 = phi i32 [ %sub52, %for.cond51.preheader ], [ -1, %for.cond33.preheader ], [ -1, %entry ], [ %sub52, %for.body55 ]
  %idxprom63 = sext i32 %sub5260 to i64
  %arrayidx64 = getelementptr inbounds [500 x i32], ptr %sz, i64 0, i64 %idxprom63
  %8 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  %call65 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %8)
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %sz) #4
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %num) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0

for.body55:                                       ; preds = %for.body55.preheader, %for.body55
  %indvars.iv47 = phi i64 [ 0, %for.body55.preheader ], [ %indvars.iv.next48, %for.body55 ]
  %arrayidx57 = getelementptr inbounds nuw [500 x i32], ptr %sz, i64 0, i64 %indvars.iv47
  %9 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  %call58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %9)
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %exitcond51.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count50
  br i1 %exitcond51.not, label %for.cond.cleanup54, label %for.body55, !llvm.loop !15
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
!15 = distinct !{!15, !10, !11}
