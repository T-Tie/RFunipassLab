; ModuleID = '<stdin>'
source_filename = "/tmp/tmpky227_uq.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %N = alloca i32, align 4
  %a = alloca [500 x i32], align 16
  %b = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N) #6
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %b) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %N)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %j.0 = phi i32 [ %j.1, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %j.0, i32 0)
  %wide.trip.count36 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %j.0 to i64
  br label %for.cond9

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %3 = and i32 %2, 1
  %cmp4.not = icmp eq i32 %3, 0
  br i1 %cmp4.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %idxprom7 = sext i32 %j.0 to i64
  %arrayidx8 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom7
  store i32 %2, ptr %arrayidx8, align 4, !tbaa !5
  %add = add nsw i32 %j.0, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %j.1 = phi i32 [ %add, %if.then ], [ %j.0, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond9.loopexit:                               ; preds = %for.cond13
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond9, !llvm.loop !12

for.cond9:                                        ; preds = %for.cond9.loopexit, %for.cond9.preheader
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.cond9.loopexit ], [ 0, %for.cond9.preheader ]
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.cond9.loopexit ], [ 1, %for.cond9.preheader ]
  %exitcond37.not = icmp eq i64 %indvars.iv32, %wide.trip.count36
  br i1 %exitcond37.not, label %for.cond37.preheader, label %for.body11

for.cond37.preheader:                             ; preds = %for.cond9
  %sub = add nsw i32 %j.0, -1
  %4 = sext i32 %sub to i64
  br label %for.cond37

for.body11:                                       ; preds = %for.cond9
  %arrayidx17 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv32
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc31, %for.body11
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for.inc31 ], [ %indvars.iv26, %for.body11 ]
  %exitcond.not = icmp eq i64 %indvars.iv28, %wide.trip.count
  br i1 %exitcond.not, label %for.cond9.loopexit, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %5 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %arrayidx19 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv28
  %6 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp sgt i32 %5, %6
  br i1 %cmp20, label %if.then21, label %for.inc31

if.then21:                                        ; preds = %for.body15
  store i32 %6, ptr %arrayidx17, align 4, !tbaa !5
  store i32 %5, ptr %arrayidx19, align 4, !tbaa !5
  br label %for.inc31

for.inc31:                                        ; preds = %for.body15, %if.then21
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond13, !llvm.loop !13

for.cond37:                                       ; preds = %for.cond37.preheader, %for.inc47
  %indvars.iv38 = phi i64 [ 0, %for.cond37.preheader ], [ %indvars.iv.next39, %for.inc47 ]
  %exitcond42.not = icmp eq i64 %indvars.iv38, %wide.trip.count36
  br i1 %exitcond42.not, label %for.end49, label %for.body39

for.body39:                                       ; preds = %for.cond37
  %arrayidx41 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv38
  %7 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %call42 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %7)
  %cmp43 = icmp slt i64 %indvars.iv38, %4
  br i1 %cmp43, label %if.then44, label %for.inc47

if.then44:                                        ; preds = %for.body39
  %putchar = call i32 @putchar(i32 44)
  br label %for.inc47

for.inc47:                                        ; preds = %for.body39, %if.then44
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond37, !llvm.loop !14

for.end49:                                        ; preds = %for.cond37
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
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
