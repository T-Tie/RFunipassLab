; ModuleID = '/tmp/tmplrz7d65j.cpp'
source_filename = "/tmp/tmplrz7d65j.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1
@__const._Z3dayii.days = private unnamed_addr constant [13 x i32] [i32 0, i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %year = alloca i32, align 4
  %month1 = alloca i32, align 4
  %month2 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %year) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %month1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %month2) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %year, ptr noundef %month1, ptr noundef %month2)
  %2 = load i32, ptr %year, align 4, !tbaa !5
  %3 = load i32, ptr %month1, align 4, !tbaa !5
  %call2 = call noundef i32 @_Z3dayii(i32 noundef %2, i32 noundef %3)
  %4 = load i32, ptr %year, align 4, !tbaa !5
  %5 = load i32, ptr %month2, align 4, !tbaa !5
  %call3 = call noundef i32 @_Z3dayii(i32 noundef %4, i32 noundef %5)
  %sub = sub nsw i32 %call2, %call3
  %rem = srem i32 %sub, 7
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end

if.else:                                          ; preds = %for.body
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %month2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %month1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %year) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z3dayii(i32 noundef %year, i32 noundef %month) #3 {
entry:
  %year.addr = alloca i32, align 4
  %month.addr = alloca i32, align 4
  %days = alloca [13 x i32], align 16
  %i = alloca i32, align 4
  %c = alloca i32, align 4
  store i32 %year, ptr %year.addr, align 4, !tbaa !5
  store i32 %month, ptr %month.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 52, ptr %days) #5
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %days, ptr align 16 @__const._Z3dayii.days, i64 52, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #5
  %0 = load i32, ptr %year.addr, align 4, !tbaa !5
  %rem = srem i32 %0, 4
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, ptr %year.addr, align 4, !tbaa !5
  %rem1 = srem i32 %1, 100
  %cmp2 = icmp ne i32 %rem1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %2 = load i32, ptr %year.addr, align 4, !tbaa !5
  %rem3 = srem i32 %2, 400
  %cmp4 = icmp eq i32 %rem3, 0
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %arrayidx = getelementptr inbounds [13 x i32], ptr %days, i64 0, i64 2
  %3 = load i32, ptr %arrayidx, align 8, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %arrayidx, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  store i32 0, ptr %c, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %month.addr, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [13 x i32], ptr %days, i64 0, i64 %idxprom
  %7 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %8 = load i32, ptr %c, align 4, !tbaa !5
  %add = add nsw i32 %8, %7
  store i32 %add, ptr %c, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %inc7 = add nsw i32 %9, 1
  store i32 %inc7, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %10 = load i32, ptr %c, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 52, ptr %days) #5
  ret i32 %10
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

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
