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
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %for.inc12 ], [ 1, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv11, %1
  br i1 %cmp.not, label %for.cond15, label %for.body

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %year, ptr noundef nonnull %date1, ptr noundef nonnull %date2)
  %2 = load i32, ptr %year, align 4, !tbaa !5
  %call2 = call noundef i32 @_Z3runi(i32 noundef %2)
  %tobool.not = icmp eq i32 %call2, 0
  %spec.store.select = select i1 %tobool.not, i32 28, i32 29
  store i32 %spec.store.select, ptr getelementptr inbounds nuw (i8, ptr @month, i64 8), align 8
  %3 = load i32, ptr %date1, align 4, !tbaa !5
  %4 = load i32, ptr %date2, align 4, !tbaa !5
  %cmp3 = icmp sgt i32 %3, %4
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %for.body
  store i32 %4, ptr %date1, align 4, !tbaa !5
  store i32 %3, ptr %date2, align 4, !tbaa !5
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %for.body
  %5 = phi i32 [ %4, %if.then4 ], [ %3, %for.body ]
  %arrayidx10 = getelementptr inbounds nuw [201 x i32], ptr %day, i64 0, i64 %indvars.iv11
  %6 = sext i32 %5 to i64
  %smax = call i32 @llvm.smax.i32(i32 %4, i32 %3)
  %wide.trip.count = sext i32 %smax to i64
  br label %for.cond6

for.cond6:                                        ; preds = %for.body8, %if.end5
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body8 ], [ %6, %if.end5 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc12, label %for.body8

for.body8:                                        ; preds = %for.cond6
  %arrayidx = getelementptr inbounds [13 x i32], ptr @month, i64 0, i64 %indvars.iv
  %7 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %8 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %add11 = add nsw i32 %8, %7
  store i32 %add11, ptr %arrayidx10, align 4, !tbaa !5
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %for.cond6, !llvm.loop !9

for.inc12:                                        ; preds = %for.cond6
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  br label %for.cond, !llvm.loop !12

for.cond15:                                       ; preds = %for.cond, %for.body18
  %9 = phi i32 [ %.pre, %for.body18 ], [ %0, %for.cond ]
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %for.body18 ], [ 1, %for.cond ]
  %10 = sext i32 %9 to i64
  %cmp17.not = icmp sgt i64 %indvars.iv14, %10
  br i1 %cmp17.not, label %for.end28, label %for.body18

for.body18:                                       ; preds = %for.cond15
  %arrayidx20 = getelementptr inbounds nuw [201 x i32], ptr %day, i64 0, i64 %indvars.iv14
  %11 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %rem = srem i32 %11, 7
  %cmp21 = icmp eq i32 %rem, 0
  %str.1.str = select i1 %cmp21, ptr @str.1, ptr @str
  %puts9 = call i32 @puts(ptr nonnull dereferenceable(1) %str.1.str)
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !13

for.end28:                                        ; preds = %for.cond15
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
declare i32 @llvm.smax.i32(i32, i32) #6

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
