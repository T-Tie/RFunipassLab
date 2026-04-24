; ModuleID = '<stdin>'
source_filename = "/tmp/tmpj35o2k4s.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %m = alloca [301 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 301, ptr nonnull %m) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %m)
  %call2 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %m) #6
  %conv = trunc i64 %call2 to i32
  %sub = add i32 %conv, -1
  %cmp26 = icmp sgt i32 %conv, 1
  br i1 %cmp26, label %for.cond3.preheader, label %for.cond26.preheader

for.cond3.preheader:                              ; preds = %entry, %for.inc23
  %indvars.iv33 = phi i32 [ %indvars.iv.next34, %for.inc23 ], [ %sub, %entry ]
  %i.027 = phi i32 [ %inc24, %for.inc23 ], [ 0, %entry ]
  %0 = sub nsw i32 %i.027, %conv
  %cmp624 = icmp slt i32 %0, -1
  br i1 %cmp624, label %for.body7.preheader, label %for.inc23

for.body7.preheader:                              ; preds = %for.cond3.preheader
  %wide.trip.count = zext i32 %indvars.iv33 to i64
  %.pre = load i8, ptr %m, align 16, !tbaa !5
  br label %for.body7

for.cond26.preheader:                             ; preds = %for.inc23, %entry
  %cmp2728 = icmp sgt i32 %conv, 0
  br i1 %cmp2728, label %for.body28.preheader, label %if.then67

for.body28.preheader:                             ; preds = %for.cond26.preheader
  %wide.trip.count40 = and i64 %call2, 2147483647
  br label %for.body28.outer

for.body28.outer:                                 ; preds = %for.inc63.thread, %for.body28.preheader
  %indvars.iv36.ph = phi i64 [ %8, %for.inc63.thread ], [ 0, %for.body28.preheader ]
  %1 = phi i1 [ false, %for.inc63.thread ], [ true, %for.body28.preheader ]
  br label %for.body28

for.body7:                                        ; preds = %for.body7.preheader, %for.inc
  %2 = phi i8 [ %.pre, %for.body7.preheader ], [ %4, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.body7.preheader ], [ %indvars.iv.next, %for.inc ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx10 = getelementptr inbounds nuw [301 x i8], ptr %m, i64 0, i64 %indvars.iv.next
  %3 = load i8, ptr %arrayidx10, align 1, !tbaa !5
  %cmp12 = icmp sgt i8 %2, %3
  br i1 %cmp12, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body7
  %arrayidx = getelementptr inbounds nuw [301 x i8], ptr %m, i64 0, i64 %indvars.iv
  store i8 %3, ptr %arrayidx, align 1, !tbaa !5
  store i8 %2, ptr %arrayidx10, align 1, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body7, %if.then
  %4 = phi i8 [ %3, %for.body7 ], [ %2, %if.then ]
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.inc23, label %for.body7, !llvm.loop !8

for.inc23:                                        ; preds = %for.inc, %for.cond3.preheader
  %inc24 = add nuw nsw i32 %i.027, 1
  %indvars.iv.next34 = add i32 %indvars.iv33, -1
  %exitcond35.not = icmp eq i32 %inc24, %sub
  br i1 %exitcond35.not, label %for.cond26.preheader, label %for.cond3.preheader, !llvm.loop !11

for.body28:                                       ; preds = %for.body28.outer, %for.inc63
  %indvars.iv36 = phi i64 [ %indvars.iv.next37.pre-phi, %for.inc63 ], [ %indvars.iv36.ph, %for.body28.outer ]
  %sum.029 = phi i32 [ %sum.1, %for.inc63 ], [ 0, %for.body28.outer ]
  %arrayidx30 = getelementptr inbounds nuw [301 x i8], ptr %m, i64 0, i64 %indvars.iv36
  %5 = load i8, ptr %arrayidx30, align 1, !tbaa !5
  %6 = and i8 %5, -33
  %7 = add i8 %6, -65
  %or.cond23 = icmp ult i8 %7, 26
  br i1 %or.cond23, label %if.then46, label %for.body28.for.inc63_crit_edge

for.body28.for.inc63_crit_edge:                   ; preds = %for.body28
  %.pre42 = add nuw nsw i64 %indvars.iv36, 1
  br label %for.inc63

if.then46:                                        ; preds = %for.body28
  %inc47 = add nsw i32 %sum.029, 1
  %8 = add nuw nsw i64 %indvars.iv36, 1
  %arrayidx53 = getelementptr inbounds nuw [301 x i8], ptr %m, i64 0, i64 %8
  %9 = load i8, ptr %arrayidx53, align 1, !tbaa !5
  %cmp55.not = icmp eq i8 %5, %9
  br i1 %cmp55.not, label %for.inc63, label %for.inc63.thread

for.inc63:                                        ; preds = %for.body28.for.inc63_crit_edge, %if.then46
  %indvars.iv.next37.pre-phi = phi i64 [ %.pre42, %for.body28.for.inc63_crit_edge ], [ %8, %if.then46 ]
  %sum.1 = phi i32 [ %sum.029, %for.body28.for.inc63_crit_edge ], [ %inc47, %if.then46 ]
  %exitcond41.not = icmp eq i64 %indvars.iv.next37.pre-phi, %wide.trip.count40
  br i1 %exitcond41.not, label %for.end65, label %for.body28, !llvm.loop !12

for.inc63.thread:                                 ; preds = %if.then46
  %conv50 = zext nneg i8 %5 to i32
  %call60 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %conv50, i32 noundef %inc47)
  %exitcond41.not47 = icmp eq i64 %8, %wide.trip.count40
  br i1 %exitcond41.not47, label %if.end69, label %for.body28.outer, !llvm.loop !12

for.end65:                                        ; preds = %for.inc63
  br i1 %1, label %if.then67, label %if.end69

if.then67:                                        ; preds = %for.cond26.preheader, %for.end65
  %call68 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2)
  br label %if.end69

if.end69:                                         ; preds = %for.inc63.thread, %if.then67, %for.end65
  call void @llvm.lifetime.end.p0(i64 301, ptr nonnull %m) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !10}
