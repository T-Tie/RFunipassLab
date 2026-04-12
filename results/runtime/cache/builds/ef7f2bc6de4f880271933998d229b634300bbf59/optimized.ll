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
  %indvars.iv78.in = phi i64 [ %indvars.iv78, %for.end114 ], [ %2, %entry ]
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.end114 ], [ %1, %entry ]
  %accumulator.tr = phi i32 [ %add116, %for.end114 ], [ 0, %entry ]
  %indvars.iv78 = add i64 %indvars.iv78.in, -1
  %smax = call i64 @llvm.smax.i64(i64 %indvars.iv78, i64 1)
  %3 = trunc nuw i64 %indvars.iv71 to i32
  %smax68 = tail call i32 @llvm.smax.i32(i32 %3, i32 0)
  %4 = icmp eq i64 %indvars.iv78.in, 1
  br i1 %4, label %return, label %for.cond.preheader

for.cond.preheader:                               ; preds = %tailrecurse
  %5 = trunc nsw i64 %indvars.iv78.in to i32
  %smax52 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %wide.trip.count31 = zext nneg i32 %smax52 to i64
  %wide.trip.count = and i64 %indvars.iv78.in, 4294967295
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.inc28
  %indvars.iv28 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next29, %for.inc28 ]
  %exitcond32.not = icmp eq i64 %indvars.iv28, %wide.trip.count31
  br i1 %exitcond32.not, label %for.cond31, label %for.cond2

for.cond2:                                        ; preds = %for.cond, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond ]
  %min.0 = phi i32 [ %spec.select, %for.body4 ], [ 32767, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond14.preheader, label %for.body4

for.cond14.preheader:                             ; preds = %for.cond2
  br label %for.cond14

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [120 x i32], ptr %matrix, i64 %indvars.iv28, i64 %indvars.iv
  %6 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %6, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc25
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.inc25 ], [ 0, %for.cond14.preheader ]
  %exitcond27.not = icmp eq i64 %indvars.iv23, %wide.trip.count
  br i1 %exitcond27.not, label %for.inc28, label %for.inc25

for.inc25:                                        ; preds = %for.cond14
  %arrayidx20 = getelementptr inbounds nuw [120 x i32], ptr %matrix, i64 %indvars.iv28, i64 %indvars.iv23
  %7 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %sub = sub nsw i32 %7, %min.0
  store i32 %sub, ptr %arrayidx20, align 4, !tbaa !5
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond14, !llvm.loop !12

for.inc28:                                        ; preds = %for.cond14
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond, !llvm.loop !13

for.cond31:                                       ; preds = %for.cond, %for.end65
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %for.end65 ], [ 0, %for.cond ]
  %exitcond48.not = icmp eq i64 %indvars.iv43, %wide.trip.count31
  br i1 %exitcond48.not, label %for.end68, label %for.cond34

for.cond34:                                       ; preds = %for.cond31, %for.body36
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %for.body36 ], [ 0, %for.cond31 ]
  %min.2 = phi i32 [ %spec.select21, %for.body36 ], [ 32767, %for.cond31 ]
  %exitcond37.not = icmp eq i64 %indvars.iv33, %wide.trip.count
  br i1 %exitcond37.not, label %for.cond51.preheader, label %for.body36

for.cond51.preheader:                             ; preds = %for.cond34
  br label %for.cond51

for.body36:                                       ; preds = %for.cond34
  %arrayidx40 = getelementptr inbounds nuw [120 x i32], ptr %matrix, i64 %indvars.iv33, i64 %indvars.iv43
  %8 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %spec.select21 = tail call i32 @llvm.smin.i32(i32 %8, i32 %min.2)
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond34, !llvm.loop !14

for.cond51:                                       ; preds = %for.cond51.preheader, %for.inc63
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.inc63 ], [ 0, %for.cond51.preheader ]
  %exitcond42.not = icmp eq i64 %indvars.iv38, %wide.trip.count
  br i1 %exitcond42.not, label %for.end65, label %for.inc63

for.inc63:                                        ; preds = %for.cond51
  %arrayidx57 = getelementptr inbounds nuw [120 x i32], ptr %matrix, i64 %indvars.iv38, i64 %indvars.iv43
  %9 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  %sub58 = sub nsw i32 %9, %min.2
  store i32 %sub58, ptr %arrayidx57, align 4, !tbaa !5
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond51, !llvm.loop !15

for.end65:                                        ; preds = %for.cond51
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  br label %for.cond31

for.end68:                                        ; preds = %for.cond31
  %10 = load i32, ptr %arrayidx70, align 4, !tbaa !5
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc89, %for.end68
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %for.inc89 ], [ 1, %for.end68 ]
  %exitcond.not80 = icmp eq i64 %indvars.iv55, %smax
  br i1 %exitcond.not80, label %for.cond92.preheader, label %for.cond75

for.cond92.preheader:                             ; preds = %for.cond71
  %wide.trip.count69 = zext nneg i32 %smax68 to i64
  br label %for.cond92

for.cond75:                                       ; preds = %for.cond71, %for.inc86
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.inc86 ], [ 0, %for.cond71 ]
  %exitcond54.not = icmp eq i64 %indvars.iv49, %wide.trip.count31
  br i1 %exitcond54.not, label %for.inc89, label %for.inc86

for.inc86:                                        ; preds = %for.cond75
  %arrayidx81 = getelementptr inbounds nuw [120 x i32], ptr %invariant.gep, i64 %indvars.iv55, i64 %indvars.iv49
  %11 = load i32, ptr %arrayidx81, align 4, !tbaa !5
  %arrayidx85 = getelementptr inbounds nuw [120 x i32], ptr %matrix, i64 %indvars.iv55, i64 %indvars.iv49
  store i32 %11, ptr %arrayidx85, align 4, !tbaa !5
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %for.cond75, !llvm.loop !16

for.inc89:                                        ; preds = %for.cond75
  %indvars.iv.next56 = add nuw i64 %indvars.iv55, 1
  br label %for.cond71, !llvm.loop !17

for.cond92:                                       ; preds = %for.cond92.preheader, %for.end111
  %indvars.iv65 = phi i64 [ 0, %for.cond92.preheader ], [ %indvars.iv.next66, %for.end111 ]
  %exitcond70.not = icmp eq i64 %indvars.iv65, %wide.trip.count69
  br i1 %exitcond70.not, label %for.end114, label %for.cond96

for.cond96:                                       ; preds = %for.cond92, %for.inc109
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.inc109 ], [ 1, %for.cond92 ]
  %exitcond64.not = icmp eq i64 %indvars.iv58, %indvars.iv71
  br i1 %exitcond64.not, label %for.end111, label %for.inc109

for.inc109:                                       ; preds = %for.cond96
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  %arrayidx104 = getelementptr inbounds nuw [120 x i32], ptr %matrix, i64 %indvars.iv65, i64 %indvars.iv.next59
  %12 = load i32, ptr %arrayidx104, align 4, !tbaa !5
  %arrayidx108 = getelementptr inbounds nuw [120 x i32], ptr %matrix, i64 %indvars.iv65, i64 %indvars.iv58
  store i32 %12, ptr %arrayidx108, align 4, !tbaa !5
  br label %for.cond96, !llvm.loop !18

for.end111:                                       ; preds = %for.cond96
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  br label %for.cond92

for.end114:                                       ; preds = %for.cond92
  %add116 = add nsw i32 %10, %accumulator.tr
  %indvars.iv.next72 = add nsw i64 %indvars.iv71, -1
  br label %tailrecurse

return:                                           ; preds = %tailrecurse
  ret i32 %accumulator.tr
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  %a = alloca [120 x [120 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 57600, ptr noundef nonnull align 16 captures(none) dereferenceable(57600) %a) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end12, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc67.i2, %for.end12 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %i.0, %0
  br i1 %cmp.not, label %for.end17, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.end
  %1 = phi i32 [ %3, %for.end ], [ %0, %for.cond ]
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %for.end ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv6, %2
  br i1 %cmp2, label %for.cond4, label %for.end12

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %3 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp5, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [120 x [120 x i32]], ptr %a, i64 0, i64 %indvars.iv6, i64 %indvars.iv
  %call9 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !19

for.end:                                          ; preds = %for.cond4
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  br label %for.cond1

for.end12:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z3calPA120_ii(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(57600) %a, i32 noundef %1) #7
  %call14 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %call13) #7
  %inc67.i2 = add nuw nsw i32 %i.0, 1
  br label %for.cond

for.end17:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 57600, ptr noundef nonnull align 16 dereferenceable(57600) %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }

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
