; ModuleID = '<stdin>'
source_filename = "/tmp/tmpfbo4wdja.cpp"
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
  %a = alloca [100 x [100 x i32]], align 16
  %b = alloca [100 x [100 x i32]], align 16
  %c = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #5
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40000) %a, i8 0, i64 40000, i1 false)
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %b) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40000) %b, i8 0, i64 40000, i1 false)
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %c) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40000) %c, i8 0, i64 40000, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x1, ptr noundef nonnull %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %for.inc8 ], [ 0, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv41, %1
  br i1 %cmp.not.not, label %for.cond1, label %for.end10

for.cond1:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp3.not.not = icmp slt i64 %indvars.iv, %3
  br i1 %cmp3.not.not, label %for.inc, label %for.inc8

for.inc:                                          ; preds = %for.cond1
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv41, i64 %indvars.iv
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond1
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  %call11 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x2, ptr noundef nonnull %y2)
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc28, %for.end10
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %for.inc28 ], [ 0, %for.end10 ]
  %4 = load i32, ptr %x2, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp14.not.not = icmp slt i64 %indvars.iv47, %5
  br i1 %cmp14.not.not, label %for.cond16, label %for.cond31.preheader

for.cond31.preheader:                             ; preds = %for.cond12
  %6 = load i32, ptr %x1, align 4, !tbaa !5
  %7 = load i32, ptr %y2, align 4
  %smax = call i32 @llvm.smax.i32(i32 %7, i32 0)
  %smax56 = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %wide.trip.count57 = zext nneg i32 %smax56 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond31

for.cond16:                                       ; preds = %for.cond12, %for.inc25
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.inc25 ], [ 0, %for.cond12 ]
  %8 = load i32, ptr %y2, align 4, !tbaa !5
  %9 = sext i32 %8 to i64
  %cmp18.not.not = icmp slt i64 %indvars.iv44, %9
  br i1 %cmp18.not.not, label %for.inc25, label %for.inc28

for.inc25:                                        ; preds = %for.cond16
  %arrayidx23 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv47, i64 %indvars.iv44
  %call24 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx23)
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  br label %for.cond16, !llvm.loop !13

for.inc28:                                        ; preds = %for.cond16
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br label %for.cond12, !llvm.loop !14

for.cond31:                                       ; preds = %for.cond31.preheader, %for.inc46
  %indvars.iv53 = phi i64 [ 0, %for.cond31.preheader ], [ %indvars.iv.next54, %for.inc46 ]
  %exitcond58.not = icmp eq i64 %indvars.iv53, %wide.trip.count57
  br i1 %exitcond58.not, label %for.cond49.preheader, label %for.cond35

for.cond49.preheader:                             ; preds = %for.cond31
  %smax63 = call i32 @llvm.smax.i32(i32 %4, i32 0)
  %wide.trip.count70 = zext nneg i32 %smax to i64
  %wide.trip.count64 = zext nneg i32 %smax63 to i64
  br label %for.cond49

for.cond35:                                       ; preds = %for.cond31, %for.inc43
  %indvars.iv50 = phi i64 [ %indvars.iv.next51, %for.inc43 ], [ 0, %for.cond31 ]
  %exitcond.not = icmp eq i64 %indvars.iv50, %wide.trip.count
  br i1 %exitcond.not, label %for.inc46, label %for.inc43

for.inc43:                                        ; preds = %for.cond35
  %arrayidx42 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv53, i64 %indvars.iv50
  store i32 0, ptr %arrayidx42, align 4, !tbaa !5
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  br label %for.cond35, !llvm.loop !15

for.inc46:                                        ; preds = %for.cond35
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  br label %for.cond31, !llvm.loop !16

for.cond49:                                       ; preds = %for.cond49.preheader, %for.inc83
  %indvars.iv72 = phi i64 [ 0, %for.cond49.preheader ], [ %indvars.iv.next73, %for.inc83 ]
  %exitcond76.not = icmp eq i64 %indvars.iv72, %wide.trip.count57
  br i1 %exitcond76.not, label %for.cond86, label %for.cond53

for.cond53:                                       ; preds = %for.cond49, %for.inc80
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %for.inc80 ], [ 0, %for.cond49 ]
  %exitcond71.not = icmp eq i64 %indvars.iv66, %wide.trip.count70
  br i1 %exitcond71.not, label %for.inc83, label %for.cond57.preheader

for.cond57.preheader:                             ; preds = %for.cond53
  %arrayidx64 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv72, i64 %indvars.iv66
  br label %for.cond57

for.cond57:                                       ; preds = %for.cond57.preheader, %for.inc77
  %indvars.iv59 = phi i64 [ 0, %for.cond57.preheader ], [ %indvars.iv.next60, %for.inc77 ]
  %exitcond65.not = icmp eq i64 %indvars.iv59, %wide.trip.count64
  br i1 %exitcond65.not, label %for.inc80, label %for.inc77

for.inc77:                                        ; preds = %for.cond57
  %10 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  %arrayidx68 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv72, i64 %indvars.iv59
  %11 = load i32, ptr %arrayidx68, align 4, !tbaa !5
  %arrayidx72 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv59, i64 %indvars.iv66
  %12 = load i32, ptr %arrayidx72, align 4, !tbaa !5
  %mul = mul nsw i32 %12, %11
  %add = add nsw i32 %mul, %10
  store i32 %add, ptr %arrayidx64, align 4, !tbaa !5
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  br label %for.cond57, !llvm.loop !17

for.inc80:                                        ; preds = %for.cond57
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  br label %for.cond53, !llvm.loop !18

for.inc83:                                        ; preds = %for.cond53
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  br label %for.cond49, !llvm.loop !19

for.cond86:                                       ; preds = %for.cond49, %for.inc109
  %13 = phi i32 [ %16, %for.inc109 ], [ %7, %for.cond49 ]
  %14 = phi i32 [ %.pre, %for.inc109 ], [ %6, %for.cond49 ]
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %for.inc109 ], [ 0, %for.cond49 ]
  %15 = sext i32 %14 to i64
  %cmp88.not.not = icmp slt i64 %indvars.iv80, %15
  br i1 %cmp88.not.not, label %for.cond90, label %for.end111

for.cond90:                                       ; preds = %for.cond86, %for.body93
  %16 = phi i32 [ %.pre83, %for.body93 ], [ %13, %for.cond86 ]
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %for.body93 ], [ 0, %for.cond86 ]
  %17 = sext i32 %16 to i64
  %cmp92.not.not = icmp slt i64 %indvars.iv77, %17
  br i1 %cmp92.not.not, label %for.body93, label %for.inc109

for.body93:                                       ; preds = %for.cond90
  %sub91 = add nsw i32 %16, -1
  %18 = sext i32 %sub91 to i64
  %cmp95 = icmp slt i64 %indvars.iv77, %18
  %arrayidx99 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv80, i64 %indvars.iv77
  %19 = load i32, ptr %arrayidx99, align 4, !tbaa !5
  %.str.2..str.3 = select i1 %cmp95, ptr @.str.2, ptr @.str.3
  %call100 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.2..str.3, i32 noundef %19)
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  %.pre83 = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.cond90, !llvm.loop !20

for.inc109:                                       ; preds = %for.cond90
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond86, !llvm.loop !21

for.end111:                                       ; preds = %for.cond86
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #5
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
!21 = distinct !{!21, !10, !11}
