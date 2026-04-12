; ModuleID = '<stdin>'
source_filename = "/tmp/tmp2ajen1kl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@__const.main.x = private unnamed_addr constant [12 x i32] [i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@__const.main.r = private unnamed_addr constant [12 x i32] [i32 31, i32 29, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@str.2 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.3 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %y = alloca i32, align 4
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %q) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %entry
  %t.0 = phi i32 [ 0, %entry ], [ %inc, %while.cond.backedge ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %t.0, %0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %inc = add nuw nsw i32 %t.0, 1
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %y, ptr noundef nonnull %p, ptr noundef nonnull %q)
  %1 = load i32, ptr %y, align 4, !tbaa !5
  %2 = and i32 %1, 3
  %cmp2.not = icmp eq i32 %2, 0
  br i1 %cmp2.not, label %if.else, label %if.then11

if.else:                                          ; preds = %while.body
  %rem3 = srem i32 %1, 100
  %cmp4 = icmp ne i32 %rem3, 0
  %rem5 = srem i32 %1, 400
  %cmp6.not = icmp eq i32 %rem5, 0
  %or.cond = or i1 %cmp4, %cmp6.not
  br i1 %or.cond, label %if.end37.thread, label %if.then11

if.end37.thread:                                  ; preds = %if.else
  store i32 0, ptr %y, align 4, !tbaa !5
  br label %if.then39

if.then11:                                        ; preds = %if.else, %while.body
  store i32 1, ptr %y, align 4, !tbaa !5
  %3 = load i32, ptr %p, align 4, !tbaa !5
  %4 = load i32, ptr %q, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %3, %4
  br i1 %cmp12, label %if.then13, label %if.else17

if.then13:                                        ; preds = %if.then11
  %sub = add i32 %3, -1
  %sub14 = add nsw i32 %4, -1
  %5 = sext i32 %sub to i64
  %6 = sext i32 %sub14 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then13
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %for.body ], [ %5, %if.then13 ]
  %s.1 = phi i32 [ %add, %for.body ], [ 0, %if.then13 ]
  %cmp15 = icmp slt i64 %indvars.iv33, %6
  br i1 %cmp15, label %for.body, label %if.end29

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [12 x i32], ptr @__const.main.x, i64 0, i64 %indvars.iv33
  %7 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %add = add nsw i32 %7, %s.1
  %indvars.iv.next34 = add nsw i64 %indvars.iv33, 1
  br label %for.cond, !llvm.loop !9

if.else17:                                        ; preds = %if.then11
  %sub18 = add i32 %4, -1
  %sub20 = add nsw i32 %3, -1
  %8 = sext i32 %sub18 to i64
  %9 = sext i32 %sub20 to i64
  br label %for.cond19

for.cond19:                                       ; preds = %for.body22, %if.else17
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body22 ], [ %8, %if.else17 ]
  %s.3 = phi i32 [ %add25, %for.body22 ], [ 0, %if.else17 ]
  %cmp21 = icmp slt i64 %indvars.iv, %9
  br i1 %cmp21, label %for.body22, label %if.end29

for.body22:                                       ; preds = %for.cond19
  %arrayidx24 = getelementptr inbounds [12 x i32], ptr @__const.main.x, i64 0, i64 %indvars.iv
  %10 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %add25 = add nsw i32 %10, %s.3
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %for.cond19, !llvm.loop !12

if.end29:                                         ; preds = %for.cond19, %for.cond
  %s.2 = phi i32 [ %s.1, %for.cond ], [ %s.3, %for.cond19 ]
  %rem30 = srem i32 %s.2, 7
  %cmp31 = icmp eq i32 %rem30, 0
  %str.1.str = select i1 %cmp31, ptr @str.3, ptr @str.2
  %puts21 = call i32 @puts(ptr nonnull dereferenceable(1) %str.1.str)
  %.pr = load i32, ptr %y, align 4, !tbaa !5
  %cmp38 = icmp eq i32 %.pr, 0
  br i1 %cmp38, label %if.then39, label %while.cond.backedge

if.then39:                                        ; preds = %if.end37.thread, %if.end29
  %s.027 = phi i32 [ 0, %if.end37.thread ], [ %s.2, %if.end29 ]
  %11 = load i32, ptr %p, align 4, !tbaa !5
  %12 = load i32, ptr %q, align 4, !tbaa !5
  %cmp40 = icmp slt i32 %11, %12
  br i1 %cmp40, label %if.then41, label %if.else53

if.then41:                                        ; preds = %if.then39
  %sub42 = add i32 %11, -1
  %sub44 = add nsw i32 %12, -1
  %13 = sext i32 %sub42 to i64
  %14 = sext i32 %sub44 to i64
  br label %for.cond43

for.cond43:                                       ; preds = %for.body46, %if.then41
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.body46 ], [ %13, %if.then41 ]
  %s.4 = phi i32 [ %add49, %for.body46 ], [ %s.027, %if.then41 ]
  %cmp45 = icmp slt i64 %indvars.iv39, %14
  br i1 %cmp45, label %for.body46, label %if.end65

for.body46:                                       ; preds = %for.cond43
  %arrayidx48 = getelementptr inbounds [12 x i32], ptr @__const.main.r, i64 0, i64 %indvars.iv39
  %15 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %add49 = add nsw i32 %15, %s.4
  %indvars.iv.next40 = add nsw i64 %indvars.iv39, 1
  br label %for.cond43, !llvm.loop !13

if.else53:                                        ; preds = %if.then39
  %sub54 = add i32 %12, -1
  %sub56 = add nsw i32 %11, -1
  %16 = sext i32 %sub54 to i64
  %17 = sext i32 %sub56 to i64
  br label %for.cond55

for.cond55:                                       ; preds = %for.body58, %if.else53
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %for.body58 ], [ %16, %if.else53 ]
  %s.6 = phi i32 [ %add61, %for.body58 ], [ %s.027, %if.else53 ]
  %cmp57 = icmp slt i64 %indvars.iv36, %17
  br i1 %cmp57, label %for.body58, label %if.end65

for.body58:                                       ; preds = %for.cond55
  %arrayidx60 = getelementptr inbounds [12 x i32], ptr @__const.main.r, i64 0, i64 %indvars.iv36
  %18 = load i32, ptr %arrayidx60, align 4, !tbaa !5
  %add61 = add nsw i32 %18, %s.6
  %indvars.iv.next37 = add nsw i64 %indvars.iv36, 1
  br label %for.cond55, !llvm.loop !14

if.end65:                                         ; preds = %for.cond55, %for.cond43
  %s.5 = phi i32 [ %s.4, %for.cond43 ], [ %s.6, %for.cond55 ]
  %rem66 = srem i32 %s.5, 7
  %cmp67 = icmp eq i32 %rem66, 0
  %str.3.str.2 = select i1 %cmp67, ptr @str.3, ptr @str.2
  %puts23 = call i32 @puts(ptr nonnull dereferenceable(1) %str.3.str.2)
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.end65, %if.end29
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %q) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y) #4
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
