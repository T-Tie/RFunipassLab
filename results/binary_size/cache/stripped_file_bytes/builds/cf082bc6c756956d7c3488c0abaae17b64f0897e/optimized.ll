; ModuleID = '/tmp/tmp__2n3chp.cpp'
source_filename = "/tmp/tmp__2n3chp.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@__const.main.days = private unnamed_addr constant [13 x i32] [i32 0, i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %days = alloca [13 x i32], align 16
  %y = alloca i32, align 4
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  %d = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 52, ptr %days) #4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %days, ptr align 16 @__const.main.days, i64 52, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc33, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end35

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %d, align 4, !tbaa !5
  %arrayidx = getelementptr inbounds [13 x i32], ptr %days, i64 0, i64 2
  store i32 28, ptr %arrayidx, align 8, !tbaa !5
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %y, ptr noundef %m1, ptr noundef %m2)
  %2 = load i32, ptr %y, align 4, !tbaa !5
  %rem = srem i32 %2, 4
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body
  %3 = load i32, ptr %y, align 4, !tbaa !5
  %rem3 = srem i32 %3, 100
  %cmp4 = icmp ne i32 %rem3, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body
  %4 = load i32, ptr %y, align 4, !tbaa !5
  %rem5 = srem i32 %4, 400
  %cmp6 = icmp eq i32 %rem5, 0
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %arrayidx7 = getelementptr inbounds [13 x i32], ptr %days, i64 0, i64 2
  %5 = load i32, ptr %arrayidx7, align 8, !tbaa !5
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %arrayidx7, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %6 = load i32, ptr %m1, align 4, !tbaa !5
  %cmp8 = icmp sgt i32 %6, 12
  br i1 %cmp8, label %if.then15, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %if.end
  %7 = load i32, ptr %m1, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %7, 1
  br i1 %cmp10, label %if.then15, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %8 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp12 = icmp sgt i32 %8, 12
  br i1 %cmp12, label %if.then15, label %lor.lhs.false13

lor.lhs.false13:                                  ; preds = %lor.lhs.false11
  %9 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %9, 1
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %lor.lhs.false13, %lor.lhs.false11, %lor.lhs.false9, %if.end
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end20

if.else:                                          ; preds = %lor.lhs.false13
  %10 = load i32, ptr %m1, align 4, !tbaa !5
  %11 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp17 = icmp sgt i32 %10, %11
  br i1 %cmp17, label %if.then18, label %if.end19

if.then18:                                        ; preds = %if.else
  %12 = load i32, ptr %m1, align 4, !tbaa !5
  store i32 %12, ptr %t, align 4, !tbaa !5
  %13 = load i32, ptr %m2, align 4, !tbaa !5
  store i32 %13, ptr %m1, align 4, !tbaa !5
  %14 = load i32, ptr %t, align 4, !tbaa !5
  store i32 %14, ptr %m2, align 4, !tbaa !5
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.else
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then15
  %15 = load i32, ptr %m1, align 4, !tbaa !5
  store i32 %15, ptr %j, align 4, !tbaa !5
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc, %if.end20
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %17 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %16, %17
  br i1 %cmp22, label %for.body23, label %for.end

for.body23:                                       ; preds = %for.cond21
  %18 = load i32, ptr %d, align 4, !tbaa !5
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %19 to i64
  %arrayidx24 = getelementptr inbounds [13 x i32], ptr %days, i64 0, i64 %idxprom
  %20 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %add = add nsw i32 %18, %20
  store i32 %add, ptr %d, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body23
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %inc25 = add nsw i32 %21, 1
  store i32 %inc25, ptr %j, align 4, !tbaa !5
  br label %for.cond21, !llvm.loop !13

for.end:                                          ; preds = %for.cond21
  %22 = load i32, ptr %d, align 4, !tbaa !5
  %rem26 = srem i32 %22, 7
  %cmp27 = icmp eq i32 %rem26, 0
  br i1 %cmp27, label %if.then28, label %if.else30

if.then28:                                        ; preds = %for.end
  %call29 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end32

if.else30:                                        ; preds = %for.end
  %call31 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %if.end32

if.end32:                                         ; preds = %if.else30, %if.then28
  br label %for.inc33

for.inc33:                                        ; preds = %if.end32
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %inc34 = add nsw i32 %23, 1
  store i32 %inc34, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !16

for.end35:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #4
  call void @llvm.lifetime.end.p0(i64 52, ptr %days) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!10, !10, i64 0}
!10 = !{!"p2 omnipotent char", !11, i64 0}
!11 = !{!"any p2 pointer", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !14, !15}
