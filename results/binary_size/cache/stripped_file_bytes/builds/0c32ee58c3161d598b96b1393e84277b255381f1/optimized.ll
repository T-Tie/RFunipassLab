; ModuleID = '<stdin>'
source_filename = "/tmp/tmpkca5ufs_.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %N = alloca i32, align 4
  %a = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N) #5
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %a) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %N)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond
  %smax36 = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %2 = add nuw i32 %smax36, 1
  br label %for.cond3

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc27
  %indvars.iv33.in = phi i32 [ %0, %for.cond3.preheader ], [ %indvars.iv33, %for.inc27 ]
  %k2.0 = phi i32 [ 1, %for.cond3.preheader ], [ %inc28, %for.inc27 ]
  %indvars.iv33 = add i32 %indvars.iv33.in, -1
  %exitcond37 = icmp eq i32 %k2.0, %2
  br i1 %exitcond37, label %for.cond30.preheader, label %for.cond6.preheader

for.cond30.preheader:                             ; preds = %for.cond3
  %3 = zext nneg i32 %smax36 to i64
  br label %for.cond30

for.cond6.preheader:                              ; preds = %for.cond3
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv33, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond6

for.cond6:                                        ; preds = %for.cond6.backedge, %for.cond6.preheader
  %indvars.iv29 = phi i64 [ 0, %for.cond6.preheader ], [ %indvars.iv.next30, %for.cond6.backedge ]
  %exitcond.not = icmp eq i64 %indvars.iv29, %wide.trip.count
  br i1 %exitcond.not, label %for.inc27, label %for.body8

for.body8:                                        ; preds = %for.cond6
  %arrayidx10 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv29
  %4 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %arrayidx12 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv.next30
  %5 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp13 = icmp sgt i32 %4, %5
  br i1 %cmp13, label %if.then, label %for.cond6.backedge

for.cond6.backedge:                               ; preds = %for.body8, %if.then
  br label %for.cond6, !llvm.loop !12

if.then:                                          ; preds = %for.body8
  store i32 %4, ptr %arrayidx12, align 4, !tbaa !5
  store i32 %5, ptr %arrayidx10, align 4, !tbaa !5
  br label %for.cond6.backedge

for.inc27:                                        ; preds = %for.cond6
  %inc28 = add nuw i32 %k2.0, 1
  br label %for.cond3, !llvm.loop !13

for.cond30:                                       ; preds = %for.cond30.preheader, %for.inc41
  %indvars.iv38 = phi i64 [ 0, %for.cond30.preheader ], [ %indvars.iv.next39, %for.inc41 ]
  %exitcond42.not = icmp eq i64 %indvars.iv38, %3
  br i1 %exitcond42.not, label %for.cond45.preheader, label %for.body32

for.body32:                                       ; preds = %for.cond30
  %arrayidx34 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv38
  %6 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  %7 = and i32 %6, -2147483647
  %cmp35 = icmp eq i32 %7, 1
  br i1 %cmp35, label %if.then36, label %for.inc41

if.then36:                                        ; preds = %for.body32
  %call39 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %6)
  %.pre = and i64 %indvars.iv38, 4294967295
  br label %for.cond45.preheader

for.cond45.preheader:                             ; preds = %for.cond30, %if.then36
  %indvars.iv43.ph = phi i64 [ %.pre, %if.then36 ], [ %3, %for.cond30 ]
  br label %for.cond45

for.inc41:                                        ; preds = %for.body32
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond30, !llvm.loop !14

for.cond45:                                       ; preds = %for.cond45.backedge, %for.cond45.preheader
  %indvars.iv43 = phi i64 [ %indvars.iv43.ph, %for.cond45.preheader ], [ %indvars.iv.next44, %for.cond45.backedge ]
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  %8 = load i32, ptr %N, align 4, !tbaa !5
  %9 = sext i32 %8 to i64
  %cmp46 = icmp slt i64 %indvars.iv.next44, %9
  br i1 %cmp46, label %for.body47, label %for.end59

for.body47:                                       ; preds = %for.cond45
  %arrayidx49 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv.next44
  %10 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %11 = and i32 %10, -2147483647
  %cmp51 = icmp eq i32 %11, 1
  br i1 %cmp51, label %if.then52, label %for.cond45.backedge

for.cond45.backedge:                              ; preds = %for.body47, %if.then52
  br label %for.cond45, !llvm.loop !15

if.then52:                                        ; preds = %for.body47
  %call55 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %10)
  br label %for.cond45.backedge

for.end59:                                        ; preds = %for.cond45
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N) #5
  ret i32 0
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
