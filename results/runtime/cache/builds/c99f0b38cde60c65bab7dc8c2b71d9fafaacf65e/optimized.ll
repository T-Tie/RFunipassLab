; ModuleID = '<stdin>'
source_filename = "/tmp/tmp4b16r1n6.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %result = alloca [1000 x i32], align 16
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef nonnull align 16 %result) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %k) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %k)
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %index.0 = phi i32 [ 0, %entry ], [ %index.1, %for.inc12 ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc13, %for.inc12 ]
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.cond15.preheader

for.cond15.preheader:                             ; preds = %for.cond
  %sub = add nsw i32 %index.0, -1
  %smax11 = call i32 @llvm.smax.i32(i32 %sub, i32 noundef 0)
  %wide.trip.count12 = zext nneg i32 %smax11 to i64
  br label %for.cond15

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %1 = load i32, ptr %n, align 4
  %smax = call i32 @llvm.smax.i32(i32 %index.0, i32 noundef 0)
  %2 = zext nneg i32 %smax to i64
  br label %for.cond2

for.cond2:                                        ; preds = %for.body4, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %2
  br i1 %exitcond.not, label %for.end.thread, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %arrayidx = getelementptr inbounds nuw [1000 x i32], ptr %result, i64 0, i64 %indvars.iv
  %3 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp5 = icmp eq i32 %3, %1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp5, label %for.inc12, label %for.cond2, !llvm.loop !9

for.end.thread:                                   ; preds = %for.cond2
  %cmp62 = icmp sgt i32 %index.0, -1
  br i1 %cmp62, label %if.then7, label %for.inc12

if.then7:                                         ; preds = %for.end.thread
  %idxprom8 = zext nneg i32 %index.0 to i64
  %arrayidx9 = getelementptr inbounds nuw [1000 x i32], ptr %result, i64 0, i64 %idxprom8
  store i32 %1, ptr %arrayidx9, align 4, !tbaa !5
  %inc10 = add nuw nsw i32 %index.0, 1
  br label %for.inc12

for.inc12:                                        ; preds = %for.body4, %if.then7, %for.end.thread
  %index.1 = phi i32 [ %inc10, %if.then7 ], [ %index.0, %for.end.thread ], [ %index.0, %for.body4 ]
  %inc13 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.cond15:                                       ; preds = %for.cond15.preheader, %for.inc21
  %indvars.iv8 = phi i64 [ 0, %for.cond15.preheader ], [ %indvars.iv.next9, %for.inc21 ]
  %exitcond13.not = icmp eq i64 %indvars.iv8, %wide.trip.count12
  br i1 %exitcond13.not, label %for.end23, label %for.inc21

for.inc21:                                        ; preds = %for.cond15
  %arrayidx19 = getelementptr inbounds nuw [1000 x i32], ptr %result, i64 0, i64 %indvars.iv8
  %4 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %call20 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %4) #6
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  br label %for.cond15, !llvm.loop !13

for.end23:                                        ; preds = %for.cond15
  %idxprom25 = sext i32 %sub to i64
  %arrayidx26 = getelementptr inbounds [1000 x i32], ptr %result, i64 0, i64 %idxprom25
  %5 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %call27 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %5) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %k) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef nonnull %result) #6
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
attributes #5 = { nofree nounwind willreturn }
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
