; ModuleID = '<stdin>'
source_filename = "/tmp/tmp0in9dvb1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %s = alloca [300 x i8], align 16
  %a = alloca [100 x i8], align 16
  %b = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %s) #7
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %a) #7
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %b) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %s, ptr noundef nonnull %a, ptr noundef nonnull %b)
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #8
  %conv = trunc i64 %call4 to i32
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #8
  %conv7 = trunc i64 %call6 to i32
  %sub = sub nsw i32 %conv, %conv7
  %0 = load i8, ptr %a, align 16
  %smax = call i32 @llvm.smax.i32(i32 %conv7, i32 1)
  %smax30 = call i32 @llvm.smax.i32(i32 %sub, i32 -1)
  %1 = add i32 %smax30, 1
  %wide.trip.count31 = zext i32 %1 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc30, %entry
  %indvars.iv41 = phi i32 [ %indvars.iv.next42, %for.inc30 ], [ %conv7, %entry ]
  %indvars.iv36 = phi i32 [ %indvars.iv.next37, %for.inc30 ], [ 0, %entry ]
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.inc30 ], [ 0, %entry ]
  %exitcond32 = icmp eq i64 %indvars.iv27, %wide.trip.count31
  br i1 %exitcond32, label %if.then34, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [300 x i8], ptr %s, i64 0, i64 %indvars.iv27
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %cmp14 = icmp eq i8 %2, %0
  br i1 %cmp14, label %for.cond15, label %for.inc30

for.cond15:                                       ; preds = %for.body, %for.body17
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body17 ], [ 1, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond37.preheader, label %for.body17

for.cond37.preheader:                             ; preds = %for.cond15
  %wide.trip.count39 = zext i32 %indvars.iv36 to i64
  br label %for.cond37

for.body17:                                       ; preds = %for.cond15
  %3 = add nuw nsw i64 %indvars.iv, %indvars.iv27
  %arrayidx19 = getelementptr inbounds nuw [300 x i8], ptr %s, i64 0, i64 %3
  %4 = load i8, ptr %arrayidx19, align 1, !tbaa !5
  %arrayidx22 = getelementptr inbounds nuw [100 x i8], ptr %a, i64 0, i64 %indvars.iv
  %5 = load i8, ptr %arrayidx22, align 1, !tbaa !5
  %cmp24.not = icmp eq i8 %4, %5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp24.not, label %for.cond15, label %for.inc30, !llvm.loop !8

for.inc30:                                        ; preds = %for.body17, %for.body
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %indvars.iv.next37 = add nuw i32 %indvars.iv36, 1
  %indvars.iv.next42 = add i32 %indvars.iv41, 1
  br label %for.cond, !llvm.loop !11

if.then34:                                        ; preds = %for.cond
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %s)
  br label %if.end61

for.cond37:                                       ; preds = %for.cond37.preheader, %for.body39
  %indvars.iv33 = phi i64 [ 0, %for.cond37.preheader ], [ %indvars.iv.next34, %for.body39 ]
  %exitcond40.not = icmp eq i64 %indvars.iv33, %wide.trip.count39
  br i1 %exitcond40.not, label %for.end46, label %for.body39

for.body39:                                       ; preds = %for.cond37
  %arrayidx41 = getelementptr inbounds nuw [300 x i8], ptr %s, i64 0, i64 %indvars.iv33
  %6 = load i8, ptr %arrayidx41, align 1, !tbaa !5
  %conv42 = sext i8 %6 to i32
  %putchar20 = call i32 @putchar(i32 %conv42)
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond37, !llvm.loop !12

for.end46:                                        ; preds = %for.cond37
  %call48 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef nonnull %b)
  %7 = sext i32 %indvars.iv41 to i64
  %sext = shl i64 %call4, 32
  %8 = ashr exact i64 %sext, 32
  br label %for.cond50

for.cond50:                                       ; preds = %for.body52, %for.end46
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.body52 ], [ %7, %for.end46 ]
  %cmp51 = icmp slt i64 %indvars.iv44, %8
  br i1 %cmp51, label %for.body52, label %for.end59

for.body52:                                       ; preds = %for.cond50
  %arrayidx54 = getelementptr inbounds [300 x i8], ptr %s, i64 0, i64 %indvars.iv44
  %9 = load i8, ptr %arrayidx54, align 1, !tbaa !5
  %conv55 = sext i8 %9 to i32
  %putchar19 = call i32 @putchar(i32 %conv55)
  %indvars.iv.next45 = add nsw i64 %indvars.iv44, 1
  br label %for.cond50, !llvm.loop !13

for.end59:                                        ; preds = %for.cond50
  %putchar = call i32 @putchar(i32 10)
  br label %if.end61

if.end61:                                         ; preds = %for.end59, %if.then34
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %s) #7
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

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

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
