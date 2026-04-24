; ModuleID = '<stdin>'
source_filename = "/tmp/tmpb_a82fiy.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z3funii(i32 noundef %x, i32 noundef %y) local_unnamed_addr #0 {
entry:
  %mul10 = mul nsw i32 %x, %x
  %cmp.not11 = icmp sgt i32 %mul10, %y
  br i1 %cmp.not11, label %for.end, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %sum.013 = phi i32 [ %sum.1, %for.inc ], [ 0, %entry ]
  %i.012 = phi i32 [ %inc2, %for.inc ], [ %x, %entry ]
  %rem = srem i32 %y, %i.012
  %div = sdiv i32 %y, %i.012
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %inc = add nsw i32 %sum.013, 1
  %call = tail call noundef i32 @_Z3funii(i32 noundef %i.012, i32 noundef %div)
  %add = add nsw i32 %inc, %call
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %sum.1 = phi i32 [ %add, %if.then ], [ %sum.013, %for.body ]
  %inc2 = add nsw i32 %i.012, 1
  %mul = mul nsw i32 %inc2, %inc2
  %cmp.not = icmp sgt i32 %mul, %y
  br i1 %cmp.not, label %for.end, label %for.body, !llvm.loop !5

for.end:                                          ; preds = %for.inc, %entry
  %sum.0.lcssa = phi i32 [ 0, %entry ], [ %sum.1, %for.inc ]
  ret i32 %sum.0.lcssa
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !8
  %cmp2 = icmp sgt i32 %0, 0
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.body
  %1 = phi i32 [ %3, %while.body ], [ %0, %entry ]
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %n, align 4, !tbaa !8
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %i)
  %2 = load i32, ptr %i, align 4, !tbaa !8
  %call2 = call noundef i32 @_Z3funii(i32 noundef 2, i32 noundef %2)
  %add = add nsw i32 %call2, 1
  %call3 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %add)
  %3 = load i32, ptr %n, align 4, !tbaa !8
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !12

while.end:                                        ; preds = %while.body, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = distinct !{!12, !6, !7}
