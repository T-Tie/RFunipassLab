; ModuleID = '<stdin>'
source_filename = "/tmp/tmp3_1lbbt6.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [1000 x [1000 x i32]], align 16
  %m = alloca [100 x i32], align 16
  %k = alloca [100 x i32], align 16
  %p = alloca [100 x i32], align 16
  %b = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4000000, ptr noundef nonnull align 16 %a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(4000000) %a, i8 noundef 0, i64 noundef 4000000, i1 noundef false) #7
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull %m) #6
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull %k) #6
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull %p) #6
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull %b) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = phi i32 [ %2, %for.inc7 ], [ %.pre, %entry ]
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %for.inc7 ], [ 0, %entry ]
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv12, %1
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count23 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.inc
  %2 = phi i32 [ %.pre28, %for.inc ], [ %0, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv12, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre28 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc28
  %indvars.iv19 = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next20, %for.inc28 ]
  %s.0 = phi i32 [ 0, %for.cond10.preheader ], [ %s.1, %for.inc28 ]
  %exitcond24.not = icmp eq i64 %indvars.iv19, %wide.trip.count23
  br i1 %exitcond24.not, label %for.end30, label %for.cond13

for.cond13:                                       ; preds = %for.cond10, %for.inc25
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.inc25 ], [ 0, %for.cond10 ]
  %exitcond.not = icmp eq i64 %indvars.iv15, %wide.trip.count
  br i1 %exitcond.not, label %for.inc28, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %arrayidx19 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv19, i64 %indvars.iv15
  %4 = load i32, ptr %arrayidx19, align 4, !tbaa !5, !invariant.load !13
  %cmp20 = icmp eq i32 %4, 0
  br i1 %cmp20, label %if.then, label %for.inc25

if.then:                                          ; preds = %for.body15
  %5 = trunc nuw nsw i64 %indvars.iv15 to i32
  %add = add nsw i32 %s.0, 1
  %idxprom21 = sext i32 %add to i64
  %arrayidx22 = getelementptr inbounds [100 x i32], ptr %m, i64 0, i64 %idxprom21
  %6 = trunc nuw nsw i64 %indvars.iv19 to i32
  store i32 %6, ptr %arrayidx22, align 4, !tbaa !5
  %arrayidx24 = getelementptr inbounds [100 x i32], ptr %k, i64 0, i64 %idxprom21
  store i32 %5, ptr %arrayidx24, align 4, !tbaa !5
  br label %for.inc28

for.inc25:                                        ; preds = %for.body15
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  br label %for.cond13, !llvm.loop !14

for.inc28:                                        ; preds = %for.cond13, %if.then
  %s.1 = phi i32 [ %add, %if.then ], [ %s.0, %for.cond13 ]
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  br label %for.cond10, !llvm.loop !15

for.end30:                                        ; preds = %for.cond10
  %sub = add i32 %0, -1
  %7 = zext i32 %sub to i64
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc52, %for.end30
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %for.inc52 ], [ %7, %for.end30 ]
  %g.0 = phi i32 [ %g.1, %for.inc52 ], [ 0, %for.end30 ]
  %8 = trunc nuw i64 %indvars.iv25 to i32
  %cmp32 = icmp sgt i32 %8, 0
  br i1 %cmp32, label %for.cond35, label %for.end54

for.cond35:                                       ; preds = %for.cond31, %for.inc50
  %i.2 = phi i32 [ %dec, %for.inc50 ], [ %sub, %for.cond31 ]
  %cmp36 = icmp sgt i32 %i.2, 0
  br i1 %cmp36, label %for.body37, label %for.inc52

for.body37:                                       ; preds = %for.cond35
  %idxprom40 = zext nneg i32 %i.2 to i64
  %arrayidx41 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %a, i64 0, i64 %indvars.iv25, i64 %idxprom40
  %9 = load i32, ptr %arrayidx41, align 4, !tbaa !5, !invariant.load !13
  %cmp42 = icmp eq i32 %9, 0
  br i1 %cmp42, label %if.then43, label %for.inc50

if.then43:                                        ; preds = %for.body37
  %add44 = add nsw i32 %g.0, 1
  %idxprom45 = sext i32 %add44 to i64
  %arrayidx46 = getelementptr inbounds [100 x i32], ptr %p, i64 0, i64 %idxprom45
  store i32 %8, ptr %arrayidx46, align 4, !tbaa !5
  %arrayidx48 = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 %idxprom45
  store i32 %i.2, ptr %arrayidx48, align 4, !tbaa !5
  br label %for.inc52

for.inc50:                                        ; preds = %for.body37
  %dec = add nsw i32 %i.2, -1
  br label %for.cond35, !llvm.loop !16

for.inc52:                                        ; preds = %for.cond35, %if.then43
  %g.1 = phi i32 [ %add44, %if.then43 ], [ %g.0, %for.cond35 ]
  %indvars.iv.next26 = add nsw i64 %indvars.iv25, -1
  br label %for.cond31, !llvm.loop !17

for.end54:                                        ; preds = %for.cond31
  %arrayidx55 = getelementptr inbounds nuw i8, ptr %p, i64 4
  %10 = load i32, ptr %arrayidx55, align 4, !tbaa !5
  %arrayidx56 = getelementptr inbounds nuw i8, ptr %m, i64 4
  %11 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %12 = xor i32 %11, -1
  %sub58 = add i32 %10, %12
  %arrayidx59 = getelementptr inbounds nuw i8, ptr %b, i64 4
  %13 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  %arrayidx60 = getelementptr inbounds nuw i8, ptr %k, i64 4
  %14 = load i32, ptr %arrayidx60, align 4, !tbaa !5
  %15 = xor i32 %14, -1
  %sub62 = add i32 %13, %15
  %mul = mul nsw i32 %sub62, %sub58
  %call63 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %mul) #8
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %b) #8
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %p) #8
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %k) #8
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %m) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4000000, ptr noundef nonnull %a) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nofree }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
