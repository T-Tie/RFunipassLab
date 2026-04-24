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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %flag) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1200) %flag, i8 0, i64 1200, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp20 = icmp sgt i32 %0, 0
  br i1 %cmp20, label %for.body, label %for.cond25.preheader.thread

for.cond25.preheader.thread:                      ; preds = %entry
  %sub51 = add i32 %0, -1
  br label %for.end34

for.cond2.preheader:                              ; preds = %for.body
  %sub = add i32 %1, -1
  %cmp324 = icmp sgt i32 %1, 1
  br i1 %cmp324, label %for.body4.preheader, label %for.cond25.preheader

for.body4.preheader:                              ; preds = %for.cond2.preheader
  %wide.trip.count43 = zext nneg i32 %sub to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %for.body7.lr.ph

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [300 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %2
  br i1 %cmp, label %for.body, label %for.cond2.preheader, !llvm.loop !9

for.cond2.loopexit:                               ; preds = %for.inc18
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %for.cond25.preheader, label %for.body7.lr.ph, !llvm.loop !12

for.cond25.preheader:                             ; preds = %for.cond2.loopexit, %for.cond2.preheader
  %cmp2627 = icmp sgt i32 %1, 0
  br i1 %cmp2627, label %for.body27, label %for.end34

for.body7.lr.ph:                                  ; preds = %for.cond2.loopexit, %for.body4.preheader
  %indvars.iv40 = phi i64 [ 0, %for.body4.preheader ], [ %indvars.iv.next41, %for.cond2.loopexit ]
  %indvars.iv35 = phi i64 [ 1, %for.body4.preheader ], [ %indvars.iv.next36, %for.cond2.loopexit ]
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %arrayidx12 = getelementptr inbounds nuw [300 x i32], ptr %a, i64 0, i64 %indvars.iv40
  br label %for.body7

for.body7:                                        ; preds = %for.body7.lr.ph, %for.inc18
  %indvars.iv37 = phi i64 [ %indvars.iv35, %for.body7.lr.ph ], [ %indvars.iv.next38, %for.inc18 ]
  %arrayidx9 = getelementptr inbounds nuw [300 x i32], ptr %flag, i64 0, i64 %indvars.iv37
  %3 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %3, 0
  br i1 %cmp10, label %land.lhs.true, label %for.inc18

land.lhs.true:                                    ; preds = %for.body7
  %4 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %arrayidx14 = getelementptr inbounds nuw [300 x i32], ptr %a, i64 0, i64 %indvars.iv37
  %5 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %4, %5
  br i1 %cmp15, label %if.then, label %for.inc18

if.then:                                          ; preds = %land.lhs.true
  store i32 1, ptr %arrayidx9, align 4, !tbaa !5
  br label %for.inc18

for.inc18:                                        ; preds = %for.body7, %land.lhs.true, %if.then
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count
  br i1 %exitcond.not, label %for.cond2.loopexit, label %for.body7, !llvm.loop !13

for.body27:                                       ; preds = %for.cond25.preheader, %for.inc33
  %i.228 = phi i32 [ %dec, %for.inc33 ], [ %sub, %for.cond25.preheader ]
  %idxprom28 = zext nneg i32 %i.228 to i64
  %arrayidx29 = getelementptr inbounds nuw [300 x i32], ptr %flag, i64 0, i64 %idxprom28
  %6 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %cmp30 = icmp eq i32 %6, 0
  br i1 %cmp30, label %for.end34, label %for.inc33

for.inc33:                                        ; preds = %for.body27
  %dec = add nsw i32 %i.228, -1
  %cmp26 = icmp sgt i32 %i.228, 0
  br i1 %cmp26, label %for.body27, label %for.end48, !llvm.loop !14

for.end34:                                        ; preds = %for.body27, %for.cond25.preheader.thread, %for.cond25.preheader
  %i.2.lcssa = phi i32 [ %sub, %for.cond25.preheader ], [ %sub51, %for.cond25.preheader.thread ], [ %i.228, %for.body27 ]
  %cmp3631 = icmp sgt i32 %i.2.lcssa, 0
  br i1 %cmp3631, label %for.body37.preheader, label %for.end48

for.body37.preheader:                             ; preds = %for.end34
  %wide.trip.count48 = zext nneg i32 %i.2.lcssa to i64
  br label %for.body37

for.body37:                                       ; preds = %for.body37.preheader, %for.inc46
  %indvars.iv45 = phi i64 [ 0, %for.body37.preheader ], [ %indvars.iv.next46, %for.inc46 ]
  %arrayidx39 = getelementptr inbounds nuw [300 x i32], ptr %flag, i64 0, i64 %indvars.iv45
  %7 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  %cmp40 = icmp eq i32 %7, 0
  br i1 %cmp40, label %if.then41, label %for.inc46

if.then41:                                        ; preds = %for.body37
  %arrayidx43 = getelementptr inbounds nuw [300 x i32], ptr %a, i64 0, i64 %indvars.iv45
  %8 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %call44 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %8)
  br label %for.inc46

for.inc46:                                        ; preds = %for.body37, %if.then41
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %exitcond49.not = icmp eq i64 %indvars.iv.next46, %wide.trip.count48
  br i1 %exitcond49.not, label %for.end48, label %for.body37, !llvm.loop !15

for.end48:                                        ; preds = %for.inc33, %for.inc46, %for.end34
  %i.2.lcssa60 = phi i32 [ %i.2.lcssa, %for.end34 ], [ %i.2.lcssa, %for.inc46 ], [ -1, %for.inc33 ]
  %idxprom49 = sext i32 %i.2.lcssa60 to i64
  %arrayidx50 = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 %idxprom49
  %9 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %call51 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %9)
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %flag) #5
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %a) #5
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
