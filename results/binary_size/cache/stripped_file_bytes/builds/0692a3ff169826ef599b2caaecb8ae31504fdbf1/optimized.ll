; ModuleID = '<stdin>'
source_filename = "/tmp/tmp07rd_rf3.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [100 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp24 = icmp sgt i32 %0, 0
  br i1 %cmp24, label %for.body, label %loop

for.cond2.preheader:                              ; preds = %for.body
  %cmp328 = icmp sgt i32 %3, 0
  br i1 %cmp328, label %for.cond5.preheader.lr.ph, label %loop

for.cond5.preheader.lr.ph:                        ; preds = %for.cond2.preheader
  %cmp626.not = icmp eq i32 %3, 1
  br i1 %cmp626.not, label %for.body24.preheader, label %for.cond5.preheader.us.preheader

for.cond5.preheader.us.preheader:                 ; preds = %for.cond5.preheader.lr.ph
  %wide.trip.count47 = zext nneg i32 %3 to i64
  br label %for.cond5.preheader.us

for.cond5.preheader.us:                           ; preds = %for.cond5.preheader.us.preheader, %for.cond5.for.inc19_crit_edge.us
  %indvars.iv44 = phi i64 [ 0, %for.cond5.preheader.us.preheader ], [ %indvars.iv.next45, %for.cond5.for.inc19_crit_edge.us ]
  %arrayidx11.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv44
  br label %for.body7.us

for.body7.us:                                     ; preds = %for.cond5.preheader.us, %for.inc16.us
  %indvars.iv41 = phi i64 [ 1, %for.cond5.preheader.us ], [ %indvars.iv.next42, %for.inc16.us ]
  %arrayidx9.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv41
  %1 = load i32, ptr %arrayidx9.us, align 4, !tbaa !5
  %2 = load i32, ptr %arrayidx11.us, align 4, !tbaa !5
  %cmp12.us = icmp ne i32 %1, %2
  %cmp13.not.us = icmp eq i64 %indvars.iv41, %indvars.iv44
  %or.cond.us = or i1 %cmp13.not.us, %cmp12.us
  br i1 %or.cond.us, label %for.inc16.us, label %if.then.us

if.then.us:                                       ; preds = %for.body7.us
  store i32 0, ptr %arrayidx9.us, align 4, !tbaa !5
  br label %for.inc16.us

for.inc16.us:                                     ; preds = %if.then.us, %for.body7.us
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count47
  br i1 %exitcond.not, label %for.cond5.for.inc19_crit_edge.us, label %for.body7.us, !llvm.loop !9

for.cond5.for.inc19_crit_edge.us:                 ; preds = %for.inc16.us
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %exitcond48.not = icmp eq i64 %indvars.iv.next45, %wide.trip.count47
  br i1 %exitcond48.not, label %for.body24.preheader, label %for.cond5.preheader.us, !llvm.loop !12

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %4
  br i1 %cmp, label %for.body, label %for.cond2.preheader, !llvm.loop !13

for.body24.preheader:                             ; preds = %for.cond5.for.inc19_crit_edge.us, %for.cond5.preheader.lr.ph
  %.lcssa236067 = phi i32 [ 1, %for.cond5.preheader.lr.ph ], [ %3, %for.cond5.for.inc19_crit_edge.us ]
  %wide.trip.count52 = zext nneg i32 %.lcssa236067 to i64
  br label %for.body24

for.body24:                                       ; preds = %for.body24.preheader, %for.inc33
  %indvars.iv49 = phi i64 [ 0, %for.body24.preheader ], [ %indvars.iv.next50, %for.inc33 ]
  %arrayidx26 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv49
  %5 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %cmp27.not = icmp eq i32 %5, 0
  br i1 %cmp27.not, label %for.inc33, label %if.then28

if.then28:                                        ; preds = %for.body24
  %6 = trunc nuw nsw i64 %indvars.iv49 to i32
  %call31 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %5)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %loop

for.inc33:                                        ; preds = %for.body24
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %exitcond53.not = icmp eq i64 %indvars.iv.next50, %wide.trip.count52
  br i1 %exitcond53.not, label %loop, label %for.body24, !llvm.loop !14

loop:                                             ; preds = %for.inc33, %entry, %for.cond2.preheader, %if.then28
  %7 = phi i32 [ %.pre, %if.then28 ], [ %3, %for.cond2.preheader ], [ %0, %entry ], [ %.lcssa236067, %for.inc33 ]
  %i.222 = phi i32 [ %6, %if.then28 ], [ 0, %for.cond2.preheader ], [ 0, %entry ], [ %.lcssa236067, %for.inc33 ]
  %i.333 = add nuw nsw i32 %i.222, 1
  %cmp3734 = icmp slt i32 %i.333, %7
  br i1 %cmp3734, label %for.body38.preheader, label %for.end49

for.body38.preheader:                             ; preds = %loop
  %8 = zext i32 %i.222 to i64
  %9 = add nuw nsw i64 %8, 1
  br label %for.body38

for.body38:                                       ; preds = %for.body38.preheader, %for.inc47
  %10 = phi i32 [ %7, %for.body38.preheader ], [ %12, %for.inc47 ]
  %indvars.iv54 = phi i64 [ %9, %for.body38.preheader ], [ %indvars.iv.next55, %for.inc47 ]
  %arrayidx40 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv54
  %11 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %cmp41.not = icmp eq i32 %11, 0
  br i1 %cmp41.not, label %for.inc47, label %if.then42

if.then42:                                        ; preds = %for.body38
  %call45 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %11)
  %.pre57 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc47

for.inc47:                                        ; preds = %for.body38, %if.then42
  %12 = phi i32 [ %10, %for.body38 ], [ %.pre57, %if.then42 ]
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  %13 = trunc nuw i64 %indvars.iv.next55 to i32
  %cmp37 = icmp sgt i32 %12, %13
  br i1 %cmp37, label %for.body38, label %for.end49, !llvm.loop !15

for.end49:                                        ; preds = %for.inc47, %loop
  %putchar = call i32 @putchar(i32 10)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %a) #5
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

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
