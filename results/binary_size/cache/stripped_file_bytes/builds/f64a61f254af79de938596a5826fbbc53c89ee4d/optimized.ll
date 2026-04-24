; ModuleID = '<stdin>'
source_filename = "/tmp/tmpbwpmbtqv.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [200 x [200 x i32]], align 16
  %b = alloca [200 x [200 x i32]], align 16
  %c = alloca [200 x [200 x i32]], align 16
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %p = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 160000, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 160000, ptr nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 160000, ptr nonnull %c) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %m, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.inc7 ], [ 1, %entry ]
  %0 = load i32, ptr %m, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv44, %1
  br i1 %cmp.not, label %for.end9, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 1, %for.cond ]
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp2.not = icmp sgt i64 %indvars.iv, %3
  br i1 %cmp2.not, label %for.inc7, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv44, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  %call10 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n, ptr noundef nonnull %p)
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc25, %for.end9
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %for.inc25 ], [ 1, %for.end9 ]
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp12.not = icmp sgt i64 %indvars.iv50, %5
  br i1 %cmp12.not, label %for.cond28.preheader, label %for.cond14

for.cond28.preheader:                             ; preds = %for.cond11
  %6 = load i32, ptr %m, align 4, !tbaa !5
  %7 = load i32, ptr %p, align 4
  %smax = call i32 @llvm.smax.i32(i32 %4, i32 0)
  %8 = add nuw i32 %smax, 1
  %smax60 = call i32 @llvm.smax.i32(i32 %7, i32 0)
  %9 = add nuw i32 %smax60, 1
  %smax66 = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %10 = add nuw i32 %smax66, 1
  %wide.trip.count67 = zext i32 %10 to i64
  %wide.trip.count61 = zext i32 %9 to i64
  %wide.trip.count = zext i32 %8 to i64
  br label %for.cond28

for.cond14:                                       ; preds = %for.cond11, %for.body16
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %for.body16 ], [ 1, %for.cond11 ]
  %11 = load i32, ptr %p, align 4, !tbaa !5
  %12 = sext i32 %11 to i64
  %cmp15.not = icmp sgt i64 %indvars.iv47, %12
  br i1 %cmp15.not, label %for.inc25, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %arrayidx20 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %b, i64 0, i64 %indvars.iv50, i64 %indvars.iv47
  %call21 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx20)
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br label %for.cond14, !llvm.loop !13

for.inc25:                                        ; preds = %for.cond14
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  br label %for.cond11, !llvm.loop !14

for.cond28:                                       ; preds = %for.cond28.preheader, %for.inc63
  %indvars.iv63 = phi i64 [ 1, %for.cond28.preheader ], [ %indvars.iv.next64, %for.inc63 ]
  %exitcond68 = icmp eq i64 %indvars.iv63, %wide.trip.count67
  br i1 %exitcond68, label %for.cond66, label %for.cond31

for.cond31:                                       ; preds = %for.cond28, %for.inc60
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %for.inc60 ], [ 1, %for.cond28 ]
  %exitcond62 = icmp eq i64 %indvars.iv57, %wide.trip.count61
  br i1 %exitcond62, label %for.inc63, label %for.body33

for.body33:                                       ; preds = %for.cond31
  %arrayidx37 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %c, i64 0, i64 %indvars.iv63, i64 %indvars.iv57
  store i32 0, ptr %arrayidx37, align 4, !tbaa !5
  br label %for.cond38

for.cond38:                                       ; preds = %for.body40, %for.body33
  %13 = phi i32 [ %add, %for.body40 ], [ 0, %for.body33 ]
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.body40 ], [ 1, %for.body33 ]
  %exitcond = icmp eq i64 %indvars.iv53, %wide.trip.count
  br i1 %exitcond, label %for.inc60, label %for.body40

for.body40:                                       ; preds = %for.cond38
  %arrayidx48 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv63, i64 %indvars.iv53
  %14 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %arrayidx52 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %b, i64 0, i64 %indvars.iv53, i64 %indvars.iv57
  %15 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %mul = mul nsw i32 %15, %14
  %add = add nsw i32 %mul, %13
  store i32 %add, ptr %arrayidx37, align 4, !tbaa !5
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %for.cond38, !llvm.loop !15

for.inc60:                                        ; preds = %for.cond38
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  br label %for.cond31, !llvm.loop !16

for.inc63:                                        ; preds = %for.cond31
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  br label %for.cond28, !llvm.loop !17

for.cond66:                                       ; preds = %for.cond28, %for.inc86
  %16 = phi i32 [ %19, %for.inc86 ], [ %7, %for.cond28 ]
  %17 = phi i32 [ %.pre, %for.inc86 ], [ %6, %for.cond28 ]
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.inc86 ], [ 1, %for.cond28 ]
  %18 = sext i32 %17 to i64
  %cmp67 = icmp slt i64 %indvars.iv72, %18
  br i1 %cmp67, label %for.cond69, label %for.cond89.preheader

for.cond89.preheader:                             ; preds = %for.cond66
  %idxprom94 = and i64 %indvars.iv72, 4294967295
  br label %for.cond89

for.cond69:                                       ; preds = %for.cond66, %for.body71
  %19 = phi i32 [ %.pre79, %for.body71 ], [ %16, %for.cond66 ]
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %for.body71 ], [ 1, %for.cond66 ]
  %20 = sext i32 %19 to i64
  %cmp70.not = icmp sgt i64 %indvars.iv69, %20
  br i1 %cmp70.not, label %for.inc86, label %for.body71

for.body71:                                       ; preds = %for.cond69
  %21 = zext i32 %19 to i64
  %cmp72.not = icmp eq i64 %indvars.iv69, %21
  %arrayidx81 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %c, i64 0, i64 %indvars.iv72, i64 %indvars.iv69
  %22 = load i32, ptr %arrayidx81, align 4, !tbaa !5
  %.str.3..str.2 = select i1 %cmp72.not, ptr @.str.3, ptr @.str.2
  %call77 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.3..str.2, i32 noundef %22)
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  %.pre79 = load i32, ptr %p, align 4, !tbaa !5
  br label %for.cond69, !llvm.loop !18

for.inc86:                                        ; preds = %for.cond69
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  %.pre = load i32, ptr %m, align 4, !tbaa !5
  br label %for.cond66, !llvm.loop !19

for.cond89:                                       ; preds = %for.cond89.preheader, %for.body91
  %23 = phi i32 [ %16, %for.cond89.preheader ], [ %.pre78, %for.body91 ]
  %indvars.iv75 = phi i64 [ 1, %for.cond89.preheader ], [ %indvars.iv.next76, %for.body91 ]
  %24 = sext i32 %23 to i64
  %cmp90.not = icmp sgt i64 %indvars.iv75, %24
  br i1 %cmp90.not, label %for.end108, label %for.body91

for.body91:                                       ; preds = %for.cond89
  %25 = zext i32 %23 to i64
  %cmp92.not = icmp eq i64 %indvars.iv75, %25
  %arrayidx103 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %c, i64 0, i64 %idxprom94, i64 %indvars.iv75
  %26 = load i32, ptr %arrayidx103, align 4, !tbaa !5
  %.str.1..str.2 = select i1 %cmp92.not, ptr @.str.1, ptr @.str.2
  %call98 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.1..str.2, i32 noundef %26)
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  %.pre78 = load i32, ptr %p, align 4, !tbaa !5
  br label %for.cond89, !llvm.loop !20

for.end108:                                       ; preds = %for.cond89
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #5
  call void @llvm.lifetime.end.p0(i64 160000, ptr nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 160000, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 160000, ptr nonnull %a) #5
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
!20 = distinct !{!20, !10, !11}
