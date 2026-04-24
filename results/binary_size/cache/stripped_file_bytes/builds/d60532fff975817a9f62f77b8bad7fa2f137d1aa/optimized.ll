; ModuleID = '<stdin>'
source_filename = "/tmp/tmp7zcrb8gy.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %s = alloca [500 x i32], align 16
  %ss = alloca [500 x i32], align 16
  %a = alloca [501 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #8
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %s) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2000) %s, i8 0, i64 2000, i1 false)
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %ss) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2000) %ss, i8 0, i64 2000, i1 false)
  call void @llvm.lifetime.start.p0(i64 501, ptr nonnull %a) #8
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a)
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #9
  %conv = trunc i64 %call3 to i32
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %conv, %0
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %smax43 = call i32 @llvm.smax.i32(i32 %sub, i32 -1)
  %1 = add i32 %smax43, 1
  %wide.trip.count44 = zext i32 %1 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond.loopexit:                                ; preds = %for.cond5
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond, !llvm.loop !9

for.cond:                                         ; preds = %for.cond.loopexit, %entry
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %for.cond.loopexit ], [ 0, %entry ]
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %for.cond.loopexit ], [ 1, %entry ]
  %exitcond45 = icmp eq i64 %indvars.iv40, %wide.trip.count44
  br i1 %exitcond45, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.cond
  %2 = load i32, ptr %s, align 16, !tbaa !5
  br label %for.cond36

for.body:                                         ; preds = %for.cond
  %arrayidx26 = getelementptr inbounds nuw [500 x i32], ptr %s, i64 0, i64 %indvars.iv40
  br label %for.cond5

for.cond5:                                        ; preds = %if.end28, %for.body
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %if.end28 ], [ %indvars.iv35, %for.body ]
  %3 = trunc nuw i64 %indvars.iv37 to i32
  %cmp8.not = icmp slt i32 %sub, %3
  br i1 %cmp8.not, label %for.cond.loopexit, label %for.cond11

for.cond11:                                       ; preds = %for.cond5, %for.body14
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body14 ], [ 0, %for.cond5 ]
  %e.2 = phi i32 [ %spec.select, %for.body14 ], [ 0, %for.cond5 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup13, label %for.body14

for.cond.cleanup13:                               ; preds = %for.cond11
  %cmp23 = icmp eq i32 %e.2, %0
  br i1 %cmp23, label %if.then24, label %if.end28

for.body14:                                       ; preds = %for.cond11
  %4 = add nuw nsw i64 %indvars.iv, %indvars.iv40
  %arrayidx = getelementptr inbounds nuw [501 x i8], ptr %a, i64 0, i64 %4
  %5 = load i8, ptr %arrayidx, align 1, !tbaa !12
  %6 = add nuw nsw i64 %indvars.iv, %indvars.iv37
  %arrayidx19 = getelementptr inbounds nuw [501 x i8], ptr %a, i64 0, i64 %6
  %7 = load i8, ptr %arrayidx19, align 1, !tbaa !12
  %cmp21 = icmp eq i8 %5, %7
  %inc = zext i1 %cmp21 to i32
  %spec.select = add nuw nsw i32 %e.2, %inc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond11, !llvm.loop !13

if.then24:                                        ; preds = %for.cond.cleanup13
  %8 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %inc27 = add nsw i32 %8, 1
  store i32 %inc27, ptr %arrayidx26, align 4, !tbaa !5
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %for.cond.cleanup13
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond5, !llvm.loop !14

for.cond36:                                       ; preds = %for.body41, %for.cond.cleanup
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.body41 ], [ 0, %for.cond.cleanup ]
  %max.0 = phi i32 [ %spec.select31, %for.body41 ], [ %2, %for.cond.cleanup ]
  %exitcond50 = icmp eq i64 %indvars.iv46, %wide.trip.count44
  br i1 %exitcond50, label %for.cond52, label %for.body41

for.body41:                                       ; preds = %for.cond36
  %arrayidx43 = getelementptr inbounds nuw [500 x i32], ptr %s, i64 0, i64 %indvars.iv46
  %9 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %spec.select31 = call i32 @llvm.smax.i32(i32 %max.0, i32 %9)
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br label %for.cond36, !llvm.loop !15

for.cond52:                                       ; preds = %for.cond36, %for.inc66
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %for.inc66 ], [ 0, %for.cond36 ]
  %ee.0 = phi i32 [ %ee.1, %for.inc66 ], [ 0, %for.cond36 ]
  %exitcond55 = icmp eq i64 %indvars.iv51, %wide.trip.count44
  br i1 %exitcond55, label %for.cond.cleanup56, label %for.body57

for.cond.cleanup56:                               ; preds = %for.cond52
  %cmp69.not = icmp eq i32 %max.0, 0
  br i1 %cmp69.not, label %if.else, label %if.then70

for.body57:                                       ; preds = %for.cond52
  %arrayidx59 = getelementptr inbounds nuw [500 x i32], ptr %s, i64 0, i64 %indvars.iv51
  %10 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  %cmp60 = icmp eq i32 %max.0, %10
  br i1 %cmp60, label %if.then61, label %for.inc66

if.then61:                                        ; preds = %for.body57
  %idxprom62 = sext i32 %ee.0 to i64
  %arrayidx63 = getelementptr inbounds [500 x i32], ptr %ss, i64 0, i64 %idxprom62
  %11 = trunc nuw nsw i64 %indvars.iv51 to i32
  store i32 %11, ptr %arrayidx63, align 4, !tbaa !5
  %inc64 = add nsw i32 %ee.0, 1
  br label %for.inc66

for.inc66:                                        ; preds = %for.body57, %if.then61
  %ee.1 = phi i32 [ %inc64, %if.then61 ], [ %ee.0, %for.body57 ]
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  br label %for.cond52, !llvm.loop !16

if.then70:                                        ; preds = %for.cond.cleanup56
  %add71 = add nsw i32 %max.0, 1
  %call72 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %add71)
  %smax60 = call i32 @llvm.smax.i32(i32 %ee.0, i32 0)
  %wide.trip.count61 = zext nneg i32 %smax60 to i64
  br label %for.cond73

for.cond73:                                       ; preds = %for.cond.cleanup80, %if.then70
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %for.cond.cleanup80 ], [ 0, %if.then70 ]
  %exitcond62.not = icmp eq i64 %indvars.iv56, %wide.trip.count61
  br i1 %exitcond62.not, label %if.end96, label %for.body76

for.body76:                                       ; preds = %for.cond73
  %putchar = call i32 @putchar(i32 10)
  %arrayidx83 = getelementptr inbounds nuw [500 x i32], ptr %ss, i64 0, i64 %indvars.iv56
  br label %for.cond78

for.cond78:                                       ; preds = %for.body81, %for.body76
  %t.0 = phi i32 [ 0, %for.body76 ], [ %inc90, %for.body81 ]
  %12 = load i32, ptr %n, align 4, !tbaa !5
  %cmp79 = icmp slt i32 %t.0, %12
  br i1 %cmp79, label %for.body81, label %for.cond.cleanup80

for.cond.cleanup80:                               ; preds = %for.cond78
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  br label %for.cond73, !llvm.loop !17

for.body81:                                       ; preds = %for.cond78
  %13 = load i32, ptr %arrayidx83, align 4, !tbaa !5
  %add84 = add nsw i32 %13, %t.0
  %idxprom85 = sext i32 %add84 to i64
  %arrayidx86 = getelementptr inbounds [501 x i8], ptr %a, i64 0, i64 %idxprom85
  %14 = load i8, ptr %arrayidx86, align 1, !tbaa !12
  %conv87 = sext i8 %14 to i32
  %putchar30 = call i32 @putchar(i32 %conv87)
  %inc90 = add nuw nsw i32 %t.0, 1
  br label %for.cond78, !llvm.loop !18

if.else:                                          ; preds = %for.cond.cleanup56
  %call95 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4)
  br label %if.end96

if.end96:                                         ; preds = %for.cond73, %if.else
  call void @llvm.lifetime.end.p0(i64 501, ptr nonnull %a) #8
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %ss) #8
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %s) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

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
!12 = !{!7, !7, i64 0}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
