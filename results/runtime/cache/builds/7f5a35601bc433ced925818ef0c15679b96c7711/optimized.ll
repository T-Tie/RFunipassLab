; ModuleID = '<stdin>'
source_filename = "/tmp/tmpv1rsuplq.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%d\0A%d\0A%d\0A%d\0A%d\0A%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %rem = srem i32 %0, 100
  %div = sdiv i32 %0, 100
  %rem3.lhs.trunc = trunc nsw i32 %rem to i8
  %rem39 = srem i8 %rem3.lhs.trunc, 50
  %rem3.sext = sext i8 %rem39 to i32
  %sub4 = sub nsw i32 %rem, %rem3.sext
  %div5.lhs.trunc = trunc nsw i32 %sub4 to i16
  %div510 = sdiv i16 %div5.lhs.trunc, 50
  %div5.sext = sext i16 %div510 to i32
  %rem6 = srem i32 %0, 50
  %rem8.lhs.trunc = trunc nsw i32 %rem6 to i8
  %div1012 = sdiv i8 %rem8.lhs.trunc, 20
  %div10.sext = sext i8 %div1012 to i32
  %mul.neg = mul nsw i32 %div, -100
  %sub11 = add i32 %mul.neg, %0
  %mul12.neg = mul nsw i32 %div5.sext, -50
  %mul14.neg = mul nsw i32 %div10.sext, -20
  %sub13 = add i32 %sub11, %mul14.neg
  %sub15 = add i32 %sub13, %mul12.neg
  %div24 = sdiv i32 %sub15, 10
  %rem25 = srem i32 %0, 10
  %rem27.lhs.trunc = trunc nsw i32 %rem25 to i8
  %div2914 = sdiv i8 %rem27.lhs.trunc, 5
  %div29.sext = sext i8 %div2914 to i32
  %mul36.neg = mul nsw i32 %div24, -10
  %mul38.neg = mul nsw i32 %div29.sext, -5
  %sub37 = add i32 %sub15, %mul38.neg
  %sub39 = add i32 %sub37, %mul36.neg
  %call40 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %div, i32 noundef %div5.sext, i32 noundef %div10.sext, i32 noundef %div24, i32 noundef %div29.sext, i32 noundef %sub39) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
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
