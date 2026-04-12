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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %a) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %b) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %c) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %c)
  %0 = load i32, ptr %c, align 4, !tbaa !5
  %sub = sub nsw i32 %0, 2
  store i32 %sub, ptr %c, align 4, !tbaa !5
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %i, ptr noundef %b)
  br label %while.cond

while.cond:                                       ; preds = %if.end29, %entry
  %1 = load i32, ptr %c, align 4, !tbaa !5
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.2, ptr noundef %a)
  %2 = load i32, ptr %a, align 4, !tbaa !5
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %cmp3 = icmp sge i32 %2, %3
  br i1 %cmp3, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %4 = load i32, ptr %b, align 4, !tbaa !5
  %cmp4 = icmp sge i32 %4, %2
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  store i32 %4, ptr %i, align 4, !tbaa !5
  store i32 %2, ptr %b, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %while.body
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %cmp5 = icmp sle i32 %2, %5
  br i1 %cmp5, label %land.lhs.true6, label %if.end9

land.lhs.true6:                                   ; preds = %if.end
  %6 = load i32, ptr %b, align 4, !tbaa !5
  %cmp7 = icmp sle i32 %6, %2
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %land.lhs.true6
  store i32 %2, ptr %b, align 4, !tbaa !5
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %land.lhs.true6, %if.end
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %cmp10 = icmp sle i32 %2, %7
  br i1 %cmp10, label %land.lhs.true11, label %if.end14

land.lhs.true11:                                  ; preds = %if.end9
  %8 = load i32, ptr %b, align 4, !tbaa !5
  %cmp12 = icmp sge i32 %8, %7
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %land.lhs.true11
  store i32 %8, ptr %i, align 4, !tbaa !5
  store i32 %7, ptr %b, align 4, !tbaa !5
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %land.lhs.true11, %if.end9
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %cmp15 = icmp sge i32 %2, %9
  br i1 %cmp15, label %land.lhs.true16, label %if.end19

land.lhs.true16:                                  ; preds = %if.end14
  %10 = load i32, ptr %b, align 4, !tbaa !5
  %cmp17 = icmp sle i32 %10, %9
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %land.lhs.true16
  store i32 %2, ptr %i, align 4, !tbaa !5
  store i32 %9, ptr %b, align 4, !tbaa !5
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %land.lhs.true16, %if.end14
  %11 = load i32, ptr %b, align 4, !tbaa !5
  %cmp20 = icmp sge i32 %2, %11
  br i1 %cmp20, label %land.lhs.true21, label %if.end24

land.lhs.true21:                                  ; preds = %if.end19
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %cmp22 = icmp sge i32 %11, %12
  br i1 %cmp22, label %if.then23, label %if.end24

if.then23:                                        ; preds = %land.lhs.true21
  store i32 %2, ptr %i, align 4, !tbaa !5
  store i32 %11, ptr %b, align 4, !tbaa !5
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %land.lhs.true21, %if.end19
  %13 = load i32, ptr %b, align 4, !tbaa !5
  %cmp25 = icmp sle i32 %2, %13
  br i1 %cmp25, label %land.lhs.true26, label %if.end29

land.lhs.true26:                                  ; preds = %if.end24
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %cmp27 = icmp sle i32 %13, %14
  br i1 %cmp27, label %if.then28, label %if.end29

if.then28:                                        ; preds = %land.lhs.true26
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %land.lhs.true26, %if.end24
  %15 = load i32, ptr %c, align 4, !tbaa !5
  %dec = add nsw i32 %15, -1
  store i32 %dec, ptr %c, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %call30 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %16)
  %17 = load i32, ptr %b, align 4, !tbaa !5
  %call31 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %17)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %c) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %b) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %a) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

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
