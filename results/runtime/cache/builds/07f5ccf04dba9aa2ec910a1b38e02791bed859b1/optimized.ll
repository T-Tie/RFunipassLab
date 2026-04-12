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
  %0 = sext i32 %n to i64
  %cmp32 = icmp sgt i32 %n, 0
  br label %tailrecurse

tailrecurse:                                      ; preds = %for.end114, %entry
  %indvars.iv38 = phi i32 [ %indvars.iv.next39, %for.end114 ], [ %n, %entry ]
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.end114 ], [ %0, %entry ]
  %accumulator.tr = phi i32 [ %add116, %for.end114 ], [ 0, %entry ]
  %1 = icmp eq i64 %indvars.iv32, 1
  br i1 %1, label %return, label %for.cond.preheader

for.cond.preheader:                               ; preds = %tailrecurse
  %2 = trunc nsw i64 %indvars.iv32 to i32
  %smax26 = call i32 @llvm.smax.i32(i32 %2, i32 noundef 0)
  %wide.trip.count21 = zext nneg i32 %smax26 to i64
  %wide.trip.count = and i64 %indvars.iv32, 4294967295
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.inc28
  %indvars.iv18 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next19, %for.inc28 ]
  %exitcond22.not = icmp eq i64 %indvars.iv18, %wide.trip.count21
  br i1 %exitcond22.not, label %for.cond31.preheader, label %for.cond2

for.cond31.preheader:                             ; preds = %for.cond
  br i1 %cmp32, label %for.cond31.preheader.split, label %for.end68

for.cond31.preheader.split:                       ; preds = %for.cond31.preheader
  %smax41 = call i32 @llvm.smax.i32(i32 %indvars.iv38, i32 noundef 0)
  %wide.trip.count42 = zext nneg i32 %smax41 to i64
  br label %for.cond31

for.cond2:                                        ; preds = %for.cond, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond ]
  %min.0 = phi i32 [ %spec.select, %for.body4 ], [ 32767, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond14.preheader, label %for.body4

for.cond14.preheader:                             ; preds = %for.cond2
  br label %for.cond14

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [120 x i32], ptr %matrix, i64 %indvars.iv18, i64 %indvars.iv
  %3 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %3, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc25
  %indvars.iv13 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next14, %for.inc25 ]
  %exitcond17.not = icmp eq i64 %indvars.iv13, %wide.trip.count
  br i1 %exitcond17.not, label %for.inc28, label %for.inc25

for.inc25:                                        ; preds = %for.cond14
  %arrayidx20 = getelementptr inbounds nuw [120 x i32], ptr %matrix, i64 %indvars.iv18, i64 %indvars.iv13
  %4 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %sub = sub nsw i32 %4, %min.0
  store i32 %sub, ptr %arrayidx20, align 4, !tbaa !5
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  br label %for.cond14, !llvm.loop !12

for.inc28:                                        ; preds = %for.cond14
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond, !llvm.loop !13

for.cond31:                                       ; preds = %for.cond51, %for.cond31.preheader.split
  br label %for.cond34

for.cond34:                                       ; preds = %for.cond31, %for.body36
  %indvars.iv35 = phi i64 [ 0, %for.cond31 ], [ %indvars.iv.next36, %for.body36 ]
  %min.2 = phi i32 [ 32767, %for.cond31 ], [ %spec.select8, %for.body36 ]
  %exitcond43.not = icmp eq i64 %indvars.iv35, %wide.trip.count42
  br i1 %exitcond43.not, label %for.cond51.preheader, label %for.body36

for.cond51.preheader:                             ; preds = %for.cond34
  br label %for.cond51

for.body36:                                       ; preds = %for.cond34
  %arrayidx38 = getelementptr inbounds nuw [120 x i32], ptr %matrix, i64 %indvars.iv35
  %5 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %spec.select8 = tail call i32 @llvm.smin.i32(i32 %5, i32 %min.2)
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond34, !llvm.loop !14

for.cond51:                                       ; preds = %for.cond51.preheader, %for.inc63
  %indvars.iv44 = phi i64 [ 0, %for.cond51.preheader ], [ %indvars.iv.next45, %for.inc63 ]
  %exitcond50.not = icmp eq i64 %indvars.iv44, %wide.trip.count42
  br i1 %exitcond50.not, label %for.cond31, label %for.inc63

for.inc63:                                        ; preds = %for.cond51
  %arrayidx55 = getelementptr inbounds nuw [120 x i32], ptr %matrix, i64 %indvars.iv44
  %6 = load i32, ptr %arrayidx55, align 4, !tbaa !5
  %sub58 = sub nsw i32 %6, %min.2
  store i32 %sub58, ptr %arrayidx55, align 4, !tbaa !5
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  br label %for.cond51, !llvm.loop !15

for.end68:                                        ; preds = %for.cond31.preheader
  %7 = load i32, ptr %arrayidx70, align 4, !tbaa !5
  %indvars.iv.next33 = add nsw i64 %indvars.iv32, -1
  br label %for.cond71

for.cond71:                                       ; preds = %for.cond75, %for.end68
  %indvars.iv29 = phi i64 [ 1, %for.end68 ], [ %indvars.iv.next30, %for.cond75 ]
  %cmp73 = icmp slt i64 %indvars.iv29, %indvars.iv.next33
  br i1 %cmp73, label %for.cond75.preheader, label %for.end114

for.cond75.preheader:                             ; preds = %for.cond71
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond75

for.cond75:                                       ; preds = %for.cond75.preheader, %for.inc86
  %indvars.iv23 = phi i64 [ 0, %for.cond75.preheader ], [ %indvars.iv.next24, %for.inc86 ]
  %exitcond28.not = icmp eq i64 %indvars.iv23, %wide.trip.count21
  br i1 %exitcond28.not, label %for.cond71, label %for.inc86, !llvm.loop !16

for.inc86:                                        ; preds = %for.cond75
  %arrayidx81 = getelementptr inbounds nuw [120 x i32], ptr %matrix, i64 %indvars.iv.next30, i64 %indvars.iv23
  %8 = load i32, ptr %arrayidx81, align 4, !tbaa !5
  %arrayidx85 = getelementptr inbounds nuw [120 x i32], ptr %matrix, i64 %indvars.iv29, i64 %indvars.iv23
  store i32 %8, ptr %arrayidx85, align 4, !tbaa !5
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond75, !llvm.loop !17

for.end114:                                       ; preds = %for.cond71
  %add116 = add nsw i32 %7, %accumulator.tr
  %indvars.iv.next39 = add i32 %indvars.iv38, -1
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
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.cond1, label %for.end17

for.cond1:                                        ; preds = %for.cond, %for.end
  %1 = phi i32 [ %2, %for.end ], [ %0, %for.cond ]
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %for.end ], [ 0, %for.cond ]
  %cmp2 = icmp sgt i32 %1, 0
  br i1 %cmp2, label %for.cond4, label %for.end12

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %2 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %3 = sext i32 %2 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp5, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [120 x [120 x i32]], ptr %a, i64 0, i64 %indvars.iv4, i64 %indvars.iv
  %call9 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !18

for.end:                                          ; preds = %for.cond4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  br label %for.cond1

for.end12:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z3calPA120_ii(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(57600) %a, i32 noundef %1) #7
  %call14 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %call13) #7
  br label %for.cond

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
