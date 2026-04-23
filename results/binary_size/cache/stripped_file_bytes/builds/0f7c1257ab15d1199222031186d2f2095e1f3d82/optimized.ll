; ModuleID = '<stdin>'
source_filename = "/tmp/tmpols9p1kl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d+%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %m) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %m, ptr noundef nonnull align 4 %n)
  %0 = load i32, ptr %m, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %3 = zext i32 %2 to i64
  %4 = call ptr @llvm.stacksave.p0()
  %5 = mul nuw i64 %3, %1
  %vla = alloca i32, i64 %5, align 16
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %for.end ], [ 0, %entry ]
  %6 = load i32, ptr %m, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp = icmp slt i64 %indvars.iv9, %7
  br i1 %cmp, label %for.cond1.preheader, label %for.end9

for.cond1.preheader:                              ; preds = %for.cond
  %8 = mul nuw nsw i64 %indvars.iv9, %3
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %8
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %10 = sext i32 %9 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %10
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw i32, ptr %arrayidx, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  %11 = zext i32 %6 to i64
  %vla10 = alloca i32, i64 %11, align 16
  %12 = load i32, ptr %n, align 4, !tbaa !5
  %13 = zext i32 %12 to i64
  %vla11 = alloca i32, i64 %13, align 16
  %smax = call i32 @llvm.smax.i32(i32 %12, i32 noundef 1)
  %smax19 = call i32 @llvm.smax.i32(i32 %6, i32 noundef 0)
  %wide.trip.count20 = zext nneg i32 %smax19 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond12

for.cond12:                                       ; preds = %for.end38, %for.end9
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.end38 ], [ 0, %for.end9 ]
  %exitcond21.not = icmp eq i64 %indvars.iv15, %wide.trip.count20
  br i1 %exitcond21.not, label %for.cond42.preheader, label %for.body14

for.cond42.preheader:                             ; preds = %for.cond12
  %smax26 = call i32 @llvm.smax.i32(i32 %6, i32 noundef 1)
  %smax32 = call i32 @llvm.smax.i32(i32 %12, i32 noundef 0)
  %wide.trip.count33 = zext nneg i32 %smax32 to i64
  %wide.trip.count27 = zext nneg i32 %smax26 to i64
  br label %for.cond42

for.body14:                                       ; preds = %for.cond12
  %14 = mul nuw nsw i64 %indvars.iv15, %3
  %arrayidx16 = getelementptr inbounds nuw i32, ptr %vla, i64 %14
  %15 = load i32, ptr %arrayidx16, align 4, !tbaa !5, !invariant.load !13
  %arrayidx19 = getelementptr inbounds nuw i32, ptr %vla10, i64 %indvars.iv15
  store i32 %15, ptr %arrayidx19, align 4, !tbaa !5
  br label %for.cond20

for.cond20:                                       ; preds = %if.end, %for.body14
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %if.end ], [ 1, %for.body14 ]
  %exitcond.not = icmp eq i64 %indvars.iv12, %wide.trip.count
  br i1 %exitcond.not, label %for.end38, label %for.body22

for.body22:                                       ; preds = %for.cond20
  %arrayidx26 = getelementptr inbounds nuw i32, ptr %arrayidx16, i64 %indvars.iv12
  %16 = load i32, ptr %arrayidx26, align 4, !tbaa !5, !invariant.load !13
  %cmp29 = icmp sgt i32 %16, %15
  br i1 %cmp29, label %if.then, label %if.end

if.then:                                          ; preds = %for.body22
  store i32 %16, ptr %arrayidx19, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body22
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  br label %for.cond20, !llvm.loop !14

for.end38:                                        ; preds = %for.cond20
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  br label %for.cond12, !llvm.loop !15

for.cond42:                                       ; preds = %for.cond42.preheader, %for.end70
  %indvars.iv29 = phi i64 [ 0, %for.cond42.preheader ], [ %indvars.iv.next30, %for.end70 ]
  %exitcond34.not = icmp eq i64 %indvars.iv29, %wide.trip.count33
  br i1 %exitcond34.not, label %for.cond74, label %for.body44

for.body44:                                       ; preds = %for.cond42
  %arrayidx47 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv29
  %17 = load i32, ptr %arrayidx47, align 4, !tbaa !5, !invariant.load !13
  %arrayidx49 = getelementptr inbounds nuw i32, ptr %vla11, i64 %indvars.iv29
  store i32 %17, ptr %arrayidx49, align 4, !tbaa !5
  br label %for.cond50

for.cond50:                                       ; preds = %if.end67, %for.body44
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %if.end67 ], [ 1, %for.body44 ]
  %exitcond28.not = icmp eq i64 %indvars.iv22, %wide.trip.count27
  br i1 %exitcond28.not, label %for.end70, label %for.body52

for.body52:                                       ; preds = %for.cond50
  %18 = mul nuw nsw i64 %indvars.iv22, %3
  %gep = getelementptr inbounds nuw i32, ptr %arrayidx47, i64 %18
  %19 = load i32, ptr %gep, align 4, !tbaa !5, !invariant.load !13
  %cmp59 = icmp slt i32 %19, %17
  br i1 %cmp59, label %if.then60, label %if.end67

if.then60:                                        ; preds = %for.body52
  store i32 %19, ptr %arrayidx49, align 4, !tbaa !5
  br label %if.end67

if.end67:                                         ; preds = %if.then60, %for.body52
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.cond50, !llvm.loop !16

for.end70:                                        ; preds = %for.cond50
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond42, !llvm.loop !17

for.cond74:                                       ; preds = %for.cond42, %for.end99
  %.pre4142 = phi i32 [ %.pre4143, %for.end99 ], [ %12, %for.cond42 ]
  %20 = phi i32 [ %25, %for.end99 ], [ %12, %for.cond42 ]
  %21 = phi i32 [ %.pre, %for.end99 ], [ %6, %for.cond42 ]
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.end99 ], [ 0, %for.cond42 ]
  %s.0 = phi i32 [ %s.1, %for.end99 ], [ 0, %for.cond42 ]
  %22 = sext i32 %21 to i64
  %cmp75 = icmp slt i64 %indvars.iv38, %22
  br i1 %cmp75, label %for.cond77.preheader, label %for.end102

for.cond77.preheader:                             ; preds = %for.cond74
  %23 = mul nuw nsw i64 %indvars.iv38, %3
  %arrayidx81 = getelementptr inbounds nuw i32, ptr %vla, i64 %23
  %arrayidx85 = getelementptr inbounds nuw i32, ptr %vla10, i64 %indvars.iv38
  %24 = trunc nuw nsw i64 %indvars.iv38 to i32
  br label %for.cond77

for.cond77:                                       ; preds = %for.cond77.preheader, %if.end96
  %.pre4143 = phi i32 [ %.pre4142, %for.cond77.preheader ], [ %.pre41, %if.end96 ]
  %25 = phi i32 [ %20, %for.cond77.preheader ], [ %.pre41, %if.end96 ]
  %indvars.iv35 = phi i64 [ 0, %for.cond77.preheader ], [ %indvars.iv.next36, %if.end96 ]
  %s.1 = phi i32 [ %s.0, %for.cond77.preheader ], [ %s.2, %if.end96 ]
  %26 = sext i32 %25 to i64
  %cmp78 = icmp slt i64 %indvars.iv35, %26
  br i1 %cmp78, label %for.body79, label %for.end99

for.body79:                                       ; preds = %for.cond77
  %arrayidx83 = getelementptr inbounds nuw i32, ptr %arrayidx81, i64 %indvars.iv35
  %27 = load i32, ptr %arrayidx83, align 4, !tbaa !5, !invariant.load !13
  %28 = load i32, ptr %arrayidx85, align 4, !tbaa !5, !invariant.load !13
  %cmp86 = icmp eq i32 %27, %28
  br i1 %cmp86, label %land.lhs.true, label %if.end96

land.lhs.true:                                    ; preds = %for.body79
  %arrayidx92 = getelementptr inbounds nuw i32, ptr %vla11, i64 %indvars.iv35
  %29 = load i32, ptr %arrayidx92, align 4, !tbaa !5, !invariant.load !13
  %cmp93 = icmp eq i32 %27, %29
  br i1 %cmp93, label %if.then94, label %if.end96

if.then94:                                        ; preds = %land.lhs.true
  %30 = trunc nuw nsw i64 %indvars.iv35 to i32
  %call95 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %24, i32 noundef %30) #7
  %add = add nsw i32 %s.1, 1
  %.pre41.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %land.lhs.true, %for.body79
  %.pre41 = phi i32 [ %.pre41.pre, %if.then94 ], [ %.pre4143, %land.lhs.true ], [ %.pre4143, %for.body79 ]
  %s.2 = phi i32 [ %add, %if.then94 ], [ %s.1, %land.lhs.true ], [ %s.1, %for.body79 ]
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond77, !llvm.loop !18

for.end99:                                        ; preds = %for.cond77
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %.pre = load i32, ptr %m, align 4, !tbaa !5
  br label %for.cond74, !llvm.loop !19

for.end102:                                       ; preds = %for.cond74
  %cmp103 = icmp eq i32 %s.0, 0
  br i1 %cmp103, label %if.then104, label %if.end106

if.then104:                                       ; preds = %for.end102
  %call105 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3) #7
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %for.end102
  call void @llvm.stackrestore.p0(ptr %4)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!12 = distinct !{!12, !10, !11}
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
