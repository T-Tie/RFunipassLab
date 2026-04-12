; ModuleID = '<stdin>'
source_filename = "/tmp/tmphhthk0zo.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z6stubidiiPA150_i(i32 noundef %x, i32 noundef %y, ptr noundef %z) local_unnamed_addr #0 {
entry:
  %smax = tail call i32 @llvm.smax.i32(i32 noundef %y, i32 noundef 0) #6
  %smax5 = tail call i32 @llvm.smax.i32(i32 noundef %x, i32 noundef 0) #6
  %wide.trip.count6 = zext nneg i32 %smax5 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %for.inc7 ], [ 0, %entry ]
  %exitcond7.not = icmp eq i64 %indvars.iv2, %wide.trip.count6
  br i1 %exitcond7.not, label %for.end9, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc7, label %for.inc

for.inc:                                          ; preds = %for.cond1
  %arrayidx6 = getelementptr inbounds nuw [150 x i32], ptr %z, i64 %indvars.iv2, i64 %indvars.iv
  %call = tail call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !5

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  br label %for.cond, !llvm.loop !8

for.end9:                                         ; preds = %for.cond
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %a = alloca [150 x [150 x i32]], align 16
  %b = alloca [150 x [150 x i32]], align 16
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 90000, ptr noundef nonnull align 16 captures(none) dereferenceable(90000) %a) #7
  call void @llvm.lifetime.start.p0(i64 noundef 90000, ptr noundef nonnull align 16 captures(none) dereferenceable(90000) %b) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %m) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %p) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %q) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull align 4 %m, ptr noundef nonnull align 4 %n)
  %0 = load i32, ptr %m, align 4, !tbaa !9
  %1 = load i32, ptr %n, align 4, !tbaa !9
  call void @_Z6stubidiiPA150_i(i32 noundef %0, i32 noundef %1, ptr noundef nonnull align 16 dereferenceable(90000) %a)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %q, ptr noundef nonnull %p)
  %2 = load i32, ptr %n, align 4, !tbaa !9
  %3 = load i32, ptr %p, align 4, !tbaa !9
  call void @_Z6stubidiiPA150_i(i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 16 dereferenceable(90000) %b)
  br label %for.cond

for.cond:                                         ; preds = %for.inc29, %entry
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %for.inc29 ], [ 0, %entry ]
  %4 = load i32, ptr %m, align 4, !tbaa !9
  %5 = sext i32 %4 to i64
  %cmp = icmp slt i64 %indvars.iv5, %5
  br i1 %cmp, label %for.cond3, label %for.end31

for.cond3:                                        ; preds = %for.cond, %for.inc26
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %for.inc26 ], [ 0, %for.cond ]
  %6 = load i32, ptr %p, align 4, !tbaa !9
  %7 = sext i32 %6 to i64
  %cmp4 = icmp slt i64 %indvars.iv2, %7
  br i1 %cmp4, label %for.cond6.preheader, label %for.inc29

for.cond6.preheader:                              ; preds = %for.cond3
  %8 = load i32, ptr %n, align 4, !tbaa !9
  %smax = call i32 @llvm.smax.i32(i32 %8, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond6

for.cond6:                                        ; preds = %for.cond6.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond6.preheader ], [ %indvars.iv.next, %for.inc ]
  %z.0 = phi i32 [ 0, %for.cond6.preheader ], [ %add, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond6
  %arrayidx10 = getelementptr inbounds nuw [150 x [150 x i32]], ptr %a, i64 0, i64 %indvars.iv5, i64 %indvars.iv
  %9 = load i32, ptr %arrayidx10, align 4, !tbaa !9
  %arrayidx14 = getelementptr inbounds nuw [150 x [150 x i32]], ptr %b, i64 0, i64 %indvars.iv, i64 %indvars.iv2
  %10 = load i32, ptr %arrayidx14, align 4, !tbaa !9
  %mul = mul nsw i32 %10, %9
  %add = add nsw i32 %mul, %z.0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond6, !llvm.loop !13

for.end:                                          ; preds = %for.cond6
  %sub = add nsw i32 %6, -1
  %11 = sext i32 %sub to i64
  %cmp15 = icmp slt i64 %indvars.iv2, %11
  br i1 %cmp15, label %for.inc26, label %if.else

if.else:                                          ; preds = %for.end
  %12 = zext i32 %sub to i64
  %cmp18 = icmp eq i64 %indvars.iv2, %12
  br i1 %cmp18, label %land.lhs.true, label %if.else23

land.lhs.true:                                    ; preds = %if.else
  %13 = load i32, ptr %m, align 4, !tbaa !9
  %sub19 = add nsw i32 %13, -1
  %14 = sext i32 %sub19 to i64
  %cmp20 = icmp slt i64 %indvars.iv5, %14
  br i1 %cmp20, label %for.inc26, label %if.else23

if.else23:                                        ; preds = %land.lhs.true, %if.else
  br label %for.inc26

for.inc26:                                        ; preds = %land.lhs.true, %for.end, %if.else23
  %.str.2.sink = phi ptr [ @.str, %if.else23 ], [ @.str.2, %for.end ], [ @.str.3, %land.lhs.true ]
  %call16 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.2.sink, i32 noundef %z.0) #8
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1
  br label %for.cond3, !llvm.loop !14

for.inc29:                                        ; preds = %for.cond3
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5, 1
  br label %for.cond, !llvm.loop !15

for.end31:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %q) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %p) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %m) #8
  call void @llvm.lifetime.end.p0(i64 noundef 90000, ptr noundef nonnull captures(none) %b) #8
  call void @llvm.lifetime.end.p0(i64 noundef 90000, ptr noundef nonnull captures(none) %a) #8
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree willreturn }
attributes #7 = { nofree nounwind willreturn }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !6, !7}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C++ TBAA"}
!13 = distinct !{!13, !6, !7}
!14 = distinct !{!14, !6, !7}
!15 = distinct !{!15, !6, !7}
