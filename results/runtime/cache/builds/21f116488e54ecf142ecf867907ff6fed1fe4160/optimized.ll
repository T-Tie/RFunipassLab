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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %w) #5
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %f) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv, %1
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [30 x i32], ptr %w, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 99999, ptr %w, align 16, !tbaa !5
  store i32 0, ptr %f, align 16, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %2 = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %2 to i64
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc31, %for.end
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %for.inc31 ], [ 1, %for.end ]
  %exitcond = icmp eq i64 %indvars.iv20, %wide.trip.count
  br i1 %exitcond, label %for.cond34, label %for.body6

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [30 x i32], ptr %f, i64 0, i64 %indvars.iv20
  store i32 1, ptr %arrayidx8, align 4, !tbaa !5
  %arrayidx15 = getelementptr inbounds nuw [30 x i32], ptr %w, i64 0, i64 %indvars.iv20
  %3 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  br label %for.cond9.outer

for.cond9.outer:                                  ; preds = %if.then22, %for.body6
  %.ph = phi i32 [ %add, %if.then22 ], [ 1, %for.body6 ]
  %indvars.iv22.ph = phi i64 [ %indvars.iv.next23, %if.then22 ], [ %indvars.iv20, %for.body6 ]
  br label %for.cond9

for.cond9:                                        ; preds = %for.cond9.backedge, %for.cond9.outer
  %indvars.iv22 = phi i64 [ %indvars.iv22.ph, %for.cond9.outer ], [ %indvars.iv.next23, %for.cond9.backedge ]
  %indvars.iv.next23 = add nsw i64 %indvars.iv22, -1
  %cmp10 = icmp sgt i64 %indvars.iv22, 0
  br i1 %cmp10, label %for.body11, label %for.inc31

for.body11:                                       ; preds = %for.cond9
  %arrayidx13 = getelementptr inbounds nuw [30 x i32], ptr %w, i64 0, i64 %indvars.iv.next23
  %4 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %cmp16.not = icmp slt i32 %4, %3
  br i1 %cmp16.not, label %for.cond9.backedge, label %if.then

for.cond9.backedge:                               ; preds = %for.body11, %if.then
  br label %for.cond9, !llvm.loop !12

if.then:                                          ; preds = %for.body11
  %arrayidx18 = getelementptr inbounds nuw [30 x i32], ptr %f, i64 0, i64 %indvars.iv.next23
  %5 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %cmp21.not = icmp slt i32 %5, %.ph
  br i1 %cmp21.not, label %for.cond9.backedge, label %if.then22

if.then22:                                        ; preds = %if.then
  %add = add nsw i32 %5, 1
  store i32 %add, ptr %arrayidx8, align 4, !tbaa !5
  br label %for.cond9.outer, !llvm.loop !12

for.inc31:                                        ; preds = %for.cond9
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  br label %for.cond4, !llvm.loop !13

for.cond34:                                       ; preds = %for.cond4, %for.body36
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.body36 ], [ 1, %for.cond4 ]
  %m.0 = phi i32 [ %spec.select, %for.body36 ], [ 0, %for.cond4 ]
  %exitcond31 = icmp eq i64 %indvars.iv27, %wide.trip.count
  br i1 %exitcond31, label %for.end46, label %for.body36

for.body36:                                       ; preds = %for.cond34
  %arrayidx38 = getelementptr inbounds nuw [30 x i32], ptr %f, i64 0, i64 %indvars.iv27
  %6 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %6, i32 %m.0)
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond34, !llvm.loop !14

for.end46:                                        ; preds = %for.cond34
  %call47 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %m.0)
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %f) #5
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %w) #5
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
