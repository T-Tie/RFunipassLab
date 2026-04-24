; ModuleID = '<stdin>'
source_filename = "/tmp/tmpi671glc2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%d\0A%d\0A%d\0A%d\0A%d\0A%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
NodeBlock17:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %div1 = sdiv i32 %0, 10
  store i32 %div1, ptr %n, align 4, !tbaa !5
  %rem2 = srem i32 %div1, 10
  %Pivot18 = icmp slt i32 %rem2, 5
  br i1 %Pivot18, label %NodeBlock7, label %NodeBlock15

NodeBlock15:                                      ; preds = %NodeBlock17
  %Pivot16 = icmp samesign ult i32 %rem2, 7
  br i1 %Pivot16, label %NodeBlock9, label %NodeBlock13

NodeBlock13:                                      ; preds = %NodeBlock15
  %Pivot14 = icmp eq i32 %rem2, 7
  br i1 %Pivot14, label %sw.epilog, label %NodeBlock11

NodeBlock11:                                      ; preds = %NodeBlock13
  %Pivot12 = icmp samesign ult i32 %rem2, 9
  %spec.select24 = select i1 %Pivot12, i32 1, i32 2
  br label %sw.epilog

NodeBlock9:                                       ; preds = %NodeBlock15
  %Pivot10 = icmp ne i32 %rem2, 5
  br label %sw.epilog

NodeBlock7:                                       ; preds = %NodeBlock17
  %Pivot8 = icmp slt i32 %rem2, 2
  br i1 %Pivot8, label %NodeBlock, label %NodeBlock5

NodeBlock5:                                       ; preds = %NodeBlock7
  %Pivot6 = icmp eq i32 %rem2, 2
  br i1 %Pivot6, label %sw.epilog, label %NodeBlock3

NodeBlock3:                                       ; preds = %NodeBlock5
  %Pivot4 = icmp samesign ult i32 %rem2, 4
  %spec.select27 = select i1 %Pivot4, i32 1, i32 2
  br label %sw.epilog

NodeBlock:                                        ; preds = %NodeBlock7
  %Pivot.not = icmp eq i32 %rem2, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %NodeBlock, %NodeBlock3, %NodeBlock9, %NodeBlock11, %NodeBlock5, %NodeBlock13
  %e.0.shrunk = phi i1 [ false, %NodeBlock5 ], [ false, %NodeBlock13 ], [ %Pivot.not, %NodeBlock ], [ %Pivot4, %NodeBlock3 ], [ %Pivot10, %NodeBlock9 ], [ %Pivot12, %NodeBlock11 ]
  %f.0 = phi i32 [ 1, %NodeBlock5 ], [ 1, %NodeBlock13 ], [ 0, %NodeBlock ], [ %spec.select27, %NodeBlock3 ], [ 0, %NodeBlock9 ], [ %spec.select24, %NodeBlock11 ]
  %k.0 = phi i32 [ 0, %NodeBlock5 ], [ 1, %NodeBlock13 ], [ 0, %NodeBlock ], [ 0, %NodeBlock3 ], [ 1, %NodeBlock9 ], [ 1, %NodeBlock11 ]
  %e.0 = zext i1 %e.0.shrunk to i32
  %rem = srem i32 %0, 10
  %div = sdiv i32 %0, 100
  %cmp = icmp sgt i32 %rem, 4
  %rem12.lhs.trunc = trunc nsw i32 %rem to i8
  %rem1223 = srem i8 %rem12.lhs.trunc, 5
  %rem12.sext = sext i8 %rem1223 to i32
  %spec.select29 = zext i1 %cmp to i32
  %call14 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %div, i32 noundef %k.0, i32 noundef %f.0, i32 noundef %e.0, i32 noundef %spec.select29, i32 noundef %rem12.sext)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #4
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
