; ModuleID = '<stdin>'
source_filename = "/tmp/tmpm5uqzu7l.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [500 x i32], align 16
  %b = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef nonnull align 16 %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef nonnull align 16 %b) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond2

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc13
  %indvars.iv4 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next5, %for.inc13 ]
  %m.0 = phi i32 [ 0, %for.cond2.preheader ], [ %m.1, %for.inc13 ]
  %exitcond.not = icmp eq i64 %indvars.iv4, %wide.trip.count
  br i1 %exitcond.not, label %for.cond16.preheader, label %for.body4

for.cond16.preheader:                             ; preds = %for.cond2
  %sub = add nsw i32 %m.0, -1
  %smax16 = call i32 @llvm.smax.i32(i32 %sub, i32 noundef 0)
  br label %for.cond16

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv4
  %2 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %3 = and i32 %2, -2147483647
  %cmp7 = icmp eq i32 %3, 1
  br i1 %cmp7, label %if.then, label %for.inc13

if.then:                                          ; preds = %for.body4
  %idxprom10 = sext i32 %m.0 to i64
  %arrayidx11 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom10
  store i32 %2, ptr %arrayidx11, align 4, !tbaa !5
  %inc12 = add nsw i32 %m.0, 1
  br label %for.inc13

for.inc13:                                        ; preds = %for.body4, %if.then
  %m.1 = phi i32 [ %inc12, %if.then ], [ %m.0, %for.body4 ]
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  br label %for.cond2, !llvm.loop !12

for.cond16:                                       ; preds = %for.cond16.preheader, %for.inc44
  %indvars.iv11 = phi i32 [ %sub, %for.cond16.preheader ], [ %indvars.iv.next12, %for.inc44 ]
  %j.0 = phi i32 [ 0, %for.cond16.preheader ], [ %inc45, %for.inc44 ]
  %exitcond17.not = icmp eq i32 %j.0, %smax16
  br i1 %exitcond17.not, label %for.cond47.preheader, label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.cond16
  %smax13 = call i32 @llvm.smax.i32(i32 %indvars.iv11, i32 noundef 0)
  %wide.trip.count14 = zext nneg i32 %smax13 to i64
  br label %for.cond19

for.cond47.preheader:                             ; preds = %for.cond16
  %4 = zext i32 %sub to i64
  %smax22 = call i32 @llvm.smax.i32(i32 %m.0, i32 noundef 0)
  %wide.trip.count23 = zext nneg i32 %smax22 to i64
  br label %for.cond47

for.cond19:                                       ; preds = %for.cond19.preheader, %for.inc41
  %indvars.iv8 = phi i64 [ 0, %for.cond19.preheader ], [ %indvars.iv.next9, %for.inc41 ]
  %exitcond15.not = icmp eq i64 %indvars.iv8, %wide.trip.count14
  br i1 %exitcond15.not, label %for.inc44, label %for.body23

for.body23:                                       ; preds = %for.cond19
  %arrayidx25 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv8
  %5 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  %arrayidx27 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv.next9
  %6 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %cmp28 = icmp sgt i32 %5, %6
  br i1 %cmp28, label %if.then29, label %for.inc41

if.then29:                                        ; preds = %for.body23
  store i32 %6, ptr %arrayidx25, align 4, !tbaa !5
  store i32 %5, ptr %arrayidx27, align 4, !tbaa !5
  br label %for.inc41

for.inc41:                                        ; preds = %for.body23, %if.then29
  br label %for.cond19, !llvm.loop !13

for.inc44:                                        ; preds = %for.cond19
  %inc45 = add nuw i32 %j.0, 1
  %indvars.iv.next12 = add i32 %indvars.iv11, -1
  br label %for.cond16, !llvm.loop !14

for.cond47:                                       ; preds = %for.cond47.preheader, %for.inc58
  %indvars.iv18 = phi i64 [ 0, %for.cond47.preheader ], [ %indvars.iv.next19, %for.inc58 ]
  %exitcond24.not = icmp eq i64 %indvars.iv18, %wide.trip.count23
  br i1 %exitcond24.not, label %for.end60, label %for.body49

for.body49:                                       ; preds = %for.cond47
  %arrayidx51 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv18
  %7 = load i32, ptr %arrayidx51, align 4, !tbaa !5
  %call52 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %7) #7
  %cmp54.not = icmp eq i64 %indvars.iv18, %4
  br i1 %cmp54.not, label %for.inc58, label %if.then55

if.then55:                                        ; preds = %for.body49
  %putchar = call i32 @putchar(i32 noundef 44) #7
  br label %for.inc58

for.inc58:                                        ; preds = %for.body49, %if.then55
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond47, !llvm.loop !15

for.end60:                                        ; preds = %for.cond47
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind willreturn }
attributes #7 = { nounwind }

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
