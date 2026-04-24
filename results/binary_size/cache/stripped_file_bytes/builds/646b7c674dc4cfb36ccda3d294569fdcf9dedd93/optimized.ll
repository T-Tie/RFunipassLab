; ModuleID = '<stdin>'
source_filename = "/tmp/tmpuax06ahv.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z3maxii(i32 noundef %x, i32 noundef %y) local_unnamed_addr #0 {
entry:
  %x.y = tail call i32 @llvm.smax.i32(i32 %x, i32 %y)
  ret i32 %x.y
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %num = alloca [30 x i32], align 16
  %dp = alloca [30 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %num) #7
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %dp) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %dp, i8 0, i64 120, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv, %1
  br i1 %cmp.not, label %for.cond5.preheader, label %for.body

for.cond5.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 1)
  %2 = add nuw i32 %smax, 1
  %wide.trip.count23 = zext i32 %2 to i64
  br label %for.cond5

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [30 x i32], ptr %num, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %arrayidx3 = getelementptr inbounds nuw [30 x i32], ptr %dp, i64 0, i64 %indvars.iv
  store i32 1, ptr %arrayidx3, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond5:                                        ; preds = %for.cond5.preheader, %for.cond.cleanup11
  %indvars.iv19 = phi i64 [ 2, %for.cond5.preheader ], [ %indvars.iv.next20, %for.cond.cleanup11 ]
  %r.0 = phi i32 [ 0, %for.cond5.preheader ], [ %r.1, %for.cond.cleanup11 ]
  %exitcond24 = icmp eq i64 %indvars.iv19, %wide.trip.count23
  br i1 %exitcond24, label %for.cond.cleanup7, label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %for.cond5
  %arrayidx14 = getelementptr inbounds nuw [30 x i32], ptr %num, i64 0, i64 %indvars.iv19
  %3 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %arrayidx19 = getelementptr inbounds nuw [30 x i32], ptr %dp, i64 0, i64 %indvars.iv19
  br label %for.cond9

for.cond.cleanup7:                                ; preds = %for.cond5
  %call38 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %r.0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %dp) #7
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %num) #7
  ret i32 0

for.cond9:                                        ; preds = %for.cond9.preheader, %for.inc32
  %indvars.iv16 = phi i64 [ 1, %for.cond9.preheader ], [ %indvars.iv.next17, %for.inc32 ]
  %r.1 = phi i32 [ %r.0, %for.cond9.preheader ], [ %r.2, %for.inc32 ]
  %exitcond.not = icmp eq i64 %indvars.iv16, %indvars.iv19
  br i1 %exitcond.not, label %for.cond.cleanup11, label %for.body12

for.cond.cleanup11:                               ; preds = %for.cond9
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  br label %for.cond5, !llvm.loop !12

for.body12:                                       ; preds = %for.cond9
  %arrayidx16 = getelementptr inbounds nuw [30 x i32], ptr %num, i64 0, i64 %indvars.iv16
  %4 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %cmp17.not = icmp sgt i32 %3, %4
  br i1 %cmp17.not, label %for.inc32, label %if.then

if.then:                                          ; preds = %for.body12
  %5 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %arrayidx21 = getelementptr inbounds nuw [30 x i32], ptr %dp, i64 0, i64 %indvars.iv16
  %6 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %add = add nsw i32 %6, 1
  %x.y.i = call noundef i32 @llvm.smax.i32(i32 %5, i32 %add)
  store i32 %x.y.i, ptr %arrayidx19, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %x.y.i, i32 %r.1)
  br label %for.inc32

for.inc32:                                        ; preds = %if.then, %for.body12
  %r.2 = phi i32 [ %r.1, %for.body12 ], [ %spec.select, %if.then ]
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond9, !llvm.loop !13
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
