; ModuleID = '<stdin>'
source_filename = "/tmp/tmpls6s3fic.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%d\0A%d\0A%d\0A%d\0A%d\0A%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %div1 = sdiv i32 %0, 10
  %rem = srem i32 %div1, 10
  %rem2 = srem i32 %0, 10
  %cmp = icmp sgt i32 %rem, 4
  %sub = add nsw i32 %rem, -5
  %div418 = lshr i32 %sub, 1
  %sub8 = and i32 %sub, 1
  %b2.0 = select i1 %cmp, i32 %div418, i32 undef
  %b3.0 = select i1 %cmp, i32 %sub8, i32 undef
  %or.cond = icmp ult i32 %sub, -3
  %div1219 = lshr i32 %rem, 1
  %sub14 = and i32 %rem, 1
  %b2.1 = select i1 %or.cond, i32 %b2.0, i32 %div1219
  %b3.1 = select i1 %or.cond, i32 %b3.0, i32 %sub14
  %cmp16 = icmp sgt i32 %rem, 1
  %b2.2 = select i1 %cmp16, i32 %b2.1, i32 0
  %b3.2 = select i1 %cmp16, i32 %b3.1, i32 %rem
  %b1.2 = zext i1 %cmp to i32
  %sub22 = add nsw i32 %rem2, -5
  %cmp24 = icmp sgt i32 %rem2, 4
  %g1.1 = zext i1 %cmp24 to i32
  %g2.1 = select i1 %cmp24, i32 %sub22, i32 %rem2
  %div = sdiv i32 %0, 100
  %call27 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %div, i32 noundef %b1.2, i32 noundef %b2.2, i32 noundef %b3.2, i32 noundef %g1.1, i32 noundef %g2.1)
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
