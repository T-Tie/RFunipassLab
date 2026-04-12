; ModuleID = '<stdin>'
source_filename = "/tmp/tmp72r15x2t.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\0A%d\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z5sushui(i32 noundef %a) local_unnamed_addr #0 {
entry:
  %smax = call i32 @llvm.smax.i32(i32 %a, i32 2)
  %0 = add nsw i32 %smax, -2
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %b.0 = phi i32 [ 2, %entry ], [ %add, %if.end ]
  %d.0 = phi i32 [ 0, %entry ], [ %add2, %if.end ]
  %exitcond.not = icmp eq i32 %d.0, %0
  br i1 %exitcond.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %rem = srem i32 %a, %b.0
  %cmp1.not = icmp eq i32 %rem, 0
  br i1 %cmp1.not, label %while.end, label %if.end

if.end:                                           ; preds = %while.body
  %add = add nuw nsw i32 %b.0, 1
  %add2 = add nuw nsw i32 %d.0, 1
  br label %while.cond, !llvm.loop !5

while.end:                                        ; preds = %while.body, %while.cond
  %d.0.lcssa = phi i32 [ %d.0, %while.body ], [ %0, %while.cond ]
  %sub = add nsw i32 %a, -2
  %cmp3 = icmp eq i32 %d.0.lcssa, %sub
  %spec.select = zext i1 %cmp3 to i32
  ret i32 %spec.select
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z5zhengii(i32 noundef %n, i32 noundef %i) local_unnamed_addr #0 {
entry:
  ret i32 1
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  %e = alloca [40000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  call void @llvm.lifetime.start.p0(i64 noundef 160000, ptr noundef nonnull align 16 %e) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(160000) %e, i8 noundef 0, i64 noundef 160000, i1 noundef false) #8
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %e.sink = phi ptr [ %n, %entry ], [ %e, %for.cond ]
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %e.sink)
  %0 = load i32, ptr %n, align 4, !tbaa !8
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.cond, label %for.cond21

for.cond21:                                       ; preds = %for.cond, %for.cond21
  %.str.1.sink = phi ptr [ @.str.1, %for.cond21 ], [ @.str, %for.cond ]
  %call26 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.1.sink, i32 noundef 0)
  %1 = load i32, ptr %n, align 4, !tbaa !8
  %cmp22 = icmp sgt i32 %1, 1
  br i1 %cmp22, label %for.cond21, label %for.end29

for.end29:                                        ; preds = %for.cond21
  call void @llvm.lifetime.end.p0(i64 noundef 160000, ptr noundef nonnull %e) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #4

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #7 = { nofree nounwind }
attributes #8 = { nofree }
attributes #9 = { nounwind }

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
