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
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %A) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %Line) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %Line, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %Row) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %Row, i8 0, i64 32, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a, ptr noundef nonnull %b)
  %0 = load i32, ptr %a, align 4, !tbaa !5
  %cmp31 = icmp sgt i32 %0, 0
  %.pre60 = load i32, ptr %b, align 4, !tbaa !5
  br i1 %cmp31, label %for.cond1.preheader.lr.ph, label %for.cond21.preheader

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %1 = icmp sgt i32 %.pre60, 0
  br i1 %1, label %for.cond1.preheader, label %for.body49.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %for.end
  %2 = phi i32 [ %12, %for.end ], [ %0, %for.cond1.preheader.lr.ph ]
  %3 = phi i32 [ %13, %for.end ], [ %.pre60, %for.cond1.preheader.lr.ph ]
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.end ], [ 0, %for.cond1.preheader.lr.ph ]
  %cmp228 = icmp sgt i32 %3, 0
  br i1 %cmp228, label %for.body3.lr.ph, label %for.end

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %arrayidx13 = getelementptr inbounds nuw [8 x i32], ptr %Line, i64 0, i64 %indvars.iv46
  br label %for.body3

for.cond21.preheader:                             ; preds = %for.end, %entry
  %4 = phi i32 [ %.pre60, %entry ], [ %13, %for.end ]
  %5 = phi i32 [ %0, %entry ], [ %12, %for.end ]
  %cmp2236 = icmp sgt i32 %4, 0
  br i1 %cmp2236, label %for.cond25.preheader.lr.ph, label %for.cond47.preheader

for.cond25.preheader.lr.ph:                       ; preds = %for.cond21.preheader
  %cmp2633 = icmp sgt i32 %5, 0
  br i1 %cmp2633, label %for.cond25.preheader.us.preheader, label %if.then66

for.cond25.preheader.us.preheader:                ; preds = %for.cond25.preheader.lr.ph
  %wide.trip.count55 = zext nneg i32 %4 to i64
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %for.cond25.preheader.us

for.cond25.preheader.us:                          ; preds = %for.cond25.preheader.us.preheader, %for.cond25.for.end43_crit_edge.us
  %indvars.iv52 = phi i64 [ 0, %for.cond25.preheader.us.preheader ], [ %indvars.iv.next53, %for.cond25.for.end43_crit_edge.us ]
  %arrayidx35.us = getelementptr inbounds nuw [8 x i32], ptr %Row, i64 0, i64 %indvars.iv52
  br label %for.body27.us

for.body27.us:                                    ; preds = %for.cond25.preheader.us, %for.inc41.us
  %indvars.iv49 = phi i64 [ 0, %for.cond25.preheader.us ], [ %indvars.iv.next50, %for.inc41.us ]
  %t24.035.us = phi i32 [ 100, %for.cond25.preheader.us ], [ %t24.1.us, %for.inc41.us ]
  %arrayidx31.us = getelementptr inbounds nuw [8 x [8 x i32]], ptr %A, i64 0, i64 %indvars.iv49, i64 %indvars.iv52
  %6 = load i32, ptr %arrayidx31.us, align 4, !tbaa !5
  %cmp32.us = icmp slt i32 %6, %t24.035.us
  br i1 %cmp32.us, label %if.then33.us, label %for.inc41.us

if.then33.us:                                     ; preds = %for.body27.us
  %7 = trunc nuw nsw i64 %indvars.iv49 to i32
  store i32 %7, ptr %arrayidx35.us, align 4, !tbaa !5
  br label %for.inc41.us

for.inc41.us:                                     ; preds = %if.then33.us, %for.body27.us
  %t24.1.us = phi i32 [ %6, %if.then33.us ], [ %t24.035.us, %for.body27.us ]
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next50, %wide.trip.count
  br i1 %exitcond.not, label %for.cond25.for.end43_crit_edge.us, label %for.body27.us, !llvm.loop !9

for.cond25.for.end43_crit_edge.us:                ; preds = %for.inc41.us
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count55
  br i1 %exitcond56.not, label %for.cond47.preheader, label %for.cond25.preheader.us, !llvm.loop !12

for.body3:                                        ; preds = %for.body3.lr.ph, %for.inc
  %indvars.iv = phi i64 [ 0, %for.body3.lr.ph ], [ %indvars.iv.next, %for.inc ]
  %t.030 = phi i32 [ 0, %for.body3.lr.ph ], [ %t.1, %for.inc ]
  %arrayidx5 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %A, i64 0, i64 %indvars.iv46, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %8 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %cmp11 = icmp sgt i32 %8, %t.030
  br i1 %cmp11, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body3
  %9 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %9, ptr %arrayidx13, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body3, %if.then
  %t.1 = phi i32 [ %8, %if.then ], [ %t.030, %for.body3 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %10 = load i32, ptr %b, align 4, !tbaa !5
  %11 = sext i32 %10 to i64
  %cmp2 = icmp slt i64 %indvars.iv.next, %11
  br i1 %cmp2, label %for.body3, label %for.end.loopexit, !llvm.loop !13

for.end.loopexit:                                 ; preds = %for.inc
  %.pre = load i32, ptr %a, align 4, !tbaa !5
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond1.preheader
  %12 = phi i32 [ %.pre, %for.end.loopexit ], [ %2, %for.cond1.preheader ]
  %13 = phi i32 [ %10, %for.end.loopexit ], [ %3, %for.cond1.preheader ]
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %14 = sext i32 %12 to i64
  %cmp = icmp slt i64 %indvars.iv.next47, %14
  br i1 %cmp, label %for.cond1.preheader, label %for.cond21.preheader, !llvm.loop !14

for.cond47.preheader:                             ; preds = %for.cond25.for.end43_crit_edge.us, %for.cond21.preheader
  %cmp4838 = icmp sgt i32 %5, 0
  br i1 %cmp4838, label %for.body49.preheader, label %if.then66

for.body49.preheader:                             ; preds = %for.cond1.preheader.lr.ph, %for.cond47.preheader
  %.ph = phi i32 [ %0, %for.cond1.preheader.lr.ph ], [ %5, %for.cond47.preheader ]
  br label %for.body49

for.body49:                                       ; preds = %for.body49.preheader, %if.end61
  %15 = phi i32 [ %20, %if.end61 ], [ %.ph, %for.body49.preheader ]
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %if.end61 ], [ 0, %for.body49.preheader ]
  %f.039 = phi i32 [ %f.1, %if.end61 ], [ 0, %for.body49.preheader ]
  %arrayidx52 = getelementptr inbounds nuw [8 x i32], ptr %Line, i64 0, i64 %indvars.iv57
  %16 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %idxprom53 = sext i32 %16 to i64
  %arrayidx54 = getelementptr inbounds [8 x i32], ptr %Row, i64 0, i64 %idxprom53
  %17 = load i32, ptr %arrayidx54, align 4, !tbaa !5
  %18 = zext i32 %17 to i64
  %cmp55 = icmp eq i64 %indvars.iv57, %18
  br i1 %cmp55, label %if.then56, label %if.end61

if.then56:                                        ; preds = %for.body49
  %inc57 = add nsw i32 %f.039, 1
  %19 = trunc nuw nsw i64 %indvars.iv57 to i32
  %call60 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %19, i32 noundef %16)
  %.pre61 = load i32, ptr %a, align 4, !tbaa !5
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %for.body49
  %20 = phi i32 [ %.pre61, %if.then56 ], [ %15, %for.body49 ]
  %f.1 = phi i32 [ %inc57, %if.then56 ], [ %f.039, %for.body49 ]
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %21 = sext i32 %20 to i64
  %cmp48 = icmp slt i64 %indvars.iv.next58, %21
  br i1 %cmp48, label %for.body49, label %for.end64, !llvm.loop !16

for.end64:                                        ; preds = %if.end61
  %22 = icmp eq i32 %f.1, 0
  br i1 %22, label %if.then66, label %if.end68

if.then66:                                        ; preds = %for.cond25.preheader.lr.ph, %for.cond47.preheader, %for.end64
  %call67 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %for.end64
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %Row) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %Line) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %A) #5
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

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!14 = distinct !{!14, !10, !11, !15}
!15 = !{!"llvm.loop.unswitch.partial.disable"}
!16 = distinct !{!16, !10, !11}
