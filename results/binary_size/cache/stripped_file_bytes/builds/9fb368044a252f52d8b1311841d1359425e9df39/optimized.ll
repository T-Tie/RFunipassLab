; ModuleID = '<stdin>'
source_filename = "/tmp/tmpbry9zrnj.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40000) %a, i8 0, i64 40000, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %k.0 = phi i32 [ %0, %entry ], [ %dec, %while.end ]
  %dec = add nsw i32 %k.0, -1
  %tobool.not = icmp eq i32 %k.0, 0
  br i1 %tobool.not, label %while.end22, label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.cond
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.inc7
  %1 = phi i32 [ %.pre, %for.cond.preheader ], [ %3, %for.inc7 ]
  %indvars.iv11 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next12, %for.inc7 ]
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv11, %2
  br i1 %cmp, label %for.cond1, label %while.cond10

for.cond1:                                        ; preds = %for.cond, %for.body3
  %3 = phi i32 [ %.pre14, %for.body3 ], [ %1, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %4 = sext i32 %3 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp2, label %for.body3, label %for.inc7

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv11, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre14 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  br label %for.cond, !llvm.loop !12

while.cond10:                                     ; preds = %for.cond, %while.body12
  %p.0.in = phi i32 [ %p.0, %while.body12 ], [ %1, %for.cond ]
  %sum.0 = phi i32 [ %add17, %while.body12 ], [ 0, %for.cond ]
  %p.0 = add nsw i32 %p.0.in, -1
  %tobool11.not = icmp eq i32 %p.0, 0
  br i1 %tobool11.not, label %while.end, label %while.body12

while.body12:                                     ; preds = %while.cond10
  call void @_Z2m1iPA100_i(i32 noundef %p.0.in, ptr noundef nonnull %a)
  call void @_Z2m2iPA100_i(i32 noundef %p.0.in, ptr noundef nonnull %a)
  %5 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %add17 = add nsw i32 %5, %sum.0
  call void @_Z4dealiPA100_i(i32 noundef %p.0.in, ptr noundef nonnull %a)
  br label %while.cond10, !llvm.loop !13

while.end:                                        ; preds = %while.cond10
  %call21 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %sum.0)
  br label %while.cond, !llvm.loop !14

while.end22:                                      ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z2m1iPA100_i(i32 noundef %n, ptr noundef captures(none) %a) local_unnamed_addr #4 {
entry:
  %0 = sext i32 %n to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count27 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %entry
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.inc29 ], [ 0, %entry ]
  %exitcond28.not = icmp eq i64 %indvars.iv24, %wide.trip.count27
  br i1 %exitcond28.not, label %for.end31, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv24
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %if.end, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %for.body ]
  %min.0 = phi i32 [ %spec.select, %if.end ], [ %1, %for.body ]
  %cmp3 = icmp slt i64 %indvars.iv, %0
  %tobool = icmp ne i32 %min.0, 0
  %or.cond = select i1 %cmp3, i1 %tobool, i1 false
  br i1 %or.cond, label %if.end, label %for.end

if.end:                                           ; preds = %for.cond2
  %arrayidx8 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv24, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %2, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !15

for.end:                                          ; preds = %for.cond2
  br i1 %tobool, label %for.cond18, label %for.inc29

for.cond18:                                       ; preds = %for.end, %for.body20
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.body20 ], [ 0, %for.end ]
  %exitcond.not = icmp eq i64 %indvars.iv21, %wide.trip.count
  br i1 %exitcond.not, label %for.inc29, label %for.body20

for.body20:                                       ; preds = %for.cond18
  %arrayidx24 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv24, i64 %indvars.iv21
  %3 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %sub = sub nsw i32 %3, %min.0
  store i32 %sub, ptr %arrayidx24, align 4, !tbaa !5
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond18, !llvm.loop !16

for.inc29:                                        ; preds = %for.cond18, %for.end
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  br label %for.cond, !llvm.loop !17

for.end31:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z2m2iPA100_i(i32 noundef %n, ptr noundef captures(none) %a) local_unnamed_addr #4 {
entry:
  %0 = sext i32 %n to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count27 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %entry
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.inc29 ], [ 0, %entry ]
  %exitcond28.not = icmp eq i64 %indvars.iv24, %wide.trip.count27
  br i1 %exitcond28.not, label %for.end31, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv24
  %1 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %if.end, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %for.body ]
  %min.0 = phi i32 [ %spec.select, %if.end ], [ %1, %for.body ]
  %cmp3 = icmp slt i64 %indvars.iv, %0
  %tobool = icmp ne i32 %min.0, 0
  %or.cond = select i1 %cmp3, i1 %tobool, i1 false
  br i1 %or.cond, label %if.end, label %for.end

if.end:                                           ; preds = %for.cond2
  %arrayidx8 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv, i64 %indvars.iv24
  %2 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %2, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !18

for.end:                                          ; preds = %for.cond2
  br i1 %tobool, label %for.cond18, label %for.inc29

for.cond18:                                       ; preds = %for.end, %for.body20
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.body20 ], [ 0, %for.end ]
  %exitcond.not = icmp eq i64 %indvars.iv21, %wide.trip.count
  br i1 %exitcond.not, label %for.inc29, label %for.body20

for.body20:                                       ; preds = %for.cond18
  %arrayidx24 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv21, i64 %indvars.iv24
  %3 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %sub = sub nsw i32 %3, %min.0
  store i32 %sub, ptr %arrayidx24, align 4, !tbaa !5
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond18, !llvm.loop !19

for.inc29:                                        ; preds = %for.cond18, %for.end
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  br label %for.cond, !llvm.loop !20

for.end31:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z4dealiPA100_i(i32 noundef %n, ptr noundef captures(none) %a) local_unnamed_addr #4 {
entry:
  %sub = add i32 %n, -1
  %smax = tail call i32 @llvm.smax.i32(i32 %sub, i32 1)
  %smax25 = tail call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count26 = zext nneg i32 %smax25 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.inc10 ], [ 0, %entry ]
  %exitcond27.not = icmp eq i64 %indvars.iv22, %wide.trip.count26
  br i1 %exitcond27.not, label %for.cond13.preheader, label %for.cond1

for.cond13.preheader:                             ; preds = %for.cond
  %smax36 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %wide.trip.count37 = zext nneg i32 %smax36 to i64
  %wide.trip.count31 = zext i32 %sub to i64
  br label %for.cond13

for.cond1:                                        ; preds = %for.cond, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 1, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc10, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx5 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv22, i64 %indvars.iv.next
  %0 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %arrayidx9 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv22, i64 %indvars.iv
  store i32 %0, ptr %arrayidx9, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !21

for.inc10:                                        ; preds = %for.cond1
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.cond, !llvm.loop !22

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc33
  %indvars.iv33 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next34, %for.inc33 ]
  %exitcond38.not = icmp eq i64 %indvars.iv33, %wide.trip.count37
  br i1 %exitcond38.not, label %for.end35, label %for.cond17

for.cond17:                                       ; preds = %for.cond13, %for.body20
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for.body20 ], [ 1, %for.cond13 ]
  %exitcond32.not = icmp eq i64 %indvars.iv28, %wide.trip.count31
  br i1 %exitcond32.not, label %for.inc33, label %for.body20

for.body20:                                       ; preds = %for.cond17
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %arrayidx25 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv.next29, i64 %indvars.iv33
  %1 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %arrayidx29 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv28, i64 %indvars.iv33
  store i32 %1, ptr %arrayidx29, align 4, !tbaa !5
  br label %for.cond17, !llvm.loop !23

for.inc33:                                        ; preds = %for.cond17
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond13, !llvm.loop !24

for.end35:                                        ; preds = %for.cond13
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
