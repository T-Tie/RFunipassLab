; ModuleID = '/tmp/tmpzp4e65w5.cpp'
source_filename = "/tmp/tmpzp4e65w5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i64, align 8
  %j = alloca i64, align 8
  %q = alloca i64, align 8
  %e = alloca i64, align 8
  %n = alloca i64, align 8
  %w = alloca i64, align 8
  %m = alloca i64, align 8
  %s = alloca i64, align 8
  %a = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %q) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %w) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %m) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 1, ptr %a, align 4, !tbaa !5
  store i64 0, ptr %i, align 8, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i32, ptr %a, align 4, !tbaa !5
  %cmp = icmp ne i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load i64, ptr %i, align 8, !tbaa !9
  %inc = add nsw i64 %1, 1
  store i64 %inc, ptr %i, align 8, !tbaa !9
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %a)
  br label %while.cond, !llvm.loop !11

while.end:                                        ; preds = %while.cond
  %2 = load i64, ptr %i, align 8, !tbaa !9
  store i64 %2, ptr %q, align 8, !tbaa !9
  %3 = load i64, ptr %n, align 8, !tbaa !9
  %4 = load i64, ptr %n, align 8, !tbaa !9
  %mul = mul nsw i64 %3, %4
  store i64 %mul, ptr %m, align 8, !tbaa !9
  %5 = load i64, ptr %i, align 8, !tbaa !9
  store i64 %5, ptr %e, align 8, !tbaa !9
  store i64 0, ptr %w, align 8, !tbaa !9
  %6 = load i64, ptr %i, align 8, !tbaa !9
  store i64 %6, ptr %j, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %7 = load i64, ptr %j, align 8, !tbaa !9
  %8 = load i64, ptr %m, align 8, !tbaa !9
  %cmp2 = icmp sle i64 %7, %8
  br i1 %cmp2, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %a)
  %9 = load i32, ptr %a, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %9, 255
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %10 = load i64, ptr %w, align 8, !tbaa !9
  %inc5 = add nsw i64 %10, 1
  store i64 %inc5, ptr %w, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %11 = load i32, ptr %a, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %11, 0
  br i1 %cmp6, label %if.then7, label %if.end9

if.then7:                                         ; preds = %if.end
  %12 = load i64, ptr %e, align 8, !tbaa !9
  %inc8 = add nsw i64 %12, 1
  store i64 %inc8, ptr %e, align 8, !tbaa !9
  %13 = load i64, ptr %e, align 8, !tbaa !9
  %14 = load i64, ptr %w, align 8, !tbaa !9
  %add = add nsw i64 %13, %14
  store i64 %add, ptr %e, align 8, !tbaa !9
  store i64 0, ptr %w, align 8, !tbaa !9
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %15 = load i64, ptr %j, align 8, !tbaa !9
  %inc10 = add nsw i64 %15, 1
  store i64 %inc10, ptr %j, align 8, !tbaa !9
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %16 = load i64, ptr %q, align 8, !tbaa !9
  %17 = load i64, ptr %n, align 8, !tbaa !9
  %rem = srem i64 %16, %17
  %18 = load i64, ptr %e, align 8, !tbaa !9
  %19 = load i64, ptr %n, align 8, !tbaa !9
  %rem11 = srem i64 %18, %19
  %sub = sub nsw i64 %rem, %rem11
  %cmp12 = icmp sge i64 %sub, 0
  br i1 %cmp12, label %if.then13, label %if.else

if.then13:                                        ; preds = %for.end
  %20 = load i64, ptr %e, align 8, !tbaa !9
  %21 = load i64, ptr %e, align 8, !tbaa !9
  %22 = load i64, ptr %n, align 8, !tbaa !9
  %rem14 = srem i64 %21, %22
  %sub15 = sub nsw i64 %20, %rem14
  %23 = load i64, ptr %n, align 8, !tbaa !9
  %div = sdiv i64 %sub15, %23
  %24 = load i64, ptr %q, align 8, !tbaa !9
  %25 = load i64, ptr %q, align 8, !tbaa !9
  %26 = load i64, ptr %n, align 8, !tbaa !9
  %rem16 = srem i64 %25, %26
  %sub17 = sub nsw i64 %24, %rem16
  %27 = load i64, ptr %n, align 8, !tbaa !9
  %div18 = sdiv i64 %sub17, %27
  %sub19 = sub nsw i64 %div, %div18
  %sub20 = sub nsw i64 %sub19, 1
  %28 = load i64, ptr %q, align 8, !tbaa !9
  %29 = load i64, ptr %n, align 8, !tbaa !9
  %rem21 = srem i64 %28, %29
  %30 = load i64, ptr %e, align 8, !tbaa !9
  %31 = load i64, ptr %n, align 8, !tbaa !9
  %rem22 = srem i64 %30, %31
  %sub23 = sub nsw i64 %rem21, %rem22
  %sub24 = sub nsw i64 %sub23, 1
  %mul25 = mul nsw i64 %sub20, %sub24
  store i64 %mul25, ptr %s, align 8, !tbaa !9
  br label %if.end39

if.else:                                          ; preds = %for.end
  %32 = load i64, ptr %e, align 8, !tbaa !9
  %33 = load i64, ptr %e, align 8, !tbaa !9
  %34 = load i64, ptr %n, align 8, !tbaa !9
  %rem26 = srem i64 %33, %34
  %sub27 = sub nsw i64 %32, %rem26
  %35 = load i64, ptr %n, align 8, !tbaa !9
  %div28 = sdiv i64 %sub27, %35
  %36 = load i64, ptr %q, align 8, !tbaa !9
  %37 = load i64, ptr %q, align 8, !tbaa !9
  %38 = load i64, ptr %n, align 8, !tbaa !9
  %rem29 = srem i64 %37, %38
  %sub30 = sub nsw i64 %36, %rem29
  %39 = load i64, ptr %n, align 8, !tbaa !9
  %div31 = sdiv i64 %sub30, %39
  %sub32 = sub nsw i64 %div28, %div31
  %sub33 = sub nsw i64 %sub32, 1
  %40 = load i64, ptr %e, align 8, !tbaa !9
  %41 = load i64, ptr %n, align 8, !tbaa !9
  %rem34 = srem i64 %40, %41
  %42 = load i64, ptr %q, align 8, !tbaa !9
  %43 = load i64, ptr %n, align 8, !tbaa !9
  %rem35 = srem i64 %42, %43
  %sub36 = sub nsw i64 %rem34, %rem35
  %sub37 = sub nsw i64 %sub36, 1
  %mul38 = mul nsw i64 %sub33, %sub37
  store i64 %mul38, ptr %s, align 8, !tbaa !9
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then13
  %44 = load i64, ptr %s, align 8, !tbaa !9
  %call40 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i64 noundef %44)
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %m) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %w) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %q) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #3
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
attributes #3 = { nounwind }

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
!10 = !{!"long", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
