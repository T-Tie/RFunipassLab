; ModuleID = '<stdin>'
source_filename = "/tmp/tmprf1lput4.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x1, ptr noundef nonnull %y1)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %mul = shl nsw i64 %conv, 3
  %call1 = call noalias ptr @malloc(i64 noundef %mul) #7
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %1 = phi i32 [ %.pre, %for.inc13 ], [ %0, %entry ]
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.inc13 ], [ 0, %entry ]
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv46, %2
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %y1, align 4, !tbaa !5
  %conv2 = sext i32 %3 to i64
  %mul3 = shl nsw i64 %conv2, 2
  %call4 = call noalias ptr @malloc(i64 noundef %mul3) #7
  %arrayidx = getelementptr inbounds nuw ptr, ptr %call1, i64 %indvars.iv46
  store ptr %call4, ptr %arrayidx, align 8, !tbaa !9
  br label %for.cond5

for.cond5:                                        ; preds = %for.body7, %for.body
  %4 = phi i32 [ %.pre84, %for.body7 ], [ %3, %for.body ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body7 ], [ 0, %for.body ]
  %5 = sext i32 %4 to i64
  %cmp6 = icmp slt i64 %indvars.iv, %5
  br i1 %cmp6, label %for.body7, label %for.inc13

for.body7:                                        ; preds = %for.cond5
  %arrayidx11 = getelementptr inbounds nuw i32, ptr %call4, i64 %indvars.iv
  %call12 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef %arrayidx11)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre84 = load i32, ptr %y1, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !12

for.inc13:                                        ; preds = %for.cond5
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !15

for.end15:                                        ; preds = %for.cond
  %call16 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x2, ptr noundef nonnull %y2)
  %6 = load i32, ptr %x2, align 4, !tbaa !5
  %conv17 = sext i32 %6 to i64
  %mul18 = shl nsw i64 %conv17, 3
  %call19 = call noalias ptr @malloc(i64 noundef %mul18) #7
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc39, %for.end15
  %7 = phi i32 [ %.pre81, %for.inc39 ], [ %6, %for.end15 ]
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %for.inc39 ], [ 0, %for.end15 ]
  %8 = sext i32 %7 to i64
  %cmp21 = icmp slt i64 %indvars.iv52, %8
  br i1 %cmp21, label %for.body22, label %for.end41

for.body22:                                       ; preds = %for.cond20
  %9 = load i32, ptr %y2, align 4, !tbaa !5
  %conv23 = sext i32 %9 to i64
  %mul24 = shl nsw i64 %conv23, 2
  %call25 = call noalias ptr @malloc(i64 noundef %mul24) #7
  %arrayidx27 = getelementptr inbounds nuw ptr, ptr %call19, i64 %indvars.iv52
  store ptr %call25, ptr %arrayidx27, align 8, !tbaa !9
  br label %for.cond28

for.cond28:                                       ; preds = %for.body30, %for.body22
  %10 = phi i32 [ %.pre83, %for.body30 ], [ %9, %for.body22 ]
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.body30 ], [ 0, %for.body22 ]
  %11 = sext i32 %10 to i64
  %cmp29 = icmp slt i64 %indvars.iv49, %11
  br i1 %cmp29, label %for.body30, label %for.inc39

for.body30:                                       ; preds = %for.cond28
  %arrayidx34 = getelementptr inbounds nuw i32, ptr %call25, i64 %indvars.iv49
  %call35 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef %arrayidx34)
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %.pre83 = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.cond28, !llvm.loop !16

for.inc39:                                        ; preds = %for.cond28
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %.pre81 = load i32, ptr %x2, align 4, !tbaa !5
  br label %for.cond20, !llvm.loop !17

for.end41:                                        ; preds = %for.cond20
  %12 = load i32, ptr %x1, align 4, !tbaa !5
  %conv42 = sext i32 %12 to i64
  %mul43 = shl nsw i64 %conv42, 3
  %call44 = call noalias ptr @malloc(i64 noundef %mul43) #7
  %13 = load i32, ptr %y2, align 4
  %conv48 = sext i32 %13 to i64
  %mul49 = shl nsw i64 %conv48, 2
  %smax = call i32 @llvm.smax.i32(i32 %13, i32 0)
  %smax61 = call i32 @llvm.smax.i32(i32 %7, i32 0)
  %smax72 = call i32 @llvm.smax.i32(i32 %12, i32 0)
  %wide.trip.count73 = zext nneg i32 %smax72 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  %wide.trip.count62 = zext nneg i32 %smax61 to i64
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc88, %for.end41
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %for.inc88 ], [ 0, %for.end41 ]
  %exitcond74.not = icmp eq i64 %indvars.iv69, %wide.trip.count73
  br i1 %exitcond74.not, label %for.cond91, label %for.body47

for.body47:                                       ; preds = %for.cond45
  %call50 = call noalias ptr @malloc(i64 noundef %mul49) #7
  %arrayidx52 = getelementptr inbounds nuw ptr, ptr %call44, i64 %indvars.iv69
  store ptr %call50, ptr %arrayidx52, align 8, !tbaa !9
  br label %for.cond53

for.cond53:                                       ; preds = %for.body55, %for.body47
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %for.body55 ], [ 0, %for.body47 ]
  %exitcond.not = icmp eq i64 %indvars.iv55, %wide.trip.count
  br i1 %exitcond.not, label %for.cond63.preheader, label %for.body55

for.cond63.preheader:                             ; preds = %for.cond53
  %arrayidx70 = getelementptr inbounds nuw ptr, ptr %call1, i64 %indvars.iv69
  br label %for.cond63

for.body55:                                       ; preds = %for.cond53
  %arrayidx59 = getelementptr inbounds nuw i32, ptr %call50, i64 %indvars.iv55
  store i32 0, ptr %arrayidx59, align 4, !tbaa !5
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  br label %for.cond53, !llvm.loop !18

for.cond63:                                       ; preds = %for.cond63.preheader, %for.cond.cleanup
  %indvars.iv64 = phi i64 [ 0, %for.cond63.preheader ], [ %indvars.iv.next65, %for.cond.cleanup ]
  %exitcond68.not = icmp eq i64 %indvars.iv64, %wide.trip.count
  br i1 %exitcond68.not, label %for.inc88, label %for.cond66.preheader

for.cond66.preheader:                             ; preds = %for.cond63
  %arrayidx81 = getelementptr inbounds nuw i32, ptr %call50, i64 %indvars.iv64
  br label %for.cond66

for.cond66:                                       ; preds = %for.cond66.preheader, %for.body68
  %indvars.iv58 = phi i64 [ 0, %for.cond66.preheader ], [ %indvars.iv.next59, %for.body68 ]
  %exitcond63.not = icmp eq i64 %indvars.iv58, %wide.trip.count62
  br i1 %exitcond63.not, label %for.cond.cleanup, label %for.body68

for.cond.cleanup:                                 ; preds = %for.cond66
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  br label %for.cond63, !llvm.loop !19

for.body68:                                       ; preds = %for.cond66
  %14 = load ptr, ptr %arrayidx70, align 8, !tbaa !9
  %arrayidx72 = getelementptr inbounds nuw i32, ptr %14, i64 %indvars.iv58
  %15 = load i32, ptr %arrayidx72, align 4, !tbaa !5
  %arrayidx74 = getelementptr inbounds nuw ptr, ptr %call19, i64 %indvars.iv58
  %16 = load ptr, ptr %arrayidx74, align 8, !tbaa !9
  %arrayidx76 = getelementptr inbounds nuw i32, ptr %16, i64 %indvars.iv64
  %17 = load i32, ptr %arrayidx76, align 4, !tbaa !5
  %mul77 = mul nsw i32 %17, %15
  %18 = load i32, ptr %arrayidx81, align 4, !tbaa !5
  %add = add nsw i32 %18, %mul77
  store i32 %add, ptr %arrayidx81, align 4, !tbaa !5
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %for.cond66, !llvm.loop !20

for.inc88:                                        ; preds = %for.cond63
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  br label %for.cond45, !llvm.loop !21

for.cond91:                                       ; preds = %for.cond45, %for.end104
  %19 = phi i32 [ %.pre82, %for.end104 ], [ %12, %for.cond45 ]
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %for.end104 ], [ 0, %for.cond45 ]
  %20 = sext i32 %19 to i64
  %cmp92 = icmp slt i64 %indvars.iv78, %20
  br i1 %cmp92, label %for.cond94.preheader, label %for.end112

for.cond94.preheader:                             ; preds = %for.cond91
  %arrayidx98 = getelementptr inbounds nuw ptr, ptr %call44, i64 %indvars.iv78
  %21 = load ptr, ptr %arrayidx98, align 8, !tbaa !9
  br label %for.cond94

for.cond94:                                       ; preds = %for.cond94.preheader, %for.body96
  %indvars.iv75 = phi i64 [ 0, %for.cond94.preheader ], [ %indvars.iv.next76, %for.body96 ]
  %22 = load i32, ptr %y2, align 4, !tbaa !5
  %sub = add nsw i32 %22, -1
  %23 = sext i32 %sub to i64
  %cmp95 = icmp slt i64 %indvars.iv75, %23
  br i1 %cmp95, label %for.body96, label %for.end104

for.body96:                                       ; preds = %for.cond94
  %arrayidx100 = getelementptr inbounds nuw i32, ptr %21, i64 %indvars.iv75
  %24 = load i32, ptr %arrayidx100, align 4, !tbaa !5
  %call101 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %24)
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  br label %for.cond94, !llvm.loop !22

for.end104:                                       ; preds = %for.cond94
  %idxprom107 = and i64 %indvars.iv75, 4294967295
  %arrayidx108 = getelementptr inbounds nuw i32, ptr %21, i64 %idxprom107
  %25 = load i32, ptr %arrayidx108, align 4, !tbaa !5
  %call109 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %25)
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  %.pre82 = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond91, !llvm.loop !23

for.end112:                                       ; preds = %for.cond91
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

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
!16 = distinct !{!16, !13, !14}
!17 = distinct !{!17, !13, !14}
!18 = distinct !{!18, !13, !14}
!19 = distinct !{!19, !13, !14}
!20 = distinct !{!20, !13, !14}
!21 = distinct !{!21, !13, !14}
!22 = distinct !{!22, !13, !14}
!23 = distinct !{!23, !13, !14}
