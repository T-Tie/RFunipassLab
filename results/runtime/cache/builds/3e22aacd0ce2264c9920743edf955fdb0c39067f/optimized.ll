; ModuleID = '<stdin>'
source_filename = "/tmp/tmp17piiti0.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %i) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %b) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %c) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %c)
  %0 = load i32, ptr %c, align 4, !tbaa !5
  %sub = add nsw i32 %0, -2
  store i32 %sub, ptr %c, align 4, !tbaa !5
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %i, ptr noundef nonnull %b)
  %.pr = load i32, ptr %c, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end29, %entry
  %1 = phi i32 [ %dec, %if.end29 ], [ %.pr, %entry ]
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.2, ptr noundef nonnull %a)
  %2 = load i32, ptr %a, align 4, !tbaa !5
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %cmp3.not = icmp slt i32 %2, %3
  %.pre.pre = load i32, ptr %b, align 4
  %cmp4.not = icmp slt i32 %.pre.pre, %2
  %or.cond21 = select i1 %cmp3.not, i1 true, i1 %cmp4.not
  br i1 %or.cond21, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  store i32 %.pre.pre, ptr %i, align 4, !tbaa !5
  store i32 %2, ptr %b, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %.pre = phi i32 [ %2, %if.then ], [ %.pre.pre, %while.body ]
  %4 = phi i32 [ %.pre.pre, %if.then ], [ %3, %while.body ]
  %cmp5.not = icmp sgt i32 %2, %4
  br i1 %cmp5.not, label %if.end14, label %land.lhs.true6

land.lhs.true6:                                   ; preds = %if.end
  %cmp7.not = icmp sgt i32 %.pre, %2
  br i1 %cmp7.not, label %land.lhs.true11, label %if.then8

if.then8:                                         ; preds = %land.lhs.true6
  store i32 %2, ptr %b, align 4, !tbaa !5
  br label %land.lhs.true11

land.lhs.true11:                                  ; preds = %if.then8, %land.lhs.true6
  %5 = phi i32 [ %2, %if.then8 ], [ %.pre, %land.lhs.true6 ]
  %cmp12.not = icmp slt i32 %5, %4
  br i1 %cmp12.not, label %if.end14, label %if.then13

if.then13:                                        ; preds = %land.lhs.true11
  store i32 %5, ptr %i, align 4, !tbaa !5
  store i32 %4, ptr %b, align 4, !tbaa !5
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then13, %land.lhs.true11
  %6 = phi i32 [ %.pre, %if.end ], [ %4, %if.then13 ], [ %5, %land.lhs.true11 ]
  %7 = phi i32 [ %4, %if.end ], [ %5, %if.then13 ], [ %4, %land.lhs.true11 ]
  %cmp15 = icmp sge i32 %2, %7
  %cmp17 = icmp sle i32 %6, %7
  %or.cond = select i1 %cmp15, i1 %cmp17, i1 false
  br i1 %or.cond, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.end14
  store i32 %2, ptr %i, align 4, !tbaa !5
  store i32 %7, ptr %b, align 4, !tbaa !5
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end14
  %8 = phi i32 [ %2, %if.then18 ], [ %7, %if.end14 ]
  %9 = phi i32 [ %7, %if.then18 ], [ %6, %if.end14 ]
  %cmp20 = icmp sge i32 %2, %9
  %cmp22 = icmp sge i32 %9, %8
  %or.cond19 = and i1 %cmp20, %cmp22
  br i1 %or.cond19, label %if.then23, label %if.end29

if.then23:                                        ; preds = %if.end19
  store i32 %2, ptr %i, align 4, !tbaa !5
  br label %if.end29

if.end29:                                         ; preds = %if.end19, %if.then23
  %10 = load i32, ptr %c, align 4, !tbaa !5
  %dec = add nsw i32 %10, -1
  store i32 %dec, ptr %c, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %call30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %11) #5
  %12 = load i32, ptr %b, align 4, !tbaa !5
  %call31 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %12) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %i) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

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
