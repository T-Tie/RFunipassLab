; ModuleID = '<stdin>'
source_filename = "/tmp/tmpv9p7zxi2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %str = alloca [10000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %str) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond2

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [10000 x i32], ptr %str, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond, %for.body4
  %2 = phi i32 [ %.pre, %for.body4 ], [ %0, %for.cond ]
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.body4 ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp3 = icmp slt i64 %indvars.iv7, %3
  br i1 %cmp3, label %for.body4, label %for.end11

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [10000 x i32], ptr %str, i64 0, i64 %indvars.iv7
  %4 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %call7 = call noundef i32 @_Z3yinii(i32 noundef %4, i32 noundef 2)
  %call8 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %call7)
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !12

for.end11:                                        ; preds = %for.cond2
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %str) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z3yinii(i32 noundef %m, i32 noundef %t) local_unnamed_addr #4 {
entry:
  %str1 = alloca [10000 x [2 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 80000, ptr nonnull %str1) #7
  %cmp = icmp slt i32 %m, %t
  %cmp1 = icmp ne i32 %m, 1
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %cleanup, label %if.else

if.else:                                          ; preds = %entry
  %cmp2 = icmp eq i32 %m, 1
  br i1 %cmp2, label %cleanup, label %if.else4

if.else4:                                         ; preds = %if.else
  %call = tail call noundef i32 @_Z3zhii(i32 noundef %m)
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %cleanup, label %for.cond

for.cond:                                         ; preds = %if.else4, %for.inc
  %j.0 = phi i32 [ %inc15, %for.inc ], [ %t, %if.else4 ]
  %c.0 = phi i32 [ %c.1, %for.inc ], [ 0, %if.else4 ]
  %cmp8.not = icmp sgt i32 %j.0, %m
  br i1 %cmp8.not, label %for.cond19.preheader, label %for.body

for.cond19.preheader:                             ; preds = %for.cond
  %smax = tail call i32 @llvm.smax.i32(i32 %c.0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond19

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %m, %j.0
  %div = sdiv i32 %m, %j.0
  %cmp9 = icmp eq i32 %rem, 0
  br i1 %cmp9, label %if.then10, label %for.inc

if.then10:                                        ; preds = %for.body
  %idxprom = sext i32 %c.0 to i64
  %arrayidx = getelementptr inbounds [10000 x [2 x i32]], ptr %str1, i64 0, i64 %idxprom
  store i32 %div, ptr %arrayidx, align 8, !tbaa !5
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %arrayidx, i64 4
  store i32 %j.0, ptr %arrayidx14, align 4, !tbaa !5
  %inc = add nsw i32 %c.0, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then10
  %c.1 = phi i32 [ %inc, %if.then10 ], [ %c.0, %for.body ]
  %inc15 = add nsw i32 %j.0, 1
  br label %for.cond, !llvm.loop !13

for.cond19:                                       ; preds = %for.cond19.preheader, %for.body21
  %indvars.iv = phi i64 [ 0, %for.cond19.preheader ], [ %indvars.iv.next, %for.body21 ]
  %x.0 = phi i32 [ 0, %for.cond19.preheader ], [ %add, %for.body21 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %cleanup, label %for.body21

for.body21:                                       ; preds = %for.cond19
  %arrayidx23 = getelementptr inbounds nuw [10000 x [2 x i32]], ptr %str1, i64 0, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx23, align 8, !tbaa !5
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %arrayidx23, i64 4
  %1 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %call28 = tail call noundef i32 @_Z3yinii(i32 noundef %0, i32 noundef %1)
  %add = add nsw i32 %call28, %x.0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond19, !llvm.loop !14

cleanup:                                          ; preds = %for.cond19, %if.else4, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ 1, %if.else4 ], [ %x.0, %for.cond19 ]
  call void @llvm.lifetime.end.p0(i64 80000, ptr nonnull %str1) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z3zhii(i32 noundef %a) local_unnamed_addr #5 {
entry:
  %div = sdiv i32 %a, 2
  %0 = tail call i32 @llvm.smax.i32(i32 %div, i32 1)
  %smax = add nuw nsw i32 %0, 1
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %k.0 = phi i32 [ 2, %entry ], [ %inc, %for.body ]
  %exitcond = icmp eq i32 %k.0, %smax
  br i1 %exitcond, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %rem = srem i32 %a, %k.0
  %cmp1 = icmp eq i32 %rem, 0
  %inc = add nuw nsw i32 %k.0, 1
  br i1 %cmp1, label %for.end, label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.body, %for.cond
  %flag.0 = phi i32 [ 0, %for.cond ], [ 1, %for.body ]
  ret i32 %flag.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
