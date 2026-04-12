; ModuleID = '<stdin>'
source_filename = "/tmp/tmpz8_s_5eh.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [100 x [100 x i32]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(40000) %a, i8 noundef 0, i64 noundef 40000, i1 noundef false) #6
  store i32 2, ptr %a, align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = phi i32 [ %2, %for.inc7 ], [ %.pre, %entry ]
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.inc7 ], [ 0, %entry ]
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv19, %1
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count30 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.inc
  %2 = phi i32 [ %.pre32, %for.inc ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv19, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre32 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc28
  %indvars.iv26 = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next27, %for.inc28 ]
  %n1.0 = phi i32 [ -1, %for.cond10.preheader ], [ %n1.1, %for.inc28 ]
  %n2.0 = phi i32 [ -1, %for.cond10.preheader ], [ %n2.1, %for.inc28 ]
  %n3.0 = phi i32 [ undef, %for.cond10.preheader ], [ %n3.1, %for.inc28 ]
  %n4.0 = phi i32 [ undef, %for.cond10.preheader ], [ %n4.1, %for.inc28 ]
  %exitcond31.not = icmp eq i64 %indvars.iv26, %wide.trip.count30
  br i1 %exitcond31.not, label %for.end30, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond10
  %4 = trunc nuw nsw i64 %indvars.iv26 to i32
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc25
  %indvars.iv22 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next23, %for.inc25 ]
  %n1.1 = phi i32 [ %n1.0, %for.cond13.preheader ], [ %n1.3, %for.inc25 ]
  %n2.1 = phi i32 [ %n2.0, %for.cond13.preheader ], [ %n2.3, %for.inc25 ]
  %n3.1 = phi i32 [ %n3.0, %for.cond13.preheader ], [ %n3.3, %for.inc25 ]
  %n4.1 = phi i32 [ %n4.0, %for.cond13.preheader ], [ %n4.3, %for.inc25 ]
  %exitcond.not = icmp eq i64 %indvars.iv22, %wide.trip.count
  br i1 %exitcond.not, label %for.inc28, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %arrayidx19 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv26, i64 %indvars.iv22
  %5 = load i32, ptr %arrayidx19, align 4, !tbaa !5, !invariant.load !13
  %cmp20 = icmp eq i32 %5, 0
  br i1 %cmp20, label %if.then, label %for.inc25

if.then:                                          ; preds = %for.body15
  %cmp21 = icmp sgt i32 %n1.1, -1
  %cmp22 = icmp sgt i32 %n2.1, -1
  %or.cond = select i1 %cmp21, i1 true, i1 %cmp22
  %spec.select = select i1 %or.cond, i32 %n1.1, i32 %4
  %6 = trunc nuw nsw i64 %indvars.iv22 to i32
  %spec.select17 = select i1 %or.cond, i32 %n2.1, i32 %6
  br label %for.inc25

for.inc25:                                        ; preds = %if.then, %for.body15
  %n1.3 = phi i32 [ %n1.1, %for.body15 ], [ %spec.select, %if.then ]
  %n2.3 = phi i32 [ %n2.1, %for.body15 ], [ %spec.select17, %if.then ]
  %n3.3 = phi i32 [ %n3.1, %for.body15 ], [ %4, %if.then ]
  %n4.3 = phi i32 [ %n4.1, %for.body15 ], [ %6, %if.then ]
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.cond13, !llvm.loop !14

for.inc28:                                        ; preds = %for.cond13
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond10, !llvm.loop !15

for.end30:                                        ; preds = %for.cond10
  %7 = xor i32 %n1.0, -1
  %sub31 = add i32 %n3.0, %7
  %8 = xor i32 %n2.0, -1
  %sub33 = add i32 %n4.0, %8
  %mul = mul nsw i32 %sub33, %sub31
  %call34 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %a) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind }
attributes #6 = { nofree }
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
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
