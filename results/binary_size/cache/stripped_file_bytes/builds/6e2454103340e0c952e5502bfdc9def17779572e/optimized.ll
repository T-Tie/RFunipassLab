; ModuleID = '/tmp/tmp1526bzz6.cpp'
source_filename = "/tmp/tmp1526bzz6.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %money = alloca i32, align 4
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  %m3 = alloca i32, align 4
  %m4 = alloca i32, align 4
  %m5 = alloca i32, align 4
  %m6 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %money) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %money)
  call void @llvm.lifetime.start.p0(i64 4, ptr %m1) #3
  store i32 0, ptr %m1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %m2) #3
  store i32 0, ptr %m2, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %m3) #3
  store i32 0, ptr %m3, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %m4) #3
  store i32 0, ptr %m4, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %m5) #3
  store i32 0, ptr %m5, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %m6) #3
  store i32 0, ptr %m6, align 4, !tbaa !5
  %0 = load i32, ptr %money, align 4, !tbaa !5
  %div = sdiv i32 %0, 100
  store i32 %div, ptr %m1, align 4, !tbaa !5
  %1 = load i32, ptr %money, align 4, !tbaa !5
  %rem = srem i32 %1, 100
  %cmp = icmp ne i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %money, align 4, !tbaa !5
  %rem1 = srem i32 %2, 100
  %div2 = sdiv i32 %rem1, 50
  store i32 %div2, ptr %m2, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %money, align 4, !tbaa !5
  %rem3 = srem i32 %3, 100
  %rem4 = srem i32 %rem3, 50
  %cmp5 = icmp ne i32 %rem4, 0
  br i1 %cmp5, label %if.then6, label %if.end10

if.then6:                                         ; preds = %if.end
  %4 = load i32, ptr %money, align 4, !tbaa !5
  %rem7 = srem i32 %4, 100
  %rem8 = srem i32 %rem7, 50
  %div9 = sdiv i32 %rem8, 20
  store i32 %div9, ptr %m3, align 4, !tbaa !5
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end
  %5 = load i32, ptr %money, align 4, !tbaa !5
  %rem11 = srem i32 %5, 100
  %rem12 = srem i32 %rem11, 50
  %rem13 = srem i32 %rem12, 20
  %cmp14 = icmp ne i32 %rem13, 0
  br i1 %cmp14, label %if.then15, label %if.end20

if.then15:                                        ; preds = %if.end10
  %6 = load i32, ptr %money, align 4, !tbaa !5
  %rem16 = srem i32 %6, 100
  %rem17 = srem i32 %rem16, 50
  %rem18 = srem i32 %rem17, 20
  %div19 = sdiv i32 %rem18, 10
  store i32 %div19, ptr %m4, align 4, !tbaa !5
  br label %if.end20

if.end20:                                         ; preds = %if.then15, %if.end10
  %7 = load i32, ptr %money, align 4, !tbaa !5
  %rem21 = srem i32 %7, 100
  %rem22 = srem i32 %rem21, 50
  %rem23 = srem i32 %rem22, 20
  %rem24 = srem i32 %rem23, 10
  %cmp25 = icmp ne i32 %rem24, 0
  br i1 %cmp25, label %if.then26, label %if.end32

if.then26:                                        ; preds = %if.end20
  %8 = load i32, ptr %money, align 4, !tbaa !5
  %rem27 = srem i32 %8, 100
  %rem28 = srem i32 %rem27, 50
  %rem29 = srem i32 %rem28, 20
  %rem30 = srem i32 %rem29, 10
  %div31 = sdiv i32 %rem30, 5
  store i32 %div31, ptr %m5, align 4, !tbaa !5
  br label %if.end32

if.end32:                                         ; preds = %if.then26, %if.end20
  %9 = load i32, ptr %money, align 4, !tbaa !5
  %rem33 = srem i32 %9, 100
  %rem34 = srem i32 %rem33, 50
  %rem35 = srem i32 %rem34, 20
  %rem36 = srem i32 %rem35, 10
  %rem37 = srem i32 %rem36, 5
  %cmp38 = icmp ne i32 %rem37, 0
  br i1 %cmp38, label %if.then39, label %if.end45

if.then39:                                        ; preds = %if.end32
  %10 = load i32, ptr %money, align 4, !tbaa !5
  %rem40 = srem i32 %10, 100
  %rem41 = srem i32 %rem40, 50
  %rem42 = srem i32 %rem41, 20
  %rem43 = srem i32 %rem42, 10
  %rem44 = srem i32 %rem43, 5
  store i32 %rem44, ptr %m6, align 4, !tbaa !5
  br label %if.end45

if.end45:                                         ; preds = %if.then39, %if.end32
  %11 = load i32, ptr %m1, align 4, !tbaa !5
  %call46 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %11)
  %12 = load i32, ptr %m2, align 4, !tbaa !5
  %call47 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %12)
  %13 = load i32, ptr %m3, align 4, !tbaa !5
  %call48 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %13)
  %14 = load i32, ptr %m4, align 4, !tbaa !5
  %call49 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %14)
  %15 = load i32, ptr %m5, align 4, !tbaa !5
  %call50 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %15)
  %16 = load i32, ptr %m6, align 4, !tbaa !5
  %call51 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %16)
  call void @llvm.lifetime.end.p0(i64 4, ptr %m6) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %m5) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %m4) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %m3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %m2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %m1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %money) #3
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
