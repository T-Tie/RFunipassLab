; ModuleID = '<stdin>'
source_filename = "/tmp/tmpfm8786fz.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %div = sdiv i32 %0, 100
  %call1 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %div)
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %.fr = freeze i32 %1
  %2 = srem i32 %.fr, 100
  store i32 %2, ptr %n, align 4, !tbaa !5
  %div3.lhs.trunc = trunc nsw i32 %2 to i8
  %div35 = sdiv i8 %div3.lhs.trunc, 50
  %div3.sext = sext i8 %div35 to i32
  %call4 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %div3.sext)
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %.fr1 = freeze i32 %3
  %4 = srem i32 %.fr1, 50
  store i32 %4, ptr %n, align 4, !tbaa !5
  %div8.lhs.trunc = trunc nsw i32 %4 to i8
  %div86 = sdiv i8 %div8.lhs.trunc, 20
  %div8.sext = sext i8 %div86 to i32
  %call9 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %div8.sext)
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %.fr2 = freeze i32 %5
  %6 = srem i32 %.fr2, 20
  store i32 %6, ptr %n, align 4, !tbaa !5
  %div13.lhs.trunc = trunc nsw i32 %6 to i8
  %div137 = sdiv i8 %div13.lhs.trunc, 10
  %div13.sext = sext i8 %div137 to i32
  %call14 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %div13.sext)
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %.fr3 = freeze i32 %7
  %8 = srem i32 %.fr3, 10
  store i32 %8, ptr %n, align 4, !tbaa !5
  %div18.lhs.trunc = trunc nsw i32 %8 to i8
  %div188 = sdiv i8 %div18.lhs.trunc, 5
  %div18.sext = sext i8 %div188 to i32
  %call19 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %div18.sext)
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %.fr4 = freeze i32 %9
  %10 = srem i32 %.fr4, 5
  store i32 %10, ptr %n, align 4, !tbaa !5
  %call23 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %10)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
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
