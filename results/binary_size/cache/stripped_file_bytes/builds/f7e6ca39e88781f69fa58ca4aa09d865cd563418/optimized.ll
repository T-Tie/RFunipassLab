; ModuleID = '<stdin>'
source_filename = "/tmp/tmp3_1lbbt6.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [1000 x [1000 x i32]], align 16
  %m = alloca [100 x i32], align 16
  %k = alloca [100 x i32], align 16
  %p = alloca [100 x i32], align 16
  %b = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 4000000, ptr nonnull %a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4000000) %a, i8 0, i64 4000000, i1 false)
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %m) #5
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %k) #5
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %p) #5
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %b) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp29 = icmp sgt i32 %0, 0
  br i1 %cmp29, label %for.cond1.preheader, label %for.end54

for.cond1.preheader:                              ; preds = %entry, %for.inc7
  %1 = phi i32 [ %7, %for.inc7 ], [ %0, %entry ]
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %for.inc7 ], [ 0, %entry ]
  %cmp227 = icmp sgt i32 %1, 0
  br i1 %cmp227, label %for.body3, label %for.cond1.preheader.for.inc7_crit_edge

for.cond1.preheader.for.inc7_crit_edge:           ; preds = %for.cond1.preheader
  %.pre63 = sext i32 %1 to i64
  br label %for.inc7

for.cond10.preheader:                             ; preds = %for.inc7
  %cmp1133 = icmp sgt i32 %7, 0
  br i1 %cmp1133, label %for.cond13.preheader.us.preheader, label %for.end54

for.cond13.preheader.us.preheader:                ; preds = %for.cond10.preheader
  %wide.trip.count54 = zext nneg i32 %7 to i64
  br label %for.cond13.preheader.us

for.cond13.preheader.us:                          ; preds = %for.cond13.preheader.us.preheader, %for.inc28.us
  %indvars.iv51 = phi i64 [ 0, %for.cond13.preheader.us.preheader ], [ %indvars.iv.next52, %for.inc28.us ]
  %s.036.us = phi i32 [ 0, %for.cond13.preheader.us.preheader ], [ %s.1.us, %for.inc28.us ]
  br label %for.body15.us

for.body15.us:                                    ; preds = %for.cond13.preheader.us, %for.inc25.us
  %indvars.iv48 = phi i64 [ 0, %for.cond13.preheader.us ], [ %indvars.iv.next49, %for.inc25.us ]
  %arrayidx19.us = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv51, i64 %indvars.iv48
  %2 = load i32, ptr %arrayidx19.us, align 4, !tbaa !5
  %cmp20.us = icmp eq i32 %2, 0
  br i1 %cmp20.us, label %if.then.us, label %for.inc25.us

for.inc25.us:                                     ; preds = %for.body15.us
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next49, %wide.trip.count54
  br i1 %exitcond.not, label %for.inc28.us, label %for.body15.us, !llvm.loop !9

if.then.us:                                       ; preds = %for.body15.us
  %3 = trunc nuw nsw i64 %indvars.iv48 to i32
  %add.us = add nsw i32 %s.036.us, 1
  %idxprom21.us = sext i32 %add.us to i64
  %arrayidx22.us = getelementptr inbounds [100 x i32], ptr %m, i64 0, i64 %idxprom21.us
  %4 = trunc nuw nsw i64 %indvars.iv51 to i32
  store i32 %4, ptr %arrayidx22.us, align 4, !tbaa !5
  %arrayidx24.us = getelementptr inbounds [100 x i32], ptr %k, i64 0, i64 %idxprom21.us
  store i32 %3, ptr %arrayidx24.us, align 4, !tbaa !5
  br label %for.inc28.us

for.inc28.us:                                     ; preds = %for.inc25.us, %if.then.us
  %s.1.us = phi i32 [ %add.us, %if.then.us ], [ %s.036.us, %for.inc25.us ]
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %exitcond55.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count54
  br i1 %exitcond55.not, label %for.cond31.preheader, label %for.cond13.preheader.us, !llvm.loop !12

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond1.preheader ]
  %arrayidx5 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv45, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %cmp2 = icmp slt i64 %indvars.iv.next, %6
  br i1 %cmp2, label %for.body3, label %for.inc7, !llvm.loop !13

for.inc7:                                         ; preds = %for.body3, %for.cond1.preheader.for.inc7_crit_edge
  %.pre-phi = phi i64 [ %.pre63, %for.cond1.preheader.for.inc7_crit_edge ], [ %6, %for.body3 ]
  %7 = phi i32 [ %1, %for.cond1.preheader.for.inc7_crit_edge ], [ %5, %for.body3 ]
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %cmp = icmp slt i64 %indvars.iv.next46, %.pre-phi
  br i1 %cmp, label %for.cond1.preheader, label %for.cond10.preheader, !llvm.loop !14

for.cond31.preheader:                             ; preds = %for.inc28.us
  %cmp3238.not = icmp eq i32 %7, 1
  br i1 %cmp3238.not, label %for.end54, label %for.cond35.preheader.preheader

for.cond35.preheader.preheader:                   ; preds = %for.cond31.preheader
  %8 = zext nneg i32 %7 to i64
  br label %for.cond35.preheader

for.cond35.preheader:                             ; preds = %for.cond35.preheader.preheader, %for.inc52
  %indvars.iv59 = phi i64 [ %8, %for.cond35.preheader.preheader ], [ %indvars.iv.next60, %for.inc52 ]
  %g.039 = phi i32 [ 0, %for.cond35.preheader.preheader ], [ %g.1, %for.inc52 ]
  %indvars.iv.next60 = add nsw i64 %indvars.iv59, -1
  br label %for.cond35

for.cond35:                                       ; preds = %for.cond35.preheader, %for.body37
  %indvars.iv56 = phi i64 [ %8, %for.cond35.preheader ], [ %indvars.iv.next57, %for.body37 ]
  %cmp36 = icmp sgt i64 %indvars.iv56, 1
  br i1 %cmp36, label %for.body37, label %for.inc52

for.body37:                                       ; preds = %for.cond35
  %indvars.iv.next57 = add nsw i64 %indvars.iv56, -1
  %arrayidx41 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv.next60, i64 %indvars.iv.next57
  %9 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %cmp42 = icmp eq i32 %9, 0
  br i1 %cmp42, label %if.then43, label %for.cond35, !llvm.loop !16

if.then43:                                        ; preds = %for.body37
  %10 = trunc nuw nsw i64 %indvars.iv.next57 to i32
  %add44 = add nsw i32 %g.039, 1
  %idxprom45 = sext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds [100 x i32], ptr %p, i64 0, i64 %idxprom45
  %11 = trunc nuw nsw i64 %indvars.iv.next60 to i32
  store i32 %11, ptr %arrayidx46, align 4, !tbaa !5
  %arrayidx48 = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 %idxprom45
  store i32 %10, ptr %arrayidx48, align 4, !tbaa !5
  br label %for.inc52

for.inc52:                                        ; preds = %for.cond35, %if.then43
  %g.1 = phi i32 [ %add44, %if.then43 ], [ %g.039, %for.cond35 ]
  %cmp32 = icmp sgt i64 %indvars.iv59, 2
  br i1 %cmp32, label %for.cond35.preheader, label %for.end54.loopexit, !llvm.loop !17

for.end54.loopexit:                               ; preds = %for.inc52
  %arrayidx55.phi.trans.insert = getelementptr inbounds nuw i8, ptr %p, i64 4
  %.pre = load i32, ptr %arrayidx55.phi.trans.insert, align 4, !tbaa !5
  %arrayidx59.phi.trans.insert = getelementptr inbounds nuw i8, ptr %b, i64 4
  %.pre62 = load i32, ptr %arrayidx59.phi.trans.insert, align 4, !tbaa !5
  br label %for.end54

for.end54:                                        ; preds = %entry, %for.cond10.preheader, %for.end54.loopexit, %for.cond31.preheader
  %12 = phi i32 [ %.pre62, %for.end54.loopexit ], [ undef, %for.cond31.preheader ], [ undef, %for.cond10.preheader ], [ undef, %entry ]
  %13 = phi i32 [ %.pre, %for.end54.loopexit ], [ undef, %for.cond31.preheader ], [ undef, %for.cond10.preheader ], [ undef, %entry ]
  %arrayidx56 = getelementptr inbounds nuw i8, ptr %m, i64 4
  %14 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %15 = xor i32 %14, -1
  %sub58 = add i32 %13, %15
  %arrayidx60 = getelementptr inbounds nuw i8, ptr %k, i64 4
  %16 = load i32, ptr %arrayidx60, align 4, !tbaa !5
  %17 = xor i32 %16, -1
  %sub62 = add i32 %12, %17
  %mul = mul nsw i32 %sub62, %sub58
  %call63 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %p) #5
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %k) #5
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %m) #5
  call void @llvm.lifetime.end.p0(i64 4000000, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

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
!17 = distinct !{!17, !10, !11}
