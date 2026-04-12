; ModuleID = '<stdin>'
source_filename = "/tmp/tmpgqt6nisn.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d+%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %m, ptr noundef nonnull %n)
  %0 = load i32, ptr %m, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %3 = zext i32 %2 to i64
  %4 = call ptr @llvm.stacksave.p0()
  %5 = mul nuw i64 %3, %1
  %vla = alloca i32, i64 %5, align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.inc7 ], [ 0, %entry ]
  %6 = load i32, ptr %m, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp = icmp slt i64 %indvars.iv24, %7
  br i1 %cmp, label %for.cond1.preheader, label %for.cond10

for.cond1.preheader:                              ; preds = %for.cond
  %8 = mul nuw nsw i64 %indvars.iv24, %3
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %8
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %10 = sext i32 %9 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %10
  br i1 %cmp2, label %for.body3, label %for.inc7

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw i32, ptr %arrayidx, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond, %for.inc50
  %.pre38 = phi i32 [ %.pre, %for.inc50 ], [ %6, %for.cond ]
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %for.inc50 ], [ 0, %for.cond ]
  %count.0 = phi i32 [ %count.1, %for.inc50 ], [ 0, %for.cond ]
  %x.0 = phi i32 [ %x.1, %for.inc50 ], [ 0, %for.cond ]
  %11 = sext i32 %.pre38 to i64
  %cmp11 = icmp slt i64 %indvars.iv35, %11
  br i1 %cmp11, label %for.cond13.preheader, label %for.end52

for.cond13.preheader:                             ; preds = %for.cond10
  %12 = load i32, ptr %n, align 4, !tbaa !5
  %13 = mul nuw nsw i64 %indvars.iv35, %3
  %arrayidx17 = getelementptr inbounds nuw i32, ptr %vla, i64 %13
  %smax = call i32 @llvm.smax.i32(i32 %12, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.preheader, %for.body15
  %indvars.iv27 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next28, %for.body15 ]
  %b.0 = phi i32 [ 0, %for.cond13.preheader ], [ %spec.select, %for.body15 ]
  %exitcond.not = icmp eq i64 %indvars.iv27, %wide.trip.count
  br i1 %exitcond.not, label %for.cond27.preheader, label %for.body15

for.cond27.preheader:                             ; preds = %for.cond13
  %idxprom32 = zext nneg i32 %b.0 to i64
  %arrayidx33 = getelementptr inbounds nuw i32, ptr %arrayidx17, i64 %idxprom32
  %invariant.gep = getelementptr inbounds nuw i32, ptr %vla, i64 %idxprom32
  %wide.trip.count33 = zext i32 %.pre38 to i64
  br label %for.cond27

for.body15:                                       ; preds = %for.cond13
  %arrayidx19 = getelementptr inbounds nuw i32, ptr %arrayidx17, i64 %indvars.iv27
  %14 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %15 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %cmp23 = icmp sgt i32 %14, %15
  %16 = trunc nuw nsw i64 %indvars.iv27 to i32
  %spec.select = select i1 %cmp23, i32 %16, i32 %b.0
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond13, !llvm.loop !13

for.cond27:                                       ; preds = %for.cond27.preheader, %for.body29
  %indvars.iv30 = phi i64 [ 0, %for.cond27.preheader ], [ %indvars.iv.next31, %for.body29 ]
  %count.1 = phi i32 [ %count.0, %for.cond27.preheader ], [ %spec.select22, %for.body29 ]
  %exitcond34.not = icmp eq i64 %indvars.iv30, %wide.trip.count33
  br i1 %exitcond34.not, label %for.end44, label %for.body29

for.body29:                                       ; preds = %for.cond27
  %17 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %18 = mul nuw nsw i64 %indvars.iv30, %3
  %gep = getelementptr inbounds nuw i32, ptr %invariant.gep, i64 %18
  %19 = load i32, ptr %gep, align 4, !tbaa !5
  %cmp38 = icmp sgt i32 %17, %19
  %inc40 = zext i1 %cmp38 to i32
  %spec.select22 = add nsw i32 %count.1, %inc40
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond27, !llvm.loop !14

for.end44:                                        ; preds = %for.cond27
  %cmp45 = icmp eq i32 %count.1, 0
  br i1 %cmp45, label %if.then46, label %for.inc50

if.then46:                                        ; preds = %for.end44
  %20 = trunc nuw nsw i64 %indvars.iv35 to i32
  %call47 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %20, i32 noundef %b.0)
  %inc48 = add nsw i32 %x.0, 1
  %.pre.pre = load i32, ptr %m, align 4, !tbaa !5
  br label %for.inc50

for.inc50:                                        ; preds = %for.end44, %if.then46
  %.pre = phi i32 [ %.pre.pre, %if.then46 ], [ %.pre38, %for.end44 ]
  %x.1 = phi i32 [ %inc48, %if.then46 ], [ %x.0, %for.end44 ]
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond10, !llvm.loop !15

for.end52:                                        ; preds = %for.cond10
  %cmp53 = icmp eq i32 %x.0, 0
  br i1 %cmp53, label %if.then54, label %if.end56

if.then54:                                        ; preds = %for.end52
  %call55 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %for.end52
  call void @llvm.stackrestore.p0(ptr %4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
