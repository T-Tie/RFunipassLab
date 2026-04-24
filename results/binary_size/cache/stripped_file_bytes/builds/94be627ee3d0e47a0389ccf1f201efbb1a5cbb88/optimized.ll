; ModuleID = '<stdin>'
source_filename = "/tmp/tmpv_xik7mi.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%d\0A%d\0A%d\0A%d\0A%d\0A%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %n.promoted = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not16 = icmp eq i32 %n.promoted, 0
  br i1 %cmp.not16, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %14
  %a1.022 = phi i32 [ %spec.select34, %14 ], [ 0, %entry ]
  %a5.021 = phi i32 [ %spec.select32, %14 ], [ 0, %entry ]
  %a10.020 = phi i32 [ %spec.select30, %14 ], [ 0, %entry ]
  %a20.019 = phi i32 [ %spec.select28, %14 ], [ 0, %entry ]
  %a50.018 = phi i32 [ %a50.1, %14 ], [ 0, %entry ]
  %a100.017 = phi i32 [ %a100.1, %14 ], [ 0, %entry ]
  %0 = phi i32 [ %spec.select33, %14 ], [ %n.promoted, %entry ]
  %cmp1 = icmp sgt i32 %0, 99
  %sub = add nsw i32 %0, -100
  %1 = select i1 %cmp1, i32 %sub, i32 %0
  %add = zext i1 %cmp1 to i32
  %a100.1 = add nuw nsw i32 %a100.017, %add
  %2 = add i32 %1, -50
  %or.cond = icmp ult i32 %2, 50
  %3 = select i1 %or.cond, i32 %2, i32 %1
  %add5 = zext i1 %or.cond to i32
  %a50.1 = add nuw nsw i32 %a50.018, %add5
  %4 = or i1 %cmp1, %or.cond
  %5 = add i32 %3, -20
  %or.cond1 = icmp ult i32 %5, 30
  %spec.select = select i1 %or.cond1, i32 %5, i32 %3
  %add12 = zext i1 %or.cond1 to i32
  %spec.select28 = add nuw nsw i32 %a20.019, %add12
  %6 = or i1 %4, %or.cond1
  %7 = add i32 %spec.select, -10
  %or.cond2 = icmp ult i32 %7, 10
  %spec.select29 = select i1 %or.cond2, i32 %7, i32 %spec.select
  %add19 = zext i1 %or.cond2 to i32
  %spec.select30 = add nuw nsw i32 %a10.020, %add19
  %8 = or i1 %6, %or.cond2
  %9 = add i32 %spec.select29, -5
  %or.cond3 = icmp ult i32 %9, 5
  %spec.select31 = select i1 %or.cond3, i32 %9, i32 %spec.select29
  %add26 = zext i1 %or.cond3 to i32
  %spec.select32 = add nuw nsw i32 %a5.021, %add26
  %10 = or i1 %8, %or.cond3
  %11 = add i32 %spec.select31, -1
  %or.cond4 = icmp ult i32 %11, 4
  %spec.select33 = select i1 %or.cond4, i32 %11, i32 %spec.select31
  %add33 = zext i1 %or.cond4 to i32
  %spec.select34 = add nuw nsw i32 %a1.022, %add33
  %12 = or i1 %10, %or.cond4
  br i1 %12, label %13, label %14

13:                                               ; preds = %for.body
  store i32 %spec.select33, ptr %n, align 4, !tbaa !5
  br label %14

14:                                               ; preds = %for.body, %13
  %cmp.not = icmp eq i32 %spec.select33, 0
  br i1 %cmp.not, label %for.end, label %for.body, !llvm.loop !9

for.end:                                          ; preds = %14, %entry
  %a100.0.lcssa = phi i32 [ 0, %entry ], [ %a100.1, %14 ]
  %a50.0.lcssa = phi i32 [ 0, %entry ], [ %a50.1, %14 ]
  %a20.0.lcssa = phi i32 [ 0, %entry ], [ %spec.select28, %14 ]
  %a10.0.lcssa = phi i32 [ 0, %entry ], [ %spec.select30, %14 ]
  %a5.0.lcssa = phi i32 [ 0, %entry ], [ %spec.select32, %14 ]
  %a1.0.lcssa = phi i32 [ 0, %entry ], [ %spec.select34, %14 ]
  %call36 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %a100.0.lcssa, i32 noundef %a50.0.lcssa, i32 noundef %a20.0.lcssa, i32 noundef %a10.0.lcssa, i32 noundef %a5.0.lcssa, i32 noundef %a1.0.lcssa)
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
