; ModuleID = '<stdin>'
source_filename = "/tmp/tmpm3x_xubi.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %m = alloca [26 x i32], align 16
  %k = alloca i32, align 4
  %h = alloca [26 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %m) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %k) #7
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %h) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %k)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv, %1
  br i1 %cmp.not, label %for.cond2.preheader, label %for.body

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %2 = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %2 to i64
  br label %for.cond2

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [26 x i32], ptr %h, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.body4
  %indvars.iv8 = phi i64 [ 1, %for.cond2.preheader ], [ %indvars.iv.next9, %for.body4 ]
  %exitcond = icmp eq i64 %indvars.iv8, %wide.trip.count
  br i1 %exitcond, label %for.end10, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %3 = trunc nuw nsw i64 %indvars.iv8 to i32
  %call5 = call noundef i32 @_Z3cmpiiPi(i32 noundef %3, i32 noundef %0, ptr noundef nonnull %h)
  %arrayidx7 = getelementptr inbounds nuw [26 x i32], ptr %m, i64 0, i64 %indvars.iv8
  store i32 %call5, ptr %arrayidx7, align 4, !tbaa !5
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  br label %for.cond2, !llvm.loop !12

for.end10:                                        ; preds = %for.cond2
  %arrayidx.i = getelementptr inbounds nuw i8, ptr %m, i64 4
  %4 = load i32, ptr %arrayidx.i, align 4, !tbaa !5
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %for.end10
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 1, %for.end10 ]
  %big.0.i = phi i32 [ %spec.select.i, %for.body.i ], [ %4, %for.end10 ]
  %exitcond.i = icmp eq i64 %indvars.iv.i, %wide.trip.count
  br i1 %exitcond.i, label %_Z3maxPii.exit, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx1.i = getelementptr inbounds nuw i32, ptr %m, i64 %indvars.iv.i
  %5 = load i32, ptr %arrayidx1.i, align 4, !tbaa !5
  %spec.select.i = call i32 @llvm.smax.i32(i32 %big.0.i, i32 %5)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond.i, !llvm.loop !13

_Z3maxPii.exit:                                   ; preds = %for.cond.i
  %call13 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %big.0.i)
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %h) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %k) #7
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %m) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 -2147483647, -2147483648) i32 @_Z3cmpiiPi(i32 noundef %i, i32 noundef %k, ptr noundef readonly captures(none) %h) local_unnamed_addr #3 {
entry:
  %b = alloca [26 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %b) #7
  %cmp = icmp eq i32 %i, %k
  br i1 %cmp, label %cleanup, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %idxprom = sext i32 %i to i64
  %arrayidx = getelementptr inbounds i32, ptr %h, i64 %idxprom
  %smax = tail call i32 @llvm.smax.i32(i32 %k, i32 %i)
  %wide.trip.count = sext i32 %smax to i64
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %if.then5, %for.cond.preheader
  %indvars.iv.ph = phi i64 [ %indvars.iv.next, %if.then5 ], [ %idxprom, %for.cond.preheader ]
  %t.0.ph = phi i32 [ %inc, %if.then5 ], [ 1, %for.cond.preheader ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.cond.outer ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %arrayidx3 = getelementptr inbounds i32, ptr %h, i64 %indvars.iv.next
  %1 = load i32, ptr %arrayidx3, align 4, !tbaa !5
  %cmp4.not = icmp slt i32 %0, %1
  br i1 %cmp4.not, label %for.cond, label %if.then5, !llvm.loop !14

if.then5:                                         ; preds = %for.body
  %2 = trunc nsw i64 %indvars.iv.next to i32
  %call = tail call noundef i32 @_Z3cmpiiPi(i32 noundef %2, i32 noundef %k, ptr noundef nonnull %h)
  %idxprom6 = zext nneg i32 %t.0.ph to i64
  %arrayidx7 = getelementptr inbounds nuw [26 x i32], ptr %b, i64 0, i64 %idxprom6
  store i32 %call, ptr %arrayidx7, align 4, !tbaa !5
  %inc = add nuw nsw i32 %t.0.ph, 1
  br label %for.cond.outer, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %cmp10 = icmp eq i32 %t.0.ph, 1
  br i1 %cmp10, label %cleanup, label %if.end12

if.end12:                                         ; preds = %for.end
  %arrayidx.i = getelementptr inbounds nuw i8, ptr %b, i64 4
  %3 = load i32, ptr %arrayidx.i, align 4, !tbaa !5
  %wide.trip.count.i = zext nneg i32 %t.0.ph to i64
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i, %if.end12
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ 1, %if.end12 ]
  %big.0.i = phi i32 [ %spec.select.i, %for.body.i ], [ %3, %if.end12 ]
  %exitcond.i = icmp eq i64 %indvars.iv.i, %wide.trip.count.i
  br i1 %exitcond.i, label %_Z3maxPii.exit, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx1.i = getelementptr inbounds nuw i32, ptr %b, i64 %indvars.iv.i
  %4 = load i32, ptr %arrayidx1.i, align 4, !tbaa !5
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %big.0.i, i32 %4)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %for.cond.i, !llvm.loop !13

_Z3maxPii.exit:                                   ; preds = %for.cond.i
  %add14 = add nsw i32 %big.0.i, 1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry, %_Z3maxPii.exit
  %retval.0 = phi i32 [ %add14, %_Z3maxPii.exit ], [ 1, %entry ], [ 1, %for.end ]
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %b) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z3maxPii(ptr noundef readonly captures(none) %m, i32 noundef %k) local_unnamed_addr #4 {
entry:
  %arrayidx = getelementptr inbounds nuw i8, ptr %m, i64 4
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %smax = tail call i32 @llvm.smax.i32(i32 %k, i32 0)
  %1 = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %1 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %big.0 = phi i32 [ %spec.select, %for.body ], [ %0, %entry ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds nuw i32, ptr %m, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smax.i32(i32 %big.0, i32 %2)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  ret i32 %big.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
