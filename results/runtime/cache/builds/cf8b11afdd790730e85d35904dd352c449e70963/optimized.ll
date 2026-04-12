; ModuleID = '<stdin>'
source_filename = "/tmp/tmphtbjzk41.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [500 x i32], align 16
  %N = alloca i32, align 4
  %b = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %N)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %b) #5
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond2

for.cond2:                                        ; preds = %if.end, %for.end
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %if.end ], [ 0, %for.end ]
  %j.0 = phi i32 [ %j.1, %if.end ], [ 0, %for.end ]
  %exitcond.not = icmp eq i64 %indvars.iv29, %wide.trip.count
  br i1 %exitcond.not, label %for.cond22.preheader, label %for.body4

for.cond22.preheader:                             ; preds = %for.cond2
  %sub = add nsw i32 %j.0, -1
  %smax41 = call i32 @llvm.smax.i32(i32 %sub, i32 0)
  br label %for.cond22

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv29
  %2 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %3 = and i32 %2, 1
  %cmp7.not = icmp eq i32 %3, 0
  br i1 %cmp7.not, label %if.end, label %if.then

if.then:                                          ; preds = %for.body4
  %idxprom10 = sext i32 %j.0 to i64
  %arrayidx11 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom10
  store i32 %2, ptr %arrayidx11, align 4, !tbaa !5
  %inc12 = add nsw i32 %j.0, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  %j.1 = phi i32 [ %inc12, %if.then ], [ %j.0, %for.body4 ]
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond2, !llvm.loop !12

for.cond22:                                       ; preds = %for.cond22.preheader, %for.inc50
  %indvars.iv36 = phi i32 [ %sub, %for.cond22.preheader ], [ %indvars.iv.next37, %for.inc50 ]
  %k.0 = phi i32 [ 0, %for.cond22.preheader ], [ %inc51, %for.inc50 ]
  %exitcond42.not = icmp eq i32 %k.0, %smax41
  br i1 %exitcond42.not, label %for.cond53.preheader, label %for.cond25.preheader

for.cond25.preheader:                             ; preds = %for.cond22
  %smax38 = call i32 @llvm.smax.i32(i32 %indvars.iv36, i32 0)
  %wide.trip.count39 = zext nneg i32 %smax38 to i64
  br label %for.cond25

for.cond53.preheader:                             ; preds = %for.cond22
  %wide.trip.count46 = zext nneg i32 %smax41 to i64
  br label %for.cond53

for.cond25:                                       ; preds = %for.cond25.backedge, %for.cond25.preheader
  %indvars.iv33 = phi i64 [ 0, %for.cond25.preheader ], [ %indvars.iv.next34, %for.cond25.backedge ]
  %exitcond40.not = icmp eq i64 %indvars.iv33, %wide.trip.count39
  br i1 %exitcond40.not, label %for.inc50, label %for.body29

for.body29:                                       ; preds = %for.cond25
  %arrayidx31 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv33
  %4 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %arrayidx33 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv.next34
  %5 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %cmp34 = icmp sgt i32 %4, %5
  br i1 %cmp34, label %if.then35, label %for.cond25.backedge

for.cond25.backedge:                              ; preds = %for.body29, %if.then35
  br label %for.cond25, !llvm.loop !13

if.then35:                                        ; preds = %for.body29
  store i32 %5, ptr %arrayidx31, align 4, !tbaa !5
  store i32 %4, ptr %arrayidx33, align 4, !tbaa !5
  br label %for.cond25.backedge

for.inc50:                                        ; preds = %for.cond25
  %inc51 = add nuw i32 %k.0, 1
  %indvars.iv.next37 = add i32 %indvars.iv36, -1
  br label %for.cond22, !llvm.loop !14

for.cond53:                                       ; preds = %for.cond53.preheader, %for.body56
  %indvars.iv43 = phi i64 [ 0, %for.cond53.preheader ], [ %indvars.iv.next44, %for.body56 ]
  %exitcond47.not = icmp eq i64 %indvars.iv43, %wide.trip.count46
  br i1 %exitcond47.not, label %for.end62, label %for.body56

for.body56:                                       ; preds = %for.cond53
  %arrayidx58 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv43
  %6 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  %call59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %6)
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  br label %for.cond53, !llvm.loop !15

for.end62:                                        ; preds = %for.cond53
  %idxprom64 = sext i32 %sub to i64
  %arrayidx65 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom64
  %7 = load i32, ptr %arrayidx65, align 4, !tbaa !5
  %call66 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %7)
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N) #5
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
