; ModuleID = '<stdin>'
source_filename = "/tmp/tmpa0uamr_5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %t = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc11, %entry
  %0 = phi i32 [ %.pre, %entry ], [ %1, %for.inc11 ]
  %y.0 = phi i32 [ undef, %entry ], [ %y.1, %for.inc11 ]
  %z.0 = phi i32 [ undef, %entry ], [ %z.1, %for.inc11 ]
  %w.0 = phi i32 [ undef, %entry ], [ %w.1, %for.inc11 ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc12, %for.inc11 ]
  %x.0 = phi i32 [ undef, %entry ], [ %x.1, %for.inc11 ]
  %tz.0 = phi i32 [ 0, %entry ], [ %tz.1, %for.inc11 ]
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.cond1, label %for.end13

for.cond1:                                        ; preds = %for.cond, %for.body3
  %1 = phi i32 [ %.pre8, %for.body3 ], [ %0, %for.cond ]
  %y.1 = phi i32 [ %y.2, %for.body3 ], [ %y.0, %for.cond ]
  %z.1 = phi i32 [ %z.2, %for.body3 ], [ %z.0, %for.cond ]
  %w.1 = phi i32 [ %w.2, %for.body3 ], [ %w.0, %for.cond ]
  %j.0 = phi i32 [ %inc10, %for.body3 ], [ 0, %for.cond ]
  %x.1 = phi i32 [ %x.2, %for.body3 ], [ %x.0, %for.cond ]
  %tz.1 = phi i32 [ %tz.2, %for.body3 ], [ %tz.0, %for.cond ]
  %cmp2 = icmp slt i32 %j.0, %1
  br i1 %cmp2, label %for.body3, label %for.inc11

for.body3:                                        ; preds = %for.cond1
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %t)
  %2 = load i32, ptr %t, align 4, !tbaa !5
  %cmp5 = icmp eq i32 %2, 0
  %cmp6 = icmp eq i32 %tz.1, 0
  %or.cond = select i1 %cmp5, i1 %cmp6, i1 false
  %y.2 = select i1 %or.cond, i32 %j.0, i32 %y.1
  %x.2 = select i1 %or.cond, i32 %i.0, i32 %x.1
  %tz.2 = select i1 %or.cond, i32 1, i32 %tz.1
  %z.2 = select i1 %cmp5, i32 %i.0, i32 %z.1
  %w.2 = select i1 %cmp5, i32 %j.0, i32 %w.1
  %inc10 = add nuw nsw i32 %j.0, 1
  %.pre8 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc11:                                        ; preds = %for.cond1
  %inc12 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end13:                                        ; preds = %for.cond
  %3 = xor i32 %x.0, -1
  %sub14 = add i32 %z.0, %3
  %4 = xor i32 %y.0, -1
  %sub16 = add i32 %w.0, %4
  %mul = mul nsw i32 %sub14, %sub16
  %call17 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #4
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
!12 = distinct !{!12, !10, !11}
