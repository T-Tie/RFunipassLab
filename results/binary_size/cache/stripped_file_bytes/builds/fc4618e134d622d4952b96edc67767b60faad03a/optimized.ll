; ModuleID = '<stdin>'
source_filename = "/tmp/tmpt2t9wx3f.cpp"
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
  %a = alloca [8 x [8 x i32]], align 16
  %min = alloca [8 x i32], align 16
  %arrow = alloca [8 x i32], align 16
  %low = alloca [8 x i32], align 16
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %min) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %arrow) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %arrow, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %low) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %low, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %m, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %for.inc7 ], [ 0, %entry ]
  %0 = load i32, ptr %m, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv50, %1
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %2 = load i32, ptr %n, align 4
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 0)
  %smax60 = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count61 = zext nneg i32 %smax60 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp2, label %for.body3, label %for.inc7

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv50, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc39
  %indvars.iv56 = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next57, %for.inc39 ]
  %exitcond62.not = icmp eq i64 %indvars.iv56, %wide.trip.count61
  br i1 %exitcond62.not, label %for.cond42.preheader, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond10
  %arrayidx17 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv56
  %arrayidx35 = getelementptr inbounds nuw [8 x i32], ptr %arrow, i64 0, i64 %indvars.iv56
  br label %for.cond13

for.cond42.preheader:                             ; preds = %for.cond10
  %wide.trip.count72 = zext nneg i32 %smax to i64
  br label %for.cond42

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc36
  %indvars.iv53 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next54, %for.inc36 ]
  %exitcond.not = icmp eq i64 %indvars.iv53, %wide.trip.count
  br i1 %exitcond.not, label %for.inc39, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %5 = load i32, ptr %arrayidx17, align 16, !tbaa !5
  %arrayidx24 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv56, i64 %indvars.iv53
  %6 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %cmp27 = icmp sgt i32 %6, %5
  br i1 %cmp27, label %if.then, label %for.inc36

if.then:                                          ; preds = %for.body15
  %7 = trunc nuw nsw i64 %indvars.iv53 to i32
  store i32 %7, ptr %arrayidx35, align 4, !tbaa !5
  br label %for.inc36

for.inc36:                                        ; preds = %for.body15, %if.then
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %for.cond13, !llvm.loop !13

for.inc39:                                        ; preds = %for.cond13
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  br label %for.cond10, !llvm.loop !14

for.cond42:                                       ; preds = %for.cond42.preheader, %for.inc73
  %indvars.iv68 = phi i64 [ 0, %for.cond42.preheader ], [ %indvars.iv.next69, %for.inc73 ]
  %exitcond73.not = icmp eq i64 %indvars.iv68, %wide.trip.count72
  br i1 %exitcond73.not, label %for.cond76, label %for.cond45.preheader

for.cond45.preheader:                             ; preds = %for.cond42
  %arrayidx50 = getelementptr inbounds nuw [8 x i32], ptr %a, i64 0, i64 %indvars.iv68
  %arrayidx52 = getelementptr inbounds nuw [8 x i32], ptr %min, i64 0, i64 %indvars.iv68
  %arrayidx68 = getelementptr inbounds nuw [8 x i32], ptr %low, i64 0, i64 %indvars.iv68
  br label %for.cond45

for.cond45:                                       ; preds = %for.cond45.preheader, %for.inc70
  %indvars.iv63 = phi i64 [ 0, %for.cond45.preheader ], [ %indvars.iv.next64, %for.inc70 ]
  %exitcond67.not = icmp eq i64 %indvars.iv63, %wide.trip.count61
  br i1 %exitcond67.not, label %for.inc73, label %for.body47

for.body47:                                       ; preds = %for.cond45
  %8 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  store i32 %8, ptr %arrayidx52, align 4, !tbaa !5
  %arrayidx56 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %a, i64 0, i64 %indvars.iv63, i64 %indvars.iv68
  %9 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %cmp59 = icmp slt i32 %9, %8
  br i1 %cmp59, label %if.then60, label %for.inc70

if.then60:                                        ; preds = %for.body47
  store i32 %9, ptr %arrayidx52, align 4, !tbaa !5
  %10 = trunc nuw nsw i64 %indvars.iv63 to i32
  store i32 %10, ptr %arrayidx68, align 4, !tbaa !5
  br label %for.inc70

for.inc70:                                        ; preds = %for.body47, %if.then60
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  br label %for.cond45, !llvm.loop !15

for.inc73:                                        ; preds = %for.cond45
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  br label %for.cond42, !llvm.loop !16

for.cond76:                                       ; preds = %for.cond42, %for.inc98
  %.pre83 = phi i32 [ %.pre, %for.inc98 ], [ %0, %for.cond42 ]
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %for.inc98 ], [ 0, %for.cond42 ]
  %p.0 = phi i32 [ %p.1, %for.inc98 ], [ 0, %for.cond42 ]
  %11 = sext i32 %.pre83 to i64
  %cmp77 = icmp slt i64 %indvars.iv80, %11
  br i1 %cmp77, label %for.cond79.preheader, label %for.end100

for.cond79.preheader:                             ; preds = %for.cond76
  %12 = load i32, ptr %n, align 4, !tbaa !5
  %arrayidx88 = getelementptr inbounds nuw [8 x i32], ptr %arrow, i64 0, i64 %indvars.iv80
  %smax77 = call i32 @llvm.smax.i32(i32 %12, i32 0)
  %wide.trip.count78 = zext nneg i32 %smax77 to i64
  br label %for.cond79

for.cond79:                                       ; preds = %for.cond79.preheader, %for.inc95
  %indvars.iv74 = phi i64 [ 0, %for.cond79.preheader ], [ %indvars.iv.next75, %for.inc95 ]
  %exitcond79.not = icmp eq i64 %indvars.iv74, %wide.trip.count78
  br i1 %exitcond79.not, label %for.inc98, label %for.body81

for.body81:                                       ; preds = %for.cond79
  %arrayidx83 = getelementptr inbounds nuw [8 x i32], ptr %min, i64 0, i64 %indvars.iv74
  %13 = load i32, ptr %arrayidx83, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %for.inc95, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body81
  %arrayidx85 = getelementptr inbounds nuw [8 x i32], ptr %low, i64 0, i64 %indvars.iv74
  %14 = load i32, ptr %arrayidx85, align 4, !tbaa !5
  %15 = zext i32 %14 to i64
  %cmp86 = icmp eq i64 %indvars.iv80, %15
  br i1 %cmp86, label %land.rhs, label %for.inc95

land.rhs:                                         ; preds = %land.lhs.true
  %16 = load i32, ptr %arrayidx88, align 4, !tbaa !5
  %17 = zext i32 %16 to i64
  %cmp89 = icmp eq i64 %indvars.iv74, %17
  br i1 %cmp89, label %if.then92, label %for.inc95

if.then92:                                        ; preds = %land.rhs
  %18 = trunc nuw nsw i64 %indvars.iv74 to i32
  %19 = trunc nuw nsw i64 %indvars.iv80 to i32
  %call93 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %19, i32 noundef %18)
  %.pre.pre = load i32, ptr %m, align 4, !tbaa !5
  br label %for.inc98

for.inc95:                                        ; preds = %land.lhs.true, %for.body81, %land.rhs
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  br label %for.cond79, !llvm.loop !17

for.inc98:                                        ; preds = %for.cond79, %if.then92
  %.pre = phi i32 [ %.pre.pre, %if.then92 ], [ %.pre83, %for.cond79 ]
  %p.1 = phi i32 [ 1, %if.then92 ], [ %p.0, %for.cond79 ]
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  br label %for.cond76, !llvm.loop !18

for.end100:                                       ; preds = %for.cond76
  %cmp101 = icmp eq i32 %p.0, 0
  br i1 %cmp101, label %if.then102, label %if.end104

if.then102:                                       ; preds = %for.end100
  %call103 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %for.end100
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %low) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %arrow) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %min) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %a) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
