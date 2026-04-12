; ModuleID = '<stdin>'
source_filename = "/tmp/tmpk9d6x_vx.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %m = alloca [25 x i32], align 16
  %i = alloca i32, align 4
  %d = alloca [25 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef nonnull %m) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(100) %m, i8 noundef 0, i64 noundef 100, i1 noundef false) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %i) #5
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef nonnull align 16 %d) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(100) %d, i8 noundef 0, i64 noundef 100, i1 noundef false) #6
  store i32 1, ptr %d, align 16
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv28, %1
  br i1 %cmp, label %for.inc, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond2

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [25 x i32], ptr %m, i64 0, i64 %indvars.iv28
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc7
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %for.inc7 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond10.preheader, label %for.inc7

for.cond10.preheader:                             ; preds = %for.cond2
  %2 = zext i32 %0 to i64
  br label %for.cond10

for.inc7:                                         ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [25 x i32], ptr %d, i64 0, i64 %indvars.iv
  store i32 1, ptr %arrayidx6, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond13, %for.cond10.preheader
  %indvars.iv18 = phi i64 [ %1, %for.cond10.preheader ], [ %indvars.iv.next19, %for.cond13 ]
  %indvars.iv12 = phi i64 [ %2, %for.cond10.preheader ], [ %indvars.iv.next13, %for.cond13 ]
  %indvars.iv.next19 = add nsw i64 %indvars.iv18, -1
  %indvars.iv.next13 = add nsw i64 %indvars.iv12, -1
  %cmp11 = icmp sgt i64 %indvars.iv18, 0
  br i1 %cmp11, label %for.cond13.preheader, label %for.end35

for.cond13.preheader:                             ; preds = %for.cond10
  %arrayidx17 = getelementptr inbounds [25 x i32], ptr %m, i64 0, i64 %indvars.iv.next19
  %arrayidx22 = getelementptr inbounds [25 x i32], ptr %d, i64 0, i64 %indvars.iv.next19
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc31
  %indvars.iv14 = phi i64 [ %indvars.iv12, %for.cond13.preheader ], [ %indvars.iv.next15, %for.inc31 ]
  %3 = trunc nuw i64 %indvars.iv14 to i32
  %cmp14 = icmp sgt i32 %0, %3
  br i1 %cmp14, label %for.body15, label %for.cond10, !llvm.loop !13

for.body15:                                       ; preds = %for.cond13
  %4 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %arrayidx19 = getelementptr inbounds nuw [25 x i32], ptr %m, i64 0, i64 %indvars.iv14
  %5 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20.not = icmp slt i32 %4, %5
  br i1 %cmp20.not, label %for.inc31, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body15
  %6 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %arrayidx24 = getelementptr inbounds nuw [25 x i32], ptr %d, i64 0, i64 %indvars.iv14
  %7 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %cmp25.not = icmp sgt i32 %6, %7
  br i1 %cmp25.not, label %for.inc31, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %add28 = add nsw i32 %7, 1
  store i32 %add28, ptr %arrayidx22, align 4, !tbaa !5
  br label %for.inc31

for.inc31:                                        ; preds = %for.body15, %land.lhs.true, %if.then
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %for.cond13, !llvm.loop !14

for.end35:                                        ; preds = %for.cond10
  %8 = load i32, ptr %d, align 16, !tbaa !5
  br label %for.cond37

for.cond37:                                       ; preds = %for.body39, %for.end35
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.body39 ], [ 0, %for.end35 ]
  %dm.0 = phi i32 [ %spec.select, %for.body39 ], [ %8, %for.end35 ]
  %exitcond25.not = icmp eq i64 %indvars.iv21, %wide.trip.count
  br i1 %exitcond25.not, label %for.end49, label %for.body39

for.body39:                                       ; preds = %for.cond37
  %arrayidx41 = getelementptr inbounds nuw [25 x i32], ptr %d, i64 0, i64 %indvars.iv21
  %9 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %9, i32 %dm.0)
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond37, !llvm.loop !15

for.end49:                                        ; preds = %for.cond37
  store i32 %smax, ptr %i, align 4, !tbaa !5
  %call50 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %dm.0)
  %call51 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %i)
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef nonnull %d) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %i) #7
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef nonnull %m) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind }
attributes #6 = { nofree }
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
