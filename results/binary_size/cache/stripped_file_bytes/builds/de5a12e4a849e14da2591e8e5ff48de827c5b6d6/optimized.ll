; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9b8kk7p3.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%struct.anon = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [30 x %struct.anon], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 240, ptr noundef nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.cond
  %2 = zext i32 %0 to i64
  br label %for.cond4

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [30 x %struct.anon], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %r = getelementptr inbounds nuw i8, ptr %arrayidx, i64 4
  store i32 1, ptr %r, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !11

for.cond4:                                        ; preds = %for.cond7, %for.cond4.preheader
  %indvars.iv28 = phi i64 [ %1, %for.cond4.preheader ], [ %indvars.iv.next29, %for.cond7 ]
  %indvars.iv22 = phi i64 [ %2, %for.cond4.preheader ], [ %indvars.iv.next23, %for.cond7 ]
  %indvars.iv.next29 = add nsw i64 %indvars.iv28, -1
  %indvars.iv.next23 = add nsw i64 %indvars.iv22, -1
  %cmp5 = icmp sgt i64 %indvars.iv28, 0
  br i1 %cmp5, label %for.cond7.preheader, label %for.cond37.preheader

for.cond37.preheader:                             ; preds = %for.cond4
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond37

for.cond7.preheader:                              ; preds = %for.cond4
  %arrayidx11 = getelementptr inbounds [30 x %struct.anon], ptr %a, i64 0, i64 %indvars.iv.next29
  %r19 = getelementptr inbounds nuw i8, ptr %arrayidx11, i64 4
  br label %for.cond7

for.cond7:                                        ; preds = %for.cond7.preheader, %for.inc32
  %indvars.iv24 = phi i64 [ %indvars.iv22, %for.cond7.preheader ], [ %indvars.iv.next25, %for.inc32 ]
  %3 = trunc nuw i64 %indvars.iv24 to i32
  %cmp8 = icmp sgt i32 %0, %3
  br i1 %cmp8, label %for.body9, label %for.cond4, !llvm.loop !14

for.body9:                                        ; preds = %for.cond7
  %4 = load i32, ptr %arrayidx11, align 8, !tbaa !15, !invariant.load !16
  %arrayidx14 = getelementptr inbounds nuw [30 x %struct.anon], ptr %a, i64 0, i64 %indvars.iv24
  %5 = load i32, ptr %arrayidx14, align 8, !tbaa !15, !invariant.load !16
  %cmp16.not = icmp slt i32 %4, %5
  br i1 %cmp16.not, label %for.inc32, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body9
  %6 = load i32, ptr %r19, align 4, !tbaa !9, !invariant.load !16
  %r22 = getelementptr inbounds nuw i8, ptr %arrayidx14, i64 4
  %7 = load i32, ptr %r22, align 4, !tbaa !9, !invariant.load !16
  %add23 = add nsw i32 %7, 1
  %cmp24.not = icmp sgt i32 %6, %add23
  br i1 %cmp24.not, label %for.inc32, label %if.then

if.then:                                          ; preds = %land.lhs.true
  store i32 %add23, ptr %r19, align 4, !tbaa !9
  br label %for.inc32

for.inc32:                                        ; preds = %for.body9, %land.lhs.true, %if.then
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  br label %for.cond7, !llvm.loop !17

for.cond37:                                       ; preds = %for.cond37.preheader, %for.body39
  %indvars.iv31 = phi i64 [ 0, %for.cond37.preheader ], [ %indvars.iv.next32, %for.body39 ]
  %k.0 = phi i32 [ 1, %for.cond37.preheader ], [ %spec.select, %for.body39 ]
  %exitcond.not = icmp eq i64 %indvars.iv31, %wide.trip.count
  br i1 %exitcond.not, label %for.end51, label %for.body39

for.body39:                                       ; preds = %for.cond37
  %r42 = getelementptr inbounds nuw [30 x %struct.anon], ptr %a, i64 0, i64 %indvars.iv31, i32 1
  %8 = load i32, ptr %r42, align 4, !tbaa !9, !invariant.load !16
  %spec.select = call i32 @llvm.smax.i32(i32 %k.0, i32 %8)
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  br label %for.cond37, !llvm.loop !18

for.end51:                                        ; preds = %for.cond37
  %call52 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %k.0)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 noundef 240, ptr noundef nonnull %a) #5
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
attributes #4 = { nofree nounwind }
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
!9 = !{!10, !6, i64 4}
!10 = !{!"_ZTSZ4mainE3$_0", !6, i64 0, !6, i64 4}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = !{!10, !6, i64 0}
!16 = !{}
!17 = distinct !{!17, !12, !13}
!18 = distinct !{!18, !12, !13}
