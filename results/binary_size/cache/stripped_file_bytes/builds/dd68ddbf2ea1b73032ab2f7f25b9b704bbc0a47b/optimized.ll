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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %str) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp6 = icmp sgt i32 %0, 0
  br i1 %cmp6, label %for.body, label %for.end11

for.cond2.preheader:                              ; preds = %for.body
  %1 = icmp sgt i32 %2, 0
  br i1 %1, label %for.body4, label %for.end11

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [10000 x i32], ptr %str, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %3
  br i1 %cmp, label %for.body, label %for.cond2.preheader, !llvm.loop !9

for.body4:                                        ; preds = %for.cond2.preheader, %for.body4
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %for.body4 ], [ 0, %for.cond2.preheader ]
  %arrayidx6 = getelementptr inbounds nuw [10000 x i32], ptr %str, i64 0, i64 %indvars.iv11
  %4 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %call7 = call noundef i32 @_Z3yinii(i32 noundef %4, i32 noundef 2)
  %call8 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %call7)
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %cmp3 = icmp slt i64 %indvars.iv.next12, %6
  br i1 %cmp3, label %for.body4, label %for.end11, !llvm.loop !12

for.end11:                                        ; preds = %for.body4, %entry, %for.cond2.preheader
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %str) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
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
  call void @llvm.lifetime.start.p0(i64 80000, ptr nonnull %str1) #6
  %cmp = icmp slt i32 %m, %t
  %cmp1 = icmp ne i32 %m, 1
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %cleanup, label %if.else

if.else:                                          ; preds = %entry
  %cmp.not4.i = icmp slt i32 %m, 4
  br i1 %cmp.not4.i, label %cleanup, label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.else
  %div78.i = lshr i32 %m, 1
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %k.05.i, 1
  %exitcond.not.i = icmp eq i32 %k.05.i, %div78.i
  br i1 %exitcond.not.i, label %cleanup, label %for.body.i, !llvm.loop !13

for.body.i:                                       ; preds = %for.cond.i, %for.body.preheader.i
  %k.05.i = phi i32 [ %inc.i, %for.cond.i ], [ 2, %for.body.preheader.i ]
  %rem.i = urem i32 %m, %k.05.i
  %cmp1.i = icmp eq i32 %rem.i, 0
  br i1 %cmp1.i, label %for.cond.preheader, label %for.cond.i

for.cond.preheader:                               ; preds = %for.body.i
  br i1 %cmp, label %cleanup, label %for.body

for.cond19.preheader:                             ; preds = %for.inc
  %cmp2027 = icmp sgt i32 %c.1, 0
  br i1 %cmp2027, label %for.body21.preheader, label %cleanup

for.body21.preheader:                             ; preds = %for.cond19.preheader
  %wide.trip.count = zext nneg i32 %c.1 to i64
  br label %for.body21

for.body:                                         ; preds = %for.cond.preheader, %for.inc
  %c.026 = phi i32 [ %c.1, %for.inc ], [ 0, %for.cond.preheader ]
  %j.025 = phi i32 [ %inc15, %for.inc ], [ %t, %for.cond.preheader ]
  %rem = srem i32 %m, %j.025
  %div = sdiv i32 %m, %j.025
  %cmp9 = icmp eq i32 %rem, 0
  br i1 %cmp9, label %if.then10, label %for.inc

if.then10:                                        ; preds = %for.body
  %idxprom = sext i32 %c.026 to i64
  %arrayidx = getelementptr inbounds [10000 x [2 x i32]], ptr %str1, i64 0, i64 %idxprom
  store i32 %div, ptr %arrayidx, align 8, !tbaa !5
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %arrayidx, i64 4
  store i32 %j.025, ptr %arrayidx14, align 4, !tbaa !5
  %inc = add nsw i32 %c.026, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then10
  %c.1 = phi i32 [ %inc, %if.then10 ], [ %c.026, %for.body ]
  %inc15 = add i32 %j.025, 1
  %exitcond.not = icmp eq i32 %j.025, %m
  br i1 %exitcond.not, label %for.cond19.preheader, label %for.body, !llvm.loop !14

for.body21:                                       ; preds = %for.body21.preheader, %for.body21
  %indvars.iv = phi i64 [ 0, %for.body21.preheader ], [ %indvars.iv.next, %for.body21 ]
  %x.029 = phi i32 [ 0, %for.body21.preheader ], [ %add, %for.body21 ]
  %arrayidx23 = getelementptr inbounds nuw [10000 x [2 x i32]], ptr %str1, i64 0, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx23, align 8, !tbaa !5
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %arrayidx23, i64 4
  %1 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %call28 = tail call noundef i32 @_Z3yinii(i32 noundef %0, i32 noundef %1)
  %add = add nsw i32 %call28, %x.029
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond33.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond33.not, label %cleanup, label %for.body21, !llvm.loop !15

cleanup:                                          ; preds = %for.cond.i, %for.body21, %for.cond.preheader, %for.cond19.preheader, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ 0, %for.cond19.preheader ], [ 0, %for.cond.preheader ], [ %add, %for.body21 ], [ 1, %for.cond.i ]
  call void @llvm.lifetime.end.p0(i64 80000, ptr nonnull %str1) #6
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z3zhii(i32 noundef %a) local_unnamed_addr #5 {
entry:
  %cmp.not4 = icmp slt i32 %a, 4
  br i1 %cmp.not4, label %for.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %div78 = lshr i32 %a, 1
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %k.05, 1
  %exitcond.not = icmp eq i32 %k.05, %div78
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !13

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %k.05 = phi i32 [ %inc, %for.cond ], [ 2, %for.body.preheader ]
  %rem = urem i32 %a, %k.05
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %for.end, label %for.cond

for.end:                                          ; preds = %for.cond, %for.body, %entry
  %flag.0 = phi i32 [ 0, %entry ], [ 1, %for.body ], [ 0, %for.cond ]
  ret i32 %flag.0
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
