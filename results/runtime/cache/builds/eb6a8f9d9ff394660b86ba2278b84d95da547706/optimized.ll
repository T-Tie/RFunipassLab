; ModuleID = '<stdin>'
source_filename = "/tmp/tmpauvuxa68.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%d\0A%d\0A%d\0A%d\0A%d\0A%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %rem = srem i32 %0, 100
  %sub = sub nsw i32 %0, %rem
  %div = sdiv i32 %sub, 100
  %rem3 = srem i32 %rem, 50
  %sub4 = sub nsw i32 %rem, %rem3
  %div5 = sdiv i32 %sub4, 50
  %mul = mul nsw i32 %div, 100
  %sub6 = sub nsw i32 %0, %mul
  %mul7 = mul nsw i32 %div5, 50
  %sub8 = sub nsw i32 %sub6, %mul7
  %rem13 = srem i32 %sub8, 20
  %sub14 = sub nsw i32 %sub8, %rem13
  %div15 = sdiv i32 %sub14, 20
  %mul20 = mul nsw i32 %div15, 20
  %sub21 = sub nsw i32 %sub8, %mul20
  %rem28 = srem i32 %sub21, 10
  %sub29 = sub nsw i32 %sub21, %rem28
  %div30 = sdiv i32 %sub29, 10
  %mul37 = mul nsw i32 %div30, 10
  %sub38 = sub nsw i32 %sub21, %mul37
  %rem47 = srem i32 %sub38, 5
  %sub48 = sub nsw i32 %sub38, %rem47
  %div49 = sdiv i32 %sub48, 5
  %mul58 = mul nsw i32 %div49, 5
  %sub59 = sub nsw i32 %sub38, %mul58
  %call60 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %div, i32 noundef %div5, i32 noundef %div15, i32 noundef %div30, i32 noundef %div49, i32 noundef %sub59) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind willreturn }
attributes #5 = { nounwind }

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
