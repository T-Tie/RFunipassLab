; ModuleID = '<stdin>'
source_filename = "/tmp/tmpgvijkr2e.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [300 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %a) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax35 = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count36 = zext nneg i32 %smax35 to i64
  br label %for.cond2

for.body:                                         ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %add.ptr)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc27
  %indvars.iv31 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next32, %for.inc27 ]
  %indvars.iv29 = phi i32 [ %0, %for.cond2.preheader ], [ %indvars.iv.next30, %for.inc27 ]
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv29, i32 1)
  %exitcond37.not = icmp eq i64 %indvars.iv31, %wide.trip.count36
  br i1 %exitcond37.not, label %for.end29, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %add.ptr6 = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv31
  %2 = load i32, ptr %add.ptr6, align 4, !tbaa !5
  %cmp7.not = icmp eq i32 %2, 797
  br i1 %cmp7.not, label %for.inc27, label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.body4
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond8

for.cond8:                                        ; preds = %for.cond8.preheader, %for.inc23
  %indvars.iv25 = phi i64 [ 1, %for.cond8.preheader ], [ %indvars.iv.next26, %for.inc23 ]
  %exitcond.not = icmp eq i64 %indvars.iv25, %wide.trip.count
  br i1 %exitcond.not, label %for.inc27, label %for.body10

for.body10:                                       ; preds = %for.cond8
  %add.ptr16 = getelementptr inbounds nuw i32, ptr %add.ptr6, i64 %indvars.iv25
  %3 = load i32, ptr %add.ptr16, align 4, !tbaa !5
  %cmp17 = icmp eq i32 %2, %3
  br i1 %cmp17, label %if.then18, label %for.inc23

if.then18:                                        ; preds = %for.body10
  store i32 797, ptr %add.ptr16, align 4, !tbaa !5
  br label %for.inc23

for.inc23:                                        ; preds = %for.body10, %if.then18
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond8, !llvm.loop !12

for.inc27:                                        ; preds = %for.cond8, %for.body4
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %indvars.iv.next30 = add i32 %indvars.iv29, -1
  br label %for.cond2, !llvm.loop !13

for.end29:                                        ; preds = %for.cond2
  %4 = load i32, ptr %a, align 16, !tbaa !5
  %call30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %4)
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc42, %for.end29
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.inc42 ], [ 1, %for.end29 ]
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %cmp32 = icmp slt i64 %indvars.iv38, %6
  br i1 %cmp32, label %for.body33, label %for.end44

for.body33:                                       ; preds = %for.cond31
  %add.ptr35 = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv38
  %7 = load i32, ptr %add.ptr35, align 4, !tbaa !5
  %cmp36.not = icmp eq i32 %7, 797
  br i1 %cmp36.not, label %for.inc42, label %if.then37

if.then37:                                        ; preds = %for.body33
  %call40 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %7)
  br label %for.inc42

for.inc42:                                        ; preds = %for.body33, %if.then37
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond31, !llvm.loop !14

for.end44:                                        ; preds = %for.cond31
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
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
