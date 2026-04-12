; ModuleID = '<stdin>'
source_filename = "/tmp/tmpebnmh873.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%struct.z = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %k = alloca i32, align 4
  %a = alloca [50 x %struct.z], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %k) #4
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %a) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %k)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond2

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [50 x %struct.z], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc7
  %indvars.iv27 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next28, %for.inc7 ]
  %exitcond.not = icmp eq i64 %indvars.iv27, %wide.trip.count
  br i1 %exitcond.not, label %for.end9, label %for.inc7

for.inc7:                                         ; preds = %for.cond2
  %h = getelementptr inbounds nuw [50 x %struct.z], ptr %a, i64 0, i64 %indvars.iv27, i32 1
  store i32 1, ptr %h, align 4, !tbaa !12
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond2, !llvm.loop !14

for.end9:                                         ; preds = %for.cond2
  %sub = add nsw i32 %0, -2
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc43, %for.end9
  %i.2 = phi i32 [ %sub, %for.end9 ], [ %dec, %for.inc43 ]
  %cmp11 = icmp sgt i32 %i.2, -1
  br i1 %cmp11, label %for.cond13.preheader, label %for.cond45.preheader

for.cond13.preheader:                             ; preds = %for.cond10
  %2 = zext nneg i32 %i.2 to i64
  %arrayidx17 = getelementptr inbounds nuw [50 x %struct.z], ptr %a, i64 0, i64 %2
  %h25 = getelementptr inbounds nuw i8, ptr %arrayidx17, i64 4
  br label %for.cond13

for.cond45.preheader:                             ; preds = %for.cond10
  %3 = call i32 @llvm.smax.i32(i32 %0, i32 1)
  %smax42 = add nsw i32 %3, -1
  %wide.trip.count43 = zext nneg i32 %smax42 to i64
  br label %for.cond45

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc40
  %indvars.iv31 = phi i64 [ %2, %for.cond13.preheader ], [ %indvars.iv.next32, %for.inc40 ]
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %4 = trunc nuw i64 %indvars.iv.next32 to i32
  %cmp14 = icmp sgt i32 %0, %4
  br i1 %cmp14, label %for.body15, label %for.inc43

for.body15:                                       ; preds = %for.cond13
  %5 = load i32, ptr %arrayidx17, align 8, !tbaa !15
  %arrayidx20 = getelementptr inbounds nuw [50 x %struct.z], ptr %a, i64 0, i64 %indvars.iv.next32
  %6 = load i32, ptr %arrayidx20, align 8, !tbaa !15
  %cmp22.not = icmp slt i32 %5, %6
  br i1 %cmp22.not, label %for.inc40, label %if.then

if.then:                                          ; preds = %for.body15
  %7 = load i32, ptr %h25, align 4, !tbaa !12
  %h28 = getelementptr inbounds nuw i8, ptr %arrayidx20, i64 4
  %8 = load i32, ptr %h28, align 4, !tbaa !12
  %cmp30.not = icmp sgt i32 %7, %8
  br i1 %cmp30.not, label %for.inc40, label %if.then31

if.then31:                                        ; preds = %if.then
  %add29 = add nsw i32 %8, 1
  store i32 %add29, ptr %h25, align 4, !tbaa !12
  br label %for.inc40

for.inc40:                                        ; preds = %for.body15, %if.then31, %if.then
  br label %for.cond13, !llvm.loop !16

for.inc43:                                        ; preds = %for.cond13
  %dec = add nsw i32 %i.2, -1
  br label %for.cond10, !llvm.loop !17

for.cond45.loopexit:                              ; preds = %for.cond50
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %for.cond45, !llvm.loop !18

for.cond45:                                       ; preds = %for.cond45.loopexit, %for.cond45.preheader
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.cond45.loopexit ], [ 0, %for.cond45.preheader ]
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %for.cond45.loopexit ], [ 1, %for.cond45.preheader ]
  %exitcond44.not = icmp eq i64 %indvars.iv39, %wide.trip.count43
  br i1 %exitcond44.not, label %for.end79, label %for.body48

for.body48:                                       ; preds = %for.cond45
  %h55 = getelementptr inbounds nuw [50 x %struct.z], ptr %a, i64 0, i64 %indvars.iv39, i32 1
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc74, %for.body48
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %for.inc74 ], [ %indvars.iv34, %for.body48 ]
  %9 = trunc nuw i64 %indvars.iv36 to i32
  %cmp51 = icmp sgt i32 %0, %9
  br i1 %cmp51, label %for.body52, label %for.cond45.loopexit

for.body52:                                       ; preds = %for.cond50
  %10 = load i32, ptr %h55, align 4, !tbaa !12
  %h58 = getelementptr inbounds nuw [50 x %struct.z], ptr %a, i64 0, i64 %indvars.iv36, i32 1
  %11 = load i32, ptr %h58, align 4, !tbaa !12
  %cmp59 = icmp slt i32 %10, %11
  br i1 %cmp59, label %if.then60, label %for.inc74

if.then60:                                        ; preds = %for.body52
  store i32 %11, ptr %h55, align 4, !tbaa !12
  store i32 %10, ptr %h58, align 4, !tbaa !12
  br label %for.inc74

for.inc74:                                        ; preds = %for.body52, %if.then60
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  br label %for.cond50, !llvm.loop !19

for.end79:                                        ; preds = %for.cond45
  %h81 = getelementptr inbounds nuw i8, ptr %a, i64 4
  %12 = load i32, ptr %h81, align 4, !tbaa !12
  %call82 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %12)
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %k) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!12 = !{!13, !6, i64 4}
!13 = !{!"_ZTS1z", !6, i64 0, !6, i64 4}
!14 = distinct !{!14, !10, !11}
!15 = !{!13, !6, i64 0}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
