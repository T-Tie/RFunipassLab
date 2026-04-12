; ModuleID = '<stdin>'
source_filename = "/tmp/tmpeao8e25m.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [20001 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 80004, ptr nonnull %a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80004) %a, i8 0, i64 80004, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond2

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [20001 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond5, %for.cond
  %2 = phi i32 [ %0, %for.cond ], [ %5, %for.cond5 ]
  %indvars.iv29 = phi i64 [ 0, %for.cond ], [ %indvars.iv.next30, %for.cond5 ]
  %n.promoted24 = phi i32 [ %0, %for.cond ], [ %n.promoted23, %for.cond5 ]
  %3 = sext i32 %n.promoted24 to i64
  %cmp3 = icmp slt i64 %indvars.iv29, %3
  br i1 %cmp3, label %for.body4, label %for.cond31

for.body4:                                        ; preds = %for.cond2
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %arrayidx11 = getelementptr inbounds nuw [20001 x i32], ptr %a, i64 0, i64 %indvars.iv29
  %4 = trunc nuw i64 %indvars.iv.next30 to i32
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc25, %for.body4
  %5 = phi i32 [ %2, %for.body4 ], [ %10, %for.inc25 ]
  %n.promoted23 = phi i32 [ %n.promoted24, %for.body4 ], [ %n.promoted22, %for.inc25 ]
  %dec20 = phi i32 [ %n.promoted24, %for.body4 ], [ %dec19, %for.inc25 ]
  %l.0 = phi i32 [ %4, %for.body4 ], [ %inc26, %for.inc25 ]
  %cmp6 = icmp slt i32 %l.0, %dec20
  br i1 %cmp6, label %for.body7, label %for.cond2, !llvm.loop !12

for.body7:                                        ; preds = %for.cond5
  %idxprom8 = sext i32 %l.0 to i64
  %arrayidx9 = getelementptr inbounds [20001 x i32], ptr %a, i64 0, i64 %idxprom8
  %6 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %7 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %6, %7
  br i1 %cmp12, label %for.cond14.preheader, label %for.inc25

for.cond14.preheader:                             ; preds = %for.body7
  %8 = add nsw i32 %dec20, -1
  %wide.trip.count = sext i32 %8 to i64
  br label %for.cond14

for.cond14:                                       ; preds = %for.cond14.preheader, %for.body16
  %indvars.iv26 = phi i64 [ %idxprom8, %for.cond14.preheader ], [ %indvars.iv.next27, %for.body16 ]
  %exitcond.not = icmp eq i64 %indvars.iv26, %wide.trip.count
  br i1 %exitcond.not, label %for.end23, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %indvars.iv.next27 = add nsw i64 %indvars.iv26, 1
  %arrayidx18 = getelementptr inbounds [20001 x i32], ptr %a, i64 0, i64 %indvars.iv.next27
  %9 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %arrayidx20 = getelementptr inbounds [20001 x i32], ptr %a, i64 0, i64 %indvars.iv26
  store i32 %9, ptr %arrayidx20, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !13

for.end23:                                        ; preds = %for.cond14
  %sub24 = add nsw i32 %l.0, -1
  store i32 %8, ptr %n, align 4, !tbaa !5
  br label %for.inc25

for.inc25:                                        ; preds = %for.body7, %for.end23
  %10 = phi i32 [ %8, %for.end23 ], [ %5, %for.body7 ]
  %n.promoted22 = phi i32 [ %8, %for.end23 ], [ %n.promoted23, %for.body7 ]
  %dec19 = phi i32 [ %8, %for.end23 ], [ %dec20, %for.body7 ]
  %l.1 = phi i32 [ %sub24, %for.end23 ], [ %l.0, %for.body7 ]
  %inc26 = add nsw i32 %l.1, 1
  br label %for.cond5, !llvm.loop !14

for.cond31:                                       ; preds = %for.cond2, %for.inc43
  %11 = phi i32 [ %.pre, %for.inc43 ], [ %2, %for.cond2 ]
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.inc43 ], [ 0, %for.cond2 ]
  %12 = sext i32 %11 to i64
  %cmp32 = icmp slt i64 %indvars.iv32, %12
  br i1 %cmp32, label %for.body33, label %for.end45

for.body33:                                       ; preds = %for.cond31
  %cmp34 = icmp eq i64 %indvars.iv32, 0
  br i1 %cmp34, label %if.then35, label %if.else

if.then35:                                        ; preds = %for.body33
  %13 = load i32, ptr %a, align 16, !tbaa !5
  %call38 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %13)
  br label %for.inc43

if.else:                                          ; preds = %for.body33
  %arrayidx40 = getelementptr inbounds nuw [20001 x i32], ptr %a, i64 0, i64 %indvars.iv32
  %14 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %call41 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %14)
  br label %for.inc43

for.inc43:                                        ; preds = %if.then35, %if.else
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond31, !llvm.loop !15

for.end45:                                        ; preds = %for.cond31
  call void @llvm.lifetime.end.p0(i64 80004, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
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

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
