; ModuleID = '/tmp/tmpc05jlvox.cpp'
source_filename = "/tmp/tmpc05jlvox.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@__const.main.month = private unnamed_addr constant [13 x i32] [i32 0, i32 3, i32 0, i32 3, i32 2, i32 3, i32 2, i32 3, i32 3, i32 2, i32 3, i32 2, i32 3], align 16
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %e = alloca i32, align 4
  %month = alloca [13 x i32], align 16
  %d = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  call void @llvm.lifetime.start.p0(i64 52, ptr %month) #4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %month, ptr align 16 @__const.main.month, i64 52, i1 false)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc22, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end24

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %a, ptr noundef %b, ptr noundef %c)
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #4
  store i32 0, ptr %d, align 4, !tbaa !5
  %2 = load i32, ptr %b, align 4, !tbaa !5
  %3 = load i32, ptr %c, align 4, !tbaa !5
  %cmp2 = icmp sgt i32 %2, %3
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %b, align 4, !tbaa !5
  store i32 %4, ptr %e, align 4, !tbaa !5
  %5 = load i32, ptr %c, align 4, !tbaa !5
  store i32 %5, ptr %b, align 4, !tbaa !5
  %6 = load i32, ptr %e, align 4, !tbaa !5
  store i32 %6, ptr %c, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %7 = load i32, ptr %b, align 4, !tbaa !5
  store i32 %7, ptr %j, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %if.end
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %9 = load i32, ptr %c, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %8, %9
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %10 to i64
  %arrayidx = getelementptr inbounds [13 x i32], ptr %month, i64 0, i64 %idxprom
  %11 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %12 = load i32, ptr %d, align 4, !tbaa !5
  %add = add nsw i32 %12, %11
  store i32 %add, ptr %d, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body5
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !9

for.end:                                          ; preds = %for.cond3
  %14 = load i32, ptr %a, align 4, !tbaa !5
  %rem = srem i32 %14, 4
  %cmp6 = icmp eq i32 %rem, 0
  br i1 %cmp6, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.end
  %15 = load i32, ptr %a, align 4, !tbaa !5
  %rem7 = srem i32 %15, 100
  %cmp8 = icmp ne i32 %rem7, 0
  br i1 %cmp8, label %land.lhs.true11, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.end
  %16 = load i32, ptr %a, align 4, !tbaa !5
  %rem9 = srem i32 %16, 400
  %cmp10 = icmp eq i32 %rem9, 0
  br i1 %cmp10, label %land.lhs.true11, label %if.end15

land.lhs.true11:                                  ; preds = %lor.lhs.false, %land.lhs.true
  %17 = load i32, ptr %b, align 4, !tbaa !5
  %cmp12 = icmp sle i32 %17, 2
  br i1 %cmp12, label %if.then13, label %if.end15

if.then13:                                        ; preds = %land.lhs.true11
  %18 = load i32, ptr %d, align 4, !tbaa !5
  %inc14 = add nsw i32 %18, 1
  store i32 %inc14, ptr %d, align 4, !tbaa !5
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %land.lhs.true11, %lor.lhs.false
  %19 = load i32, ptr %d, align 4, !tbaa !5
  %rem16 = srem i32 %19, 7
  %cmp17 = icmp eq i32 %rem16, 0
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end15
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end21

if.else:                                          ; preds = %if.end15
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then18
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #4
  br label %for.inc22

for.inc22:                                        ; preds = %if.end21
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %inc23 = add nsw i32 %20, 1
  store i32 %inc23, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end24:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 52, ptr %month) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
