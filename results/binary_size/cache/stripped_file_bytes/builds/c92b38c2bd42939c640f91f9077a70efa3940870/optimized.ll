; ModuleID = '<stdin>'
source_filename = "/tmp/tmpo1jzqchv.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z7minlineiiPPi(i32 noundef %n, i32 noundef %u, ptr noundef readonly captures(none) %a) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %a, align 8, !tbaa !5
  %idxprom = sext i32 %u to i64
  %arrayidx1 = getelementptr inbounds i32, ptr %0, i64 %idxprom
  %1 = load i32, ptr %arrayidx1, align 4, !tbaa !10
  %smax = tail call i32 @llvm.smax.i32(i32 %n, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %temp.0 = phi i32 [ %spec.select, %for.body ], [ %1, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.cond
  ret i32 %temp.0

for.body:                                         ; preds = %for.cond
  %arrayidx3 = getelementptr inbounds nuw ptr, ptr %a, i64 %indvars.iv
  %2 = load ptr, ptr %arrayidx3, align 8, !tbaa !5
  %arrayidx5 = getelementptr inbounds i32, ptr %2, i64 %idxprom
  %3 = load i32, ptr %arrayidx5, align 4, !tbaa !10
  %spec.select = tail call i32 @llvm.smin.i32(i32 %temp.0, i32 %3)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z8mincrossiPi(i32 noundef %n, ptr noundef readonly captures(none) %a) local_unnamed_addr #2 {
entry:
  %0 = load i32, ptr %a, align 4, !tbaa !10
  %smax = tail call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %temp.0 = phi i32 [ %spec.select, %for.body ], [ %0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.cond
  ret i32 %temp.0

for.body:                                         ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx1, align 4, !tbaa !10
  %spec.select = tail call i32 @llvm.smin.i32(i32 %temp.0, i32 %1)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !15
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_Z3ansiPPi(i32 noundef %n, ptr noundef readonly captures(none) %pp) local_unnamed_addr #3 {
entry:
  %sub = add nsw i32 %n, -1
  %arrayidx54 = getelementptr inbounds nuw i8, ptr %pp, i64 8
  %0 = sext i32 %n to i64
  %smax107 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %wide.trip.count108 = zext nneg i32 %smax107 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup89, %entry
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %for.cond.cleanup89 ], [ 0, %entry ]
  %indvars.iv81 = phi i32 [ %indvars.iv.next82, %for.cond.cleanup89 ], [ %sub, %entry ]
  %indvars.iv60 = phi i32 [ %indvars.iv.next61, %for.cond.cleanup89 ], [ %n, %entry ]
  %sum.0 = phi i32 [ %add, %for.cond.cleanup89 ], [ 0, %entry ]
  %smax100 = tail call i32 @llvm.smax.i32(i32 %indvars.iv81, i32 0)
  %smax83 = tail call i32 @llvm.smax.i32(i32 %indvars.iv81, i32 1)
  %exitcond109.not = icmp eq i64 %indvars.iv103, %wide.trip.count108
  br i1 %exitcond109.not, label %for.cond.cleanup, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond
  %smax89 = tail call i32 @llvm.smax.i32(i32 %indvars.iv60, i32 0)
  %1 = sub nsw i64 %0, %indvars.iv103
  %wide.trip.count65 = zext nneg i32 %smax89 to i64
  %wide.trip.count = zext i32 %indvars.iv60 to i64
  br label %for.cond1

for.cond.cleanup:                                 ; preds = %for.cond
  ret i32 %sum.0

for.cond1:                                        ; preds = %for.cond1.preheader, %for.cond.cleanup10
  %indvars.iv62 = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next63, %for.cond.cleanup10 ]
  %exitcond66.not = icmp eq i64 %indvars.iv62, %wide.trip.count65
  br i1 %exitcond66.not, label %for.cond25.preheader, label %for.body5

for.cond25.preheader:                             ; preds = %for.cond1
  %2 = trunc nsw i64 %1 to i32
  %wide.trip.count70 = zext i32 %indvars.iv60 to i64
  br label %for.cond25

for.body5:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds nuw ptr, ptr %pp, i64 %indvars.iv62
  %3 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %4 = load i32, ptr %3, align 4, !tbaa !10
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %for.body5
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 0, %for.body5 ]
  %temp.0.i = phi i32 [ %spec.select.i, %for.body.i ], [ %4, %for.body5 ]
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %1
  br i1 %exitcond.not.i, label %for.cond7, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx1.i = getelementptr inbounds nuw i32, ptr %3, i64 %indvars.iv.i
  %5 = load i32, ptr %arrayidx1.i, align 4, !tbaa !10
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %temp.0.i, i32 %5)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond.i, !llvm.loop !15

for.cond7:                                        ; preds = %for.cond.i, %for.body11
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body11 ], [ 0, %for.cond.i ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup10, label %for.body11

for.cond.cleanup10:                               ; preds = %for.cond7
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  br label %for.cond1, !llvm.loop !16

for.body11:                                       ; preds = %for.cond7
  %arrayidx15 = getelementptr inbounds nuw i32, ptr %3, i64 %indvars.iv
  %6 = load i32, ptr %arrayidx15, align 4, !tbaa !10
  %sub16 = sub nsw i32 %6, %temp.0.i
  store i32 %sub16, ptr %arrayidx15, align 4, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond7, !llvm.loop !17

for.cond25:                                       ; preds = %for.cond25.preheader, %for.cond.cleanup37
  %indvars.iv72 = phi i64 [ 0, %for.cond25.preheader ], [ %indvars.iv.next73, %for.cond.cleanup37 ]
  %exitcond77.not = icmp eq i64 %indvars.iv72, %wide.trip.count65
  br i1 %exitcond77.not, label %for.cond.cleanup28, label %for.body29

for.cond.cleanup28:                               ; preds = %for.cond25
  %7 = load ptr, ptr %arrayidx54, align 8, !tbaa !5
  %arrayidx55 = getelementptr inbounds nuw i8, ptr %7, i64 4
  %8 = load i32, ptr %arrayidx55, align 4, !tbaa !10
  %wide.trip.count84 = zext nneg i32 %smax83 to i64
  br label %for.cond57

for.body29:                                       ; preds = %for.cond25
  %9 = trunc nuw nsw i64 %indvars.iv72 to i32
  %call32 = tail call noundef i32 @_Z7minlineiiPPi(i32 noundef %2, i32 noundef %9, ptr noundef %pp)
  br label %for.cond34

for.cond34:                                       ; preds = %for.body38, %for.body29
  %indvars.iv67 = phi i64 [ %indvars.iv.next68, %for.body38 ], [ 0, %for.body29 ]
  %exitcond71.not = icmp eq i64 %indvars.iv67, %wide.trip.count70
  br i1 %exitcond71.not, label %for.cond.cleanup37, label %for.body38

for.cond.cleanup37:                               ; preds = %for.cond34
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  br label %for.cond25, !llvm.loop !18

for.body38:                                       ; preds = %for.cond34
  %arrayidx40 = getelementptr inbounds nuw ptr, ptr %pp, i64 %indvars.iv67
  %10 = load ptr, ptr %arrayidx40, align 8, !tbaa !5
  %arrayidx42 = getelementptr inbounds nuw i32, ptr %10, i64 %indvars.iv72
  %11 = load i32, ptr %arrayidx42, align 4, !tbaa !10
  %sub43 = sub nsw i32 %11, %call32
  store i32 %sub43, ptr %arrayidx42, align 4, !tbaa !10
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  br label %for.cond34, !llvm.loop !19

for.cond57:                                       ; preds = %for.cond.cleanup67, %for.cond.cleanup28
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %for.cond.cleanup67 ], [ 0, %for.cond.cleanup28 ]
  %exitcond91.not = icmp eq i64 %indvars.iv86, %wide.trip.count65
  br i1 %exitcond91.not, label %for.cond85.preheader, label %for.cond63.preheader

for.cond85.preheader:                             ; preds = %for.cond57
  %wide.trip.count101 = zext nneg i32 %smax100 to i64
  %wide.trip.count95 = zext i32 %indvars.iv81 to i64
  br label %for.cond85

for.cond63.preheader:                             ; preds = %for.cond57
  %arrayidx70 = getelementptr inbounds nuw ptr, ptr %pp, i64 %indvars.iv86
  br label %for.cond63

for.cond63:                                       ; preds = %for.cond63.preheader, %for.body68
  %indvars.iv78 = phi i64 [ 1, %for.cond63.preheader ], [ %indvars.iv.next79, %for.body68 ]
  %exitcond85.not = icmp eq i64 %indvars.iv78, %wide.trip.count84
  br i1 %exitcond85.not, label %for.cond.cleanup67, label %for.body68

for.cond.cleanup67:                               ; preds = %for.cond63
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  br label %for.cond57, !llvm.loop !20

for.body68:                                       ; preds = %for.cond63
  %12 = load ptr, ptr %arrayidx70, align 8, !tbaa !5
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  %arrayidx73 = getelementptr inbounds nuw i32, ptr %12, i64 %indvars.iv.next79
  %13 = load i32, ptr %arrayidx73, align 4, !tbaa !10
  %arrayidx77 = getelementptr inbounds nuw i32, ptr %12, i64 %indvars.iv78
  store i32 %13, ptr %arrayidx77, align 4, !tbaa !10
  br label %for.cond63, !llvm.loop !21

for.cond85:                                       ; preds = %for.cond85.preheader, %for.cond.cleanup96
  %indvars.iv97 = phi i64 [ 0, %for.cond85.preheader ], [ %indvars.iv.next98, %for.cond.cleanup96 ]
  %exitcond102.not = icmp eq i64 %indvars.iv97, %wide.trip.count101
  br i1 %exitcond102.not, label %for.cond.cleanup89, label %for.cond92

for.cond.cleanup89:                               ; preds = %for.cond85
  %add = add nsw i32 %8, %sum.0
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  %indvars.iv.next61 = add i32 %indvars.iv60, -1
  %indvars.iv.next82 = add i32 %indvars.iv81, -1
  br label %for.cond, !llvm.loop !22

for.cond92:                                       ; preds = %for.cond85, %for.body97
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %for.body97 ], [ 1, %for.cond85 ]
  %exitcond96.not = icmp eq i64 %indvars.iv92, %wide.trip.count95
  br i1 %exitcond96.not, label %for.cond.cleanup96, label %for.body97

for.cond.cleanup96:                               ; preds = %for.cond92
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  br label %for.cond85, !llvm.loop !23

for.body97:                                       ; preds = %for.cond92
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  %arrayidx100 = getelementptr inbounds nuw ptr, ptr %pp, i64 %indvars.iv.next93
  %14 = load ptr, ptr %arrayidx100, align 8, !tbaa !5
  %arrayidx102 = getelementptr inbounds nuw i32, ptr %14, i64 %indvars.iv97
  %15 = load i32, ptr %arrayidx102, align 4, !tbaa !10
  %arrayidx104 = getelementptr inbounds nuw ptr, ptr %pp, i64 %indvars.iv92
  %16 = load ptr, ptr %arrayidx104, align 8, !tbaa !5
  %arrayidx106 = getelementptr inbounds nuw i32, ptr %16, i64 %indvars.iv97
  store i32 %15, ptr %arrayidx106, align 4, !tbaa !10
  br label %for.cond92, !llvm.loop !24
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #4 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #10
  store i32 0, ptr %n, align 4, !tbaa !10
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !10
  %conv = sext i32 %0 to i64
  %mul = shl nsw i64 %conv, 3
  %call1 = call noalias ptr @malloc(i64 noundef %mul) #11
  %mul3 = shl nsw i64 %conv, 2
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond5, label %for.body

for.body:                                         ; preds = %for.cond
  %call4 = call noalias ptr @malloc(i64 noundef %mul3) #11
  %arrayidx = getelementptr inbounds nuw ptr, ptr %call1, i64 %indvars.iv
  store ptr %call4, ptr %arrayidx, align 8, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !25

for.cond5:                                        ; preds = %for.cond, %for.cond.cleanup12
  %1 = phi i32 [ %.pre, %for.cond.cleanup12 ], [ %0, %for.cond ]
  %w.0 = phi i32 [ %inc32, %for.cond.cleanup12 ], [ 0, %for.cond ]
  %cmp6 = icmp slt i32 %w.0, %1
  br i1 %cmp6, label %for.cond10, label %for.cond35

for.cond10:                                       ; preds = %for.cond5, %for.cond.cleanup16
  %2 = phi i32 [ %4, %for.cond.cleanup16 ], [ %1, %for.cond5 ]
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.cond.cleanup16 ], [ 0, %for.cond5 ]
  %3 = sext i32 %2 to i64
  %cmp11 = icmp slt i64 %indvars.iv19, %3
  br i1 %cmp11, label %for.cond14.preheader, label %for.cond.cleanup12

for.cond14.preheader:                             ; preds = %for.cond10
  %arrayidx19 = getelementptr inbounds nuw ptr, ptr %call1, i64 %indvars.iv19
  br label %for.cond14

for.cond.cleanup12:                               ; preds = %for.cond10
  %call29 = call noundef i32 @_Z3ansiPPi(i32 noundef %2, ptr noundef %call1)
  %call30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %call29)
  %inc32 = add nuw nsw i32 %w.0, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !10
  br label %for.cond5, !llvm.loop !26

for.cond14:                                       ; preds = %for.cond14.preheader, %for.body17
  %4 = phi i32 [ %2, %for.cond14.preheader ], [ %.pre26, %for.body17 ]
  %indvars.iv16 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next17, %for.body17 ]
  %5 = sext i32 %4 to i64
  %cmp15 = icmp slt i64 %indvars.iv16, %5
  br i1 %cmp15, label %for.body17, label %for.cond.cleanup16

for.cond.cleanup16:                               ; preds = %for.cond14
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  br label %for.cond10, !llvm.loop !27

for.body17:                                       ; preds = %for.cond14
  %6 = load ptr, ptr %arrayidx19, align 8, !tbaa !5
  %arrayidx21 = getelementptr inbounds nuw i32, ptr %6, i64 %indvars.iv16
  %call22 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef %arrayidx21)
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %.pre26 = load i32, ptr %n, align 4, !tbaa !10
  br label %for.cond14, !llvm.loop !28

for.cond35:                                       ; preds = %for.cond5, %for.body38
  %7 = phi i32 [ %.pre25, %for.body38 ], [ %1, %for.cond5 ]
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.body38 ], [ 0, %for.cond5 ]
  %8 = sext i32 %7 to i64
  %cmp36 = icmp slt i64 %indvars.iv22, %8
  br i1 %cmp36, label %for.body38, label %for.cond.cleanup37

for.cond.cleanup37:                               ; preds = %for.cond35
  call void @free(ptr noundef %call1) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #10
  ret i32 0

for.body38:                                       ; preds = %for.cond35
  %arrayidx40 = getelementptr inbounds nuw ptr, ptr %call1, i64 %indvars.iv22
  %9 = load ptr, ptr %arrayidx40, align 8, !tbaa !5
  call void @free(ptr noundef %9) #10
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %.pre25 = load i32, ptr %n, align 4, !tbaa !10
  br label %for.cond35, !llvm.loop !29
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 int", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14}
!16 = distinct !{!16, !13, !14}
!17 = distinct !{!17, !13, !14}
!18 = distinct !{!18, !13, !14}
!19 = distinct !{!19, !13, !14}
!20 = distinct !{!20, !13, !14}
!21 = distinct !{!21, !13, !14}
!22 = distinct !{!22, !13, !14}
!23 = distinct !{!23, !13, !14}
!24 = distinct !{!24, !13, !14}
!25 = distinct !{!25, !13, !14}
!26 = distinct !{!26, !13, !14}
!27 = distinct !{!27, !13, !14}
!28 = distinct !{!28, !13, !14}
!29 = distinct !{!29, !13, !14}
