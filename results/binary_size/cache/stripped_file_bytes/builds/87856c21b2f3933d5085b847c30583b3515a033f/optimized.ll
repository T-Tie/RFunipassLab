; ModuleID = '<stdin>'
source_filename = "/tmp/tmp6z9d2or9.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %x = alloca i32, align 4
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not18 = icmp slt i32 %0, 1
  br i1 %cmp.not18, label %for.end13, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.inc11
  %1 = phi i32 [ %4, %for.inc11 ], [ %0, %entry ]
  %b2.023 = phi i32 [ %b2.1.lcssa, %for.inc11 ], [ 0, %entry ]
  %b1.022 = phi i32 [ %b1.1.lcssa, %for.inc11 ], [ 0, %entry ]
  %a2.021 = phi i32 [ %a2.1.lcssa, %for.inc11 ], [ 0, %entry ]
  %a1.020 = phi i32 [ %a1.1.lcssa, %for.inc11 ], [ 0, %entry ]
  %i.019 = phi i32 [ %inc12, %for.inc11 ], [ 1, %entry ]
  %cmp3.not9 = icmp slt i32 %1, 1
  br i1 %cmp3.not9, label %for.inc11, label %for.body4

for.body4:                                        ; preds = %for.cond1.preheader, %for.body4
  %b2.114 = phi i32 [ %b2.2, %for.body4 ], [ %b2.023, %for.cond1.preheader ]
  %b1.113 = phi i32 [ %b1.2, %for.body4 ], [ %b1.022, %for.cond1.preheader ]
  %a2.112 = phi i32 [ %spec.select8, %for.body4 ], [ %a2.021, %for.cond1.preheader ]
  %a1.111 = phi i32 [ %spec.select, %for.body4 ], [ %a1.020, %for.cond1.preheader ]
  %j.010 = phi i32 [ %inc, %for.body4 ], [ 1, %for.cond1.preheader ]
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x)
  %2 = load i32, ptr %x, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %2, 0
  %cmp7 = icmp eq i32 %a1.111, 0
  %or.cond = select i1 %cmp6, i1 %cmp7, i1 false
  %spec.select = select i1 %or.cond, i32 %i.019, i32 %a1.111
  %spec.select8 = select i1 %or.cond, i32 %j.010, i32 %a2.112
  %b1.2 = select i1 %cmp6, i32 %i.019, i32 %b1.113
  %b2.2 = select i1 %cmp6, i32 %j.010, i32 %b2.114
  %inc = add nuw nsw i32 %j.010, 1
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp3.not.not = icmp slt i32 %j.010, %3
  br i1 %cmp3.not.not, label %for.body4, label %for.inc11, !llvm.loop !9

for.inc11:                                        ; preds = %for.body4, %for.cond1.preheader
  %4 = phi i32 [ %1, %for.cond1.preheader ], [ %3, %for.body4 ]
  %a1.1.lcssa = phi i32 [ %a1.020, %for.cond1.preheader ], [ %spec.select, %for.body4 ]
  %a2.1.lcssa = phi i32 [ %a2.021, %for.cond1.preheader ], [ %spec.select8, %for.body4 ]
  %b1.1.lcssa = phi i32 [ %b1.022, %for.cond1.preheader ], [ %b1.2, %for.body4 ]
  %b2.1.lcssa = phi i32 [ %b2.023, %for.cond1.preheader ], [ %b2.2, %for.body4 ]
  %inc12 = add nuw nsw i32 %i.019, 1
  %cmp.not.not = icmp slt i32 %i.019, %4
  br i1 %cmp.not.not, label %for.cond1.preheader, label %for.end13.loopexit31, !llvm.loop !12

for.end13.loopexit31:                             ; preds = %for.inc11
  %5 = xor i32 %a1.1.lcssa, -1
  %6 = add i32 %b1.1.lcssa, %5
  %7 = xor i32 %a2.1.lcssa, -1
  %8 = add i32 %b2.1.lcssa, %7
  %9 = mul nsw i32 %8, %6
  br label %for.end13

for.end13:                                        ; preds = %for.end13.loopexit31, %entry
  %mul = phi i32 [ 1, %entry ], [ %9, %for.end13.loopexit31 ]
  %call17 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x) #4
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
!12 = distinct !{!12, !10, !11, !13}
!13 = !{!"llvm.loop.unswitch.partial.disable"}
