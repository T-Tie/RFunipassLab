; ModuleID = '<stdin>'
source_filename = "/tmp/tmpus5dadsy.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %mul = shl nsw i64 %conv, 2
  %call1 = call noalias ptr @malloc(i64 noundef %mul) #8
  %call4 = call noalias ptr @malloc(i64 noundef %mul) #8
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %1 = phi i32 [ %.pre, %for.body ], [ %0, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv, %2
  br i1 %cmp, label %for.body, label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond6

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i32, ptr %call1, i64 %indvars.iv
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.cond6:                                        ; preds = %for.cond6.preheader, %for.inc16
  %indvars.iv36 = phi i64 [ 0, %for.cond6.preheader ], [ %indvars.iv.next37, %for.inc16 ]
  %k.0 = phi i32 [ 0, %for.cond6.preheader ], [ %k.1, %for.inc16 ]
  %exitcond.not = icmp eq i64 %indvars.iv36, %wide.trip.count
  br i1 %exitcond.not, label %for.cond19.preheader, label %for.body8

for.cond19.preheader:                             ; preds = %for.cond6
  %3 = call i32 @llvm.smax.i32(i32 %k.0, i32 1)
  %smax48 = add nsw i32 %3, -1
  %wide.trip.count49 = zext nneg i32 %smax48 to i64
  br label %for.cond19

for.body8:                                        ; preds = %for.cond6
  %arrayidx10 = getelementptr inbounds nuw i32, ptr %call1, i64 %indvars.iv36
  %4 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %5 = and i32 %4, 1
  %cmp11.not = icmp eq i32 %5, 0
  br i1 %cmp11.not, label %for.inc16, label %if.then

if.then:                                          ; preds = %for.body8
  %idxprom14 = sext i32 %k.0 to i64
  %arrayidx15 = getelementptr inbounds i32, ptr %call4, i64 %idxprom14
  store i32 %4, ptr %arrayidx15, align 4, !tbaa !5
  %add = add nsw i32 %k.0, 1
  br label %for.inc16

for.inc16:                                        ; preds = %for.body8, %if.then
  %k.1 = phi i32 [ %add, %if.then ], [ %k.0, %for.body8 ]
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  br label %for.cond6, !llvm.loop !12

for.cond19.loopexit:                              ; preds = %for.cond23
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %for.cond19, !llvm.loop !13

for.cond19:                                       ; preds = %for.cond19.loopexit, %for.cond19.preheader
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %for.cond19.loopexit ], [ 0, %for.cond19.preheader ]
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %for.cond19.loopexit ], [ 1, %for.cond19.preheader ]
  %exitcond50.not = icmp eq i64 %indvars.iv45, %wide.trip.count49
  br i1 %exitcond50.not, label %for.cond47.preheader, label %for.body21

for.cond47.preheader:                             ; preds = %for.cond19
  %smax55 = call i32 @llvm.smax.i32(i32 %k.0, i32 0)
  %wide.trip.count56 = zext nneg i32 %smax55 to i64
  br label %for.cond47

for.body21:                                       ; preds = %for.cond19
  %arrayidx29 = getelementptr inbounds nuw i32, ptr %call4, i64 %indvars.iv45
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc41, %for.body21
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %for.inc41 ], [ %indvars.iv40, %for.body21 ]
  %6 = trunc nuw i64 %indvars.iv42 to i32
  %cmp24 = icmp sgt i32 %k.0, %6
  br i1 %cmp24, label %for.body25, label %for.cond19.loopexit

for.body25:                                       ; preds = %for.cond23
  %arrayidx27 = getelementptr inbounds nuw i32, ptr %call4, i64 %indvars.iv42
  %7 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %8 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %cmp30 = icmp slt i32 %7, %8
  br i1 %cmp30, label %if.then31, label %for.inc41

if.then31:                                        ; preds = %for.body25
  store i32 %8, ptr %arrayidx27, align 4, !tbaa !5
  store i32 %7, ptr %arrayidx29, align 4, !tbaa !5
  br label %for.inc41

for.inc41:                                        ; preds = %for.body25, %if.then31
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %for.cond23, !llvm.loop !14

for.cond47:                                       ; preds = %for.cond47.preheader, %if.end52
  %indvars.iv51 = phi i64 [ 0, %for.cond47.preheader ], [ %indvars.iv.next52, %if.end52 ]
  %exitcond57.not = icmp eq i64 %indvars.iv51, %wide.trip.count56
  br i1 %exitcond57.not, label %for.end58, label %for.body49

for.body49:                                       ; preds = %for.cond47
  %tobool.not = icmp eq i64 %indvars.iv51, 0
  br i1 %tobool.not, label %if.end52, label %if.then50

if.then50:                                        ; preds = %for.body49
  %putchar = call i32 @putchar(i32 44)
  br label %if.end52

if.end52:                                         ; preds = %if.then50, %for.body49
  %arrayidx54 = getelementptr inbounds nuw i32, ptr %call4, i64 %indvars.iv51
  %9 = load i32, ptr %arrayidx54, align 4, !tbaa !5
  %call55 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %9)
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  br label %for.cond47, !llvm.loop !15

for.end58:                                        ; preds = %for.cond47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind allocsize(0) }

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
