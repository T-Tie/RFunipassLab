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

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond
  %smax36 = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count37 = zext nneg i32 %smax36 to i64
  br label %for.cond3

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x i32], ptr %sz, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc48
  %indvars.iv32 = phi i64 [ 0, %for.cond3.preheader ], [ %indvars.iv.next33, %for.inc48 ]
  %j.0 = phi i32 [ 0, %for.cond3.preheader ], [ %j.1, %for.inc48 ]
  %exitcond38.not = icmp eq i64 %indvars.iv32, %wide.trip.count37
  br i1 %exitcond38.not, label %for.cond52.preheader, label %for.body6

for.cond52.preheader:                             ; preds = %for.cond3
  %sub56 = add nsw i32 %j.0, -1
  %2 = sext i32 %sub56 to i64
  %smax43 = call i32 @llvm.smax.i32(i32 %j.0, i32 noundef 0)
  %wide.trip.count44 = zext nneg i32 %smax43 to i64
  br label %for.cond52

for.body6:                                        ; preds = %for.cond3
  %arrayidx8 = getelementptr inbounds nuw [1000 x i32], ptr %sz, i64 0, i64 %indvars.iv32
  %3 = load i32, ptr %arrayidx8, align 4, !tbaa !5
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
  %smax30 = call i32 @llvm.smax.i32(i32 %j.1, i32 noundef 0)
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc45, %if.end
  %indvars.iv28.in = phi i32 [ %indvars.iv28, %for.inc45 ], [ %j.1, %if.end ]
  %p.0 = phi i32 [ %inc46, %for.inc45 ], [ 0, %if.end ]
  %indvars.iv28 = add i32 %indvars.iv28.in, -1
  %exitcond31.not = icmp eq i32 %p.0, %smax30
  br i1 %exitcond31.not, label %for.inc48, label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %for.cond15
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv28, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond20

for.cond20:                                       ; preds = %for.cond20.preheader, %for.inc42
  %indvars.iv25 = phi i64 [ 0, %for.cond20.preheader ], [ %indvars.iv.next26, %for.inc42 ]
  %exitcond.not = icmp eq i64 %indvars.iv25, %wide.trip.count
  br i1 %exitcond.not, label %for.inc45, label %for.body24

for.body24:                                       ; preds = %for.cond20
  %arrayidx26 = getelementptr inbounds nuw [1000 x i32], ptr %a, i64 0, i64 %indvars.iv25
  %5 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %arrayidx28 = getelementptr inbounds nuw [1000 x i32], ptr %a, i64 0, i64 %indvars.iv.next26
  %6 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %cmp29 = icmp sgt i32 %5, %6
  br i1 %cmp29, label %if.then30, label %for.inc42

if.then30:                                        ; preds = %for.body24
  store i32 %5, ptr %arrayidx28, align 4, !tbaa !5
  store i32 %6, ptr %arrayidx26, align 4, !tbaa !5
  br label %for.inc42

for.inc42:                                        ; preds = %for.body24, %if.then30
  br label %for.cond20, !llvm.loop !12

for.inc45:                                        ; preds = %for.cond20
  %inc46 = add nuw i32 %p.0, 1
  br label %for.cond15, !llvm.loop !13

for.inc48:                                        ; preds = %for.cond15
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond3, !llvm.loop !14

for.cond52:                                       ; preds = %for.cond52.preheader, %for.inc66
  %indvars.iv39 = phi i64 [ 0, %for.cond52.preheader ], [ %indvars.iv.next40, %for.inc66 ]
  %exitcond45.not = icmp eq i64 %indvars.iv39, %wide.trip.count44
  br i1 %exitcond45.not, label %for.end68, label %for.body55

for.body55:                                       ; preds = %for.cond52
  %cmp57 = icmp slt i64 %indvars.iv39, %2
  %arrayidx60 = getelementptr inbounds nuw [1000 x i32], ptr %a, i64 0, i64 %indvars.iv39
  %7 = load i32, ptr %arrayidx60, align 4, !tbaa !5
  br i1 %cmp57, label %if.then58, label %if.else

if.then58:                                        ; preds = %for.body55
  %call61 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %7, i32 noundef 44) #6
  br label %for.inc66

if.else:                                          ; preds = %for.body55
  %call64 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %7) #6
  br label %for.inc66

for.inc66:                                        ; preds = %if.then58, %if.else
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %for.cond52, !llvm.loop !15

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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
