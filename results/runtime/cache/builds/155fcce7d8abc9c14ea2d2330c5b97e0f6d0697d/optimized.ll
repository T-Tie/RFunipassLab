; ModuleID = '<stdin>'
source_filename = "/tmp/tmpopaxk770.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %sz = alloca [1000 x i32], align 16
  %a = alloca [1000 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef nonnull align 16 %sz) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef nonnull align 16 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond
  %smax38 = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count39 = zext nneg i32 %smax38 to i64
  br label %for.cond3

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x i32], ptr %sz, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond3:                                        ; preds = %for.cond3.preheader, %for.cond.cleanup17
  %indvars.iv34 = phi i64 [ 0, %for.cond3.preheader ], [ %indvars.iv.next35, %for.cond.cleanup17 ]
  %j.0 = phi i32 [ 0, %for.cond3.preheader ], [ %j.1, %for.cond.cleanup17 ]
  %exitcond40.not = icmp eq i64 %indvars.iv34, %wide.trip.count39
  br i1 %exitcond40.not, label %for.cond52.preheader, label %for.body6

for.cond52.preheader:                             ; preds = %for.cond3
  %sub56 = add nsw i32 %j.0, -1
  %2 = sext i32 %sub56 to i64
  %smax45 = call i32 @llvm.smax.i32(i32 %j.0, i32 noundef 0)
  %wide.trip.count46 = zext nneg i32 %smax45 to i64
  br label %for.cond52

for.body6:                                        ; preds = %for.cond3
  %arrayidx8 = getelementptr inbounds nuw [1000 x i32], ptr %sz, i64 0, i64 %indvars.iv34
  %3 = load i32, ptr %arrayidx8, align 4, !tbaa !5, !invariant.load !12
  %4 = and i32 %3, -2147483647
  %cmp9 = icmp eq i32 %4, 1
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body6
  %idxprom12 = sext i32 %j.0 to i64
  %arrayidx13 = getelementptr inbounds [1000 x i32], ptr %a, i64 0, i64 %idxprom12
  store i32 %3, ptr %arrayidx13, align 4, !tbaa !5
  %inc14 = add nsw i32 %j.0, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body6
  %j.1 = phi i32 [ %inc14, %if.then ], [ %j.0, %for.body6 ]
  %smax32 = call i32 @llvm.smax.i32(i32 %j.1, i32 noundef 0)
  br label %for.cond15

for.cond15:                                       ; preds = %for.cond.cleanup23, %if.end
  %indvars.iv30.in = phi i32 [ %indvars.iv30, %for.cond.cleanup23 ], [ %j.1, %if.end ]
  %p.0 = phi i32 [ %inc46, %for.cond.cleanup23 ], [ 0, %if.end ]
  %indvars.iv30 = add i32 %indvars.iv30.in, -1
  %exitcond33.not = icmp eq i32 %p.0, %smax32
  br i1 %exitcond33.not, label %for.cond.cleanup17, label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %for.cond15
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv30, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond20

for.cond.cleanup17:                               ; preds = %for.cond15
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %for.cond3, !llvm.loop !13

for.cond20:                                       ; preds = %for.cond20.preheader, %if.end41
  %indvars.iv27 = phi i64 [ 0, %for.cond20.preheader ], [ %indvars.iv.next28, %if.end41 ]
  %exitcond.not = icmp eq i64 %indvars.iv27, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup23, label %for.body24

for.cond.cleanup23:                               ; preds = %for.cond20
  %inc46 = add nuw i32 %p.0, 1
  br label %for.cond15, !llvm.loop !14

for.body24:                                       ; preds = %for.cond20
  %arrayidx26 = getelementptr inbounds nuw [1000 x i32], ptr %a, i64 0, i64 %indvars.iv27
  %5 = load i32, ptr %arrayidx26, align 4, !tbaa !5, !invariant.load !12
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %arrayidx28 = getelementptr inbounds nuw [1000 x i32], ptr %a, i64 0, i64 %indvars.iv.next28
  %6 = load i32, ptr %arrayidx28, align 4, !tbaa !5, !invariant.load !12
  %cmp29 = icmp sgt i32 %5, %6
  br i1 %cmp29, label %if.then30, label %if.end41

if.then30:                                        ; preds = %for.body24
  store i32 %5, ptr %arrayidx28, align 4, !tbaa !5
  store i32 %6, ptr %arrayidx26, align 4, !tbaa !5
  br label %if.end41

if.end41:                                         ; preds = %if.then30, %for.body24
  br label %for.cond20, !llvm.loop !15

for.cond52:                                       ; preds = %for.cond52.preheader, %if.end65
  %indvars.iv41 = phi i64 [ 0, %for.cond52.preheader ], [ %indvars.iv.next42, %if.end65 ]
  %exitcond47.not = icmp eq i64 %indvars.iv41, %wide.trip.count46
  br i1 %exitcond47.not, label %for.end68, label %for.body55

for.body55:                                       ; preds = %for.cond52
  %cmp57 = icmp slt i64 %indvars.iv41, %2
  %7 = getelementptr inbounds nuw [1000 x i32], ptr %a, i64 0, i64 %indvars.iv41
  %8 = load i32, ptr %7, align 4, !tbaa !5, !invariant.load !12
  br i1 %cmp57, label %if.then58, label %if.else

if.then58:                                        ; preds = %for.body55
  %call61 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %8, i32 noundef 44) #6
  br label %if.end65

if.else:                                          ; preds = %for.body55
  %call64 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %8) #6
  br label %if.end65

if.end65:                                         ; preds = %if.else, %if.then58
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br label %for.cond52, !llvm.loop !16

for.end68:                                        ; preds = %for.cond52
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef nonnull %sz) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
