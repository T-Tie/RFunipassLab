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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #5
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %c) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x1, ptr noundef nonnull %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %for.inc7 ], [ 1, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv34, %1
  br i1 %cmp.not, label %for.end9, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 1, %for.cond ]
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp2.not = icmp sgt i64 %indvars.iv, %3
  br i1 %cmp2.not, label %for.inc7, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv34, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  %call10 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x2, ptr noundef nonnull %y2)
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc25, %for.end9
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %for.inc25 ], [ 1, %for.end9 ]
  %4 = load i32, ptr %x2, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp12.not = icmp sgt i64 %indvars.iv40, %5
  br i1 %cmp12.not, label %for.cond28.preheader, label %for.cond14

for.cond28.preheader:                             ; preds = %for.cond11
  %6 = load i32, ptr %x1, align 4, !tbaa !5
  %7 = load i32, ptr %y2, align 4
  %8 = load i32, ptr %y1, align 4
  %smax = call i32 @llvm.smax.i32(i32 %8, i32 0)
  %9 = add nuw i32 %smax, 1
  %smax49 = call i32 @llvm.smax.i32(i32 %7, i32 0)
  %10 = add nuw i32 %smax49, 1
  %smax55 = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %11 = add nuw i32 %smax55, 1
  %wide.trip.count56 = zext i32 %11 to i64
  %wide.trip.count50 = zext i32 %10 to i64
  %wide.trip.count = zext i32 %9 to i64
  br label %for.cond28

for.cond14:                                       ; preds = %for.cond11, %for.body16
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.body16 ], [ 1, %for.cond11 ]
  %12 = load i32, ptr %y2, align 4, !tbaa !5
  %13 = sext i32 %12 to i64
  %cmp15.not = icmp sgt i64 %indvars.iv37, %13
  br i1 %cmp15.not, label %for.inc25, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %arrayidx20 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv40, i64 %indvars.iv37
  %call21 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx20)
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond14, !llvm.loop !13

for.inc25:                                        ; preds = %for.cond14
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %for.cond11, !llvm.loop !14

for.cond28:                                       ; preds = %for.cond28.preheader, %for.inc63
  %indvars.iv52 = phi i64 [ 1, %for.cond28.preheader ], [ %indvars.iv.next53, %for.inc63 ]
  %exitcond57 = icmp eq i64 %indvars.iv52, %wide.trip.count56
  br i1 %exitcond57, label %for.cond66, label %for.cond31

for.cond31:                                       ; preds = %for.cond28, %for.inc60
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.inc60 ], [ 1, %for.cond28 ]
  %exitcond51 = icmp eq i64 %indvars.iv46, %wide.trip.count50
  br i1 %exitcond51, label %for.inc63, label %for.body33

for.body33:                                       ; preds = %for.cond31
  %arrayidx37 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv52, i64 %indvars.iv46
  store i32 0, ptr %arrayidx37, align 4, !tbaa !5
  br label %for.cond38

for.cond38:                                       ; preds = %for.body40, %for.body33
  %14 = phi i32 [ %add, %for.body40 ], [ 0, %for.body33 ]
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %for.body40 ], [ 1, %for.body33 ]
  %exitcond = icmp eq i64 %indvars.iv43, %wide.trip.count
  br i1 %exitcond, label %for.inc60, label %for.body40

for.body40:                                       ; preds = %for.cond38
  %arrayidx48 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv52, i64 %indvars.iv43
  %15 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %arrayidx52 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv43, i64 %indvars.iv46
  %16 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %mul = mul nsw i32 %16, %15
  %add = add nsw i32 %mul, %14
  store i32 %add, ptr %arrayidx37, align 4, !tbaa !5
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  br label %for.cond38, !llvm.loop !15

for.inc60:                                        ; preds = %for.cond38
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br label %for.cond31, !llvm.loop !16

for.inc63:                                        ; preds = %for.cond31
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  br label %for.cond28, !llvm.loop !17

for.cond66:                                       ; preds = %for.cond28, %for.end79
  %17 = phi i32 [ %.pre, %for.end79 ], [ %6, %for.cond28 ]
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %for.end79 ], [ 1, %for.cond28 ]
  %18 = sext i32 %17 to i64
  %cmp67.not = icmp sgt i64 %indvars.iv61, %18
  br i1 %cmp67.not, label %for.end87, label %for.cond69

for.cond69:                                       ; preds = %for.cond66, %for.body71
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.body71 ], [ 1, %for.cond66 ]
  %19 = load i32, ptr %y2, align 4, !tbaa !5
  %20 = sext i32 %19 to i64
  %cmp70.not.not = icmp slt i64 %indvars.iv58, %20
  br i1 %cmp70.not.not, label %for.body71, label %for.end79

for.body71:                                       ; preds = %for.cond69
  %arrayidx75 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv61, i64 %indvars.iv58
  %21 = load i32, ptr %arrayidx75, align 4, !tbaa !5
  %call76 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %21)
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %for.cond69, !llvm.loop !18

for.end79:                                        ; preds = %for.cond69
  %arrayidx83 = getelementptr inbounds [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv61, i64 %20
  %22 = load i32, ptr %arrayidx83, align 4, !tbaa !5
  %call84 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %22)
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond66, !llvm.loop !19

for.end87:                                        ; preds = %for.cond66
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #5
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
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
