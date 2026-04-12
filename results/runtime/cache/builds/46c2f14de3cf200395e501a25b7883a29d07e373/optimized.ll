; ModuleID = '<stdin>'
source_filename = "/tmp/tmpqrkfq7ks.cpp"
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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef nonnull align 16 %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef nonnull align 16 %b) #4
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

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc12
  %indvars.iv53 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next54, %for.inc12 ]
  %j.0 = phi i32 [ 0, %for.cond2.preheader ], [ %j.1, %for.inc12 ]
  %exitcond.not = icmp eq i64 %indvars.iv53, %wide.trip.count
  br i1 %exitcond.not, label %for.cond15.preheader, label %for.body4

for.cond15.preheader:                             ; preds = %for.cond2
  %smax69 = call i32 @llvm.smax.i32(i32 %j.0, i32 noundef 0)
  %wide.trip.count70 = zext nneg i32 %smax69 to i64
  %wide.trip.count63 = zext i32 %j.0 to i64
  br label %for.cond15

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv53
  %2 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %3 = and i32 %2, -2147483647
  %cmp7 = icmp eq i32 %3, 1
  br i1 %cmp7, label %if.end, label %for.inc12

if.end:                                           ; preds = %for.body4
  %idxprom10 = sext i32 %j.0 to i64
  %arrayidx11 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom10
  store i32 %2, ptr %arrayidx11, align 4, !tbaa !5
  %add = add nsw i32 %j.0, 1
  br label %for.inc12

for.inc12:                                        ; preds = %for.body4, %if.end
  %j.1 = phi i32 [ %add, %if.end ], [ %j.0, %for.body4 ]
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %for.cond2, !llvm.loop !12

for.cond15.loopexit:                              ; preds = %for.cond19
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  br label %for.cond15, !llvm.loop !13

for.cond15:                                       ; preds = %for.cond15.loopexit, %for.cond15.preheader
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %for.cond15.loopexit ], [ 0, %for.cond15.preheader ]
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %for.cond15.loopexit ], [ 1, %for.cond15.preheader ]
  %exitcond71.not = icmp eq i64 %indvars.iv65, %wide.trip.count70
  br i1 %exitcond71.not, label %for.cond43.preheader, label %for.body17

for.cond43.preheader:                             ; preds = %for.cond15
  %sub = add nsw i32 %j.0, -1
  %4 = sext i32 %sub to i64
  br label %for.cond43

for.body17:                                       ; preds = %for.cond15
  %arrayidx23 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv65
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc37, %for.body17
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %for.inc37 ], [ %indvars.iv57, %for.body17 ]
  %exitcond64.not = icmp eq i64 %indvars.iv59, %wide.trip.count63
  br i1 %exitcond64.not, label %for.cond15.loopexit, label %for.body21

for.body21:                                       ; preds = %for.cond19
  %5 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %arrayidx25 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv59
  %6 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %cmp26 = icmp sgt i32 %5, %6
  br i1 %cmp26, label %if.then27, label %for.inc37

if.then27:                                        ; preds = %for.body21
  store i32 %6, ptr %arrayidx23, align 4, !tbaa !5
  store i32 %5, ptr %arrayidx25, align 4, !tbaa !5
  br label %for.inc37

for.inc37:                                        ; preds = %for.body21, %if.then27
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  br label %for.cond19, !llvm.loop !14

for.cond43:                                       ; preds = %for.cond43.preheader, %for.inc53
  %indvars.iv72 = phi i64 [ 0, %for.cond43.preheader ], [ %indvars.iv.next73, %for.inc53 ]
  %exitcond76.not = icmp eq i64 %indvars.iv72, %wide.trip.count70
  br i1 %exitcond76.not, label %for.end55, label %for.body45

for.body45:                                       ; preds = %for.cond43
  %arrayidx47 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv72
  %7 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  %call48 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %7) #6
  %cmp49 = icmp slt i64 %indvars.iv72, %4
  br i1 %cmp49, label %if.then50, label %for.inc53

if.then50:                                        ; preds = %for.body45
  %putchar = call i32 @putchar(i32 noundef 44) #6
  br label %for.inc53

for.inc53:                                        ; preds = %for.body45, %if.then50
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  br label %for.cond43, !llvm.loop !15

for.end55:                                        ; preds = %for.cond43
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
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
