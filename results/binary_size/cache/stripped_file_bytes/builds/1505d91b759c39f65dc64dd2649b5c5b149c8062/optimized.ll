; ModuleID = '/tmp/tmps8v_9qsi.cpp'
source_filename = "/tmp/tmps8v_9qsi.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1
@__const._Z2fciii.month = private unnamed_addr constant [13 x i32] [i32 0, i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %year = alloca i32, align 4
  %mon1 = alloca i32, align 4
  %mon2 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %year) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %mon1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %mon2) #5
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %year, ptr noundef %mon1, ptr noundef %mon2)
  %2 = load i32, ptr %mon1, align 4, !tbaa !5
  %3 = load i32, ptr %mon2, align 4, !tbaa !5
  %cmp2 = icmp sgt i32 %2, %3
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #5
  %4 = load i32, ptr %mon1, align 4, !tbaa !5
  store i32 %4, ptr %tmp, align 4, !tbaa !5
  %5 = load i32, ptr %mon2, align 4, !tbaa !5
  store i32 %5, ptr %mon1, align 4, !tbaa !5
  %6 = load i32, ptr %tmp, align 4, !tbaa !5
  store i32 %6, ptr %mon2, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %7 = load i32, ptr %year, align 4, !tbaa !5
  %8 = load i32, ptr %mon1, align 4, !tbaa !5
  %9 = load i32, ptr %mon2, align 4, !tbaa !5
  %call3 = call noundef i32 @_Z2fciii(i32 noundef %7, i32 noundef %8, i32 noundef %9)
  %rem = srem i32 %call3, 7
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end8

if.else:                                          ; preds = %if.end
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %mon2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %mon1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %year) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end8
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z2fciii(i32 noundef %year, i32 noundef %mon1, i32 noundef %mon2) #3 {
entry:
  %year.addr = alloca i32, align 4
  %mon1.addr = alloca i32, align 4
  %mon2.addr = alloca i32, align 4
  %delta = alloca i32, align 4
  %i = alloca i32, align 4
  %month = alloca [13 x i32], align 16
  store i32 %year, ptr %year.addr, align 4, !tbaa !5
  store i32 %mon1, ptr %mon1.addr, align 4, !tbaa !5
  store i32 %mon2, ptr %mon2.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %delta) #5
  store i32 0, ptr %delta, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 52, ptr %month) #5
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %month, ptr align 16 @__const._Z2fciii.month, i64 52, i1 false)
  %0 = load i32, ptr %mon1.addr, align 4, !tbaa !5
  store i32 %0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %2 = load i32, ptr %mon2.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [13 x i32], ptr %month, i64 0, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %5 = load i32, ptr %delta, align 4, !tbaa !5
  %add = add nsw i32 %5, %4
  store i32 %add, ptr %delta, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %mon1.addr, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %7, 2
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.end
  %8 = load i32, ptr %mon1.addr, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %8, 1
  br i1 %cmp2, label %land.lhs.true, label %if.end22

land.lhs.true:                                    ; preds = %lor.lhs.false
  %9 = load i32, ptr %mon2.addr, align 4, !tbaa !5
  %cmp3 = icmp sgt i32 %9, 2
  br i1 %cmp3, label %if.then, label %if.end22

if.then:                                          ; preds = %land.lhs.true, %for.end
  %10 = load i32, ptr %year.addr, align 4, !tbaa !5
  %rem = srem i32 %10, 4
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %land.lhs.true5, label %if.else

land.lhs.true5:                                   ; preds = %if.then
  %11 = load i32, ptr %year.addr, align 4, !tbaa !5
  %cmp6 = icmp sge i32 %11, 4
  br i1 %cmp6, label %land.lhs.true7, label %if.else

land.lhs.true7:                                   ; preds = %land.lhs.true5
  %12 = load i32, ptr %year.addr, align 4, !tbaa !5
  %rem8 = srem i32 %12, 100
  %cmp9 = icmp ne i32 %rem8, 0
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %land.lhs.true7
  %13 = load i32, ptr %delta, align 4, !tbaa !5
  %add11 = add nsw i32 %13, 1
  store i32 %add11, ptr %delta, align 4, !tbaa !5
  br label %if.end21

if.else:                                          ; preds = %land.lhs.true7, %land.lhs.true5, %if.then
  %14 = load i32, ptr %year.addr, align 4, !tbaa !5
  %rem12 = srem i32 %14, 100
  %cmp13 = icmp eq i32 %rem12, 0
  br i1 %cmp13, label %land.lhs.true14, label %if.end

land.lhs.true14:                                  ; preds = %if.else
  %15 = load i32, ptr %year.addr, align 4, !tbaa !5
  %cmp15 = icmp sge i32 %15, 100
  br i1 %cmp15, label %land.lhs.true16, label %if.end

land.lhs.true16:                                  ; preds = %land.lhs.true14
  %16 = load i32, ptr %year.addr, align 4, !tbaa !5
  %rem17 = srem i32 %16, 400
  %cmp18 = icmp eq i32 %rem17, 0
  br i1 %cmp18, label %if.then19, label %if.end

if.then19:                                        ; preds = %land.lhs.true16
  %17 = load i32, ptr %delta, align 4, !tbaa !5
  %add20 = add nsw i32 %17, 1
  store i32 %add20, ptr %delta, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then19, %land.lhs.true16, %land.lhs.true14, %if.else
  br label %if.end21

if.end21:                                         ; preds = %if.end, %if.then10
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %land.lhs.true, %lor.lhs.false
  %18 = load i32, ptr %delta, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 52, ptr %month) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %delta) #5
  ret i32 %18
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!12 = distinct !{!12, !10, !11}
