; ModuleID = '<stdin>'
source_filename = "/tmp/tmp1om4dkmt.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%d+%d\0A\00", align 1
@str = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %h = alloca i32, align 4
  %l = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %h) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %l) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %h, ptr noundef nonnull align 4 %l)
  %0 = load i32, ptr %h, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %mul = shl nsw i64 %conv, 3
  %call1 = call noalias ptr @malloc(i64 noundef %mul) #7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %1 = load i32, ptr %h, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv, %2
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %3 = load i32, ptr %l, align 4, !tbaa !5
  %conv2 = sext i32 %3 to i64
  %mul3 = shl nsw i64 %conv2, 2
  %call4 = call noalias ptr @malloc(i64 noundef %mul3) #7
  %arrayidx = getelementptr inbounds nuw ptr, ptr %call1, i64 %indvars.iv
  store ptr %call4, ptr %arrayidx, align 8, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %mul6 = shl nsw i64 %2, 2
  %call7 = call noalias ptr @malloc(i64 noundef %mul6) #7
  %4 = load i32, ptr %h, align 4, !tbaa !5
  %conv8 = sext i32 %4 to i64
  %mul9 = shl nsw i64 %conv8, 2
  %call10 = call noalias ptr @malloc(i64 noundef %mul9) #7
  %5 = load i32, ptr %h, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %5, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc18, %for.end
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.inc18 ], [ 0, %for.end ]
  %exitcond.not = icmp eq i64 %indvars.iv49, %wide.trip.count
  br i1 %exitcond.not, label %for.cond21, label %for.inc18

for.inc18:                                        ; preds = %for.cond11
  %arrayidx15 = getelementptr inbounds nuw i32, ptr %call7, i64 %indvars.iv49
  store i32 0, ptr %arrayidx15, align 4, !tbaa !5
  %arrayidx17 = getelementptr inbounds nuw i32, ptr %call10, i64 %indvars.iv49
  store i32 0, ptr %arrayidx17, align 4, !tbaa !5
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %for.cond11, !llvm.loop !15

for.cond21:                                       ; preds = %for.cond11, %for.inc50
  %6 = phi i32 [ %.pre, %for.inc50 ], [ %5, %for.cond11 ]
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %for.inc50 ], [ 0, %for.cond11 ]
  %7 = sext i32 %6 to i64
  %cmp22 = icmp slt i64 %indvars.iv55, %7
  br i1 %cmp22, label %for.cond24.preheader, label %for.cond53.preheader

for.cond24.preheader:                             ; preds = %for.cond21
  %arrayidx28 = getelementptr inbounds nuw ptr, ptr %call1, i64 %indvars.iv55
  %arrayidx33 = getelementptr inbounds nuw i32, ptr %call7, i64 %indvars.iv55
  %arrayidx46 = getelementptr inbounds nuw i32, ptr %call10, i64 %indvars.iv55
  br label %for.cond24

for.cond53.preheader:                             ; preds = %for.cond21
  %smax68 = call i32 @llvm.smax.i32(i32 %6, i32 noundef 0)
  %wide.trip.count69 = zext nneg i32 %smax68 to i64
  %wide.trip.count62 = zext i32 %6 to i64
  br label %for.cond53

for.cond24:                                       ; preds = %for.cond24.preheader, %for.inc47
  %indvars.iv52 = phi i64 [ 0, %for.cond24.preheader ], [ %indvars.iv.next53, %for.inc47 ]
  %8 = load i32, ptr %l, align 4, !tbaa !5
  %9 = sext i32 %8 to i64
  %cmp25 = icmp slt i64 %indvars.iv52, %9
  br i1 %cmp25, label %for.body26, label %for.inc50

for.body26:                                       ; preds = %for.cond24
  %10 = load ptr, ptr %arrayidx28, align 8, !tbaa !9, !invariant.load !16
  %arrayidx30 = getelementptr inbounds nuw i32, ptr %10, i64 %indvars.iv52
  %call31 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef %arrayidx30)
  %11 = load i32, ptr %arrayidx33, align 4, !tbaa !5, !invariant.load !16
  %12 = load i32, ptr %arrayidx30, align 4, !tbaa !5, !invariant.load !16
  %cmp38 = icmp slt i32 %11, %12
  br i1 %cmp38, label %if.then, label %for.inc47

if.then:                                          ; preds = %for.body26
  store i32 %12, ptr %arrayidx33, align 4, !tbaa !5
  %13 = trunc nuw nsw i64 %indvars.iv52 to i32
  store i32 %13, ptr %arrayidx46, align 4, !tbaa !5
  br label %for.inc47

for.inc47:                                        ; preds = %for.body26, %if.then
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  br label %for.cond24, !llvm.loop !17

for.inc50:                                        ; preds = %for.cond24
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  %.pre = load i32, ptr %h, align 4, !tbaa !5
  br label %for.cond21, !llvm.loop !18

for.cond53:                                       ; preds = %for.cond53.preheader, %for.inc78
  %indvars.iv64 = phi i64 [ 0, %for.cond53.preheader ], [ %indvars.iv.next65, %for.inc78 ]
  %exitcond70.not = icmp eq i64 %indvars.iv64, %wide.trip.count69
  br i1 %exitcond70.not, label %if.else, label %for.cond56.preheader

for.cond56.preheader:                             ; preds = %for.cond53
  %arrayidx60 = getelementptr inbounds nuw i32, ptr %call7, i64 %indvars.iv64
  %arrayidx64 = getelementptr inbounds nuw i32, ptr %call10, i64 %indvars.iv64
  br label %for.cond56

for.cond56:                                       ; preds = %for.body58, %for.cond56.preheader
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.body58 ], [ 0, %for.cond56.preheader ]
  %exitcond63.not = icmp eq i64 %indvars.iv58, %wide.trip.count62
  br i1 %exitcond63.not, label %if.then83, label %for.body58

for.body58:                                       ; preds = %for.cond56
  %14 = load i32, ptr %arrayidx60, align 4, !tbaa !5, !invariant.load !16
  %arrayidx62 = getelementptr inbounds nuw ptr, ptr %call1, i64 %indvars.iv58
  %15 = load ptr, ptr %arrayidx62, align 8, !tbaa !9, !invariant.load !16
  %16 = load i32, ptr %arrayidx64, align 4, !tbaa !5, !invariant.load !16
  %idxprom65 = sext i32 %16 to i64
  %arrayidx66 = getelementptr inbounds i32, ptr %15, i64 %idxprom65
  %17 = load i32, ptr %arrayidx66, align 4, !tbaa !5, !invariant.load !16
  %cmp67 = icmp sgt i32 %14, %17
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br i1 %cmp67, label %for.inc78, label %for.cond56, !llvm.loop !19

for.inc78:                                        ; preds = %for.body58
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  br label %for.cond53, !llvm.loop !20

if.then83:                                        ; preds = %for.cond56
  %18 = trunc nuw nsw i64 %indvars.iv64 to i32
  %idxprom75 = and i64 %indvars.iv64, 4294967295
  %arrayidx76 = getelementptr inbounds nuw i32, ptr %call10, i64 %idxprom75
  %19 = load i32, ptr %arrayidx76, align 4, !tbaa !5, !invariant.load !16
  %call84 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %18, i32 noundef %19)
  br label %if.end86

if.else:                                          ; preds = %for.cond53
  %puts = call i32 @puts(ptr noundef nonnull dereferenceable(1) @str) #8
  br label %if.end86

if.end86:                                         ; preds = %if.else, %if.then83
  %20 = load ptr, ptr %call1, align 8, !tbaa !9
  call void @free(ptr noundef %20) #8
  call void @free(ptr noundef %call7) #8
  call void @free(ptr noundef %call10) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %l) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %h) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind allocsize(0) }
attributes #8 = { nounwind }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14}
!16 = !{}
!17 = distinct !{!17, !13, !14}
!18 = distinct !{!18, !13, !14}
!19 = distinct !{!19, !13, !14}
!20 = distinct !{!20, !13, !14}
