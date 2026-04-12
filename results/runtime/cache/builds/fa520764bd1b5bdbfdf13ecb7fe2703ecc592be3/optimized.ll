; ModuleID = '<stdin>'
source_filename = "/tmp/tmpn91thcjx.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%d\0A%d\0A%d\0A%d\0A%d\0A%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %b) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %c) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %d) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %e) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %f) #4
  store i32 0, ptr %f, align 4, !tbaa !5
  store i32 0, ptr %e, align 4, !tbaa !5
  store i32 0, ptr %d, align 4, !tbaa !5
  store i32 0, ptr %c, align 4, !tbaa !5
  store i32 0, ptr %b, align 4, !tbaa !5
  store i32 0, ptr %a, align 4, !tbaa !5
  %.pr = load i32, ptr %n, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = phi i32 [ %sub, %while.body ], [ %.pr, %entry ]
  %cmp = icmp sge i32 %0, 100
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i32, ptr %a, align 4, !tbaa !5
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %a, align 4, !tbaa !5
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %2, 100
  store i32 %sub, ptr %n, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %.pr1 = load i32, ptr %n, align 4, !tbaa !5
  br label %while.cond1

while.cond1:                                      ; preds = %while.body4, %while.end
  %3 = phi i32 [ %sub6, %while.body4 ], [ %.pr1, %while.end ]
  %cmp2 = icmp slt i32 %3, 100
  br i1 %cmp2, label %land.end, label %while.end7

land.end:                                         ; preds = %while.cond1
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %cmp3 = icmp sge i32 %4, 50
  br i1 %cmp3, label %while.body4, label %while.end7

while.body4:                                      ; preds = %land.end
  %5 = load i32, ptr %b, align 4, !tbaa !5
  %inc5 = add nsw i32 %5, 1
  store i32 %inc5, ptr %b, align 4, !tbaa !5
  %sub6 = sub nsw i32 %4, 50
  store i32 %sub6, ptr %n, align 4, !tbaa !5
  br label %while.cond1, !llvm.loop !12

while.end7:                                       ; preds = %while.cond1, %land.end
  %.pr2 = load i32, ptr %n, align 4, !tbaa !5
  br label %while.cond8

while.cond8:                                      ; preds = %while.body13, %while.end7
  %6 = phi i32 [ %sub15, %while.body13 ], [ %.pr2, %while.end7 ]
  %cmp9 = icmp slt i32 %6, 50
  br i1 %cmp9, label %land.end12, label %while.end16

land.end12:                                       ; preds = %while.cond8
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %cmp11 = icmp sge i32 %7, 20
  br i1 %cmp11, label %while.body13, label %while.end16

while.body13:                                     ; preds = %land.end12
  %8 = load i32, ptr %c, align 4, !tbaa !5
  %inc14 = add nsw i32 %8, 1
  store i32 %inc14, ptr %c, align 4, !tbaa !5
  %sub15 = sub nsw i32 %7, 20
  store i32 %sub15, ptr %n, align 4, !tbaa !5
  br label %while.cond8, !llvm.loop !13

while.end16:                                      ; preds = %while.cond8, %land.end12
  %.pr3 = load i32, ptr %n, align 4, !tbaa !5
  br label %while.cond17

while.cond17:                                     ; preds = %while.body22, %while.end16
  %9 = phi i32 [ %sub24, %while.body22 ], [ %.pr3, %while.end16 ]
  %cmp18 = icmp slt i32 %9, 20
  br i1 %cmp18, label %land.end21, label %while.end25

land.end21:                                       ; preds = %while.cond17
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %cmp20 = icmp sge i32 %10, 10
  br i1 %cmp20, label %while.body22, label %while.end25

while.body22:                                     ; preds = %land.end21
  %11 = load i32, ptr %d, align 4, !tbaa !5
  %inc23 = add nsw i32 %11, 1
  store i32 %inc23, ptr %d, align 4, !tbaa !5
  %sub24 = sub nsw i32 %10, 10
  store i32 %sub24, ptr %n, align 4, !tbaa !5
  br label %while.cond17, !llvm.loop !14

while.end25:                                      ; preds = %while.cond17, %land.end21
  %.pr4 = load i32, ptr %n, align 4, !tbaa !5
  br label %while.cond26

while.cond26:                                     ; preds = %while.body31, %while.end25
  %12 = phi i32 [ %sub33, %while.body31 ], [ %.pr4, %while.end25 ]
  %cmp27 = icmp slt i32 %12, 10
  br i1 %cmp27, label %land.end30, label %land.end30.thread

land.end30.thread:                                ; preds = %while.cond26
  %.pr5 = load i32, ptr %n, align 4, !tbaa !5
  br label %while.cond35

land.end30:                                       ; preds = %while.cond26
  %13 = load i32, ptr %n, align 4, !tbaa !5
  %cmp29 = icmp sge i32 %13, 5
  br i1 %cmp29, label %while.body31, label %while.cond35

while.body31:                                     ; preds = %land.end30
  %14 = load i32, ptr %e, align 4, !tbaa !5
  %inc32 = add nsw i32 %14, 1
  store i32 %inc32, ptr %e, align 4, !tbaa !5
  %sub33 = sub nsw i32 %13, 5
  store i32 %sub33, ptr %n, align 4, !tbaa !5
  br label %while.cond26, !llvm.loop !15

while.cond35:                                     ; preds = %land.end30, %land.end30.thread
  %15 = phi i32 [ %13, %land.end30 ], [ %.pr5, %land.end30.thread ]
  %cmp36 = icmp sgt i32 %15, 0
  br i1 %cmp36, label %land.end39, label %while.end41

land.end39:                                       ; preds = %while.cond35
  %cmp38 = icmp slt i32 %15, 5
  br i1 %cmp38, label %while.body40, label %while.end41

while.body40:                                     ; preds = %land.end39
  store i32 %15, ptr %f, align 4, !tbaa !5
  br label %while.end41

while.end41:                                      ; preds = %while.cond35, %while.body40, %land.end39
  %16 = load i32, ptr %a, align 4, !tbaa !5
  %17 = load i32, ptr %b, align 4, !tbaa !5
  %18 = load i32, ptr %c, align 4, !tbaa !5
  %19 = load i32, ptr %d, align 4, !tbaa !5
  %20 = load i32, ptr %e, align 4, !tbaa !5
  %21 = load i32, ptr %f, align 4, !tbaa !5
  %call42 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %16, i32 noundef %17, i32 noundef %18, i32 noundef %19, i32 noundef %20, i32 noundef %21)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %f) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %e) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %d) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %c) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %b) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %a) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
