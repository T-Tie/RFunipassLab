; ModuleID = '<stdin>'
source_filename = "/tmp/tmpc9dufp80.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a1 = alloca i32, align 4
  %a2 = alloca i32, align 4
  %b1 = alloca i32, align 4
  %b2 = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %b = alloca [100 x [100 x i32]], align 16
  %c = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a2) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b2) #7
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #7
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %b) #7
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %c) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40000) %c, i8 0, i64 40000, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a1, ptr noundef nonnull %a2)
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup3, %entry
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.cond.cleanup3 ], [ 0, %entry ]
  %0 = load i32, ptr %a1, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv26, %1
  br i1 %cmp, label %for.cond1, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  %call11 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %b1, ptr noundef nonnull %b2)
  br label %for.cond13

for.cond1:                                        ; preds = %for.cond, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond ]
  %2 = load i32, ptr %a2, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp2, label %for.body4, label %for.cond.cleanup3

for.cond.cleanup3:                                ; preds = %for.cond1
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond, !llvm.loop !9

for.body4:                                        ; preds = %for.cond1
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv26, i64 %indvars.iv
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !12

for.cond13:                                       ; preds = %for.cond.cleanup20, %for.cond.cleanup
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.cond.cleanup20 ], [ 0, %for.cond.cleanup ]
  %4 = load i32, ptr %b1, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp14 = icmp slt i64 %indvars.iv32, %5
  br i1 %cmp14, label %for.cond18, label %for.cond34.preheader

for.cond34.preheader:                             ; preds = %for.cond13
  %6 = load i32, ptr %a1, align 4, !tbaa !5
  %7 = load i32, ptr %b2, align 4
  %8 = load i32, ptr %a2, align 4
  %smax = call i32 @llvm.smax.i32(i32 %8, i32 0)
  %smax41 = call i32 @llvm.smax.i32(i32 %7, i32 0)
  %smax47 = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %wide.trip.count48 = zext nneg i32 %smax47 to i64
  %wide.trip.count42 = zext nneg i32 %smax41 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond34

for.cond18:                                       ; preds = %for.cond13, %for.body21
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.body21 ], [ 0, %for.cond13 ]
  %9 = load i32, ptr %b2, align 4, !tbaa !5
  %10 = sext i32 %9 to i64
  %cmp19 = icmp slt i64 %indvars.iv29, %10
  br i1 %cmp19, label %for.body21, label %for.cond.cleanup20

for.cond.cleanup20:                               ; preds = %for.cond18
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond13, !llvm.loop !13

for.body21:                                       ; preds = %for.cond18
  %arrayidx25 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv32, i64 %indvars.iv29
  %call26 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx25)
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond18, !llvm.loop !14

for.cond34:                                       ; preds = %for.cond34.preheader, %for.cond.cleanup41
  %indvars.iv44 = phi i64 [ 0, %for.cond34.preheader ], [ %indvars.iv.next45, %for.cond.cleanup41 ]
  %exitcond49.not = icmp eq i64 %indvars.iv44, %wide.trip.count48
  br i1 %exitcond49.not, label %for.cond69, label %for.cond39

for.cond39:                                       ; preds = %for.cond34, %for.cond.cleanup45
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.cond.cleanup45 ], [ 0, %for.cond34 ]
  %exitcond43.not = icmp eq i64 %indvars.iv38, %wide.trip.count42
  br i1 %exitcond43.not, label %for.cond.cleanup41, label %for.cond43.preheader

for.cond43.preheader:                             ; preds = %for.cond39
  %arrayidx58 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv44, i64 %indvars.iv38
  br label %for.cond43

for.cond.cleanup41:                               ; preds = %for.cond39
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  br label %for.cond34, !llvm.loop !15

for.cond43:                                       ; preds = %for.cond43.preheader, %for.body46
  %indvars.iv35 = phi i64 [ 0, %for.cond43.preheader ], [ %indvars.iv.next36, %for.body46 ]
  %exitcond.not = icmp eq i64 %indvars.iv35, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup45, label %for.body46

for.cond.cleanup45:                               ; preds = %for.cond43
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond39, !llvm.loop !16

for.body46:                                       ; preds = %for.cond43
  %arrayidx50 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv44, i64 %indvars.iv35
  %11 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %arrayidx54 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv35, i64 %indvars.iv38
  %12 = load i32, ptr %arrayidx54, align 4, !tbaa !5
  %mul = mul nsw i32 %12, %11
  %13 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  %add = add nsw i32 %13, %mul
  store i32 %add, ptr %arrayidx58, align 4, !tbaa !5
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond43, !llvm.loop !17

for.cond69:                                       ; preds = %for.cond34, %for.cond.cleanup82
  %14 = phi i32 [ %.pre, %for.cond.cleanup82 ], [ %6, %for.cond34 ]
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.cond.cleanup82 ], [ 0, %for.cond34 ]
  %15 = sext i32 %14 to i64
  %cmp70 = icmp slt i64 %indvars.iv53, %15
  br i1 %cmp70, label %for.body72, label %for.cond.cleanup71

for.cond.cleanup71:                               ; preds = %for.cond69
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %c) #7
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a1) #7
  ret i32 0

for.body72:                                       ; preds = %for.cond69
  %arrayidx74 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv53
  %16 = load i32, ptr %arrayidx74, align 16, !tbaa !5
  %call76 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %16)
  %17 = load i32, ptr %b2, align 4, !tbaa !5
  %cmp77 = icmp eq i32 %17, 1
  br i1 %cmp77, label %if.then, label %for.cond80.preheader

if.then:                                          ; preds = %for.body72
  %putchar = call i32 @putchar(i32 10)
  br label %for.cond80.preheader

for.cond80.preheader:                             ; preds = %if.then, %for.body72
  br label %for.cond80

for.cond80:                                       ; preds = %for.cond80.preheader, %for.inc93
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %for.inc93 ], [ 1, %for.cond80.preheader ]
  %18 = load i32, ptr %b2, align 4, !tbaa !5
  %19 = sext i32 %18 to i64
  %cmp81 = icmp slt i64 %indvars.iv50, %19
  br i1 %cmp81, label %for.body83, label %for.cond.cleanup82

for.cond.cleanup82:                               ; preds = %for.cond80
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %.pre = load i32, ptr %a1, align 4, !tbaa !5
  br label %for.cond69, !llvm.loop !18

for.body83:                                       ; preds = %for.cond80
  %arrayidx87 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv53, i64 %indvars.iv50
  %20 = load i32, ptr %arrayidx87, align 4, !tbaa !5
  %call88 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %20)
  %21 = load i32, ptr %b2, align 4, !tbaa !5
  %sub = add nsw i32 %21, -1
  %22 = zext i32 %sub to i64
  %cmp89 = icmp eq i64 %indvars.iv50, %22
  br i1 %cmp89, label %if.then90, label %for.inc93

if.then90:                                        ; preds = %for.body83
  %putchar24 = call i32 @putchar(i32 10)
  br label %for.inc93

for.inc93:                                        ; preds = %for.body83, %if.then90
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  br label %for.cond80, !llvm.loop !19
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
