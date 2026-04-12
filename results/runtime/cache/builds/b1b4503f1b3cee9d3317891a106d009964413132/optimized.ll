; ModuleID = '<stdin>'
source_filename = "/tmp/tmp6lzuu9g_.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%d\0A%d\0A%d\0A%d\0A%d\0A%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %x = alloca i32, align 4
  %a = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %a) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %x)
  %0 = load i32, ptr %x, align 4, !tbaa !5
  %div = sdiv i32 %0, 100
  store i32 %div, ptr %a, align 4, !tbaa !5
  %rem = srem i32 %0, 100
  %div1.lhs.trunc = trunc nsw i32 %rem to i8
  %div11 = sdiv i8 %div1.lhs.trunc, 50
  %div1.sext = sext i8 %div11 to i32
  %rem22 = srem i8 %div1.lhs.trunc, 50
  %div33 = sdiv i8 %rem22, 20
  %div3.sext = sext i8 %div33 to i32
  %rem44 = srem i8 %rem22, 20
  %div55 = sdiv i8 %rem44, 10
  %div5.sext = sext i8 %div55 to i32
  %rem66 = srem i8 %rem44, 10
  %div77 = sdiv i8 %rem66, 5
  %div7.sext = sext i8 %div77 to i32
  %rem88 = srem i8 %rem66, 5
  %rem8.sext = sext i8 %rem88 to i32
  %call9 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %div, i32 noundef %div1.sext, i32 noundef %div3.sext, i32 noundef %div5.sext, i32 noundef %div7.sext, i32 noundef %rem8.sext)
  %call10 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %a) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

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
