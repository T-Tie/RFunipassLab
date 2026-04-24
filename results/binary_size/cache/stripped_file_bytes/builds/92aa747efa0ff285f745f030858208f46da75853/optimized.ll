; ModuleID = '<stdin>'
source_filename = "/tmp/tmpv9p7zxi2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %str = alloca [10000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %str) #6
  %call1.peel = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.peel = icmp sgt i32 %0, 0
  br i1 %cmp.peel, label %for.cond, label %for.cond2.preheader

for.cond:                                         ; preds = %entry, %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %str)
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %for.cond, label %for.cond2.preheader.loopexit, !llvm.loop !9

for.cond2.preheader.loopexit:                     ; preds = %for.cond
  %.pre11 = load i32, ptr %str, align 16
  %2 = icmp sgt i32 %.pre11, 0
  %3 = zext i1 %2 to i32
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond2.preheader.loopexit, %entry
  %narrow = phi i32 [ 0, %entry ], [ %3, %for.cond2.preheader.loopexit ]
  %.lcssa = phi i32 [ %0, %entry ], [ %1, %for.cond2.preheader.loopexit ]
  br label %for.cond2

for.cond2:                                        ; preds = %for.cond2.preheader, %for.body4
  %4 = phi i32 [ %.lcssa, %for.cond2.preheader ], [ %.pre, %for.body4 ]
  %cmp3 = icmp sgt i32 %4, 0
  br i1 %cmp3, label %for.body4, label %for.end11

for.body4:                                        ; preds = %for.cond2
  %call8 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %narrow)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond2

for.end11:                                        ; preds = %for.cond2
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %str) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z3yinii(i32 noundef %m, i32 noundef %t) local_unnamed_addr #3 {
entry:
  %cmp = icmp slt i32 %m, %t
  %cmp1.not = icmp eq i32 %m, 1
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  br i1 %cmp1.not, label %if.then3, label %cleanup

if.else:                                          ; preds = %entry
  br i1 %cmp1.not, label %if.then3, label %if.else4

if.then3:                                         ; preds = %land.lhs.true, %if.else
  br label %cleanup

if.else4:                                         ; preds = %if.else
  %call = tail call noundef i32 @_Z3zhii(i32 noundef %m) #8
  %cmp5 = icmp eq i32 %call, 0
  tail call void @llvm.assume(i1 noundef %cmp5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else4, %land.lhs.true, %if.then3
  %.sink = phi i32 [ 1, %if.then3 ], [ 0, %land.lhs.true ], [ 1, %if.else4 ]
  ret i32 %.sink
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z3zhii(i32 noundef %a) local_unnamed_addr #3 {
entry:
  %div = sdiv i32 %a, 2
  %0 = tail call i32 @llvm.smax.i32(i32 noundef %div, i32 noundef 1)
  %smax = add nuw nsw i32 %0, 1
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %k.0 = phi i32 [ 2, %entry ], [ %inc, %for.body ]
  %exitcond = icmp eq i32 %k.0, %smax
  br i1 %exitcond, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %a, %k.0
  %cmp1 = icmp eq i32 %rem, 0
  %inc = add nuw nsw i32 %k.0, 1
  br i1 %cmp1, label %for.end, label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.body, %for.cond
  %flag.0 = phi i32 [ 0, %for.cond ], [ 1, %for.body ]
  ret i32 %flag.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { nofree nosync nounwind memory(none) }
attributes #9 = { memory(write) }

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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.peeled.count", i32 1}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
