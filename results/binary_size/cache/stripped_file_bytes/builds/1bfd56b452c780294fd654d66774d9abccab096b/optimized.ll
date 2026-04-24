; ModuleID = '/tmp/tmpvhk8t38p.cpp'
source_filename = "/tmp/tmpvhk8t38p.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%d\0A%d\0A%d\0A%d\0A%d\0A%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %n = alloca i32, align 4
  %a1 = alloca i32, align 4
  %a2 = alloca i32, align 4
  %a3 = alloca i32, align 4
  %a4 = alloca i32, align 4
  %a5 = alloca i32, align 4
  %a6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  call void @llvm.lifetime.start.p0(i64 4, ptr %a1) #3
  store i32 0, ptr %a1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %a2) #3
  store i32 0, ptr %a2, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %a3) #3
  store i32 0, ptr %a3, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %a4) #3
  store i32 0, ptr %a4, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %a5) #3
  store i32 0, ptr %a5, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %a6) #3
  store i32 0, ptr %a6, align 4, !tbaa !5
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %div = sdiv i32 %0, 100
  store i32 %div, ptr %a1, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %rem = srem i32 %1, 100
  %div1 = sdiv i32 %rem, 50
  store i32 %div1, ptr %a2, align 4, !tbaa !5
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %3 = load i32, ptr %a1, align 4, !tbaa !5
  %mul = mul nsw i32 %3, 100
  %sub = sub nsw i32 %2, %mul
  %4 = load i32, ptr %a2, align 4, !tbaa !5
  %mul2 = mul nsw i32 %4, 50
  %sub3 = sub nsw i32 %sub, %mul2
  %div4 = sdiv i32 %sub3, 20
  store i32 %div4, ptr %a3, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %6 = load i32, ptr %a1, align 4, !tbaa !5
  %mul5 = mul nsw i32 %6, 100
  %sub6 = sub nsw i32 %5, %mul5
  %7 = load i32, ptr %a2, align 4, !tbaa !5
  %mul7 = mul nsw i32 %7, 50
  %sub8 = sub nsw i32 %sub6, %mul7
  %8 = load i32, ptr %a3, align 4, !tbaa !5
  %mul9 = mul nsw i32 %8, 20
  %sub10 = sub nsw i32 %sub8, %mul9
  %div11 = sdiv i32 %sub10, 10
  store i32 %div11, ptr %a4, align 4, !tbaa !5
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %rem12 = srem i32 %9, 10
  %div13 = sdiv i32 %rem12, 5
  store i32 %div13, ptr %a5, align 4, !tbaa !5
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %rem14 = srem i32 %10, 5
  store i32 %rem14, ptr %a6, align 4, !tbaa !5
  %11 = load i32, ptr %a1, align 4, !tbaa !5
  %12 = load i32, ptr %a2, align 4, !tbaa !5
  %13 = load i32, ptr %a3, align 4, !tbaa !5
  %14 = load i32, ptr %a4, align 4, !tbaa !5
  %15 = load i32, ptr %a5, align 4, !tbaa !5
  %16 = load i32, ptr %a6, align 4, !tbaa !5
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16)
  call void @llvm.lifetime.end.p0(i64 4, ptr %a6) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a5) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a4) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a1) #3
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
