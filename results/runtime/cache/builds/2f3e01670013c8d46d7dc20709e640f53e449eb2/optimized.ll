; ModuleID = '<stdin>'
source_filename = "/tmp/tmponggu5qd.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [50 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %a, i8 0, i64 200, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  store i32 1, ptr %a, align 16, !tbaa !5
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %1 = add nuw i32 %smax, 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc22, %for.inc21 ]
  %exitcond26 = icmp eq i32 %i.0, %1
  br i1 %exitcond26, label %for.cond24, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, 50
  br i1 %exitcond.not, label %for.cond5, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %arrayidx4 = getelementptr inbounds nuw [50 x i32], ptr %a, i64 0, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %mul = shl nsw i32 %2, 1
  store i32 %mul, ptr %arrayidx4, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.cond5:                                        ; preds = %for.cond1, %for.cond5.backedge
  %indvars.iv21 = phi i64 [ %indvars.iv21.be, %for.cond5.backedge ], [ 0, %for.cond1 ]
  %exitcond25.not = icmp eq i64 %indvars.iv21, 50
  br i1 %exitcond25.not, label %for.inc21, label %for.body7

for.body7:                                        ; preds = %for.cond5
  %arrayidx9 = getelementptr inbounds nuw [50 x i32], ptr %a, i64 0, i64 %indvars.iv21
  %3 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %cmp10 = icmp sgt i32 %3, 9
  br i1 %cmp10, label %if.then, label %for.body7.for.inc18_crit_edge

for.body7.for.inc18_crit_edge:                    ; preds = %for.body7
  %.pre = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond5.backedge

for.cond5.backedge:                               ; preds = %for.body7.for.inc18_crit_edge, %if.then
  %indvars.iv21.be = phi i64 [ %.pre, %for.body7.for.inc18_crit_edge ], [ %4, %if.then ]
  br label %for.cond5, !llvm.loop !12

if.then:                                          ; preds = %for.body7
  %rem = urem i32 %3, 10
  store i32 %rem, ptr %arrayidx9, align 4, !tbaa !5
  %4 = add nuw nsw i64 %indvars.iv21, 1
  %arrayidx16 = getelementptr inbounds nuw [50 x i32], ptr %a, i64 0, i64 %4
  %5 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %add17 = add nsw i32 %5, 1
  store i32 %add17, ptr %arrayidx16, align 4, !tbaa !5
  br label %for.cond5.backedge

for.inc21:                                        ; preds = %for.cond5
  %inc22 = add nuw i32 %i.0, 1
  br label %for.cond, !llvm.loop !13

for.cond24:                                       ; preds = %for.cond, %for.inc44
  %i.1 = phi i32 [ %dec, %for.inc44 ], [ 49, %for.cond ]
  %e.0 = phi i32 [ %e.1, %for.inc44 ], [ 0, %for.cond ]
  %cmp25 = icmp sgt i32 %i.1, -1
  br i1 %cmp25, label %for.body26, label %for.end45

for.body26:                                       ; preds = %for.cond24
  %cmp27.not = icmp eq i32 %e.0, 0
  %idxprom33 = zext nneg i32 %i.1 to i64
  %arrayidx34 = getelementptr inbounds nuw [50 x i32], ptr %a, i64 0, i64 %idxprom33
  %6 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  br i1 %cmp27.not, label %if.end32, label %for.inc44.sink.split

if.end32:                                         ; preds = %for.body26
  %cmp35.not = icmp eq i32 %6, 0
  br i1 %cmp35.not, label %for.inc44, label %for.inc44.sink.split

for.inc44.sink.split:                             ; preds = %if.end32, %for.body26
  %e.1.ph = phi i32 [ %e.0, %for.body26 ], [ 1, %if.end32 ]
  %call31 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %6)
  br label %for.inc44

for.inc44:                                        ; preds = %for.inc44.sink.split, %if.end32
  %e.1 = phi i32 [ 0, %if.end32 ], [ %e.1.ph, %for.inc44.sink.split ]
  %dec = add nsw i32 %i.1, -1
  br label %for.cond24, !llvm.loop !14

for.end45:                                        ; preds = %for.cond24
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
