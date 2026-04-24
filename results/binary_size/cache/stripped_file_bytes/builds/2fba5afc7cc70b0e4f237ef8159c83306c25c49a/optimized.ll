; ModuleID = '/tmp/tmpdib15x1k.cpp'
source_filename = "/tmp/tmpdib15x1k.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%d\0A%d\0A%d\0A%d\0A%d\0A%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  %f = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %f) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %div = sdiv i32 %0, 100
  store i32 %div, ptr %a, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %rem = srem i32 %1, 100
  %div1 = sdiv i32 %rem, 50
  store i32 %div1, ptr %b, align 4, !tbaa !5
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %rem2 = srem i32 %2, 100
  %rem3 = srem i32 %rem2, 50
  %div4 = sdiv i32 %rem3, 20
  store i32 %div4, ptr %c, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %rem5 = srem i32 %3, 100
  %rem6 = srem i32 %rem5, 50
  %rem7 = srem i32 %rem6, 20
  %div8 = sdiv i32 %rem7, 10
  store i32 %div8, ptr %d, align 4, !tbaa !5
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %rem9 = srem i32 %4, 100
  %rem10 = srem i32 %rem9, 50
  %rem11 = srem i32 %rem10, 20
  %rem12 = srem i32 %rem11, 10
  %div13 = sdiv i32 %rem12, 5
  store i32 %div13, ptr %e, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %rem14 = srem i32 %5, 5
  %div15 = sdiv i32 %rem14, 1
  store i32 %div15, ptr %f, align 4, !tbaa !5
  %6 = load i32, ptr %a, align 4, !tbaa !5
  %7 = load i32, ptr %b, align 4, !tbaa !5
  %8 = load i32, ptr %c, align 4, !tbaa !5
  %9 = load i32, ptr %d, align 4, !tbaa !5
  %10 = load i32, ptr %e, align 4, !tbaa !5
  %11 = load i32, ptr %f, align 4, !tbaa !5
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, i32 noundef %11)
  call void @llvm.lifetime.end.p0(i64 4, ptr %f) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #3
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
