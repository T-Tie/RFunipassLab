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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %c)
  %0 = load i32, ptr %c, align 4, !tbaa !5
  %sub = add nsw i32 %0, -2
  store i32 %sub, ptr %c, align 4, !tbaa !5
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %i, ptr noundef nonnull %b)
  %.pr = load i32, ptr %c, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end24, %entry
  %1 = phi i32 [ %dec, %if.end24 ], [ %.pr, %entry ]
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.2, ptr noundef nonnull %a)
  %2 = load i32, ptr %a, align 4, !tbaa !5
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %cmp3.not = icmp slt i32 %2, %3
  %.pre = load i32, ptr %b, align 4
  %cmp4.not = icmp slt i32 %.pre, %2
  %or.cond14 = select i1 %cmp3.not, i1 true, i1 %cmp4.not
  br i1 %or.cond14, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  store i32 %.pre, ptr %i, align 4, !tbaa !5
  store i32 %2, ptr %b, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %4 = phi i32 [ %2, %if.then ], [ %.pre, %while.body ]
  %5 = phi i32 [ %.pre, %if.then ], [ %3, %while.body ]
  %cmp5.not = icmp sgt i32 %2, %5
  %cmp7.not = icmp sgt i32 %4, %2
  %or.cond = select i1 %cmp5.not, i1 true, i1 %cmp7.not
  br i1 %or.cond, label %if.end9, label %if.then8

if.then8:                                         ; preds = %if.end
  store i32 %2, ptr %b, align 4, !tbaa !5
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end
  %6 = phi i32 [ %2, %if.then8 ], [ %4, %if.end ]
  %cmp12.not = icmp slt i32 %6, %5
  %or.cond15 = select i1 %cmp5.not, i1 true, i1 %cmp12.not
  br i1 %or.cond15, label %if.end14, label %if.then13

if.then13:                                        ; preds = %if.end9
  store i32 %6, ptr %i, align 4, !tbaa !5
  store i32 %5, ptr %b, align 4, !tbaa !5
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end9
  %7 = phi i32 [ %5, %if.then13 ], [ %6, %if.end9 ]
  %8 = phi i32 [ %6, %if.then13 ], [ %5, %if.end9 ]
  %cmp15.not = icmp slt i32 %2, %8
  %cmp17.not = icmp sgt i32 %7, %8
  %or.cond11 = select i1 %cmp15.not, i1 true, i1 %cmp17.not
  br i1 %or.cond11, label %if.end19, label %if.then18

if.then18:                                        ; preds = %if.end14
  store i32 %2, ptr %i, align 4, !tbaa !5
  store i32 %8, ptr %b, align 4, !tbaa !5
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end14
  %9 = phi i32 [ %2, %if.then18 ], [ %8, %if.end14 ]
  %10 = phi i32 [ %8, %if.then18 ], [ %7, %if.end14 ]
  %cmp20.not = icmp slt i32 %2, %10
  %cmp22.not = icmp slt i32 %10, %9
  %or.cond12 = or i1 %cmp20.not, %cmp22.not
  br i1 %or.cond12, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end19
  store i32 %2, ptr %i, align 4, !tbaa !5
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end19
  %11 = load i32, ptr %c, align 4, !tbaa !5
  %dec = add nsw i32 %11, -1
  store i32 %dec, ptr %c, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %call30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %12)
  %13 = load i32, ptr %b, align 4, !tbaa !5
  %call31 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %13)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #4
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
