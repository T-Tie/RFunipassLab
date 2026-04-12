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
define dso_local noundef i32 @main() #0 {
entry:
  %q = alloca i32, align 4
  %w = alloca i32, align 4
  %MX = alloca [10 x [10 x i32]], align 16
  %P = alloca [10 x i32], align 16
  %Q = alloca [10 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %q) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %w) #5
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %MX) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(400) %MX, i8 noundef 0, i64 noundef 400, i1 noundef false) #6
  call void @llvm.lifetime.start.p0(i64 noundef 40, ptr noundef nonnull align 16 %P) #5
  call void @llvm.lifetime.start.p0(i64 noundef 40, ptr noundef nonnull align 16 %Q) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %q, ptr noundef nonnull align 4 %w)
  %0 = load i32, ptr %q, align 4, !tbaa !5
  %1 = load i32, ptr %w, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 %0)
  %smax49 = call i32 @llvm.smax.i32(i32 %smax, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax49 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond4, label %for.inc

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [10 x i32], ptr %P, i64 0, i64 %indvars.iv
  store i32 -99, ptr %arrayidx, align 4, !tbaa !5
  %arrayidx3 = getelementptr inbounds nuw [10 x i32], ptr %Q, i64 0, i64 %indvars.iv
  store i32 10000, ptr %arrayidx3, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond4:                                        ; preds = %for.cond, %for.inc18
  %2 = phi i32 [ %5, %for.inc18 ], [ %1, %for.cond ]
  %3 = phi i32 [ %.pre, %for.inc18 ], [ %0, %for.cond ]
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.inc18 ], [ 0, %for.cond ]
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv53, %4
  br i1 %cmp5, label %for.cond7, label %for.cond21.preheader

for.cond21.preheader:                             ; preds = %for.cond4
  %smax59 = call i32 @llvm.smax.i32(i32 %2, i32 noundef 0)
  %smax66 = call i32 @llvm.smax.i32(i32 %3, i32 noundef 0)
  %wide.trip.count67 = zext nneg i32 %smax66 to i64
  %wide.trip.count60 = zext nneg i32 %smax59 to i64
  br label %for.cond21

for.cond7:                                        ; preds = %for.cond4, %for.inc15
  %5 = phi i32 [ %.pre103, %for.inc15 ], [ %2, %for.cond4 ]
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %for.inc15 ], [ 0, %for.cond4 ]
  %6 = sext i32 %5 to i64
  %cmp8 = icmp slt i64 %indvars.iv50, %6
  br i1 %cmp8, label %for.inc15, label %for.inc18

for.inc15:                                        ; preds = %for.cond7
  %arrayidx13 = getelementptr inbounds nuw [10 x [10 x i32]], ptr %MX, i64 0, i64 %indvars.iv53, i64 %indvars.iv50
  %call14 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx13)
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  %.pre103 = load i32, ptr %w, align 4, !tbaa !5
  br label %for.cond7, !llvm.loop !12

for.inc18:                                        ; preds = %for.cond7
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %.pre = load i32, ptr %q, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !13

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc45
  %indvars.iv62 = phi i64 [ 0, %for.cond21.preheader ], [ %indvars.iv.next63, %for.inc45 ]
  %exitcond68.not = icmp eq i64 %indvars.iv62, %wide.trip.count67
  br i1 %exitcond68.not, label %for.cond48, label %for.cond24.preheader

for.cond24.preheader:                             ; preds = %for.cond21
  %arrayidx32 = getelementptr inbounds nuw [10 x i32], ptr %P, i64 0, i64 %indvars.iv62
  br label %for.cond24

for.cond24:                                       ; preds = %for.cond24.preheader, %for.body26
  %indvars.iv56 = phi i64 [ 0, %for.cond24.preheader ], [ %indvars.iv.next57, %for.body26 ]
  %exitcond61.not = icmp eq i64 %indvars.iv56, %wide.trip.count60
  br i1 %exitcond61.not, label %for.inc45, label %for.body26

for.body26:                                       ; preds = %for.cond24
  %arrayidx30 = getelementptr inbounds nuw [10 x [10 x i32]], ptr %MX, i64 0, i64 %indvars.iv62, i64 %indvars.iv56
  %7 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %8 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %spec.store.select = call i32 @llvm.smax.i32(i32 %7, i32 %8)
  store i32 %spec.store.select, ptr %arrayidx32, align 4
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  br label %for.cond24, !llvm.loop !14

for.inc45:                                        ; preds = %for.cond24
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  br label %for.cond21, !llvm.loop !15

for.cond48:                                       ; preds = %for.cond21, %for.inc72
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %for.inc72 ], [ 0, %for.cond21 ]
  %exitcond79.not = icmp eq i64 %indvars.iv74, %wide.trip.count60
  br i1 %exitcond79.not, label %for.cond75.preheader, label %for.cond51.preheader

for.cond75.preheader:                             ; preds = %for.cond48
  %wide.trip.count83 = zext i32 %smax to i64
  br label %for.cond75

for.cond51.preheader:                             ; preds = %for.cond48
  %arrayidx59 = getelementptr inbounds nuw [10 x i32], ptr %Q, i64 0, i64 %indvars.iv74
  br label %for.cond51

for.cond51:                                       ; preds = %for.cond51.preheader, %for.body53
  %indvars.iv69 = phi i64 [ 0, %for.cond51.preheader ], [ %indvars.iv.next70, %for.body53 ]
  %exitcond73.not = icmp eq i64 %indvars.iv69, %wide.trip.count67
  br i1 %exitcond73.not, label %for.inc72, label %for.body53

for.body53:                                       ; preds = %for.cond51
  %arrayidx57 = getelementptr inbounds nuw [10 x [10 x i32]], ptr %MX, i64 0, i64 %indvars.iv69, i64 %indvars.iv74
  %9 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  %10 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  %spec.store.select46 = call i32 @llvm.smin.i32(i32 %9, i32 %10)
  store i32 %spec.store.select46, ptr %arrayidx59, align 4
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  br label %for.cond51, !llvm.loop !16

for.inc72:                                        ; preds = %for.cond51
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  br label %for.cond48, !llvm.loop !17

for.cond75:                                       ; preds = %for.cond75.preheader, %for.inc93
  %indvars.iv85 = phi i64 [ 0, %for.cond75.preheader ], [ %indvars.iv.next86, %for.inc93 ]
  %e.0 = phi i32 [ undef, %for.cond75.preheader ], [ %e.1, %for.inc93 ]
  %exitcond91.not = icmp eq i64 %indvars.iv85, %wide.trip.count
  br i1 %exitcond91.not, label %for.cond96.preheader, label %for.cond78.preheader

for.cond96.preheader:                             ; preds = %for.cond75
  br label %for.cond96

for.cond78.preheader:                             ; preds = %for.cond75
  %arrayidx82 = getelementptr inbounds nuw [10 x i32], ptr %P, i64 0, i64 %indvars.iv85
  br label %for.cond78

for.cond78:                                       ; preds = %for.cond78.preheader, %for.body80
  %indvars.iv80 = phi i64 [ 0, %for.cond78.preheader ], [ %indvars.iv.next81, %for.body80 ]
  %e.1 = phi i32 [ %e.0, %for.cond78.preheader ], [ %spec.select47, %for.body80 ]
  %exitcond84.not = icmp eq i64 %indvars.iv80, %wide.trip.count83
  br i1 %exitcond84.not, label %for.inc93, label %for.body80

for.body80:                                       ; preds = %for.cond78
  %11 = load i32, ptr %arrayidx82, align 4, !tbaa !5
  %arrayidx84 = getelementptr inbounds nuw [10 x i32], ptr %Q, i64 0, i64 %indvars.iv80
  %12 = load i32, ptr %arrayidx84, align 4, !tbaa !5
  %cmp85 = icmp eq i32 %11, %12
  %spec.select47 = select i1 %cmp85, i32 %11, i32 %e.1
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  br label %for.cond78, !llvm.loop !18

for.inc93:                                        ; preds = %for.cond78
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  br label %for.cond75, !llvm.loop !19

for.cond96:                                       ; preds = %for.cond96.preheader, %for.inc113
  %.pre99100 = phi i32 [ %.pre99101, %for.inc113 ], [ %2, %for.cond96.preheader ]
  %13 = phi i32 [ %.pre98, %for.inc113 ], [ %3, %for.cond96.preheader ]
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %for.inc113 ], [ 0, %for.cond96.preheader ]
  %t.0 = phi i32 [ %t.1, %for.inc113 ], [ -3, %for.cond96.preheader ]
  %14 = sext i32 %13 to i64
  %cmp97 = icmp slt i64 %indvars.iv95, %14
  br i1 %cmp97, label %for.cond99.preheader, label %for.end115

for.cond99.preheader:                             ; preds = %for.cond96
  %15 = trunc nuw nsw i64 %indvars.iv95 to i32
  br label %for.cond99

for.cond99:                                       ; preds = %for.cond99.preheader, %for.inc110
  %.pre99101 = phi i32 [ %.pre99100, %for.cond99.preheader ], [ %.pre99, %for.inc110 ]
  %indvars.iv92 = phi i64 [ 0, %for.cond99.preheader ], [ %indvars.iv.next93, %for.inc110 ]
  %t.1 = phi i32 [ %t.0, %for.cond99.preheader ], [ %t.2, %for.inc110 ]
  %16 = sext i32 %.pre99101 to i64
  %cmp100 = icmp slt i64 %indvars.iv92, %16
  br i1 %cmp100, label %for.body101, label %for.inc113

for.body101:                                      ; preds = %for.cond99
  %arrayidx105 = getelementptr inbounds nuw [10 x [10 x i32]], ptr %MX, i64 0, i64 %indvars.iv95, i64 %indvars.iv92
  %17 = load i32, ptr %arrayidx105, align 4, !tbaa !5
  %cmp106 = icmp eq i32 %17, %e.0
  br i1 %cmp106, label %if.then107, label %for.inc110

if.then107:                                       ; preds = %for.body101
  %18 = trunc nuw nsw i64 %indvars.iv92 to i32
  %call108 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %15, i32 noundef %18)
  %.pre99.pre = load i32, ptr %w, align 4, !tbaa !5
  br label %for.inc110

for.inc110:                                       ; preds = %for.body101, %if.then107
  %.pre99 = phi i32 [ %.pre99.pre, %if.then107 ], [ %.pre99101, %for.body101 ]
  %t.2 = phi i32 [ 3, %if.then107 ], [ %t.1, %for.body101 ]
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  br label %for.cond99, !llvm.loop !20

for.inc113:                                       ; preds = %for.cond99
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  %.pre98 = load i32, ptr %q, align 4, !tbaa !5
  br label %for.cond96, !llvm.loop !21

for.end115:                                       ; preds = %for.cond96
  %cmp116 = icmp slt i32 %t.0, 0
  br i1 %cmp116, label %if.then117, label %if.end119

if.then117:                                       ; preds = %for.end115
  %call118 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %if.end119

if.end119:                                        ; preds = %if.then117, %for.end115
  call void @llvm.lifetime.end.p0(i64 noundef 40, ptr noundef nonnull %Q) #7
  call void @llvm.lifetime.end.p0(i64 noundef 40, ptr noundef nonnull %P) #7
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %MX) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %w) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %q) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind }
attributes #6 = { nofree }
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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
