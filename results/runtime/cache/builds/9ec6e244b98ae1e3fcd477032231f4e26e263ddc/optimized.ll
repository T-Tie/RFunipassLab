; ModuleID = '<stdin>'
source_filename = "/tmp/tmp0tg7whv6.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%d\0A%d\0A%d\0A%d\0A%d\0A%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %a = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %a) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %a)
  %0 = load i32, ptr %a, align 4, !tbaa !5
  %rem = srem i32 %0, 100
  %sub = sub nsw i32 %0, %rem
  %div = sdiv i32 %sub, 100
  store i32 %rem, ptr %a, align 4, !tbaa !5
  %rem2 = srem i32 %rem, 50
  %sub3 = sub nsw i32 %rem, %rem2
  %div4 = sdiv i32 %sub3, 50
  store i32 %rem2, ptr %a, align 4, !tbaa !5
  %rem6 = srem i32 %rem2, 20
  %sub7 = sub nsw i32 %rem2, %rem6
  %div8 = sdiv i32 %sub7, 20
  store i32 %rem6, ptr %a, align 4, !tbaa !5
  %rem10 = srem i32 %rem6, 10
  %sub11 = sub nsw i32 %rem6, %rem10
  %div12 = sdiv i32 %sub11, 10
  store i32 %rem10, ptr %a, align 4, !tbaa !5
  %rem14 = srem i32 %rem10, 5
  %sub15 = sub nsw i32 %rem10, %rem14
  %div16 = sdiv i32 %sub15, 5
  store i32 %rem14, ptr %a, align 4, !tbaa !5
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %div, i32 noundef %div4, i32 noundef %div8, i32 noundef %div12, i32 noundef %div16, i32 noundef %rem14)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %a) #4
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
