; ModuleID = '<stdin>'
source_filename = "/tmp/tmpdv3iv3rn.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_Z3calPA120_ii(ptr nofree noundef captures(none) %matrix, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %arrayidx70 = getelementptr inbounds nuw i8, ptr %matrix, i64 484
  %invariant.gep = getelementptr inbounds nuw i8, ptr %matrix, i64 480
  %0 = add i32 %n, -1
  %1 = zext i32 %0 to i64
  %2 = sext i32 %n to i64
  br label %tailrecurse

tailrecurse:                                      ; preds = %for.end114, %entry
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %for.end114 ], [ %2, %entry ]
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %for.end114 ], [ %1, %entry ]
  %accumulator.tr = phi i32 [ %add116, %for.end114 ], [ 0, %entry ]
  %3 = trunc nuw i64 %indvars.iv97 to i32
  %smax94 = call i32 @llvm.smax.i32(i32 %3, i32 0)
  %4 = icmp eq i64 %indvars.iv99, 1
  br i1 %4, label %return, label %for.cond.preheader

for.cond.preheader:                               ; preds = %tailrecurse
  %5 = trunc nsw i64 %indvars.iv99 to i32
  %smax78 = call i32 @llvm.smax.i32(i32 %5, i32 0)
  %wide.trip.count57 = zext nneg i32 %smax78 to i64
  %wide.trip.count = and i64 %indvars.iv99, 4294967295
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.inc28
  %indvars.iv54 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next55, %for.inc28 ]
  %exitcond58.not = icmp eq i64 %indvars.iv54, %wide.trip.count57
  br i1 %exitcond58.not, label %for.cond31.preheader, label %for.cond2

for.cond31.preheader:                             ; preds = %for.cond
  %wide.trip.count62 = and i64 %indvars.iv99, 4294967295
  br label %for.cond31

for.cond2:                                        ; preds = %for.cond, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond ]
  %min.0 = phi i32 [ %spec.select, %for.body4 ], [ 32767, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond14.preheader, label %for.body4

for.cond14.preheader:                             ; preds = %for.cond2
  br label %for.cond14

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [120 x i32], ptr %matrix, i64 %indvars.iv54, i64 %indvars.iv
  %6 = load i32, ptr %arrayidx6, align 4, !tbaa !5, !invariant.load !9
  %spec.select = tail call i32 @llvm.smin.i32(i32 %6, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !10

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc25
  %indvars.iv49 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next50, %for.inc25 ]
  %exitcond53.not = icmp eq i64 %indvars.iv49, %wide.trip.count
  br i1 %exitcond53.not, label %for.inc28, label %for.inc25

for.inc25:                                        ; preds = %for.cond14
  %arrayidx20 = getelementptr inbounds nuw [120 x i32], ptr %matrix, i64 %indvars.iv54, i64 %indvars.iv49
  %7 = load i32, ptr %arrayidx20, align 4, !tbaa !5, !invariant.load !9
  %sub = sub nsw i32 %7, %min.0
  store i32 %sub, ptr %arrayidx20, align 4, !tbaa !5
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %for.cond14, !llvm.loop !13

for.inc28:                                        ; preds = %for.cond14
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %for.cond, !llvm.loop !14

for.cond31:                                       ; preds = %for.cond31.preheader, %for.end65
  %indvars.iv69 = phi i64 [ 0, %for.cond31.preheader ], [ %indvars.iv.next70, %for.end65 ]
  %exitcond74.not = icmp eq i64 %indvars.iv69, %wide.trip.count57
  br i1 %exitcond74.not, label %for.end68, label %for.cond34

for.cond34:                                       ; preds = %for.cond31, %for.body36
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %for.body36 ], [ 0, %for.cond31 ]
  %min.2 = phi i32 [ %spec.select47, %for.body36 ], [ 32767, %for.cond31 ]
  %exitcond63.not = icmp eq i64 %indvars.iv59, %wide.trip.count62
  br i1 %exitcond63.not, label %for.cond51.preheader, label %for.body36

for.cond51.preheader:                             ; preds = %for.cond34
  br label %for.cond51

for.body36:                                       ; preds = %for.cond34
  %arrayidx40 = getelementptr inbounds nuw [120 x i32], ptr %matrix, i64 %indvars.iv59, i64 %indvars.iv69
  %8 = load i32, ptr %arrayidx40, align 4, !tbaa !5, !invariant.load !9
  %spec.select47 = tail call i32 @llvm.smin.i32(i32 %8, i32 %min.2)
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  br label %for.cond34, !llvm.loop !15

for.cond51:                                       ; preds = %for.cond51.preheader, %for.inc63
  %indvars.iv64 = phi i64 [ 0, %for.cond51.preheader ], [ %indvars.iv.next65, %for.inc63 ]
  %exitcond68.not = icmp eq i64 %indvars.iv64, %wide.trip.count62
  br i1 %exitcond68.not, label %for.end65, label %for.inc63

for.inc63:                                        ; preds = %for.cond51
  %arrayidx57 = getelementptr inbounds nuw [120 x i32], ptr %matrix, i64 %indvars.iv64, i64 %indvars.iv69
  %9 = load i32, ptr %arrayidx57, align 4, !tbaa !5, !invariant.load !9
  %sub58 = sub nsw i32 %9, %min.2
  store i32 %sub58, ptr %arrayidx57, align 4, !tbaa !5
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  br label %for.cond51, !llvm.loop !16

for.end65:                                        ; preds = %for.cond51
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  br label %for.cond31

for.end68:                                        ; preds = %for.cond31
  %10 = load i32, ptr %arrayidx70, align 4, !tbaa !5, !invariant.load !9
  %indvars.iv.next100 = add nsw i64 %indvars.iv99, -1
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc89, %for.end68
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %for.inc89 ], [ 1, %for.end68 ]
  %cmp73 = icmp slt i64 %indvars.iv81, %indvars.iv.next100
  br i1 %cmp73, label %for.cond75, label %for.cond92.preheader

for.cond92.preheader:                             ; preds = %for.cond71
  %wide.trip.count95 = zext nneg i32 %smax94 to i64
  br label %for.cond92

for.cond75:                                       ; preds = %for.cond71, %for.inc86
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %for.inc86 ], [ 0, %for.cond71 ]
  %exitcond80.not = icmp eq i64 %indvars.iv75, %wide.trip.count57
  br i1 %exitcond80.not, label %for.inc89, label %for.inc86

for.inc86:                                        ; preds = %for.cond75
  %arrayidx81 = getelementptr inbounds nuw [120 x i32], ptr %invariant.gep, i64 %indvars.iv81, i64 %indvars.iv75
  %11 = load i32, ptr %arrayidx81, align 4, !tbaa !5, !invariant.load !9
  %arrayidx85 = getelementptr inbounds nuw [120 x i32], ptr %matrix, i64 %indvars.iv81, i64 %indvars.iv75
  store i32 %11, ptr %arrayidx85, align 4, !tbaa !5
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  br label %for.cond75, !llvm.loop !17

for.inc89:                                        ; preds = %for.cond75
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  br label %for.cond71, !llvm.loop !18

for.cond92:                                       ; preds = %for.cond92.preheader, %for.end111
  %indvars.iv91 = phi i64 [ 0, %for.cond92.preheader ], [ %indvars.iv.next92, %for.end111 ]
  %exitcond96.not = icmp eq i64 %indvars.iv91, %wide.trip.count95
  br i1 %exitcond96.not, label %for.end114, label %for.cond96

for.cond96:                                       ; preds = %for.cond92, %for.inc109
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %for.inc109 ], [ 1, %for.cond92 ]
  %exitcond90.not = icmp eq i64 %indvars.iv84, %indvars.iv97
  br i1 %exitcond90.not, label %for.end111, label %for.inc109

for.inc109:                                       ; preds = %for.cond96
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  %arrayidx104 = getelementptr inbounds nuw [120 x i32], ptr %matrix, i64 %indvars.iv91, i64 %indvars.iv.next85
  %12 = load i32, ptr %arrayidx104, align 4, !tbaa !5, !invariant.load !9
  %arrayidx108 = getelementptr inbounds nuw [120 x i32], ptr %matrix, i64 %indvars.iv91, i64 %indvars.iv84
  store i32 %12, ptr %arrayidx108, align 4, !tbaa !5
  br label %for.cond96, !llvm.loop !19

for.end111:                                       ; preds = %for.cond96
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  br label %for.cond92

for.end114:                                       ; preds = %for.cond92
  %add116 = add nsw i32 %10, %accumulator.tr
  %indvars.iv.next98 = add nsw i64 %indvars.iv97, -1
  br label %tailrecurse

return:                                           ; preds = %tailrecurse
  ret i32 %accumulator.tr
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  %a = alloca [120 x [120 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 57600, ptr noundef nonnull align 16 dereferenceable(57600) %a) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end12, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc67.i1, %for.end12 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %i.0, %0
  br i1 %cmp.not, label %for.end17, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.end
  %1 = phi i32 [ %3, %for.end ], [ %0, %for.cond ]
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %for.end ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv8, %2
  br i1 %cmp2, label %for.cond4, label %for.end12

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %3 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp5, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [120 x [120 x i32]], ptr %a, i64 0, i64 %indvars.iv8, i64 %indvars.iv
  %call9 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !20

for.end:                                          ; preds = %for.cond4
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  br label %for.cond1

for.end12:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z3calPA120_ii(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(57600) %a, i32 noundef %1) #6
  %call14 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %call13)
  %inc67.i1 = add nuw nsw i32 %i.0, 1
  br label %for.cond

for.end17:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 57600, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind }
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
!19 = distinct !{!19, !11, !12}
!20 = distinct !{!20, !11, !12}
