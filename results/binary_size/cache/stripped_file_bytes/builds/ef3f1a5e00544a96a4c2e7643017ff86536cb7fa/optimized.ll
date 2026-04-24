; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9kwwv8su.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %s = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 64, ptr noundef nonnull %s) #3
  br label %loop

loop:                                             ; preds = %loop, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %loop ], [ 1, %entry ]
  %arrayidx = getelementptr inbounds nuw [16 x i32], ptr %s, i64 0, i64 %indvars.iv
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp.not = icmp eq i32 %0, 0
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  br i1 %cmp.not, label %for.cond.preheader, label %loop

for.cond.preheader:                               ; preds = %loop
  %1 = and i64 %indvars.iv, 4294967295
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.inc22
  %indvars.iv19 = phi i64 [ %1, %for.cond.preheader ], [ %indvars.iv.next20, %for.inc22 ]
  %b.0 = phi i32 [ 0, %for.cond.preheader ], [ %b.1, %for.inc22 ]
  %2 = trunc nuw i64 %indvars.iv19 to i32
  %cmp3 = icmp sgt i32 %2, 0
  br i1 %cmp3, label %for.cond4.preheader, label %for.end23

for.cond4.preheader:                              ; preds = %for.cond
  %arrayidx8 = getelementptr inbounds nuw [16 x i32], ptr %s, i64 0, i64 %indvars.iv19
  br label %for.cond4

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv14 = phi i64 [ 1, %for.cond4.preheader ], [ %indvars.iv.next15, %for.body6 ]
  %b.1 = phi i32 [ %b.0, %for.cond4.preheader ], [ %b.2, %for.body6 ]
  %exitcond.not = icmp eq i64 %indvars.iv14, %indvars.iv19
  br i1 %exitcond.not, label %for.inc22, label %for.body6

for.body6:                                        ; preds = %for.cond4
  %3 = load i32, ptr %arrayidx8, align 4, !tbaa !5, !invariant.load !9
  %arrayidx10 = getelementptr inbounds nuw [16 x i32], ptr %s, i64 0, i64 %indvars.iv14
  %4 = load i32, ptr %arrayidx10, align 4, !tbaa !5, !invariant.load !9
  %mul = shl nsw i32 %4, 1
  %cmp11 = icmp eq i32 %3, %mul
  %mul16 = shl nsw i32 %3, 1
  %cmp17 = icmp eq i32 %4, %mul16
  %or.cond = select i1 %cmp11, i1 true, i1 %cmp17
  %inc19 = zext i1 %or.cond to i32
  %b.2 = add nsw i32 %b.1, %inc19
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %for.cond4, !llvm.loop !10

for.inc22:                                        ; preds = %for.cond4
  %indvars.iv.next20 = add nsw i64 %indvars.iv19, -1
  br label %for.cond, !llvm.loop !13

for.end23:                                        ; preds = %for.cond
  %call24 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %b.0)
  call void @llvm.lifetime.end.p0(i64 noundef 64, ptr noundef nonnull %s) #4
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
!13 = distinct !{!13, !11, !12}
