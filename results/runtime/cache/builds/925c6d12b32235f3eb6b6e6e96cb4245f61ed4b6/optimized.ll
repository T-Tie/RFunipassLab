; ModuleID = '<stdin>'
source_filename = "/tmp/tmp72r15x2t.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\0A%d\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z5sushui(i32 noundef %a) local_unnamed_addr #0 {
entry:
  %smax = tail call i32 @llvm.smax.i32(i32 %a, i32 2)
  %0 = add nsw i32 %smax, -2
  br label %while.cond

while.cond:                                       ; preds = %if.then, %entry
  %b.0 = phi i32 [ 2, %entry ], [ %add, %if.then ]
  %d.0 = phi i32 [ 0, %entry ], [ %add2, %if.then ]
  %exitcond.not = icmp eq i32 %d.0, %0
  br i1 %exitcond.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %rem = srem i32 %a, %b.0
  %cmp1.not = icmp eq i32 %rem, 0
  br i1 %cmp1.not, label %while.end, label %if.then

if.then:                                          ; preds = %while.body
  %add = add nuw nsw i32 %b.0, 1
  %add2 = add nuw nsw i32 %d.0, 1
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.body, %while.cond
  %d.0.lcssa = phi i32 [ %d.0, %while.body ], [ %0, %while.cond ]
  %sub = add nsw i32 %a, -2
  %cmp3 = icmp eq i32 %d.0.lcssa, %sub
  %. = zext i1 %cmp3 to i32
  ret i32 %.
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z5zhengii(i32 noundef %n, i32 noundef %i) local_unnamed_addr #2 {
entry:
  %div = sdiv i32 %n, 2
  %smax = tail call i32 @llvm.smax.i32(i32 %div, i32 %i)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %sum.0 = phi i32 [ 1, %entry ], [ %sum.1, %for.inc ]
  %a.0 = phi i32 [ %i, %entry ], [ %inc, %for.inc ]
  %exitcond.not = icmp eq i32 %a.0, %smax
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %n, %a.0
  %div2 = sdiv i32 %n, %a.0
  %cmp1 = icmp ne i32 %rem, 0
  %cmp3.not = icmp sgt i32 %a.0, %div2
  %or.cond = or i1 %cmp1, %cmp3.not
  br i1 %or.cond, label %for.inc, label %if.then4

if.then4:                                         ; preds = %for.body
  %call = tail call noundef i32 @_Z5zhengii(i32 noundef %div2, i32 noundef %a.0)
  %add = add nsw i32 %call, %sum.0
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then4
  %sum.1 = phi i32 [ %add, %if.then4 ], [ %sum.0, %for.body ]
  %inc = add i32 %a.0, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret i32 %sum.0
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %n = alloca i32, align 4
  %b = alloca [10000 x i32], align 16
  %e = alloca [40000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #8
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %b) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40000) %b, i8 0, i64 40000, i1 false)
  call void @llvm.lifetime.start.p0(i64 160000, ptr nonnull %e) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160000) %e, i8 0, i64 160000, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !9
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond2

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [40000 x i32], ptr %e, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !13

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc16
  %indvars.iv13 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next14, %for.inc16 ]
  %exitcond.not = icmp eq i64 %indvars.iv13, %wide.trip.count
  br i1 %exitcond.not, label %for.end18, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [40000 x i32], ptr %e, i64 0, i64 %indvars.iv13
  %2 = load i32, ptr %arrayidx6, align 4, !tbaa !9
  %call7 = call noundef i32 @_Z5sushui(i32 noundef %2)
  %cmp8 = icmp eq i32 %call7, 0
  br i1 %cmp8, label %if.then, label %for.inc16

if.then:                                          ; preds = %for.body4
  %call11 = call noundef i32 @_Z5zhengii(i32 noundef %2, i32 noundef 2)
  br label %for.inc16

for.inc16:                                        ; preds = %for.body4, %if.then
  %.sink = phi i32 [ %call11, %if.then ], [ 1, %for.body4 ]
  %3 = getelementptr inbounds nuw [10000 x i32], ptr %b, i64 0, i64 %indvars.iv13
  store i32 %.sink, ptr %3, align 4, !tbaa !9
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  br label %for.cond2, !llvm.loop !14

for.end18:                                        ; preds = %for.cond2
  %4 = load i32, ptr %b, align 16, !tbaa !9
  %call20 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %4)
  br label %for.cond21

for.cond21:                                       ; preds = %for.body23, %for.end18
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %for.body23 ], [ 1, %for.end18 ]
  %5 = load i32, ptr %n, align 4, !tbaa !9
  %6 = sext i32 %5 to i64
  %cmp22 = icmp slt i64 %indvars.iv17, %6
  br i1 %cmp22, label %for.body23, label %for.end29

for.body23:                                       ; preds = %for.cond21
  %arrayidx25 = getelementptr inbounds nuw [10000 x i32], ptr %b, i64 0, i64 %indvars.iv17
  %7 = load i32, ptr %arrayidx25, align 4, !tbaa !9
  %call26 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %7)
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  br label %for.cond21, !llvm.loop !15

for.end29:                                        ; preds = %for.cond21
  call void @llvm.lifetime.end.p0(i64 160000, ptr nonnull %e) #8
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %b) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !6, !7}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C++ TBAA"}
!13 = distinct !{!13, !6, !7}
!14 = distinct !{!14, !6, !7}
!15 = distinct !{!15, !6, !7}
