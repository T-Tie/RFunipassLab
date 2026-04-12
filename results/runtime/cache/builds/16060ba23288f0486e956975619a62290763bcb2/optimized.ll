; ModuleID = '<stdin>'
source_filename = "/tmp/tmp2xh93019.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %point = alloca [100 x [1000 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 400000, ptr nonnull %point) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = phi i32 [ %3, %for.inc7 ], [ %.pre, %entry ]
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %for.inc7 ], [ 0, %entry ]
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv47, %1
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %sub42 = add nsw i32 %0, -1
  %2 = zext i32 %sub42 to i64
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count66 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.body3
  %3 = phi i32 [ %.pre68, %for.body3 ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %4 = sext i32 %3 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp2, label %for.body3, label %for.inc7

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x [1000 x i32]], ptr %point, i64 0, i64 %indvars.iv47, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre68 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc106
  %indvars.iv61 = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next62, %for.inc106 ]
  %a.0 = phi i32 [ undef, %for.cond10.preheader ], [ %a.1, %for.inc106 ]
  %b.0 = phi i32 [ undef, %for.cond10.preheader ], [ %b.1, %for.inc106 ]
  %c.0 = phi i32 [ undef, %for.cond10.preheader ], [ %c.1, %for.inc106 ]
  %d.0 = phi i32 [ undef, %for.cond10.preheader ], [ %d.1, %for.inc106 ]
  %exitcond67.not = icmp eq i64 %indvars.iv61, %wide.trip.count66
  br i1 %exitcond67.not, label %for.end108, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond10
  %cmp21 = icmp eq i64 %indvars.iv61, 0
  %5 = add nsw i64 %indvars.iv61, -1
  %6 = trunc nuw nsw i64 %indvars.iv61 to i32
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc103
  %indvars.iv50 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next51, %for.inc103 ]
  %a.1 = phi i32 [ %a.0, %for.cond13.preheader ], [ %a.2, %for.inc103 ]
  %b.1 = phi i32 [ %b.0, %for.cond13.preheader ], [ %b.2, %for.inc103 ]
  %c.1 = phi i32 [ %c.0, %for.cond13.preheader ], [ %c.2, %for.inc103 ]
  %d.1 = phi i32 [ %d.0, %for.cond13.preheader ], [ %d.2, %for.inc103 ]
  %exitcond.not = icmp eq i64 %indvars.iv50, %wide.trip.count
  br i1 %exitcond.not, label %for.inc106, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %arrayidx19 = getelementptr inbounds nuw [100 x [1000 x i32]], ptr %point, i64 0, i64 %indvars.iv61, i64 %indvars.iv50
  %7 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %7, 0
  br i1 %cmp20, label %if.then, label %for.inc103

if.then:                                          ; preds = %for.body15
  %8 = trunc nuw nsw i64 %indvars.iv50 to i32
  %9 = or i32 %8, %6
  %or.cond = icmp eq i32 %9, 0
  br i1 %or.cond, label %for.inc103, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then
  %cmp25 = icmp ne i64 %indvars.iv50, 0
  %or.cond1 = and i1 %cmp21, %cmp25
  br i1 %or.cond1, label %land.lhs.true26, label %lor.lhs.false32

land.lhs.true26:                                  ; preds = %lor.lhs.false
  %10 = add nsw i64 %indvars.iv50, -1
  %arrayidx30 = getelementptr inbounds [100 x [1000 x i32]], ptr %point, i64 0, i64 0, i64 %10
  %11 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %cmp31.not = icmp eq i32 %11, 0
  br i1 %cmp31.not, label %if.else, label %for.inc103

lor.lhs.false32:                                  ; preds = %lor.lhs.false
  br i1 %cmp21, label %if.else, label %land.lhs.true34

land.lhs.true34:                                  ; preds = %lor.lhs.false32
  %arrayidx39 = getelementptr inbounds [100 x [1000 x i32]], ptr %point, i64 0, i64 %5, i64 %indvars.iv50
  %12 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  %cmp40.not = icmp eq i32 %12, 0
  %cmp43.not = icmp eq i64 %indvars.iv50, %2
  %or.cond70 = select i1 %cmp40.not, i1 true, i1 %cmp43.not
  br i1 %or.cond70, label %if.else, label %land.lhs.true44

land.lhs.true44:                                  ; preds = %land.lhs.true34
  %13 = add nuw nsw i64 %indvars.iv50, 1
  %arrayidx48 = getelementptr inbounds nuw [100 x [1000 x i32]], ptr %point, i64 0, i64 %indvars.iv61, i64 %13
  %14 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %cmp49 = icmp eq i32 %14, 0
  %or.cond2 = and i1 %cmp25, %cmp49
  br i1 %or.cond2, label %land.lhs.true52, label %land.lhs.true71

land.lhs.true52:                                  ; preds = %land.lhs.true44
  %15 = add nsw i64 %indvars.iv50, -1
  %arrayidx57 = getelementptr inbounds [100 x [1000 x i32]], ptr %point, i64 0, i64 %indvars.iv61, i64 %15
  %16 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  %cmp58.not = icmp eq i32 %16, 0
  br i1 %cmp58.not, label %land.lhs.true71, label %for.inc103

land.lhs.true71:                                  ; preds = %land.lhs.true44, %land.lhs.true52
  %17 = add nuw nsw i64 %indvars.iv50, 1
  %arrayidx76 = getelementptr inbounds nuw [100 x [1000 x i32]], ptr %point, i64 0, i64 %indvars.iv61, i64 %17
  %18 = load i32, ptr %arrayidx76, align 4, !tbaa !5
  %19 = or i32 %18, %8
  %or.cond3 = icmp eq i32 %19, 0
  br i1 %or.cond3, label %for.inc103, label %if.else

if.else:                                          ; preds = %land.lhs.true26, %land.lhs.true34, %lor.lhs.false32, %land.lhs.true71
  %cmp82 = icmp eq i64 %indvars.iv50, %2
  br i1 %cmp82, label %if.then100, label %land.lhs.true86

land.lhs.true86:                                  ; preds = %if.else
  %20 = add nsw i64 %indvars.iv50, -1
  %arrayidx91 = getelementptr inbounds [100 x [1000 x i32]], ptr %point, i64 0, i64 %indvars.iv61, i64 %20
  %21 = load i32, ptr %arrayidx91, align 4, !tbaa !5
  %cmp92 = icmp eq i32 %21, 0
  br i1 %cmp92, label %land.lhs.true93, label %for.inc103

land.lhs.true93:                                  ; preds = %land.lhs.true86
  %22 = add nuw nsw i64 %indvars.iv50, 1
  %arrayidx98 = getelementptr inbounds nuw [100 x [1000 x i32]], ptr %point, i64 0, i64 %indvars.iv61, i64 %22
  %23 = load i32, ptr %arrayidx98, align 4, !tbaa !5
  %cmp99.not = icmp eq i32 %23, 0
  br i1 %cmp99.not, label %for.inc103, label %if.then100

if.then100:                                       ; preds = %land.lhs.true93, %if.else
  br label %for.inc103

for.inc103:                                       ; preds = %land.lhs.true26, %land.lhs.true52, %if.then, %land.lhs.true71, %for.body15, %land.lhs.true86, %land.lhs.true93, %if.then100
  %a.2 = phi i32 [ %a.1, %if.then100 ], [ %a.1, %land.lhs.true93 ], [ %a.1, %land.lhs.true86 ], [ %a.1, %for.body15 ], [ %6, %land.lhs.true71 ], [ %6, %if.then ], [ %6, %land.lhs.true52 ], [ 0, %land.lhs.true26 ]
  %b.2 = phi i32 [ %b.1, %if.then100 ], [ %b.1, %land.lhs.true93 ], [ %b.1, %land.lhs.true86 ], [ %b.1, %for.body15 ], [ %8, %land.lhs.true71 ], [ %8, %if.then ], [ %8, %land.lhs.true52 ], [ %8, %land.lhs.true26 ]
  %c.2 = phi i32 [ %6, %if.then100 ], [ %c.1, %land.lhs.true93 ], [ %c.1, %land.lhs.true86 ], [ %c.1, %for.body15 ], [ %c.1, %land.lhs.true71 ], [ %c.1, %if.then ], [ %c.1, %land.lhs.true52 ], [ %c.1, %land.lhs.true26 ]
  %d.2 = phi i32 [ %8, %if.then100 ], [ %d.1, %land.lhs.true93 ], [ %d.1, %land.lhs.true86 ], [ %d.1, %for.body15 ], [ %d.1, %land.lhs.true71 ], [ %d.1, %if.then ], [ %d.1, %land.lhs.true52 ], [ %d.1, %land.lhs.true26 ]
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  br label %for.cond13, !llvm.loop !13

for.inc106:                                       ; preds = %for.cond13
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  br label %for.cond10, !llvm.loop !14

for.end108:                                       ; preds = %for.cond10
  %24 = xor i32 %a.0, -1
  %sub110 = add i32 %c.0, %24
  %25 = xor i32 %b.0, -1
  %sub112 = add i32 %d.0, %25
  %mul = mul nsw i32 %sub112, %sub110
  %call113 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 400000, ptr nonnull %point) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
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
