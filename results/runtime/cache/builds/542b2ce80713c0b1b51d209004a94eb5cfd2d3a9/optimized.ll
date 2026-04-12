; ModuleID = '<stdin>'
source_filename = "/tmp/tmp5ncfojtg.cpp"
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
  %q = alloca i32, align 4
  %w = alloca i32, align 4
  %MX = alloca [10 x [10 x i32]], align 16
  %P = alloca [10 x i32], align 16
  %Q = alloca [10 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %q) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %w) #6
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %MX) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %MX, i8 0, i64 400, i1 false)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %P) #6
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %Q) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %q, ptr noundef nonnull %w)
  %0 = load i32, ptr %q, align 4, !tbaa !5
  %1 = load i32, ptr %w, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 %0)
  %smax52 = call i32 @llvm.smax.i32(i32 %smax, i32 0)
  %wide.trip.count = zext nneg i32 %smax52 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond4, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [10 x i32], ptr %P, i64 0, i64 %indvars.iv
  store i32 -99, ptr %arrayidx, align 4, !tbaa !5
  %arrayidx3 = getelementptr inbounds nuw [10 x i32], ptr %Q, i64 0, i64 %indvars.iv
  store i32 10000, ptr %arrayidx3, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond4:                                        ; preds = %for.cond, %for.inc18
  %2 = phi i32 [ %5, %for.inc18 ], [ %1, %for.cond ]
  %3 = phi i32 [ %.pre, %for.inc18 ], [ %0, %for.cond ]
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %for.inc18 ], [ 0, %for.cond ]
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv56, %4
  br i1 %cmp5, label %for.cond7, label %for.cond21.preheader

for.cond21.preheader:                             ; preds = %for.cond4
  %smax62 = call i32 @llvm.smax.i32(i32 %2, i32 0)
  %smax69 = call i32 @llvm.smax.i32(i32 %3, i32 0)
  %wide.trip.count70 = zext nneg i32 %smax69 to i64
  %wide.trip.count63 = zext nneg i32 %smax62 to i64
  br label %for.cond21

for.cond7:                                        ; preds = %for.cond4, %for.body9
  %5 = phi i32 [ %.pre106, %for.body9 ], [ %2, %for.cond4 ]
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.body9 ], [ 0, %for.cond4 ]
  %6 = sext i32 %5 to i64
  %cmp8 = icmp slt i64 %indvars.iv53, %6
  br i1 %cmp8, label %for.body9, label %for.inc18

for.body9:                                        ; preds = %for.cond7
  %arrayidx13 = getelementptr inbounds nuw [10 x [10 x i32]], ptr %MX, i64 0, i64 %indvars.iv56, i64 %indvars.iv53
  %call14 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx13)
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %.pre106 = load i32, ptr %w, align 4, !tbaa !5
  br label %for.cond7, !llvm.loop !12

for.inc18:                                        ; preds = %for.cond7
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  %.pre = load i32, ptr %q, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !13

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc45
  %indvars.iv65 = phi i64 [ 0, %for.cond21.preheader ], [ %indvars.iv.next66, %for.inc45 ]
  %exitcond71.not = icmp eq i64 %indvars.iv65, %wide.trip.count70
  br i1 %exitcond71.not, label %for.cond48.preheader, label %for.cond24.preheader

for.cond24.preheader:                             ; preds = %for.cond21
  %arrayidx32 = getelementptr inbounds nuw [10 x i32], ptr %P, i64 0, i64 %indvars.iv65
  br label %for.cond24

for.cond48.preheader:                             ; preds = %for.cond21
  %wide.trip.count81 = zext nneg i32 %smax62 to i64
  br label %for.cond48

for.cond24:                                       ; preds = %for.cond24.preheader, %for.body26
  %indvars.iv59 = phi i64 [ 0, %for.cond24.preheader ], [ %indvars.iv.next60, %for.body26 ]
  %exitcond64.not = icmp eq i64 %indvars.iv59, %wide.trip.count63
  br i1 %exitcond64.not, label %for.inc45, label %for.body26

for.body26:                                       ; preds = %for.cond24
  %arrayidx30 = getelementptr inbounds nuw [10 x [10 x i32]], ptr %MX, i64 0, i64 %indvars.iv65, i64 %indvars.iv59
  %7 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %8 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %spec.store.select = call i32 @llvm.smax.i32(i32 %7, i32 %8)
  store i32 %spec.store.select, ptr %arrayidx32, align 4
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  br label %for.cond24, !llvm.loop !14

for.inc45:                                        ; preds = %for.cond24
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  br label %for.cond21, !llvm.loop !15

for.cond48:                                       ; preds = %for.cond48.preheader, %for.inc72
  %indvars.iv77 = phi i64 [ 0, %for.cond48.preheader ], [ %indvars.iv.next78, %for.inc72 ]
  %exitcond82.not = icmp eq i64 %indvars.iv77, %wide.trip.count81
  br i1 %exitcond82.not, label %for.cond75.preheader, label %for.cond51.preheader

for.cond75.preheader:                             ; preds = %for.cond48
  %wide.trip.count86 = zext i32 %smax to i64
  br label %for.cond75

for.cond51.preheader:                             ; preds = %for.cond48
  %arrayidx59 = getelementptr inbounds nuw [10 x i32], ptr %Q, i64 0, i64 %indvars.iv77
  br label %for.cond51

for.cond51:                                       ; preds = %for.cond51.preheader, %for.body53
  %indvars.iv72 = phi i64 [ 0, %for.cond51.preheader ], [ %indvars.iv.next73, %for.body53 ]
  %exitcond76.not = icmp eq i64 %indvars.iv72, %wide.trip.count70
  br i1 %exitcond76.not, label %for.inc72, label %for.body53

for.body53:                                       ; preds = %for.cond51
  %arrayidx57 = getelementptr inbounds nuw [10 x [10 x i32]], ptr %MX, i64 0, i64 %indvars.iv72, i64 %indvars.iv77
  %9 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  %10 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  %spec.store.select50 = call i32 @llvm.smin.i32(i32 %9, i32 %10)
  store i32 %spec.store.select50, ptr %arrayidx59, align 4
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  br label %for.cond51, !llvm.loop !16

for.inc72:                                        ; preds = %for.cond51
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  br label %for.cond48, !llvm.loop !17

for.cond75:                                       ; preds = %for.cond75.preheader, %for.inc93
  %indvars.iv88 = phi i64 [ 0, %for.cond75.preheader ], [ %indvars.iv.next89, %for.inc93 ]
  %e.0 = phi i32 [ undef, %for.cond75.preheader ], [ %e.1, %for.inc93 ]
  %exitcond94.not = icmp eq i64 %indvars.iv88, %wide.trip.count
  br i1 %exitcond94.not, label %for.cond96, label %for.cond78.preheader

for.cond78.preheader:                             ; preds = %for.cond75
  %arrayidx82 = getelementptr inbounds nuw [10 x i32], ptr %P, i64 0, i64 %indvars.iv88
  br label %for.cond78

for.cond78:                                       ; preds = %for.cond78.preheader, %for.body80
  %indvars.iv83 = phi i64 [ 0, %for.cond78.preheader ], [ %indvars.iv.next84, %for.body80 ]
  %e.1 = phi i32 [ %e.0, %for.cond78.preheader ], [ %spec.select, %for.body80 ]
  %exitcond87.not = icmp eq i64 %indvars.iv83, %wide.trip.count86
  br i1 %exitcond87.not, label %for.inc93, label %for.body80

for.body80:                                       ; preds = %for.cond78
  %11 = load i32, ptr %arrayidx82, align 4, !tbaa !5
  %arrayidx84 = getelementptr inbounds nuw [10 x i32], ptr %Q, i64 0, i64 %indvars.iv83
  %12 = load i32, ptr %arrayidx84, align 4, !tbaa !5
  %cmp85 = icmp eq i32 %11, %12
  %spec.select = select i1 %cmp85, i32 %11, i32 %e.1
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  br label %for.cond78, !llvm.loop !18

for.inc93:                                        ; preds = %for.cond78
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  br label %for.cond75, !llvm.loop !19

for.cond96:                                       ; preds = %for.cond75, %for.inc113
  %.pre102103 = phi i32 [ %.pre102104, %for.inc113 ], [ %2, %for.cond75 ]
  %13 = phi i32 [ %17, %for.inc113 ], [ %2, %for.cond75 ]
  %14 = phi i32 [ %.pre101, %for.inc113 ], [ %3, %for.cond75 ]
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %for.inc113 ], [ 0, %for.cond75 ]
  %t.0 = phi i32 [ %t.1, %for.inc113 ], [ -3, %for.cond75 ]
  %15 = sext i32 %14 to i64
  %cmp97 = icmp slt i64 %indvars.iv98, %15
  br i1 %cmp97, label %for.cond99.preheader, label %for.end115

for.cond99.preheader:                             ; preds = %for.cond96
  %16 = trunc nuw nsw i64 %indvars.iv98 to i32
  br label %for.cond99

for.cond99:                                       ; preds = %for.cond99.preheader, %for.inc110
  %.pre102104 = phi i32 [ %.pre102103, %for.cond99.preheader ], [ %.pre102, %for.inc110 ]
  %17 = phi i32 [ %13, %for.cond99.preheader ], [ %.pre102, %for.inc110 ]
  %indvars.iv95 = phi i64 [ 0, %for.cond99.preheader ], [ %indvars.iv.next96, %for.inc110 ]
  %t.1 = phi i32 [ %t.0, %for.cond99.preheader ], [ %t.2, %for.inc110 ]
  %18 = sext i32 %17 to i64
  %cmp100 = icmp slt i64 %indvars.iv95, %18
  br i1 %cmp100, label %for.body101, label %for.inc113

for.body101:                                      ; preds = %for.cond99
  %arrayidx105 = getelementptr inbounds nuw [10 x [10 x i32]], ptr %MX, i64 0, i64 %indvars.iv98, i64 %indvars.iv95
  %19 = load i32, ptr %arrayidx105, align 4, !tbaa !5
  %cmp106 = icmp eq i32 %19, %e.0
  br i1 %cmp106, label %if.then107, label %for.inc110

if.then107:                                       ; preds = %for.body101
  %20 = trunc nuw nsw i64 %indvars.iv95 to i32
  %call108 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %16, i32 noundef %20)
  %.pre102.pre = load i32, ptr %w, align 4, !tbaa !5
  br label %for.inc110

for.inc110:                                       ; preds = %for.body101, %if.then107
  %.pre102 = phi i32 [ %.pre102.pre, %if.then107 ], [ %.pre102104, %for.body101 ]
  %t.2 = phi i32 [ 3, %if.then107 ], [ %t.1, %for.body101 ]
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  br label %for.cond99, !llvm.loop !20

for.inc113:                                       ; preds = %for.cond99
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  %.pre101 = load i32, ptr %q, align 4, !tbaa !5
  br label %for.cond96, !llvm.loop !21

for.end115:                                       ; preds = %for.cond96
  %cmp116 = icmp slt i32 %t.0, 0
  br i1 %cmp116, label %if.then117, label %if.end119

if.then117:                                       ; preds = %for.end115
  %call118 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %if.end119

if.end119:                                        ; preds = %if.then117, %for.end115
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %Q) #6
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %P) #6
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %MX) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %w) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %q) #6
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

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
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
