; ModuleID = '<stdin>'
source_filename = "/tmp/tmpfm8786fz.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %div = sdiv i32 %0, 100
  %call1 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %div)
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %div2 = sdiv i32 %1, 100
  %mul = mul nsw i32 %div2, 100
  %sub = sub nsw i32 %1, %mul
  store i32 %sub, ptr %n, align 4, !tbaa !5
  %div3 = sdiv i32 %sub, 50
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %div3)
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %div5 = sdiv i32 %2, 50
  %mul6 = mul nsw i32 %div5, 50
  %sub7 = sub nsw i32 %2, %mul6
  store i32 %sub7, ptr %n, align 4, !tbaa !5
  %div8 = sdiv i32 %sub7, 20
  %call9 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %div8)
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %div10 = sdiv i32 %3, 20
  %mul11 = mul nsw i32 %div10, 20
  %sub12 = sub nsw i32 %3, %mul11
  store i32 %sub12, ptr %n, align 4, !tbaa !5
  %div13 = sdiv i32 %sub12, 10
  %call14 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %div13)
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %div15 = sdiv i32 %4, 10
  %mul16 = mul nsw i32 %div15, 10
  %sub17 = sub nsw i32 %4, %mul16
  store i32 %sub17, ptr %n, align 4, !tbaa !5
  %div18 = sdiv i32 %sub17, 5
  %call19 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %div18)
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %div20 = sdiv i32 %5, 5
  %mul21 = mul nsw i32 %div20, 5
  %sub22 = sub nsw i32 %5, %mul21
  store i32 %sub22, ptr %n, align 4, !tbaa !5
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %sub22)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #4
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
attributes #3 = { nofree nounwind willreturn }
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
