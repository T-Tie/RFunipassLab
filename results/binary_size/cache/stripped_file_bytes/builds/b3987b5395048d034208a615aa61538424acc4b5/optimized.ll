; ModuleID = '<stdin>'
source_filename = "/tmp/tmpdmweqg36.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %div = sdiv i32 %0, 100
  %call1 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %div) #6
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %.fr = freeze i32 %1
  %2 = srem i32 %.fr, 100
  %div3.lhs.trunc = trunc nsw i32 %2 to i8
  %div311 = sdiv i8 %div3.lhs.trunc, 50
  %div3.sext = sext i8 %div311 to i32
  %call4 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %div3.sext) #6
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %.fr9 = freeze i32 %3
  %4 = srem i32 %.fr9, 100
  %.lhs.trunc = trunc nsw i32 %4 to i8
  %5 = srem i8 %.lhs.trunc, 50
  %div1412 = sdiv i8 %5, 20
  %div14.sext = sext i8 %div1412 to i32
  %call15 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %div14.sext) #6
  %6 = load i32, ptr %n, align 4, !tbaa !5, !noalias !9
  %.fr.i.i = freeze i32 %6
  %7 = srem i32 %.fr.i.i, 100
  %.lhs.trunc.i.i = trunc nsw i32 %7 to i8
  %8 = srem i8 %.lhs.trunc.i.i, 50
  %9 = srem i8 %8, 20
  %div371.i = sdiv i8 %9, 10
  %div37.sext.i = sext i8 %div371.i to i32
  %call38 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %div37.sext.i) #6
  %10 = load i32, ptr %n, align 4, !tbaa !5, !noalias !14
  %.fr.i = freeze i32 %10
  %11 = srem i32 %.fr.i, 100
  %.lhs.trunc.i = trunc nsw i32 %11 to i8
  %12 = srem i8 %.lhs.trunc.i, 50
  %13 = srem i8 %12, 20
  %14 = srem i8 %13, 10
  %div848 = sdiv i8 %14, 5
  %div84.sext = sext i8 %div848 to i32
  %call85 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %div84.sext) #6
  %15 = load i32, ptr %n, align 4, !tbaa !5
  %rem = srem i32 %15, 5
  %call86 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %rem) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #5 = { nofree nounwind willreturn }
attributes #6 = { nounwind }

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
!9 = !{!10, !12}
!10 = distinct !{!10, !11, !"outlined_ir_func_0.2: argument 0"}
!11 = distinct !{!11, !"outlined_ir_func_0.2"}
!12 = distinct !{!12, !13, !"outlined_ir_func_0: argument 0"}
!13 = distinct !{!13, !"outlined_ir_func_0"}
!14 = !{!15}
!15 = distinct !{!15, !16, !"outlined_ir_func_0.2: argument 0"}
!16 = distinct !{!16, !"outlined_ir_func_0.2"}
