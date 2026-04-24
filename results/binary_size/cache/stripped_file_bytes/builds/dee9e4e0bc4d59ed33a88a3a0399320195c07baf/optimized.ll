; ModuleID = '<stdin>'
source_filename = "/tmp/tmp34chhjcq.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z4xiaoPA100_ii(ptr noundef captures(none) %a, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %smax = tail call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count59 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc31, %entry
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %for.inc31 ], [ 0, %entry ]
  %exitcond60.not = icmp eq i64 %indvars.iv56, %wide.trip.count59
  br i1 %exitcond60.not, label %for.cond34.preheader, label %for.body

for.cond34.preheader:                             ; preds = %for.cond
  %wide.trip.count64 = zext i32 %n to i64
  br label %for.cond34

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv56
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.body4, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.body ]
  %min.0 = phi i32 [ %spec.select, %for.body4 ], [ %0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %arrayidx8 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv56, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.end:                                          ; preds = %for.cond2
  %cmp14 = icmp sgt i32 %min.0, 0
  br i1 %cmp14, label %for.cond16, label %for.inc31

for.cond16:                                       ; preds = %for.end, %for.body18
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %for.body18 ], [ 0, %for.end ]
  %exitcond55.not = icmp eq i64 %indvars.iv51, %wide.trip.count
  br i1 %exitcond55.not, label %for.inc31, label %for.body18

for.body18:                                       ; preds = %for.cond16
  %arrayidx22 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv56, i64 %indvars.iv51
  %2 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx22, align 4, !tbaa !5
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  br label %for.cond16, !llvm.loop !12

for.inc31:                                        ; preds = %for.cond16, %for.end
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  br label %for.cond, !llvm.loop !13

for.cond34:                                       ; preds = %for.cond34.preheader, %for.inc75
  %indvars.iv71 = phi i64 [ 0, %for.cond34.preheader ], [ %indvars.iv.next72, %for.inc75 ]
  %exitcond75.not = icmp eq i64 %indvars.iv71, %wide.trip.count59
  br i1 %exitcond75.not, label %for.end77, label %for.body36

for.body36:                                       ; preds = %for.cond34
  %arrayidx39 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv71
  %3 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  br label %for.cond40

for.cond40:                                       ; preds = %for.body42, %for.body36
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %for.body42 ], [ 0, %for.body36 ]
  %min.2 = phi i32 [ %spec.select49, %for.body42 ], [ %3, %for.body36 ]
  %exitcond65.not = icmp eq i64 %indvars.iv61, %wide.trip.count64
  br i1 %exitcond65.not, label %for.end56, label %for.body42

for.body42:                                       ; preds = %for.cond40
  %arrayidx46 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv61, i64 %indvars.iv71
  %4 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %spec.select49 = tail call i32 @llvm.smin.i32(i32 %4, i32 %min.2)
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  br label %for.cond40, !llvm.loop !14

for.end56:                                        ; preds = %for.cond40
  %cmp57 = icmp sgt i32 %min.2, 0
  br i1 %cmp57, label %for.cond59, label %for.inc75

for.cond59:                                       ; preds = %for.end56, %for.body61
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %for.body61 ], [ 0, %for.end56 ]
  %exitcond70.not = icmp eq i64 %indvars.iv66, %wide.trip.count64
  br i1 %exitcond70.not, label %for.inc75, label %for.body61

for.body61:                                       ; preds = %for.cond59
  %arrayidx65 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv66, i64 %indvars.iv71
  %5 = load i32, ptr %arrayidx65, align 4, !tbaa !5
  %sub66 = sub nsw i32 %5, %min.2
  store i32 %sub66, ptr %arrayidx65, align 4, !tbaa !5
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  br label %for.cond59, !llvm.loop !15

for.inc75:                                        ; preds = %for.cond59, %for.end56
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  br label %for.cond34, !llvm.loop !16

for.end77:                                        ; preds = %for.cond34
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z4movePA100_ii(ptr noundef captures(none) %a, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %smax = tail call i32 @llvm.smax.i32(i32 %n, i32 2)
  %smax28 = tail call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count29 = zext nneg i32 %smax28 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %for.inc10 ], [ 0, %entry ]
  %exitcond30.not = icmp eq i64 %indvars.iv25, %wide.trip.count29
  br i1 %exitcond30.not, label %for.cond13.preheader, label %for.cond1

for.cond13.preheader:                             ; preds = %for.cond
  %invariant.gep = getelementptr i8, ptr %a, i64 -400
  %wide.trip.count34 = zext nneg i32 %smax to i64
  br label %for.cond13

for.cond1:                                        ; preds = %for.cond, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 2, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc10, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv25, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %1 = add nsw i64 %indvars.iv, -1
  %arrayidx9 = getelementptr inbounds [100 x i32], ptr %a, i64 %indvars.iv25, i64 %1
  store i32 %0, ptr %arrayidx9, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !17

for.inc10:                                        ; preds = %for.cond1
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond, !llvm.loop !18

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc31
  %indvars.iv36 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next37, %for.inc31 ]
  %exitcond40.not = icmp eq i64 %indvars.iv36, %wide.trip.count29
  br i1 %exitcond40.not, label %for.end33, label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %for.cond13
  %invariant.gep21 = getelementptr [100 x i32], ptr %invariant.gep, i64 0, i64 %indvars.iv36
  br label %for.cond16

for.cond16:                                       ; preds = %for.cond16.preheader, %for.body18
  %indvars.iv31 = phi i64 [ 2, %for.cond16.preheader ], [ %indvars.iv.next32, %for.body18 ]
  %exitcond35.not = icmp eq i64 %indvars.iv31, %wide.trip.count34
  br i1 %exitcond35.not, label %for.inc31, label %for.body18

for.body18:                                       ; preds = %for.cond16
  %arrayidx22 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv31, i64 %indvars.iv36
  %2 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %gep22 = getelementptr [100 x i32], ptr %invariant.gep21, i64 %indvars.iv31
  store i32 %2, ptr %gep22, align 4, !tbaa !5
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  br label %for.cond16, !llvm.loop !19

for.inc31:                                        ; preds = %for.cond16
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  br label %for.cond13, !llvm.loop !20

for.end33:                                        ; preds = %for.cond13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_Z5countPA100_iii(ptr noundef captures(none) %a, i32 noundef %n, i32 noundef %s) local_unnamed_addr #0 {
entry:
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %tailrecurse

tailrecurse:                                      ; preds = %if.else, %entry
  %n.tr = phi i32 [ %n, %entry ], [ %sub, %if.else ]
  %s.tr = phi i32 [ %s, %entry ], [ %add, %if.else ]
  %cmp = icmp eq i32 %n.tr, 1
  br i1 %cmp, label %return, label %if.else

if.else:                                          ; preds = %tailrecurse
  tail call void @_Z4xiaoPA100_ii(ptr noundef %a, i32 noundef %n.tr)
  %0 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  %add = add nsw i32 %0, %s.tr
  tail call void @_Z4movePA100_ii(ptr noundef %a, i32 noundef %n.tr)
  %sub = add nsw i32 %n.tr, -1
  br label %tailrecurse

return:                                           ; preds = %tailrecurse
  ret i32 %s.tr
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %for.end10, %entry
  %t.0 = phi i32 [ %0, %entry ], [ %dec, %for.end10 ]
  %cmp = icmp sgt i32 %t.0, 0
  br i1 %cmp, label %for.cond.preheader, label %while.end

for.cond.preheader:                               ; preds = %while.cond
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.inc8
  %1 = phi i32 [ %.pre, %for.cond.preheader ], [ %3, %for.inc8 ]
  %indvars.iv7 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next8, %for.inc8 ]
  %2 = sext i32 %1 to i64
  %cmp1 = icmp slt i64 %indvars.iv7, %2
  br i1 %cmp1, label %for.cond2, label %for.end10

for.cond2:                                        ; preds = %for.cond, %for.body4
  %3 = phi i32 [ %.pre10, %for.body4 ], [ %1, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond ]
  %4 = sext i32 %3 to i64
  %cmp3 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp3, label %for.body4, label %for.inc8

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv7, i64 %indvars.iv
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre10 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !21

for.inc8:                                         ; preds = %for.cond2
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br label %for.cond, !llvm.loop !22

for.end10:                                        ; preds = %for.cond
  %call11 = call noundef i32 @_Z5countPA100_iii(ptr noundef nonnull %a, i32 noundef %1, i32 noundef 0)
  %call12 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %call11)
  %dec = add nsw i32 %t.0, -1
  br label %while.cond, !llvm.loop !23

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
