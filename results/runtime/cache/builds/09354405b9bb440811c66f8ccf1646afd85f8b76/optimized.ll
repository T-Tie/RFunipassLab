; ModuleID = '<stdin>'
source_filename = "/tmp/tmppejwpeq5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %w = alloca [30 x i32], align 16
  %f = alloca [30 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 120, ptr noundef nonnull align 16 %w) #4
  call void @llvm.lifetime.start.p0(i64 noundef 120, ptr noundef nonnull align 16 %f) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv, %1
  br i1 %cmp.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [30 x i32], ptr %w, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 99999, ptr %w, align 16, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %2 = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %2 to i64
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc31, %for.end
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.inc31 ], [ 1, %for.end ]
  %exitcond = icmp eq i64 %indvars.iv21, %wide.trip.count
  br i1 %exitcond, label %for.cond34, label %for.body6

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [30 x i32], ptr %f, i64 0, i64 %indvars.iv21
  store i32 1, ptr %arrayidx8, align 4, !tbaa !5
  %arrayidx15 = getelementptr inbounds nuw [30 x i32], ptr %w, i64 0, i64 %indvars.iv21
  %3 = load i32, ptr %arrayidx15, align 4, !tbaa !5, !invariant.load !12
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc29, %for.body6
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.inc29 ], [ %indvars.iv21, %for.body6 ]
  %indvars.iv.next24 = add nsw i64 %indvars.iv23, -1
  %cmp10 = icmp sgt i64 %indvars.iv23, 0
  br i1 %cmp10, label %for.body11, label %for.inc31

for.body11:                                       ; preds = %for.cond9
  %arrayidx13 = getelementptr inbounds nuw [30 x i32], ptr %w, i64 0, i64 %indvars.iv.next24
  %4 = load i32, ptr %arrayidx13, align 4, !tbaa !5, !invariant.load !12
  %cmp16.not = icmp slt i32 %4, %3
  br i1 %cmp16.not, label %for.inc29, label %if.then

if.then:                                          ; preds = %for.body11
  %arrayidx18 = getelementptr inbounds nuw [30 x i32], ptr %f, i64 0, i64 %indvars.iv.next24
  %5 = load i32, ptr %arrayidx18, align 4, !tbaa !5, !invariant.load !12
  %cmp21 = icmp sgt i32 %5, 0
  br i1 %cmp21, label %if.then22, label %for.inc29

if.then22:                                        ; preds = %if.then
  %add = add nuw nsw i32 %5, 1
  store i32 %add, ptr %arrayidx8, align 4, !tbaa !5
  br label %for.inc29

for.inc29:                                        ; preds = %for.body11, %if.then22, %if.then
  br label %for.cond9, !llvm.loop !13

for.inc31:                                        ; preds = %for.cond9
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond4, !llvm.loop !14

for.cond34:                                       ; preds = %for.cond4, %for.body36
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for.body36 ], [ 1, %for.cond4 ]
  %m.0 = phi i32 [ %spec.select, %for.body36 ], [ 0, %for.cond4 ]
  %exitcond32 = icmp eq i64 %indvars.iv28, %wide.trip.count
  br i1 %exitcond32, label %for.end46, label %for.body36

for.body36:                                       ; preds = %for.cond34
  %arrayidx38 = getelementptr inbounds nuw [30 x i32], ptr %f, i64 0, i64 %indvars.iv28
  %6 = load i32, ptr %arrayidx38, align 4, !tbaa !5, !invariant.load !12
  %spec.select = call i32 @llvm.smax.i32(i32 %6, i32 %m.0)
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond34, !llvm.loop !15

for.end46:                                        ; preds = %for.cond34
  %call47 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %m.0)
  call void @llvm.lifetime.end.p0(i64 noundef 120, ptr noundef nonnull %f) #5
  call void @llvm.lifetime.end.p0(i64 noundef 120, ptr noundef nonnull %w) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind }
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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
