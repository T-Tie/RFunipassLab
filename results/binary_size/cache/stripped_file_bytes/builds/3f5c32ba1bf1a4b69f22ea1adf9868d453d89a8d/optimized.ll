; ModuleID = '<stdin>'
source_filename = "/tmp/tmp05_gb11e.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %year = alloca [200 x i32], align 16
  %mon1 = alloca [200 x i32], align 16
  %mon2 = alloca [200 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %year) #5
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %mon1) #5
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %mon2) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp46 = icmp sgt i32 %0, 0
  br i1 %cmp46, label %for.body, label %for.end86

for.cond6.preheader:                              ; preds = %for.body
  %1 = icmp sgt i32 %2, 0
  br i1 %1, label %for.body8, label %for.end86

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [200 x i32], ptr %year, i64 0, i64 %indvars.iv
  %arrayidx2 = getelementptr inbounds nuw [200 x i32], ptr %mon1, i64 0, i64 %indvars.iv
  %arrayidx4 = getelementptr inbounds nuw [200 x i32], ptr %mon2, i64 0, i64 %indvars.iv
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx4)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %3
  br i1 %cmp, label %for.body, label %for.cond6.preheader, !llvm.loop !9

for.body8:                                        ; preds = %for.cond6.preheader, %for.inc84
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %for.inc84 ], [ 0, %for.cond6.preheader ]
  %arrayidx10 = getelementptr inbounds nuw [200 x i32], ptr %year, i64 0, i64 %indvars.iv59
  %4 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %5 = and i32 %4, 3
  %cmp11 = icmp ne i32 %5, 0
  %rem14 = srem i32 %4, 100
  %cmp15.not = icmp eq i32 %rem14, 0
  %or.cond44 = or i1 %cmp11, %cmp15.not
  br i1 %or.cond44, label %lor.lhs.false, label %if.end

lor.lhs.false:                                    ; preds = %for.body8
  %rem18 = srem i32 %4, 400
  %cmp19 = icmp eq i32 %rem18, 0
  %spec.select = select i1 %cmp19, i32 29, i32 28
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false, %for.body8
  %f.0 = phi i32 [ 29, %for.body8 ], [ %spec.select, %lor.lhs.false ]
  %arrayidx22 = getelementptr inbounds nuw [200 x i32], ptr %mon1, i64 0, i64 %indvars.iv59
  %6 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %cmp2348 = icmp sgt i32 %6, 1
  br i1 %cmp2348, label %for.body24.preheader, label %for.cond46.preheader

for.body24.preheader:                             ; preds = %if.end
  %7 = add nsw i32 %6, -1
  %min.iters.check65 = icmp ult i32 %6, 5
  br i1 %min.iters.check65, label %for.body24.preheader82, label %vector.ph66

vector.ph66:                                      ; preds = %for.body24.preheader
  %n.vec68 = and i32 %7, -4
  %8 = or disjoint i32 %n.vec68, 1
  %broadcast.splatinsert69 = insertelement <4 x i32> poison, i32 %f.0, i64 0
  %broadcast.splat70 = shufflevector <4 x i32> %broadcast.splatinsert69, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph66
  %index72 = phi i32 [ 0, %vector.ph66 ], [ %index.next75, %vector.body71 ]
  %vec.phi73 = phi <4 x i32> [ zeroinitializer, %vector.ph66 ], [ %17, %vector.body71 ]
  %vec.ind74 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph66 ], [ %vec.ind.next76, %vector.body71 ]
  %9 = and <4 x i32> %vec.ind74, splat (i32 2147483645)
  %10 = and <4 x i32> %vec.ind74, splat (i32 2147483641)
  %11 = icmp eq <4 x i32> %10, splat (i32 1)
  %12 = icmp eq <4 x i32> %9, splat (i32 8)
  %13 = or <4 x i1> %11, %12
  %14 = icmp eq <4 x i32> %vec.ind74, splat (i32 2)
  %15 = select <4 x i1> %14, <4 x i32> %broadcast.splat70, <4 x i32> splat (i32 30)
  %16 = select <4 x i1> %13, <4 x i32> splat (i32 31), <4 x i32> %15
  %17 = add <4 x i32> %16, %vec.phi73
  %index.next75 = add nuw i32 %index72, 4
  %vec.ind.next76 = add <4 x i32> %vec.ind74, splat (i32 4)
  %18 = icmp eq i32 %index.next75, %n.vec68
  br i1 %18, label %middle.block77, label %vector.body71, !llvm.loop !12

middle.block77:                                   ; preds = %vector.body71
  %19 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %17)
  %cmp.n78 = icmp eq i32 %7, %n.vec68
  br i1 %cmp.n78, label %for.cond46.preheader, label %for.body24.preheader82

for.body24.preheader82:                           ; preds = %for.body24.preheader, %middle.block77
  %t1.050.ph = phi i32 [ 0, %for.body24.preheader ], [ %19, %middle.block77 ]
  %j.049.ph = phi i32 [ 1, %for.body24.preheader ], [ %8, %middle.block77 ]
  br label %for.body24

for.cond46.preheader:                             ; preds = %for.body24, %middle.block77, %if.end
  %t1.0.lcssa = phi i32 [ 0, %if.end ], [ %19, %middle.block77 ], [ %add, %for.body24 ]
  %arrayidx48 = getelementptr inbounds nuw [200 x i32], ptr %mon2, i64 0, i64 %indvars.iv59
  %20 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %cmp4951 = icmp sgt i32 %20, 1
  br i1 %cmp4951, label %for.body50.preheader, label %for.end72

for.body50.preheader:                             ; preds = %for.cond46.preheader
  %21 = add nsw i32 %20, -1
  %min.iters.check = icmp ult i32 %20, 5
  br i1 %min.iters.check, label %for.body50.preheader81, label %vector.ph

vector.ph:                                        ; preds = %for.body50.preheader
  %n.vec = and i32 %21, -4
  %22 = or disjoint i32 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %f.0, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %31, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %23 = and <4 x i32> %vec.ind, splat (i32 2147483645)
  %24 = and <4 x i32> %vec.ind, splat (i32 2147483641)
  %25 = icmp eq <4 x i32> %24, splat (i32 1)
  %26 = icmp eq <4 x i32> %23, splat (i32 8)
  %27 = or <4 x i1> %25, %26
  %28 = icmp eq <4 x i32> %vec.ind, splat (i32 2)
  %29 = select <4 x i1> %28, <4 x i32> %broadcast.splat, <4 x i32> splat (i32 30)
  %30 = select <4 x i1> %27, <4 x i32> splat (i32 31), <4 x i32> %29
  %31 = add <4 x i32> %30, %vec.phi
  %index.next = add nuw i32 %index, 4
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %32 = icmp eq i32 %index.next, %n.vec
  br i1 %32, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %33 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %31)
  %cmp.n = icmp eq i32 %21, %n.vec
  br i1 %cmp.n, label %for.end72, label %for.body50.preheader81

for.body50.preheader81:                           ; preds = %for.body50.preheader, %middle.block
  %t2.053.ph = phi i32 [ 0, %for.body50.preheader ], [ %33, %middle.block ]
  %k.052.ph = phi i32 [ 1, %for.body50.preheader ], [ %22, %middle.block ]
  br label %for.body50

for.body24:                                       ; preds = %for.body24.preheader82, %for.body24
  %t1.050 = phi i32 [ %add, %for.body24 ], [ %t1.050.ph, %for.body24.preheader82 ]
  %j.049 = phi i32 [ %inc44, %for.body24 ], [ %j.049.ph, %for.body24.preheader82 ]
  %34 = and i32 %j.049, 2147483645
  %35 = and i32 %j.049, 2147483641
  %or.cond2 = icmp eq i32 %35, 1
  %36 = icmp eq i32 %34, 8
  %or.cond4 = or i1 %or.cond2, %36
  %cmp38 = icmp eq i32 %j.049, 2
  %f.0. = select i1 %cmp38, i32 %f.0, i32 30
  %day.0 = select i1 %or.cond4, i32 31, i32 %f.0.
  %add = add nuw nsw i32 %day.0, %t1.050
  %inc44 = add nuw nsw i32 %j.049, 1
  %exitcond.not = icmp eq i32 %inc44, %6
  br i1 %exitcond.not, label %for.cond46.preheader, label %for.body24, !llvm.loop !16

for.body50:                                       ; preds = %for.body50.preheader81, %for.body50
  %t2.053 = phi i32 [ %add69, %for.body50 ], [ %t2.053.ph, %for.body50.preheader81 ]
  %k.052 = phi i32 [ %inc71, %for.body50 ], [ %k.052.ph, %for.body50.preheader81 ]
  %37 = and i32 %k.052, 2147483645
  %38 = and i32 %k.052, 2147483641
  %or.cond7 = icmp eq i32 %38, 1
  %39 = icmp eq i32 %37, 8
  %or.cond9 = or i1 %or.cond7, %39
  %cmp64 = icmp eq i32 %k.052, 2
  %f.0.45 = select i1 %cmp64, i32 %f.0, i32 30
  %day.1 = select i1 %or.cond9, i32 31, i32 %f.0.45
  %add69 = add nuw nsw i32 %day.1, %t2.053
  %inc71 = add nuw nsw i32 %k.052, 1
  %exitcond58.not = icmp eq i32 %inc71, %20
  br i1 %exitcond58.not, label %for.end72, label %for.body50, !llvm.loop !17

for.end72:                                        ; preds = %for.body50, %middle.block, %for.cond46.preheader
  %t2.0.lcssa = phi i32 [ 0, %for.cond46.preheader ], [ %33, %middle.block ], [ %add69, %for.body50 ]
  %sub = sub nsw i32 %t2.0.lcssa, %t1.0.lcssa
  %rem73 = srem i32 %sub, 7
  %cmp74 = icmp eq i32 %rem73, 0
  br i1 %cmp74, label %for.inc84, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %for.end72
  %sub76 = sub nsw i32 %t1.0.lcssa, %t2.0.lcssa
  %rem77 = srem i32 %sub76, 7
  %cmp78 = icmp eq i32 %rem77, 0
  %spec.select63 = select i1 %cmp78, ptr @str.1, ptr @str
  br label %for.inc84

for.inc84:                                        ; preds = %lor.lhs.false75, %for.end72
  %str.1.sink = phi ptr [ @str.1, %for.end72 ], [ %spec.select63, %lor.lhs.false75 ]
  %puts43 = call i32 @puts(ptr nonnull dereferenceable(1) %str.1.sink)
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  %40 = load i32, ptr %n, align 4, !tbaa !5
  %41 = sext i32 %40 to i64
  %cmp7 = icmp slt i64 %indvars.iv.next60, %41
  br i1 %cmp7, label %for.body8, label %for.end86, !llvm.loop !18

for.end86:                                        ; preds = %for.inc84, %entry, %for.cond6.preheader
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %mon2) #5
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %mon1) #5
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %year) #5
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !10, !11, !13, !14}
!16 = distinct !{!16, !10, !11, !13}
!17 = distinct !{!17, !10, !11, !13}
!18 = distinct !{!18, !10, !11}
