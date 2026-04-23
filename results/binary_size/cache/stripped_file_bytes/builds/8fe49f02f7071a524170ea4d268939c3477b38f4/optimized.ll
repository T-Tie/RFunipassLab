; ModuleID = '/tmp/tmp8stcylhu.cpp'
source_filename = "/tmp/tmp8stcylhu.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %s = alloca i32, align 4
  %a = alloca [20000 x i32], align 16
  %sign = alloca i32, align 4
  %b = alloca [20000 x i32], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #4
  store i32 0, ptr %s, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 80000, ptr %a) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %sign) #4
  call void @llvm.lifetime.start.p0(i64 80000, ptr %b) #4
  call void @llvm.memset.p0.i64(ptr align 16 %b, i8 0, i64 80000, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  store i32 0, ptr %sign, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %3 = load i32, ptr %j, align 4, !tbaa !5
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %3, %4
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %idxprom5
  %6 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %idxprom7
  %8 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %cmp9 = icmp eq i32 %6, %8
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  %9 = load i32, ptr %sign, align 4, !tbaa !5
  %add = add nsw i32 %9, 1
  store i32 %add, ptr %sign, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %10, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !9

for.end:                                          ; preds = %for.cond2
  %11 = load i32, ptr %sign, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %11, 0
  br i1 %cmp10, label %if.then11, label %if.end17

if.then11:                                        ; preds = %for.end
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %idxprom12
  %13 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %14 = load i32, ptr %s, align 4, !tbaa !5
  %idxprom14 = sext i32 %14 to i64
  %arrayidx15 = getelementptr inbounds [20000 x i32], ptr %b, i64 0, i64 %idxprom14
  store i32 %13, ptr %arrayidx15, align 4, !tbaa !5
  %15 = load i32, ptr %s, align 4, !tbaa !5
  %inc16 = add nsw i32 %15, 1
  store i32 %inc16, ptr %s, align 4, !tbaa !5
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %for.end
  br label %for.inc18

for.inc18:                                        ; preds = %if.end17
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %inc19 = add nsw i32 %16, 1
  store i32 %inc19, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end20:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc33, %for.end20
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %18 = load i32, ptr %s, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %17, %18
  br i1 %cmp22, label %for.body23, label %for.end35

for.body23:                                       ; preds = %for.cond21
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %20 = load i32, ptr %s, align 4, !tbaa !5
  %sub = sub nsw i32 %20, 1
  %cmp24 = icmp ne i32 %19, %sub
  br i1 %cmp24, label %if.then25, label %if.else

if.then25:                                        ; preds = %for.body23
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom26 = sext i32 %21 to i64
  %arrayidx27 = getelementptr inbounds [20000 x i32], ptr %b, i64 0, i64 %idxprom26
  %22 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %call28 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %22)
  br label %if.end32

if.else:                                          ; preds = %for.body23
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom29 = sext i32 %23 to i64
  %arrayidx30 = getelementptr inbounds [20000 x i32], ptr %b, i64 0, i64 %idxprom29
  %24 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %call31 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %24)
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then25
  br label %for.inc33

for.inc33:                                        ; preds = %if.end32
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %inc34 = add nsw i32 %25, 1
  store i32 %inc34, ptr %i, align 4, !tbaa !5
  br label %for.cond21, !llvm.loop !13

for.end35:                                        ; preds = %for.cond21
  call void @llvm.lifetime.end.p0(i64 80000, ptr %b) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %sign) #4
  call void @llvm.lifetime.end.p0(i64 80000, ptr %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
