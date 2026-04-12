; ModuleID = '<stdin>'
source_filename = "/tmp/tmpd03xzcnx.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %mon1 = alloca i32, align 4
  %mon2 = alloca i32, align 4
  %year = alloca i32, align 4
  %sz = alloca [200 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %mon1) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %mon2) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %year) #7
  call void @llvm.lifetime.start.p0(i64 noundef 800, ptr noundef nonnull align 16 %sz) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond1, label %for.inc

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [200 x i32], ptr %sz, i64 0, i64 %indvars.iv
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond1:                                        ; preds = %for.cond, %for.inc14
  %1 = phi i32 [ %.pre, %for.inc14 ], [ %0, %for.cond ]
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %for.inc14 ], [ 0, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2 = icmp slt i64 %indvars.iv4, %2
  br i1 %cmp2, label %for.body3, label %for.cond17

for.body3:                                        ; preds = %for.cond1
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %year, ptr noundef nonnull %mon1, ptr noundef nonnull %mon2)
  %3 = load i32, ptr %year, align 4, !tbaa !5
  %4 = load i32, ptr %mon1, align 4, !tbaa !5
  %call5 = call noundef range(i32 -2147483647, -2147483648) i32 @_Z8DiJiTianii(i32 noundef %3, i32 noundef %4) #8
  %5 = load i32, ptr %mon2, align 4, !tbaa !5
  %call6 = call noundef range(i32 -2147483647, -2147483648) i32 @_Z8DiJiTianii(i32 noundef %3, i32 noundef %5) #8
  %sub = sub nsw i32 %call5, %call6
  %spec.select = call i32 @llvm.abs.i32(i32 %sub, i1 noundef true)
  %rem1 = urem i32 %spec.select, 7
  %cmp9 = icmp eq i32 %rem1, 0
  br i1 %cmp9, label %if.then10, label %for.inc14

if.then10:                                        ; preds = %for.body3
  %arrayidx12 = getelementptr inbounds nuw [200 x i32], ptr %sz, i64 0, i64 %indvars.iv4
  store i32 1, ptr %arrayidx12, align 4, !tbaa !5
  br label %for.inc14

for.inc14:                                        ; preds = %for.body3, %if.then10
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !12

for.cond17:                                       ; preds = %for.cond1, %for.body19
  %6 = phi i32 [ %.pre10, %for.body19 ], [ %1, %for.cond1 ]
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %for.body19 ], [ 0, %for.cond1 ]
  %7 = sext i32 %6 to i64
  %cmp18 = icmp slt i64 %indvars.iv7, %7
  br i1 %cmp18, label %for.body19, label %for.end29

for.body19:                                       ; preds = %for.cond17
  %arrayidx21 = getelementptr inbounds nuw [200 x i32], ptr %sz, i64 0, i64 %indvars.iv7
  %8 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %cmp22 = icmp eq i32 %8, 1
  %str.1.str = select i1 %cmp22, ptr @str.1, ptr @str
  %puts2 = call i32 @puts(ptr noundef nonnull dereferenceable(1) %str.1.str) #9
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %.pre10 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond17, !llvm.loop !13

for.end29:                                        ; preds = %for.cond17
  call void @llvm.lifetime.end.p0(i64 noundef 800, ptr noundef nonnull %sz) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %year) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %mon2) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %mon1) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #9
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 -2147483647, -2147483648) i32 @_Z8DiJiTianii(i32 noundef %year, i32 noundef %mon) local_unnamed_addr #3 {
entry:
  %rem = srem i32 %year, 400
  %cmp25 = icmp eq i32 %rem, 0
  %0 = and i32 %year, 3
  %cmp28 = icmp eq i32 %0, 0
  %rem29 = srem i32 %year, 100
  %cmp30 = icmp ne i32 %rem29, 0
  %or.cond = and i1 %cmp28, %cmp30
  %smax = call i32 @llvm.smax.i32(i32 noundef %mon, i32 noundef 1)
  %1 = or i1 %cmp25, %or.cond
  %spec.select1 = select i1 %1, i32 29, i32 28
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %result.0 = phi i32 [ 0, %entry ], [ %result.1, %for.inc ]
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  %exitcond.not = icmp eq i32 %i.0, %smax
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  br label %NodeBlock20

NodeBlock20:                                      ; preds = %for.body
  %Pivot21 = icmp slt i32 %i.0, 6
  br i1 %Pivot21, label %NodeBlock6, label %NodeBlock18

NodeBlock18:                                      ; preds = %NodeBlock20
  %Pivot19 = icmp slt i32 %i.0, 10
  br i1 %Pivot19, label %NodeBlock10, label %NodeBlock16

NodeBlock16:                                      ; preds = %NodeBlock18
  %Pivot17 = icmp slt i32 %i.0, 11
  br i1 %Pivot17, label %if.then, label %NodeBlock14

NodeBlock14:                                      ; preds = %NodeBlock16
  %Pivot15 = icmp slt i32 %i.0, 12
  br i1 %Pivot15, label %if.then20, label %LeafBlock12

LeafBlock12:                                      ; preds = %NodeBlock14
  %SwitchLeaf13 = icmp eq i32 %i.0, 12
  br i1 %SwitchLeaf13, label %if.then, label %for.inc

NodeBlock10:                                      ; preds = %NodeBlock18
  %Pivot11 = icmp slt i32 %i.0, 7
  br i1 %Pivot11, label %if.then20, label %NodeBlock8

NodeBlock8:                                       ; preds = %NodeBlock10
  %Pivot9 = icmp slt i32 %i.0, 9
  br i1 %Pivot9, label %if.then, label %if.then20

NodeBlock6:                                       ; preds = %NodeBlock20
  %Pivot7 = icmp slt i32 %i.0, 3
  br i1 %Pivot7, label %NodeBlock, label %NodeBlock4

NodeBlock4:                                       ; preds = %NodeBlock6
  %Pivot5 = icmp slt i32 %i.0, 4
  br i1 %Pivot5, label %if.then, label %NodeBlock2

NodeBlock2:                                       ; preds = %NodeBlock4
  %Pivot3 = icmp slt i32 %i.0, 5
  br i1 %Pivot3, label %if.then20, label %if.then

NodeBlock:                                        ; preds = %NodeBlock6
  %Pivot = icmp slt i32 %i.0, 2
  br i1 %Pivot, label %LeafBlock, label %if.then24

LeafBlock:                                        ; preds = %NodeBlock
  %SwitchLeaf = icmp eq i32 %i.0, 1
  br i1 %SwitchLeaf, label %if.then, label %for.inc

if.then:                                          ; preds = %NodeBlock16, %LeafBlock12, %NodeBlock8, %NodeBlock4, %NodeBlock2, %LeafBlock
  %add = add nsw i32 %result.0, 31
  br label %for.inc

if.then20:                                        ; preds = %NodeBlock14, %NodeBlock10, %NodeBlock8, %NodeBlock2
  %add21 = add nsw i32 %result.0, 30
  br label %for.inc

if.then24:                                        ; preds = %NodeBlock
  %add34 = add nsw i32 %spec.select1, %result.0
  br label %for.inc

for.inc:                                          ; preds = %LeafBlock12, %LeafBlock, %if.then, %if.then24, %if.then20
  %result.1 = phi i32 [ %add, %if.then ], [ %add21, %if.then20 ], [ %add34, %if.then24 ], [ %result.0, %LeafBlock ], [ %result.0, %LeafBlock12 ]
  %inc = add nuw i32 %i.0, 1
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %add38 = add nsw i32 %result.0, 1
  ret i32 %add38
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nofree nounwind willreturn }
attributes #8 = { nounwind memory(none) }
attributes #9 = { nounwind }

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
