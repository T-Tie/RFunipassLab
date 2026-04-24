; ModuleID = '<stdin>'
source_filename = "/tmp/tmpzp4e65w5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i64, align 8
  %a = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  store i32 1, ptr %a, align 4, !tbaa !5
  br label %while.body

while.body:                                       ; preds = %entry, %while.body
  %i.020 = phi i64 [ 0, %entry ], [ %inc, %while.body ]
  %inc = add nuw nsw i64 %i.020, 1
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a)
  %.pr = load i32, ptr %a, align 4, !tbaa !5
  %cmp.not = icmp eq i32 %.pr, 0
  br i1 %cmp.not, label %while.end, label %while.body, !llvm.loop !9

while.end:                                        ; preds = %while.body
  %0 = load i64, ptr %n, align 8, !tbaa !12
  %mul = mul nsw i64 %0, %0
  %cmp2.not21.not = icmp samesign ult i64 %i.020, %mul
  br i1 %cmp2.not21.not, label %for.body, label %for.end

for.body:                                         ; preds = %while.end, %for.body
  %w.024 = phi i64 [ %w.2, %for.body ], [ 0, %while.end ]
  %e.023 = phi i64 [ %e.1, %for.body ], [ %inc, %while.end ]
  %j.022 = phi i64 [ %inc10, %for.body ], [ %inc, %while.end ]
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a)
  %1 = load i32, ptr %a, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %1, 255
  %inc5 = zext i1 %cmp4 to i64
  %spec.select = add nsw i64 %w.024, %inc5
  %cmp6 = icmp eq i32 %1, 0
  %inc8 = add nsw i64 %e.023, 1
  %add = add nsw i64 %inc8, %spec.select
  %e.1 = select i1 %cmp6, i64 %add, i64 %e.023
  %w.2 = select i1 %cmp6, i64 0, i64 %spec.select
  %inc10 = add i64 %j.022, 1
  %exitcond.not = icmp eq i64 %j.022, %mul
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body, !llvm.loop !14

for.end.loopexit:                                 ; preds = %for.body
  %.pre = load i64, ptr %n, align 8, !tbaa !12
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %while.end
  %2 = phi i64 [ %0, %while.end ], [ %.pre, %for.end.loopexit ]
  %e.0.lcssa = phi i64 [ %inc, %while.end ], [ %e.1, %for.end.loopexit ]
  %rem = srem i64 %inc, %2
  %rem11 = srem i64 %e.0.lcssa, %2
  %sub = sub nsw i64 %rem, %rem11
  %div = sdiv i64 %e.0.lcssa, %2
  %div18 = sdiv i64 %inc, %2
  %3 = xor i64 %div18, -1
  %sub20 = add i64 %div, %3
  %4 = xor i64 %rem, -1
  %sub37 = add i64 %rem11, %4
  %sub24 = add nsw i64 %sub, -1
  %cmp1225 = icmp slt i64 %sub, 0
  %sub37.sink = select i1 %cmp1225, i64 %sub37, i64 %sub24
  %mul38 = mul nsw i64 %sub20, %sub37.sink
  %call40 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i64 noundef %mul38)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %n) #4
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
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = distinct !{!14, !10, !11}
