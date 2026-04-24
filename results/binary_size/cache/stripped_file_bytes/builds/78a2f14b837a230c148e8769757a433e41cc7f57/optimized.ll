; ModuleID = '<stdin>'
source_filename = "/tmp/tmpl8gauere.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@__const.main.month = private unnamed_addr constant [12 x i32] [i32 31, i32 29, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@__const.main.month.2 = private unnamed_addr constant [12 x i32] [i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %year) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m2) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp25 = icmp sgt i32 %0, 0
  br i1 %cmp25, label %for.body, label %for.end46

for.body:                                         ; preds = %entry, %for.inc44
  %j.026 = phi i32 [ %inc45, %for.inc44 ], [ 0, %entry ]
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %year, ptr noundef nonnull %m1, ptr noundef nonnull %m2)
  %1 = load i32, ptr %m1, align 4, !tbaa !5
  %2 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp2 = icmp sgt i32 %1, %2
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 %2, ptr %m1, align 4, !tbaa !5
  store i32 %1, ptr %m2, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %3 = phi i32 [ %1, %if.then ], [ %2, %for.body ]
  %4 = phi i32 [ %2, %if.then ], [ %1, %for.body ]
  %5 = load i32, ptr %year, align 4, !tbaa !5
  %6 = and i32 %5, 3
  %cmp3 = icmp eq i32 %6, 0
  %rem4 = srem i32 %5, 100
  %cmp5.not = icmp ne i32 %rem4, 0
  %or.cond.not17 = and i1 %cmp3, %cmp5.not
  %rem6 = srem i32 %5, 400
  %cmp7 = icmp eq i32 %rem6, 0
  %or.cond16 = or i1 %cmp7, %or.cond.not17
  %cmp1321 = icmp slt i32 %4, %3
  br i1 %or.cond16, label %if.then11, label %if.else

if.else:                                          ; preds = %if.end
  br i1 %cmp1321, label %for.body24.preheader, label %for.inc44

for.body24.preheader:                             ; preds = %if.else
  %7 = sext i32 %4 to i64
  %wide.trip.count = sext i32 %3 to i64
  %8 = sub nsw i64 %wide.trip.count, %7
  %min.iters.check38 = icmp ult i64 %8, 4
  br i1 %min.iters.check38, label %for.body24.preheader53, label %vector.ph39

vector.ph39:                                      ; preds = %for.body24.preheader
  %n.vec41 = and i64 %8, -4
  %9 = add nsw i64 %n.vec41, %7
  %invariant.op = add i64 %7, -1
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %vector.ph39
  %index43 = phi i64 [ 0, %vector.ph39 ], [ %index.next47, %vector.body42 ]
  %vec.phi44 = phi <4 x i32> [ zeroinitializer, %vector.ph39 ], [ %11, %vector.body42 ]
  %.reass = add i64 %index43, %invariant.op
  %10 = getelementptr inbounds [12 x i32], ptr @__const.main.month.2, i64 0, i64 %.reass
  %wide.load46 = load <4 x i32>, ptr %10, align 4, !tbaa !5
  %11 = add <4 x i32> %wide.load46, %vec.phi44
  %index.next47 = add nuw i64 %index43, 4
  %12 = icmp eq i64 %index.next47, %n.vec41
  br i1 %12, label %middle.block48, label %vector.body42, !llvm.loop !9

middle.block48:                                   ; preds = %vector.body42
  %13 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %11)
  %cmp.n49 = icmp eq i64 %8, %n.vec41
  br i1 %cmp.n49, label %for.end31, label %for.body24.preheader53

for.body24.preheader53:                           ; preds = %for.body24.preheader, %middle.block48
  %indvars.iv.ph = phi i64 [ %7, %for.body24.preheader ], [ %9, %middle.block48 ]
  %q.120.ph = phi i32 [ 0, %for.body24.preheader ], [ %13, %middle.block48 ]
  br label %for.body24

if.then11:                                        ; preds = %if.end
  br i1 %cmp1321, label %for.body14.preheader, label %for.inc44

for.body14.preheader:                             ; preds = %if.then11
  %14 = sext i32 %4 to i64
  %wide.trip.count33 = sext i32 %3 to i64
  %15 = sub nsw i64 %wide.trip.count33, %14
  %min.iters.check = icmp ult i64 %15, 4
  br i1 %min.iters.check, label %for.body14.preheader52, label %vector.ph

vector.ph:                                        ; preds = %for.body14.preheader
  %n.vec = and i64 %15, -4
  %16 = add nsw i64 %n.vec, %14
  %invariant.op60 = add i64 %14, -1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %18, %vector.body ]
  %.reass61 = add i64 %index, %invariant.op60
  %17 = getelementptr inbounds [12 x i32], ptr @__const.main.month, i64 0, i64 %.reass61
  %wide.load = load <4 x i32>, ptr %17, align 4, !tbaa !5
  %18 = add <4 x i32> %wide.load, %vec.phi
  %index.next = add nuw i64 %index, 4
  %19 = icmp eq i64 %index.next, %n.vec
  br i1 %19, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %20 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %18)
  %cmp.n = icmp eq i64 %15, %n.vec
  br i1 %cmp.n, label %for.end, label %for.body14.preheader52

for.body14.preheader52:                           ; preds = %for.body14.preheader, %middle.block
  %indvars.iv29.ph = phi i64 [ %14, %for.body14.preheader ], [ %16, %middle.block ]
  %q.023.ph = phi i32 [ 0, %for.body14.preheader ], [ %20, %middle.block ]
  br label %for.body14

for.body14:                                       ; preds = %for.body14.preheader52, %for.body14
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.body14 ], [ %indvars.iv29.ph, %for.body14.preheader52 ]
  %q.023 = phi i32 [ %add, %for.body14 ], [ %q.023.ph, %for.body14.preheader52 ]
  %21 = add nsw i64 %indvars.iv29, -1
  %arrayidx = getelementptr inbounds [12 x i32], ptr @__const.main.month, i64 0, i64 %21
  %22 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %add = add nsw i32 %22, %q.023
  %indvars.iv.next30 = add nsw i64 %indvars.iv29, 1
  %exitcond34.not = icmp eq i64 %indvars.iv.next30, %wide.trip.count33
  br i1 %exitcond34.not, label %for.end, label %for.body14, !llvm.loop !15

for.end:                                          ; preds = %for.body14, %middle.block
  %add.lcssa = phi i32 [ %20, %middle.block ], [ %add, %for.body14 ]
  %23 = srem i32 %add.lcssa, 7
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %for.inc44, label %if.else41

for.body24:                                       ; preds = %for.body24.preheader53, %for.body24
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body24 ], [ %indvars.iv.ph, %for.body24.preheader53 ]
  %q.120 = phi i32 [ %add28, %for.body24 ], [ %q.120.ph, %for.body24.preheader53 ]
  %25 = add nsw i64 %indvars.iv, -1
  %arrayidx27 = getelementptr inbounds [12 x i32], ptr @__const.main.month.2, i64 0, i64 %25
  %26 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %add28 = add nsw i32 %26, %q.120
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end31, label %for.body24, !llvm.loop !16

for.end31:                                        ; preds = %for.body24, %middle.block48
  %add28.lcssa = phi i32 [ %13, %middle.block48 ], [ %add28, %for.body24 ]
  %27 = srem i32 %add28.lcssa, 7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %for.inc44, label %if.else41

if.else41:                                        ; preds = %for.end, %for.end31
  br label %for.inc44

for.inc44:                                        ; preds = %for.end, %for.end31, %if.else, %if.then11, %if.else41
  %str.1.sink = phi ptr [ @str, %if.else41 ], [ @str.1, %if.then11 ], [ @str.1, %if.else ], [ @str.1, %for.end31 ], [ @str.1, %for.end ]
  %puts11 = call i32 @puts(ptr nonnull dereferenceable(1) %str.1.sink)
  %inc45 = add nuw nsw i32 %j.026, 1
  %29 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %inc45, %29
  br i1 %cmp, label %for.body, label %for.end46, !llvm.loop !17

for.end46:                                        ; preds = %for.inc44, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %year) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!9 = distinct !{!9, !10, !11, !12, !13}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !10, !11, !12, !13}
!15 = distinct !{!15, !10, !11, !12}
!16 = distinct !{!16, !10, !11, !12}
!17 = distinct !{!17, !10, !11}
