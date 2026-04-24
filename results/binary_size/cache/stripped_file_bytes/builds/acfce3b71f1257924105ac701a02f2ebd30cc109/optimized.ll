; ModuleID = '<stdin>'
source_filename = "/tmp/tmpg6adx7n4.cpp"
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
  %6 = load i32, ptr %m, align 4, !tbaa !5
  %7 = zext i32 %6 to i64
  %vla1 = alloca i32, i64 %7, align 16
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %9 = zext i32 %8 to i64
  %vla2 = alloca i32, i64 %9, align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %10 = phi i32 [ %14, %for.inc9 ], [ %8, %entry ]
  %11 = phi i32 [ %.pre, %for.inc9 ], [ %6, %entry ]
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %for.inc9 ], [ 0, %entry ]
  %12 = sext i32 %11 to i64
  %cmp = icmp slt i64 %indvars.iv14, %12
  br i1 %cmp, label %for.cond3.preheader, label %for.cond12.preheader

for.cond3.preheader:                              ; preds = %for.cond
  %13 = mul nuw nsw i64 %indvars.iv14, %3
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %13
  br label %for.cond3

for.cond12.preheader:                             ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %11, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond12

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc
  %14 = phi i32 [ %10, %for.cond3.preheader ], [ %.pre58, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.cond3.preheader ], [ %indvars.iv.next, %for.inc ]
  %15 = sext i32 %14 to i64
  %cmp4 = icmp slt i64 %indvars.iv, %15
  br i1 %cmp4, label %for.inc, label %for.inc9

for.inc:                                          ; preds = %for.cond3
  %arrayidx7 = getelementptr inbounds nuw i32, ptr %arrayidx, i64 %indvars.iv
  %call8 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx7)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre58 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !9

for.inc9:                                         ; preds = %for.cond3
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %.pre = load i32, ptr %m, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.cond12:                                       ; preds = %for.cond12.preheader, %for.inc20
  %indvars.iv17 = phi i64 [ 0, %for.cond12.preheader ], [ %indvars.iv.next18, %for.inc20 ]
  %exitcond.not = icmp eq i64 %indvars.iv17, %wide.trip.count
  br i1 %exitcond.not, label %for.cond23.preheader, label %for.inc20

for.cond23.preheader:                             ; preds = %for.cond12
  %smax24 = call i32 @llvm.smax.i32(i32 %10, i32 noundef 0)
  %wide.trip.count25 = zext nneg i32 %smax24 to i64
  br label %for.cond23

for.inc20:                                        ; preds = %for.cond12
  %16 = mul nuw nsw i64 %indvars.iv17, %3
  %arrayidx16 = getelementptr inbounds nuw i32, ptr %vla, i64 %16
  %17 = load i32, ptr %arrayidx16, align 4, !tbaa !5, !invariant.load !13
  %arrayidx19 = getelementptr inbounds nuw i32, ptr %vla1, i64 %indvars.iv17
  store i32 %17, ptr %arrayidx19, align 4, !tbaa !5
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  br label %for.cond12, !llvm.loop !14

for.cond23:                                       ; preds = %for.cond23.preheader, %for.inc31
  %indvars.iv21 = phi i64 [ 0, %for.cond23.preheader ], [ %indvars.iv.next22, %for.inc31 ]
  %exitcond26.not = icmp eq i64 %indvars.iv21, %wide.trip.count25
  br i1 %exitcond26.not, label %for.cond34, label %for.inc31

for.inc31:                                        ; preds = %for.cond23
  %arrayidx28 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv21
  %18 = load i32, ptr %arrayidx28, align 4, !tbaa !5, !invariant.load !13
  %arrayidx30 = getelementptr inbounds nuw i32, ptr %vla2, i64 %indvars.iv21
  store i32 %18, ptr %arrayidx30, align 4, !tbaa !5
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond23, !llvm.loop !15

for.cond34:                                       ; preds = %for.cond23, %for.inc56
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.inc56 ], [ 0, %for.cond23 ]
  %exitcond36.not = icmp eq i64 %indvars.iv32, %wide.trip.count
  br i1 %exitcond36.not, label %for.cond59, label %for.cond37.preheader

for.cond37.preheader:                             ; preds = %for.cond34
  %19 = mul nuw nsw i64 %indvars.iv32, %3
  %arrayidx41 = getelementptr inbounds nuw i32, ptr %vla, i64 %19
  %arrayidx45 = getelementptr inbounds nuw i32, ptr %vla1, i64 %indvars.iv32
  br label %for.cond37

for.cond37:                                       ; preds = %for.cond37.preheader, %for.body39
  %indvars.iv27 = phi i64 [ 0, %for.cond37.preheader ], [ %indvars.iv.next28, %for.body39 ]
  %exitcond31.not = icmp eq i64 %indvars.iv27, %wide.trip.count25
  br i1 %exitcond31.not, label %for.inc56, label %for.body39

for.body39:                                       ; preds = %for.cond37
  %arrayidx43 = getelementptr inbounds nuw i32, ptr %arrayidx41, i64 %indvars.iv27
  %20 = load i32, ptr %arrayidx43, align 4, !tbaa !5, !invariant.load !13
  %21 = load i32, ptr %arrayidx45, align 4, !tbaa !5, !invariant.load !13
  %spec.store.select = call i32 @llvm.smax.i32(i32 %20, i32 %21)
  store i32 %spec.store.select, ptr %arrayidx45, align 4
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond37, !llvm.loop !16

for.inc56:                                        ; preds = %for.cond37
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond34, !llvm.loop !17

for.cond59:                                       ; preds = %for.cond34, %for.inc83
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %for.inc83 ], [ 0, %for.cond34 ]
  %exitcond46.not = icmp eq i64 %indvars.iv42, %wide.trip.count25
  br i1 %exitcond46.not, label %for.cond86, label %for.cond62.preheader

for.cond62.preheader:                             ; preds = %for.cond59
  %invariant.gep = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv42
  %arrayidx70 = getelementptr inbounds nuw i32, ptr %vla2, i64 %indvars.iv42
  br label %for.cond62

for.cond62:                                       ; preds = %for.cond62.preheader, %for.body64
  %indvars.iv37 = phi i64 [ 0, %for.cond62.preheader ], [ %indvars.iv.next38, %for.body64 ]
  %exitcond41.not = icmp eq i64 %indvars.iv37, %wide.trip.count
  br i1 %exitcond41.not, label %for.inc83, label %for.body64

for.body64:                                       ; preds = %for.cond62
  %22 = mul nuw nsw i64 %indvars.iv37, %3
  %gep = getelementptr inbounds nuw i32, ptr %invariant.gep, i64 %22
  %23 = load i32, ptr %gep, align 4, !tbaa !5, !invariant.load !13
  %24 = load i32, ptr %arrayidx70, align 4, !tbaa !5, !invariant.load !13
  %spec.store.select11 = call i32 @llvm.smin.i32(i32 %23, i32 %24)
  store i32 %spec.store.select11, ptr %arrayidx70, align 4
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond62, !llvm.loop !18

for.inc83:                                        ; preds = %for.cond62
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %for.cond59, !llvm.loop !19

for.cond86:                                       ; preds = %for.cond59, %for.inc103
  %.pre5455 = phi i32 [ %.pre5456, %for.inc103 ], [ %10, %for.cond59 ]
  %25 = phi i32 [ %29, %for.inc103 ], [ %10, %for.cond59 ]
  %26 = phi i32 [ %.pre53, %for.inc103 ], [ %11, %for.cond59 ]
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %for.inc103 ], [ 0, %for.cond59 ]
  %k.0 = phi i32 [ %k.1, %for.inc103 ], [ 0, %for.cond59 ]
  %27 = sext i32 %26 to i64
  %cmp87 = icmp slt i64 %indvars.iv50, %27
  br i1 %cmp87, label %for.cond89.preheader, label %for.end105

for.cond89.preheader:                             ; preds = %for.cond86
  %arrayidx93 = getelementptr inbounds nuw i32, ptr %vla1, i64 %indvars.iv50
  %28 = trunc nuw nsw i64 %indvars.iv50 to i32
  br label %for.cond89

for.cond89:                                       ; preds = %for.cond89.preheader, %for.inc100
  %.pre5456 = phi i32 [ %.pre5455, %for.cond89.preheader ], [ %.pre54, %for.inc100 ]
  %29 = phi i32 [ %25, %for.cond89.preheader ], [ %.pre54, %for.inc100 ]
  %indvars.iv47 = phi i64 [ 0, %for.cond89.preheader ], [ %indvars.iv.next48, %for.inc100 ]
  %k.1 = phi i32 [ %k.0, %for.cond89.preheader ], [ %k.2, %for.inc100 ]
  %30 = sext i32 %29 to i64
  %cmp90 = icmp slt i64 %indvars.iv47, %30
  br i1 %cmp90, label %for.body91, label %for.inc103

for.body91:                                       ; preds = %for.cond89
  %31 = load i32, ptr %arrayidx93, align 4, !tbaa !5, !invariant.load !13
  %arrayidx95 = getelementptr inbounds nuw i32, ptr %vla2, i64 %indvars.iv47
  %32 = load i32, ptr %arrayidx95, align 4, !tbaa !5, !invariant.load !13
  %cmp96 = icmp eq i32 %31, %32
  br i1 %cmp96, label %if.then97, label %for.inc100

if.then97:                                        ; preds = %for.body91
  %33 = trunc nuw nsw i64 %indvars.iv47 to i32
  %call98 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %28, i32 noundef %33) #7
  %.pre54.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc100

for.inc100:                                       ; preds = %for.body91, %if.then97
  %.pre54 = phi i32 [ %.pre54.pre, %if.then97 ], [ %.pre5456, %for.body91 ]
  %k.2 = phi i32 [ 1, %if.then97 ], [ %k.1, %for.body91 ]
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br label %for.cond89, !llvm.loop !20

for.inc103:                                       ; preds = %for.cond89
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  %.pre53 = load i32, ptr %m, align 4, !tbaa !5
  br label %for.cond86, !llvm.loop !21

for.end105:                                       ; preds = %for.cond86
  %cmp106 = icmp eq i32 %k.0, 0
  br i1 %cmp106, label %if.then107, label %if.end109

if.then107:                                       ; preds = %for.end105
  %call108 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3) #7
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %for.end105
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
declare i32 @llvm.smin.i32(i32, i32) #5

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
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
