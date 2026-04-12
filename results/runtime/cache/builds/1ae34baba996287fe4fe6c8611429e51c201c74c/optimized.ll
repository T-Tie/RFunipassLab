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
  %0 = add i32 %n, -1
  %1 = zext i32 %0 to i64
  %2 = sext i32 %n to i64
  br label %tailrecurse

tailrecurse:                                      ; preds = %for.end114, %entry
  %indvars.iv99.in = phi i64 [ %indvars.iv99, %for.end114 ], [ %2, %entry ]
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %for.end114 ], [ %1, %entry ]
  %accumulator.tr = phi i32 [ %add116, %for.end114 ], [ 0, %entry ]
  %indvars.iv99 = add i64 %indvars.iv99.in, -1
  %smax = tail call i64 @llvm.smax.i64(i64 %indvars.iv99, i64 noundef 1)
  %3 = trunc nuw i64 %indvars.iv92 to i32
  %smax89 = tail call i32 @llvm.smax.i32(i32 %3, i32 noundef 0)
  %4 = icmp eq i64 %indvars.iv99.in, 1
  br i1 %4, label %return, label %for.cond.preheader

for.cond.preheader:                               ; preds = %tailrecurse
  %5 = trunc nsw i64 %indvars.iv99.in to i32
  %smax73 = tail call i32 @llvm.smax.i32(i32 %5, i32 noundef 0)
  %wide.trip.count52 = zext nneg i32 %smax73 to i64
  %wide.trip.count = and i64 %indvars.iv99.in, 4294967295
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.end27
  %indvars.iv49 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next50, %for.end27 ]
  %exitcond53.not = icmp eq i64 %indvars.iv49, %wide.trip.count52
  br i1 %exitcond53.not, label %for.cond31, label %for.cond2

for.cond2:                                        ; preds = %for.cond, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond ]
  %min.0 = phi i32 [ %spec.select, %for.body4 ], [ 32767, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond14.preheader, label %for.body4

for.cond14.preheader:                             ; preds = %for.cond2
  br label %for.cond14

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [120 x i32], ptr %matrix, i64 %indvars.iv49, i64 %indvars.iv
  %6 = load i32, ptr %arrayidx6, align 4, !tbaa !5, !invariant.load !9
  %spec.select = tail call i32 @llvm.smin.i32(i32 %6, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !10

for.cond14:                                       ; preds = %for.cond14.preheader, %for.body16
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.body16 ], [ 0, %for.cond14.preheader ]
  %exitcond48.not = icmp eq i64 %indvars.iv44, %wide.trip.count
  br i1 %exitcond48.not, label %for.end27, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %arrayidx20 = getelementptr inbounds nuw [120 x i32], ptr %matrix, i64 %indvars.iv49, i64 %indvars.iv44
  %7 = load i32, ptr %arrayidx20, align 4, !tbaa !5, !invariant.load !9
  %sub = sub nsw i32 %7, %min.0
  store i32 %sub, ptr %arrayidx20, align 4, !tbaa !5
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  br label %for.cond14, !llvm.loop !13

for.end27:                                        ; preds = %for.cond14
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %for.cond, !llvm.loop !14

for.cond31:                                       ; preds = %for.cond, %for.end65
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %for.end65 ], [ 0, %for.cond ]
  %exitcond69.not = icmp eq i64 %indvars.iv64, %wide.trip.count52
  br i1 %exitcond69.not, label %for.end68, label %for.cond34

for.cond34:                                       ; preds = %for.cond31, %for.body36
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %for.body36 ], [ 0, %for.cond31 ]
  %min.2 = phi i32 [ %spec.select42, %for.body36 ], [ 32767, %for.cond31 ]
  %exitcond58.not = icmp eq i64 %indvars.iv54, %wide.trip.count
  br i1 %exitcond58.not, label %for.cond51.preheader, label %for.body36

for.cond51.preheader:                             ; preds = %for.cond34
  br label %for.cond51

for.body36:                                       ; preds = %for.cond34
  %arrayidx40 = getelementptr inbounds nuw [120 x i32], ptr %matrix, i64 %indvars.iv54, i64 %indvars.iv64
  %8 = load i32, ptr %arrayidx40, align 4, !tbaa !5, !invariant.load !9
  %spec.select42 = tail call i32 @llvm.smin.i32(i32 %8, i32 %min.2)
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %for.cond34, !llvm.loop !15

for.cond51:                                       ; preds = %for.cond51.preheader, %for.body53
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %for.body53 ], [ 0, %for.cond51.preheader ]
  %exitcond63.not = icmp eq i64 %indvars.iv59, %wide.trip.count
  br i1 %exitcond63.not, label %for.end65, label %for.body53

for.body53:                                       ; preds = %for.cond51
  %arrayidx57 = getelementptr inbounds nuw [120 x i32], ptr %matrix, i64 %indvars.iv59, i64 %indvars.iv64
  %9 = load i32, ptr %arrayidx57, align 4, !tbaa !5, !invariant.load !9
  %sub58 = sub nsw i32 %9, %min.2
  store i32 %sub58, ptr %arrayidx57, align 4, !tbaa !5
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  br label %for.cond51, !llvm.loop !16

for.end65:                                        ; preds = %for.cond51
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  br label %for.cond31, !llvm.loop !17

for.end68:                                        ; preds = %for.cond31
  %10 = load i32, ptr %arrayidx70, align 4, !tbaa !5, !invariant.load !9
  br label %for.cond71

for.cond71:                                       ; preds = %for.cond75, %for.end68
  %indvars.iv76 = phi i64 [ 1, %for.end68 ], [ %indvars.iv.next77, %for.cond75 ]
  %exitcond.not101 = icmp eq i64 %indvars.iv76, %smax
  br i1 %exitcond.not101, label %for.cond92.preheader, label %for.cond75.preheader

for.cond92.preheader:                             ; preds = %for.cond71
  %wide.trip.count90 = zext nneg i32 %smax89 to i64
  br label %for.cond92

for.cond75.preheader:                             ; preds = %for.cond71
  %indvars.iv.next77 = add nuw i64 %indvars.iv76, 1
  br label %for.cond75

for.cond75:                                       ; preds = %for.cond75.preheader, %for.body77
  %indvars.iv70 = phi i64 [ 0, %for.cond75.preheader ], [ %indvars.iv.next71, %for.body77 ]
  %exitcond75.not = icmp eq i64 %indvars.iv70, %wide.trip.count52
  br i1 %exitcond75.not, label %for.cond71, label %for.body77, !llvm.loop !18

for.body77:                                       ; preds = %for.cond75
  %arrayidx81 = getelementptr inbounds nuw [120 x i32], ptr %matrix, i64 %indvars.iv.next77, i64 %indvars.iv70
  %11 = load i32, ptr %arrayidx81, align 4, !tbaa !5, !invariant.load !9
  %arrayidx85 = getelementptr inbounds nuw [120 x i32], ptr %matrix, i64 %indvars.iv76, i64 %indvars.iv70
  store i32 %11, ptr %arrayidx85, align 4, !tbaa !5
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  br label %for.cond75, !llvm.loop !19

for.cond92:                                       ; preds = %for.cond92.preheader, %for.end111
  %indvars.iv86 = phi i64 [ 0, %for.cond92.preheader ], [ %indvars.iv.next87, %for.end111 ]
  %exitcond91.not = icmp eq i64 %indvars.iv86, %wide.trip.count90
  br i1 %exitcond91.not, label %for.end114, label %for.cond96

for.cond96:                                       ; preds = %for.cond92, %for.body99
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %for.body99 ], [ 1, %for.cond92 ]
  %exitcond85.not = icmp eq i64 %indvars.iv79, %indvars.iv92
  br i1 %exitcond85.not, label %for.end111, label %for.body99

for.body99:                                       ; preds = %for.cond96
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  %arrayidx104 = getelementptr inbounds nuw [120 x i32], ptr %matrix, i64 %indvars.iv86, i64 %indvars.iv.next80
  %12 = load i32, ptr %arrayidx104, align 4, !tbaa !5, !invariant.load !9
  %arrayidx108 = getelementptr inbounds nuw [120 x i32], ptr %matrix, i64 %indvars.iv86, i64 %indvars.iv79
  store i32 %12, ptr %arrayidx108, align 4, !tbaa !5
  br label %for.cond96, !llvm.loop !20

for.end111:                                       ; preds = %for.cond96
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  br label %for.cond92, !llvm.loop !21

for.end114:                                       ; preds = %for.cond92
  %add116 = add nsw i32 %10, %accumulator.tr
  %indvars.iv.next93 = add nsw i64 %indvars.iv92, -1
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
  %i.0 = phi i32 [ 1, %entry ], [ %inc16, %for.end12 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %i.0, %0
  br i1 %cmp.not, label %for.end17, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.end
  %1 = phi i32 [ %3, %for.end ], [ %0, %for.cond ]
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %for.end ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv8, %2
  br i1 %cmp2, label %for.cond4, label %for.end12

for.cond4:                                        ; preds = %for.cond1, %for.body6
  %3 = phi i32 [ %.pre, %for.body6 ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [120 x [120 x i32]], ptr %a, i64 0, i64 %indvars.iv8, i64 %indvars.iv
  %call9 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !22

for.end:                                          ; preds = %for.cond4
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  br label %for.cond1, !llvm.loop !23

for.end12:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z3calPA120_ii(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(57600) %a, i32 noundef %1) #7
  %call14 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %call13) #7
  %inc16 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !24

for.end17:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 57600, ptr noundef nonnull align 16 captures(none) dereferenceable(57600) %a) #7
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
attributes #6 = { nofree nounwind willreturn }
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
!21 = distinct !{!21, !11, !12}
!22 = distinct !{!22, !11, !12}
!23 = distinct !{!23, !11, !12}
!24 = distinct !{!24, !11, !12}
