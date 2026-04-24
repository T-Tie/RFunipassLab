; ModuleID = '/tmp/tmpdmweqg36.cpp'
source_filename = "/tmp/tmpdmweqg36.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %div = sdiv i32 %0, 100
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %div)
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %div2 = sdiv i32 %2, 100
  %mul = mul nsw i32 %div2, 100
  %sub = sub nsw i32 %1, %mul
  %div3 = sdiv i32 %sub, 50
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %div3)
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %div5 = sdiv i32 %4, 100
  %mul6 = mul nsw i32 %div5, 100
  %sub7 = sub nsw i32 %3, %mul6
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %div8 = sdiv i32 %6, 100
  %mul9 = mul nsw i32 %div8, 100
  %sub10 = sub nsw i32 %5, %mul9
  %div11 = sdiv i32 %sub10, 50
  %mul12 = mul nsw i32 %div11, 50
  %sub13 = sub nsw i32 %sub7, %mul12
  %div14 = sdiv i32 %sub13, 20
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %div14)
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %div16 = sdiv i32 %8, 100
  %mul17 = mul nsw i32 %div16, 100
  %sub18 = sub nsw i32 %7, %mul17
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %div19 = sdiv i32 %10, 100
  %mul20 = mul nsw i32 %div19, 100
  %sub21 = sub nsw i32 %9, %mul20
  %div22 = sdiv i32 %sub21, 50
  %mul23 = mul nsw i32 %div22, 50
  %sub24 = sub nsw i32 %sub18, %mul23
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %12 = load i32, ptr %n, align 4, !tbaa !5
  %div25 = sdiv i32 %12, 100
  %mul26 = mul nsw i32 %div25, 100
  %sub27 = sub nsw i32 %11, %mul26
  %13 = load i32, ptr %n, align 4, !tbaa !5
  %14 = load i32, ptr %n, align 4, !tbaa !5
  %div28 = sdiv i32 %14, 100
  %mul29 = mul nsw i32 %div28, 100
  %sub30 = sub nsw i32 %13, %mul29
  %div31 = sdiv i32 %sub30, 50
  %mul32 = mul nsw i32 %div31, 50
  %sub33 = sub nsw i32 %sub27, %mul32
  %div34 = sdiv i32 %sub33, 20
  %mul35 = mul nsw i32 %div34, 20
  %sub36 = sub nsw i32 %sub24, %mul35
  %div37 = sdiv i32 %sub36, 10
  %call38 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %div37)
  %15 = load i32, ptr %n, align 4, !tbaa !5
  %16 = load i32, ptr %n, align 4, !tbaa !5
  %div39 = sdiv i32 %16, 100
  %mul40 = mul nsw i32 %div39, 100
  %sub41 = sub nsw i32 %15, %mul40
  %17 = load i32, ptr %n, align 4, !tbaa !5
  %18 = load i32, ptr %n, align 4, !tbaa !5
  %div42 = sdiv i32 %18, 100
  %mul43 = mul nsw i32 %div42, 100
  %sub44 = sub nsw i32 %17, %mul43
  %div45 = sdiv i32 %sub44, 50
  %mul46 = mul nsw i32 %div45, 50
  %sub47 = sub nsw i32 %sub41, %mul46
  %19 = load i32, ptr %n, align 4, !tbaa !5
  %20 = load i32, ptr %n, align 4, !tbaa !5
  %div48 = sdiv i32 %20, 100
  %mul49 = mul nsw i32 %div48, 100
  %sub50 = sub nsw i32 %19, %mul49
  %21 = load i32, ptr %n, align 4, !tbaa !5
  %22 = load i32, ptr %n, align 4, !tbaa !5
  %div51 = sdiv i32 %22, 100
  %mul52 = mul nsw i32 %div51, 100
  %sub53 = sub nsw i32 %21, %mul52
  %div54 = sdiv i32 %sub53, 50
  %mul55 = mul nsw i32 %div54, 50
  %sub56 = sub nsw i32 %sub50, %mul55
  %div57 = sdiv i32 %sub56, 20
  %mul58 = mul nsw i32 %div57, 20
  %sub59 = sub nsw i32 %sub47, %mul58
  %23 = load i32, ptr %n, align 4, !tbaa !5
  %24 = load i32, ptr %n, align 4, !tbaa !5
  %div60 = sdiv i32 %24, 100
  %mul61 = mul nsw i32 %div60, 100
  %sub62 = sub nsw i32 %23, %mul61
  %25 = load i32, ptr %n, align 4, !tbaa !5
  %26 = load i32, ptr %n, align 4, !tbaa !5
  %div63 = sdiv i32 %26, 100
  %mul64 = mul nsw i32 %div63, 100
  %sub65 = sub nsw i32 %25, %mul64
  %div66 = sdiv i32 %sub65, 50
  %mul67 = mul nsw i32 %div66, 50
  %sub68 = sub nsw i32 %sub62, %mul67
  %27 = load i32, ptr %n, align 4, !tbaa !5
  %28 = load i32, ptr %n, align 4, !tbaa !5
  %div69 = sdiv i32 %28, 100
  %mul70 = mul nsw i32 %div69, 100
  %sub71 = sub nsw i32 %27, %mul70
  %29 = load i32, ptr %n, align 4, !tbaa !5
  %30 = load i32, ptr %n, align 4, !tbaa !5
  %div72 = sdiv i32 %30, 100
  %mul73 = mul nsw i32 %div72, 100
  %sub74 = sub nsw i32 %29, %mul73
  %div75 = sdiv i32 %sub74, 50
  %mul76 = mul nsw i32 %div75, 50
  %sub77 = sub nsw i32 %sub71, %mul76
  %div78 = sdiv i32 %sub77, 20
  %mul79 = mul nsw i32 %div78, 20
  %sub80 = sub nsw i32 %sub68, %mul79
  %div81 = sdiv i32 %sub80, 10
  %mul82 = mul nsw i32 %div81, 10
  %sub83 = sub nsw i32 %sub59, %mul82
  %div84 = sdiv i32 %sub83, 5
  %call85 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %div84)
  %31 = load i32, ptr %n, align 4, !tbaa !5
  %rem = srem i32 %31, 5
  %call86 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %rem)
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
