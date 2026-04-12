; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_4_tojv9.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@H = dso_local global [1000 x i32] zeroinitializer, align 16
@D = dso_local local_unnamed_addr global [1000 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z4sorti(i32 noundef %i) local_unnamed_addr #0 {
entry:
  %0 = add i32 %i, 1
  %smax = call i32 @llvm.smax.i32(i32 %i, i32 -1)
  %1 = add i32 %smax, 1
  %wide.trip.count5 = zext i32 %1 to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc18 ], [ 0, %entry ]
  %exitcond6 = icmp eq i64 %indvars.iv, %wide.trip.count5
  br i1 %exitcond6, label %for.end20, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond
  %2 = trunc nuw nsw i64 %indvars.iv to i32
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv1 = phi i64 [ %indvars.iv, %for.cond1.preheader ], [ %indvars.iv.next2, %for.body3 ]
  %m.0 = phi i32 [ %2, %for.cond1.preheader ], [ %spec.select, %for.body3 ]
  %exitcond = icmp eq i64 %indvars.iv1, %wide.trip.count
  br i1 %exitcond, label %for.end, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %idxprom = sext i32 %m.0 to i64
  %arrayidx = getelementptr inbounds [1000 x i32], ptr @D, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  %arrayidx5 = getelementptr inbounds nuw [1000 x i32], ptr @D, i64 0, i64 %indvars.iv1
  %4 = load i32, ptr %arrayidx5, align 4, !tbaa !5, !invariant.load !9
  %cmp6 = icmp sgt i32 %3, %4
  %5 = trunc nuw nsw i64 %indvars.iv1 to i32
  %spec.select = select i1 %cmp6, i32 %5, i32 %m.0
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1
  br label %for.cond1, !llvm.loop !10

for.end:                                          ; preds = %for.cond1
  %6 = zext i32 %m.0 to i64
  %cmp7.not = icmp eq i64 %indvars.iv, %6
  br i1 %cmp7.not, label %for.inc18, label %if.then8

if.then8:                                         ; preds = %for.end
  %arrayidx10 = getelementptr inbounds nuw [1000 x i32], ptr @D, i64 0, i64 %indvars.iv
  %7 = load i32, ptr %arrayidx10, align 4, !tbaa !5, !invariant.load !9
  %idxprom11 = sext i32 %m.0 to i64
  %arrayidx12 = getelementptr inbounds [1000 x i32], ptr @D, i64 0, i64 %idxprom11
  %8 = load i32, ptr %arrayidx12, align 4, !tbaa !5, !invariant.load !9
  store i32 %8, ptr %arrayidx10, align 4, !tbaa !5
  store i32 %7, ptr %arrayidx12, align 4, !tbaa !5
  br label %for.inc18

for.inc18:                                        ; preds = %for.end, %if.then8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !13

for.end20:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 21
  br i1 %exitcond.not, label %while.cond, label %for.inc

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x i32], ptr @D, i64 0, i64 %indvars.iv
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !14

while.cond:                                       ; preds = %for.cond, %while.cond
  %indvars.iv13 = phi i32 [ %indvars.iv.next14, %while.cond ], [ 0, %for.cond ]
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %while.cond ], [ 0, %for.cond ]
  %phiofops = phi i64 [ %indvars.iv4, %while.cond ], [ -1, %for.cond ]
  %arrayidx2 = getelementptr inbounds nuw [1000 x i32], ptr @H, i64 0, i64 %indvars.iv4
  %call = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx2)
  %cmp3.not = icmp eq i32 %call, -1
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  %indvars.iv.next14 = add nuw i32 %indvars.iv13, 1
  br i1 %cmp3.not, label %while.end, label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  %0 = trunc nuw nsw i64 %indvars.iv4 to i32
  %sext = shl i64 %phiofops, 32
  %idxprom5 = ashr exact i64 %sext, 32
  %arrayidx6 = getelementptr inbounds [1000 x i32], ptr @D, i64 0, i64 %idxprom5
  store i32 1, ptr %arrayidx6, align 4, !tbaa !5
  %sub7 = add nsw i32 %0, -2
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc29, %while.end
  %j.0 = phi i32 [ %sub7, %while.end ], [ %dec, %for.inc29 ]
  %1 = zext i32 %j.0 to i64
  %cmp9 = icmp sgt i32 %j.0, -1
  br i1 %cmp9, label %while.cond11.preheader, label %for.cond31.preheader

for.cond31.preheader:                             ; preds = %for.cond8
  %wide.trip.count = zext i32 %indvars.iv13 to i64
  br label %for.cond31

while.cond11.preheader:                           ; preds = %for.cond8
  %arrayidx15 = getelementptr inbounds nuw [1000 x i32], ptr @H, i64 0, i64 %1
  br label %while.cond11

while.cond11:                                     ; preds = %while.cond11.preheader, %if.end
  %indvars.iv7 = phi i64 [ %1, %while.cond11.preheader ], [ %indvars.iv.next8, %if.end ]
  %n.0 = phi i32 [ 0, %while.cond11.preheader ], [ %n.1, %if.end ]
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %2 = trunc nuw i64 %indvars.iv.next8 to i32
  %cmp12 = icmp slt i32 %2, %0
  br i1 %cmp12, label %while.body13, label %for.inc29

while.body13:                                     ; preds = %while.cond11
  %3 = load i32, ptr %arrayidx15, align 4, !tbaa !5, !invariant.load !9
  %arrayidx17 = getelementptr inbounds nuw [1000 x i32], ptr @H, i64 0, i64 %indvars.iv.next8
  %4 = load i32, ptr %arrayidx17, align 4, !tbaa !5, !invariant.load !9
  %cmp18.not = icmp slt i32 %3, %4
  br i1 %cmp18.not, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body13
  %arrayidx20 = getelementptr inbounds nuw [1000 x i32], ptr @D, i64 0, i64 %indvars.iv.next8
  %5 = load i32, ptr %arrayidx20, align 4, !tbaa !5, !invariant.load !9
  %spec.select = tail call i32 @llvm.smax.i32(i32 %5, i32 %n.0)
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %while.body13
  %n.1 = phi i32 [ %n.0, %while.body13 ], [ %spec.select, %land.lhs.true ]
  br label %while.cond11, !llvm.loop !16

for.inc29:                                        ; preds = %while.cond11
  %add26 = add nuw nsw i32 %n.0, 1
  %arrayidx28 = getelementptr inbounds nuw [1000 x i32], ptr @D, i64 0, i64 %1
  store i32 %add26, ptr %arrayidx28, align 4, !tbaa !5
  %dec = add nsw i32 %j.0, -1
  br label %for.cond8, !llvm.loop !17

for.cond31:                                       ; preds = %for.cond31.preheader, %for.body33
  %indvars.iv10 = phi i64 [ 0, %for.cond31.preheader ], [ %indvars.iv.next11, %for.body33 ]
  %n.2 = phi i32 [ 0, %for.cond31.preheader ], [ %spec.select2, %for.body33 ]
  %exitcond15.not = icmp eq i64 %indvars.iv10, %wide.trip.count
  br i1 %exitcond15.not, label %for.end43, label %for.body33

for.body33:                                       ; preds = %for.cond31
  %arrayidx35 = getelementptr inbounds nuw [1000 x i32], ptr @D, i64 0, i64 %indvars.iv10
  %6 = load i32, ptr %arrayidx35, align 4, !tbaa !5, !invariant.load !9
  %spec.select2 = tail call i32 @llvm.smax.i32(i32 %6, i32 %n.2)
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %for.cond31, !llvm.loop !18

for.end43:                                        ; preds = %for.cond31
  %call44 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %n.2)
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

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
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12}
