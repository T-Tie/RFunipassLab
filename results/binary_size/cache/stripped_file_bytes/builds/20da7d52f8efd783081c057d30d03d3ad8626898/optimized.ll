; ModuleID = '<stdin>'
source_filename = "/tmp/tmp6ot_rbrk.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %n.promoted = load i32, ptr %n, align 4, !tbaa !5
  %n.promoted.fr = freeze i32 %n.promoted
  %0 = call i32 @llvm.smax.i32(i32 %n.promoted.fr, i32 99)
  %1 = urem i32 %0, 100
  %2 = sub nuw nsw i32 %0, %1
  %3 = sub i32 %n.promoted.fr, %2
  %4 = add i32 %n.promoted.fr, 49
  %smin19 = call i32 @llvm.smin.i32(i32 %3, i32 49)
  %5 = add i32 %smin19, %2
  %.fr26 = freeze i32 %5
  %6 = sub i32 %4, %.fr26
  %7 = urem i32 %6, 50
  %8 = sub nuw i32 %6, %7
  %9 = add i32 %8, %2
  %10 = sub i32 %n.promoted.fr, %9
  %11 = add i32 %n.promoted.fr, 19
  %smin20 = call i32 @llvm.smin.i32(i32 %10, i32 19)
  %12 = add i32 %smin20, %8
  %13 = add i32 %12, %2
  %.fr27 = freeze i32 %13
  %14 = sub i32 %11, %.fr27
  %15 = urem i32 %14, 20
  %16 = sub nuw i32 %14, %15
  %17 = add i32 %16, %8
  %18 = add i32 %17, %2
  %19 = sub i32 %n.promoted.fr, %18
  %20 = add i32 %n.promoted.fr, 9
  %smin22 = call i32 @llvm.smin.i32(i32 %19, i32 9)
  %21 = add i32 %smin22, %16
  %22 = add i32 %21, %8
  %23 = add i32 %22, %2
  %.fr28 = freeze i32 %23
  %24 = sub i32 %20, %.fr28
  %25 = urem i32 %24, 10
  %26 = sub nuw i32 %24, %25
  %27 = add i32 %26, %16
  %28 = add i32 %27, %8
  %29 = add i32 %28, %2
  %30 = sub i32 %n.promoted.fr, %29
  %31 = add i32 %n.promoted.fr, 4
  %smin25 = call i32 @llvm.smin.i32(i32 %30, i32 4)
  %32 = add i32 %smin25, %26
  %33 = add i32 %32, %16
  %34 = add i32 %33, %8
  %35 = add i32 %34, %2
  %.fr29 = freeze i32 %35
  %36 = sub i32 %31, %.fr29
  %37 = urem i32 %36, 5
  %38 = add i32 %37, %n.promoted.fr
  %39 = add i32 %36, %26
  %40 = add i32 %39, %16
  %41 = add i32 %40, %8
  %42 = add i32 %41, %2
  %43 = sub i32 %38, %42
  store i32 %43, ptr %n, align 4, !tbaa !5
  br label %for.cond47

for.cond47:                                       ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc52, %for.body ]
  %exitcond.not = icmp eq i32 %i.0, 6
  br i1 %exitcond.not, label %for.end53, label %for.body

for.body:                                         ; preds = %for.cond47
  %call50 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 undef) #6
  %inc52 = add nuw nsw i32 %i.0, 1
  br label %for.cond47, !llvm.loop !9

for.end53:                                        ; preds = %for.cond47
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
