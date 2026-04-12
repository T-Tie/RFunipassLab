; ModuleID = '<stdin>'
source_filename = "/tmp/tmpje3ik8mk.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@__const.main.pn = private unnamed_addr constant [13 x i32] [i32 0, i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@__const.main.rn = private unnamed_addr constant [13 x i32] [i32 0, i32 31, i32 29, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@str.2 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.3 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %y = alloca i32, align 4
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m2) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %if.end61, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc63, %if.end61 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %i.0, %0
  br i1 %cmp.not, label %for.end64, label %for.body

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %y, ptr noundef nonnull %m1, ptr noundef nonnull %m2)
  %1 = load i32, ptr %y, align 4, !tbaa !5
  %2 = and i32 %1, 3
  %cmp2 = icmp eq i32 %2, 0
  %rem3 = srem i32 %1, 100
  %cmp4.not = icmp ne i32 %rem3, 0
  %or.cond.not25 = and i1 %cmp2, %cmp4.not
  %rem5 = srem i32 %1, 400
  %cmp6 = icmp eq i32 %rem5, 0
  %or.cond24 = or i1 %cmp6, %or.cond.not25
  %3 = load i32, ptr %m1, align 4, !tbaa !5
  %4 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %3, %4
  br i1 %or.cond24, label %if.then, label %if.else29

if.then:                                          ; preds = %for.body
  br i1 %cmp7, label %for.cond9.preheader, label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %if.then
  %5 = sext i32 %4 to i64
  %wide.trip.count39 = sext i32 %3 to i64
  br label %for.cond12

for.cond9.preheader:                              ; preds = %if.then
  %6 = sext i32 %3 to i64
  %wide.trip.count45 = sext i32 %4 to i64
  br label %for.cond9

for.cond9:                                        ; preds = %for.cond9.preheader, %for.body11
  %indvars.iv41 = phi i64 [ %6, %for.cond9.preheader ], [ %indvars.iv.next42, %for.body11 ]
  %a.0 = phi i32 [ 0, %for.cond9.preheader ], [ %add, %for.body11 ]
  %exitcond46.not = icmp eq i64 %indvars.iv41, %wide.trip.count45
  br i1 %exitcond46.not, label %if.end, label %for.body11

for.body11:                                       ; preds = %for.cond9
  %arrayidx = getelementptr inbounds [13 x i32], ptr @__const.main.rn, i64 0, i64 %indvars.iv41
  %7 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %add = add nsw i32 %7, %a.0
  %indvars.iv.next42 = add nsw i64 %indvars.iv41, 1
  br label %for.cond9, !llvm.loop !9

for.cond12:                                       ; preds = %for.cond12.preheader, %for.body15
  %indvars.iv36 = phi i64 [ %5, %for.cond12.preheader ], [ %indvars.iv.next37, %for.body15 ]
  %a.2 = phi i32 [ 0, %for.cond12.preheader ], [ %add18, %for.body15 ]
  %exitcond40.not = icmp eq i64 %indvars.iv36, %wide.trip.count39
  br i1 %exitcond40.not, label %if.end, label %for.body15

for.body15:                                       ; preds = %for.cond12
  %arrayidx17 = getelementptr inbounds [13 x i32], ptr @__const.main.rn, i64 0, i64 %indvars.iv36
  %8 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %add18 = add nsw i32 %8, %a.2
  %indvars.iv.next37 = add nsw i64 %indvars.iv36, 1
  br label %for.cond12, !llvm.loop !12

if.end:                                           ; preds = %for.cond12, %for.cond9
  %a.1 = phi i32 [ %a.0, %for.cond9 ], [ %a.2, %for.cond12 ]
  %rem22 = srem i32 %a.1, 7
  %cmp23 = icmp eq i32 %rem22, 0
  %str.3.str.2 = select i1 %cmp23, ptr @str.3, ptr @str.2
  br label %if.end61

if.else29:                                        ; preds = %for.body
  br i1 %cmp7, label %for.cond32.preheader, label %for.cond43.preheader

for.cond43.preheader:                             ; preds = %if.else29
  %9 = sext i32 %4 to i64
  %wide.trip.count = sext i32 %3 to i64
  br label %for.cond43

for.cond32.preheader:                             ; preds = %if.else29
  %10 = sext i32 %3 to i64
  %wide.trip.count34 = sext i32 %4 to i64
  br label %for.cond32

for.cond32:                                       ; preds = %for.cond32.preheader, %for.body35
  %indvars.iv31 = phi i64 [ %10, %for.cond32.preheader ], [ %indvars.iv.next32, %for.body35 ]
  %a.3 = phi i32 [ 0, %for.cond32.preheader ], [ %add38, %for.body35 ]
  %exitcond35.not = icmp eq i64 %indvars.iv31, %wide.trip.count34
  br i1 %exitcond35.not, label %if.end53, label %for.body35

for.body35:                                       ; preds = %for.cond32
  %arrayidx37 = getelementptr inbounds [13 x i32], ptr @__const.main.pn, i64 0, i64 %indvars.iv31
  %11 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %add38 = add nsw i32 %11, %a.3
  %indvars.iv.next32 = add nsw i64 %indvars.iv31, 1
  br label %for.cond32, !llvm.loop !13

for.cond43:                                       ; preds = %for.cond43.preheader, %for.body46
  %indvars.iv = phi i64 [ %9, %for.cond43.preheader ], [ %indvars.iv.next, %for.body46 ]
  %a.5 = phi i32 [ 0, %for.cond43.preheader ], [ %add49, %for.body46 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %if.end53, label %for.body46

for.body46:                                       ; preds = %for.cond43
  %arrayidx48 = getelementptr inbounds [13 x i32], ptr @__const.main.pn, i64 0, i64 %indvars.iv
  %12 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %add49 = add nsw i32 %12, %a.5
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %for.cond43, !llvm.loop !14

if.end53:                                         ; preds = %for.cond43, %for.cond32
  %a.4 = phi i32 [ %a.3, %for.cond32 ], [ %a.5, %for.cond43 ]
  %rem54 = srem i32 %a.4, 7
  %cmp55 = icmp eq i32 %rem54, 0
  %str.1.str = select i1 %cmp55, ptr @str.3, ptr @str.2
  br label %if.end61

if.end61:                                         ; preds = %if.end53, %if.end
  %str.1.sink = phi ptr [ %str.3.str.2, %if.end ], [ %str.1.str, %if.end53 ]
  %puts21 = call i32 @puts(ptr nonnull dereferenceable(1) %str.1.sink)
  %inc63 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !15

for.end64:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind }

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
