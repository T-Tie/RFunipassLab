; ModuleID = '<stdin>'
source_filename = "/tmp/tmpzb6qmz1y.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %str = alloca [257 x i8], align 16
  %sub = alloca [257 x i8], align 16
  %re = alloca [257 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %str) #7
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %sub) #7
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %re) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %str, ptr noundef nonnull %sub, ptr noundef nonnull %re)
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #8
  %conv = trunc i64 %call4 to i32
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %sub) #8
  %conv7 = trunc i64 %call6 to i32
  %call9 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %re) #8
  %conv10 = trunc i64 %call9 to i32
  %sub11 = sub nsw i32 %conv, %conv7
  %0 = load i8, ptr %sub, align 16
  %smax = call i32 @llvm.smax.i32(i32 %conv7, i32 0)
  %smax35 = call i32 @llvm.smax.i32(i32 %sub11, i32 -1)
  %1 = add i32 %smax35, 1
  %wide.trip.count36 = zext i32 %1 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc61, %entry
  %indvars.iv52 = phi i32 [ %indvars.iv.next53, %for.inc61 ], [ %conv7, %entry ]
  %indvars.iv41 = phi i32 [ %indvars.iv.next42, %for.inc61 ], [ 0, %entry ]
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.inc61 ], [ 0, %entry ]
  %exitcond37 = icmp eq i64 %indvars.iv32, %wide.trip.count36
  br i1 %exitcond37, label %if.then65, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [257 x i8], ptr %str, i64 0, i64 %indvars.iv32
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %cmp15 = icmp eq i8 %2, %0
  br i1 %cmp15, label %for.cond16, label %for.inc61

for.cond16:                                       ; preds = %for.body, %for.body18
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body18 ], [ 0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond29.preheader, label %for.body18

for.cond29.preheader:                             ; preds = %for.cond16
  %wide.trip.count44 = zext i32 %indvars.iv41 to i64
  br label %for.cond29

for.body18:                                       ; preds = %for.cond16
  %3 = add nuw nsw i64 %indvars.iv, %indvars.iv32
  %arrayidx20 = getelementptr inbounds nuw [257 x i8], ptr %str, i64 0, i64 %3
  %4 = load i8, ptr %arrayidx20, align 1, !tbaa !5
  %arrayidx23 = getelementptr inbounds nuw [257 x i8], ptr %sub, i64 0, i64 %indvars.iv
  %5 = load i8, ptr %arrayidx23, align 1, !tbaa !5
  %cmp25.not = icmp eq i8 %4, %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp25.not, label %for.cond16, label %for.inc61, !llvm.loop !8

for.cond29:                                       ; preds = %for.cond29.preheader, %for.body31
  %indvars.iv38 = phi i64 [ 0, %for.cond29.preheader ], [ %indvars.iv.next39, %for.body31 ]
  %exitcond45.not = icmp eq i64 %indvars.iv38, %wide.trip.count44
  br i1 %exitcond45.not, label %for.cond39.preheader, label %for.body31

for.cond39.preheader:                             ; preds = %for.cond29
  %smax49 = call i32 @llvm.smax.i32(i32 %conv10, i32 0)
  %wide.trip.count50 = zext nneg i32 %smax49 to i64
  br label %for.cond39

for.body31:                                       ; preds = %for.cond29
  %arrayidx33 = getelementptr inbounds nuw [257 x i8], ptr %str, i64 0, i64 %indvars.iv38
  %6 = load i8, ptr %arrayidx33, align 1, !tbaa !5
  %conv34 = sext i8 %6 to i32
  %putchar21 = call i32 @putchar(i32 %conv34)
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond29, !llvm.loop !11

for.cond39:                                       ; preds = %for.cond39.preheader, %for.body41
  %indvars.iv46 = phi i64 [ 0, %for.cond39.preheader ], [ %indvars.iv.next47, %for.body41 ]
  %exitcond51.not = icmp eq i64 %indvars.iv46, %wide.trip.count50
  br i1 %exitcond51.not, label %for.end48, label %for.body41

for.body41:                                       ; preds = %for.cond39
  %arrayidx43 = getelementptr inbounds nuw [257 x i8], ptr %re, i64 0, i64 %indvars.iv46
  %7 = load i8, ptr %arrayidx43, align 1, !tbaa !5
  %conv44 = sext i8 %7 to i32
  %putchar20 = call i32 @putchar(i32 %conv44)
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br label %for.cond39, !llvm.loop !12

for.end48:                                        ; preds = %for.cond39
  %8 = sext i32 %indvars.iv52 to i64
  %sext = shl i64 %call4, 32
  %9 = ashr exact i64 %sext, 32
  br label %for.cond50

for.cond50:                                       ; preds = %for.body52, %for.end48
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %for.body52 ], [ %8, %for.end48 ]
  %cmp51 = icmp slt i64 %indvars.iv55, %9
  br i1 %cmp51, label %for.body52, label %if.end68

for.body52:                                       ; preds = %for.cond50
  %arrayidx54 = getelementptr inbounds [257 x i8], ptr %str, i64 0, i64 %indvars.iv55
  %10 = load i8, ptr %arrayidx54, align 1, !tbaa !5
  %conv55 = sext i8 %10 to i32
  %putchar = call i32 @putchar(i32 %conv55)
  %indvars.iv.next56 = add nsw i64 %indvars.iv55, 1
  br label %for.cond50, !llvm.loop !13

for.inc61:                                        ; preds = %for.body18, %for.body
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %indvars.iv.next42 = add nuw i32 %indvars.iv41, 1
  %indvars.iv.next53 = add i32 %indvars.iv52, 1
  br label %for.cond, !llvm.loop !14

if.then65:                                        ; preds = %for.cond
  %call67 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %str)
  br label %if.end68

if.end68:                                         ; preds = %for.cond50, %if.then65
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %re) #7
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %sub) #7
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %str) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !10}
!13 = distinct !{!13, !9, !10}
!14 = distinct !{!14, !9, !10}
