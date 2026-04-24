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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 captures(none) dereferenceable(40000) %a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 captures(none) dereferenceable(40000) %a, i8 noundef 0, i64 noundef 40000, i1 noundef false) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
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
  %indvars.iv2 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next3, %for.inc7 ]
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv2, %2
  br i1 %cmp, label %for.cond1, label %while.cond10

for.cond1:                                        ; preds = %for.cond, %for.inc
  %3 = phi i32 [ %.pre5, %for.inc ], [ %1, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %4 = sext i32 %3 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv2, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre5 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  br label %for.cond, !llvm.loop !12

while.cond10:                                     ; preds = %for.cond, %while.body12
  %sum.0 = phi i32 [ %add17, %while.body12 ], [ 0, %for.cond ]
  %p.0.in = phi i32 [ %p.0, %while.body12 ], [ %1, %for.cond ]
  %p.0 = add nsw i32 %p.0.in, -1
  %tobool11.not = icmp eq i32 %p.0, 0
  br i1 %tobool11.not, label %while.end, label %while.body12

while.body12:                                     ; preds = %while.cond10
  call void @_Z2m1iPA100_i(i32 noundef %p.0.in, ptr nofree noundef nonnull align 16 captures(none) dereferenceable(40000) %a) #8
  call void @_Z2m2iPA100_i(i32 noundef %p.0.in, ptr nofree noundef nonnull align 16 captures(none) dereferenceable(40000) %a) #8
  %5 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %add17 = add nsw i32 %5, %sum.0
  call void @_Z4dealiPA100_i(i32 noundef %p.0.in, ptr nofree noundef nonnull align 16 captures(none) dereferenceable(40000) %a) #8
  br label %while.cond10, !llvm.loop !13

while.end:                                        ; preds = %while.cond10
  %call21 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %sum.0)
  br label %while.cond, !llvm.loop !14

while.end22:                                      ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull align 16 captures(none) dereferenceable(40000) %a) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z2m1iPA100_i(i32 noundef %n, ptr nofree noundef captures(none) %a) local_unnamed_addr #4 {
entry:
  %cmp = icmp sgt i32 %n, 0
  br i1 %cmp, label %entry.split, label %for.end31

entry.split:                                      ; preds = %entry
  %0 = load i32, ptr %a, align 4, !tbaa !5, !invariant.load !15
  %wide.trip.count = zext nneg i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %if.end28, %entry.split
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %if.end28 ], [ 0, %entry.split ]
  br label %for.cond2

for.cond2:                                        ; preds = %if.end, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %for.cond ]
  %min.0 = phi i32 [ %spec.select, %if.end ], [ %0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %tobool.not = icmp eq i32 %min.0, 0
  br i1 %tobool.not, label %if.end28, label %if.end

if.end:                                           ; preds = %for.body4
  %arrayidx8 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv15, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx8, align 4, !tbaa !5, !invariant.load !15
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !16

for.end:                                          ; preds = %for.cond2
  %tobool16.not = icmp eq i32 %min.0, 0
  br i1 %tobool16.not, label %if.end28, label %for.cond18

for.cond18:                                       ; preds = %for.end, %for.inc25
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.inc25 ], [ 0, %for.end ]
  %exitcond14.not = icmp eq i64 %indvars.iv10, %wide.trip.count
  br i1 %exitcond14.not, label %if.end28, label %for.inc25

for.inc25:                                        ; preds = %for.cond18
  %arrayidx24 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv15, i64 %indvars.iv10
  %2 = load i32, ptr %arrayidx24, align 4, !tbaa !5, !invariant.load !15
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx24, align 4, !tbaa !5
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %for.cond18, !llvm.loop !17

if.end28:                                         ; preds = %for.body4, %for.cond18, %for.end
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  br label %for.cond

for.end31:                                        ; preds = %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z2m2iPA100_i(i32 noundef %n, ptr nofree noundef captures(none) %a) local_unnamed_addr #4 {
entry:
  %cmp = icmp sgt i32 %n, 0
  br i1 %cmp, label %entry.split, label %for.end31

entry.split:                                      ; preds = %entry
  %0 = load i32, ptr %a, align 4, !tbaa !5, !invariant.load !15
  %wide.trip.count = zext nneg i32 %n to i64
  br label %for.cond

for.cond:                                         ; preds = %if.end28, %entry.split
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %if.end28 ], [ 0, %entry.split ]
  br label %for.cond2

for.cond2:                                        ; preds = %if.end, %for.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %for.cond ]
  %min.0 = phi i32 [ %spec.select, %if.end ], [ %0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %tobool.not = icmp eq i32 %min.0, 0
  br i1 %tobool.not, label %if.end28, label %if.end

if.end:                                           ; preds = %for.body4
  %arrayidx8 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv, i64 %indvars.iv15
  %1 = load i32, ptr %arrayidx8, align 4, !tbaa !5, !invariant.load !15
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !18

for.end:                                          ; preds = %for.cond2
  %tobool16.not = icmp eq i32 %min.0, 0
  br i1 %tobool16.not, label %if.end28, label %for.cond18

for.cond18:                                       ; preds = %for.end, %for.inc25
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.inc25 ], [ 0, %for.end ]
  %exitcond14.not = icmp eq i64 %indvars.iv10, %wide.trip.count
  br i1 %exitcond14.not, label %if.end28, label %for.inc25

for.inc25:                                        ; preds = %for.cond18
  %arrayidx24 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv10, i64 %indvars.iv15
  %2 = load i32, ptr %arrayidx24, align 4, !tbaa !5, !invariant.load !15
  %sub = sub nsw i32 %2, %min.0
  store i32 %sub, ptr %arrayidx24, align 4, !tbaa !5
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %for.cond18, !llvm.loop !19

if.end28:                                         ; preds = %for.body4, %for.cond18, %for.end
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  br label %for.cond

for.end31:                                        ; preds = %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z4dealiPA100_i(i32 noundef %n, ptr nofree noundef captures(none) %a) local_unnamed_addr #4 {
entry:
  %cmp = icmp sgt i32 %n, 0
  br i1 %cmp, label %for.cond.preheader, label %for.end35

for.cond.preheader:                               ; preds = %entry
  %sub = add nsw i32 %n, -1
  %0 = tail call i32 @llvm.umax.i32(i32 %sub, i32 noundef 1)
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.end
  %indvars.iv8 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next9, %for.end ]
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ 1, %for.cond ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx5 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv8, i64 %indvars.iv.next
  %1 = load i32, ptr %arrayidx5, align 4, !tbaa !5, !invariant.load !15
  %arrayidx9 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv8, i64 %indvars.iv
  store i32 %1, ptr %arrayidx9, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !20

for.end:                                          ; preds = %for.cond1
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  br label %for.cond

for.end35:                                        ; preds = %entry
  ret void
}

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nofree }
attributes #8 = { nounwind }

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
!15 = !{}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
