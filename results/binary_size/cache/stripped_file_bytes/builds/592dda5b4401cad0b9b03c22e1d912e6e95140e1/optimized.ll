; ModuleID = '<stdin>'
source_filename = "/tmp/tmpq120esm_.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@month = dso_local local_unnamed_addr global [13 x i32] [i32 0, i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z3runi(i32 noundef %year) local_unnamed_addr #0 {
entry:
  %0 = and i32 %year, 3
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %rem4 = srem i32 %year, 100
  %cmp5 = icmp eq i32 %rem4, 0
  br i1 %cmp5, label %if.then6, label %return

if.then6:                                         ; preds = %if.end
  %rem7 = srem i32 %year, 400
  %cmp8 = icmp eq i32 %rem7, 0
  %. = zext i1 %cmp8 to i32
  br label %return

return:                                           ; preds = %if.end, %if.then6, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ %., %if.then6 ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %date1 = alloca i32, align 4
  %date2 = alloca i32, align 4
  %day = alloca [201 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %year) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %date1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %date2) #7
  call void @llvm.lifetime.start.p0(i64 804, ptr nonnull %day) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(804) %day, i8 0, i64 804, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not18 = icmp slt i32 %0, 1
  br i1 %cmp.not18, label %for.end28, label %for.body

for.cond15.preheader:                             ; preds = %for.inc12
  %1 = icmp slt i32 %17, 1
  br i1 %1, label %for.end28, label %for.body18

for.body:                                         ; preds = %entry, %for.inc12
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.inc12 ], [ 1, %entry ]
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %year, ptr noundef nonnull %date1, ptr noundef nonnull %date2)
  store i32 28, ptr getelementptr inbounds nuw (i8, ptr @month, i64 8), align 8, !tbaa !5
  %2 = load i32, ptr %year, align 4, !tbaa !5
  %3 = and i32 %2, 3
  %cmp.not.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.end

if.end.i:                                         ; preds = %for.body
  %rem4.i = srem i32 %2, 100
  %cmp5.i = icmp ne i32 %rem4.i, 0
  %rem7.i = srem i32 %2, 400
  %cmp8.i.not = icmp eq i32 %rem7.i, 0
  %or.cond = or i1 %cmp5.i, %cmp8.i.not
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %if.end.i
  store i32 29, ptr getelementptr inbounds nuw (i8, ptr @month, i64 8), align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.end.i, %for.body, %if.then
  %4 = load i32, ptr %date1, align 4, !tbaa !5
  %5 = load i32, ptr %date2, align 4, !tbaa !5
  %cmp3 = icmp sgt i32 %4, %5
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 %5, ptr %date1, align 4, !tbaa !5
  store i32 %4, ptr %date2, align 4, !tbaa !5
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %6 = phi i32 [ %4, %if.then4 ], [ %5, %if.end ]
  %7 = phi i32 [ %5, %if.then4 ], [ %4, %if.end ]
  %cmp715 = icmp slt i32 %7, %6
  br i1 %cmp715, label %for.body8.lr.ph, label %for.inc12

for.body8.lr.ph:                                  ; preds = %if.end5
  %arrayidx10 = getelementptr inbounds nuw [201 x i32], ptr %day, i64 0, i64 %indvars.iv23
  %arrayidx10.promoted = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %8 = sext i32 %7 to i64
  %wide.trip.count = sext i32 %6 to i64
  %9 = sub nsw i64 %wide.trip.count, %8
  %min.iters.check = icmp ult i64 %9, 4
  br i1 %min.iters.check, label %for.body8.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body8.lr.ph
  %n.vec = and i64 %9, -4
  %10 = add nsw i64 %n.vec, %8
  %11 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %arrayidx10.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %11, %vector.ph ], [ %13, %vector.body ]
  %offset.idx = add i64 %index, %8
  %12 = getelementptr inbounds [13 x i32], ptr @month, i64 0, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %12, align 4, !tbaa !5
  %13 = add <4 x i32> %vec.phi, %wide.load
  %index.next = add nuw i64 %index, 4
  %14 = icmp eq i64 %index.next, %n.vec
  br i1 %14, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %15 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %13)
  %cmp.n = icmp eq i64 %9, %n.vec
  br i1 %cmp.n, label %for.cond6.for.inc12_crit_edge, label %for.body8.preheader

for.body8.preheader:                              ; preds = %for.body8.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %8, %for.body8.lr.ph ], [ %10, %middle.block ]
  %add1117.ph = phi i32 [ %arrayidx10.promoted, %for.body8.lr.ph ], [ %15, %middle.block ]
  br label %for.body8

for.body8:                                        ; preds = %for.body8.preheader, %for.body8
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body8 ], [ %indvars.iv.ph, %for.body8.preheader ]
  %add1117 = phi i32 [ %add11, %for.body8 ], [ %add1117.ph, %for.body8.preheader ]
  %arrayidx = getelementptr inbounds [13 x i32], ptr @month, i64 0, i64 %indvars.iv
  %16 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %add11 = add nsw i32 %add1117, %16
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond6.for.inc12_crit_edge, label %for.body8, !llvm.loop !14

for.cond6.for.inc12_crit_edge:                    ; preds = %for.body8, %middle.block
  %add11.lcssa = phi i32 [ %15, %middle.block ], [ %add11, %for.body8 ]
  store i32 %add11.lcssa, ptr %arrayidx10, align 4, !tbaa !5
  br label %for.inc12

for.inc12:                                        ; preds = %for.cond6.for.inc12_crit_edge, %if.end5
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %17 = load i32, ptr %n, align 4, !tbaa !5
  %18 = sext i32 %17 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv23, %18
  br i1 %cmp.not.not, label %for.body, label %for.cond15.preheader, !llvm.loop !15

for.body18:                                       ; preds = %for.cond15.preheader, %for.body18
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.body18 ], [ 1, %for.cond15.preheader ]
  %arrayidx20 = getelementptr inbounds nuw [201 x i32], ptr %day, i64 0, i64 %indvars.iv26
  %19 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %rem = srem i32 %19, 7
  %cmp21 = icmp eq i32 %rem, 0
  %str.1.str = select i1 %cmp21, ptr @str.1, ptr @str
  %puts9 = call i32 @puts(ptr nonnull dereferenceable(1) %str.1.str)
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %20 = load i32, ptr %n, align 4, !tbaa !5
  %21 = sext i32 %20 to i64
  %cmp17.not.not = icmp slt i64 %indvars.iv26, %21
  br i1 %cmp17.not.not, label %for.body18, label %for.end28, !llvm.loop !16

for.end28:                                        ; preds = %for.body18, %entry, %for.cond15.preheader
  call void @llvm.lifetime.end.p0(i64 804, ptr nonnull %day) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %date2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %date1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %year) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!9 = distinct !{!9, !10, !11, !12, !13}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
