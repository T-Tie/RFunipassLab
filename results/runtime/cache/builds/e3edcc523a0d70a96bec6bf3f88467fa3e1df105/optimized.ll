; ModuleID = '<stdin>'
source_filename = "/tmp/tmp2hpictl0.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %n = alloca i32, align 4
  %year = alloca [200 x i32], align 16
  %month1 = alloca [200 x i32], align 16
  %month2 = alloca [200 x i32], align 16
  %chaju = alloca [200 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  call void @llvm.lifetime.start.p0(i64 noundef 800, ptr noundef nonnull %year) #7
  call void @llvm.lifetime.start.p0(i64 noundef 800, ptr noundef nonnull %month1) #7
  call void @llvm.lifetime.start.p0(i64 noundef 800, ptr noundef nonnull %month2) #7
  call void @llvm.lifetime.start.p0(i64 noundef 800, ptr noundef nonnull %chaju) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(800) %chaju, i8 noundef 0, i64 noundef 800, i1 noundef false)
  br label %for.cond

for.cond:                                         ; preds = %if.end114, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end114 ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.end125

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [200 x i32], ptr %year, i64 0, i64 %indvars.iv
  %arrayidx2 = getelementptr inbounds nuw [200 x i32], ptr %month1, i64 0, i64 %indvars.iv
  %arrayidx4 = getelementptr inbounds nuw [200 x i32], ptr %month2, i64 0, i64 %indvars.iv
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx4)
  %2 = load i32, ptr %arrayidx2, align 4, !tbaa !5, !invariant.load !9
  %3 = load i32, ptr %arrayidx4, align 4, !tbaa !5, !invariant.load !9
  %cmp10 = icmp sgt i32 %2, %3
  br i1 %cmp10, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 %3, ptr %arrayidx2, align 4, !tbaa !5
  store i32 %2, ptr %arrayidx4, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  %call21 = call noundef i32 @_Z9isRunNiani(i32 noundef %4) #7
  %tobool.not = icmp eq i32 %call21, 0
  %arrayidx106 = getelementptr inbounds nuw [200 x i32], ptr %chaju, i64 0, i64 %indvars.iv
  %smax53 = call i32 @llvm.smax.i32(i32 %2, i32 %3)
  br i1 %tobool.not, label %for.cond68, label %for.cond25

for.cond25:                                       ; preds = %if.end, %for.inc
  %k.0 = phi i32 [ %inc, %for.inc ], [ %2, %if.end ]
  %exitcond.not = icmp eq i32 %k.0, %smax53
  br i1 %exitcond.not, label %if.end114, label %for.body29

for.body29:                                       ; preds = %for.cond25
  switch i32 %k.0, label %for.inc [
    i32 1, label %for.inc.sink.split
    i32 3, label %for.inc.sink.split
    i32 5, label %for.inc.sink.split
    i32 7, label %for.inc.sink.split
    i32 8, label %for.inc.sink.split
    i32 10, label %for.inc.sink.split
    i32 12, label %for.inc.sink.split
    i32 2, label %if.then46
    i32 4, label %if.then58
    i32 6, label %if.then58
    i32 9, label %if.then58
    i32 11, label %if.then58
  ]

if.then46:                                        ; preds = %for.body29
  br label %for.inc.sink.split

if.then58:                                        ; preds = %for.body29, %for.body29, %for.body29, %for.body29
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %for.body29, %for.body29, %for.body29, %for.body29, %for.body29, %for.body29, %for.body29, %if.then46, %if.then58
  %.sink57 = phi i32 [ 30, %if.then58 ], [ 29, %if.then46 ], [ 31, %for.body29 ], [ 31, %for.body29 ], [ 31, %for.body29 ], [ 31, %for.body29 ], [ 31, %for.body29 ], [ 31, %for.body29 ], [ 31, %for.body29 ]
  %5 = load i32, ptr %arrayidx106, align 4, !tbaa !5
  %add = add nsw i32 %5, %.sink57
  store i32 %add, ptr %arrayidx106, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %for.body29
  %inc = add i32 %k.0, 1
  br label %for.cond25, !llvm.loop !10

for.cond68:                                       ; preds = %if.end, %for.inc111
  %k.1 = phi i32 [ %inc112, %for.inc111 ], [ %2, %if.end ]
  %exitcond54.not = icmp eq i32 %k.1, %smax53
  br i1 %exitcond54.not, label %if.end114, label %for.body72

for.body72:                                       ; preds = %for.cond68
  switch i32 %k.1, label %for.inc111 [
    i32 1, label %for.inc111.sink.split
    i32 3, label %for.inc111.sink.split
    i32 5, label %for.inc111.sink.split
    i32 7, label %for.inc111.sink.split
    i32 8, label %for.inc111.sink.split
    i32 10, label %for.inc111.sink.split
    i32 12, label %for.inc111.sink.split
    i32 2, label %if.then92
    i32 4, label %if.then104
    i32 6, label %if.then104
    i32 9, label %if.then104
    i32 11, label %if.then104
  ]

if.then92:                                        ; preds = %for.body72
  br label %for.inc111.sink.split

if.then104:                                       ; preds = %for.body72, %for.body72, %for.body72, %for.body72
  br label %for.inc111.sink.split

for.inc111.sink.split:                            ; preds = %for.body72, %for.body72, %for.body72, %for.body72, %for.body72, %for.body72, %for.body72, %if.then92, %if.then104
  %.sink58 = phi i32 [ 30, %if.then104 ], [ 28, %if.then92 ], [ 31, %for.body72 ], [ 31, %for.body72 ], [ 31, %for.body72 ], [ 31, %for.body72 ], [ 31, %for.body72 ], [ 31, %for.body72 ], [ 31, %for.body72 ]
  %6 = load i32, ptr %arrayidx106, align 4, !tbaa !5
  %add89 = add nsw i32 %6, %.sink58
  store i32 %add89, ptr %arrayidx106, align 4, !tbaa !5
  br label %for.inc111

for.inc111:                                       ; preds = %for.inc111.sink.split, %for.body72
  %inc112 = add i32 %k.1, 1
  br label %for.cond68, !llvm.loop !13

if.end114:                                        ; preds = %for.cond25, %for.cond68
  %7 = load i32, ptr %arrayidx106, align 4, !tbaa !5, !invariant.load !9
  %rem = srem i32 %7, 7
  %cmp117 = icmp eq i32 %rem, 0
  %str.1.str = select i1 %cmp117, ptr @str.1, ptr @str
  %puts50 = call i32 @puts(ptr noundef nonnull dereferenceable(1) %str.1.str) #7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !14

for.end125:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 800, ptr noundef nonnull %chaju) #7
  call void @llvm.lifetime.end.p0(i64 noundef 800, ptr noundef nonnull %month2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 800, ptr noundef nonnull %month1) #7
  call void @llvm.lifetime.end.p0(i64 noundef 800, ptr noundef nonnull %year) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z9isRunNiani(i32 noundef %year) #4 {
entry:
  %rem = srem i32 %year, 400
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %0 = and i32 %year, 3
  %cmp2 = icmp eq i32 %0, 0
  %rem3 = srem i32 %year, 100
  %cmp4 = icmp ne i32 %rem3, 0
  %or.cond = and i1 %cmp2, %cmp4
  %spec.select = zext i1 %or.cond to i32
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false, %entry
  %result.0 = phi i32 [ 1, %entry ], [ %spec.select, %lor.lhs.false ]
  ret i32 %result.0
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
