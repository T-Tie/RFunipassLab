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
  call void @llvm.lifetime.start.p0(i64 301, ptr nonnull %m) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %m)
  %call2 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %m) #7
  %conv = trunc i64 %call2 to i32
  %sub = add nsw i32 %conv, -1
  %smax27 = call i32 @llvm.smax.i32(i32 %sub, i32 0)
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %indvars.iv25 = phi i32 [ %indvars.iv.next26, %for.inc23 ], [ %sub, %entry ]
  %i.0 = phi i32 [ %inc24, %for.inc23 ], [ 0, %entry ]
  %exitcond28.not = icmp eq i32 %i.0, %smax27
  br i1 %exitcond28.not, label %for.cond26.preheader, label %for.cond3.preheader

for.cond26.preheader:                             ; preds = %for.cond
  %smax33 = call i32 @llvm.smax.i32(i32 %conv, i32 0)
  %wide.trip.count34 = zext nneg i32 %smax33 to i64
  br label %for.cond26.outer.outer

for.cond3.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv25, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond3

for.cond3:                                        ; preds = %for.cond3.backedge, %for.cond3.preheader
  %indvars.iv = phi i64 [ 0, %for.cond3.preheader ], [ %indvars.iv.next, %for.cond3.backedge ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc23, label %for.body7

for.body7:                                        ; preds = %for.cond3
  %arrayidx = getelementptr inbounds nuw [301 x i8], ptr %m, i64 0, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx10 = getelementptr inbounds nuw [301 x i8], ptr %m, i64 0, i64 %indvars.iv.next
  %1 = load i8, ptr %arrayidx10, align 1, !tbaa !5
  %cmp12 = icmp sgt i8 %0, %1
  br i1 %cmp12, label %if.then, label %for.cond3.backedge

for.cond3.backedge:                               ; preds = %for.body7, %if.then
  br label %for.cond3, !llvm.loop !8

if.then:                                          ; preds = %for.body7
  store i8 %1, ptr %arrayidx, align 1, !tbaa !5
  store i8 %0, ptr %arrayidx10, align 1, !tbaa !5
  br label %for.cond3.backedge

for.inc23:                                        ; preds = %for.cond3
  %inc24 = add nuw nsw i32 %i.0, 1
  %indvars.iv.next26 = add i32 %indvars.iv25, -1
  br label %for.cond, !llvm.loop !11

for.cond26:                                       ; preds = %for.cond26.outer, %for.body28.for.inc63_crit_edge
  %indvars.iv29 = phi i64 [ %.pre, %for.body28.for.inc63_crit_edge ], [ %indvars.iv29.ph, %for.cond26.outer ]
  %exitcond35.not = icmp eq i64 %indvars.iv29, %wide.trip.count34
  br i1 %exitcond35.not, label %for.end65, label %for.body28

for.body28:                                       ; preds = %for.cond26
  %arrayidx30 = getelementptr inbounds nuw [301 x i8], ptr %m, i64 0, i64 %indvars.iv29
  %2 = load i8, ptr %arrayidx30, align 1, !tbaa !5
  %3 = and i8 %2, -33
  %4 = add i8 %3, -65
  %or.cond23 = icmp ult i8 %4, 26
  br i1 %or.cond23, label %if.then46, label %for.body28.for.inc63_crit_edge

for.body28.for.inc63_crit_edge:                   ; preds = %for.body28
  %.pre = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond26, !llvm.loop !12

if.then46:                                        ; preds = %for.body28
  %inc47 = add nuw nsw i32 %sum.0.ph, 1
  %5 = add nuw nsw i64 %indvars.iv29, 1
  %arrayidx53 = getelementptr inbounds nuw [301 x i8], ptr %m, i64 0, i64 %5
  %6 = load i8, ptr %arrayidx53, align 1, !tbaa !5
  %cmp55.not = icmp eq i8 %2, %6
  br i1 %cmp55.not, label %for.cond26.outer, label %if.then56, !llvm.loop !12

for.cond26.outer:                                 ; preds = %for.cond26.outer.outer, %if.then46
  %indvars.iv29.ph = phi i64 [ %5, %if.then46 ], [ %indvars.iv29.ph.ph, %for.cond26.outer.outer ]
  %sum.0.ph = phi i32 [ %inc47, %if.then46 ], [ 0, %for.cond26.outer.outer ]
  br label %for.cond26

if.then56:                                        ; preds = %if.then46
  %conv50 = zext nneg i8 %2 to i32
  %call60 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %conv50, i32 noundef %inc47)
  br label %for.cond26.outer.outer, !llvm.loop !12

for.cond26.outer.outer:                           ; preds = %for.cond26.preheader, %if.then56
  %indvars.iv29.ph.ph = phi i64 [ 0, %for.cond26.preheader ], [ %5, %if.then56 ]
  %cmp66 = phi i1 [ true, %for.cond26.preheader ], [ false, %if.then56 ]
  br label %for.cond26.outer

for.end65:                                        ; preds = %for.cond26
  br i1 %cmp66, label %if.then67, label %if.end69

if.then67:                                        ; preds = %for.end65
  %call68 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2)
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %for.end65
  call void @llvm.lifetime.end.p0(i64 301, ptr nonnull %m) #6
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
