; ModuleID = '<stdin>'
source_filename = "/tmp/tmptd_z33rl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [300 x i32], align 16
  %flag = alloca [300 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %flag) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1200) %flag, i8 0, i64 1200, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %sub = add nsw i32 %0, -1
  %smax = call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond2

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [300 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2.loopexit:                               ; preds = %for.cond5
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond2, !llvm.loop !12

for.cond2:                                        ; preds = %for.cond2.loopexit, %for.cond2.preheader
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.cond2.loopexit ], [ 0, %for.cond2.preheader ]
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.cond2.loopexit ], [ 1, %for.cond2.preheader ]
  %exitcond.not = icmp eq i64 %indvars.iv26, %wide.trip.count
  br i1 %exitcond.not, label %for.cond25.preheader, label %for.body4

for.cond25.preheader:                             ; preds = %for.cond2
  %smin = call i32 @llvm.smin.i32(i32 %sub, i32 -1)
  br label %for.cond25

for.body4:                                        ; preds = %for.cond2
  %arrayidx12 = getelementptr inbounds nuw [300 x i32], ptr %a, i64 0, i64 %indvars.iv26
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc18, %for.body4
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.inc18 ], [ %indvars.iv21, %for.body4 ]
  %2 = trunc nuw i64 %indvars.iv23 to i32
  %cmp6 = icmp sgt i32 %0, %2
  br i1 %cmp6, label %for.body7, label %for.cond2.loopexit

for.body7:                                        ; preds = %for.cond5
  %arrayidx9 = getelementptr inbounds nuw [300 x i32], ptr %flag, i64 0, i64 %indvars.iv23
  %3 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %3, 0
  br i1 %cmp10, label %land.lhs.true, label %for.inc18

land.lhs.true:                                    ; preds = %for.body7
  %4 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %arrayidx14 = getelementptr inbounds nuw [300 x i32], ptr %a, i64 0, i64 %indvars.iv23
  %5 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %4, %5
  br i1 %cmp15, label %if.then, label %for.inc18

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %arrayidx9, align 4, !tbaa !5
  br label %for.inc18

for.inc18:                                        ; preds = %for.body7, %land.lhs.true, %if.then
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond5, !llvm.loop !13

for.cond25:                                       ; preds = %for.cond25.preheader, %for.inc33
  %i.2 = phi i32 [ %dec, %for.inc33 ], [ %sub, %for.cond25.preheader ]
  %cmp26 = icmp sgt i32 %i.2, -1
  br i1 %cmp26, label %for.body27, label %for.end34

for.body27:                                       ; preds = %for.cond25
  %idxprom28 = zext nneg i32 %i.2 to i64
  %arrayidx29 = getelementptr inbounds nuw [300 x i32], ptr %flag, i64 0, i64 %idxprom28
  %6 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %cmp30 = icmp eq i32 %6, 0
  br i1 %cmp30, label %for.end34, label %for.inc33

for.inc33:                                        ; preds = %for.body27
  %dec = add nsw i32 %i.2, -1
  br label %for.cond25, !llvm.loop !14

for.end34:                                        ; preds = %for.body27, %for.cond25
  %i.2.lcssa = phi i32 [ %i.2, %for.body27 ], [ %smin, %for.cond25 ]
  %smax32 = call i32 @llvm.smax.i32(i32 %i.2.lcssa, i32 0)
  %wide.trip.count33 = zext nneg i32 %smax32 to i64
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc46, %for.end34
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.inc46 ], [ 0, %for.end34 ]
  %exitcond34.not = icmp eq i64 %indvars.iv29, %wide.trip.count33
  br i1 %exitcond34.not, label %for.end48, label %for.body37

for.body37:                                       ; preds = %for.cond35
  %arrayidx39 = getelementptr inbounds nuw [300 x i32], ptr %flag, i64 0, i64 %indvars.iv29
  %7 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  %cmp40 = icmp eq i32 %7, 0
  br i1 %cmp40, label %if.then41, label %for.inc46

if.then41:                                        ; preds = %for.body37
  %arrayidx43 = getelementptr inbounds nuw [300 x i32], ptr %a, i64 0, i64 %indvars.iv29
  %8 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %call44 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %8)
  br label %for.inc46

for.inc46:                                        ; preds = %for.body37, %if.then41
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond35, !llvm.loop !15

for.end48:                                        ; preds = %for.cond35
  %idxprom49 = sext i32 %i.2.lcssa to i64
  %arrayidx50 = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 %idxprom49
  %9 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %call51 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %9)
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %flag) #6
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %a) #6
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

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
!15 = distinct !{!15, !10, !11}
