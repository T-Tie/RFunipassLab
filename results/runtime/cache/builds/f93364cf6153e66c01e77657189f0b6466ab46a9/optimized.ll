; ModuleID = '<stdin>'
source_filename = "/tmp/tmpafw90g07.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [15 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %a) #4
  br label %for.cond

for.cond:                                         ; preds = %for.end28, %entry
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a)
  %0 = load i32, ptr %a, align 16, !tbaa !5
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %for.end33, label %for.cond2

for.cond2:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, 16
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond2
  %arrayidx4 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx4)
  %1 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %cmp8 = icmp eq i32 %1, 0
  br i1 %cmp8, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.end:                                          ; preds = %for.body, %for.cond2
  %2 = add nuw i64 %indvars.iv, 1
  %wide.trip.count20 = and i64 %2, 4294967295
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc26, %for.end
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %for.inc26 ], [ 0, %for.end ]
  %p.0 = phi i32 [ %p.1, %for.inc26 ], [ 0, %for.end ]
  %exitcond21 = icmp eq i64 %indvars.iv17, %wide.trip.count20
  br i1 %exitcond21, label %for.end28, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond10
  %arrayidx19 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv17
  %3 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %mul = shl nsw i32 %3, 1
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.preheader, %for.body15
  %indvars.iv13 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next14, %for.body15 ]
  %p.1 = phi i32 [ %p.0, %for.cond13.preheader ], [ %spec.select, %for.body15 ]
  %exitcond16 = icmp eq i64 %indvars.iv13, %wide.trip.count20
  br i1 %exitcond16, label %for.inc26, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %arrayidx17 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv13
  %4 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %4, %mul
  %add = zext i1 %cmp20 to i32
  %spec.select = add nsw i32 %p.1, %add
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  br label %for.cond13, !llvm.loop !12

for.inc26:                                        ; preds = %for.cond13
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  br label %for.cond10, !llvm.loop !13

for.end28:                                        ; preds = %for.cond10
  %sub = add nsw i32 %p.0, -1
  %call29 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %sub)
  br label %for.cond, !llvm.loop !14

for.end33:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %a) #4
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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
