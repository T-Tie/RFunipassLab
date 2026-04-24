; ModuleID = '<stdin>'
source_filename = "/tmp/tmp05_gb11e.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.2 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %year = alloca [200 x i32], align 16
  %mon1 = alloca [200 x i32], align 16
  %mon2 = alloca [200 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 800, ptr noundef nonnull align 16 %year) #6
  call void @llvm.lifetime.start.p0(i64 noundef 800, ptr noundef nonnull align 16 %mon1) #6
  call void @llvm.lifetime.start.p0(i64 noundef 800, ptr noundef nonnull align 16 %mon2) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond6

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [200 x i32], ptr %year, i64 0, i64 %indvars.iv
  %arrayidx2 = getelementptr inbounds nuw [200 x i32], ptr %mon1, i64 0, i64 %indvars.iv
  %arrayidx4 = getelementptr inbounds nuw [200 x i32], ptr %mon2, i64 0, i64 %indvars.iv
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx4)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond6:                                        ; preds = %for.cond, %for.inc84
  %2 = phi i32 [ %.pre, %for.inc84 ], [ %0, %for.cond ]
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %for.inc84 ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp7 = icmp slt i64 %indvars.iv20, %3
  br i1 %cmp7, label %for.body8, label %for.end86

for.body8:                                        ; preds = %for.cond6
  %arrayidx10 = getelementptr inbounds nuw [200 x i32], ptr %year, i64 0, i64 %indvars.iv20
  %4 = load i32, ptr %arrayidx10, align 4, !tbaa !5, !invariant.load !12
  %5 = and i32 %4, 3
  %cmp11 = icmp eq i32 %5, 0
  %rem14 = srem i32 %4, 100
  %cmp15 = icmp ne i32 %rem14, 0
  %or.cond = and i1 %cmp11, %cmp15
  %rem18 = srem i32 %4, 400
  %cmp19 = icmp eq i32 %rem18, 0
  %or.cond15 = or i1 %cmp19, %or.cond
  %f.0 = select i1 %or.cond15, i32 29, i32 28
  %arrayidx22 = getelementptr inbounds nuw [200 x i32], ptr %mon1, i64 0, i64 %indvars.iv20
  %6 = load i32, ptr %arrayidx22, align 4, !tbaa !5, !invariant.load !12
  %smax = call i32 @llvm.smax.i32(i32 %6, i32 noundef 1)
  br label %for.cond20

for.cond20:                                       ; preds = %outlined_ir_func_0.exit, %for.body8
  %j.0 = phi i32 [ 1, %for.body8 ], [ %inc44.i, %outlined_ir_func_0.exit ]
  %t1.0 = phi i32 [ 0, %for.body8 ], [ %add.i, %outlined_ir_func_0.exit ]
  %exitcond.not = icmp eq i32 %j.0, %smax
  br i1 %exitcond.not, label %for.cond46.preheader, label %for.body24

for.cond46.preheader:                             ; preds = %for.cond20
  %arrayidx48 = getelementptr inbounds nuw [200 x i32], ptr %mon2, i64 0, i64 %indvars.iv20
  %7 = load i32, ptr %arrayidx48, align 4, !tbaa !5, !invariant.load !12
  %smax18 = call i32 @llvm.smax.i32(i32 %7, i32 noundef 1)
  br label %for.cond46

for.body24:                                       ; preds = %for.cond20
  switch i32 %j.0, label %for.cond20.exitStub.fold.split.i [
    i32 1, label %outlined_ir_func_0.exit
    i32 3, label %outlined_ir_func_0.exit
    i32 5, label %outlined_ir_func_0.exit
    i32 7, label %outlined_ir_func_0.exit
    i32 8, label %outlined_ir_func_0.exit
    i32 10, label %outlined_ir_func_0.exit
    i32 2, label %if.then39.i
  ]

if.then39.i:                                      ; preds = %for.body24
  br label %outlined_ir_func_0.exit

for.cond20.exitStub.fold.split.i:                 ; preds = %for.body24
  br label %outlined_ir_func_0.exit

outlined_ir_func_0.exit:                          ; preds = %for.body24, %for.body24, %for.body24, %for.body24, %for.body24, %for.body24, %if.then39.i, %for.cond20.exitStub.fold.split.i
  %.sink.i = phi i32 [ %f.0, %if.then39.i ], [ 31, %for.body24 ], [ 31, %for.body24 ], [ 31, %for.body24 ], [ 31, %for.body24 ], [ 31, %for.body24 ], [ 31, %for.body24 ], [ 30, %for.cond20.exitStub.fold.split.i ]
  %add.i = add nuw nsw i32 %.sink.i, %t1.0
  %inc44.i = add nuw i32 %j.0, 1
  br label %for.cond20

for.cond46:                                       ; preds = %for.cond46.preheader, %outlined_ir_func_0.exit6
  %k.0 = phi i32 [ %inc44.i4, %outlined_ir_func_0.exit6 ], [ 1, %for.cond46.preheader ]
  %t2.0 = phi i32 [ %add.i3, %outlined_ir_func_0.exit6 ], [ 0, %for.cond46.preheader ]
  %exitcond19.not = icmp eq i32 %k.0, %smax18
  br i1 %exitcond19.not, label %for.end72, label %for.body50

for.body50:                                       ; preds = %for.cond46
  switch i32 %k.0, label %for.cond20.exitStub.fold.split.i5 [
    i32 1, label %outlined_ir_func_0.exit6
    i32 3, label %outlined_ir_func_0.exit6
    i32 5, label %outlined_ir_func_0.exit6
    i32 7, label %outlined_ir_func_0.exit6
    i32 8, label %outlined_ir_func_0.exit6
    i32 10, label %outlined_ir_func_0.exit6
    i32 2, label %if.then39.i1
  ]

if.then39.i1:                                     ; preds = %for.body50
  br label %outlined_ir_func_0.exit6

for.cond20.exitStub.fold.split.i5:                ; preds = %for.body50
  br label %outlined_ir_func_0.exit6

outlined_ir_func_0.exit6:                         ; preds = %for.body50, %for.body50, %for.body50, %for.body50, %for.body50, %for.body50, %if.then39.i1, %for.cond20.exitStub.fold.split.i5
  %.sink.i2 = phi i32 [ %f.0, %if.then39.i1 ], [ 31, %for.body50 ], [ 31, %for.body50 ], [ 31, %for.body50 ], [ 31, %for.body50 ], [ 31, %for.body50 ], [ 31, %for.body50 ], [ 30, %for.cond20.exitStub.fold.split.i5 ]
  %add.i3 = add nuw nsw i32 %.sink.i2, %t2.0
  %inc44.i4 = add nuw i32 %k.0, 1
  br label %for.cond46

for.end72:                                        ; preds = %for.cond46
  %sub = sub nsw i32 %t2.0, %t1.0
  %rem73 = srem i32 %sub, 7
  %cmp74 = icmp eq i32 %rem73, 0
  br i1 %cmp74, label %for.inc84, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %for.end72
  %sub76 = sub nsw i32 %t1.0, %t2.0
  %rem77 = srem i32 %sub76, 7
  %cmp78 = icmp eq i32 %rem77, 0
  %spec.select = select i1 %cmp78, ptr @str.2, ptr @str
  br label %for.inc84

for.inc84:                                        ; preds = %lor.lhs.false75, %for.end72
  %str.2.sink = phi ptr [ @str.2, %for.end72 ], [ %spec.select, %lor.lhs.false75 ]
  %puts16 = call i32 @puts(ptr noundef nonnull dereferenceable(1) %str.2.sink) #7
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !13

for.end86:                                        ; preds = %for.cond6
  call void @llvm.lifetime.end.p0(i64 noundef 800, ptr noundef nonnull %mon2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 800, ptr noundef nonnull %mon1) #7
  call void @llvm.lifetime.end.p0(i64 noundef 800, ptr noundef nonnull %year) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
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
declare noundef i32 @puts(ptr noundef readonly captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind willreturn }
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
!12 = !{}
!13 = distinct !{!13, !10, !11}
