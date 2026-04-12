; ModuleID = '<stdin>'
source_filename = "/tmp/tmptc3sjsgf.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %a = alloca [1000 x [1000 x i32]], align 16
  %t = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4000000, ptr noundef nonnull align 16 %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %t) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %t)
  %.pre = load i32, ptr %t, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = phi i32 [ %2, %for.inc7 ], [ %.pre, %entry ]
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.inc7 ], [ 0, %entry ]
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv26, %1
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count37 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.inc
  %2 = phi i32 [ %.pre40, %for.inc ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv26, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre40 = load i32, ptr %t, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.end23, %for.cond10.preheader
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %for.end23 ], [ 0, %for.cond10.preheader ]
  %b.0 = phi i32 [ %b.2, %for.end23 ], [ 0, %for.cond10.preheader ]
  %x.0 = phi i32 [ %x.2, %for.end23 ], [ 0, %for.cond10.preheader ]
  %exitcond38.not = icmp eq i64 %indvars.iv33, %wide.trip.count37
  br i1 %exitcond38.not, label %for.end33, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond10
  %4 = trunc nuw nsw i64 %indvars.iv33 to i32
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc21
  %indvars.iv29 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next30, %for.inc21 ]
  %exitcond.not = icmp eq i64 %indvars.iv29, %wide.trip.count
  br i1 %exitcond.not, label %for.end23, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %arrayidx19 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv33, i64 %indvars.iv29
  %5 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %5, 0
  br i1 %cmp20, label %for.end23.split.loop.exit, label %for.inc21

for.inc21:                                        ; preds = %for.body15
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond13, !llvm.loop !13

for.end23.split.loop.exit:                        ; preds = %for.body15
  %6 = trunc nuw nsw i64 %indvars.iv29 to i32
  br label %for.end23

for.end23:                                        ; preds = %for.cond13, %for.end23.split.loop.exit
  %b.2 = phi i32 [ %6, %for.end23.split.loop.exit ], [ %b.0, %for.cond13 ]
  %x.2 = phi i32 [ %4, %for.end23.split.loop.exit ], [ %x.0, %for.cond13 ]
  %idxprom24 = zext nneg i32 %x.2 to i64
  %idxprom26 = zext nneg i32 %b.2 to i64
  %arrayidx27 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %a, i64 0, i64 %idxprom24, i64 %idxprom26
  %7 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %cmp28 = icmp eq i32 %7, 0
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br i1 %cmp28, label %for.end33, label %for.cond10, !llvm.loop !14

for.end33:                                        ; preds = %for.end23, %for.cond10
  %b.1 = phi i32 [ %b.0, %for.cond10 ], [ %b.2, %for.end23 ]
  %x.1 = phi i32 [ %x.0, %for.cond10 ], [ %x.2, %for.end23 ]
  %sub = add nsw i32 %0, -1
  br label %for.cond34

for.cond34:                                       ; preds = %for.end49, %for.end33
  %i.2 = phi i32 [ %sub, %for.end33 ], [ %dec58, %for.end49 ]
  %cmp35 = icmp sgt i32 %i.2, -1
  br i1 %cmp35, label %for.cond38.preheader, label %for.end59

for.cond38.preheader:                             ; preds = %for.cond34
  %idxprom41 = zext nneg i32 %i.2 to i64
  br label %for.cond38

for.cond38:                                       ; preds = %for.cond38.preheader, %for.inc48
  %j.2 = phi i32 [ %dec, %for.inc48 ], [ %sub, %for.cond38.preheader ]
  %cmp39 = icmp sgt i32 %j.2, -1
  br i1 %cmp39, label %for.body40, label %for.end49

for.body40:                                       ; preds = %for.cond38
  %idxprom43 = zext nneg i32 %j.2 to i64
  %arrayidx44 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %a, i64 0, i64 %idxprom41, i64 %idxprom43
  %8 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %cmp45 = icmp eq i32 %8, 0
  br i1 %cmp45, label %for.end59, label %for.inc48

for.inc48:                                        ; preds = %for.body40
  %dec = add nsw i32 %j.2, -1
  br label %for.cond38, !llvm.loop !15

for.end49:                                        ; preds = %for.cond38
  %.pre39 = load i32, ptr %a, align 16, !tbaa !5
  %9 = icmp eq i32 %.pre39, 0
  %dec58 = add nsw i32 %i.2, -1
  br i1 %9, label %for.end59, label %for.cond34, !llvm.loop !16

for.end59:                                        ; preds = %for.end49, %for.cond34, %for.body40
  %m.1 = phi i32 [ %i.2, %for.body40 ], [ 0, %for.cond34 ], [ 0, %for.end49 ]
  %n.1 = phi i32 [ %j.2, %for.body40 ], [ 0, %for.cond34 ], [ 0, %for.end49 ]
  %10 = xor i32 %x.1, -1
  %sub61 = add i32 %m.1, %10
  %11 = xor i32 %b.1, -1
  %sub63 = add i32 %n.1, %11
  %mul = mul nsw i32 %sub63, %sub61
  %call64 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %t) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4000000, ptr noundef nonnull %a) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind }
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
!16 = distinct !{!16, !10, !11}
