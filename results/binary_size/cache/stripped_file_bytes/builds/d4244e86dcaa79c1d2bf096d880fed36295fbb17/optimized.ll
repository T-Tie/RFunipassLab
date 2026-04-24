; ModuleID = '/tmp/tmpb_oj3uxi.cpp'
source_filename = "/tmp/tmpb_oj3uxi.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d\0A%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca i32, align 4
  %i = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #3
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %a)
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %c)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %1, 2
  %cmp = icmp sle i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %b)
  %2 = load i32, ptr %b, align 4, !tbaa !5
  %3 = load i32, ptr %a, align 4, !tbaa !5
  %cmp4 = icmp sgt i32 %2, %3
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %4 = load i32, ptr %a, align 4, !tbaa !5
  %5 = load i32, ptr %c, align 4, !tbaa !5
  %cmp5 = icmp sgt i32 %4, %5
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load i32, ptr %a, align 4, !tbaa !5
  store i32 %6, ptr %c, align 4, !tbaa !5
  %7 = load i32, ptr %b, align 4, !tbaa !5
  store i32 %7, ptr %a, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body
  %8 = load i32, ptr %b, align 4, !tbaa !5
  %9 = load i32, ptr %c, align 4, !tbaa !5
  %cmp6 = icmp sgt i32 %8, %9
  br i1 %cmp6, label %land.lhs.true7, label %if.end10

land.lhs.true7:                                   ; preds = %if.end
  %10 = load i32, ptr %c, align 4, !tbaa !5
  %11 = load i32, ptr %a, align 4, !tbaa !5
  %cmp8 = icmp sgt i32 %10, %11
  br i1 %cmp8, label %if.then9, label %if.end10

if.then9:                                         ; preds = %land.lhs.true7
  %12 = load i32, ptr %b, align 4, !tbaa !5
  store i32 %12, ptr %a, align 4, !tbaa !5
  %13 = load i32, ptr %c, align 4, !tbaa !5
  store i32 %13, ptr %c, align 4, !tbaa !5
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %land.lhs.true7, %if.end
  %14 = load i32, ptr %a, align 4, !tbaa !5
  %15 = load i32, ptr %b, align 4, !tbaa !5
  %cmp11 = icmp sgt i32 %14, %15
  br i1 %cmp11, label %land.lhs.true12, label %if.end15

land.lhs.true12:                                  ; preds = %if.end10
  %16 = load i32, ptr %b, align 4, !tbaa !5
  %17 = load i32, ptr %c, align 4, !tbaa !5
  %cmp13 = icmp sgt i32 %16, %17
  br i1 %cmp13, label %if.then14, label %if.end15

if.then14:                                        ; preds = %land.lhs.true12
  %18 = load i32, ptr %a, align 4, !tbaa !5
  store i32 %18, ptr %a, align 4, !tbaa !5
  %19 = load i32, ptr %b, align 4, !tbaa !5
  store i32 %19, ptr %c, align 4, !tbaa !5
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %land.lhs.true12, %if.end10
  %20 = load i32, ptr %a, align 4, !tbaa !5
  %21 = load i32, ptr %c, align 4, !tbaa !5
  %cmp16 = icmp sgt i32 %20, %21
  br i1 %cmp16, label %land.lhs.true17, label %if.end20

land.lhs.true17:                                  ; preds = %if.end15
  %22 = load i32, ptr %c, align 4, !tbaa !5
  %23 = load i32, ptr %b, align 4, !tbaa !5
  %cmp18 = icmp sgt i32 %22, %23
  br i1 %cmp18, label %if.then19, label %if.end20

if.then19:                                        ; preds = %land.lhs.true17
  %24 = load i32, ptr %a, align 4, !tbaa !5
  store i32 %24, ptr %a, align 4, !tbaa !5
  %25 = load i32, ptr %c, align 4, !tbaa !5
  store i32 %25, ptr %c, align 4, !tbaa !5
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %land.lhs.true17, %if.end15
  %26 = load i32, ptr %c, align 4, !tbaa !5
  %27 = load i32, ptr %a, align 4, !tbaa !5
  %cmp21 = icmp sgt i32 %26, %27
  br i1 %cmp21, label %land.lhs.true22, label %if.end25

land.lhs.true22:                                  ; preds = %if.end20
  %28 = load i32, ptr %a, align 4, !tbaa !5
  %29 = load i32, ptr %b, align 4, !tbaa !5
  %cmp23 = icmp sgt i32 %28, %29
  br i1 %cmp23, label %if.then24, label %if.end25

if.then24:                                        ; preds = %land.lhs.true22
  %30 = load i32, ptr %c, align 4, !tbaa !5
  store i32 %30, ptr %d, align 4, !tbaa !5
  %31 = load i32, ptr %a, align 4, !tbaa !5
  store i32 %31, ptr %c, align 4, !tbaa !5
  %32 = load i32, ptr %d, align 4, !tbaa !5
  store i32 %32, ptr %a, align 4, !tbaa !5
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %land.lhs.true22, %if.end20
  %33 = load i32, ptr %c, align 4, !tbaa !5
  %34 = load i32, ptr %b, align 4, !tbaa !5
  %cmp26 = icmp sgt i32 %33, %34
  br i1 %cmp26, label %land.lhs.true27, label %if.end30

land.lhs.true27:                                  ; preds = %if.end25
  %35 = load i32, ptr %b, align 4, !tbaa !5
  %36 = load i32, ptr %a, align 4, !tbaa !5
  %cmp28 = icmp sgt i32 %35, %36
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %land.lhs.true27
  %37 = load i32, ptr %c, align 4, !tbaa !5
  store i32 %37, ptr %a, align 4, !tbaa !5
  %38 = load i32, ptr %b, align 4, !tbaa !5
  store i32 %38, ptr %c, align 4, !tbaa !5
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %land.lhs.true27, %if.end25
  br label %for.inc

for.inc:                                          ; preds = %if.end30
  %39 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %39, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %40 = load i32, ptr %a, align 4, !tbaa !5
  %41 = load i32, ptr %c, align 4, !tbaa !5
  %call31 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %40, i32 noundef %41)
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
