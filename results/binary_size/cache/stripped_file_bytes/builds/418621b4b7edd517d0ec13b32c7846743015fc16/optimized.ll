; ModuleID = '<stdin>'
source_filename = "/tmp/tmp67s67lgw.cpp"
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
  %a = alloca [101 x [101 x i32]], align 16
  %b = alloca [101 x [101 x i32]], align 16
  %c = alloca [101 x [101 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x1) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y1) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x2) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y2) #5
  call void @llvm.lifetime.start.p0(i64 noundef 40804, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 40804, ptr noundef nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 noundef 40804, ptr noundef nonnull %c) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %x1, ptr noundef nonnull align 4 %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %for.end ], [ 1, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.cond1, label %for.end9

for.cond1:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %for.cond ]
  %1 = load i32, ptr %y1, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp2.not = icmp sgt i64 %indvars.iv, %2
  br i1 %cmp2.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv12, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  br label %for.cond

for.end9:                                         ; preds = %for.cond
  %call10 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x2, ptr noundef nonnull %y2)
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc25, %for.end9
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.inc25 ], [ 1, %for.end9 ]
  %3 = load i32, ptr %x2, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp12.not = icmp sgt i64 %indvars.iv18, %4
  br i1 %cmp12.not, label %for.cond28.preheader, label %for.cond14

for.cond28.preheader:                             ; preds = %for.cond11
  %5 = load i32, ptr %x1, align 4, !tbaa !5
  %6 = load i32, ptr %y2, align 4
  %7 = load i32, ptr %y1, align 4
  %smax = call i32 @llvm.smax.i32(i32 %7, i32 0)
  %8 = add nuw i32 %smax, 1
  %smax27 = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %9 = add nuw i32 %smax27, 1
  %smax33 = call i32 @llvm.smax.i32(i32 %5, i32 0)
  %10 = add nuw i32 %smax33, 1
  %wide.trip.count34 = zext i32 %10 to i64
  %wide.trip.count28 = zext i32 %9 to i64
  %wide.trip.count = zext i32 %8 to i64
  br label %for.cond28

for.cond14:                                       ; preds = %for.cond11, %for.inc22
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.inc22 ], [ 1, %for.cond11 ]
  %11 = load i32, ptr %y2, align 4, !tbaa !5
  %12 = sext i32 %11 to i64
  %cmp15.not = icmp sgt i64 %indvars.iv15, %12
  br i1 %cmp15.not, label %for.inc25, label %for.inc22

for.inc22:                                        ; preds = %for.cond14
  %arrayidx20 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv18, i64 %indvars.iv15
  %call21 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx20)
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  br label %for.cond14, !llvm.loop !12

for.inc25:                                        ; preds = %for.cond14
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond11, !llvm.loop !13

for.cond28:                                       ; preds = %for.cond28.preheader, %for.inc63
  %indvars.iv30 = phi i64 [ 1, %for.cond28.preheader ], [ %indvars.iv.next31, %for.inc63 ]
  %exitcond35 = icmp eq i64 %indvars.iv30, %wide.trip.count34
  br i1 %exitcond35, label %for.cond66.preheader, label %for.cond31

for.cond66.preheader:                             ; preds = %for.cond28
  %arrayidx73 = getelementptr inbounds nuw i8, ptr %c, i64 404
  br label %for.cond66

for.cond31:                                       ; preds = %for.cond28, %for.inc60
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.inc60 ], [ 1, %for.cond28 ]
  %exitcond29 = icmp eq i64 %indvars.iv24, %wide.trip.count28
  br i1 %exitcond29, label %for.inc63, label %for.body33

for.body33:                                       ; preds = %for.cond31
  %arrayidx37 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv30, i64 %indvars.iv24
  store i32 0, ptr %arrayidx37, align 4, !tbaa !5
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc57, %for.body33
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.inc57 ], [ 1, %for.body33 ]
  %exitcond = icmp eq i64 %indvars.iv21, %wide.trip.count
  br i1 %exitcond, label %for.inc60, label %for.inc57

for.inc57:                                        ; preds = %for.cond38
  %arrayidx48 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv30, i64 %indvars.iv21
  %13 = load i32, ptr %arrayidx48, align 4, !tbaa !5, !invariant.load !14
  %arrayidx52 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv21, i64 %indvars.iv24
  %14 = load i32, ptr %arrayidx52, align 4, !tbaa !5, !invariant.load !14
  %mul = mul nsw i32 %14, %13
  store i32 %mul, ptr %arrayidx37, align 4, !tbaa !5
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond38, !llvm.loop !15

for.inc60:                                        ; preds = %for.cond38
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  br label %for.cond31, !llvm.loop !16

for.inc63:                                        ; preds = %for.cond31
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond28, !llvm.loop !17

for.cond66:                                       ; preds = %for.cond66.preheader, %for.end79
  %15 = phi i32 [ %5, %for.cond66.preheader ], [ %.pre, %for.end79 ]
  %cmp67 = icmp sgt i32 %15, 0
  br i1 %cmp67, label %for.cond69, label %for.end87

for.cond69:                                       ; preds = %for.cond66, %for.body71
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %for.body71 ], [ 1, %for.cond66 ]
  %16 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp70 = icmp sgt i32 %16, 1
  br i1 %cmp70, label %for.body71, label %for.end79

for.body71:                                       ; preds = %for.cond69
  %arrayidx75 = getelementptr inbounds nuw [101 x i32], ptr %arrayidx73, i64 0, i64 %indvars.iv36
  %17 = load i32, ptr %arrayidx75, align 4, !tbaa !5, !invariant.load !14
  %call76 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %17)
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  br label %for.cond69

for.end79:                                        ; preds = %for.cond69
  %idxprom82 = sext i32 %16 to i64
  %arrayidx83 = getelementptr inbounds [101 x i32], ptr %arrayidx73, i64 0, i64 %idxprom82
  %18 = load i32, ptr %arrayidx83, align 4, !tbaa !5, !invariant.load !14
  %call84 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %18)
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond66

for.end87:                                        ; preds = %for.cond66
  call void @llvm.lifetime.end.p0(i64 noundef 40804, ptr noundef nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 noundef 40804, ptr noundef nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 40804, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y2) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x2) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y1) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x1) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }

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
!14 = !{}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
