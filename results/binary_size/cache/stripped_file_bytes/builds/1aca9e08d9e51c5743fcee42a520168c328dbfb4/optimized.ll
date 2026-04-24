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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %t) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc9, %entry
  %0 = phi i32 [ %.pre, %entry ], [ %1, %for.inc9 ]
  %state.0 = phi i32 [ 0, %entry ], [ %state.1, %for.inc9 ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc10, %for.inc9 ]
  %leftx.0 = phi i32 [ undef, %entry ], [ %leftx.1, %for.inc9 ]
  %lefty.0 = phi i32 [ undef, %entry ], [ %lefty.1, %for.inc9 ]
  %rightx.0 = phi i32 [ undef, %entry ], [ %rightx.1, %for.inc9 ]
  %righty.0 = phi i32 [ undef, %entry ], [ %righty.1, %for.inc9 ]
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.cond1, label %for.end11

for.cond1:                                        ; preds = %for.cond, %for.inc
  %1 = phi i32 [ %.pre6, %for.inc ], [ %0, %for.cond ]
  %state.1 = phi i32 [ %state.2, %for.inc ], [ %state.0, %for.cond ]
  %j.0 = phi i32 [ %inc, %for.inc ], [ 0, %for.cond ]
  %leftx.1 = phi i32 [ %leftx.2, %for.inc ], [ %leftx.0, %for.cond ]
  %lefty.1 = phi i32 [ %lefty.2, %for.inc ], [ %lefty.0, %for.cond ]
  %rightx.1 = phi i32 [ %rightx.2, %for.inc ], [ %rightx.0, %for.cond ]
  %righty.1 = phi i32 [ %righty.2, %for.inc ], [ %righty.0, %for.cond ]
  %cmp2 = icmp slt i32 %j.0, %1
  br i1 %cmp2, label %for.body3, label %for.inc9

for.body3:                                        ; preds = %for.cond1
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %t)
  %2 = load i32, ptr %t, align 4, !tbaa !5
  %cmp5 = icmp eq i32 %2, 0
  br i1 %cmp5, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body3
  %cmp6 = icmp eq i32 %state.1, 0
  br i1 %cmp6, label %for.inc, label %if.else

if.else:                                          ; preds = %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body3, %if.else
  %state.2 = phi i32 [ %state.1, %if.else ], [ %state.1, %for.body3 ], [ 1, %if.then ]
  %leftx.2 = phi i32 [ %leftx.1, %if.else ], [ %leftx.1, %for.body3 ], [ %i.0, %if.then ]
  %lefty.2 = phi i32 [ %lefty.1, %if.else ], [ %lefty.1, %for.body3 ], [ %j.0, %if.then ]
  %rightx.2 = phi i32 [ %i.0, %if.else ], [ %rightx.1, %for.body3 ], [ %rightx.1, %if.then ]
  %righty.2 = phi i32 [ %j.0, %if.else ], [ %righty.1, %for.body3 ], [ %righty.1, %if.then ]
  %inc = add nuw nsw i32 %j.0, 1
  %.pre6 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc9:                                         ; preds = %for.cond1
  %inc10 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end11:                                        ; preds = %for.cond
  %3 = xor i32 %leftx.0, -1
  %sub12 = add i32 %rightx.0, %3
  %4 = xor i32 %lefty.0, -1
  %sub14 = add i32 %righty.0, %4
  %mul = mul nsw i32 %sub14, %sub12
  %call15 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %t) #4
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
attributes #3 = { nofree nounwind }
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
