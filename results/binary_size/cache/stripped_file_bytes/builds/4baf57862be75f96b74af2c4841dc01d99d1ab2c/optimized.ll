; ModuleID = '<stdin>'
source_filename = "/tmp/tmprspt9qvo.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [1000 x [1000 x i32]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4000000, ptr nonnull %a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4000000) %a, i8 0, i64 4000000, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.end ], [ 1, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv22, %1
  br i1 %cmp.not, label %for.cond12.preheader, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond
  %2 = add nsw i64 %indvars.iv22, -1
  br label %for.cond1

for.cond12.preheader:                             ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %3 = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %3 to i64
  br label %for.cond12

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %4 = phi i32 [ %0, %for.cond1.preheader ], [ %.pre, %for.body3 ]
  %indvars.iv = phi i64 [ 1, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %5 = sext i32 %4 to i64
  %cmp2.not = icmp sgt i64 %indvars.iv, %5
  br i1 %cmp2.not, label %for.end, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %6 = add nsw i64 %indvars.iv, -1
  %arrayidx6 = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %2, i64 %6
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  %putchar = call i32 @putchar(i32 10)
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.cond, !llvm.loop !12

for.cond12:                                       ; preds = %for.cond12.preheader, %for.inc29
  %indvars.iv31 = phi i64 [ 1, %for.cond12.preheader ], [ %indvars.iv.next32, %for.inc29 ]
  %m.0 = phi i32 [ 0, %for.cond12.preheader ], [ %m.1, %for.inc29 ]
  %cmp13 = icmp eq i32 %m.0, 0
  br i1 %cmp13, label %for.cond15.preheader, label %for.cond32.preheader

for.cond15.preheader:                             ; preds = %for.cond12
  %7 = add nsw i64 %indvars.iv31, -1
  br label %for.cond15

for.cond32.preheader:                             ; preds = %for.cond12
  %wide.trip.count39 = zext i32 %3 to i64
  br label %for.cond32

for.cond15:                                       ; preds = %for.cond15.preheader, %for.body17
  %indvars.iv26 = phi i64 [ 1, %for.cond15.preheader ], [ %indvars.iv.next27, %for.body17 ]
  %m.1 = phi i32 [ 0, %for.cond15.preheader ], [ %spec.select, %for.body17 ]
  %exitcond = icmp eq i64 %indvars.iv26, %wide.trip.count
  br i1 %exitcond, label %for.inc29, label %for.body17

for.body17:                                       ; preds = %for.cond15
  %8 = add nsw i64 %indvars.iv26, -1
  %arrayidx23 = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %7, i64 %8
  %9 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %cmp24 = icmp eq i32 %9, 0
  %inc25 = zext i1 %cmp24 to i32
  %spec.select = add nuw nsw i32 %m.1, %inc25
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond15, !llvm.loop !13

for.inc29:                                        ; preds = %for.cond15
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  br label %for.cond12, !llvm.loop !14

for.cond32:                                       ; preds = %for.cond32.preheader, %for.inc51
  %indvars.iv41 = phi i64 [ 1, %for.cond32.preheader ], [ %indvars.iv.next42, %for.inc51 ]
  %p.0 = phi i32 [ 0, %for.cond32.preheader ], [ %p.1, %for.inc51 ]
  %cmp33 = icmp eq i32 %p.0, 0
  br i1 %cmp33, label %for.cond35.preheader, label %for.end53

for.cond35.preheader:                             ; preds = %for.cond32
  %10 = add nsw i64 %indvars.iv41, -1
  br label %for.cond35

for.cond35:                                       ; preds = %for.cond35.preheader, %for.body37
  %indvars.iv35 = phi i64 [ 1, %for.cond35.preheader ], [ %indvars.iv.next36, %for.body37 ]
  %p.1 = phi i32 [ 0, %for.cond35.preheader ], [ %spec.select19, %for.body37 ]
  %exitcond40 = icmp eq i64 %indvars.iv35, %wide.trip.count39
  br i1 %exitcond40, label %for.inc51, label %for.body37

for.body37:                                       ; preds = %for.cond35
  %11 = add nsw i64 %indvars.iv35, -1
  %arrayidx43 = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %11, i64 %10
  %12 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %cmp44 = icmp eq i32 %12, 0
  %inc46 = zext i1 %cmp44 to i32
  %spec.select19 = add nuw nsw i32 %p.1, %inc46
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond35, !llvm.loop !15

for.inc51:                                        ; preds = %for.cond35
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br label %for.cond32, !llvm.loop !16

for.end53:                                        ; preds = %for.cond32
  %sub54 = add nsw i32 %p.0, -2
  %sub55 = add nsw i32 %m.0, -2
  %mul = mul nsw i32 %sub54, %sub55
  %call56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 4000000, ptr nonnull %a) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
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
