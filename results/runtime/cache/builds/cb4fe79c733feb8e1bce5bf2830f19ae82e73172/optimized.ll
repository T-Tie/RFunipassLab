; ModuleID = '<stdin>'
source_filename = "/tmp/tmp1w_1enof.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d+%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %s = alloca [8 x [8 x i32]], align 16
  %z = alloca [8 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n, ptr noundef nonnull %m)
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %s) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %z) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %z, i8 0, i64 32, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc20, %entry
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.inc20 ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv23, %1
  br i1 %cmp, label %for.cond1.preheader, label %for.cond23

for.cond1.preheader:                              ; preds = %for.cond
  %arrayidx10 = getelementptr inbounds nuw [8 x i32], ptr %z, i64 0, i64 %indvars.iv23
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.body3 ]
  %2 = load i32, ptr %m, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp2, label %for.body3, label %for.inc20

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %s, i64 0, i64 %indvars.iv23, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %4 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %idxprom11 = sext i32 %4 to i64
  %arrayidx12 = getelementptr inbounds [8 x [8 x i32]], ptr %s, i64 0, i64 %indvars.iv23, i64 %idxprom11
  %5 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %6 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %5, %6
  %7 = trunc nuw nsw i64 %indvars.iv to i32
  %spec.store.select = select i1 %cmp17, i32 %7, i32 %4
  store i32 %spec.store.select, ptr %arrayidx10, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.inc20:                                        ; preds = %for.cond1
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond, !llvm.loop !12

for.cond23:                                       ; preds = %for.cond, %for.inc53
  %.pre32 = phi i32 [ %.pre33, %for.inc53 ], [ %0, %for.cond ]
  %8 = phi i32 [ %11, %for.inc53 ], [ %0, %for.cond ]
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.inc53 ], [ 0, %for.cond ]
  %x.0 = phi i32 [ %x.1, %for.inc53 ], [ 0, %for.cond ]
  %9 = sext i32 %8 to i64
  %cmp24 = icmp slt i64 %indvars.iv29, %9
  br i1 %cmp24, label %for.cond26.preheader, label %for.end55

for.cond26.preheader:                             ; preds = %for.cond23
  %arrayidx32 = getelementptr inbounds nuw [8 x i32], ptr %z, i64 0, i64 %indvars.iv29
  %10 = trunc nuw nsw i64 %indvars.iv29 to i32
  br label %for.cond26

for.cond26:                                       ; preds = %for.cond26.preheader, %for.inc50
  %.pre33 = phi i32 [ %.pre32, %for.cond26.preheader ], [ %.pre, %for.inc50 ]
  %11 = phi i32 [ %8, %for.cond26.preheader ], [ %.pre, %for.inc50 ]
  %indvars.iv26 = phi i64 [ 0, %for.cond26.preheader ], [ %indvars.iv.next27, %for.inc50 ]
  %x.1 = phi i32 [ %x.0, %for.cond26.preheader ], [ %x.2, %for.inc50 ]
  %12 = sext i32 %11 to i64
  %cmp27 = icmp slt i64 %indvars.iv26, %12
  br i1 %cmp27, label %for.body28, label %for.inc53

for.body28:                                       ; preds = %for.cond26
  %13 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %idxprom33 = sext i32 %13 to i64
  %arrayidx34 = getelementptr inbounds [8 x [8 x i32]], ptr %s, i64 0, i64 %indvars.iv29, i64 %idxprom33
  %14 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  %arrayidx40 = getelementptr inbounds [8 x [8 x i32]], ptr %s, i64 0, i64 %indvars.iv26, i64 %idxprom33
  %15 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %cmp41 = icmp sgt i32 %14, %15
  br i1 %cmp41, label %for.inc53, label %if.end43

if.end43:                                         ; preds = %for.body28
  %sub = add nsw i32 %11, -1
  %16 = zext i32 %sub to i64
  %cmp44 = icmp eq i64 %indvars.iv26, %16
  br i1 %cmp44, label %if.then45, label %for.inc50

if.then45:                                        ; preds = %if.end43
  %call48 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %10, i32 noundef %13)
  %.pre.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc50

for.inc50:                                        ; preds = %if.end43, %if.then45
  %.pre = phi i32 [ %.pre.pre, %if.then45 ], [ %.pre33, %if.end43 ]
  %x.2 = phi i32 [ 1, %if.then45 ], [ %x.1, %if.end43 ]
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond26, !llvm.loop !13

for.inc53:                                        ; preds = %for.cond26, %for.body28
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond23, !llvm.loop !14

for.end55:                                        ; preds = %for.cond23
  %cmp56 = icmp eq i32 %x.0, 0
  br i1 %cmp56, label %if.then57, label %if.end59

if.then57:                                        ; preds = %for.end55
  %call58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3)
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %for.end55
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %z) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %s) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
