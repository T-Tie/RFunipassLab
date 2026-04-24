; ModuleID = '<stdin>'
source_filename = "/tmp/tmpyhn_v25g.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %y = alloca [200 x i32], align 16
  %m1 = alloca [200 x i32], align 16
  %m2 = alloca [200 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %y) #6
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %m1) #6
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %m2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond6

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [200 x i32], ptr %y, i64 0, i64 %indvars.iv
  %arrayidx2 = getelementptr inbounds nuw [200 x i32], ptr %m1, i64 0, i64 %indvars.iv
  %arrayidx4 = getelementptr inbounds nuw [200 x i32], ptr %m2, i64 0, i64 %indvars.iv
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx4)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond6:                                        ; preds = %for.cond, %for.body9
  %2 = phi i32 [ %.pre, %for.body9 ], [ %0, %for.cond ]
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %for.body9 ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp7 = icmp slt i64 %indvars.iv12, %3
  br i1 %cmp7, label %for.body9, label %for.cond.cleanup8

for.cond.cleanup8:                                ; preds = %for.cond6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %m2) #6
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %m1) #6
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %y) #6
  ret i32 0

for.body9:                                        ; preds = %for.cond6
  %arrayidx11 = getelementptr inbounds nuw [200 x i32], ptr %y, i64 0, i64 %indvars.iv12
  %4 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %arrayidx13 = getelementptr inbounds nuw [200 x i32], ptr %m1, i64 0, i64 %indvars.iv12
  %5 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %call14 = call noundef i32 @_Z8dijitianiii(i32 noundef %4, i32 noundef %5, i32 noundef 1)
  %arrayidx18 = getelementptr inbounds nuw [200 x i32], ptr %m2, i64 0, i64 %indvars.iv12
  %6 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %call19 = call noundef i32 @_Z8dijitianiii(i32 noundef %4, i32 noundef %6, i32 noundef 1)
  %sub = sub nsw i32 %call14, %call19
  %rem = srem i32 %sub, 7
  %cmp20 = icmp eq i32 %rem, 0
  %str.1.str = select i1 %cmp20, ptr @str.1, ptr @str
  %puts10 = call i32 @puts(ptr nonnull dereferenceable(1) %str.1.str)
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z8dijitianiii(i32 noundef %y, i32 noundef %m, i32 noundef %day) local_unnamed_addr #3 {
entry:
  %0 = and i32 %y, 3
  %cmp23 = icmp eq i32 %0, 0
  %rem24 = srem i32 %y, 100
  %cmp25.not = icmp ne i32 %rem24, 0
  %or.cond27.not29 = and i1 %cmp23, %cmp25.not
  %rem27 = srem i32 %y, 400
  %cmp28 = icmp eq i32 %rem27, 0
  %or.cond28 = or i1 %cmp28, %or.cond27.not29
  %smax = tail call i32 @llvm.smax.i32(i32 %m, i32 0)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %d.0 = phi i32 [ 0, %entry ], [ %d.1, %for.inc ]
  %k.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %exitcond.not = icmp eq i32 %k.0, %smax
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.cond
  %add36 = add nsw i32 %d.0, %day
  ret i32 %add36

for.body:                                         ; preds = %for.cond
  %1 = and i32 %k.0, 2147483645
  switch i32 %1, label %if.else20 [
    i32 8, label %if.then
    i32 5, label %if.then
    i32 1, label %if.then
    i32 9, label %if.then18
    i32 4, label %if.then18
  ]

if.then:                                          ; preds = %for.body, %for.body, %for.body
  %add = add nsw i32 %d.0, 31
  br label %for.inc

if.then18:                                        ; preds = %for.body, %for.body
  %add19 = add nsw i32 %d.0, 30
  br label %for.inc

if.else20:                                        ; preds = %for.body
  %cmp21 = icmp eq i32 %k.0, 2
  br i1 %cmp21, label %if.then22, label %for.inc

if.then22:                                        ; preds = %if.else20
  br i1 %or.cond28, label %if.then29, label %if.else31

if.then29:                                        ; preds = %if.then22
  %add30 = add nsw i32 %d.0, 29
  br label %for.inc

if.else31:                                        ; preds = %if.then22
  %add32 = add nsw i32 %d.0, 28
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else20, %if.else31, %if.then29, %if.then18
  %d.1 = phi i32 [ %add, %if.then ], [ %add19, %if.then18 ], [ %add30, %if.then29 ], [ %add32, %if.else31 ], [ %d.0, %if.else20 ]
  %inc = add nuw i32 %k.0, 1
  br label %for.cond, !llvm.loop !13
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
