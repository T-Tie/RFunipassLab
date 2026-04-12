; ModuleID = '<stdin>'
source_filename = "/tmp/tmpbyalxlso.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %a) #6
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %count.0 = phi i32 [ 0, %entry ], [ %count.2, %for.end ]
  %n.0 = phi i32 [ 0, %entry ], [ %inc33, %for.end ]
  %idxprom = sext i32 %n.0 to i64
  %arrayidx = getelementptr inbounds [16 x i32], ptr %a, i64 0, i64 %idxprom
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  switch i32 %0, label %for.cond11.preheader [
    i32 0, label %if.end.thread
    i32 -1, label %for.end34
  ]

if.end.thread:                                    ; preds = %for.cond
  %call3 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %count.0)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %a, i8 0, i64 64, i1 false)
  br label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %for.cond, %if.end.thread
  %n.119 = phi i32 [ 0, %if.end.thread ], [ %n.0, %for.cond ]
  %count.118 = phi i32 [ 0, %if.end.thread ], [ %count.0, %for.cond ]
  %1 = phi i32 [ 0, %if.end.thread ], [ %0, %for.cond ]
  %2 = and i32 %1, 1
  %cmp13 = icmp eq i32 %2, 0
  %div = ashr exact i32 %1, 1
  %mul = shl nsw i32 %1, 1
  %smax = call i32 @llvm.smax.i32(i32 %n.119, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond11

for.cond11:                                       ; preds = %for.cond11.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.cond11.preheader ], [ %indvars.iv.next, %for.body ]
  %count.2 = phi i32 [ %count.118, %for.cond11.preheader ], [ %spec.select13, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond11
  %arrayidx16 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv
  %3 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %cmp19 = icmp eq i32 %3, %div
  %narrow = select i1 %cmp13, i1 %cmp19, i1 false
  %spec.select = zext i1 %narrow to i32
  %count.3 = add nsw i32 %count.2, %spec.select
  %cmp27 = icmp eq i32 %3, %mul
  %inc29 = zext i1 %cmp27 to i32
  %spec.select13 = add nsw i32 %count.3, %inc29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond11, !llvm.loop !9

for.end:                                          ; preds = %for.cond11
  %inc33 = add nsw i32 %n.119, 1
  br label %for.cond, !llvm.loop !12

for.end34:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %a) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
