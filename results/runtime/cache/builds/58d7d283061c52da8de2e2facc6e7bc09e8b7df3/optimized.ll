; ModuleID = '<stdin>'
source_filename = "/tmp/tmp11zdros0.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %N = alloca i32, align 4
  %sz = alloca [500 x i32], align 16
  %js = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %N)
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %sz) #5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax32 = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %2 = add nuw i32 %smax32, 1
  br label %for.cond2

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %sz, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc27
  %indvars.iv29.in = phi i32 [ %0, %for.cond2.preheader ], [ %indvars.iv29, %for.inc27 ]
  %p.0 = phi i32 [ 1, %for.cond2.preheader ], [ %inc28, %for.inc27 ]
  %indvars.iv29 = add i32 %indvars.iv29.in, -1
  %exitcond33 = icmp eq i32 %p.0, %2
  br i1 %exitcond33, label %for.cond.cleanup4, label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.cond2
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv29, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond6

for.cond.cleanup4:                                ; preds = %for.cond2
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %js) #5
  %wide.trip.count37 = zext nneg i32 %smax32 to i64
  br label %while.cond

for.cond6:                                        ; preds = %for.cond6.backedge, %for.cond6.preheader
  %indvars.iv25 = phi i64 [ 0, %for.cond6.preheader ], [ %indvars.iv.next26, %for.cond6.backedge ]
  %exitcond.not = icmp eq i64 %indvars.iv25, %wide.trip.count
  br i1 %exitcond.not, label %for.inc27, label %for.body8

for.body8:                                        ; preds = %for.cond6
  %arrayidx10 = getelementptr inbounds nuw [500 x i32], ptr %sz, i64 0, i64 %indvars.iv25
  %3 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %arrayidx12 = getelementptr inbounds nuw [500 x i32], ptr %sz, i64 0, i64 %indvars.iv.next26
  %4 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp13 = icmp sgt i32 %3, %4
  br i1 %cmp13, label %if.then, label %for.cond6.backedge

for.cond6.backedge:                               ; preds = %for.body8, %if.then
  br label %for.cond6, !llvm.loop !12

if.then:                                          ; preds = %for.body8
  store i32 %3, ptr %arrayidx12, align 4, !tbaa !5
  store i32 %4, ptr %arrayidx10, align 4, !tbaa !5
  br label %for.cond6.backedge

for.inc27:                                        ; preds = %for.cond6
  %inc28 = add nuw i32 %p.0, 1
  br label %for.cond2, !llvm.loop !13

while.cond:                                       ; preds = %if.end40, %for.cond.cleanup4
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %if.end40 ], [ 0, %for.cond.cleanup4 ]
  %t.0 = phi i32 [ %t.1, %if.end40 ], [ 0, %for.cond.cleanup4 ]
  %exitcond38.not = icmp eq i64 %indvars.iv34, %wide.trip.count37
  br i1 %exitcond38.not, label %for.cond42.preheader, label %while.body

for.cond42.preheader:                             ; preds = %while.cond
  %sub46 = add nsw i32 %t.0, -1
  %5 = sext i32 %sub46 to i64
  %smax43 = call i32 @llvm.smax.i32(i32 %t.0, i32 0)
  %wide.trip.count44 = zext nneg i32 %smax43 to i64
  br label %for.cond42

while.body:                                       ; preds = %while.cond
  %arrayidx32 = getelementptr inbounds nuw [500 x i32], ptr %sz, i64 0, i64 %indvars.iv34
  %6 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %7 = and i32 %6, 1
  %cmp33.not = icmp eq i32 %7, 0
  br i1 %cmp33.not, label %if.end40, label %if.then34

if.then34:                                        ; preds = %while.body
  %idxprom37 = sext i32 %t.0 to i64
  %arrayidx38 = getelementptr inbounds [500 x i32], ptr %js, i64 0, i64 %idxprom37
  store i32 %6, ptr %arrayidx38, align 4, !tbaa !5
  %inc39 = add nsw i32 %t.0, 1
  br label %if.end40

if.end40:                                         ; preds = %if.then34, %while.body
  %t.1 = phi i32 [ %inc39, %if.then34 ], [ %t.0, %while.body ]
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %while.cond, !llvm.loop !14

for.cond42:                                       ; preds = %for.cond42.preheader, %for.body45
  %indvars.iv39 = phi i64 [ 0, %for.cond42.preheader ], [ %indvars.iv.next40, %for.body45 ]
  %exitcond45.not = icmp eq i64 %indvars.iv39, %wide.trip.count44
  br i1 %exitcond45.not, label %for.cond.cleanup44, label %for.body45

for.cond.cleanup44:                               ; preds = %for.cond42
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %js) #5
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %sz) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N) #5
  ret i32 0

for.body45:                                       ; preds = %for.cond42
  %cmp47 = icmp slt i64 %indvars.iv39, %5
  %arrayidx50 = getelementptr inbounds nuw [500 x i32], ptr %js, i64 0, i64 %indvars.iv39
  %8 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %.str.1..str = select i1 %cmp47, ptr @.str.1, ptr @.str
  %call51 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.1..str, i32 noundef %8)
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %for.cond42, !llvm.loop !15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

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
!15 = distinct !{!15, !10, !11}
