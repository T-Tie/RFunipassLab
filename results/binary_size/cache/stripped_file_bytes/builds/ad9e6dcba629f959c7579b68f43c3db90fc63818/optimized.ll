; ModuleID = '<stdin>'
source_filename = "/tmp/tmpmkk0aci4.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d+%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %A = alloca [8 x [8 x i32]], align 16
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %Line = alloca [8 x i32], align 16
  %Row = alloca [8 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %A) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %Line) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %Line, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %Row) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %Row, i8 0, i64 32, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a, ptr noundef nonnull %b)
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.end ], [ 0, %entry ]
  %0 = load i32, ptr %a, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv29, %1
  br i1 %cmp, label %for.cond1.preheader, label %for.cond21.preheader

for.cond1.preheader:                              ; preds = %for.cond
  %arrayidx13 = getelementptr inbounds nuw [8 x i32], ptr %Line, i64 0, i64 %indvars.iv29
  br label %for.cond1

for.cond21.preheader:                             ; preds = %for.cond
  %2 = load i32, ptr %b, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %smax39 = call i32 @llvm.smax.i32(i32 %2, i32 0)
  %wide.trip.count40 = zext nneg i32 %smax39 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond21

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.inc ]
  %t.0 = phi i32 [ 0, %for.cond1.preheader ], [ %t.1, %for.inc ]
  %3 = load i32, ptr %b, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %A, i64 0, i64 %indvars.iv29, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %5 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %cmp11 = icmp sgt i32 %5, %t.0
  br i1 %cmp11, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body3
  %6 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %6, ptr %arrayidx13, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body3, %if.then
  %t.1 = phi i32 [ %5, %if.then ], [ %t.0, %for.body3 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond, !llvm.loop !12

for.cond21:                                       ; preds = %for.cond21.preheader, %for.end43
  %indvars.iv36 = phi i64 [ 0, %for.cond21.preheader ], [ %indvars.iv.next37, %for.end43 ]
  %exitcond41.not = icmp eq i64 %indvars.iv36, %wide.trip.count40
  br i1 %exitcond41.not, label %for.cond47, label %for.cond25.preheader

for.cond25.preheader:                             ; preds = %for.cond21
  %arrayidx35 = getelementptr inbounds nuw [8 x i32], ptr %Row, i64 0, i64 %indvars.iv36
  br label %for.cond25

for.cond25:                                       ; preds = %for.cond25.preheader, %for.inc41
  %indvars.iv32 = phi i64 [ 0, %for.cond25.preheader ], [ %indvars.iv.next33, %for.inc41 ]
  %t24.0 = phi i32 [ 100, %for.cond25.preheader ], [ %t24.1, %for.inc41 ]
  %exitcond.not = icmp eq i64 %indvars.iv32, %wide.trip.count
  br i1 %exitcond.not, label %for.end43, label %for.body27

for.body27:                                       ; preds = %for.cond25
  %arrayidx31 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %A, i64 0, i64 %indvars.iv32, i64 %indvars.iv36
  %7 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %7, %t24.0
  br i1 %cmp32, label %if.then33, label %for.inc41

if.then33:                                        ; preds = %for.body27
  %8 = trunc nuw nsw i64 %indvars.iv32 to i32
  store i32 %8, ptr %arrayidx35, align 4, !tbaa !5
  br label %for.inc41

for.inc41:                                        ; preds = %for.body27, %if.then33
  %t24.1 = phi i32 [ %7, %if.then33 ], [ %t24.0, %for.body27 ]
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond25, !llvm.loop !13

for.end43:                                        ; preds = %for.cond25
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  br label %for.cond21, !llvm.loop !14

for.cond47:                                       ; preds = %for.cond21, %if.end61
  %.pre45 = phi i32 [ %.pre, %if.end61 ], [ %0, %for.cond21 ]
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %if.end61 ], [ 0, %for.cond21 ]
  %f.0 = phi i32 [ %f.1, %if.end61 ], [ 0, %for.cond21 ]
  %9 = sext i32 %.pre45 to i64
  %cmp48 = icmp slt i64 %indvars.iv42, %9
  br i1 %cmp48, label %for.body49, label %for.end64

for.body49:                                       ; preds = %for.cond47
  %arrayidx52 = getelementptr inbounds nuw [8 x i32], ptr %Line, i64 0, i64 %indvars.iv42
  %10 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %idxprom53 = sext i32 %10 to i64
  %arrayidx54 = getelementptr inbounds [8 x i32], ptr %Row, i64 0, i64 %idxprom53
  %11 = load i32, ptr %arrayidx54, align 4, !tbaa !5
  %12 = zext i32 %11 to i64
  %cmp55 = icmp eq i64 %indvars.iv42, %12
  br i1 %cmp55, label %if.then56, label %if.end61

if.then56:                                        ; preds = %for.body49
  %inc57 = add nsw i32 %f.0, 1
  %13 = trunc nuw nsw i64 %indvars.iv42 to i32
  %call60 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %13, i32 noundef %10)
  %.pre.pre = load i32, ptr %a, align 4, !tbaa !5
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %for.body49
  %.pre = phi i32 [ %.pre.pre, %if.then56 ], [ %.pre45, %for.body49 ]
  %f.1 = phi i32 [ %inc57, %if.then56 ], [ %f.0, %for.body49 ]
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %for.cond47, !llvm.loop !15

for.end64:                                        ; preds = %for.cond47
  %cmp65 = icmp eq i32 %f.0, 0
  br i1 %cmp65, label %if.then66, label %if.end68

if.then66:                                        ; preds = %for.end64
  %call67 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %for.end64
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %Row) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %Line) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %A) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
