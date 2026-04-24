; ModuleID = '<stdin>'
source_filename = "/tmp/tmpz6slemp5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %x = alloca [310 x i32], align 16
  %y = alloca [310 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 1240, ptr nonnull %x) #5
  call void @llvm.lifetime.start.p0(i64 1240, ptr nonnull %y) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp18 = icmp sgt i32 %0, 0
  call void @llvm.assume(i1 %cmp18)
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [310 x i32], ptr %x, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %2
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %for.body
  %.pre = load i32, ptr %x, align 16, !tbaa !5
  store i32 %.pre, ptr %y, align 16, !tbaa !5
  %cmp624 = icmp sgt i32 %1, 1
  br i1 %cmp624, label %for.cond8.preheader.preheader, label %for.end29.thread

for.cond8.preheader.preheader:                    ; preds = %for.end
  %wide.trip.count38 = zext nneg i32 %1 to i64
  br label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.cond8.preheader.preheader, %for.inc27
  %indvars.iv35 = phi i64 [ 1, %for.cond8.preheader.preheader ], [ %indvars.iv.next36, %for.inc27 ]
  %k.026 = phi i32 [ 1, %for.cond8.preheader.preheader ], [ %k.1, %for.inc27 ]
  %cmp920 = icmp sgt i32 %k.026, 0
  br i1 %cmp920, label %for.body10.lr.ph, label %for.end18

for.body10.lr.ph:                                 ; preds = %for.cond8.preheader
  %arrayidx12 = getelementptr inbounds nuw [310 x i32], ptr %x, i64 0, i64 %indvars.iv35
  %3 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %wide.trip.count = zext nneg i32 %k.026 to i64
  br label %for.body10

for.body10:                                       ; preds = %for.body10.lr.ph, %for.inc16
  %indvars.iv32 = phi i64 [ 0, %for.body10.lr.ph ], [ %indvars.iv.next33, %for.inc16 ]
  %arrayidx14 = getelementptr inbounds nuw [310 x i32], ptr %y, i64 0, i64 %indvars.iv32
  %4 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %3, %4
  br i1 %cmp15, label %for.end18.loopexit, label %for.inc16

for.inc16:                                        ; preds = %for.body10
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next33, %wide.trip.count
  br i1 %exitcond.not, label %if.then20, label %for.body10, !llvm.loop !12

for.end18.loopexit:                               ; preds = %for.body10
  %5 = trunc nuw nsw i64 %indvars.iv32 to i32
  br label %for.end18

for.end18:                                        ; preds = %for.end18.loopexit, %for.cond8.preheader
  %j.0.lcssa = phi i32 [ 0, %for.cond8.preheader ], [ %5, %for.end18.loopexit ]
  %cmp19 = icmp eq i32 %j.0.lcssa, %k.026
  br i1 %cmp19, label %if.then20, label %for.inc27

if.then20:                                        ; preds = %for.inc16, %for.end18
  %arrayidx22 = getelementptr inbounds nuw [310 x i32], ptr %x, i64 0, i64 %indvars.iv35
  %6 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %idxprom23 = sext i32 %k.026 to i64
  %arrayidx24 = getelementptr inbounds [310 x i32], ptr %y, i64 0, i64 %idxprom23
  store i32 %6, ptr %arrayidx24, align 4, !tbaa !5
  %inc25 = add nsw i32 %k.026, 1
  br label %for.inc27

for.inc27:                                        ; preds = %for.end18, %if.then20
  %k.1 = phi i32 [ %inc25, %if.then20 ], [ %k.026, %for.end18 ]
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %exitcond39.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count38
  br i1 %exitcond39.not, label %for.end29, label %for.cond8.preheader, !llvm.loop !13

for.end29.thread:                                 ; preds = %for.end
  %call3151 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.pre)
  br label %for.end40

for.end29:                                        ; preds = %for.inc27
  %.pre45 = load i32, ptr %y, align 16, !tbaa !5
  %call31 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.pre45)
  %cmp3328 = icmp sgt i32 %k.1, 1
  br i1 %cmp3328, label %for.body34.preheader, label %for.end40

for.body34.preheader:                             ; preds = %for.end29
  %wide.trip.count43 = zext nneg i32 %k.1 to i64
  br label %for.body34

for.body34:                                       ; preds = %for.body34.preheader, %for.body34
  %indvars.iv40 = phi i64 [ 1, %for.body34.preheader ], [ %indvars.iv.next41, %for.body34 ]
  %arrayidx36 = getelementptr inbounds nuw [310 x i32], ptr %y, i64 0, i64 %indvars.iv40
  %7 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  %call37 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %7)
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %exitcond44.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count43
  br i1 %exitcond44.not, label %for.end40, label %for.body34, !llvm.loop !14

for.end40:                                        ; preds = %for.body34, %for.end29.thread, %for.end29
  call void @llvm.lifetime.end.p0(i64 1240, ptr nonnull %y) #5
  call void @llvm.lifetime.end.p0(i64 1240, ptr nonnull %x) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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
