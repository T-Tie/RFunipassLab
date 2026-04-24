; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_xducke_.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %sz = alloca [16 x i32], align 16
  %erbei = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sz) #5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %erbei) #5
  %arrayidx32.phi.trans.insert = getelementptr inbounds i8, ptr %sz, i64 -4
  br label %for.cond

for.cond:                                         ; preds = %if.end30, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc37, %if.end30 ]
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [16 x i32], ptr %sz, i64 0, i64 %idxprom
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %for.cond3.preheader, label %if.end30

for.cond3.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %i.0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond3

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.cond3.preheader ], [ %indvars.iv.next, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond10.preheader, label %for.body

for.cond10.preheader:                             ; preds = %for.cond3
  %wide.trip.count23 = zext i32 %i.0 to i64
  br label %for.cond10

for.body:                                         ; preds = %for.cond3
  %arrayidx6 = getelementptr inbounds nuw [16 x i32], ptr %sz, i64 0, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %mul = shl nsw i32 %1, 1
  %arrayidx8 = getelementptr inbounds nuw [16 x i32], ptr %erbei, i64 0, i64 %indvars.iv
  store i32 %mul, ptr %arrayidx8, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond3, !llvm.loop !9

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc26
  %indvars.iv25 = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next26, %for.inc26 ]
  %sum.2 = phi i32 [ 0, %for.cond10.preheader ], [ %sum.3, %for.inc26 ]
  %exitcond29.not = icmp eq i64 %indvars.iv25, %wide.trip.count
  br i1 %exitcond29.not, label %for.end28, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond10
  %arrayidx17 = getelementptr inbounds nuw [16 x i32], ptr %erbei, i64 0, i64 %indvars.iv25
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.preheader, %for.body15
  %indvars.iv20 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next21, %for.body15 ]
  %sum.3 = phi i32 [ %sum.2, %for.cond13.preheader ], [ %spec.select, %for.body15 ]
  %exitcond24.not = icmp eq i64 %indvars.iv20, %wide.trip.count23
  br i1 %exitcond24.not, label %for.inc26, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %2 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %arrayidx19 = getelementptr inbounds nuw [16 x i32], ptr %sz, i64 0, i64 %indvars.iv20
  %3 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %2, %3
  %inc22 = zext i1 %cmp20 to i32
  %spec.select = add nsw i32 %sum.3, %inc22
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  br label %for.cond13, !llvm.loop !12

for.inc26:                                        ; preds = %for.cond13
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond10, !llvm.loop !13

for.end28:                                        ; preds = %for.cond10
  %call29 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %sum.2)
  %.pre = load i32, ptr %arrayidx32.phi.trans.insert, align 4, !tbaa !5
  br label %if.end30

if.end30:                                         ; preds = %for.end28, %for.cond
  %4 = phi i32 [ %.pre, %for.end28 ], [ %0, %for.cond ]
  %i.1 = phi i32 [ -1, %for.end28 ], [ %i.0, %for.cond ]
  %cmp33 = icmp eq i32 %4, -1
  %inc37 = add nsw i32 %i.1, 1
  br i1 %cmp33, label %for.end38, label %for.cond, !llvm.loop !14

for.end38:                                        ; preds = %if.end30
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %erbei) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sz) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

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
