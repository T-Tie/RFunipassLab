; ModuleID = '<stdin>'
source_filename = "/tmp/tmpodzbq9fx.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@a = dso_local global i32 0, align 4
@b = dso_local global i32 0, align 4
@c = dso_local global i32 0, align 4
@d = dso_local global i32 0, align 4
@e = dso_local global i32 0, align 4
@f = dso_local global i32 0, align 4
@i = dso_local local_unnamed_addr global i32 0, align 4
@sum = dso_local local_unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%d %d %d %d %d %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %call = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @f)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %0 = load i32, ptr @a, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %while.end, label %if.end

if.end:                                           ; preds = %while.body
  %1 = load i32, ptr @d, align 4, !tbaa !5
  %2 = load i32, ptr @e, align 4, !tbaa !5
  %3 = load i32, ptr @f, align 4, !tbaa !5
  %4 = load i32, ptr @b, align 4, !tbaa !5
  %5 = load i32, ptr @c, align 4, !tbaa !5
  %reass.sub4 = sub i32 %2, %4
  %6 = mul i32 %reass.sub4, 60
  %reass.sub5 = sub i32 %1, %0
  %7 = mul i32 %reass.sub5, 3600
  %reass.mul3 = add i32 %7, 43200
  %add10 = add i32 %reass.mul3, %3
  %reass.sub = sub i32 %add10, %5
  %add12 = add i32 %reass.sub, %6
  store i32 %add12, ptr @sum, align 4, !tbaa !5
  %call13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %add12)
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.body, %while.cond
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #1

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
