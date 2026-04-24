; ModuleID = '<stdin>'
source_filename = "/tmp/tmp395pxiyk.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [18 x i8] c"%d %d %d %d %d %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %shuzu = alloca [100 x [6 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 2400, ptr noundef nonnull align 16 %shuzu) #3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [100 x [6 x i32]], ptr %shuzu, i64 0, i64 %indvars.iv
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arrayidx, i64 4
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %arrayidx, i64 8
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %arrayidx, i64 12
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %arrayidx, i64 16
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %arrayidx, i64 20
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx4, ptr noundef nonnull %arrayidx7, ptr noundef nonnull %arrayidx10, ptr noundef nonnull %arrayidx13, ptr noundef nonnull %arrayidx16)
  %0 = load i32, ptr %arrayidx, align 8, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %while.cond.while.body_crit_edge

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  %.pre = load i32, ptr %arrayidx7, align 8, !tbaa !5, !invariant.load !9
  %.pre5 = load i32, ptr %arrayidx4, align 4, !tbaa !5, !invariant.load !9
  br label %while.body

land.lhs.true:                                    ; preds = %while.cond
  %1 = load i32, ptr %arrayidx4, align 4, !tbaa !5, !invariant.load !9
  %cmp23 = icmp eq i32 %1, 0
  %.pre4 = load i32, ptr %arrayidx7, align 8, !tbaa !5, !invariant.load !9
  br i1 %cmp23, label %land.lhs.true24, label %while.body

land.lhs.true24:                                  ; preds = %land.lhs.true
  %cmp28 = icmp eq i32 %.pre4, 0
  br i1 %cmp28, label %land.lhs.true29, label %while.body

land.lhs.true29:                                  ; preds = %land.lhs.true24
  %2 = load i32, ptr %arrayidx10, align 4, !tbaa !5, !invariant.load !9
  %cmp33 = icmp eq i32 %2, 0
  br i1 %cmp33, label %land.lhs.true34, label %while.body

land.lhs.true34:                                  ; preds = %land.lhs.true29
  %3 = load i32, ptr %arrayidx13, align 8, !tbaa !5, !invariant.load !9
  %cmp38 = icmp eq i32 %3, 0
  br i1 %cmp38, label %land.end, label %while.body

land.end:                                         ; preds = %land.lhs.true34
  %4 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %cmp42.not = icmp eq i32 %4, 0
  br i1 %cmp42.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %land.lhs.true, %land.lhs.true24, %land.lhs.true29, %land.lhs.true34, %land.end
  %5 = phi i32 [ %.pre5, %while.cond.while.body_crit_edge ], [ %1, %land.lhs.true ], [ 0, %land.lhs.true24 ], [ 0, %land.lhs.true29 ], [ 0, %land.lhs.true34 ], [ 0, %land.end ]
  %6 = phi i32 [ %.pre, %while.cond.while.body_crit_edge ], [ %.pre4, %land.lhs.true ], [ %.pre4, %land.lhs.true24 ], [ 0, %land.lhs.true29 ], [ 0, %land.lhs.true34 ], [ 0, %land.end ]
  %7 = load i32, ptr %arrayidx10, align 4, !tbaa !5, !invariant.load !9
  %add = add nsw i32 %7, 12
  store i32 %add, ptr %arrayidx10, align 4, !tbaa !5
  %8 = load i32, ptr %arrayidx16, align 4, !tbaa !5, !invariant.load !9
  %reass.sub2 = sub i32 %8, %6
  %add52 = add i32 %reass.sub2, 60
  store i32 0, ptr %arrayidx7, align 8, !tbaa !5
  store i32 0, ptr %arrayidx16, align 4, !tbaa !5
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %arrayidx4, align 4, !tbaa !5
  %inc79 = add nsw i32 %0, 1
  store i32 %inc79, ptr %arrayidx, align 8, !tbaa !5
  %call93 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %add52)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %land.end
  call void @llvm.lifetime.end.p0(i64 noundef 2400, ptr noundef nonnull %shuzu) #4
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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
