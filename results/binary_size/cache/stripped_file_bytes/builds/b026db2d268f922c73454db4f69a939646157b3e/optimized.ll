; ModuleID = '<stdin>'
source_filename = "/tmp/tmpyn2cnzjd.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %s = alloca [300 x i8], align 16
  %z = alloca [300 x i8], align 16
  %h = alloca [300 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %s) #6
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %z) #6
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %h) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %s)
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %z)
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %h)
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #7
  %conv = trunc i64 %call6 to i32
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %z) #7
  %conv9 = trunc i64 %call8 to i32
  %call11 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %h) #7
  %conv12 = trunc i64 %call11 to i32
  %cmp.not38 = icmp slt i32 %conv, %conv9
  br i1 %cmp.not38, label %for.cond67.preheader, label %for.cond13.preheader.lr.ph

for.cond13.preheader.lr.ph:                       ; preds = %entry
  %cmp1435 = icmp sgt i32 %conv9, 0
  br i1 %cmp1435, label %for.cond13.preheader.us.preheader, label %for.cond13.preheader.lr.ph.split

for.cond13.preheader.us.preheader:                ; preds = %for.cond13.preheader.lr.ph
  %0 = add i64 %call6, 1
  %1 = sub i64 %0, %call8
  %wide.trip.count60 = and i64 %1, 4294967295
  %wide.trip.count = and i64 %call8, 2147483647
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 4
  %n.vec = and i64 %call8, 2147483644
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br label %for.cond13.preheader.us

for.cond13.preheader.us:                          ; preds = %for.cond13.preheader.us.preheader, %for.inc62.us
  %indvars.iv57 = phi i64 [ 0, %for.cond13.preheader.us.preheader ], [ %indvars.iv.next58, %for.inc62.us ]
  br i1 %min.iters.check, label %for.body15.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond13.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond13.preheader.us ]
  %vec.phi = phi <4 x i32> [ %7, %vector.body ], [ zeroinitializer, %for.cond13.preheader.us ]
  %2 = getelementptr inbounds nuw [300 x i8], ptr %z, i64 0, i64 %index
  %wide.load = load <4 x i8>, ptr %2, align 4, !tbaa !5
  %3 = add nuw nsw i64 %index, %indvars.iv57
  %4 = getelementptr inbounds nuw [300 x i8], ptr %s, i64 0, i64 %3
  %wide.load87 = load <4 x i8>, ptr %4, align 1, !tbaa !5
  %5 = icmp eq <4 x i8> %wide.load, %wide.load87
  %6 = zext <4 x i1> %5 to <4 x i32>
  %7 = add <4 x i32> %vec.phi, %6
  %index.next = add nuw i64 %index, 4
  %8 = icmp eq i64 %index.next, %n.vec
  br i1 %8, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %9 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %7)
  br i1 %cmp.n, label %for.cond13.for.end_crit_edge.us, label %for.body15.us.preheader

for.body15.us.preheader:                          ; preds = %for.cond13.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.cond13.preheader.us ], [ %n.vec, %middle.block ]
  %e.037.us.ph = phi i32 [ 0, %for.cond13.preheader.us ], [ %9, %middle.block ]
  br label %for.body15.us

for.inc62.us:                                     ; preds = %for.cond13.for.end_crit_edge.us
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %exitcond61.not = icmp eq i64 %indvars.iv.next58, %wide.trip.count60
  br i1 %exitcond61.not, label %for.cond67.preheader, label %for.cond13.preheader.us, !llvm.loop !13

for.body15.us:                                    ; preds = %for.body15.us.preheader, %for.body15.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body15.us ], [ %indvars.iv.ph, %for.body15.us.preheader ]
  %e.037.us = phi i32 [ %spec.select.us, %for.body15.us ], [ %e.037.us.ph, %for.body15.us.preheader ]
  %arrayidx.us = getelementptr inbounds nuw [300 x i8], ptr %z, i64 0, i64 %indvars.iv
  %10 = load i8, ptr %arrayidx.us, align 1, !tbaa !5
  %11 = add nuw nsw i64 %indvars.iv, %indvars.iv57
  %arrayidx18.us = getelementptr inbounds nuw [300 x i8], ptr %s, i64 0, i64 %11
  %12 = load i8, ptr %arrayidx18.us, align 1, !tbaa !5
  %cmp20.us = icmp eq i8 %10, %12
  %inc.us = zext i1 %cmp20.us to i32
  %spec.select.us = add nuw nsw i32 %e.037.us, %inc.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond13.for.end_crit_edge.us, label %for.body15.us, !llvm.loop !14

for.cond13.for.end_crit_edge.us:                  ; preds = %for.body15.us, %middle.block
  %spec.select.us.lcssa = phi i32 [ %9, %middle.block ], [ %spec.select.us, %for.body15.us ]
  %cmp22.us = icmp eq i32 %spec.select.us.lcssa, %conv9
  br i1 %cmp22.us, label %for.cond24.preheader, label %for.inc62.us

for.cond13.preheader.lr.ph.split:                 ; preds = %for.cond13.preheader.lr.ph
  %cmp22 = icmp eq i32 %conv9, 0
  br i1 %cmp22, label %for.cond34.preheader, label %for.cond67.preheader

for.cond67.preheader:                             ; preds = %for.inc62.us, %for.cond13.preheader.lr.ph.split, %entry
  %cmp6850 = icmp sgt i32 %conv, 0
  br i1 %cmp6850, label %for.body69.preheader, label %if.end77

for.body69.preheader:                             ; preds = %for.cond67.preheader
  %wide.trip.count78 = and i64 %call6, 2147483647
  br label %for.body69

for.cond24.preheader:                             ; preds = %for.cond13.for.end_crit_edge.us
  %13 = trunc nuw nsw i64 %indvars.iv57 to i32
  %cmp2544.not = icmp eq i64 %indvars.iv57, 0
  br i1 %cmp2544.not, label %for.cond34.preheader, label %for.body26.preheader

for.body26.preheader:                             ; preds = %for.cond24.preheader
  %wide.trip.count65 = and i64 %indvars.iv57, 4294967295
  br label %for.body26

for.cond34.preheader:                             ; preds = %for.body26, %for.cond13.preheader.lr.ph.split, %for.cond24.preheader
  %.us-phi82 = phi i32 [ 0, %for.cond24.preheader ], [ 0, %for.cond13.preheader.lr.ph.split ], [ %13, %for.body26 ]
  %cmp3546 = icmp sgt i32 %conv12, 0
  br i1 %cmp3546, label %for.body36.preheader, label %for.end43

for.body36.preheader:                             ; preds = %for.cond34.preheader
  %wide.trip.count70 = and i64 %call11, 2147483647
  br label %for.body36

for.body26:                                       ; preds = %for.body26.preheader, %for.body26
  %indvars.iv62 = phi i64 [ 0, %for.body26.preheader ], [ %indvars.iv.next63, %for.body26 ]
  %arrayidx28 = getelementptr inbounds nuw [300 x i8], ptr %s, i64 0, i64 %indvars.iv62
  %14 = load i8, ptr %arrayidx28, align 1, !tbaa !5
  %conv29 = sext i8 %14 to i32
  %putchar32 = call i32 @putchar(i32 %conv29)
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  %exitcond66.not = icmp eq i64 %indvars.iv.next63, %wide.trip.count65
  br i1 %exitcond66.not, label %for.cond34.preheader, label %for.body26, !llvm.loop !15

for.body36:                                       ; preds = %for.body36.preheader, %for.body36
  %indvars.iv67 = phi i64 [ 0, %for.body36.preheader ], [ %indvars.iv.next68, %for.body36 ]
  %arrayidx38 = getelementptr inbounds nuw [300 x i8], ptr %h, i64 0, i64 %indvars.iv67
  %15 = load i8, ptr %arrayidx38, align 1, !tbaa !5
  %conv39 = sext i8 %15 to i32
  %putchar31 = call i32 @putchar(i32 %conv39)
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1
  %exitcond71.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count70
  br i1 %exitcond71.not, label %for.end43, label %for.body36, !llvm.loop !16

for.end43:                                        ; preds = %for.body36, %for.cond34.preheader
  %add44 = add nsw i32 %.us-phi82, %conv9
  %sub45 = add nsw i32 %conv, -1
  %cmp46 = icmp slt i32 %add44, %sub45
  %cmp5048 = icmp slt i32 %add44, %conv
  %or.cond = and i1 %cmp46, %cmp5048
  br i1 %or.cond, label %for.body51.preheader, label %if.end77

for.body51.preheader:                             ; preds = %for.end43
  %16 = sext i32 %add44 to i64
  %sext = shl i64 %call6, 32
  %17 = ashr exact i64 %sext, 32
  br label %for.body51

for.body51:                                       ; preds = %for.body51.preheader, %for.body51
  %indvars.iv72 = phi i64 [ %16, %for.body51.preheader ], [ %indvars.iv.next73, %for.body51 ]
  %arrayidx53 = getelementptr inbounds [300 x i8], ptr %s, i64 0, i64 %indvars.iv72
  %18 = load i8, ptr %arrayidx53, align 1, !tbaa !5
  %conv54 = sext i8 %18 to i32
  %putchar30 = call i32 @putchar(i32 %conv54)
  %indvars.iv.next73 = add nsw i64 %indvars.iv72, 1
  %cmp50 = icmp slt i64 %indvars.iv.next73, %17
  br i1 %cmp50, label %for.body51, label %if.end77, !llvm.loop !17

for.body69:                                       ; preds = %for.body69.preheader, %for.body69
  %indvars.iv75 = phi i64 [ 0, %for.body69.preheader ], [ %indvars.iv.next76, %for.body69 ]
  %arrayidx71 = getelementptr inbounds nuw [300 x i8], ptr %s, i64 0, i64 %indvars.iv75
  %19 = load i8, ptr %arrayidx71, align 1, !tbaa !5
  %conv72 = sext i8 %19 to i32
  %putchar = call i32 @putchar(i32 %conv72)
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count78
  br i1 %exitcond79.not, label %if.end77, label %for.body69, !llvm.loop !18

if.end77:                                         ; preds = %for.body51, %for.body69, %for.cond67.preheader, %for.end43
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %h) #6
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %z) #6
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %s) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10, !11, !12}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !9, !10}
!14 = distinct !{!14, !9, !10, !11}
!15 = distinct !{!15, !9, !10}
!16 = distinct !{!16, !9, !10}
!17 = distinct !{!17, !9, !10}
!18 = distinct !{!18, !9, !10}
