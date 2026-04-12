; ModuleID = '<stdin>'
source_filename = "/tmp/tmpdv3iv3rn.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_Z3calPA120_ii(ptr nofree noundef captures(none) %matrix, i32 noundef %n) #0 {
entry:
  %arrayidx70 = getelementptr inbounds nuw i8, ptr %matrix, i64 484
  %invariant.gep = getelementptr inbounds nuw i8, ptr %matrix, i64 480
  %0 = add i32 %n, -1
  %1 = zext i32 %0 to i64
  %2 = sext i32 %n to i64
  br label %tailrecurse

tailrecurse:                                      ; preds = %for.end114, %entry
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %for.end114 ], [ %2, %entry ]
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %for.end114 ], [ %1, %entry ]
  %accumulator.tr = phi i32 [ %add116, %for.end114 ], [ 0, %entry ]
  %3 = trunc nuw i64 %indvars.iv96 to i32
  %smax93 = call i32 @llvm.smax.i32(i32 %3, i32 noundef 0)
  %4 = icmp eq i64 %indvars.iv98, 1
  br i1 %4, label %return, label %for.cond.preheader

for.cond.preheader:                               ; preds = %tailrecurse
  %5 = trunc nsw i64 %indvars.iv98 to i32
  %smax77 = call i32 @llvm.smax.i32(i32 %5, i32 noundef 0)
  %wide.trip.count56 = zext nneg i32 %smax77 to i64
  %wide.trip.count = and i64 %indvars.iv98, 4294967295
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.inc28
  %indvars.iv53 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next54, %for.inc28 ]
  %exitcond57.not = icmp eq i64 %indvars.iv53, %wide.trip.count56
  br i1 %exitcond57.not, label %for.cond31.preheader, label %for.cond2

for.cond31.preheader:                             ; preds = %for.cond
  br label %for.cond31

for.cond2:                                        ; preds = %for.cond, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond ]
  %min.0 = phi i32 [ %spec.select, %for.body4 ], [ 32767, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond14.preheader, label %for.body4

for.cond14.preheader:                             ; preds = %for.cond2
  br label %for.cond14

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [120 x i32], ptr %matrix, i64 %indvars.iv53, i64 %indvars.iv
  %6 = load i32, ptr %arrayidx6, align 4, !tbaa !5, !invariant.load !9
  %spec.select = tail call i32 @llvm.smin.i32(i32 %6, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !10

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc25
  %indvars.iv48 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next49, %for.inc25 ]
  %exitcond52.not = icmp eq i64 %indvars.iv48, %wide.trip.count
  br i1 %exitcond52.not, label %for.inc28, label %for.inc25

for.inc25:                                        ; preds = %for.cond14
  %arrayidx20 = getelementptr inbounds nuw [120 x i32], ptr %matrix, i64 %indvars.iv53, i64 %indvars.iv48
  %7 = load i32, ptr %arrayidx20, align 4, !tbaa !5, !invariant.load !9
  %sub = sub nsw i32 %7, %min.0
  store i32 %sub, ptr %arrayidx20, align 4, !tbaa !5
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  br label %for.cond14, !llvm.loop !13

for.inc28:                                        ; preds = %for.cond14
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %for.cond, !llvm.loop !14

for.cond31:                                       ; preds = %for.cond31.preheader, %for.inc66
  %indvars.iv68 = phi i64 [ 0, %for.cond31.preheader ], [ %indvars.iv.next69, %for.inc66 ]
  %exitcond73.not = icmp eq i64 %indvars.iv68, %wide.trip.count56
  br i1 %exitcond73.not, label %for.end68, label %for.cond34

for.cond34:                                       ; preds = %for.cond31, %for.body36
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.body36 ], [ 0, %for.cond31 ]
  %min.2 = phi i32 [ %spec.select46, %for.body36 ], [ 32767, %for.cond31 ]
  %exitcond62.not = icmp eq i64 %indvars.iv58, %wide.trip.count
  br i1 %exitcond62.not, label %for.cond51.preheader, label %for.body36

for.cond51.preheader:                             ; preds = %for.cond34
  br label %for.cond51

for.body36:                                       ; preds = %for.cond34
  %arrayidx40 = getelementptr inbounds nuw [120 x i32], ptr %matrix, i64 %indvars.iv58, i64 %indvars.iv68
  %8 = load i32, ptr %arrayidx40, align 4, !tbaa !5, !invariant.load !9
  %spec.select46 = tail call i32 @llvm.smin.i32(i32 %8, i32 %min.2)
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %for.cond34, !llvm.loop !15

for.cond51:                                       ; preds = %for.cond51.preheader, %for.inc63
  %indvars.iv63 = phi i64 [ 0, %for.cond51.preheader ], [ %indvars.iv.next64, %for.inc63 ]
  %exitcond67.not = icmp eq i64 %indvars.iv63, %wide.trip.count
  br i1 %exitcond67.not, label %for.inc66, label %for.inc63

for.inc63:                                        ; preds = %for.cond51
  %arrayidx57 = getelementptr inbounds nuw [120 x i32], ptr %matrix, i64 %indvars.iv63, i64 %indvars.iv68
  %9 = load i32, ptr %arrayidx57, align 4, !tbaa !5, !invariant.load !9
  %sub58 = sub nsw i32 %9, %min.2
  store i32 %sub58, ptr %arrayidx57, align 4, !tbaa !5
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  br label %for.cond51, !llvm.loop !16

for.inc66:                                        ; preds = %for.cond51
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  br label %for.cond31, !llvm.loop !17

for.end68:                                        ; preds = %for.cond31
  %10 = load i32, ptr %arrayidx70, align 4, !tbaa !5, !invariant.load !9
  %indvars.iv.next99 = add nsw i64 %indvars.iv98, -1
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc89, %for.end68
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %for.inc89 ], [ 1, %for.end68 ]
  %cmp73 = icmp slt i64 %indvars.iv80, %indvars.iv.next99
  br i1 %cmp73, label %for.cond75, label %for.cond92.preheader

for.cond92.preheader:                             ; preds = %for.cond71
  %wide.trip.count94 = zext nneg i32 %smax93 to i64
  br label %for.cond92

for.cond75:                                       ; preds = %for.cond71, %for.inc86
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %for.inc86 ], [ 0, %for.cond71 ]
  %exitcond79.not = icmp eq i64 %indvars.iv74, %wide.trip.count56
  br i1 %exitcond79.not, label %for.inc89, label %for.inc86

for.inc86:                                        ; preds = %for.cond75
  %arrayidx81 = getelementptr inbounds nuw [120 x i32], ptr %invariant.gep, i64 %indvars.iv80, i64 %indvars.iv74
  %11 = load i32, ptr %arrayidx81, align 4, !tbaa !5, !invariant.load !9
  %arrayidx85 = getelementptr inbounds nuw [120 x i32], ptr %matrix, i64 %indvars.iv80, i64 %indvars.iv74
  store i32 %11, ptr %arrayidx85, align 4, !tbaa !5
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  br label %for.cond75, !llvm.loop !18

for.inc89:                                        ; preds = %for.cond75
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  br label %for.cond71, !llvm.loop !19

for.cond92:                                       ; preds = %for.cond92.preheader, %for.inc112
  %indvars.iv90 = phi i64 [ 0, %for.cond92.preheader ], [ %indvars.iv.next91, %for.inc112 ]
  %exitcond95.not = icmp eq i64 %indvars.iv90, %wide.trip.count94
  br i1 %exitcond95.not, label %for.end114, label %for.cond96

for.cond96:                                       ; preds = %for.cond92, %for.inc109
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %for.inc109 ], [ 1, %for.cond92 ]
  %exitcond89.not = icmp eq i64 %indvars.iv83, %indvars.iv96
  br i1 %exitcond89.not, label %for.inc112, label %for.inc109

for.inc109:                                       ; preds = %for.cond96
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  %arrayidx104 = getelementptr inbounds nuw [120 x i32], ptr %matrix, i64 %indvars.iv90, i64 %indvars.iv.next84
  %12 = load i32, ptr %arrayidx104, align 4, !tbaa !5, !invariant.load !9
  %arrayidx108 = getelementptr inbounds nuw [120 x i32], ptr %matrix, i64 %indvars.iv90, i64 %indvars.iv83
  store i32 %12, ptr %arrayidx108, align 4, !tbaa !5
  br label %for.cond96, !llvm.loop !20

for.inc112:                                       ; preds = %for.cond96
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  br label %for.cond92, !llvm.loop !21

for.end114:                                       ; preds = %for.cond92
  %add116 = add nsw i32 %10, %accumulator.tr
  %indvars.iv.next97 = add nsw i64 %indvars.iv96, -1
  br label %tailrecurse

return:                                           ; preds = %tailrecurse
  ret i32 %accumulator.tr
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #2 {
entry:
  %n = alloca i32, align 4
  %a = alloca [120 x [120 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 57600, ptr noundef nonnull align 16 captures(none) dereferenceable(57600) %a) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc16, %for.inc15 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %i.0, %0
  br i1 %cmp.not, label %for.end17, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %3, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.inc10 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv7, %2
  br i1 %cmp2, label %for.cond4, label %for.inc15

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %3 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp5, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [120 x [120 x i32]], ptr %a, i64 0, i64 %indvars.iv7, i64 %indvars.iv
  %call9 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !22

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br label %for.cond1, !llvm.loop !23

for.inc15:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z3calPA120_ii(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(57600) %a, i32 noundef %1) #6
  %call14 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %call13)
  %inc16 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !24

for.end17:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 57600, ptr noundef nonnull align 16 captures(none) dereferenceable(57600) %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind willreturn }
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
!21 = distinct !{!21, !11, !12}
!22 = distinct !{!22, !11, !12}
!23 = distinct !{!23, !11, !12}
!24 = distinct !{!24, !11, !12}
