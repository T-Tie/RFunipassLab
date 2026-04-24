; ModuleID = '<stdin>'
source_filename = "/tmp/tmpxmkkh1lp.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %1, align 16
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp = icmp slt i64 %indvars.iv, %4
  br i1 %cmp, label %for.body, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax31 = call i32 @llvm.smax.i32(i32 %3, i32 0)
  %5 = add nuw i32 %smax31, 1
  br label %for.cond2

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc26
  %indvars.iv28.in = phi i32 [ %3, %for.cond2.preheader ], [ %indvars.iv28, %for.inc26 ]
  %k.0 = phi i32 [ 1, %for.cond2.preheader ], [ %inc27, %for.inc26 ]
  %indvars.iv28 = add i32 %indvars.iv28.in, -1
  %exitcond32 = icmp eq i32 %k.0, %5
  br i1 %exitcond32, label %for.cond29.preheader, label %for.cond5.preheader

for.cond29.preheader:                             ; preds = %for.cond2
  %wide.trip.count36 = zext nneg i32 %smax31 to i64
  br label %for.cond29

for.cond5.preheader:                              ; preds = %for.cond2
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv28, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond5

for.cond5:                                        ; preds = %for.cond5.backedge, %for.cond5.preheader
  %indvars.iv24 = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next25, %for.cond5.backedge ]
  %exitcond.not = icmp eq i64 %indvars.iv24, %wide.trip.count
  br i1 %exitcond.not, label %for.inc26, label %for.body7

for.body7:                                        ; preds = %for.cond5
  %arrayidx9 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv24
  %6 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  %arrayidx11 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv.next25
  %7 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp12 = icmp sgt i32 %6, %7
  br i1 %cmp12, label %if.then, label %for.cond5.backedge

for.cond5.backedge:                               ; preds = %for.body7, %if.then
  br label %for.cond5, !llvm.loop !12

if.then:                                          ; preds = %for.body7
  store i32 %6, ptr %arrayidx11, align 4, !tbaa !5
  store i32 %7, ptr %arrayidx9, align 4, !tbaa !5
  br label %for.cond5.backedge

for.inc26:                                        ; preds = %for.cond5
  %inc27 = add nuw i32 %k.0, 1
  br label %for.cond2, !llvm.loop !13

for.cond29:                                       ; preds = %for.cond29.preheader, %for.body31
  %indvars.iv33 = phi i64 [ 0, %for.cond29.preheader ], [ %indvars.iv.next34, %for.body31 ]
  %d.0 = phi i32 [ 0, %for.cond29.preheader ], [ %spec.select, %for.body31 ]
  %exitcond37.not = icmp eq i64 %indvars.iv33, %wide.trip.count36
  br i1 %exitcond37.not, label %for.cond40.preheader, label %for.body31

for.cond40.preheader:                             ; preds = %for.cond29
  %wide.trip.count42 = zext i32 %d.0 to i64
  br label %for.cond40

for.body31:                                       ; preds = %for.cond29
  %arrayidx33 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv33
  %8 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %9 = and i32 %8, -2147483647
  %cmp34 = icmp eq i32 %9, 1
  %10 = trunc nuw nsw i64 %indvars.iv33 to i32
  %spec.select = select i1 %cmp34, i32 %10, i32 %d.0
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond29, !llvm.loop !14

for.cond40:                                       ; preds = %for.cond40.preheader, %for.inc52
  %indvars.iv38 = phi i64 [ 0, %for.cond40.preheader ], [ %indvars.iv.next39, %for.inc52 ]
  %exitcond43.not = icmp eq i64 %indvars.iv38, %wide.trip.count42
  br i1 %exitcond43.not, label %for.end54, label %for.body42

for.body42:                                       ; preds = %for.cond40
  %arrayidx44 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv38
  %11 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %12 = and i32 %11, -2147483647
  %cmp46 = icmp eq i32 %12, 1
  br i1 %cmp46, label %if.then47, label %for.inc52

if.then47:                                        ; preds = %for.body42
  %call50 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %11)
  br label %for.inc52

for.inc52:                                        ; preds = %for.body42, %if.then47
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond40, !llvm.loop !15

for.end54:                                        ; preds = %for.cond40
  %arrayidx56 = getelementptr inbounds nuw i32, ptr %vla, i64 %wide.trip.count42
  %13 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %call57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %13)
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
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
