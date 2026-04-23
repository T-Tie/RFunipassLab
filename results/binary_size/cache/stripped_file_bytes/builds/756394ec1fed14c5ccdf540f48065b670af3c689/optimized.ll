; ModuleID = '<stdin>'
source_filename = "/tmp/tmpmjanuk1i.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %t = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp18 = icmp sgt i32 %0, 0
  call void @llvm.assume(i1 %cmp18)
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.inc9
  %1 = phi i32 [ %4, %for.inc9 ], [ %0, %entry ]
  %righty.024 = phi i32 [ %righty.1.lcssa, %for.inc9 ], [ undef, %entry ]
  %rightx.023 = phi i32 [ %rightx.1.lcssa, %for.inc9 ], [ undef, %entry ]
  %lefty.022 = phi i32 [ %lefty.1.lcssa, %for.inc9 ], [ undef, %entry ]
  %leftx.021 = phi i32 [ %leftx.1.lcssa, %for.inc9 ], [ undef, %entry ]
  %state.020 = phi i32 [ %state.1.lcssa, %for.inc9 ], [ 0, %entry ]
  %i.019 = phi i32 [ %inc10, %for.inc9 ], [ 0, %entry ]
  %cmp27 = icmp sgt i32 %1, 0
  br i1 %cmp27, label %for.body3, label %for.inc9

for.body3:                                        ; preds = %for.cond1.preheader, %for.inc
  %righty.113 = phi i32 [ %righty.2, %for.inc ], [ %righty.024, %for.cond1.preheader ]
  %rightx.112 = phi i32 [ %rightx.2, %for.inc ], [ %rightx.023, %for.cond1.preheader ]
  %lefty.111 = phi i32 [ %lefty.2, %for.inc ], [ %lefty.022, %for.cond1.preheader ]
  %leftx.110 = phi i32 [ %leftx.2, %for.inc ], [ %leftx.021, %for.cond1.preheader ]
  %state.19 = phi i32 [ %state.2, %for.inc ], [ %state.020, %for.cond1.preheader ]
  %j.08 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond1.preheader ]
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %t)
  %2 = load i32, ptr %t, align 4, !tbaa !5
  %cmp5 = icmp eq i32 %2, 0
  br i1 %cmp5, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body3
  %cmp6 = icmp eq i32 %state.19, 0
  %i.0.leftx.1 = select i1 %cmp6, i32 %i.019, i32 %leftx.110
  %j.0.lefty.1 = select i1 %cmp6, i32 %j.08, i32 %lefty.111
  %rightx.1.i.0 = select i1 %cmp6, i32 %rightx.112, i32 %i.019
  %righty.1.j.0 = select i1 %cmp6, i32 %righty.113, i32 %j.08
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body3
  %state.2 = phi i32 [ %state.19, %for.body3 ], [ 1, %if.then ]
  %leftx.2 = phi i32 [ %leftx.110, %for.body3 ], [ %i.0.leftx.1, %if.then ]
  %lefty.2 = phi i32 [ %lefty.111, %for.body3 ], [ %j.0.lefty.1, %if.then ]
  %rightx.2 = phi i32 [ %rightx.112, %for.body3 ], [ %rightx.1.i.0, %if.then ]
  %righty.2 = phi i32 [ %righty.113, %for.body3 ], [ %righty.1.j.0, %if.then ]
  %inc = add nuw nsw i32 %j.08, 1
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %inc, %3
  br i1 %cmp2, label %for.body3, label %for.inc9, !llvm.loop !9

for.inc9:                                         ; preds = %for.inc, %for.cond1.preheader
  %4 = phi i32 [ %1, %for.cond1.preheader ], [ %3, %for.inc ]
  %state.1.lcssa = phi i32 [ %state.020, %for.cond1.preheader ], [ %state.2, %for.inc ]
  %leftx.1.lcssa = phi i32 [ %leftx.021, %for.cond1.preheader ], [ %leftx.2, %for.inc ]
  %lefty.1.lcssa = phi i32 [ %lefty.022, %for.cond1.preheader ], [ %lefty.2, %for.inc ]
  %rightx.1.lcssa = phi i32 [ %rightx.023, %for.cond1.preheader ], [ %rightx.2, %for.inc ]
  %righty.1.lcssa = phi i32 [ %righty.024, %for.cond1.preheader ], [ %righty.2, %for.inc ]
  %inc10 = add nuw nsw i32 %i.019, 1
  %cmp = icmp slt i32 %inc10, %4
  br i1 %cmp, label %for.cond1.preheader, label %for.end11.loopexit, !llvm.loop !12

for.end11.loopexit:                               ; preds = %for.inc9
  %5 = xor i32 %leftx.1.lcssa, -1
  %6 = add i32 %rightx.1.lcssa, %5
  %7 = xor i32 %lefty.1.lcssa, -1
  %8 = add i32 %righty.1.lcssa, %7
  %9 = mul nsw i32 %8, %6
  %call15 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %9)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11, !13}
!13 = !{!"llvm.loop.unswitch.partial.disable"}
