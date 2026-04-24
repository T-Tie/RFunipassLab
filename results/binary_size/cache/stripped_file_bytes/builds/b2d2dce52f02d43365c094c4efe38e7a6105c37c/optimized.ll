; ModuleID = '<stdin>'
source_filename = "/tmp/tmpks_q8qbl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %sz = alloca [99 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  call void @llvm.lifetime.start.p0(i64 396, ptr nonnull %sz) #4
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not.not20 = icmp sgt i32 %0, 0
  br i1 %cmp.not.not20, label %for.body, label %for.end13

for.cond2.preheader:                              ; preds = %for.body
  %cmp4.not.not22 = icmp sgt i32 %1, 0
  br i1 %cmp4.not.not22, label %for.body5.preheader, label %for.end13

for.body5.preheader:                              ; preds = %for.cond2.preheader
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %for.body5

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [99 x i32], ptr %sz, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv.next, %2
  br i1 %cmp.not.not, label %for.body, label %for.cond2.preheader, !llvm.loop !9

for.body5:                                        ; preds = %for.body5.preheader, %for.body5
  %indvars.iv33 = phi i64 [ 0, %for.body5.preheader ], [ %indvars.iv.next34, %for.body5 ]
  %max.024 = phi i32 [ 0, %for.body5.preheader ], [ %spec.select, %for.body5 ]
  %arrayidx7 = getelementptr inbounds nuw [99 x i32], ptr %sz, i64 0, i64 %indvars.iv33
  %3 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %idxprom8 = zext nneg i32 %max.024 to i64
  %arrayidx9 = getelementptr inbounds nuw [99 x i32], ptr %sz, i64 0, i64 %idxprom8
  %4 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %cmp10 = icmp sgt i32 %3, %4
  %5 = trunc nuw nsw i64 %indvars.iv33 to i32
  %spec.select = select i1 %cmp10, i32 %5, i32 %max.024
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count
  br i1 %exitcond.not, label %for.end13, label %for.body5, !llvm.loop !12

for.end13:                                        ; preds = %for.body5, %entry, %for.cond2.preheader
  %.lcssa43 = phi i32 [ %1, %for.cond2.preheader ], [ %0, %entry ], [ %1, %for.body5 ]
  %max.0.lcssa = phi i32 [ 0, %for.cond2.preheader ], [ 0, %entry ], [ %spec.select, %for.body5 ]
  %sub3.le = add i32 %.lcssa43, -1
  %cmp15.not = icmp eq i32 %max.0.lcssa, %sub3.le
  br i1 %cmp15.not, label %if.end27, label %if.then16

if.then16:                                        ; preds = %for.end13
  %idxprom17 = zext nneg i32 %max.0.lcssa to i64
  %arrayidx18 = getelementptr inbounds nuw [99 x i32], ptr %sz, i64 0, i64 %idxprom17
  %6 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %idxprom20 = sext i32 %sub3.le to i64
  %arrayidx21 = getelementptr inbounds [99 x i32], ptr %sz, i64 0, i64 %idxprom20
  %7 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  store i32 %7, ptr %arrayidx18, align 4, !tbaa !5
  store i32 %6, ptr %arrayidx21, align 4, !tbaa !5
  br label %if.end27

if.end27:                                         ; preds = %if.then16, %for.end13
  %sub29 = add nsw i32 %.lcssa43, -2
  %cmp30.not26 = icmp slt i32 %.lcssa43, 2
  br i1 %cmp30.not26, label %for.end41, label %for.body31.preheader

for.body31.preheader:                             ; preds = %if.end27
  %wide.trip.count39 = zext nneg i32 %sub3.le to i64
  br label %for.body31

for.body31:                                       ; preds = %for.body31.preheader, %for.body31
  %indvars.iv36 = phi i64 [ 0, %for.body31.preheader ], [ %indvars.iv.next37, %for.body31 ]
  %max.228 = phi i32 [ 0, %for.body31.preheader ], [ %spec.select19, %for.body31 ]
  %arrayidx33 = getelementptr inbounds nuw [99 x i32], ptr %sz, i64 0, i64 %indvars.iv36
  %8 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %idxprom34 = zext nneg i32 %max.228 to i64
  %arrayidx35 = getelementptr inbounds nuw [99 x i32], ptr %sz, i64 0, i64 %idxprom34
  %9 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %cmp36 = icmp sgt i32 %8, %9
  %10 = trunc nuw nsw i64 %indvars.iv36 to i32
  %spec.select19 = select i1 %cmp36, i32 %10, i32 %max.228
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %exitcond40.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count39
  br i1 %exitcond40.not, label %for.end41, label %for.body31, !llvm.loop !13

for.end41:                                        ; preds = %for.body31, %if.end27
  %max.2.lcssa = phi i32 [ 0, %if.end27 ], [ %spec.select19, %for.body31 ]
  %cmp43.not = icmp eq i32 %max.2.lcssa, %sub29
  br i1 %cmp43.not, label %if.end55, label %if.then44

if.then44:                                        ; preds = %for.end41
  %idxprom45 = zext nneg i32 %max.2.lcssa to i64
  %arrayidx46 = getelementptr inbounds nuw [99 x i32], ptr %sz, i64 0, i64 %idxprom45
  %11 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %idxprom48 = sext i32 %sub29 to i64
  %arrayidx49 = getelementptr inbounds [99 x i32], ptr %sz, i64 0, i64 %idxprom48
  %12 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  store i32 %12, ptr %arrayidx46, align 4, !tbaa !5
  store i32 %11, ptr %arrayidx49, align 4, !tbaa !5
  br label %if.end55

if.end55:                                         ; preds = %if.then44, %for.end41
  %idxprom57 = sext i32 %sub3.le to i64
  %arrayidx58 = getelementptr inbounds [99 x i32], ptr %sz, i64 0, i64 %idxprom57
  %13 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  %call59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %13)
  %14 = load i32, ptr %n, align 4, !tbaa !5
  %sub60 = add nsw i32 %14, -2
  %idxprom61 = sext i32 %sub60 to i64
  %arrayidx62 = getelementptr inbounds [99 x i32], ptr %sz, i64 0, i64 %idxprom61
  %15 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %call63 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %15)
  call void @llvm.lifetime.end.p0(i64 396, ptr nonnull %sz) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
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
