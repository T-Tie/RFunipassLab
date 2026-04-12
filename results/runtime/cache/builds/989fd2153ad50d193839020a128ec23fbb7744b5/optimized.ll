; ModuleID = '<stdin>'
source_filename = "/tmp/tmpscm1sz_a.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %a = alloca [101 x [101 x i32]], align 16
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %b = alloca [101 x [101 x i32]], align 16
  %c = alloca [101 x [101 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x1) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y1) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %x1, ptr noundef nonnull align 4 %y1)
  call void @llvm.lifetime.start.p0(i64 noundef 40804, ptr noundef nonnull %a) #7
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.inc8 ], [ 0, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv10, %1
  br i1 %cmp.not.not, label %for.cond1, label %for.end10

for.cond1:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp3.not.not = icmp slt i64 %indvars.iv, %3
  br i1 %cmp3.not.not, label %for.inc, label %for.inc8

for.inc:                                          ; preds = %for.cond1
  %arrayidx6 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv10, i64 %indvars.iv
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond1
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %x2) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %y2) #7
  %call11 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x2, ptr noundef nonnull %y2)
  call void @llvm.lifetime.start.p0(i64 noundef 40804, ptr noundef nonnull %b) #7
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc28, %for.end10
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %for.inc28 ], [ 0, %for.end10 ]
  %4 = load i32, ptr %x2, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp14.not.not = icmp slt i64 %indvars.iv16, %5
  br i1 %cmp14.not.not, label %for.cond16, label %for.end30

for.cond16:                                       ; preds = %for.cond12, %for.inc25
  %indvars.iv13 = phi i64 [ %indvars.iv.next14, %for.inc25 ], [ 0, %for.cond12 ]
  %6 = load i32, ptr %y2, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp18.not.not = icmp slt i64 %indvars.iv13, %7
  br i1 %cmp18.not.not, label %for.inc25, label %for.inc28

for.inc25:                                        ; preds = %for.cond16
  %arrayidx23 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv16, i64 %indvars.iv13
  %call24 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx23)
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  br label %for.cond16, !llvm.loop !13

for.inc28:                                        ; preds = %for.cond16
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond12, !llvm.loop !14

for.end30:                                        ; preds = %for.cond12
  call void @llvm.lifetime.start.p0(i64 noundef 40804, ptr noundef nonnull %c) #7
  %8 = load i32, ptr %x1, align 4, !tbaa !5
  %9 = load i32, ptr %y2, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %4, i32 noundef -1)
  %10 = add i32 %smax, 1
  %smax26 = call i32 @llvm.smax.i32(i32 %9, i32 noundef 0)
  %smax32 = call i32 @llvm.smax.i32(i32 %8, i32 noundef 0)
  %wide.trip.count33 = zext nneg i32 %smax32 to i64
  %wide.trip.count27 = zext nneg i32 %smax26 to i64
  %wide.trip.count = zext i32 %10 to i64
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc60, %for.end30
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.inc60 ], [ 0, %for.end30 ]
  %exitcond34.not = icmp eq i64 %indvars.iv29, %wide.trip.count33
  br i1 %exitcond34.not, label %for.cond63, label %for.cond35

for.cond35:                                       ; preds = %for.cond31, %for.inc57
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.inc57 ], [ 0, %for.cond31 ]
  %exitcond28.not = icmp eq i64 %indvars.iv23, %wide.trip.count27
  br i1 %exitcond28.not, label %for.inc60, label %for.cond39

for.cond39:                                       ; preds = %for.cond35, %for.inc50
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.inc50 ], [ 0, %for.cond35 ]
  %he.0 = phi i32 [ %add, %for.inc50 ], [ 0, %for.cond35 ]
  %exitcond = icmp eq i64 %indvars.iv19, %wide.trip.count
  br i1 %exitcond, label %for.inc57, label %for.inc50

for.inc50:                                        ; preds = %for.cond39
  %arrayidx45 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv29, i64 %indvars.iv19
  %11 = load i32, ptr %arrayidx45, align 4, !tbaa !5, !invariant.load !15
  %arrayidx49 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv19, i64 %indvars.iv23
  %12 = load i32, ptr %arrayidx49, align 4, !tbaa !5, !invariant.load !15
  %mul = mul nsw i32 %12, %11
  %add = add nsw i32 %mul, %he.0
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  br label %for.cond39, !llvm.loop !16

for.inc57:                                        ; preds = %for.cond39
  %arrayidx56 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv29, i64 %indvars.iv23
  store i32 %he.0, ptr %arrayidx56, align 4, !tbaa !5
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond35, !llvm.loop !17

for.inc60:                                        ; preds = %for.cond35
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond31, !llvm.loop !18

for.cond63:                                       ; preds = %for.cond31, %for.inc86
  %13 = phi i32 [ %.pre, %for.inc86 ], [ %8, %for.cond31 ]
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.inc86 ], [ 0, %for.cond31 ]
  %14 = sext i32 %13 to i64
  %cmp65.not.not = icmp slt i64 %indvars.iv38, %14
  br i1 %cmp65.not.not, label %for.cond67.preheader, label %for.end88

for.cond67.preheader:                             ; preds = %for.cond63
  %arrayidx75 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv38, i64 0
  br label %for.cond67

for.cond67:                                       ; preds = %for.cond67.preheader, %for.inc82
  %indvars.iv35 = phi i64 [ 0, %for.cond67.preheader ], [ %indvars.iv.next36, %for.inc82 ]
  %15 = load i32, ptr %y2, align 4, !tbaa !5
  %16 = sext i32 %15 to i64
  %cmp69.not.not = icmp slt i64 %indvars.iv35, %16
  br i1 %cmp69.not.not, label %for.body70, label %for.inc86

for.body70:                                       ; preds = %for.cond67
  %cmp71 = icmp eq i64 %indvars.iv35, 0
  br i1 %cmp71, label %if.then, label %if.else

if.then:                                          ; preds = %for.body70
  %17 = load i32, ptr %arrayidx75, align 4, !tbaa !5, !invariant.load !15
  %call76 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %17)
  br label %for.inc82

if.else:                                          ; preds = %for.body70
  %arrayidx80 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv38, i64 %indvars.iv35
  %18 = load i32, ptr %arrayidx80, align 4, !tbaa !5, !invariant.load !15
  %call81 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %18)
  br label %for.inc82

for.inc82:                                        ; preds = %if.then, %if.else
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond67, !llvm.loop !19

for.inc86:                                        ; preds = %for.cond67
  %putchar = call i32 @putchar(i32 noundef 10) #7
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond63, !llvm.loop !20

for.end88:                                        ; preds = %for.cond63
  call fastcc void @outlined_ir_func_0()
  call fastcc void @outlined_ir_func_0()
  call void @llvm.lifetime.end.p0(i64 noundef 40804, ptr noundef nonnull %c) #7
  call void @llvm.lifetime.end.p0(i64 noundef 40804, ptr noundef nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 40804, ptr noundef nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y1) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x1) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @getc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0() unnamed_addr #5 {
for.end88_after_outline.exitStub:
  %0 = load ptr, ptr @stdin, align 8, !tbaa !21
  %call.i = tail call i32 @getc(ptr noundef %0)
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind willreturn }
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
!15 = !{}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 _ZTS8_IO_FILE", !23, i64 0}
!23 = !{!"any pointer", !7, i64 0}
