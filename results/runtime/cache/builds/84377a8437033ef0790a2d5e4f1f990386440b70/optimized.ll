; ModuleID = '<stdin>'
source_filename = "/tmp/tmpammrymrs.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [100 x [100 x i32]], align 16
  %b = alloca [100 x [100 x i32]], align 16
  %c = alloca [100 x [100 x i32]], align 16
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull %a) #3
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull %b) #3
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull %c) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x1) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y1) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x2) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y2) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %x1, ptr noundef nonnull align 4 %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %for.inc7 ], [ 0, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv36, %1
  br i1 %cmp, label %for.cond1, label %for.end9

for.cond1:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv36, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  %call10 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x2, ptr noundef nonnull %y2)
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc25, %for.end9
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %for.inc25 ], [ 0, %for.end9 ]
  %4 = load i32, ptr %x2, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp12 = icmp slt i64 %indvars.iv42, %5
  br i1 %cmp12, label %for.cond14, label %for.cond28.preheader

for.cond28.preheader:                             ; preds = %for.cond11
  %6 = load i32, ptr %x1, align 4, !tbaa !5
  %7 = load i32, ptr %y2, align 4
  %8 = load i32, ptr %y1, align 4
  %smax = call i32 @llvm.smax.i32(i32 %8, i32 0)
  %smax51 = call i32 @llvm.smax.i32(i32 %7, i32 0)
  %smax57 = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %wide.trip.count58 = zext nneg i32 %smax57 to i64
  %wide.trip.count52 = zext nneg i32 %smax51 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond28

for.cond14:                                       ; preds = %for.cond11, %for.inc22
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.inc22 ], [ 0, %for.cond11 ]
  %9 = load i32, ptr %y2, align 4, !tbaa !5
  %10 = sext i32 %9 to i64
  %cmp15 = icmp slt i64 %indvars.iv39, %10
  br i1 %cmp15, label %for.inc22, label %for.inc25

for.inc22:                                        ; preds = %for.cond14
  %arrayidx20 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv42, i64 %indvars.iv39
  %call21 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx20)
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %for.cond14, !llvm.loop !13

for.inc25:                                        ; preds = %for.cond14
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %for.cond11, !llvm.loop !14

for.cond28:                                       ; preds = %for.cond28.preheader, %for.inc63
  %indvars.iv54 = phi i64 [ 0, %for.cond28.preheader ], [ %indvars.iv.next55, %for.inc63 ]
  %exitcond59.not = icmp eq i64 %indvars.iv54, %wide.trip.count58
  br i1 %exitcond59.not, label %for.cond66, label %for.cond31

for.cond31:                                       ; preds = %for.cond28, %for.inc60
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.inc60 ], [ 0, %for.cond28 ]
  %exitcond53.not = icmp eq i64 %indvars.iv48, %wide.trip.count52
  br i1 %exitcond53.not, label %for.inc63, label %for.body33

for.body33:                                       ; preds = %for.cond31
  %arrayidx37 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv54, i64 %indvars.iv48
  store i32 0, ptr %arrayidx37, align 4, !tbaa !5
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc57, %for.body33
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %for.inc57 ], [ 0, %for.body33 ]
  %exitcond.not = icmp eq i64 %indvars.iv45, %wide.trip.count
  br i1 %exitcond.not, label %for.inc60, label %for.inc57

for.inc57:                                        ; preds = %for.cond38
  %arrayidx48 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv54, i64 %indvars.iv45
  %11 = load i32, ptr %arrayidx48, align 4, !tbaa !5, !invariant.load !15
  %arrayidx52 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv45, i64 %indvars.iv48
  %12 = load i32, ptr %arrayidx52, align 4, !tbaa !5, !invariant.load !15
  %mul = mul nsw i32 %12, %11
  store i32 %mul, ptr %arrayidx37, align 4, !tbaa !5
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  br label %for.cond38, !llvm.loop !16

for.inc60:                                        ; preds = %for.cond38
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  br label %for.cond31, !llvm.loop !17

for.inc63:                                        ; preds = %for.cond31
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %for.cond28, !llvm.loop !18

for.cond66:                                       ; preds = %for.cond28, %for.inc87
  %13 = phi i32 [ %16, %for.inc87 ], [ %7, %for.cond28 ]
  %14 = phi i32 [ %.pre, %for.inc87 ], [ %6, %for.cond28 ]
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %for.inc87 ], [ 0, %for.cond28 ]
  %15 = sext i32 %14 to i64
  %cmp67 = icmp slt i64 %indvars.iv63, %15
  br i1 %cmp67, label %for.cond69, label %for.end89

for.cond69:                                       ; preds = %for.cond66, %for.inc84
  %16 = phi i32 [ %.pre66, %for.inc84 ], [ %13, %for.cond66 ]
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %for.inc84 ], [ 0, %for.cond66 ]
  %17 = sext i32 %16 to i64
  %cmp70 = icmp slt i64 %indvars.iv60, %17
  br i1 %cmp70, label %for.body71, label %for.inc87

for.body71:                                       ; preds = %for.cond69
  %arrayidx75 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv63, i64 %indvars.iv60
  %18 = load i32, ptr %arrayidx75, align 4, !tbaa !5, !invariant.load !15
  %call76 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %18)
  %19 = load i32, ptr %y2, align 4, !tbaa !5
  %sub = add nsw i32 %19, -1
  %20 = sext i32 %sub to i64
  %cmp77 = icmp slt i64 %indvars.iv60, %20
  br i1 %cmp77, label %if.then, label %if.end

if.then:                                          ; preds = %for.body71
  %putchar = call i32 @putchar(i32 32)
  %.pre67 = load i32, ptr %y2, align 4, !tbaa !5
  %.pre69 = add nsw i32 %.pre67, -1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body71
  %sub79.pre-phi = phi i32 [ %.pre69, %if.then ], [ %sub, %for.body71 ]
  %21 = phi i32 [ %.pre67, %if.then ], [ %19, %for.body71 ]
  %22 = zext i32 %sub79.pre-phi to i64
  %cmp80 = icmp eq i64 %indvars.iv60, %22
  br i1 %cmp80, label %if.then81, label %for.inc84

if.then81:                                        ; preds = %if.end
  %putchar34 = call i32 @putchar(i32 10)
  %.pre66.pre = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.inc84

for.inc84:                                        ; preds = %if.end, %if.then81
  %.pre66 = phi i32 [ %21, %if.end ], [ %.pre66.pre, %if.then81 ]
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  br label %for.cond69, !llvm.loop !19

for.inc87:                                        ; preds = %for.cond69
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond66, !llvm.loop !20

for.end89:                                        ; preds = %for.cond66
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y2) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x2) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y1) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x1) #5
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %a) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
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
!15 = !{}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
